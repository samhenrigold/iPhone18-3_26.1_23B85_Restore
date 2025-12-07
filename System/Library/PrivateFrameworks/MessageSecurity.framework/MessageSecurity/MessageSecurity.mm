uint64_t nsheim_decode_ContentInfo(void *a1, uint64_t a2)
{
  v2 = a1;
  [v2 bytes];
  [v2 length];

  return _asn1_decode_top();
}

id NSDataFromIntegerArray(_DWORD *a1, unint64_t a2)
{
  if (a2 >= 2 && *a1 <= 6u && (v3 = a1[1], v3 <= 0x27))
  {
    v14 = v3 + 40 * *a1;
    v4 = [MEMORY[0x277CBEB28] dataWithBytes:&v14 length:1];
    if (a2 != 2)
    {
      v7 = 2;
      do
      {
        v8 = 0;
        v9 = a1[v7];
        v13 = v9 & 0x7F;
        v10 = *&vmovn_s32(vshlq_u32(vdupq_n_s32(v9), xmmword_258CC16A0)) | 0x80008000800080;
        v12 = vuzp1_s8(v10, v10).u32[0];
        do
        {
          v11 = *(&v12 + v8++);
        }

        while (v11 == 128);
        [v4 appendBytes:&v12 + v8 - 1 length:6 - v8];
        v7 = (v7 + 1);
      }

      while (v7 < a2);
    }
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

id NSStringFromOIDData(void *a1)
{
  v1 = a1;
  if (![v1 length] || objc_msgSend(v1, "length") > 0x20)
  {
    v2 = 0;
    goto LABEL_20;
  }

  v3 = *[v1 bytes];
  v4 = *[v1 bytes] % 0x28u;
  v5 = 40 * (v3 / 0x28) - 80;
  if (v3 <= 0x77)
  {
    v6 = v3 / 0x28;
  }

  else
  {
    v6 = 2;
  }

  if (v3 <= 0x77)
  {
    v5 = 0;
  }

  v7 = [MEMORY[0x277CCAB68] stringWithFormat:@"%u.%u", v6, v5 + v4];
  if ([v1 length] < 2)
  {
LABEL_17:
    v2 = v7;
    goto LABEL_19;
  }

  v8 = 0;
  v9 = 0;
  v10 = 2;
  v11 = 1;
  v12 = 2;
  while (1)
  {
    v13 = *([v1 bytes] + v11) & 0x7F | (v9 << 7);
    if (*([v1 bytes] + v11) < 0)
    {
      break;
    }

    [v7 appendFormat:@".%u", v13];
    if (v12 > 0x13)
    {
      goto LABEL_18;
    }

    v8 = 0;
    v9 = 0;
    ++v12;
LABEL_16:
    v11 = v10;
    if ([v1 length] <= v10++)
    {
      goto LABEL_17;
    }
  }

  if (++v8 != 4)
  {
    v9 = v13;
    goto LABEL_16;
  }

LABEL_18:
  v2 = 0;
LABEL_19:

LABEL_20:

  return v2;
}

void *NSDataFromAny(void *a1)
{
  if (a1)
  {
    a1 = [MEMORY[0x277CBEA90] dataWithBytes:a1[1] length:*a1];
    v1 = vars8;
  }

  return a1;
}

id decodeEmbeddedCMSContent(void *a1, void *a2, void *a3, uint64_t a4)
{
  v20 = *MEMORY[0x277D85DE8];
  v7 = a1;
  v8 = a2;
  v9 = a3;
  if (!v8)
  {
    goto LABEL_23;
  }

  if ([v7 isEqualToString:@"1.2.840.113549.1.7.2"])
  {
    v10 = MSCMSSignedData;
LABEL_6:
    v11 = [(__objc2_class *)v10 decodeMessageSecurityObject:v8 options:v9 error:a4];
    goto LABEL_24;
  }

  if ([v7 isEqualToString:@"1.2.840.113549.1.7.3"])
  {
    v10 = MSCMSEnvelopedData;
    goto LABEL_6;
  }

  if ([v7 isEqualToString:@"1.2.840.113549.1.7.5"])
  {
    if (MS_DEFAULT_LOG_BLOCK != -1)
    {
      dispatch_once(&MS_DEFAULT_LOG_BLOCK, &__block_literal_global_6);
    }

    v12 = MS_DEFAULT_LOG_INTERNAL;
    if (!OUTLINED_FUNCTION_3_0())
    {
      goto LABEL_23;
    }

    LOWORD(v18) = 0;
    v13 = "Found unsupported content type: DigestedData";
    goto LABEL_22;
  }

  if ([v7 isEqualToString:@"1.2.840.113549.1.7.6"])
  {
    if (MS_DEFAULT_LOG_BLOCK != -1)
    {
      dispatch_once(&MS_DEFAULT_LOG_BLOCK, &__block_literal_global_6_1);
    }

    v12 = MS_DEFAULT_LOG_INTERNAL;
    if (!OUTLINED_FUNCTION_3_0())
    {
      goto LABEL_23;
    }

    LOWORD(v18) = 0;
    v13 = "Found unimplemented contented type: EncryptedData";
    goto LABEL_22;
  }

  if ([v7 isEqualToString:@"1.2.840.113549.1.9.16.1.2"])
  {
    if (MS_DEFAULT_LOG_BLOCK != -1)
    {
      dispatch_once(&MS_DEFAULT_LOG_BLOCK, &__block_literal_global_9);
    }

    v12 = MS_DEFAULT_LOG_INTERNAL;
    if (!OUTLINED_FUNCTION_3_0())
    {
      goto LABEL_23;
    }

    LOWORD(v18) = 0;
    v13 = "Found unsupported content type: AuthenticatedData";
LABEL_22:
    _os_log_impl(&dword_258C80000, v12, OS_LOG_TYPE_ERROR, v13, &v18, 2u);
    goto LABEL_23;
  }

  if ([v7 isEqualToString:@"1.2.840.113549.1.9.16.1.23"])
  {
    v10 = MSCMSAuthEnvelopedData;
    goto LABEL_6;
  }

  if ([v7 isEqualToString:@"1.2.840.113549.1.9.16.1.9"])
  {
    v10 = MSCMSCompressedData;
    goto LABEL_6;
  }

  if (MS_DEFAULT_LOG_BLOCK != -1)
  {
    dispatch_once(&MS_DEFAULT_LOG_BLOCK, &__block_literal_global_14_0);
  }

  v15 = MS_DEFAULT_LOG_INTERNAL;
  if (OUTLINED_FUNCTION_3_0())
  {
    v16 = v15;
    v17 = [v7 OIDString];
    v18 = 138412290;
    v19 = v17;
    _os_log_impl(&dword_258C80000, v16, OS_LOG_TYPE_ERROR, "Found unknown content type: %@", &v18, 0xCu);
  }

LABEL_23:
  v11 = 0;
LABEL_24:

  return v11;
}

uint64_t nsheim_decode_CMSSignedData(void *a1, uint64_t a2)
{
  v2 = a1;
  [v2 bytes];
  [v2 length];

  return _asn1_decode_top();
}

id CertificateSerialNumberData(uint64_t a1)
{
  if (a1)
  {
    v1 = der_length_heim_integer();
    if (v1)
    {
      v2 = v1;
      v3 = [objc_alloc(MEMORY[0x277CBEB28]) initWithLength:v1];
      v4 = v3;
      if (!v3)
      {
        goto LABEL_9;
      }

      [v3 mutableBytes];
      if (!der_put_heim_integer() && v2 == 0)
      {
        goto LABEL_9;
      }
    }
  }

  v4 = 0;
LABEL_9:

  return v4;
}

uint64_t findCertificateForIdentifier(uint64_t a1, void *a2, void *a3, id *a4)
{
  v7 = a2;
  v8 = a3;
  v9 = [MSCMSIdentifier decodeIdentifier:a1 error:a4];
  v10 = v9;
  if (!v9)
  {
    goto LABEL_9;
  }

  v11 = [v9 type];
  if (v11 == 2)
  {
    CertificateBySubjectKeyID = findCertificateBySubjectKeyID([v10 subjectKeyId], v7, v8, a4);
    goto LABEL_6;
  }

  if (v11 != 1)
  {
    if (a4)
    {
      [MSError MSErrorWithDomain:MSErrorCMSDomain[0] code:-26275 underlyingError:*a4 description:@"unable to find certificate by identifier; invalid choice in encoding"];
      *a4 = v13 = 0;
      goto LABEL_10;
    }

LABEL_9:
    v13 = 0;
    goto LABEL_10;
  }

  CertificateBySubjectKeyID = findCertificateByIssuerAndSerialNumber([v10 issuerAndSerialNumber], v7, v8, a4);
LABEL_6:
  v13 = CertificateBySubjectKeyID;
LABEL_10:

  return v13;
}

uint64_t findCertificateByIssuerAndSerialNumber(void *a1, void *a2, void *a3, id *a4)
{
  v73 = *MEMORY[0x277D85DE8];
  v40 = a2;
  v38 = a3;
  v64 = 0;
  v65 = &v64;
  v66 = 0x2020000000;
  v67 = 0;
  v35 = a4;
  if (a4)
  {
    if (*a4)
    {
      a4 = [*a4 copy];
    }

    else
    {
      a4 = 0;
    }
  }

  v58 = 0;
  v59 = &v58;
  v60 = 0x3032000000;
  v61 = __Block_byref_object_copy__3;
  v62 = __Block_byref_object_dispose__3;
  v63 = NSDataFromInteger(a1 + 2);
  [MEMORY[0x277CBEA90] dataWithBytes:a1[1] length:*a1];
  v52 = 0;
  v53 = &v52;
  v54 = 0x3032000000;
  v55 = __Block_byref_object_copy__3;
  v36 = v56 = __Block_byref_object_dispose__3;
  v57 = SecDistinguishedNameCopyNormalizedSequence();
  v37 = [MEMORY[0x277CBEB18] array];
  if (v40 && [v40 count])
  {
    v47[0] = MEMORY[0x277D85DD0];
    v47[1] = 3221225472;
    v47[2] = __findCertificateByIssuerAndSerialNumber_block_invoke;
    v47[3] = &unk_2798BE598;
    v49 = &v52;
    v50 = &v58;
    v51 = &v64;
    v48 = v37;
    [v40 enumerateObjectsUsingBlock:v47];
  }

  v7 = v65[3];
  if (v7)
  {
    v39 = a4;
  }

  else
  {
    v8 = [MEMORY[0x277CBEB38] dictionary];
    [v8 setObject:*MEMORY[0x277CDC230] forKey:*MEMORY[0x277CDC228]];
    if (v53[5])
    {
      v9 = v53[5];
    }

    else
    {
      v9 = v36;
    }

    [v8 setObject:v9 forKey:*MEMORY[0x277CDBFD8]];
    [v8 setObject:v59[5] forKey:*MEMORY[0x277CDC110]];
    [v8 setObject:MEMORY[0x277CBEC38] forKey:*MEMORY[0x277CDC568]];
    if (v38)
    {
      [v8 setObject:v38 forKey:*MEMORY[0x277CDC5A0]];
    }

    v46 = a4;
    v34 = v8;
    ItemInAllAvailableKeychains = findItemInAllAvailableKeychains(v8, &v46);
    v39 = v46;

    if (ItemInAllAvailableKeychains)
    {
      v11 = CFGetTypeID(ItemInAllAvailableKeychains);
      if (v11 == SecCertificateGetTypeID())
      {
        v65[3] = ItemInAllAvailableKeychains;
      }

      else
      {
        CFRelease(ItemInAllAvailableKeychains);
      }
    }

    if (!v65[3])
    {
      if (MS_DEFAULT_LOG_BLOCK != -1)
      {
        findCertificateByIssuerAndSerialNumber_cold_1();
      }

      v12 = MS_DEFAULT_LOG_INTERNAL;
      if (os_log_type_enabled(v12, OS_LOG_TYPE_INFO))
      {
        v13 = [v59[5] asMessageSecurityHexString];
        *buf = 141558274;
        v70 = 1752392040;
        v71 = 2112;
        v72 = v13;
        _os_log_impl(&dword_258C80000, v12, OS_LOG_TYPE_INFO, "QuerySN = %{mask.hash}@", buf, 0x16u);
      }

      if (MS_DEFAULT_LOG_BLOCK != -1)
      {
        findCertificateByIssuerAndSerialNumber_cold_2();
      }

      v14 = MS_DEFAULT_LOG_INTERNAL;
      if (os_log_type_enabled(v14, OS_LOG_TYPE_INFO))
      {
        v15 = [v53[5] asMessageSecurityHexString];
        *buf = 141558274;
        v70 = 1752392040;
        v71 = 2112;
        v72 = v15;
        _os_log_impl(&dword_258C80000, v14, OS_LOG_TYPE_INFO, "QueryIssuer = %{mask.hash}@", buf, 0x16u);
      }

      dumpNSData("QuerySN", v59[5]);
      dumpNSData("QueryIssuer", v53[5]);
      v44 = 0u;
      v45 = 0u;
      v42 = 0u;
      v43 = 0u;
      obj = v37;
      v16 = [obj countByEnumeratingWithState:&v42 objects:v68 count:16];
      if (v16)
      {
        v17 = *v43;
        do
        {
          v18 = 0;
          do
          {
            if (*v43 != v17)
            {
              objc_enumerationMutation(obj);
            }

            v19 = *(*(&v42 + 1) + 8 * v18);
            if (MS_DEFAULT_LOG_BLOCK != -1)
            {
              findCertificateByIssuerAndSerialNumber_cold_3();
            }

            v20 = MS_DEFAULT_LOG_INTERNAL;
            if (os_log_type_enabled(v20, OS_LOG_TYPE_INFO))
            {
              v21 = [v19 objectAtIndexedSubscript:0];
              v22 = [v21 asMessageSecurityHexString];
              *buf = 141558274;
              v70 = 1752392040;
              v71 = 2112;
              v72 = v22;
              _os_log_impl(&dword_258C80000, v20, OS_LOG_TYPE_INFO, "BundledSN = %{mask.hash}@", buf, 0x16u);
            }

            if (MS_DEFAULT_LOG_BLOCK != -1)
            {
              findCertificateByIssuerAndSerialNumber_cold_4();
            }

            v23 = MS_DEFAULT_LOG_INTERNAL;
            if (os_log_type_enabled(v23, OS_LOG_TYPE_INFO))
            {
              v24 = [v19 objectAtIndexedSubscript:1];
              v25 = [v24 asMessageSecurityHexString];
              *buf = 141558274;
              v70 = 1752392040;
              v71 = 2112;
              v72 = v25;
              _os_log_impl(&dword_258C80000, v23, OS_LOG_TYPE_INFO, "BundledIssuer = %{mask.hash}@", buf, 0x16u);
            }

            v26 = [v19 objectAtIndexedSubscript:0];
            dumpNSData("BundledSN", v26);

            v27 = [v19 objectAtIndexedSubscript:1];
            dumpNSData("BundledIssuer", v27);

            ++v18;
          }

          while (v16 != v18);
          v16 = [obj countByEnumeratingWithState:&v42 objects:v68 count:16];
        }

        while (v16);
      }

      v28 = MSErrorKeychainDomain[0];
      v29 = NSStringFromDERIntegerData(v59[5]);
      v30 = NSSStringFromIssuerName(v53[5]);
      v31 = [MSError MSErrorWithDomain:v28 code:-25300 errorLevel:1 underlyingError:v39 description:@"%s did not find IssuerAndSerialNumber %@ %@", "findCertificateByIssuerAndSerialNumber", v29, v30];

      v39 = v31;
    }

    if (v35 && v39)
    {
      v32 = v39;
      *v35 = v39;
    }

    v7 = v65[3];
  }

  _Block_object_dispose(&v52, 8);
  _Block_object_dispose(&v58, 8);

  _Block_object_dispose(&v64, 8);
  return v7;
}

void sub_258C827AC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, ...)
{
  va_start(va, a52);
  _Block_object_dispose(&a41, 8);
  _Block_object_dispose(&a47, 8);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void *NSDataFromInteger(void *a1)
{
  v1 = a1;
  if (a1)
  {
    if (*a1 && !*(a1 + 4) && *a1[1] < 0)
    {
      v4 = 0;
      v3 = [MEMORY[0x277CBEB28] dataWithBytes:&v4 length:1];
      [v3 appendBytes:v1[1] length:*v1];
      v1 = [MEMORY[0x277CBEA90] dataWithData:v3];
    }

    else
    {
      v1 = [MEMORY[0x277CBEA90] dataWithBytes:a1[1] length:?];
    }
  }

  return v1;
}

void __findCertificateByIssuerAndSerialNumber_block_invoke(uint64_t a1, void *a2, uint64_t a3, _BYTE *a4)
{
  certificate = a2;
  v6 = SecCertificateCopyNormalizedIssuerSequence(certificate);
  v7 = SecCertificateCopySerialNumberData(certificate, 0);
  if (![*(*(*(a1 + 40) + 8) + 40) isEqualToData:v6] || !objc_msgSend(*(*(*(a1 + 48) + 8) + 40), "isEqualToData:", v7))
  {
    v9 = [MEMORY[0x277CBEB18] array];
    v10 = v9;
    if (v7)
    {
      [v9 addObject:v7];
      if (v6)
      {
LABEL_8:
        [v10 addObject:v6];
LABEL_11:
        [*(a1 + 32) addObject:v10];

        goto LABEL_12;
      }
    }

    else
    {
      v11 = [MEMORY[0x277CBEA90] data];
      [v10 addObject:v11];

      if (v6)
      {
        goto LABEL_8;
      }
    }

    v12 = [MEMORY[0x277CBEA90] data];
    [v10 addObject:v12];

    goto LABEL_11;
  }

  v8 = certificate;
  if (certificate)
  {
    CFRetain(certificate);
    v8 = certificate;
  }

  *(*(*(a1 + 56) + 8) + 24) = v8;
  *a4 = 1;
LABEL_12:
}

void *NSDataFromOctetString(void *a1)
{
  if (a1)
  {
    a1 = [MEMORY[0x277CBEA90] dataWithBytes:a1[1] length:*a1];
    v1 = vars8;
  }

  return a1;
}

uint64_t nsheim_decode_Time(void *a1, uint64_t a2)
{
  v2 = a1;
  [v2 bytes];
  [v2 length];
  v3 = _asn1_decode_top();
  if (!v3)
  {
    if ([v2 length])
    {
      v3 = 1859794442;
    }

    else
    {
      v3 = 0;
    }
  }

  return v3;
}

uint64_t nsheim_decode_ContentType(void *a1, uint64_t a2)
{
  v2 = a1;
  [v2 bytes];
  [v2 length];
  v3 = _asn1_decode_top();
  if (!v3)
  {
    if ([v2 length])
    {
      v3 = 1859794442;
    }

    else
    {
      v3 = 0;
    }
  }

  return v3;
}

uint64_t nsheim_decode_MessageDigest(void *a1, uint64_t a2)
{
  v2 = a1;
  [v2 bytes];
  [v2 length];
  v3 = _asn1_decode_top();
  if (!v3)
  {
    if ([v2 length])
    {
      v3 = 1859794442;
    }

    else
    {
      v3 = 0;
    }
  }

  return v3;
}

uint64_t nsheim_decode_AppleHashAgilityValue(void *a1, uint64_t a2)
{
  v2 = a1;
  [v2 bytes];
  [v2 length];
  v3 = _asn1_decode_top();
  if (!v3)
  {
    if ([v2 length])
    {
      v3 = 1859794442;
    }

    else
    {
      v3 = 0;
    }
  }

  return v3;
}

uint64_t nsheim_decode_AppleAgileHash(void *a1, uint64_t a2)
{
  v2 = a1;
  [v2 bytes];
  [v2 length];
  v3 = _asn1_decode_top();
  if (!v3)
  {
    if ([v2 length])
    {
      v3 = 1859794442;
    }

    else
    {
      v3 = 0;
    }
  }

  return v3;
}

uint64_t sub_258C83B8C(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 16))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t sub_258C83BAC(uint64_t result, int a2, int a3)
{
  if (a2)
  {
    *result = (a2 - 1);
    *(result + 8) = 0;
    if (!a3)
    {
      return result;
    }

    v3 = 1;
  }

  else
  {
    if (!a3)
    {
      return result;
    }

    v3 = 0;
  }

  *(result + 16) = v3;
  return result;
}

uint64_t sub_258C83BD4(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 40))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t sub_258C83BF4(uint64_t result, int a2, int a3)
{
  if (a2)
  {
    *(result + 8) = 0u;
    *(result + 24) = 0u;
    *result = (a2 - 1);
    if (!a3)
    {
      return result;
    }

    v3 = 1;
  }

  else
  {
    if (!a3)
    {
      return result;
    }

    v3 = 0;
  }

  *(result + 40) = v3;
  return result;
}

uint64_t sub_258C83C28(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 24))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t sub_258C83C48(uint64_t result, int a2, int a3)
{
  if (a2)
  {
    *(result + 8) = 0;
    *(result + 16) = 0;
    *result = (a2 - 1);
    if (!a3)
    {
      return result;
    }

    v3 = 1;
  }

  else
  {
    if (!a3)
    {
      return result;
    }

    v3 = 0;
  }

  *(result + 24) = v3;
  return result;
}

id findBestMutuallySupportedSignatureAlgorithm(__SecCertificate *a1, void *a2)
{
  v3 = a2;
  KeyTypeForCertificate = getKeyTypeForCertificate(a1);
  if (KeyTypeForCertificate == 1)
  {
    v8 = findBestMutuallySupportedRSASignatureAlgorithm_onceToken;
    v9 = v3;
    if (v8 != -1)
    {
      findBestMutuallySupportedSignatureAlgorithm_cold_1();
    }

    v7 = &findBestMutuallySupportedRSASignatureAlgorithm_rsaPreferences;
    goto LABEL_9;
  }

  if (KeyTypeForCertificate == 3)
  {
    v5 = findBestMutuallySupportedECSignatureAlgorithm_onceToken;
    v6 = v3;
    if (v5 != -1)
    {
      findBestMutuallySupportedSignatureAlgorithm_cold_2();
    }

    v7 = &findBestMutuallySupportedECSignatureAlgorithm_ecPreferences;
LABEL_9:
    v10 = findBestMutuallySupportAlgorithm(*v7, v3);

    goto LABEL_11;
  }

  v10 = 0;
LABEL_11:

  return v10;
}

uint64_t getKeyTypeForCertificate(__SecCertificate *a1)
{
  if (!a1)
  {
    return -1;
  }

  v1 = SecCertificateCopyKey(a1);
  if (!v1)
  {
    return -1;
  }

  v2 = v1;
  AlgorithmId = SecKeyGetAlgorithmId();
  CFRelease(v2);
  return AlgorithmId;
}

id findBestMutuallySupportedKeyEncryptionAlgorithm(void *a1)
{
  v1 = findBestMutuallySupportedKeyEncryptionAlgorithm_onceToken;
  v2 = a1;
  if (v1 != -1)
  {
    findBestMutuallySupportedKeyEncryptionAlgorithm_cold_1();
  }

  v3 = findBestMutuallySupportAlgorithm(findBestMutuallySupportedKeyEncryptionAlgorithm_keyEncryptionPreferences, v2);

  return v3;
}

void __findBestMutuallySupportedKeyEncryptionAlgorithm_block_invoke()
{
  v0 = [MEMORY[0x277CBEB18] arrayWithCapacity:10];
  v1 = [MSOID OIDWithString:@"2.16.840.1.101.3.4.1.45" error:0];
  [v0 addObject:v1];

  v2 = [MSOID OIDWithString:@"2.16.840.1.101.3.4.1.25" error:0];
  [v0 addObject:v2];

  v3 = [MSOID OIDWithString:@"2.16.840.1.101.3.4.1.5" error:0];
  [v0 addObject:v3];

  v4 = [MSOID OIDWithString:@"1.2.840.113549.1.9.16.3.7" error:0];
  [v0 addObject:v4];

  v5 = [MSOID OIDWithString:@"2.16.840.1.101.3.4.1.42" error:0];
  [v0 addObject:v5];

  v6 = [MSOID OIDWithString:@"2.16.840.1.101.3.4.1.22" error:0];
  [v0 addObject:v6];

  v7 = [MSOID OIDWithString:@"2.16.840.1.101.3.4.1.2" error:0];
  [v0 addObject:v7];

  v8 = [MSOID OIDWithString:@"1.2.840.113549.3.7" error:0];
  [v0 addObject:v8];

  v9 = [MSOID OIDWithString:@"1.2.840.113549.3.2" error:0];
  [v0 addObject:v9];

  v10 = findBestMutuallySupportedKeyEncryptionAlgorithm_keyEncryptionPreferences;
  findBestMutuallySupportedKeyEncryptionAlgorithm_keyEncryptionPreferences = v0;
}

id findBestMutuallySupportAlgorithm(void *a1, void *a2)
{
  v3 = a1;
  v4 = a2;
  v5 = v4;
  if (v4)
  {
    v13 = 0;
    v14 = &v13;
    v15 = 0x3032000000;
    v16 = __Block_byref_object_copy_;
    v17 = __Block_byref_object_dispose_;
    v18 = 0;
    v12[0] = 0;
    v12[1] = v12;
    v12[2] = 0x2020000000;
    v12[3] = 0;
    v8[0] = MEMORY[0x277D85DD0];
    v8[1] = 3221225472;
    v8[2] = __findBestMutuallySupportAlgorithm_block_invoke;
    v8[3] = &unk_2798BE010;
    v9 = v4;
    v10 = &v13;
    v11 = v12;
    [v3 enumerateObjectsUsingBlock:v8];
    v6 = v14[5];

    _Block_object_dispose(v12, 8);
    _Block_object_dispose(&v13, 8);
  }

  else
  {
    v6 = [v3 objectAtIndex:0];
  }

  return v6;
}

void sub_258C84158(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, ...)
{
  va_start(va, a16);
  _Block_object_dispose(va, 8);
  _Block_object_dispose((v16 - 80), 8);
  _Unwind_Resume(a1);
}

id findBestMutuallySupportedEncryptionAlgorithm(void *a1)
{
  v1 = findBestMutuallySupportedEncryptionAlgorithm_onceToken;
  v2 = a1;
  if (v1 != -1)
  {
    findBestMutuallySupportedEncryptionAlgorithm_cold_1();
  }

  v3 = findBestMutuallySupportAlgorithm(findBestMutuallySupportedEncryptionAlgorithm_keyEncryptionPreferences, v2);

  return v3;
}

void __findBestMutuallySupportedEncryptionAlgorithm_block_invoke()
{
  v0 = [MEMORY[0x277CBEB18] arrayWithCapacity:5];
  v1 = [MSOID OIDWithString:@"2.16.840.1.101.3.4.1.42" error:0];
  [v0 addObject:v1];

  v2 = [MSOID OIDWithString:@"2.16.840.1.101.3.4.1.22" error:0];
  [v0 addObject:v2];

  v3 = [MSOID OIDWithString:@"2.16.840.1.101.3.4.1.2" error:0];
  [v0 addObject:v3];

  v4 = [MSOID OIDWithString:@"1.2.840.113549.3.7" error:0];
  [v0 addObject:v4];

  v5 = [MSOID OIDWithString:@"1.2.840.113549.3.2" error:0];
  [v0 addObject:v5];

  v6 = findBestMutuallySupportedEncryptionAlgorithm_keyEncryptionPreferences;
  findBestMutuallySupportedEncryptionAlgorithm_keyEncryptionPreferences = v0;
}

id MSDecryptGCMOneShot(unsigned int a1, void *a2, void *a3, void *a4, void *a5, void *a6)
{
  v29 = *MEMORY[0x277D85DE8];
  v9 = MEMORY[0x277CBEB28];
  v10 = a5;
  v11 = a4;
  v12 = a3;
  v13 = a2;
  v14 = [v9 dataWithLength:{objc_msgSend(v10, "length")}];
  [v13 bytes];
  [v13 length];

  [v12 bytes];
  [v12 length];

  [v10 bytes];
  v15 = [v10 length];

  v16 = [v14 mutableBytes];
  v17 = [v11 bytes];
  v18 = [v11 length];

  v25 = v17;
  v19 = CCCryptorGCMOneshotDecrypt();
  if (v19)
  {
    v20 = v19;
    if (MS_DEFAULT_LOG_BLOCK != -1)
    {
      MSDecryptGCMOneShot_cold_1();
    }

    v21 = MS_DEFAULT_LOG_INTERNAL;
    if (os_log_type_enabled(MS_DEFAULT_LOG_INTERNAL, OS_LOG_TYPE_ERROR))
    {
      *buf = 67109120;
      v28 = v20;
      _os_log_impl(&dword_258C80000, v21, OS_LOG_TYPE_ERROR, "Error decrypting underlying crypto error %d", buf, 8u);
    }

    if (a6)
    {
      v22 = [MSError MSErrorWithDomain:MSErrorCryptoDomain[0] code:v20 underlyingError:*a6 description:@"MSDecryptGCM error: %d", v20, v16, v25, v18];
      *a6 = v22;
    }

    else
    {
      v22 = [MSError MSErrorWithDomain:MSErrorCryptoDomain[0] code:v20 underlyingError:0 description:@"MSDecryptGCM error: %d", v20, v16, v25, v18];
    }

    v23 = 0;
  }

  else
  {
    v23 = [MEMORY[0x277CBEA90] dataWithData:{v14, v15, v16, v17, v18}];
  }

  return v23;
}

uint64_t __MSDecryptGCMOneShot_block_invoke()
{
  v0 = os_log_create("com.apple.MessageSecurity", "default");
  v1 = MS_DEFAULT_LOG_INTERNAL;
  MS_DEFAULT_LOG_INTERNAL = v0;

  return MEMORY[0x2821F96F8](v0, v1);
}

void __findBestMutuallySupportedECSignatureAlgorithm_block_invoke()
{
  v0 = [MEMORY[0x277CBEB18] arrayWithCapacity:5];
  v1 = [MSOID OIDWithString:@"1.2.840.10045.4.3.3" error:0];
  [v0 addObject:v1];

  v2 = [MSOID OIDWithString:@"1.2.840.10045.4.3.2" error:0];
  [v0 addObject:v2];

  v3 = [MSOID OIDWithString:@"1.2.840.10045.4.3.4" error:0];
  [v0 addObject:v3];

  v4 = [MSOID OIDWithString:@"1.2.840.10045.4.3.1" error:0];
  [v0 addObject:v4];

  v5 = [MSOID OIDWithString:@"1.2.840.10045.4.1" error:0];
  [v0 addObject:v5];

  v6 = findBestMutuallySupportedECSignatureAlgorithm_ecPreferences;
  findBestMutuallySupportedECSignatureAlgorithm_ecPreferences = v0;
}

void __findBestMutuallySupportedRSASignatureAlgorithm_block_invoke()
{
  v0 = [MEMORY[0x277CBEB18] arrayWithCapacity:5];
  v1 = [MSOID OIDWithString:@"1.2.840.113549.1.1.12" error:0];
  [v0 addObject:v1];

  v2 = [MSOID OIDWithString:@"1.2.840.113549.1.1.11" error:0];
  [v0 addObject:v2];

  v3 = [MSOID OIDWithString:@"1.2.840.113549.1.1.13" error:0];
  [v0 addObject:v3];

  v4 = [MSOID OIDWithString:@"1.2.840.113549.1.1.14" error:0];
  [v0 addObject:v4];

  v5 = [MSOID OIDWithString:@"1.2.840.113549.1.1.5" error:0];
  [v0 addObject:v5];

  v6 = findBestMutuallySupportedRSASignatureAlgorithm_rsaPreferences;
  findBestMutuallySupportedRSASignatureAlgorithm_rsaPreferences = v0;
}

uint64_t __Block_byref_object_copy_(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void __findBestMutuallySupportAlgorithm_block_invoke(uint64_t a1, void *a2, uint64_t a3, _BYTE *a4)
{
  v7 = a2;
  v19 = 0;
  v20 = &v19;
  v21 = 0x2020000000;
  v22 = 0;
  v8 = *(a1 + 32);
  v13 = MEMORY[0x277D85DD0];
  v14 = 3221225472;
  v15 = __findBestMutuallySupportAlgorithm_block_invoke_2;
  v16 = &unk_2798BDFE8;
  v9 = v7;
  v17 = v9;
  v18 = &v19;
  [v8 enumerateObjectsUsingBlock:&v13];
  v10 = v20[3];
  if (v10 == [*(a1 + 32) count])
  {
    objc_storeStrong((*(*(a1 + 40) + 8) + 40), a2);
    *a4 = 1;
  }

  v11 = v20[3];
  v12 = *(*(a1 + 48) + 8);
  if (v11 > *(v12 + 24))
  {
    *(v12 + 24) = v11;
    objc_storeStrong((*(*(a1 + 40) + 8) + 40), a2);
  }

  _Block_object_dispose(&v19, 8);
}

void sub_258C849F8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void *__findBestMutuallySupportAlgorithm_block_invoke_2(uint64_t a1, void *a2)
{
  result = [a2 containsObject:*(a1 + 32)];
  if (result)
  {
    ++*(*(*(a1 + 40) + 8) + 24);
  }

  return result;
}

void __algorithmOIDToParameters_block_invoke()
{
  v3[27] = *MEMORY[0x277D85DE8];
  v2[0] = @"1.2.840.113549.2.5";
  v2[1] = @"1.3.14.3.2.26";
  v3[0] = MEMORY[0x277CBEC28];
  v3[1] = MEMORY[0x277CBEC38];
  v2[2] = @"2.16.840.1.101.3.4.2.4";
  v2[3] = @"2.16.840.1.101.3.4.2.1";
  v3[2] = MEMORY[0x277CBEC38];
  v3[3] = MEMORY[0x277CBEC38];
  v2[4] = @"2.16.840.1.101.3.4.2.2";
  v2[5] = @"2.16.840.1.101.3.4.2.3";
  v3[4] = MEMORY[0x277CBEC38];
  v3[5] = MEMORY[0x277CBEC38];
  v2[6] = @"1.2.840.113549.1.1.4";
  v2[7] = @"1.2.840.113549.1.1.5";
  v3[6] = MEMORY[0x277CBEC28];
  v3[7] = MEMORY[0x277CBEC28];
  v2[8] = @"1.2.840.113549.1.1.14";
  v2[9] = @"1.2.840.113549.1.1.11";
  v3[8] = MEMORY[0x277CBEC28];
  v3[9] = MEMORY[0x277CBEC28];
  v2[10] = @"1.2.840.113549.1.1.12";
  v2[11] = @"1.2.840.113549.1.1.13";
  v3[10] = MEMORY[0x277CBEC28];
  v3[11] = MEMORY[0x277CBEC28];
  v2[12] = @"1.2.840.10045.4.1";
  v2[13] = @"1.2.840.10045.4.3.1";
  v3[12] = MEMORY[0x277CBEC38];
  v3[13] = MEMORY[0x277CBEC38];
  v2[14] = @"1.2.840.10045.4.3.2";
  v2[15] = @"1.2.840.10045.4.3.3";
  v3[14] = MEMORY[0x277CBEC38];
  v3[15] = MEMORY[0x277CBEC38];
  v2[16] = @"1.2.840.10045.4.3.4";
  v2[17] = @"1.2.840.113549.1.1.1";
  v3[16] = MEMORY[0x277CBEC38];
  v3[17] = MEMORY[0x277CBEC28];
  v2[18] = @"2.16.840.1.101.3.4.1.2";
  v2[19] = @"2.16.840.1.101.3.4.1.22";
  v3[18] = MEMORY[0x277CBEC28];
  v3[19] = MEMORY[0x277CBEC28];
  v2[20] = @"2.16.840.1.101.3.4.1.42";
  v2[21] = @"2.16.840.1.101.3.4.1.6";
  v3[20] = MEMORY[0x277CBEC28];
  v3[21] = MEMORY[0x277CBEC28];
  v2[22] = @"2.16.840.1.101.3.4.1.26";
  v2[23] = @"2.16.840.1.101.3.4.1.46";
  v3[22] = MEMORY[0x277CBEC28];
  v3[23] = MEMORY[0x277CBEC28];
  v2[24] = @"2.16.840.1.101.3.4.1.5";
  v2[25] = @"2.16.840.1.101.3.4.1.25";
  v3[24] = MEMORY[0x277CBEC38];
  v3[25] = MEMORY[0x277CBEC38];
  v2[26] = @"2.16.840.1.101.3.4.1.45";
  v3[26] = MEMORY[0x277CBEC38];
  v0 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v3 forKeys:v2 count:27];
  v1 = algorithmOIDToParameters_sAlgorithmOIDStringIsAbsentParameters;
  algorithmOIDToParameters_sAlgorithmOIDStringIsAbsentParameters = v0;
}

void *NSDataFromBaseData(void *a1)
{
  if (a1)
  {
    a1 = [MEMORY[0x277CBEA90] dataWithBytes:a1[1] length:*a1];
    v1 = vars8;
  }

  return a1;
}

void *NSDataFromBitString(void *a1)
{
  if (a1)
  {
    a1 = [MEMORY[0x277CBEA90] dataWithBytes:a1[1] length:(*a1 + 7) >> 3];
    v1 = vars8;
  }

  return a1;
}

void *NSDataFromAnySet(void *a1)
{
  if (a1)
  {
    a1 = [MEMORY[0x277CBEA90] dataWithBytes:a1[1] length:*a1];
    v1 = vars8;
  }

  return a1;
}

void *NSStringFromUTF8String(void *a1)
{
  if (a1)
  {
    a1 = [MEMORY[0x277CCACA8] stringWithUTF8String:*a1];
    v1 = vars8;
  }

  return a1;
}

void sub_258C8C390(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t __Block_byref_object_copy__0(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_258C8C52C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_258C8C6E4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_258C8CBE0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, ...)
{
  va_start(va, a16);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_258C8E0CC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, ...)
{
  va_start(va, a38);
  _Block_object_dispose(&a35, 8);
  _Block_object_dispose(va, 8);
  _Block_object_dispose((v38 - 184), 8);
  _Unwind_Resume(a1);
}

void sub_258C8E324(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, ...)
{
  va_start(va, a16);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_258C8F760(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t __Block_byref_object_copy__1(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_258C8FC00(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, ...)
{
  va_start(va1, a19);
  va_start(va, a19);
  v20 = va_arg(va1, void);
  v22 = va_arg(va1, void);
  v23 = va_arg(va1, void);
  v24 = va_arg(va1, void);
  _Block_object_dispose(va, 8);
  _Block_object_dispose(va1, 8);
  _Unwind_Resume(a1);
}

void sub_258C90094(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

id generalizedTimeStringFromDate(void *a1)
{
  v1 = MEMORY[0x277CCA968];
  v2 = a1;
  v3 = objc_alloc_init(v1);
  v4 = [MEMORY[0x277CBEAF8] localeWithLocaleIdentifier:@"en_US_POSIX"];
  [v3 setLocale:v4];

  [v3 setDateFormat:@"yyyyMMddHHmmss'Z'"];
  v5 = [MEMORY[0x277CBEBB0] timeZoneForSecondsFromGMT:0];
  [v3 setTimeZone:v5];

  v6 = [v3 stringFromDate:v2];

  return v6;
}

id UTCStringFromDate(void *a1)
{
  v1 = MEMORY[0x277CCA968];
  v2 = a1;
  v3 = objc_alloc_init(v1);
  v4 = [MEMORY[0x277CBEAF8] localeWithLocaleIdentifier:@"en_US_POSIX"];
  [v3 setLocale:v4];

  [v3 setDateFormat:@"yyMMddHHmmss'Z'"];
  v5 = [MEMORY[0x277CBEBB0] timeZoneForSecondsFromGMT:0];
  [v3 setTimeZone:v5];

  v6 = [v3 stringFromDate:v2];

  return v6;
}

void sub_258C9273C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, ...)
{
  va_start(va, a15);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void _MSLog(uint64_t a1, void *a2)
{
  v12 = *MEMORY[0x277D85DE8];
  v3 = a2;
  if (a1 > 2)
  {
    if (a1 == 3)
    {
      if (MS_DEFAULT_LOG_BLOCK != -1)
      {
        _MSLog_cold_2();
      }

      v8 = MS_DEFAULT_LOG_INTERNAL;
      if (!os_log_type_enabled(MS_DEFAULT_LOG_INTERNAL, OS_LOG_TYPE_DEFAULT))
      {
        goto LABEL_26;
      }

      v10 = 138543362;
      v11 = v3;
    }

    else
    {
      if (a1 != 4)
      {
        if (a1 == 5)
        {
          if (MS_DEFAULT_LOG_BLOCK != -1)
          {
            _MSLog_cold_5();
          }

          v4 = MS_DEFAULT_LOG_INTERNAL;
          if (os_log_type_enabled(MS_DEFAULT_LOG_INTERNAL, OS_LOG_TYPE_ERROR))
          {
            v10 = 138543362;
            v11 = v3;
            v5 = v4;
            v6 = OS_LOG_TYPE_ERROR;
LABEL_25:
            _os_log_impl(&dword_258C80000, v5, v6, "%{public}@", &v10, 0xCu);
            goto LABEL_26;
          }
        }

        goto LABEL_26;
      }

      if (MS_DEFAULT_LOG_BLOCK != -1)
      {
        _MSLog_cold_1();
      }

      v8 = MS_DEFAULT_LOG_INTERNAL;
      if (!os_log_type_enabled(MS_DEFAULT_LOG_INTERNAL, OS_LOG_TYPE_DEFAULT))
      {
        goto LABEL_26;
      }

      v10 = 138543362;
      v11 = v3;
    }

    v5 = v8;
    v6 = OS_LOG_TYPE_DEFAULT;
    goto LABEL_25;
  }

  if (a1 == 1)
  {
    if (os_log_type_enabled(MS_DEFAULT_LOG_INTERNAL, OS_LOG_TYPE_DEBUG))
    {
      if (MS_DEFAULT_LOG_BLOCK != -1)
      {
        _MSLog_cold_4();
      }

      v9 = MS_DEFAULT_LOG_INTERNAL;
      if (os_log_type_enabled(MS_DEFAULT_LOG_INTERNAL, OS_LOG_TYPE_DEBUG))
      {
        v10 = 138543362;
        v11 = v3;
        v5 = v9;
        v6 = OS_LOG_TYPE_DEBUG;
        goto LABEL_25;
      }
    }
  }

  else if (a1 == 2 && os_log_type_enabled(MS_DEFAULT_LOG_INTERNAL, OS_LOG_TYPE_INFO))
  {
    if (MS_DEFAULT_LOG_BLOCK != -1)
    {
      _MSLog_cold_3();
    }

    v7 = MS_DEFAULT_LOG_INTERNAL;
    if (os_log_type_enabled(MS_DEFAULT_LOG_INTERNAL, OS_LOG_TYPE_INFO))
    {
      v10 = 138543362;
      v11 = v3;
      v5 = v7;
      v6 = OS_LOG_TYPE_INFO;
      goto LABEL_25;
    }
  }

LABEL_26:
}

void sub_258C94FE4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, ...)
{
  va_start(va, a24);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t __Block_byref_object_copy__2(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_258C958B4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_258C95A94(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_258C95D08(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, ...)
{
  va_start(va, a16);
  _Block_object_dispose(va, 8);
  _Block_object_dispose((v16 - 80), 8);
  _Unwind_Resume(a1);
}

void sub_258C9610C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, ...)
{
  va_start(va1, a17);
  va_start(va, a17);
  v18 = va_arg(va1, void);
  v20 = va_arg(va1, void);
  v21 = va_arg(va1, void);
  v22 = va_arg(va1, void);
  v23 = va_arg(va1, void);
  _Block_object_dispose(va, 8);
  _Block_object_dispose(va1, 8);
  _Unwind_Resume(a1);
}

void sub_258C96474(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, ...)
{
  va_start(va, a20);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t __decodeEmbeddedCMSContent_block_invoke()
{
  v0 = os_log_create("com.apple.MessageSecurity", "default");
  v1 = MS_DEFAULT_LOG_INTERNAL;
  MS_DEFAULT_LOG_INTERNAL = v0;

  return MEMORY[0x2821F96F8](v0, v1);
}

uint64_t __decodeEmbeddedCMSContent_block_invoke_4()
{
  v0 = os_log_create("com.apple.MessageSecurity", "default");
  v1 = MS_DEFAULT_LOG_INTERNAL;
  MS_DEFAULT_LOG_INTERNAL = v0;

  return MEMORY[0x2821F96F8](v0, v1);
}

uint64_t __decodeEmbeddedCMSContent_block_invoke_7()
{
  v0 = os_log_create("com.apple.MessageSecurity", "default");
  v1 = MS_DEFAULT_LOG_INTERNAL;
  MS_DEFAULT_LOG_INTERNAL = v0;

  return MEMORY[0x2821F96F8](v0, v1);
}

uint64_t __decodeEmbeddedCMSContent_block_invoke_12()
{
  v0 = os_log_create("com.apple.MessageSecurity", "default");
  v1 = MS_DEFAULT_LOG_INTERNAL;
  MS_DEFAULT_LOG_INTERNAL = v0;

  return MEMORY[0x2821F96F8](v0, v1);
}

SecCertificateRef MSSecIdentityCopyCertificateWithError(__SecIdentity *a1, void *a2)
{
  certificateRef = 0;
  v3 = SecIdentityCopyCertificate(a1, &certificateRef);
  if (!v3)
  {
    return certificateRef;
  }

  if (!a2)
  {
    return 0;
  }

  v4 = [MSError MSErrorWithDomain:*MEMORY[0x277CCA590] code:v3 underlyingError:*a2 description:@"unable to get certificate from provided identity"];
  v5 = v4;
  result = 0;
  *a2 = v4;
  return result;
}

SecKeyRef MSSecIdentityCopyKeyWithError(__SecIdentity *a1, void *a2)
{
  privateKeyRef = 0;
  v3 = SecIdentityCopyPrivateKey(a1, &privateKeyRef);
  if (!v3)
  {
    return privateKeyRef;
  }

  if (!a2)
  {
    return 0;
  }

  v4 = [MSError MSErrorWithDomain:*MEMORY[0x277CCA590] code:v3 underlyingError:*a2 description:@"unable to get private key from provided identity"];
  v5 = v4;
  result = 0;
  *a2 = v4;
  return result;
}

SecTrustRef MSSecTrustCreateWithError(uint64_t a1, void *a2, void *a3, void *a4, id *a5)
{
  v9 = a2;
  v10 = a3;
  v11 = a4;
  trust = 0;
  if (a5 && *a5)
  {
    v12 = [*a5 copy];
  }

  else
  {
    v12 = 0;
  }

  if (v9)
  {
    [MEMORY[0x277CBEB18] arrayWithArray:v9];
  }

  else
  {
    [MEMORY[0x277CBEB18] arrayWithCapacity:1];
  }
  v13 = ;
  [v13 insertObject:a1 atIndex:0];
  v14 = SecTrustCreateWithCertificates(v13, v11, &trust);
  if (v14)
  {
    v18 = @"unable to create trust object";
  }

  else
  {
    if (!v10 || (v14 = SecTrustSetVerifyDate(trust, v10)) == 0)
    {
      if (!a5)
      {
        goto LABEL_14;
      }

      goto LABEL_12;
    }

    v18 = @"unable to set verify date on trust object";
  }

  v19 = [MSError MSErrorWithDomain:*MEMORY[0x277CCA590] code:v14 underlyingError:v12 description:v18];

  v12 = v19;
  if (!a5)
  {
    goto LABEL_14;
  }

LABEL_12:
  if (v12)
  {
    v15 = v12;
    *a5 = v12;
  }

LABEL_14:
  v16 = trust;

  return v16;
}

uint64_t __Block_byref_object_copy__3(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

uint64_t __findCertificateByIssuerAndSerialNumber_block_invoke_2()
{
  v0 = os_log_create("com.apple.MessageSecurity", "default");
  v1 = MS_DEFAULT_LOG_INTERNAL;
  MS_DEFAULT_LOG_INTERNAL = v0;

  return MEMORY[0x2821F96F8](v0, v1);
}

uint64_t __findCertificateByIssuerAndSerialNumber_block_invoke_47()
{
  v0 = os_log_create("com.apple.MessageSecurity", "default");
  v1 = MS_DEFAULT_LOG_INTERNAL;
  MS_DEFAULT_LOG_INTERNAL = v0;

  return MEMORY[0x2821F96F8](v0, v1);
}

void dumpNSData(const char *a1, void *a2)
{
  v42 = *MEMORY[0x277D85DE8];
  v3 = a2;
  v4 = v3;
  if (a1 && v3)
  {
    v5 = os_variant_allows_internal_security_policies();
    v6 = CFPreferencesCopyValue(@"logCMSDecodingFailures", @"com.apple.messagesecurity", *MEMORY[0x277CBF020], *MEMORY[0x277CBF030]);
    v7 = *MEMORY[0x277CBF008];
    v8 = CFPreferencesCopyAppValue(@"logCMSDecodingFailures", *MEMORY[0x277CBF008]);
    IsForced = CFPreferencesAppValueIsForced(@"logCMSDecodingFailures", v7);
    if (v5 && v6 && (v10 = CFGetTypeID(v6), TypeID = CFBooleanGetTypeID(), v12 = v6, v10 == TypeID) || (IsForced ? (v13 = v8 == 0) : (v13 = 1), !v13 && (v14 = CFGetTypeID(v8), v15 = CFBooleanGetTypeID(), v12 = v8, v14 == v15)))
    {
      Value = CFBooleanGetValue(v12);
    }

    else
    {
      Value = 0;
    }

    if (MS_DEFAULT_LOG_BLOCK != -1)
    {
      dumpNSData_cold_1();
    }

    v17 = MS_DEFAULT_LOG_INTERNAL;
    if (os_log_type_enabled(MS_DEFAULT_LOG_INTERNAL, OS_LOG_TYPE_DEBUG))
    {
      v18 = v17;
      v19 = [@"logCMSDecodingFailures" cString];
      *buf = 136316674;
      v35 = "valueForBooleanDefault";
      v20 = "NULL";
      v36 = 2080;
      v37 = v19;
      if (v6)
      {
        v21 = "NOT_NULL";
      }

      else
      {
        v21 = "NULL";
      }

      *v39 = v5;
      v38 = 1024;
      if (v8)
      {
        v20 = "NOT_NULL";
      }

      *&v39[4] = 2080;
      *&v39[6] = v21;
      *&v39[14] = 1024;
      *&v39[16] = IsForced;
      *v40 = 2080;
      *&v40[2] = v20;
      LOWORD(v41) = 1024;
      *(&v41 + 2) = Value;
      _os_log_impl(&dword_258C80000, v18, OS_LOG_TYPE_DEBUG, "%s %s isInternal: %d val: %s isForced: %d appVal: %s result: %d", buf, 0x3Cu);
    }

    if (v6)
    {
      CFRelease(v6);
    }

    if (v8)
    {
      CFRelease(v8);
    }

    if (Value)
    {
      v22 = [v4 bytes];
      v23 = [v4 length];
      bzero(log_buffer, 0x2711uLL);
      if (v23)
      {
        v24 = 0;
        v25 = 0;
        v26 = v22 + 1;
        do
        {
          v27 = *v22++;
          v28 = snprintf(&log_buffer[v24], 10001 - v24, "0x%02x,", v27);
          if (!--v23 || (v24 += v28, (v24 - 9996) <= 5))
          {
            if (MS_DEFAULT_LOG_BLOCK != -1)
            {
              dumpNSData_cold_2();
            }

            v29 = MS_DEFAULT_LOG_INTERNAL;
            v30 = v26;
            if (os_log_type_enabled(v29, OS_LOG_TYPE_ERROR))
            {
              v31 = [v4 bytes];
              v32 = &v26[-[v4 bytes]];
              v33 = [v4 length];
              *buf = 136316418;
              v35 = a1;
              v36 = 2048;
              v37 = v31;
              v38 = 2048;
              *v39 = v25;
              *&v39[8] = 2048;
              *&v39[10] = v32;
              *&v39[18] = 2048;
              *v40 = v33;
              *&v40[8] = 2080;
              v41 = log_buffer;
              _os_log_impl(&dword_258C80000, v29, OS_LOG_TYPE_ERROR, "logging %s 0x%zx [%ld-%ld)/%ld %s", buf, 0x3Eu);
              v30 = v22;
            }

            v25 = &v30[-[v4 bytes]];
            bzero(log_buffer, 0x2711uLL);
            v24 = 0;
          }

          ++v26;
        }

        while (v23);
      }
    }
  }
}

uint64_t __findCertificateByIssuerAndSerialNumber_block_invoke_52()
{
  v0 = os_log_create("com.apple.MessageSecurity", "default");
  v1 = MS_DEFAULT_LOG_INTERNAL;
  MS_DEFAULT_LOG_INTERNAL = v0;

  return MEMORY[0x2821F96F8](v0, v1);
}

uint64_t __findCertificateByIssuerAndSerialNumber_block_invoke_55()
{
  v0 = os_log_create("com.apple.MessageSecurity", "default");
  v1 = MS_DEFAULT_LOG_INTERNAL;
  MS_DEFAULT_LOG_INTERNAL = v0;

  return MEMORY[0x2821F96F8](v0, v1);
}

__CFString *NSStringFromDERIntegerData(void *a1)
{
  v1 = a1;
  v2 = v1;
  if (v1)
  {
    [v1 bytes];
    [v2 length];
    if (der_get_integer() || [v2 length])
    {
      v3 = [v2 asMessageSecurityHexString];
    }

    else
    {
      v3 = [objc_alloc(MEMORY[0x277CCACA8]) initWithFormat:@"%d", 0];
    }

    v4 = v3;
  }

  else
  {
    v4 = @"NULL";
  }

  return v4;
}

__CFString *NSSStringFromIssuerName(void *a1)
{
  v1 = a1;
  if (!v1)
  {
    v2 = @"NULL";
    goto LABEL_34;
  }

  v31 = 0;
  v29 = 0u;
  v30 = 0u;
  v24 = v1;
  v2 = @"INVALID_ISSUER";
  if (nsheim_decode_Name(v1, &v29) || v30 != 1)
  {
    goto LABEL_33;
  }

  v3 = DWORD2(v30);
  if (!DWORD2(v30))
  {
    v2 = &stru_286A08A88;
    goto LABEL_33;
  }

  v4 = 0;
  v2 = &stru_286A08A88;
  do
  {
    v5 = (v31 + 16 * v4);
    v6 = *v5;
    if (!v6)
    {
      goto LABEL_27;
    }

    v25 = v4;
    v7 = *(v5 + 1);
    do
    {
      v8 = v2;
      v28 = 0;
      v26 = 0u;
      *__s = 0u;
      v9 = *v7;
      v10 = v7[1];
      v28 = *(v7 + 4);
      v26 = v9;
      *__s = v10;
      v11 = [[MSOID alloc] initWithAsn1OID:&v26 error:0];
      v12 = v11;
      if (v11)
      {
        v13 = [(MSOID *)v11 OIDString];
      }

      else
      {
        v13 = @"INVALID_OID";
      }

      if (SLODWORD(__s[0]) > 3)
      {
        if (LODWORD(__s[0]) == 4)
        {
          v15 = objc_alloc(MEMORY[0x277CCACA8]);
          v17 = __s[1];
          v16 = v28;
          v18 = 2348810496;
          goto LABEL_21;
        }

        if (LODWORD(__s[0]) != 5)
        {
          v14 = @"UNEXPECTED_VALUE";
          if (LODWORD(__s[0]) != 6)
          {
            goto LABEL_23;
          }

          v15 = objc_alloc(MEMORY[0x277CCACA8]);
          v17 = __s[1];
          v16 = v28;
          v18 = 10;
          goto LABEL_21;
        }

        v21 = objc_alloc(MEMORY[0x277CCACA8]);
        v19 = [v21 initWithUTF8String:__s[1]];
LABEL_22:
        v14 = v19;
        goto LABEL_23;
      }

      if (LODWORD(__s[0]) == 1)
      {
        goto LABEL_15;
      }

      if (LODWORD(__s[0]) != 2)
      {
        v14 = @"UNEXPECTED_VALUE";
        if (LODWORD(__s[0]) != 3)
        {
          goto LABEL_23;
        }

LABEL_15:
        v15 = objc_alloc(MEMORY[0x277CCACA8]);
        v17 = __s[1];
        v16 = v28;
        v18 = 1;
LABEL_21:
        v19 = [v15 initWithBytes:v16 length:v17 encoding:v18];
        goto LABEL_22;
      }

      v20 = [MEMORY[0x277CBEA90] dataWithBytes:__s[1] length:strlen(__s[1])];
      v14 = [v20 asMessageSecurityHexString];

LABEL_23:
      v2 = [(__CFString *)v8 stringByAppendingFormat:@"%@:%@ ", v13, v14];

      v7 = (v7 + 40);
      --v6;
    }

    while (v6);
    v3 = DWORD2(v30);
    v4 = v25;
LABEL_27:
    if (++v4 < v3)
    {
      v22 = [(__CFString *)v2 stringByAppendingFormat:@"| "];

      v3 = DWORD2(v30);
      v2 = v22;
    }
  }

  while (v4 < v3);
LABEL_33:
  v1 = v24;
LABEL_34:

  return v2;
}

uint64_t findCertificateBySubjectKeyID(void *a1, void *a2, void *a3, id *a4)
{
  v56 = *MEMORY[0x277D85DE8];
  v31 = a2;
  v30 = a3;
  v47 = 0;
  v48 = &v47;
  v49 = 0x2020000000;
  v50 = 0;
  v41 = 0;
  v42 = &v41;
  v43 = 0x3032000000;
  v44 = __Block_byref_object_copy__3;
  v45 = __Block_byref_object_dispose__3;
  v46 = NSDataFromOctetString(a1);
  v28 = a4;
  if (a4 && *a4)
  {
    v7 = [*a4 copy];
  }

  else
  {
    v7 = 0;
  }

  v29 = [MEMORY[0x277CBEB18] array];
  if (v31 && [v31 count])
  {
    v37[0] = MEMORY[0x277D85DD0];
    v37[1] = 3221225472;
    v37[2] = __findCertificateBySubjectKeyID_block_invoke;
    v37[3] = &unk_2798BE5C0;
    v39 = &v41;
    v40 = &v47;
    v38 = v29;
    [v31 enumerateObjectsUsingBlock:v37];
  }

  v8 = v48[3];
  if (!v8)
  {
    v9 = [MEMORY[0x277CBEB38] dictionary];
    [v9 setObject:*MEMORY[0x277CDC230] forKey:*MEMORY[0x277CDC228]];
    [v9 setObject:v42[5] forKey:*MEMORY[0x277CDC130]];
    [v9 setObject:MEMORY[0x277CBEC38] forKey:*MEMORY[0x277CDC568]];
    if (v30)
    {
      [v9 setObject:v30 forKey:*MEMORY[0x277CDC5A0]];
    }

    v36 = v7;
    v26 = v9;
    ItemInAllAvailableKeychains = findItemInAllAvailableKeychains(v9, &v36);
    v27 = v36;

    if (ItemInAllAvailableKeychains)
    {
      v11 = CFGetTypeID(ItemInAllAvailableKeychains);
      if (v11 == SecCertificateGetTypeID())
      {
        v48[3] = ItemInAllAvailableKeychains;
      }

      else
      {
        CFRelease(ItemInAllAvailableKeychains);
      }
    }

    if (v48[3])
    {
      v7 = v27;
    }

    else
    {
      if (MS_DEFAULT_LOG_BLOCK != -1)
      {
        findCertificateBySubjectKeyID_cold_1();
      }

      v12 = MS_DEFAULT_LOG_INTERNAL;
      if (os_log_type_enabled(v12, OS_LOG_TYPE_INFO))
      {
        v13 = [v42[5] asMessageSecurityHexString];
        *buf = 141558274;
        v53 = 1752392040;
        v54 = 2112;
        v55 = v13;
        _os_log_impl(&dword_258C80000, v12, OS_LOG_TYPE_INFO, "QuerySKID = %{mask.hash}@", buf, 0x16u);
      }

      dumpNSData("QuerySKID", v42[5]);
      v34 = 0u;
      v35 = 0u;
      v32 = 0u;
      v33 = 0u;
      v14 = v29;
      v15 = [v14 countByEnumeratingWithState:&v32 objects:v51 count:16];
      if (v15)
      {
        v16 = *v33;
        do
        {
          v17 = 0;
          do
          {
            if (*v33 != v16)
            {
              objc_enumerationMutation(v14);
            }

            v18 = *(*(&v32 + 1) + 8 * v17);
            if (MS_DEFAULT_LOG_BLOCK != -1)
            {
              findCertificateBySubjectKeyID_cold_2();
            }

            v19 = MS_DEFAULT_LOG_INTERNAL;
            if (os_log_type_enabled(v19, OS_LOG_TYPE_INFO))
            {
              v20 = [v18 asMessageSecurityHexString];
              *buf = 141558274;
              v53 = 1752392040;
              v54 = 2112;
              v55 = v20;
              _os_log_impl(&dword_258C80000, v19, OS_LOG_TYPE_INFO, "BundledSKID = %{mask.hash}@", buf, 0x16u);
            }

            dumpNSData("BundledSKID", v18);
            ++v17;
          }

          while (v15 != v17);
          v15 = [v14 countByEnumeratingWithState:&v32 objects:v51 count:16];
        }

        while (v15);
      }

      v21 = MSErrorKeychainDomain[0];
      v22 = v42[5];
      if (v22)
      {
        v23 = [v42[5] asMessageSecurityHexString];
      }

      else
      {
        v23 = @"NULL";
      }

      v7 = [MSError MSErrorWithDomain:v21 code:-25300 errorLevel:1 underlyingError:v27 description:@"%s did not find SubjectKeyIdentifier %@", "findCertificateBySubjectKeyID", v23, v9];

      if (v22)
      {
      }
    }

    if (v28 && v7)
    {
      v24 = v7;
      *v28 = v7;
    }

    v8 = v48[3];
  }

  _Block_object_dispose(&v41, 8);
  _Block_object_dispose(&v47, 8);

  return v8;
}

void sub_258C97BC4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, ...)
{
  va_start(va, a40);
  _Block_object_dispose(&a35, 8);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void __findCertificateBySubjectKeyID_block_invoke(uint64_t a1, void *a2, uint64_t a3, _BYTE *a4)
{
  cf = a2;
  SubjectKeyID = SecCertificateGetSubjectKeyID();
  v7 = SubjectKeyID;
  if (SubjectKeyID)
  {
    CFRetain(SubjectKeyID);
  }

  v8 = *(*(*(a1 + 40) + 8) + 40);
  if (v8 && [v8 isEqualToData:v7])
  {
    v9 = cf;
    if (cf)
    {
      CFRetain(cf);
      v9 = cf;
    }

    *(*(*(a1 + 48) + 8) + 24) = v9;
    *a4 = 1;
  }

  else
  {
    v10 = *(a1 + 32);
    if (v7)
    {
      [*(a1 + 32) addObject:v7];
    }

    else
    {
      v11 = [MEMORY[0x277CBEA90] data];
      [v10 addObject:v11];
    }
  }
}

uint64_t __findCertificateBySubjectKeyID_block_invoke_2()
{
  v0 = os_log_create("com.apple.MessageSecurity", "default");
  v1 = MS_DEFAULT_LOG_INTERNAL;
  MS_DEFAULT_LOG_INTERNAL = v0;

  return MEMORY[0x2821F96F8](v0, v1);
}

uint64_t __findCertificateBySubjectKeyID_block_invoke_66()
{
  v0 = os_log_create("com.apple.MessageSecurity", "default");
  v1 = MS_DEFAULT_LOG_INTERNAL;
  MS_DEFAULT_LOG_INTERNAL = v0;

  return MEMORY[0x2821F96F8](v0, v1);
}

uint64_t findCertificateByEmailAddress(void *a1, void *a2, void **a3)
{
  v60 = *MEMORY[0x277D85DE8];
  v5 = a1;
  v6 = a2;
  v53 = 0;
  v54 = &v53;
  v55 = 0x2020000000;
  v56 = 0;
  v47 = 0;
  v48 = &v47;
  v49 = 0x3032000000;
  v50 = __Block_byref_object_copy__3;
  v51 = __Block_byref_object_dispose__3;
  if (a3)
  {
    v7 = *a3;
    if (*a3)
    {
      v7 = [v7 copy];
    }
  }

  else
  {
    v7 = 0;
  }

  v52 = v7;
  v41 = 0;
  v42 = &v41;
  v43 = 0x3032000000;
  v44 = __Block_byref_object_copy__3;
  v45 = __Block_byref_object_dispose__3;
  v46 = 0;
  v8 = [MEMORY[0x277CBEB38] dictionary];
  [v8 setObject:*MEMORY[0x277CDC230] forKey:*MEMORY[0x277CDC228]];
  [v8 setObject:*MEMORY[0x277CDC430] forKey:*MEMORY[0x277CDC428]];
  [v8 setObject:MEMORY[0x277CBEC38] forKey:*MEMORY[0x277CDC568]];
  if (v6)
  {
    [v8 setObject:v6 forKey:*MEMORY[0x277CDC5A0]];
  }

  v9 = (v48 + 5);
  obj = v48[5];
  ItemInAllAvailableKeychains = findItemInAllAvailableKeychains(v8, &obj);
  objc_storeStrong(v9, obj);
  if (ItemInAllAvailableKeychains)
  {
    v11 = CFGetTypeID(ItemInAllAvailableKeychains);
    if (v11 == SecCertificateGetTypeID())
    {
      v12 = [MEMORY[0x277CBEB18] arrayWithObject:ItemInAllAvailableKeychains];
    }

    else
    {
      v15 = CFGetTypeID(ItemInAllAvailableKeychains);
      if (v15 != CFArrayGetTypeID())
      {
        v16 = 0;
LABEL_16:
        CFRelease(ItemInAllAvailableKeychains);
        if (MS_DEFAULT_LOG_BLOCK != -1)
        {
          findCertificateByEmailAddress_cold_1();
        }

        v17 = MS_DEFAULT_LOG_INTERNAL;
        if (os_log_type_enabled(v17, OS_LOG_TYPE_DEBUG))
        {
          v18 = [v16 count];
          LODWORD(buf) = 134217984;
          *(&buf + 4) = v18;
          _os_log_impl(&dword_258C80000, v17, OS_LOG_TYPE_DEBUG, "found %lu candidate email certs from keychain", &buf, 0xCu);
        }

        v19 = [MEMORY[0x277CBEB18] arrayWithCapacity:{objc_msgSend(v16, "count")}];
        v20 = v42[5];
        v42[5] = v19;

        v37[0] = MEMORY[0x277D85DD0];
        v37[1] = 3221225472;
        v37[2] = __findCertificateByEmailAddress_block_invoke_85;
        v37[3] = &unk_2798BE610;
        v21 = v5;
        v38 = v21;
        v39 = &v41;
        [v16 enumerateObjectsUsingBlock:v37];
        if (MS_DEFAULT_LOG_BLOCK != -1)
        {
          findCertificateByEmailAddress_cold_2();
        }

        v22 = MS_DEFAULT_LOG_INTERNAL;
        if (os_log_type_enabled(v22, OS_LOG_TYPE_DEBUG))
        {
          v23 = [v16 count];
          LODWORD(buf) = 134217984;
          *(&buf + 4) = v23;
          _os_log_impl(&dword_258C80000, v22, OS_LOG_TYPE_DEBUG, "found %lu candidate certs from keychain with matching email addresses", &buf, 0xCu);
        }

        v13 = v42[5];
        if ([v13 count] == 1)
        {
          v24 = [v13 objectAtIndex:0];
          v54[3] = v24;
        }

        else
        {
          if (![v13 count])
          {
            if (a3)
            {
              [MSError MSErrorWithDomain:MSErrorKeychainDomain[0] code:-25300 errorLevel:1 underlyingError:v48[5] description:@"unable to find any certificates with email address %@", v21];
              *a3 = v14 = 0;
            }

            else
            {
              v14 = 0;
            }

            goto LABEL_34;
          }

          v25 = [MEMORY[0x277CBEB18] arrayWithCapacity:{objc_msgSend(v13, "count")}];
          v26 = v42[5];
          v42[5] = v25;

          v36[0] = MEMORY[0x277D85DD0];
          v36[1] = 3221225472;
          v36[2] = __findCertificateByEmailAddress_block_invoke_92;
          v36[3] = &unk_2798BE638;
          v36[4] = &v47;
          v36[5] = &v41;
          [v13 enumerateObjectsUsingBlock:v36];
          if (MS_DEFAULT_LOG_BLOCK != -1)
          {
            findCertificateByEmailAddress_cold_3();
          }

          v27 = MS_DEFAULT_LOG_INTERNAL;
          if (os_log_type_enabled(v27, OS_LOG_TYPE_DEBUG))
          {
            v28 = [v13 count];
            LODWORD(buf) = 134217984;
            *(&buf + 4) = v28;
            _os_log_impl(&dword_258C80000, v27, OS_LOG_TYPE_DEBUG, "found %lu valid email candidate certs", &buf, 0xCu);
          }

          v29 = [v42[5] count];
          v30 = v42[5];
          if (v29 != 1)
          {
            if ([v30 count])
            {
              v33 = v42[5];

              v13 = v33;
            }

            *&buf = 0;
            *(&buf + 1) = &buf;
            v58 = 0x2020000000;
            v59 = 0;
            v35[0] = MEMORY[0x277D85DD0];
            v35[1] = 3221225472;
            v35[2] = __findCertificateByEmailAddress_block_invoke_96;
            v35[3] = &unk_2798BE638;
            v35[4] = &buf;
            v35[5] = &v53;
            [v13 enumerateObjectsUsingBlock:v35];
            if (a3)
            {
              v34 = v48[5];
              if (v34)
              {
                *a3 = v34;
              }
            }

            v14 = v54[3];
            _Block_object_dispose(&buf, 8);
            goto LABEL_34;
          }

          v31 = [v30 objectAtIndex:0];
          v54[3] = v31;
        }

        v14 = v54[3];
LABEL_34:

        goto LABEL_35;
      }

      v12 = [MEMORY[0x277CBEB18] arrayWithArray:ItemInAllAvailableKeychains];
    }

    v16 = v12;
    goto LABEL_16;
  }

  if (a3)
  {
    [MSError MSErrorWithDomain:MSErrorKeychainDomain[0] code:-25300 errorLevel:1 underlyingError:v48[5] description:@"unable to find any certificates in keychain"];
    v13 = 0;
    *a3 = v14 = 0;
  }

  else
  {
    v13 = 0;
    v14 = 0;
  }

LABEL_35:

  _Block_object_dispose(&v41, 8);
  _Block_object_dispose(&v47, 8);

  _Block_object_dispose(&v53, 8);
  return v14;
}

void sub_258C98498(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, ...)
{
  va_start(va, a34);
  _Block_object_dispose((v34 - 160), 8);
  _Block_object_dispose(&a29, 8);
  _Block_object_dispose(va, 8);
  _Block_object_dispose((v34 - 192), 8);
  _Unwind_Resume(a1);
}

uint64_t __findCertificateByEmailAddress_block_invoke()
{
  v0 = os_log_create("com.apple.MessageSecurity", "default");
  v1 = MS_DEFAULT_LOG_INTERNAL;
  MS_DEFAULT_LOG_INTERNAL = v0;

  return MEMORY[0x2821F96F8](v0, v1);
}

void __findCertificateByEmailAddress_block_invoke_85(uint64_t a1, void *a2)
{
  v3 = a2;
  if (v3)
  {
    v4 = SecCertificateCopyRFC822Names();
    if (v4)
    {
      v5 = v4;
      v6[0] = MEMORY[0x277D85DD0];
      v6[1] = 3221225472;
      v6[2] = __findCertificateByEmailAddress_block_invoke_2;
      v6[3] = &unk_2798BE5E8;
      v7 = *(a1 + 32);
      if ([v5 indexOfObjectPassingTest:v6] != 0x7FFFFFFFFFFFFFFFLL)
      {
        [*(*(*(a1 + 40) + 8) + 40) addObject:v3];
      }
    }
  }
}

uint64_t __findCertificateByEmailAddress_block_invoke_3()
{
  v0 = os_log_create("com.apple.MessageSecurity", "default");
  v1 = MS_DEFAULT_LOG_INTERNAL;
  MS_DEFAULT_LOG_INTERNAL = v0;

  return MEMORY[0x2821F96F8](v0, v1);
}

uint64_t __findCertificateByEmailAddress_block_invoke_2_93()
{
  v0 = os_log_create("com.apple.MessageSecurity", "default");
  v1 = MS_DEFAULT_LOG_INTERNAL;
  MS_DEFAULT_LOG_INTERNAL = v0;

  return MEMORY[0x2821F96F8](v0, v1);
}

uint64_t __findCertificateByEmailAddress_block_invoke_96(uint64_t a1, void *a2)
{
  cf = a2;
  v3 = SecCertificateNotValidAfter();
  v5 = cf;
  v6 = *(*(a1 + 32) + 8);
  if (v4 > *(v6 + 24))
  {
    *(v6 + 24) = v4;
    v3 = *(*(*(a1 + 40) + 8) + 24);
    if (v3)
    {
      CFRelease(v3);
      v5 = cf;
    }

    if (v5)
    {
      v3 = CFRetain(v5);
      v5 = cf;
    }

    *(*(*(a1 + 40) + 8) + 24) = v5;
  }

  return MEMORY[0x2821F96F8](v3, v5);
}

const void *findIdentityByCertificate(__SecCertificate *a1, void *a2, id *a3)
{
  v5 = a2;
  error = 0;
  if (a3 && *a3)
  {
    v6 = [*a3 copy];
  }

  else
  {
    v6 = 0;
  }

  v7 = [MEMORY[0x277CBEB38] dictionary];
  v8 = SecCertificateCopySerialNumberData(a1, &error);
  v9 = v8;
  v10 = error;
  if (error || !v8)
  {

    v6 = [MSError MSErrorWithDomain:MSErrorASN1Domain[0] code:-26275 underlyingError:v10 description:@"Unable to get serial number from certificate"];

    v11 = 0;
  }

  else
  {
    v11 = SecCertificateCopyNormalizedIssuerSequence(a1);
    if (v11)
    {
      [v7 setObject:*MEMORY[0x277CDC240] forKey:*MEMORY[0x277CDC228]];
      [v7 setObject:v11 forKey:*MEMORY[0x277CDBFD8]];
      [v7 setObject:v9 forKey:*MEMORY[0x277CDC110]];
      [v7 setObject:MEMORY[0x277CBEC38] forKey:*MEMORY[0x277CDC568]];
      if (v5)
      {
        [v7 setObject:v5 forKey:*MEMORY[0x277CDC5A0]];
      }

      ItemInAllAvailableKeychains = findItemInAllAvailableKeychains(v7, a3);
      if (ItemInAllAvailableKeychains)
      {
        v17 = ItemInAllAvailableKeychains;
        v21 = CFGetTypeID(ItemInAllAvailableKeychains);
        if (v21 == SecIdentityGetTypeID())
        {
          goto LABEL_13;
        }

        CFRelease(v17);
      }
    }

    else
    {
      v12 = [MSError MSErrorWithDomain:MSErrorASN1Domain[0] code:-26275 underlyingError:v6 description:@"Unable to get issuer sequence from certificate"];

      v6 = v12;
    }
  }

  v13 = v6;
  v14 = MSErrorKeychainDomain[0];
  v15 = NSStringFromDERIntegerData(v9);
  v16 = NSSStringFromIssuerName(v11);
  v6 = [MSError MSErrorWithDomain:v14 code:-25300 errorLevel:1 underlyingError:v6 description:@"%s did not find IssuerAndSerialNumber %@ %@", "findIdentityByCertificate", v15, v16];

  v17 = 0;
  if (a3 && v6)
  {
    v18 = v6;
    v17 = 0;
    *a3 = v6;
  }

LABEL_13:

  return v17;
}

uint64_t findIdentityByEmailAddress(void *a1, void *a2, void **a3)
{
  v5 = a1;
  v6 = a2;
  v49 = 0;
  v50 = &v49;
  v51 = 0x2020000000;
  v52 = 0;
  v43 = 0;
  v44 = &v43;
  v45 = 0x3032000000;
  v46 = __Block_byref_object_copy__3;
  v47 = __Block_byref_object_dispose__3;
  if (a3)
  {
    v7 = *a3;
    if (*a3)
    {
      v7 = [v7 copy];
    }
  }

  else
  {
    v7 = 0;
  }

  v48 = v7;
  v37 = 0;
  v38 = &v37;
  v39 = 0x3032000000;
  v40 = __Block_byref_object_copy__3;
  v41 = __Block_byref_object_dispose__3;
  v42 = 0;
  v8 = [MEMORY[0x277CBEB38] dictionary];
  [v8 setObject:*MEMORY[0x277CDC240] forKey:*MEMORY[0x277CDC228]];
  [v8 setObject:*MEMORY[0x277CDC430] forKey:*MEMORY[0x277CDC428]];
  [v8 setObject:MEMORY[0x277CBEC38] forKey:*MEMORY[0x277CDC568]];
  if (v6)
  {
    [v8 setObject:v6 forKey:*MEMORY[0x277CDC5A0]];
  }

  v9 = v44;
  obj = v44[5];
  ItemInAllAvailableKeychains = findItemInAllAvailableKeychains(v8, &obj);
  objc_storeStrong(v9 + 5, obj);
  if (ItemInAllAvailableKeychains)
  {
    v11 = CFGetTypeID(ItemInAllAvailableKeychains);
    if (v11 == SecIdentityGetTypeID())
    {
      v12 = [MEMORY[0x277CBEB18] arrayWithObject:ItemInAllAvailableKeychains];
    }

    else
    {
      v15 = CFGetTypeID(ItemInAllAvailableKeychains);
      if (v15 != CFArrayGetTypeID())
      {
        v16 = 0;
LABEL_16:
        CFRelease(ItemInAllAvailableKeychains);
        v17 = [MEMORY[0x277CBEB18] arrayWithCapacity:{objc_msgSend(v16, "count")}];
        v18 = v38[5];
        v38[5] = v17;

        v32[0] = MEMORY[0x277D85DD0];
        v32[1] = 3221225472;
        v32[2] = __findIdentityByEmailAddress_block_invoke;
        v32[3] = &unk_2798BE660;
        v34 = &v43;
        v19 = v5;
        v33 = v19;
        v35 = &v37;
        [v16 enumerateObjectsUsingBlock:v32];
        v13 = v38[5];

        if ([v13 count] == 1)
        {
          v20 = [v13 objectAtIndex:0];
        }

        else
        {
          if (![v13 count])
          {
            if (a3)
            {
              [MSError MSErrorWithDomain:MSErrorKeychainDomain[0] code:-25300 errorLevel:1 underlyingError:v44[5] description:@"unable to find any identities with email address %@", v19];
              *a3 = v14 = 0;
            }

            else
            {
              v14 = 0;
            }

            goto LABEL_22;
          }

          v21 = [MEMORY[0x277CBEB18] arrayWithCapacity:{objc_msgSend(v13, "count")}];
          v22 = v38[5];
          v38[5] = v21;

          v31[0] = MEMORY[0x277D85DD0];
          v31[1] = 3221225472;
          v31[2] = __findIdentityByEmailAddress_block_invoke_3;
          v31[3] = &unk_2798BE638;
          v31[4] = &v43;
          v31[5] = &v37;
          [v13 enumerateObjectsUsingBlock:v31];
          v23 = [v38[5] count];
          v24 = v38[5];
          if (v23 != 1)
          {
            if ([v24 count])
            {
              v27 = v38[5];

              v13 = v27;
            }

            v30[0] = 0;
            v30[1] = v30;
            v30[2] = 0x2020000000;
            v30[3] = 0;
            v29[0] = MEMORY[0x277D85DD0];
            v29[1] = 3221225472;
            v29[2] = __findIdentityByEmailAddress_block_invoke_4;
            v29[3] = &unk_2798BE688;
            v29[4] = &v43;
            v29[5] = v30;
            v29[6] = &v49;
            [v13 enumerateObjectsUsingBlock:v29];
            if (a3)
            {
              v28 = v44[5];
              if (v28)
              {
                *a3 = v28;
              }
            }

            v14 = v50[3];
            _Block_object_dispose(v30, 8);
            goto LABEL_22;
          }

          v20 = [v24 objectAtIndex:0];
        }

        v25 = v20;
        v50[3] = v25;

        v14 = v50[3];
LABEL_22:

        goto LABEL_23;
      }

      v12 = [MEMORY[0x277CBEB18] arrayWithArray:ItemInAllAvailableKeychains];
    }

    v16 = v12;
    goto LABEL_16;
  }

  if (a3)
  {
    [MSError MSErrorWithDomain:MSErrorKeychainDomain[0] code:-25300 errorLevel:1 underlyingError:v44[5] description:@"unable to find any identities in keychain"];
    v13 = 0;
    *a3 = v14 = 0;
  }

  else
  {
    v13 = 0;
    v14 = 0;
  }

LABEL_23:

  _Block_object_dispose(&v37, 8);
  _Block_object_dispose(&v43, 8);

  _Block_object_dispose(&v49, 8);
  return v14;
}

void sub_258C98F78(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, ...)
{
  va_start(va, a34);
  _Block_object_dispose(&a17, 8);
  _Block_object_dispose(va, 8);
  _Block_object_dispose((v34 - 176), 8);
  _Block_object_dispose((v34 - 128), 8);
  _Unwind_Resume(a1);
}

void __findIdentityByEmailAddress_block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = *(*(a1 + 40) + 8);
  obj = *(v4 + 40);
  v5 = MSSecIdentityCopyCertificateWithError(v3, &obj);
  objc_storeStrong((v4 + 40), obj);
  if (v5)
  {
    v6 = SecCertificateCopyRFC822Names();
    if (v6)
    {
      v7 = v6;
      v8 = MEMORY[0x277D85DD0];
      v9 = 3221225472;
      v10 = __findIdentityByEmailAddress_block_invoke_2;
      v11 = &unk_2798BE5E8;
      v12 = *(a1 + 32);
      if ([v7 indexOfObjectPassingTest:&v8] != 0x7FFFFFFFFFFFFFFFLL)
      {
        [*(*(*(a1 + 48) + 8) + 40) addObject:{v3, v8, v9, v10, v11}];
      }

      CFRelease(v5);
    }

    else
    {
      CFRelease(v5);
    }
  }
}

void __findIdentityByEmailAddress_block_invoke_4(void *a1, void *a2)
{
  v3 = a2;
  v4 = *(a1[4] + 8);
  obj = *(v4 + 40);
  v5 = MSSecIdentityCopyCertificateWithError(v3, &obj);
  objc_storeStrong((v4 + 40), obj);
  SecCertificateNotValidAfter();
  v7 = *(a1[5] + 8);
  if (v6 > *(v7 + 24))
  {
    *(v7 + 24) = v6;
    v8 = *(*(a1[6] + 8) + 24);
    if (v8)
    {
      CFRelease(v8);
    }

    *(*(a1[6] + 8) + 24) = CFRetain(v3);
  }

  if (v5)
  {
    CFRelease(v5);
  }
}

id asn1ErrorToNSError(id result, void *a2)
{
  v3 = @"ASN1_BAD_TIMEFORMAT";
  switch(result)
  {
    case 1859794432:
      break;
    case 1859794433:
      v3 = @"ASN1_MISSING_FIELD";
      break;
    case 1859794434:
      v3 = @"ASN1_MISPLACED_FIELD";
      break;
    case 1859794435:
      v3 = @"ASN1_TYPE_MISMATCH";
      break;
    case 1859794436:
      v3 = @"ASN1_OVERFLOW";
      break;
    case 1859794437:
      v3 = @"ASN1_OVERRUN";
      break;
    case 1859794438:
      v3 = @"ASN1_BAD_ID";
      break;
    case 1859794439:
      v3 = @"ASN1_BAD_LENGTH";
      break;
    case 1859794440:
      v3 = @"ASN1_BAD_FORMAT";
      break;
    case 1859794441:
      v3 = @"ASN1_PARSE_ERROR";
      break;
    case 1859794442:
      v3 = @"ASN1_EXTRA_DATA";
      break;
    case 1859794443:
      v3 = @"ASN1_BAD_CHARACTER";
      break;
    case 1859794444:
      v3 = @"ASN1_MIN_CONSTRAINT";
      break;
    case 1859794445:
      v3 = @"ASN1_MAX_CONSTRAINT";
      break;
    case 1859794446:
      v3 = @"ASN1_EXACT_CONSTRAINT";
      break;
    case 1859794447:
      v3 = @"ASN1_INDEF_OVERRUN";
      break;
    case 1859794448:
      v3 = @"ASN1_INDEF_UNDERRUN";
      break;
    case 1859794449:
      v3 = @"ASN1_GOT_BER";
      break;
    case 1859794450:
      v3 = @"ASN1_INDEF_EXTRA_DATA";
      break;
    case 1859794451:
      v3 = @"ASN1_INVALID_CHOICE";
      break;
    case 1859794452:
      v3 = @"ASN1_GOT_INDEFINITE";
      break;
    default:
      v3 = @"Unknown ASN1 error";
      if (!result)
      {
        v3 = @"ASN1 success";
      }

      break;
  }

  if (a2)
  {
    result = [MSError MSErrorWithDomain:MSErrorASN1Domain[0] code:result underlyingError:*a2 description:@"%@", v3];
    *a2 = result;
  }

  return result;
}

uint64_t uint32ToNetworkByteOrder(uint64_t result, uint64_t a2, uint64_t a3)
{
  for (; a3; --a3)
  {
    *(a2 - 1 + a3) = result;
    result = result >> 8;
  }

  return result;
}

uint64_t __dumpNSData_block_invoke()
{
  v0 = os_log_create("com.apple.MessageSecurity", "default");
  v1 = MS_DEFAULT_LOG_INTERNAL;
  MS_DEFAULT_LOG_INTERNAL = v0;

  return MEMORY[0x2821F96F8](v0, v1);
}

uint64_t __valueForBooleanDefault_block_invoke()
{
  v0 = os_log_create("com.apple.MessageSecurity", "default");
  v1 = MS_DEFAULT_LOG_INTERNAL;
  MS_DEFAULT_LOG_INTERNAL = v0;

  return MEMORY[0x2821F96F8](v0, v1);
}

uint64_t OUTLINED_FUNCTION_2_0()
{
  v3 = *(*(*(v1 + 40) + 8) + 40);

  return [v3 addObject:v0];
}

BOOL OUTLINED_FUNCTION_3_0()
{

  return os_log_type_enabled(v0, OS_LOG_TYPE_ERROR);
}

uint64_t __Block_byref_object_copy__4(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

uint64_t nsheim_decode_CMSVersion(void *a1, uint64_t a2)
{
  v2 = a1;
  [v2 bytes];
  [v2 length];
  v3 = _asn1_decode_top();
  if (!v3)
  {
    if ([v2 length])
    {
      v3 = 1859794442;
    }

    else
    {
      v3 = 0;
    }
  }

  return v3;
}

uint64_t nsheim_decode_DigestAlgorithmIdentifier(void *a1, uint64_t a2)
{
  v2 = a1;
  [v2 bytes];
  [v2 length];
  v3 = _asn1_decode_top();
  if (!v3)
  {
    if ([v2 length])
    {
      v3 = 1859794442;
    }

    else
    {
      v3 = 0;
    }
  }

  return v3;
}

uint64_t nsheim_decode_DigestAlgorithmIdentifiers(void *a1, uint64_t a2)
{
  v2 = a1;
  [v2 bytes];
  [v2 length];
  v3 = _asn1_decode_top();
  if (!v3)
  {
    if ([v2 length])
    {
      v3 = 1859794442;
    }

    else
    {
      v3 = 0;
    }
  }

  return v3;
}

uint64_t add_DigestAlgorithmIdentifiers(unsigned int *a1, uint64_t a2)
{
  v3 = malloc_type_realloc(*(a1 + 1), 24 * *a1 + 24, 0xE0607598uLL);
  if (!v3)
  {
    return 12;
  }

  *(a1 + 1) = v3;
  result = _asn1_copy_top();
  if (!result)
  {
    ++*a1;
  }

  return result;
}

uint64_t remove_DigestAlgorithmIdentifiers(uint64_t a1, unsigned int a2)
{
  if (*a1 <= a2)
  {
    return 1859794437;
  }

  _asn1_free_top();
  v4 = *a1 - 1;
  *a1 = v4;
  if (v4 > a2)
  {
    memmove((*(a1 + 8) + 24 * a2), (*(a1 + 8) + 24 * (a2 + 1)), 24 * (v4 - a2));
    v4 = *a1;
  }

  v5 = malloc_type_realloc(*(a1 + 8), 24 * v4, 0xBA00BB5BuLL);
  if (!v5 && *a1)
  {
    return 0;
  }

  result = 0;
  *(a1 + 8) = v5;
  return result;
}

uint64_t nsheim_decode_SignatureAlgorithmIdentifier(void *a1, uint64_t a2)
{
  v2 = a1;
  [v2 bytes];
  [v2 length];
  v3 = _asn1_decode_top();
  if (!v3)
  {
    if ([v2 length])
    {
      v3 = 1859794442;
    }

    else
    {
      v3 = 0;
    }
  }

  return v3;
}

uint64_t nsheim_decode_DataContent(void *a1, uint64_t a2)
{
  v2 = a1;
  [v2 bytes];
  [v2 length];
  v3 = _asn1_decode_top();
  if (!v3)
  {
    if ([v2 length])
    {
      v3 = 1859794442;
    }

    else
    {
      v3 = 0;
    }
  }

  return v3;
}

uint64_t nsheim_decode_EncapsulatedContentInfo(void *a1, uint64_t a2)
{
  v2 = a1;
  [v2 bytes];
  [v2 length];
  v3 = _asn1_decode_top();
  if (!v3)
  {
    if ([v2 length])
    {
      v3 = 1859794442;
    }

    else
    {
      v3 = 0;
    }
  }

  return v3;
}

uint64_t nsheim_decode_CertificateChoices(void *a1, uint64_t a2)
{
  v2 = a1;
  [v2 bytes];
  [v2 length];
  v3 = _asn1_decode_top();
  if (!v3)
  {
    if ([v2 length])
    {
      v3 = 1859794442;
    }

    else
    {
      v3 = 0;
    }
  }

  return v3;
}

uint64_t nsheim_decode_CertificateSet(void *a1, uint64_t a2)
{
  v2 = a1;
  [v2 bytes];
  [v2 length];
  v3 = _asn1_decode_top();
  if (!v3)
  {
    if ([v2 length])
    {
      v3 = 1859794442;
    }

    else
    {
      v3 = 0;
    }
  }

  return v3;
}

uint64_t nsheim_decode_CertificateList(void *a1, uint64_t a2)
{
  v2 = a1;
  [v2 bytes];
  [v2 length];
  v3 = _asn1_decode_top();
  if (!v3)
  {
    if ([v2 length])
    {
      v3 = 1859794442;
    }

    else
    {
      v3 = 0;
    }
  }

  return v3;
}

uint64_t nsheim_decode_CertificateRevocationLists(void *a1, uint64_t a2)
{
  v2 = a1;
  [v2 bytes];
  [v2 length];
  v3 = _asn1_decode_top();
  if (!v3)
  {
    if ([v2 length])
    {
      v3 = 1859794442;
    }

    else
    {
      v3 = 0;
    }
  }

  return v3;
}

uint64_t nsheim_decode_IssuerAndSerialNumber(void *a1, uint64_t a2)
{
  v2 = a1;
  [v2 bytes];
  [v2 length];
  v3 = _asn1_decode_top();
  if (!v3)
  {
    if ([v2 length])
    {
      v3 = 1859794442;
    }

    else
    {
      v3 = 0;
    }
  }

  return v3;
}

uint64_t nsheim_decode_CMSIdentifier(void *a1, uint64_t a2)
{
  v2 = a1;
  [v2 bytes];
  [v2 length];
  v3 = _asn1_decode_top();
  if (!v3)
  {
    if ([v2 length])
    {
      v3 = 1859794442;
    }

    else
    {
      v3 = 0;
    }
  }

  return v3;
}

uint64_t nsheim_decode_SignerIdentifier(void *a1, uint64_t a2)
{
  v2 = a1;
  [v2 bytes];
  [v2 length];
  v3 = _asn1_decode_top();
  if (!v3)
  {
    if ([v2 length])
    {
      v3 = 1859794442;
    }

    else
    {
      v3 = 0;
    }
  }

  return v3;
}

uint64_t nsheim_decode_RecipientIdentifier(void *a1, uint64_t a2)
{
  v2 = a1;
  [v2 bytes];
  [v2 length];
  v3 = _asn1_decode_top();
  if (!v3)
  {
    if ([v2 length])
    {
      v3 = 1859794442;
    }

    else
    {
      v3 = 0;
    }
  }

  return v3;
}

uint64_t nsheim_decode_CMSAttributes(void *a1, uint64_t a2)
{
  v2 = a1;
  [v2 bytes];
  [v2 length];
  v3 = _asn1_decode_top();
  if (!v3)
  {
    if ([v2 length])
    {
      v3 = 1859794442;
    }

    else
    {
      v3 = 0;
    }
  }

  return v3;
}

uint64_t nsheim_decode_CMSOrderedAttributes(void *a1, uint64_t a2)
{
  v2 = a1;
  [v2 bytes];
  [v2 length];
  v3 = _asn1_decode_top();
  if (!v3)
  {
    if ([v2 length])
    {
      v3 = 1859794442;
    }

    else
    {
      v3 = 0;
    }
  }

  return v3;
}

uint64_t nsheim_decode_SignatureValue(void *a1, uint64_t a2)
{
  v2 = a1;
  [v2 bytes];
  [v2 length];
  v3 = _asn1_decode_top();
  if (!v3)
  {
    if ([v2 length])
    {
      v3 = 1859794442;
    }

    else
    {
      v3 = 0;
    }
  }

  return v3;
}

uint64_t nsheim_decode_SignerInfo(void *a1, uint64_t a2)
{
  v2 = a1;
  [v2 bytes];
  [v2 length];
  v3 = _asn1_decode_top();
  if (!v3)
  {
    if ([v2 length])
    {
      v3 = 1859794442;
    }

    else
    {
      v3 = 0;
    }
  }

  return v3;
}

uint64_t nsheim_decode_SignerInfos(void *a1, uint64_t a2)
{
  v2 = a1;
  [v2 bytes];
  [v2 length];
  v3 = _asn1_decode_top();
  if (!v3)
  {
    if ([v2 length])
    {
      v3 = 1859794442;
    }

    else
    {
      v3 = 0;
    }
  }

  return v3;
}

uint64_t nsheim_decode_OriginatorInfo(void *a1, uint64_t a2)
{
  v2 = a1;
  [v2 bytes];
  [v2 length];
  v3 = _asn1_decode_top();
  if (!v3)
  {
    if ([v2 length])
    {
      v3 = 1859794442;
    }

    else
    {
      v3 = 0;
    }
  }

  return v3;
}

uint64_t nsheim_decode_KeyEncryptionAlgorithmIdentifier(void *a1, uint64_t a2)
{
  v2 = a1;
  [v2 bytes];
  [v2 length];
  v3 = _asn1_decode_top();
  if (!v3)
  {
    if ([v2 length])
    {
      v3 = 1859794442;
    }

    else
    {
      v3 = 0;
    }
  }

  return v3;
}

uint64_t nsheim_decode_ContentEncryptionAlgorithmIdentifier(void *a1, uint64_t a2)
{
  v2 = a1;
  [v2 bytes];
  [v2 length];
  v3 = _asn1_decode_top();
  if (!v3)
  {
    if ([v2 length])
    {
      v3 = 1859794442;
    }

    else
    {
      v3 = 0;
    }
  }

  return v3;
}

uint64_t nsheim_decode_EncryptedKey(void *a1, uint64_t a2)
{
  v2 = a1;
  [v2 bytes];
  [v2 length];
  v3 = _asn1_decode_top();
  if (!v3)
  {
    if ([v2 length])
    {
      v3 = 1859794442;
    }

    else
    {
      v3 = 0;
    }
  }

  return v3;
}

uint64_t nsheim_decode_KeyTransRecipientInfo(void *a1, uint64_t a2)
{
  v2 = a1;
  [v2 bytes];
  [v2 length];
  v3 = _asn1_decode_top();
  if (!v3)
  {
    if ([v2 length])
    {
      v3 = 1859794442;
    }

    else
    {
      v3 = 0;
    }
  }

  return v3;
}

uint64_t nsheim_decode_SecCMS_ECC_CMS_SharedInfo(void *a1, uint64_t a2)
{
  v2 = a1;
  [v2 bytes];
  [v2 length];
  v3 = _asn1_decode_top();
  if (!v3)
  {
    if ([v2 length])
    {
      v3 = 1859794442;
    }

    else
    {
      v3 = 0;
    }
  }

  return v3;
}

uint64_t nsheim_decode_ECC_CMS_SharedInfo(void *a1, uint64_t a2)
{
  v2 = a1;
  [v2 bytes];
  [v2 length];
  v3 = _asn1_decode_top();
  if (!v3)
  {
    if ([v2 length])
    {
      v3 = 1859794442;
    }

    else
    {
      v3 = 0;
    }
  }

  return v3;
}

uint64_t nsheim_decode_OtherKeyAttribute(void *a1, uint64_t a2)
{
  v2 = a1;
  [v2 bytes];
  [v2 length];
  v3 = _asn1_decode_top();
  if (!v3)
  {
    if ([v2 length])
    {
      v3 = 1859794442;
    }

    else
    {
      v3 = 0;
    }
  }

  return v3;
}

uint64_t nsheim_decode_RecipientKeyIdentifier(void *a1, uint64_t a2)
{
  v2 = a1;
  [v2 bytes];
  [v2 length];
  v3 = _asn1_decode_top();
  if (!v3)
  {
    if ([v2 length])
    {
      v3 = 1859794442;
    }

    else
    {
      v3 = 0;
    }
  }

  return v3;
}

uint64_t nsheim_decode_KeyAgreeRecipientIdentifier(void *a1, uint64_t a2)
{
  v2 = a1;
  [v2 bytes];
  [v2 length];
  v3 = _asn1_decode_top();
  if (!v3)
  {
    if ([v2 length])
    {
      v3 = 1859794442;
    }

    else
    {
      v3 = 0;
    }
  }

  return v3;
}

uint64_t nsheim_decode_RecipientEncryptedKey(void *a1, uint64_t a2)
{
  v2 = a1;
  [v2 bytes];
  [v2 length];
  v3 = _asn1_decode_top();
  if (!v3)
  {
    if ([v2 length])
    {
      v3 = 1859794442;
    }

    else
    {
      v3 = 0;
    }
  }

  return v3;
}

uint64_t nsheim_decode_RecipientEncryptedKeys(void *a1, uint64_t a2)
{
  v2 = a1;
  [v2 bytes];
  [v2 length];
  v3 = _asn1_decode_top();
  if (!v3)
  {
    if ([v2 length])
    {
      v3 = 1859794442;
    }

    else
    {
      v3 = 0;
    }
  }

  return v3;
}

uint64_t nsheim_decode_UserKeyingMaterial(void *a1, uint64_t a2)
{
  v2 = a1;
  [v2 bytes];
  [v2 length];
  v3 = _asn1_decode_top();
  if (!v3)
  {
    if ([v2 length])
    {
      v3 = 1859794442;
    }

    else
    {
      v3 = 0;
    }
  }

  return v3;
}

uint64_t nsheim_decode_OriginatorPublicKey(void *a1, uint64_t a2)
{
  v2 = a1;
  [v2 bytes];
  [v2 length];
  v3 = _asn1_decode_top();
  if (!v3)
  {
    if ([v2 length])
    {
      v3 = 1859794442;
    }

    else
    {
      v3 = 0;
    }
  }

  return v3;
}

uint64_t nsheim_decode_SecCMS_OriginatorIdentifierOrKey(void *a1, uint64_t a2)
{
  v2 = a1;
  [v2 bytes];
  [v2 length];
  v3 = _asn1_decode_top();
  if (!v3)
  {
    if ([v2 length])
    {
      v3 = 1859794442;
    }

    else
    {
      v3 = 0;
    }
  }

  return v3;
}

uint64_t nsheim_decode_OriginatorIdentifierOrKey(void *a1, uint64_t a2)
{
  v2 = a1;
  [v2 bytes];
  [v2 length];
  v3 = _asn1_decode_top();
  if (!v3)
  {
    if ([v2 length])
    {
      v3 = 1859794442;
    }

    else
    {
      v3 = 0;
    }
  }

  return v3;
}

uint64_t nsheim_decode_SecCMS_KeyAgreeRecipientInfo(void *a1, uint64_t a2)
{
  v2 = a1;
  [v2 bytes];
  [v2 length];
  v3 = _asn1_decode_top();
  if (!v3)
  {
    if ([v2 length])
    {
      v3 = 1859794442;
    }

    else
    {
      v3 = 0;
    }
  }

  return v3;
}

uint64_t nsheim_decode_KeyAgreeRecipientInfo(void *a1, uint64_t a2)
{
  v2 = a1;
  [v2 bytes];
  [v2 length];
  v3 = _asn1_decode_top();
  if (!v3)
  {
    if ([v2 length])
    {
      v3 = 1859794442;
    }

    else
    {
      v3 = 0;
    }
  }

  return v3;
}

uint64_t nsheim_decode_SecCMS_RecipientInfo(void *a1, uint64_t a2)
{
  v2 = a1;
  [v2 bytes];
  [v2 length];
  v3 = _asn1_decode_top();
  if (!v3)
  {
    if ([v2 length])
    {
      v3 = 1859794442;
    }

    else
    {
      v3 = 0;
    }
  }

  return v3;
}

uint64_t nsheim_decode_RecipientInfo(void *a1, uint64_t a2)
{
  v2 = a1;
  [v2 bytes];
  [v2 length];
  v3 = _asn1_decode_top();
  if (!v3)
  {
    if ([v2 length])
    {
      v3 = 1859794442;
    }

    else
    {
      v3 = 0;
    }
  }

  return v3;
}

uint64_t nsheim_decode_SecCMS_RecipientInfos(void *a1, uint64_t a2)
{
  v2 = a1;
  [v2 bytes];
  [v2 length];
  v3 = _asn1_decode_top();
  if (!v3)
  {
    if ([v2 length])
    {
      v3 = 1859794442;
    }

    else
    {
      v3 = 0;
    }
  }

  return v3;
}

uint64_t nsheim_decode_RecipientInfos(void *a1, uint64_t a2)
{
  v2 = a1;
  [v2 bytes];
  [v2 length];
  v3 = _asn1_decode_top();
  if (!v3)
  {
    if ([v2 length])
    {
      v3 = 1859794442;
    }

    else
    {
      v3 = 0;
    }
  }

  return v3;
}

uint64_t nsheim_decode_EncryptedContent(void *a1, uint64_t a2)
{
  v2 = a1;
  [v2 bytes];
  [v2 length];
  v3 = _asn1_decode_top();
  if (!v3)
  {
    if ([v2 length])
    {
      v3 = 1859794442;
    }

    else
    {
      v3 = 0;
    }
  }

  return v3;
}

uint64_t nsheim_decode_EncryptedContentInfo(void *a1, uint64_t a2)
{
  v2 = a1;
  [v2 bytes];
  [v2 length];
  v3 = _asn1_decode_top();
  if (!v3)
  {
    if ([v2 length])
    {
      v3 = 1859794442;
    }

    else
    {
      v3 = 0;
    }
  }

  return v3;
}

uint64_t nsheim_decode_UnprotectedAttributes(void *a1, uint64_t a2)
{
  v2 = a1;
  [v2 bytes];
  [v2 length];
  v3 = _asn1_decode_top();
  if (!v3)
  {
    if ([v2 length])
    {
      v3 = 1859794442;
    }

    else
    {
      v3 = 0;
    }
  }

  return v3;
}

uint64_t nsheim_decode_CMSEncryptedData(void *a1, uint64_t a2)
{
  v2 = a1;
  [v2 bytes];
  [v2 length];
  v3 = _asn1_decode_top();
  if (!v3)
  {
    if ([v2 length])
    {
      v3 = 1859794442;
    }

    else
    {
      v3 = 0;
    }
  }

  return v3;
}

uint64_t nsheim_decode_SecCMS_EnvelopedData(void *a1, uint64_t a2)
{
  v2 = a1;
  [v2 bytes];
  [v2 length];
  v3 = _asn1_decode_top();
  if (!v3)
  {
    if ([v2 length])
    {
      v3 = 1859794442;
    }

    else
    {
      v3 = 0;
    }
  }

  return v3;
}

uint64_t nsheim_decode_EnvelopedData(void *a1, uint64_t a2)
{
  v2 = a1;
  [v2 bytes];
  [v2 length];
  v3 = _asn1_decode_top();
  if (!v3)
  {
    if ([v2 length])
    {
      v3 = 1859794442;
    }

    else
    {
      v3 = 0;
    }
  }

  return v3;
}

uint64_t nsheim_decode_MessageAuthenticationCode(void *a1, uint64_t a2)
{
  v2 = a1;
  [v2 bytes];
  [v2 length];
  v3 = _asn1_decode_top();
  if (!v3)
  {
    if ([v2 length])
    {
      v3 = 1859794442;
    }

    else
    {
      v3 = 0;
    }
  }

  return v3;
}

uint64_t nsheim_decode_AuthEnvelopedData(void *a1, uint64_t a2)
{
  v2 = a1;
  [v2 bytes];
  [v2 length];
  v3 = _asn1_decode_top();
  if (!v3)
  {
    if ([v2 length])
    {
      v3 = 1859794442;
    }

    else
    {
      v3 = 0;
    }
  }

  return v3;
}

uint64_t nsheim_decode_AES_CCM_ICVlen(void *a1, uint64_t a2)
{
  v2 = a1;
  [v2 bytes];
  [v2 length];
  v3 = _asn1_decode_top();
  if (!v3)
  {
    if ([v2 length])
    {
      v3 = 1859794442;
    }

    else
    {
      v3 = 0;
    }
  }

  return v3;
}

uint64_t nsheim_decode_CCMParameters(void *a1, uint64_t a2)
{
  v2 = a1;
  [v2 bytes];
  [v2 length];
  v3 = _asn1_decode_top();
  if (!v3)
  {
    if ([v2 length])
    {
      v3 = 1859794442;
    }

    else
    {
      v3 = 0;
    }
  }

  return v3;
}

uint64_t nsheim_decode_AES_GCM_ICVlen(void *a1, uint64_t a2)
{
  v2 = a1;
  [v2 bytes];
  [v2 length];
  v3 = _asn1_decode_top();
  if (!v3)
  {
    if ([v2 length])
    {
      v3 = 1859794442;
    }

    else
    {
      v3 = 0;
    }
  }

  return v3;
}

uint64_t nsheim_decode_GCMParameters(void *a1, uint64_t a2)
{
  v2 = a1;
  [v2 bytes];
  [v2 length];
  v3 = _asn1_decode_top();
  if (!v3)
  {
    if ([v2 length])
    {
      v3 = 1859794442;
    }

    else
    {
      v3 = 0;
    }
  }

  return v3;
}

uint64_t nsheim_decode_CMSRC2CBCParameter(void *a1, uint64_t a2)
{
  v2 = a1;
  [v2 bytes];
  [v2 length];
  v3 = _asn1_decode_top();
  if (!v3)
  {
    if ([v2 length])
    {
      v3 = 1859794442;
    }

    else
    {
      v3 = 0;
    }
  }

  return v3;
}

uint64_t nsheim_decode_CMSCBCParameter(void *a1, uint64_t a2)
{
  v2 = a1;
  [v2 bytes];
  [v2 length];
  v3 = _asn1_decode_top();
  if (!v3)
  {
    if ([v2 length])
    {
      v3 = 1859794442;
    }

    else
    {
      v3 = 0;
    }
  }

  return v3;
}

uint64_t nsheim_decode_CompressionAlgorithmIdentifier(void *a1, uint64_t a2)
{
  v2 = a1;
  [v2 bytes];
  [v2 length];
  v3 = _asn1_decode_top();
  if (!v3)
  {
    if ([v2 length])
    {
      v3 = 1859794442;
    }

    else
    {
      v3 = 0;
    }
  }

  return v3;
}

uint64_t nsheim_decode_CompressedData(void *a1, uint64_t a2)
{
  v2 = a1;
  [v2 bytes];
  [v2 length];
  v3 = _asn1_decode_top();
  if (!v3)
  {
    if ([v2 length])
    {
      v3 = 1859794442;
    }

    else
    {
      v3 = 0;
    }
  }

  return v3;
}

uint64_t nsheim_decode_SecCMS_SMIMEEncryptionKeyPreference(void *a1, uint64_t a2)
{
  v2 = a1;
  [v2 bytes];
  [v2 length];
  v3 = _asn1_decode_top();
  if (!v3)
  {
    if ([v2 length])
    {
      v3 = 1859794442;
    }

    else
    {
      v3 = 0;
    }
  }

  return v3;
}

uint64_t nsheim_decode_SMIMEEncryptionKeyPreference(void *a1, uint64_t a2)
{
  v2 = a1;
  [v2 bytes];
  [v2 length];
  v3 = _asn1_decode_top();
  if (!v3)
  {
    if ([v2 length])
    {
      v3 = 1859794442;
    }

    else
    {
      v3 = 0;
    }
  }

  return v3;
}

uint64_t nsheim_decode_SMIMECapability(void *a1, uint64_t a2)
{
  v2 = a1;
  [v2 bytes];
  [v2 length];
  v3 = _asn1_decode_top();
  if (!v3)
  {
    if ([v2 length])
    {
      v3 = 1859794442;
    }

    else
    {
      v3 = 0;
    }
  }

  return v3;
}

uint64_t nsheim_decode_SMIMECapabilities(void *a1, uint64_t a2)
{
  v2 = a1;
  [v2 bytes];
  [v2 length];
  v3 = _asn1_decode_top();
  if (!v3)
  {
    if ([v2 length])
    {
      v3 = 1859794442;
    }

    else
    {
      v3 = 0;
    }
  }

  return v3;
}

uint64_t nsheim_decode_SignAttrsHash(void *a1, uint64_t a2)
{
  v2 = a1;
  [v2 bytes];
  [v2 length];
  v3 = _asn1_decode_top();
  if (!v3)
  {
    if ([v2 length])
    {
      v3 = 1859794442;
    }

    else
    {
      v3 = 0;
    }
  }

  return v3;
}

uint64_t nsheim_decode_MultipleSignatures(void *a1, uint64_t a2)
{
  v2 = a1;
  [v2 bytes];
  [v2 length];
  v3 = _asn1_decode_top();
  if (!v3)
  {
    if ([v2 length])
    {
      v3 = 1859794442;
    }

    else
    {
      v3 = 0;
    }
  }

  return v3;
}

uint64_t nsheim_decode_MessageImprint(void *a1, uint64_t a2)
{
  v2 = a1;
  [v2 bytes];
  [v2 length];
  v3 = _asn1_decode_top();
  if (!v3)
  {
    if ([v2 length])
    {
      v3 = 1859794442;
    }

    else
    {
      v3 = 0;
    }
  }

  return v3;
}

uint64_t nsheim_decode_TSAPolicyId(void *a1, uint64_t a2)
{
  v2 = a1;
  [v2 bytes];
  [v2 length];
  v3 = _asn1_decode_top();
  if (!v3)
  {
    if ([v2 length])
    {
      v3 = 1859794442;
    }

    else
    {
      v3 = 0;
    }
  }

  return v3;
}

uint64_t nsheim_decode_TimeStampReq(void *a1, uint64_t a2)
{
  v2 = a1;
  [v2 bytes];
  [v2 length];
  v3 = _asn1_decode_top();
  if (!v3)
  {
    if ([v2 length])
    {
      v3 = 1859794442;
    }

    else
    {
      v3 = 0;
    }
  }

  return v3;
}

uint64_t nsheim_decode_PKIStatus(void *a1, uint64_t a2)
{
  v2 = a1;
  [v2 bytes];
  [v2 length];
  v3 = _asn1_decode_top();
  if (!v3)
  {
    if ([v2 length])
    {
      v3 = 1859794442;
    }

    else
    {
      v3 = 0;
    }
  }

  return v3;
}

uint64_t nsheim_decode_PKIFailureInfo(void *a1, uint64_t a2)
{
  v2 = a1;
  [v2 bytes];
  [v2 length];
  v3 = _asn1_decode_top();
  if (!v3)
  {
    if ([v2 length])
    {
      v3 = 1859794442;
    }

    else
    {
      v3 = 0;
    }
  }

  return v3;
}

uint64_t nsheim_decode_PKIFreeText(void *a1, uint64_t a2)
{
  v2 = a1;
  [v2 bytes];
  [v2 length];
  v3 = _asn1_decode_top();
  if (!v3)
  {
    if ([v2 length])
    {
      v3 = 1859794442;
    }

    else
    {
      v3 = 0;
    }
  }

  return v3;
}

uint64_t nsheim_decode_PKIStatusInfo(void *a1, uint64_t a2)
{
  v2 = a1;
  [v2 bytes];
  [v2 length];
  v3 = _asn1_decode_top();
  if (!v3)
  {
    if ([v2 length])
    {
      v3 = 1859794442;
    }

    else
    {
      v3 = 0;
    }
  }

  return v3;
}

uint64_t nsheim_decode_TimeStampToken(void *a1, uint64_t a2)
{
  v2 = a1;
  [v2 bytes];
  [v2 length];
  v3 = _asn1_decode_top();
  if (!v3)
  {
    if ([v2 length])
    {
      v3 = 1859794442;
    }

    else
    {
      v3 = 0;
    }
  }

  return v3;
}

uint64_t nsheim_decode_Accuracy(void *a1, uint64_t a2)
{
  v2 = a1;
  [v2 bytes];
  [v2 length];
  v3 = _asn1_decode_top();
  if (!v3)
  {
    if ([v2 length])
    {
      v3 = 1859794442;
    }

    else
    {
      v3 = 0;
    }
  }

  return v3;
}

uint64_t nsheim_decode_TSTInfo(void *a1, uint64_t a2)
{
  v2 = a1;
  [v2 bytes];
  [v2 length];
  v3 = _asn1_decode_top();
  if (!v3)
  {
    if ([v2 length])
    {
      v3 = 1859794442;
    }

    else
    {
      v3 = 0;
    }
  }

  return v3;
}

uint64_t nsheim_decode_TimeStampResp(void *a1, uint64_t a2)
{
  v2 = a1;
  [v2 bytes];
  [v2 length];
  v3 = _asn1_decode_top();
  if (!v3)
  {
    if ([v2 length])
    {
      v3 = 1859794442;
    }

    else
    {
      v3 = 0;
    }
  }

  return v3;
}

uint64_t nsheim_decode_Version(void *a1, uint64_t a2)
{
  v2 = a1;
  [v2 bytes];
  [v2 length];
  v3 = _asn1_decode_top();
  if (!v3)
  {
    if ([v2 length])
    {
      v3 = 1859794442;
    }

    else
    {
      v3 = 0;
    }
  }

  return v3;
}

uint64_t nsheim_decode_AlgorithmIdentifier(void *a1, uint64_t a2)
{
  v2 = a1;
  [v2 bytes];
  [v2 length];
  v3 = _asn1_decode_top();
  if (!v3)
  {
    if ([v2 length])
    {
      v3 = 1859794442;
    }

    else
    {
      v3 = 0;
    }
  }

  return v3;
}

uint64_t nsheim_decode_AttributeType(void *a1, uint64_t a2)
{
  v2 = a1;
  [v2 bytes];
  [v2 length];
  v3 = _asn1_decode_top();
  if (!v3)
  {
    if ([v2 length])
    {
      v3 = 1859794442;
    }

    else
    {
      v3 = 0;
    }
  }

  return v3;
}

uint64_t nsheim_decode_AttributeValue(void *a1, uint64_t a2)
{
  v2 = a1;
  [v2 bytes];
  [v2 length];
  v3 = _asn1_decode_top();
  if (!v3)
  {
    if ([v2 length])
    {
      v3 = 1859794442;
    }

    else
    {
      v3 = 0;
    }
  }

  return v3;
}

uint64_t nsheim_decode_DirectoryString(void *a1, uint64_t a2)
{
  v2 = a1;
  [v2 bytes];
  [v2 length];
  v3 = _asn1_decode_top();
  if (!v3)
  {
    if ([v2 length])
    {
      v3 = 1859794442;
    }

    else
    {
      v3 = 0;
    }
  }

  return v3;
}

uint64_t nsheim_decode_Attribute(void *a1, uint64_t a2)
{
  v2 = a1;
  [v2 bytes];
  [v2 length];
  v3 = _asn1_decode_top();
  if (!v3)
  {
    if ([v2 length])
    {
      v3 = 1859794442;
    }

    else
    {
      v3 = 0;
    }
  }

  return v3;
}

uint64_t nsheim_decode_AttributeTypeAndValue(void *a1, uint64_t a2)
{
  v2 = a1;
  [v2 bytes];
  [v2 length];
  v3 = _asn1_decode_top();
  if (!v3)
  {
    if ([v2 length])
    {
      v3 = 1859794442;
    }

    else
    {
      v3 = 0;
    }
  }

  return v3;
}

uint64_t nsheim_decode_RelativeDistinguishedName(void *a1, uint64_t a2)
{
  v2 = a1;
  [v2 bytes];
  [v2 length];
  v3 = _asn1_decode_top();
  if (!v3)
  {
    if ([v2 length])
    {
      v3 = 1859794442;
    }

    else
    {
      v3 = 0;
    }
  }

  return v3;
}

uint64_t nsheim_decode_RDNSequence(void *a1, uint64_t a2)
{
  v2 = a1;
  [v2 bytes];
  [v2 length];
  v3 = _asn1_decode_top();
  if (!v3)
  {
    if ([v2 length])
    {
      v3 = 1859794442;
    }

    else
    {
      v3 = 0;
    }
  }

  return v3;
}

uint64_t nsheim_decode_Name(void *a1, uint64_t a2)
{
  v2 = a1;
  [v2 bytes];
  [v2 length];
  v3 = _asn1_decode_top();
  if (!v3)
  {
    if ([v2 length])
    {
      v3 = 1859794442;
    }

    else
    {
      v3 = 0;
    }
  }

  return v3;
}

uint64_t nsheim_decode_CertificateSerialNumber(void *a1, uint64_t a2)
{
  v2 = a1;
  [v2 bytes];
  [v2 length];
  v3 = _asn1_decode_top();
  if (!v3)
  {
    if ([v2 length])
    {
      v3 = 1859794442;
    }

    else
    {
      v3 = 0;
    }
  }

  return v3;
}

uint64_t nsheim_decode_Validity(void *a1, uint64_t a2)
{
  v2 = a1;
  [v2 bytes];
  [v2 length];
  v3 = _asn1_decode_top();
  if (!v3)
  {
    if ([v2 length])
    {
      v3 = 1859794442;
    }

    else
    {
      v3 = 0;
    }
  }

  return v3;
}

uint64_t nsheim_decode_UniqueIdentifier(void *a1, uint64_t a2)
{
  v2 = a1;
  [v2 bytes];
  [v2 length];
  v3 = _asn1_decode_top();
  if (!v3)
  {
    if ([v2 length])
    {
      v3 = 1859794442;
    }

    else
    {
      v3 = 0;
    }
  }

  return v3;
}

uint64_t nsheim_decode_SubjectPublicKeyInfo(void *a1, uint64_t a2)
{
  v2 = a1;
  [v2 bytes];
  [v2 length];
  v3 = _asn1_decode_top();
  if (!v3)
  {
    if ([v2 length])
    {
      v3 = 1859794442;
    }

    else
    {
      v3 = 0;
    }
  }

  return v3;
}

uint64_t nsheim_decode_Extension(void *a1, uint64_t a2)
{
  v2 = a1;
  [v2 bytes];
  [v2 length];
  v3 = _asn1_decode_top();
  if (!v3)
  {
    if ([v2 length])
    {
      v3 = 1859794442;
    }

    else
    {
      v3 = 0;
    }
  }

  return v3;
}

uint64_t nsheim_decode_Extensions(void *a1, uint64_t a2)
{
  v2 = a1;
  [v2 bytes];
  [v2 length];
  v3 = _asn1_decode_top();
  if (!v3)
  {
    if ([v2 length])
    {
      v3 = 1859794442;
    }

    else
    {
      v3 = 0;
    }
  }

  return v3;
}

uint64_t add_Extensions(unsigned int *a1, uint64_t a2)
{
  v3 = malloc_type_realloc(*(a1 + 1), 40 * *a1 + 40, 0xAAB73518uLL);
  if (!v3)
  {
    return 12;
  }

  *(a1 + 1) = v3;
  result = _asn1_copy_top();
  if (!result)
  {
    ++*a1;
  }

  return result;
}

uint64_t remove_Extensions(uint64_t a1, unsigned int a2)
{
  if (*a1 <= a2)
  {
    return 1859794437;
  }

  _asn1_free_top();
  v4 = *a1 - 1;
  *a1 = v4;
  if (v4 > a2)
  {
    memmove((*(a1 + 8) + 40 * a2), (*(a1 + 8) + 40 * (a2 + 1)), 40 * (v4 - a2));
    v4 = *a1;
  }

  v5 = malloc_type_realloc(*(a1 + 8), 40 * v4, 0x47F39A81uLL);
  if (!v5 && *a1)
  {
    return 0;
  }

  result = 0;
  *(a1 + 8) = v5;
  return result;
}

uint64_t nsheim_decode_TBSCertificate(void *a1, uint64_t a2)
{
  v2 = a1;
  [v2 bytes];
  [v2 length];
  v3 = _asn1_decode_top();
  if (!v3)
  {
    if ([v2 length])
    {
      v3 = 1859794442;
    }

    else
    {
      v3 = 0;
    }
  }

  return v3;
}

uint64_t nsheim_decode_Certificate(void *a1, uint64_t a2)
{
  v2 = a1;
  [v2 bytes];
  [v2 length];
  v3 = _asn1_decode_top();
  if (!v3)
  {
    if ([v2 length])
    {
      v3 = 1859794442;
    }

    else
    {
      v3 = 0;
    }
  }

  return v3;
}

uint64_t nsheim_decode_Certificates(void *a1, uint64_t a2)
{
  v2 = a1;
  [v2 bytes];
  [v2 length];
  v3 = _asn1_decode_top();
  if (!v3)
  {
    if ([v2 length])
    {
      v3 = 1859794442;
    }

    else
    {
      v3 = 0;
    }
  }

  return v3;
}

uint64_t nsheim_decode_ValidationParms(void *a1, uint64_t a2)
{
  v2 = a1;
  [v2 bytes];
  [v2 length];
  v3 = _asn1_decode_top();
  if (!v3)
  {
    if ([v2 length])
    {
      v3 = 1859794442;
    }

    else
    {
      v3 = 0;
    }
  }

  return v3;
}

uint64_t nsheim_decode_DomainParameters(void *a1, uint64_t a2)
{
  v2 = a1;
  [v2 bytes];
  [v2 length];
  v3 = _asn1_decode_top();
  if (!v3)
  {
    if ([v2 length])
    {
      v3 = 1859794442;
    }

    else
    {
      v3 = 0;
    }
  }

  return v3;
}

uint64_t nsheim_decode_DHParameter(void *a1, uint64_t a2)
{
  v2 = a1;
  [v2 bytes];
  [v2 length];
  v3 = _asn1_decode_top();
  if (!v3)
  {
    if ([v2 length])
    {
      v3 = 1859794442;
    }

    else
    {
      v3 = 0;
    }
  }

  return v3;
}

uint64_t nsheim_decode_DHPublicKey(void *a1, uint64_t a2)
{
  v2 = a1;
  [v2 bytes];
  [v2 length];
  v3 = _asn1_decode_top();
  if (!v3)
  {
    if ([v2 length])
    {
      v3 = 1859794442;
    }

    else
    {
      v3 = 0;
    }
  }

  return v3;
}

uint64_t nsheim_decode_OtherName(void *a1, uint64_t a2)
{
  v2 = a1;
  [v2 bytes];
  [v2 length];
  v3 = _asn1_decode_top();
  if (!v3)
  {
    if ([v2 length])
    {
      v3 = 1859794442;
    }

    else
    {
      v3 = 0;
    }
  }

  return v3;
}

uint64_t nsheim_decode_GeneralName(void *a1, uint64_t a2)
{
  v2 = a1;
  [v2 bytes];
  [v2 length];
  v3 = _asn1_decode_top();
  if (!v3)
  {
    if ([v2 length])
    {
      v3 = 1859794442;
    }

    else
    {
      v3 = 0;
    }
  }

  return v3;
}

uint64_t nsheim_decode_GeneralNames(void *a1, uint64_t a2)
{
  v2 = a1;
  [v2 bytes];
  [v2 length];
  v3 = _asn1_decode_top();
  if (!v3)
  {
    if ([v2 length])
    {
      v3 = 1859794442;
    }

    else
    {
      v3 = 0;
    }
  }

  return v3;
}

uint64_t add_GeneralNames(unsigned int *a1, uint64_t a2)
{
  v3 = malloc_type_realloc(*(a1 + 1), 40 * *a1 + 40, 0x2FD9CE44uLL);
  if (!v3)
  {
    return 12;
  }

  *(a1 + 1) = v3;
  result = _asn1_copy_top();
  if (!result)
  {
    ++*a1;
  }

  return result;
}

uint64_t remove_GeneralNames(uint64_t a1, unsigned int a2)
{
  if (*a1 <= a2)
  {
    return 1859794437;
  }

  _asn1_free_top();
  v4 = *a1 - 1;
  *a1 = v4;
  if (v4 > a2)
  {
    memmove((*(a1 + 8) + 40 * a2), (*(a1 + 8) + 40 * (a2 + 1)), 40 * (v4 - a2));
    v4 = *a1;
  }

  v5 = malloc_type_realloc(*(a1 + 8), 40 * v4, 0x372F3127uLL);
  if (!v5 && *a1)
  {
    return 0;
  }

  result = 0;
  *(a1 + 8) = v5;
  return result;
}

uint64_t nsheim_decode_KeyUsage(void *a1, uint64_t a2)
{
  v2 = a1;
  [v2 bytes];
  [v2 length];
  v3 = _asn1_decode_top();
  if (!v3)
  {
    if ([v2 length])
    {
      v3 = 1859794442;
    }

    else
    {
      v3 = 0;
    }
  }

  return v3;
}

uint64_t nsheim_decode_KeyIdentifier(void *a1, uint64_t a2)
{
  v2 = a1;
  [v2 bytes];
  [v2 length];
  v3 = _asn1_decode_top();
  if (!v3)
  {
    if ([v2 length])
    {
      v3 = 1859794442;
    }

    else
    {
      v3 = 0;
    }
  }

  return v3;
}

uint64_t nsheim_decode_AuthorityKeyIdentifier(void *a1, uint64_t a2)
{
  v2 = a1;
  [v2 bytes];
  [v2 length];
  v3 = _asn1_decode_top();
  if (!v3)
  {
    if ([v2 length])
    {
      v3 = 1859794442;
    }

    else
    {
      v3 = 0;
    }
  }

  return v3;
}

uint64_t nsheim_decode_SubjectKeyIdentifier(void *a1, uint64_t a2)
{
  v2 = a1;
  [v2 bytes];
  [v2 length];
  v3 = _asn1_decode_top();
  if (!v3)
  {
    if ([v2 length])
    {
      v3 = 1859794442;
    }

    else
    {
      v3 = 0;
    }
  }

  return v3;
}

uint64_t nsheim_decode_BasicConstraints(void *a1, uint64_t a2)
{
  v2 = a1;
  [v2 bytes];
  [v2 length];
  v3 = _asn1_decode_top();
  if (!v3)
  {
    if ([v2 length])
    {
      v3 = 1859794442;
    }

    else
    {
      v3 = 0;
    }
  }

  return v3;
}

uint64_t nsheim_decode_BaseDistance(void *a1, uint64_t a2)
{
  v2 = a1;
  [v2 bytes];
  [v2 length];
  v3 = _asn1_decode_top();
  if (!v3)
  {
    if ([v2 length])
    {
      v3 = 1859794442;
    }

    else
    {
      v3 = 0;
    }
  }

  return v3;
}

uint64_t nsheim_decode_GeneralSubtree(void *a1, uint64_t a2)
{
  v2 = a1;
  [v2 bytes];
  [v2 length];
  v3 = _asn1_decode_top();
  if (!v3)
  {
    if ([v2 length])
    {
      v3 = 1859794442;
    }

    else
    {
      v3 = 0;
    }
  }

  return v3;
}

uint64_t nsheim_decode_GeneralSubtrees(void *a1, uint64_t a2)
{
  v2 = a1;
  [v2 bytes];
  [v2 length];
  v3 = _asn1_decode_top();
  if (!v3)
  {
    if ([v2 length])
    {
      v3 = 1859794442;
    }

    else
    {
      v3 = 0;
    }
  }

  return v3;
}

uint64_t nsheim_decode_NameConstraints(void *a1, uint64_t a2)
{
  v2 = a1;
  [v2 bytes];
  [v2 length];
  v3 = _asn1_decode_top();
  if (!v3)
  {
    if ([v2 length])
    {
      v3 = 1859794442;
    }

    else
    {
      v3 = 0;
    }
  }

  return v3;
}

uint64_t nsheim_decode_ExtKeyUsage(void *a1, uint64_t a2)
{
  v2 = a1;
  [v2 bytes];
  [v2 length];
  v3 = _asn1_decode_top();
  if (!v3)
  {
    if ([v2 length])
    {
      v3 = 1859794442;
    }

    else
    {
      v3 = 0;
    }
  }

  return v3;
}

uint64_t nsheim_decode_DistributionPointReasonFlags(void *a1, uint64_t a2)
{
  v2 = a1;
  [v2 bytes];
  [v2 length];
  v3 = _asn1_decode_top();
  if (!v3)
  {
    if ([v2 length])
    {
      v3 = 1859794442;
    }

    else
    {
      v3 = 0;
    }
  }

  return v3;
}

uint64_t nsheim_decode_DistributionPointName(void *a1, uint64_t a2)
{
  v2 = a1;
  [v2 bytes];
  [v2 length];
  v3 = _asn1_decode_top();
  if (!v3)
  {
    if ([v2 length])
    {
      v3 = 1859794442;
    }

    else
    {
      v3 = 0;
    }
  }

  return v3;
}

uint64_t nsheim_decode_DistributionPoint(void *a1, uint64_t a2)
{
  v2 = a1;
  [v2 bytes];
  [v2 length];
  v3 = _asn1_decode_top();
  if (!v3)
  {
    if ([v2 length])
    {
      v3 = 1859794442;
    }

    else
    {
      v3 = 0;
    }
  }

  return v3;
}

uint64_t nsheim_decode_CRLDistributionPoints(void *a1, uint64_t a2)
{
  v2 = a1;
  [v2 bytes];
  [v2 length];
  v3 = _asn1_decode_top();
  if (!v3)
  {
    if ([v2 length])
    {
      v3 = 1859794442;
    }

    else
    {
      v3 = 0;
    }
  }

  return v3;
}

uint64_t add_CRLDistributionPoints(unsigned int *a1, uint64_t a2)
{
  v3 = malloc_type_realloc(*(a1 + 1), 24 * *a1 + 24, 0x6C1C57E3uLL);
  if (!v3)
  {
    return 12;
  }

  *(a1 + 1) = v3;
  result = _asn1_copy_top();
  if (!result)
  {
    ++*a1;
  }

  return result;
}

uint64_t remove_CRLDistributionPoints(uint64_t a1, unsigned int a2)
{
  if (*a1 <= a2)
  {
    return 1859794437;
  }

  _asn1_free_top();
  v4 = *a1 - 1;
  *a1 = v4;
  if (v4 > a2)
  {
    memmove((*(a1 + 8) + 24 * a2), (*(a1 + 8) + 24 * (a2 + 1)), 24 * (v4 - a2));
    v4 = *a1;
  }

  v5 = malloc_type_realloc(*(a1 + 8), 24 * v4, 0xCD3F0232uLL);
  if (!v5 && *a1)
  {
    return 0;
  }

  result = 0;
  *(a1 + 8) = v5;
  return result;
}

uint64_t nsheim_decode_DSASigValue(void *a1, uint64_t a2)
{
  v2 = a1;
  [v2 bytes];
  [v2 length];
  v3 = _asn1_decode_top();
  if (!v3)
  {
    if ([v2 length])
    {
      v3 = 1859794442;
    }

    else
    {
      v3 = 0;
    }
  }

  return v3;
}

uint64_t nsheim_decode_DSAPublicKey(void *a1, uint64_t a2)
{
  v2 = a1;
  [v2 bytes];
  [v2 length];
  v3 = _asn1_decode_top();
  if (!v3)
  {
    if ([v2 length])
    {
      v3 = 1859794442;
    }

    else
    {
      v3 = 0;
    }
  }

  return v3;
}

uint64_t nsheim_decode_DSAParams(void *a1, uint64_t a2)
{
  v2 = a1;
  [v2 bytes];
  [v2 length];
  v3 = _asn1_decode_top();
  if (!v3)
  {
    if ([v2 length])
    {
      v3 = 1859794442;
    }

    else
    {
      v3 = 0;
    }
  }

  return v3;
}

uint64_t nsheim_decode_ECPoint(void *a1, uint64_t a2)
{
  v2 = a1;
  [v2 bytes];
  [v2 length];
  v3 = _asn1_decode_top();
  if (!v3)
  {
    if ([v2 length])
    {
      v3 = 1859794442;
    }

    else
    {
      v3 = 0;
    }
  }

  return v3;
}

uint64_t nsheim_decode_ECParameters(void *a1, uint64_t a2)
{
  v2 = a1;
  [v2 bytes];
  [v2 length];
  v3 = _asn1_decode_top();
  if (!v3)
  {
    if ([v2 length])
    {
      v3 = 1859794442;
    }

    else
    {
      v3 = 0;
    }
  }

  return v3;
}

uint64_t nsheim_decode_ECDSA_Sig_Value(void *a1, uint64_t a2)
{
  v2 = a1;
  [v2 bytes];
  [v2 length];
  v3 = _asn1_decode_top();
  if (!v3)
  {
    if ([v2 length])
    {
      v3 = 1859794442;
    }

    else
    {
      v3 = 0;
    }
  }

  return v3;
}

uint64_t nsheim_decode_RSAPublicKey(void *a1, uint64_t a2)
{
  v2 = a1;
  [v2 bytes];
  [v2 length];
  v3 = _asn1_decode_top();
  if (!v3)
  {
    if ([v2 length])
    {
      v3 = 1859794442;
    }

    else
    {
      v3 = 0;
    }
  }

  return v3;
}

uint64_t nsheim_decode_RSAPrivateKey(void *a1, uint64_t a2)
{
  v2 = a1;
  [v2 bytes];
  [v2 length];
  v3 = _asn1_decode_top();
  if (!v3)
  {
    if ([v2 length])
    {
      v3 = 1859794442;
    }

    else
    {
      v3 = 0;
    }
  }

  return v3;
}

uint64_t nsheim_decode_DigestInfo(void *a1, uint64_t a2)
{
  v2 = a1;
  [v2 bytes];
  [v2 length];
  v3 = _asn1_decode_top();
  if (!v3)
  {
    if ([v2 length])
    {
      v3 = 1859794442;
    }

    else
    {
      v3 = 0;
    }
  }

  return v3;
}

uint64_t nsheim_decode_TBSCRLCertList(void *a1, uint64_t a2)
{
  v2 = a1;
  [v2 bytes];
  [v2 length];
  v3 = _asn1_decode_top();
  if (!v3)
  {
    if ([v2 length])
    {
      v3 = 1859794442;
    }

    else
    {
      v3 = 0;
    }
  }

  return v3;
}

uint64_t nsheim_decode_CRLCertificateList(void *a1, uint64_t a2)
{
  v2 = a1;
  [v2 bytes];
  [v2 length];
  v3 = _asn1_decode_top();
  if (!v3)
  {
    if ([v2 length])
    {
      v3 = 1859794442;
    }

    else
    {
      v3 = 0;
    }
  }

  return v3;
}

uint64_t nsheim_decode_CRLReason(void *a1, uint64_t a2)
{
  v2 = a1;
  [v2 bytes];
  [v2 length];
  v3 = _asn1_decode_top();
  if (!v3)
  {
    if ([v2 length])
    {
      v3 = 1859794442;
    }

    else
    {
      v3 = 0;
    }
  }

  return v3;
}

uint64_t nsheim_decode_PKIXXmppAddr(void *a1, uint64_t a2)
{
  v2 = a1;
  [v2 bytes];
  [v2 length];
  v3 = _asn1_decode_top();
  if (!v3)
  {
    if ([v2 length])
    {
      v3 = 1859794442;
    }

    else
    {
      v3 = 0;
    }
  }

  return v3;
}

uint64_t nsheim_decode_AccessDescription(void *a1, uint64_t a2)
{
  v2 = a1;
  [v2 bytes];
  [v2 length];
  v3 = _asn1_decode_top();
  if (!v3)
  {
    if ([v2 length])
    {
      v3 = 1859794442;
    }

    else
    {
      v3 = 0;
    }
  }

  return v3;
}

uint64_t nsheim_decode_AuthorityInfoAccessSyntax(void *a1, uint64_t a2)
{
  v2 = a1;
  [v2 bytes];
  [v2 length];
  v3 = _asn1_decode_top();
  if (!v3)
  {
    if ([v2 length])
    {
      v3 = 1859794442;
    }

    else
    {
      v3 = 0;
    }
  }

  return v3;
}

uint64_t nsheim_decode_ProxyPolicy(void *a1, uint64_t a2)
{
  v2 = a1;
  [v2 bytes];
  [v2 length];
  v3 = _asn1_decode_top();
  if (!v3)
  {
    if ([v2 length])
    {
      v3 = 1859794442;
    }

    else
    {
      v3 = 0;
    }
  }

  return v3;
}

uint64_t nsheim_decode_ProxyCertInfo(void *a1, uint64_t a2)
{
  v2 = a1;
  [v2 bytes];
  [v2 length];
  v3 = _asn1_decode_top();
  if (!v3)
  {
    if ([v2 length])
    {
      v3 = 1859794442;
    }

    else
    {
      v3 = 0;
    }
  }

  return v3;
}

uint64_t sub_258CA80DC()
{
  v0 = sub_258CBEAB0();
  __swift_allocate_value_buffer(v0, qword_27F97DBE8);
  __swift_project_value_buffer(v0, qword_27F97DBE8);
  return sub_258CBEAA0();
}

uint64_t sub_258CA815C(unsigned int a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  v20[1] = *MEMORY[0x277D85DE8];
  v10 = sub_258CBEA60();
  v11 = sub_258CBEA60();
  v12 = sub_258CBEA60();
  v13 = sub_258CBEA60();
  v20[0] = 0;
  v14 = MSDecryptGCMOneShot(a1, v10, v11, v12, v13, v20);

  v15 = v20[0];
  v16 = sub_258CBEA80();
  v18 = v17;

  if (v15)
  {
    swift_willThrow();
    sub_258CA82B8(v16, v18);
  }

  return v16;
}

void sub_258CA82B8(uint64_t a1, unint64_t a2)
{
  if (a2 >> 62 != 1)
  {
    if (a2 >> 62 != 2)
    {
      return;
    }
  }
}

id MSCMSAuthEnvelopedData.type.getter()
{
  v1 = OBJC_IVAR___MSCMSAuthEnvelopedData_type;
  swift_beginAccess();
  v2 = *(v0 + v1);

  return v2;
}

void MSCMSAuthEnvelopedData.type.setter(uint64_t a1)
{
  v3 = OBJC_IVAR___MSCMSAuthEnvelopedData_type;
  swift_beginAccess();
  v4 = *(v1 + v3);
  *(v1 + v3) = a1;
}

uint64_t MSCMSAuthEnvelopedData.dataContent.getter()
{
  v1 = v0 + OBJC_IVAR___MSCMSAuthEnvelopedData_dataContent;
  swift_beginAccess();
  v2 = *v1;
  sub_258CA85CC(*v1, *(v1 + 8));
  return v2;
}

void sub_258CA85CC(uint64_t result, unint64_t a2)
{
  if (a2 >> 60 != 15)
  {
    sub_258CA85E0(result, a2);
  }
}

void sub_258CA85E0(uint64_t a1, unint64_t a2)
{
  if (a2 >> 62 != 1)
  {
    if (a2 >> 62 != 2)
    {
      return;
    }
  }
}

void MSCMSAuthEnvelopedData.dataContent.setter(uint64_t a1, uint64_t a2)
{
  v5 = (v2 + OBJC_IVAR___MSCMSAuthEnvelopedData_dataContent);
  swift_beginAccess();
  v6 = *v5;
  v7 = v5[1];
  *v5 = a1;
  v5[1] = a2;
  sub_258CA8728(v6, v7);
}

void sub_258CA8728(uint64_t a1, unint64_t a2)
{
  if (a2 >> 60 != 15)
  {
    sub_258CA82B8(a1, a2);
  }
}

id MSCMSAuthEnvelopedData.encryptionAlgorithm.getter()
{
  v1 = OBJC_IVAR___MSCMSAuthEnvelopedData_encryptionAlgorithm;
  swift_beginAccess();
  v2 = *(v0 + v1);

  return v2;
}

void MSCMSAuthEnvelopedData.encryptionAlgorithm.setter(uint64_t a1)
{
  v3 = OBJC_IVAR___MSCMSAuthEnvelopedData_encryptionAlgorithm;
  swift_beginAccess();
  v4 = *(v1 + v3);
  *(v1 + v3) = a1;
}

id sub_258CA8A30(uint64_t a1, uint64_t a2, uint64_t *a3, unint64_t *a4, void *a5)
{
  swift_beginAccess();
  sub_258CB0458(0, a4, a5);

  v7 = sub_258CBEB20();

  return v7;
}

uint64_t sub_258CA8AF0(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t *a4, void *a5, uint64_t *a6)
{
  sub_258CB0458(0, a4, a5);
  v8 = sub_258CBEB30();
  v9 = *a6;
  swift_beginAccess();
  *(a1 + v9) = v8;
}

uint64_t sub_258CA8DDC(uint64_t a1, uint64_t *a2)
{
  v4 = *a2;
  swift_beginAccess();
  *(v2 + v4) = a1;
}

id MSCMSAuthEnvelopedData.contentType.getter()
{
  v1 = OBJC_IVAR___MSCMSAuthEnvelopedData_contentType;
  swift_beginAccess();
  v2 = *(v0 + v1);

  return v2;
}

void MSCMSAuthEnvelopedData.contentType.setter(uint64_t a1)
{
  v3 = OBJC_IVAR___MSCMSAuthEnvelopedData_contentType;
  swift_beginAccess();
  v4 = *(v1 + v3);
  *(v1 + v3) = a1;
}

uint64_t MSCMSAuthEnvelopedData.embeddedContent.setter(uint64_t a1)
{
  v3 = OBJC_IVAR___MSCMSAuthEnvelopedData_embeddedContent;
  swift_beginAccess();
  *(v1 + v3) = a1;
  return swift_unknownObjectRelease();
}

id MSCMSAuthEnvelopedData.__allocating_init(encryptionAlgorithm:)(void *a1)
{
  v3 = objc_allocWithZone(v1);
  v4 = sub_258CAF340(a1);

  return v4;
}

id MSCMSAuthEnvelopedData.init(encryptionAlgorithm:)(void *a1)
{
  v2 = sub_258CAF340(a1);

  return v2;
}

id MSCMSAuthEnvelopedData.__allocating_init(dataContent:recipient:)(uint64_t a1, unint64_t a2, void *a3)
{
  v7 = objc_allocWithZone(v3);
  v8 = sub_258CAF4E4(a1, a2, a3);

  sub_258CA82B8(a1, a2);
  return v8;
}

id MSCMSAuthEnvelopedData.init(dataContent:recipient:)(uint64_t a1, unint64_t a2, void *a3)
{
  v6 = sub_258CAF4E4(a1, a2, a3);

  sub_258CA82B8(a1, a2);
  return v6;
}

id MSCMSAuthEnvelopedData.__allocating_init(dataContent:recipient:encryptionAlgorithm:)(uint64_t a1, unint64_t a2, void *a3, void *a4)
{
  v9 = objc_allocWithZone(v4);
  v10 = sub_258CAF7BC(a1, a2, a3, a4);

  sub_258CA82B8(a1, a2);
  return v10;
}

id MSCMSAuthEnvelopedData.init(dataContent:recipient:encryptionAlgorithm:)(uint64_t a1, unint64_t a2, void *a3, void *a4)
{
  v8 = sub_258CAF7BC(a1, a2, a3, a4);

  sub_258CA82B8(a1, a2);
  return v8;
}

id MSCMSAuthEnvelopedData.__allocating_init(embeddedContent:recipient:)(uint64_t a1, void *a2)
{
  v5 = objc_allocWithZone(v2);
  v6 = @"2.16.840.1.101.3.4.1.46";
  v7 = sub_258CBEAE0();
  v9 = v8;
  v10 = objc_allocWithZone(MSOID);
  v11 = sub_258CAEABC(v7, v9);
  v12 = [v5 initWithEmbeddedContent:a1 recipient:a2 encryptionAlgorithm:v11];
  swift_unknownObjectRelease();

  return v12;
}

id MSCMSAuthEnvelopedData.init(embeddedContent:recipient:)(uint64_t a1, void *a2)
{
  v3 = v2;
  v6 = @"2.16.840.1.101.3.4.1.46";
  v7 = sub_258CBEAE0();
  v9 = v8;
  v10 = objc_allocWithZone(MSOID);
  v11 = sub_258CAEABC(v7, v9);
  v12 = [v3 initWithEmbeddedContent:a1 recipient:a2 encryptionAlgorithm:v11];
  swift_unknownObjectRelease();

  return v12;
}

id MSCMSAuthEnvelopedData.__allocating_init(embeddedContent:recipient:encryptionAlgorithm:)(uint64_t a1, void *a2, void *a3)
{
  v7 = objc_allocWithZone(v3);
  v8 = sub_258CAFA50(a1, a2, a3);
  swift_unknownObjectRelease();

  return v8;
}

id MSCMSAuthEnvelopedData.init(embeddedContent:recipient:encryptionAlgorithm:)(uint64_t a1, void *a2, void *a3)
{
  v5 = sub_258CAFA50(a1, a2, a3);
  swift_unknownObjectRelease();

  return v5;
}

Swift::OpaquePointer_optional __swiftcall MSCMSAuthEnvelopedData.getAttributes(OID:)(MSOID *OID)
{
  v8 = MEMORY[0x277D84F90];
  swift_beginAccess();
  v2 = OID;

  sub_258CAFC54(v3, v2, &v8);

  swift_beginAccess();
  v4 = v2;

  sub_258CAFC54(v5, v4, &v8);

  v7 = v8;
  result.value._rawValue = v7;
  result.is_nil = v6;
  return result;
}

uint64_t sub_258CA9B1C(void *a1, uint64_t *a2)
{
  v3 = v2;
  v5 = *a2;
  swift_beginAccess();
  v6 = a1;
  MEMORY[0x259C97D40]();
  if (*((*(v3 + v5) & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((*(v3 + v5) & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
  {
    sub_258CBEB40();
  }

  sub_258CBEB60();
  return swift_endAccess();
}

void sub_258CA9BDC(char *a1, uint64_t a2, void *a3, uint64_t *a4)
{
  v6 = *a4;
  swift_beginAccess();
  v7 = a3;
  v8 = a1;
  MEMORY[0x259C97D40]();
  if (*((*&a1[v6] & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((*&a1[v6] & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
  {
    sub_258CBEB40();
  }

  sub_258CBEB60();
  swift_endAccess();
}

Swift::Void __swiftcall MSCMSAuthEnvelopedData.setContentType(type:)(MSOID *type)
{
  v3 = OBJC_IVAR___MSCMSAuthEnvelopedData_contentType;
  swift_beginAccess();
  v4 = *(v1 + v3);
  *(v1 + v3) = type;
  v5 = type;
}

void MSCMSAuthEnvelopedData.encodeSecurityObject()()
{
  v2 = v1;
  v248 = *MEMORY[0x277D85DE8];
  v246 = 0u;
  v247 = 0u;
  v244 = 0u;
  v245 = 0u;
  v242 = 0u;
  v243 = 0u;
  v241 = 0u;
  v3 = 0x2798BD000uLL;
  v227 = [objc_allocWithZone(MSAlgorithmIdentifier) init];
  v240 = 0;
  memset(v239, 0, sizeof(v239));
  v238[0] = 0;
  v238[1] = 0;
  v4 = OBJC_IVAR___MSCMSAuthEnvelopedData_recipients;
  swift_beginAccess();
  v5 = *(v0 + v4);
  if (v5 >> 62)
  {
    goto LABEL_168;
  }

  if (*((v5 & 0xFFFFFFFFFFFFFF8) + 0x10) < 1)
  {
LABEL_169:
    if (qword_27F97DBE0 != -1)
    {
      swift_once();
    }

    v167 = sub_258CBEAB0();
    __swift_project_value_buffer(v167, qword_27F97DBE8);
    v168 = sub_258CBEA90();
    v169 = sub_258CBEB70();
    if (os_log_type_enabled(v168, v169))
    {
      v170 = swift_slowAlloc();
      *v170 = 0;
      _os_log_impl(&dword_258C80000, v168, v169, "No recipient found", v170, 2u);
      MEMORY[0x259C98B10](v170, -1, -1);
    }

    sub_258CAFE28();
    swift_allocError();
    *v171 = xmmword_258CC1CD0;
    *(v171 + 16) = 48;
    swift_willThrow();
    goto LABEL_174;
  }

  while (1)
  {
    v221 = v4;
    v237[0] = 0;
    v235 = 0uLL;
    *&v236 = 0;
    v6 = OBJC_IVAR___MSCMSAuthEnvelopedData_contentType;
    swift_beginAccess();
    v222 = v6;
    *&v234 = [*(v0 + v6) Asn1OID];
    *(&v234 + 1) = v7;
    v223 = swift_slowAlloc();
    *(&v236 + 1) = v223;
    v8 = OBJC_IVAR___MSCMSAuthEnvelopedData_encryptionAlgorithm;
    swift_beginAccess();
    v9 = [objc_allocWithZone(*(v3 + 3144)) initWithOID_];
    v10 = [v9 keySize_];

    v232 = sub_258CAFE7C(v10);
    v233 = v11;
    v12 = v2;
    sub_258CAEB88(&v232, 0);
    v14 = v232;
    v13 = v233;
    v15 = [objc_allocWithZone(*(v3 + 3144)) initWithOID_];
    v16 = [v15 blockSize_];

    v17 = swift_slowAlloc();
    *&v239[0] = v16;
    *(&v239[0] + 1) = v17;
    v18 = swift_allocObject();
    v19 = SecRandomCopyBytes(*MEMORY[0x277CDC540], v16, v17);
    *(v18 + 4) = v19;
    if (v19)
    {
      v20 = v19;
      if (qword_27F97DBE0 != -1)
      {
        swift_once();
      }

      v21 = sub_258CBEAB0();
      __swift_project_value_buffer(v21, qword_27F97DBE8);
      v22 = sub_258CBEA90();
      v23 = sub_258CBEB70();
      v16 = v13;
      if (os_log_type_enabled(v22, v23))
      {
        v24 = swift_slowAlloc();
        *v24 = 67109120;
        *(v24 + 4) = v20;
        _os_log_impl(&dword_258C80000, v22, v23, "Unable to generate nonce underlying crypto error %d", v24, 8u);
        MEMORY[0x259C98B10](v24, -1, -1);
      }

      v0 = v20;
      sub_258CAFE28();
      v13 = swift_allocError();
      *v25 = v20;
      *(v25 + 8) = 0;
      *(v25 + 16) = 0;
      swift_willThrow();

      v26 = *(&v239[0] + 1);
      if (*(&v239[0] + 1))
      {
        MEMORY[0x259C98B10](*(&v239[0] + 1), -1, -1);
        v27 = v14;
LABEL_17:
        v35 = v16;
        goto LABEL_18;
      }

      __break(1u);
LABEL_250:
      __break(1u);
      goto LABEL_251;
    }

    v28 = v222;
    v219 = v12;
    v220 = v14;
    v29 = length_GCMParameters(v239);
    v14 = swift_slowAlloc();
    v226 = 0;
    v30 = encode_GCMParameters(v14 + v29 - 1, v29, v239, &v226);
    *(v18 + 4) = v30;
    if (v30)
    {
      v16 = v13;
      if (qword_27F97DBE0 != -1)
      {
        swift_once();
      }

      v31 = sub_258CBEAB0();
      __swift_project_value_buffer(v31, qword_27F97DBE8);
      v0 = sub_258CBEA90();
      v32 = sub_258CBEB70();
      if (os_log_type_enabled(v0, v32))
      {
        v33 = swift_slowAlloc();
        *v33 = 0;
        _os_log_impl(&dword_258C80000, v0, v32, "Invalid data - Error encoding GCM parameters", v33, 2u);
        MEMORY[0x259C98B10](v33, -1, -1);
      }

      sub_258CAFE28();
      v13 = swift_allocError();
      *v34 = xmmword_258CC1CE0;
      *(v34 + 16) = 48;
      swift_willThrow();
      MEMORY[0x259C98B10](v14, -1, -1);

      v26 = *(&v239[0] + 1);
      if (*(&v239[0] + 1))
      {
        MEMORY[0x259C98B10](*(&v239[0] + 1), -1, -1);
        v27 = v220;
        goto LABEL_17;
      }

      goto LABEL_250;
    }

    v36 = sub_258CAFFD4(v14, v226);
    v217 = v37;
    v218 = v36;
    v38 = v0;
    if (![*(v0 + v28) isEqualToString_])
    {
      break;
    }

    v39 = v0 + OBJC_IVAR___MSCMSAuthEnvelopedData_dataContent;
    swift_beginAccess();
    v40 = *(v39 + 8);
    v222 = v13;
    if (v40 >> 60 == 15)
    {
      sub_258CAFE28();
      v13 = swift_allocError();
      *v41 = 0;
      *(v41 + 8) = 0;
      *(v41 + 16) = 48;
      swift_willThrow();
      sub_258CA82B8(v218, v217);
      MEMORY[0x259C98B10](v14, -1, -1);

      v26 = *(&v239[0] + 1);
      if (*(&v239[0] + 1))
      {
        goto LABEL_40;
      }

      __break(1u);
      break;
    }

    v216 = *v39;
    sub_258CA85E0(v216, v40);
LABEL_27:
    v47 = v40 >> 62;
    v223 = v40;
    if ((v40 >> 62) > 1)
    {
      if (v47 == 2)
      {
        v49 = *(v216 + 16);
        v44 = *(v216 + 24);
        v48 = v44 - v49;
        if (__OFSUB__(v44, v49))
        {
          __break(1u);
LABEL_34:
          v16 = v44;
          v50 = v220;
          if (qword_27F97DBE0 == -1)
          {
LABEL_35:
            v51 = sub_258CBEAB0();
            __swift_project_value_buffer(v51, qword_27F97DBE8);
            v0 = sub_258CBEA90();
            v52 = sub_258CBEB70();
            if (os_log_type_enabled(v0, v52))
            {
              v53 = v50;
              v54 = swift_slowAlloc();
              *v54 = 0;
              _os_log_impl(&dword_258C80000, v0, v52, "Invalid input data/embedded data", v54, 2u);
              v55 = v54;
              v50 = v53;
              MEMORY[0x259C98B10](v55, -1, -1);
            }

            sub_258CAFE28();
            v13 = swift_allocError();
            *v56 = 0;
            *(v56 + 8) = 0;
            *(v56 + 16) = 48;
            swift_willThrow();
            sub_258CA82B8(v218, v217);
            MEMORY[0x259C98B10](v14, -1, -1);

            v26 = *(&v239[0] + 1);
            if (*(&v239[0] + 1))
            {
              MEMORY[0x259C98B10](*(&v239[0] + 1), -1, -1);
              v27 = v50;
              goto LABEL_17;
            }

            goto LABEL_254;
          }

LABEL_177:
          swift_once();
          goto LABEL_35;
        }
      }

      else
      {
        v48 = 0;
      }
    }

    else if (v47)
    {
      if (__OFSUB__(HIDWORD(v216), v216))
      {
        goto LABEL_180;
      }

      v48 = HIDWORD(v216) - v216;
    }

    else
    {
      v48 = BYTE6(v40);
    }

    v225 = swift_slowAlloc();
    *(&v246 + 1) = 16;
    *&v247 = swift_slowAlloc();
    v57 = v222 >> 62;
    v215 = v14;
    if ((v222 >> 62) > 1)
    {
      if (v57 == 2)
      {
        v212 = v48;
        v71 = v222 & 0x3FFFFFFFFFFFFFFFLL;
        v214 = v0;
        v72 = v0;
        *&v230 = v220;
        *(&v230 + 1) = v71;
        v74 = v217;
        v73 = v218;
        sub_258CA85E0(v218, v217);
        v75 = v72;
        sub_258CA85E0(v73, v74);

        v13 = v75;
        sub_258CA85E0(v73, v74);

        sub_258CBEA30();
        v0 = *(&v230 + 1);
        v220 = v230;
        v14 = v18;
        v76 = *(v230 + 16);
        v18 = *(v230 + 24);
        v222 = v13;
        sub_258CA85E0(v73, v74);
        v213 = v14;

        v26 = sub_258CBE980();
        if (!v26)
        {
          goto LABEL_256;
        }

        v39 = v26;
        v13 = v0;
        v77 = sub_258CBE9B0();
        v14 = (v76 - v77);
        if (__OFSUB__(v76, v77))
        {
          goto LABEL_181;
        }

        v78 = __OFSUB__(v18, v76);
        v18 = (v18 - v76);
        v70 = v218;
        if (v78)
        {
          goto LABEL_183;
        }

        v211 = v0;
        sub_258CBE9A0();
        v210 = v199;
        MEMORY[0x28223BE20]();
        v79 = v222;
        v185 = &v227;
        v186 = v222;
        v67 = v216;
        v80 = v217;
        v187 = v70;
        v188 = v217;
        v189 = v237;
        v190 = &v234;
        v18 = v213;
        v191 = v213;
        v192 = v81;
        v193 = v82;
        v194 = v239;
        v195 = v16;
        v196 = &v225;
        v197 = &v241;
        v198 = v212;
        v83 = v223;
        sub_258CA85CC(v216, v223);
        v84 = v219;
        sub_258CAC73C(v67, v83, sub_258CB0084, v184);
        v219 = v84;
        if (v84)
        {
          sub_258CA8728(v67, v83);

          v85 = v80;
          sub_258CA82B8(v70, v80);

          sub_258CA82B8(v70, v80);

          sub_258CA82B8(v70, v80);

          sub_258CA82B8(v70, v80);
          v13 = (v211 | 0x8000000000000000);
          v0 = v214;
          v16 = v220;
          v14 = v85;
          goto LABEL_71;
        }

        sub_258CA8728(v67, v83);

        v99 = v80;
        sub_258CA82B8(v70, v80);

        sub_258CA82B8(v70, v80);

        sub_258CA82B8(v70, v80);

        sub_258CA82B8(v70, v80);
        v16 = v211 | 0x8000000000000000;
        v0 = v214;
        v18 = v220;
        v14 = v99;
      }

      else
      {
        v212 = v199;
        *(&v230 + 7) = 0;
        *&v230 = 0;
        MEMORY[0x28223BE20]();
        v222 = v184;
        v185 = &v227;
        v186 = v0;
        v14 = v217;
        v92 = v218;
        v187 = v218;
        v188 = v217;
        v189 = v237;
        v190 = &v234;
        v191 = v18;
        v192 = &v230;
        v193 = &v230;
        v194 = v239;
        v195 = v16;
        v196 = &v225;
        v197 = &v241;
        v198 = v48;
        v93 = v0;
        sub_258CA85E0(v92, v14);
        v94 = v93;
        sub_258CA85E0(v92, v14);

        v95 = v94;
        sub_258CA85E0(v92, v14);

        v67 = v216;
        v96 = v223;
        sub_258CA85CC(v216, v223);
        v97 = v219;
        sub_258CAC73C(v67, v96, sub_258CB04A0, v222);
        v219 = v97;
        if (v97)
        {
          sub_258CA8728(v67, v96);

          sub_258CA82B8(v92, v14);

          sub_258CA82B8(v92, v14);

          sub_258CA82B8(v92, v14);
          goto LABEL_70;
        }

        sub_258CA8728(v67, v96);

        sub_258CA82B8(v92, v14);

        sub_258CA82B8(v92, v14);
        v213 = v18;

        sub_258CA82B8(v92, v14);
        v18 = v220;
        v16 = v13;
      }
    }

    else
    {
      v212 = v48;
      v213 = v18;
      if (v57)
      {
        v13 = (v222 & 0x3FFFFFFFFFFFFFFFLL);
        v86 = v0;
        v14 = v217;
        v87 = v218;
        sub_258CA85E0(v218, v217);
        v88 = v86;
        sub_258CA85E0(v87, v14);

        v0 = v88;
        sub_258CA85E0(v87, v14);

        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        v90 = v38;
        v39 = v220;
        v50 = v220 >> 32;
        v67 = v216;
        v214 = v90;
        if ((isUniquelyReferenced_nonNull_native & 1) == 0)
        {
          v222 = v0;
          v211 = v50 - v220;
          if (v50 < v220)
          {
            goto LABEL_193;
          }

          v91 = sub_258CBE980();
          if (v91)
          {
            v14 = v91;
            v0 = v13;
            if (__OFSUB__(v39, sub_258CBE9B0()))
            {
              __break(1u);
LABEL_198:
              v148 = sub_258CBEBE0();
              if ((v148 & 0x8000000000000000) != 0)
              {
                __break(1u);
LABEL_200:
                __break(1u);
LABEL_201:
                v26 = sub_258CBEBE0();
                if ((v26 & 0x8000000000000000) != 0)
                {
                  __break(1u);
                }

                goto LABEL_275;
              }

LABEL_144:
              if (HIDWORD(v148))
              {
                goto LABEL_200;
              }

              LODWORD(v242) = v148;
              *(&v242 + 1) = v207;
              v149 = swift_slowAlloc();
              v150 = OBJC_IVAR___MSCMSAuthEnvelopedData_unprotectedAttributes;
              swift_beginAccess();
              v151 = *(v0 + v150);
              v211 = v150;
              v212 = v149;
              if (!(v151 >> 62))
              {
                v26 = *((v151 & 0xFFFFFFFFFFFFFF8) + 0x10);
                if (HIDWORD(v26))
                {
                  goto LABEL_276;
                }

                goto LABEL_147;
              }

              goto LABEL_201;
            }
          }

          sub_258CBE9C0();
          swift_allocObject();
          v100 = sub_258CBE960();

          v13 = v100;
          v14 = v217;
          v0 = v222;
        }

        v18 = (v50 - v39);
        if (v50 < v39)
        {
          goto LABEL_182;
        }

        v101 = v0;
        sub_258CA85E0(v218, v14);

        v0 = v13;
        v26 = sub_258CBE980();
        if (!v26)
        {
          goto LABEL_257;
        }

        v14 = v26;
        v0 = v13;
        v102 = sub_258CBE9B0();
        v78 = __OFSUB__(v39, v102);
        v39 -= v102;
        if (v78)
        {
          goto LABEL_184;
        }

        sub_258CBE9A0();
        v222 = v199;
        MEMORY[0x28223BE20]();
        v185 = &v227;
        v186 = v101;
        v14 = v217;
        v92 = v218;
        v187 = v218;
        v188 = v217;
        v189 = v237;
        v190 = &v234;
        v18 = v213;
        v191 = v213;
        v192 = v103;
        v193 = v104;
        v194 = v239;
        v195 = v16;
        v196 = &v225;
        v197 = &v241;
        v198 = v212;
        v105 = v13;
        v106 = v223;
        sub_258CA85CC(v67, v223);
        v107 = v219;
        sub_258CAC73C(v67, v106, sub_258CB04A0, v184);
        v219 = v107;
        if (v107)
        {
          sub_258CA8728(v67, v106);

          sub_258CA82B8(v92, v14);

          sub_258CA82B8(v92, v14);

          sub_258CA82B8(v92, v14);

          sub_258CA82B8(v92, v14);
          v13 = (v105 | 0x4000000000000000);
          v0 = v214;
LABEL_70:
          v16 = v220;
          v70 = v92;
LABEL_71:

          v26 = v247;
          v0 = v215;
          if (v247)
          {
            MEMORY[0x259C98B10](v247, -1, -1);
            MEMORY[0x259C98B10](v225, -1, -1);
            sub_258CA82B8(v70, v14);
            sub_258CA8728(v67, v223);
            MEMORY[0x259C98B10](v0, -1, -1);

            v26 = *(&v239[0] + 1);
            if (*(&v239[0] + 1))
            {
              MEMORY[0x259C98B10](*(&v239[0] + 1), -1, -1);
              sub_258CA82B8(v16, v13);
              v26 = *(&v236 + 1);
              if (*(&v236 + 1))
              {
                MEMORY[0x259C98B10](*(&v236 + 1), -1, -1);

                goto LABEL_174;
              }

              goto LABEL_253;
            }

LABEL_252:
            __break(1u);
LABEL_253:
            __break(1u);
LABEL_254:
            __break(1u);
            goto LABEL_255;
          }

LABEL_251:
          __break(1u);
          goto LABEL_252;
        }

        sub_258CA8728(v67, v106);

        sub_258CA82B8(v92, v14);

        sub_258CA82B8(v92, v14);

        sub_258CA82B8(v92, v14);

        sub_258CA82B8(v92, v14);
        v16 = v105 | 0x4000000000000000;
        v0 = v214;
        v18 = v220;
      }

      else
      {
        v58 = v220;
        v59 = v222;
        v200 = v220 >> 8;
        v201 = v220 >> 16;
        v60 = v220 >> 24;
        v202 = HIDWORD(v220);
        v203 = v220 >> 40;
        v204 = HIWORD(v220);
        v205 = HIBYTE(v220);
        v206 = v222 >> 8;
        v207 = v222 >> 16;
        v210 = HIDWORD(v222);
        v208 = v222 >> 24;
        v209 = v222 >> 40;
        v61 = HIWORD(v222);
        v211 = v0;
        v14 = v217;
        v62 = v218;
        sub_258CA85E0(v218, v217);
        v199[1] = v199;
        LOBYTE(v230) = v58;
        BYTE1(v230) = v200;
        BYTE2(v230) = v201;
        BYTE3(v230) = v60;
        v18 = v213;
        BYTE4(v230) = v202;
        BYTE5(v230) = v203;
        BYTE6(v230) = v204;
        BYTE7(v230) = v205;
        BYTE8(v230) = v59;
        BYTE9(v230) = v206;
        BYTE10(v230) = v207;
        BYTE11(v230) = v208;
        BYTE12(v230) = v210;
        BYTE13(v230) = v209;
        BYTE14(v230) = v61;
        MEMORY[0x28223BE20]();
        v185 = &v227;
        v186 = v211;
        v187 = v62;
        v188 = v14;
        v189 = v237;
        v190 = &v234;
        v191 = v18;
        v192 = v63;
        v193 = v64;
        v194 = v239;
        v195 = v16;
        v196 = &v225;
        v197 = &v241;
        v198 = v212;
        v65 = v211;
        sub_258CA85E0(v62, v14);

        v66 = v65;
        sub_258CA85E0(v62, v14);

        v67 = v216;
        v68 = v223;
        sub_258CA85CC(v216, v223);
        v69 = v219;
        sub_258CAC73C(v67, v68, sub_258CB04A0, v184);
        v219 = v69;
        if (v69)
        {
          sub_258CA8728(v67, v68);
          v16 = v230;
          v13 = (DWORD2(v230) | ((WORD6(v230) | (BYTE14(v230) << 16)) << 32));

          v70 = v218;
          sub_258CA82B8(v218, v14);

          sub_258CA82B8(v70, v14);

          sub_258CA82B8(v70, v14);
          goto LABEL_71;
        }

        sub_258CA8728(v67, v68);
        v18 = v230;
        v16 = DWORD2(v230) | ((WORD6(v230) | (BYTE14(v230) << 16)) << 32);

        v98 = v218;
        sub_258CA82B8(v218, v14);

        sub_258CA82B8(v98, v14);

        sub_258CA82B8(v98, v14);
      }
    }

    v214 = v0;

    LODWORD(v241) = 0;
    v243 = v234;
    v244 = v235;
    v245 = v236;
    v208 = *(&v236 + 1);
    *(&v241 + 1) = 0;
    v231 = xmmword_258CC1CF0;
    v39 = v221;
    swift_beginAccess();
    v108 = *(v0 + v39);
    if ((v108 & 0xC000000000000001) != 0)
    {
      v109 = MEMORY[0x259C97E00](0);
      v13 = v215;
    }

    else
    {
      v13 = v215;
      if (!*((v108 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        __break(1u);
LABEL_180:
        __break(1u);
LABEL_181:
        __break(1u);
LABEL_182:
        __break(1u);
LABEL_183:
        __break(1u);
LABEL_184:
        __break(1u);
LABEL_185:
        __break(1u);
LABEL_186:
        __break(1u);
        goto LABEL_187;
      }

      v109 = *(v108 + 32);
    }

    swift_endAccess();
    v39 = [v109 originatorIdentity];

    if (!v39)
    {
      goto LABEL_89;
    }

    v0 = v16;
    v110 = v221;
    v16 = v214;
    swift_beginAccess();
    v111 = *&v110[v16];
    if ((v111 & 0xC000000000000001) == 0)
    {
      if (!*((v111 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        __break(1u);
LABEL_189:
        v116 = MEMORY[0x259C97E00](0);
        goto LABEL_92;
      }

      v16 = v0;
      v112 = *(v111 + 32);
      goto LABEL_83;
    }

LABEL_187:
    v112 = MEMORY[0x259C97E00](0);
    v16 = v0;
LABEL_83:
    swift_endAccess();
    v113 = v219;
    v26 = sub_258CB240C(v39);
    v219 = v113;
    if (v113)
    {

      sub_258CA82B8(0, 0xC000000000000000);
      v26 = v247;
      if (!v247)
      {
        goto LABEL_258;
      }

      MEMORY[0x259C98B10](v247, -1, -1);
      MEMORY[0x259C98B10](v225, -1, -1);
      sub_258CA82B8(v218, v14);
      sub_258CA8728(v216, v223);
      MEMORY[0x259C98B10](v13, -1, -1);

      v26 = *(&v239[0] + 1);
      if (!*(&v239[0] + 1))
      {
        goto LABEL_259;
      }

      MEMORY[0x259C98B10](*(&v239[0] + 1), -1, -1);
      sub_258CA82B8(v18, v16);
      v13 = v219;
      v26 = v208;
      if (v208)
      {
        goto LABEL_230;
      }

      __break(1u);
    }

    v114 = v26;
    [v112 setOriginator_];

LABEL_89:
    v14 = v221;
    v39 = v214;
    swift_beginAccess();
    v115 = *(v14 + v39);
    if ((v115 & 0xC000000000000001) != 0)
    {
      goto LABEL_189;
    }

    if (!*((v115 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      __break(1u);
LABEL_191:
      v119 = MEMORY[0x259C97E00](0);
      goto LABEL_96;
    }

    v116 = *(v115 + 32);
LABEL_92:
    v117 = v116;
    swift_endAccess();
    v13 = &unk_2798C2000;
    v50 = [v117 originator];

    if (!v50)
    {
      goto LABEL_117;
    }

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F97D840, &unk_258CC1E60);
    v39 = swift_allocObject();
    *(v39 + 16) = xmmword_258CC1D00;
    v50 = v214;
    swift_beginAccess();
    v118 = *(v14 + v50);
    if ((v118 & 0xC000000000000001) != 0)
    {
      goto LABEL_191;
    }

    if (!*((v118 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      __break(1u);
LABEL_193:
      __break(1u);
      goto LABEL_194;
    }

    v119 = *(v118 + 32);
LABEL_96:
    v120 = v119;
    swift_endAccess();
    v14 = [v120 v13[182]];

    if (!v14)
    {
      goto LABEL_260;
    }

    v121 = objc_opt_self();
    type metadata accessor for SecCertificate();
    *(v39 + 56) = v122;
    *(v39 + 32) = v14;
    v14 = sub_258CBEB20();

    *&v230 = 0;
    v123 = [v121 encodeOriginatorInfoCertificates:v14 error:&v230];

    v124 = v230;
    if (!v123)
    {
      v0 = v124;
      v13 = sub_258CBEA10();

      swift_willThrow();
      sub_258CA82B8(0, 0xC000000000000000);
      v26 = v247;
      if (!v247)
      {
        goto LABEL_263;
      }

      MEMORY[0x259C98B10](v247, -1, -1);
      MEMORY[0x259C98B10](v225, -1, -1);
      sub_258CA82B8(v218, v217);
      sub_258CA8728(v216, v223);
      MEMORY[0x259C98B10](v215, -1, -1);

      v26 = *(&v239[0] + 1);
      if (!*(&v239[0] + 1))
      {
        goto LABEL_264;
      }

      MEMORY[0x259C98B10](*(&v239[0] + 1), -1, -1);
      sub_258CA82B8(v18, v16);
      v26 = v208;
      if (v208)
      {
        goto LABEL_230;
      }

      __break(1u);
LABEL_105:
      v128 = 0;
      v13 = v215;
      v50 = v217;
      v14 = v221;
      if (v127 != 2)
      {
        goto LABEL_112;
      }

      v130 = *(v39 + 16);
      v129 = *(v39 + 24);
      v128 = v129 - v130;
      if (!__OFSUB__(v129, v130))
      {
        goto LABEL_112;
      }

      __break(1u);
      goto LABEL_109;
    }

    v39 = sub_258CBEA80();
    v126 = v125;

    sub_258CA82B8(0, 0xC000000000000000);
    *&v231 = v39;
    *(&v231 + 1) = v126;
    v127 = v126 >> 62;
    if ((v126 >> 62) > 1)
    {
      goto LABEL_105;
    }

    if (!v127)
    {
      v128 = BYTE6(v126);
LABEL_111:
      v13 = v215;
      v50 = v217;
      v14 = v221;
LABEL_112:
      v131 = v219;
      sub_258CAEDF0(&v231, v238, v128, &v241);
      v219 = v131;
      if (v131)
      {
        sub_258CA82B8(v231, *(&v231 + 1));
        v26 = v247;
        if (!v247)
        {
LABEL_261:
          __break(1u);
LABEL_262:
          __break(1u);
LABEL_263:
          __break(1u);
LABEL_264:
          __break(1u);
          goto LABEL_265;
        }

        MEMORY[0x259C98B10](v247, -1, -1);
        MEMORY[0x259C98B10](v225, -1, -1);
        sub_258CA82B8(v218, v50);
        sub_258CA8728(v216, v223);
        MEMORY[0x259C98B10](v13, -1, -1);

        v26 = *(&v239[0] + 1);
        if (!*(&v239[0] + 1))
        {
          goto LABEL_262;
        }

        MEMORY[0x259C98B10](*(&v239[0] + 1), -1, -1);
        sub_258CA82B8(v18, v16);
        v13 = v219;
        v26 = v208;
        if (v208)
        {
          goto LABEL_230;
        }

        __break(1u);
      }

LABEL_117:
      v39 = v214;
      v132 = *(v14 + v214);
      if (!(v132 >> 62))
      {
        v133 = *((v132 & 0xFFFFFFFFFFFFFF8) + 0x10);
        goto LABEL_119;
      }

LABEL_194:
      v133 = sub_258CBEBE0();
LABEL_119:
      if ((v133 * 112) >> 64 == (112 * v133) >> 63)
      {
        v207 = swift_slowAlloc();
        v50 = *(v14 + v39);
        if (!(v50 >> 62))
        {
          v134 = *((v50 & 0xFFFFFFFFFFFFFF8) + 0x10);
LABEL_122:
          v220 = v18;

          v222 = v16;
          if (!v134)
          {
LABEL_142:

            v0 = v214;
            v147 = *&v221[v214];
            if (v147 >> 62)
            {
              goto LABEL_198;
            }

            v148 = *((v147 & 0xFFFFFFFFFFFFFF8) + 0x10);
            goto LABEL_144;
          }

          v135 = 0;
          v210 = (v50 & 0xFFFFFFFFFFFFFF8);
          v211 = v50 & 0xC000000000000001;
          v14 = v207;
          v209 = v134;
          while (1)
          {
            if (v211)
            {
              v136 = MEMORY[0x259C97E00](v135, v50);
            }

            else
            {
              if (v135 >= v210[2])
              {
                goto LABEL_176;
              }

              v136 = *(v50 + 8 * v135 + 32);
            }

            v18 = v136;
            v212 = v135;
            v0 = v135 + 1;
            if (__OFADD__(v135, 1))
            {
              break;
            }

            v137 = sub_258CBEA60();
            v138 = [(SEL *)v18 encryptBulkKey:v137];

            v139 = sub_258CBEA80();
            v39 = v140;

            v141 = v39 >> 62;
            if ((v39 >> 62) > 1)
            {
              if (v141 != 2)
              {
                goto LABEL_156;
              }

              v144 = *(v139 + 16);
              v143 = *(v139 + 24);
              v78 = __OFSUB__(v143, v144);
              v142 = v143 - v144;
              if (v78)
              {
                goto LABEL_185;
              }
            }

            else if (v141)
            {
              LODWORD(v142) = HIDWORD(v139) - v139;
              if (__OFSUB__(HIDWORD(v139), v139))
              {
                goto LABEL_186;
              }

              v142 = v142;
            }

            else
            {
              v142 = BYTE6(v39);
            }

            if (v142 < 1)
            {
LABEL_156:

              sub_258CAFE28();
              v159 = swift_allocError();
              *v160 = xmmword_258CC1D10;
              *(v160 + 16) = 48;
              v219 = v159;
              swift_willThrow();
              sub_258CA82B8(v139, v39);

              if (*&v221[v214] >> 62)
              {
                sub_258CBEBE0();
              }

              MEMORY[0x259C98B10](v207, -1, -1);
              sub_258CA82B8(v231, *(&v231 + 1));
              v26 = v247;
              v14 = v220;
              v161 = v215;
              v16 = v216;
              v162 = v217;
              v13 = v218;
              v163 = v222;
              if (!v247)
              {
                goto LABEL_268;
              }

              MEMORY[0x259C98B10](v247, -1, -1);
              MEMORY[0x259C98B10](v225, -1, -1);
              sub_258CA82B8(v13, v162);
              sub_258CA8728(v16, v223);
              MEMORY[0x259C98B10](v161, -1, -1);

              v26 = *(&v239[0] + 1);
              if (*(&v239[0] + 1))
              {
                MEMORY[0x259C98B10](*(&v239[0] + 1), -1, -1);
                sub_258CA82B8(v14, v163);
                v26 = v208;
                if (!v208)
                {
                  __break(1u);
                  goto LABEL_162;
                }

                goto LABEL_230;
              }

              while (2)
              {
                __break(1u);
LABEL_270:
                __break(1u);
LABEL_271:
                __break(1u);
LABEL_272:
                __break(1u);
LABEL_273:
                __break(1u);
LABEL_274:
                __break(1u);
LABEL_275:
                v150 = v211;
                v149 = v212;
                if (HIDWORD(v26))
                {
LABEL_276:
                  __break(1u);
                  goto LABEL_277;
                }

LABEL_147:
                *v149 = v26;
                if (!v26)
                {
                  goto LABEL_206;
                }

                v152 = v16;
                v14 = swift_slowAlloc();
                v153 = *(v0 + v150);
                v18 = v153;
                if (v153 >> 62)
                {
                  v153 = *(v0 + v150);
                  v16 = sub_258CBEBE0();
                  if (!v16)
                  {
                    goto LABEL_204;
                  }

LABEL_150:
                  if (v16 >= 1)
                  {
                    v0 = v152;
                    v154 = v153 & 0xC000000000000001;

                    v155 = 0;
                    v210 = v14;
                    do
                    {
                      if (v154)
                      {
                        v156 = MEMORY[0x259C97E00](v155, v153);
                      }

                      else
                      {
                        v156 = *(v153 + 8 * v155 + 32);
                      }

                      v157 = v156;
                      ++v155;
                      v158 = [v156 generateAttributeStruct];
                      copy_Attribute(v158, v14);
                      free_Attribute(v158);

                      v14 += 4;
                      v153 = v18;
                    }

                    while (v16 != v155);
LABEL_162:

                    v16 = v0;
                    v0 = v214;
                    v150 = v211;
                    v149 = v212;
                    v14 = v210;
                    goto LABEL_205;
                  }

                  __break(1u);
                  goto LABEL_245;
                }

                v16 = *((v153 & 0xFFFFFFFFFFFFFF8) + 0x10);
                if (v16)
                {
                  goto LABEL_150;
                }

LABEL_204:
                v16 = v152;
LABEL_205:
                *(v149 + 8) = v14;
LABEL_206:
                *(&v247 + 1) = v149;
                v13 = swift_slowAlloc();
                v149 = OBJC_IVAR___MSCMSAuthEnvelopedData_protectedAttributes;
                swift_beginAccess();
                v172 = *(v0 + v149);
                if (!(v172 >> 62))
                {
                  v26 = *((v172 & 0xFFFFFFFFFFFFFF8) + 0x10);
                  if (HIDWORD(v26))
                  {
                    goto LABEL_278;
                  }

                  goto LABEL_208;
                }

                v26 = sub_258CBEBE0();
                if ((v26 & 0x8000000000000000) != 0)
                {
                  __break(1u);
LABEL_242:
                  v173 = v18;
                  v150 = sub_258CBEBE0();
                  if (!v150)
                  {
                    goto LABEL_218;
                  }

LABEL_211:
                  v209 = v13;
                  if (v150 >= 1)
                  {
                    v174 = v173 & 0xC000000000000001;

                    v175 = 0;
                    v206 = v16;
                    v176 = v16;
                    do
                    {
                      if (v174)
                      {
                        v177 = MEMORY[0x259C97E00](v175, v173);
                      }

                      else
                      {
                        v177 = *(v173 + 8 * v175 + 32);
                      }

                      v178 = v177;
                      ++v175;
                      v179 = [v177 generateAttributeStruct];
                      copy_Attribute(v179, v176);
                      free_Attribute(v179);

                      v176 += 32;
                      v173 = v18;
                    }

                    while (v150 != v175);

                    v13 = v209;
                    v16 = v206;
                    goto LABEL_218;
                  }

LABEL_245:
                  __break(1u);
LABEL_246:
                  sub_258CBEBE0();
                }

                else
                {
LABEL_277:
                  v150 = v211;
                  if (HIDWORD(v26))
                  {
LABEL_278:
                    __break(1u);
                    return;
                  }

LABEL_208:
                  *v13 = v26;
                  v210 = v149;
                  if (v26)
                  {
                    v16 = swift_slowAlloc();
                    v173 = *(v0 + v149);
                    v18 = v173;
                    if (v173 >> 62)
                    {
                      goto LABEL_242;
                    }

                    v150 = *((v173 & 0xFFFFFFFFFFFFFF8) + 0x10);
                    if (v150)
                    {
                      goto LABEL_211;
                    }

LABEL_218:
                    v149 = v0;
                    v13[1] = v16;
                    v18 = v222;
                    v150 = v211;
                  }

                  else
                  {
                    v18 = v16;
                    v149 = v0;
                  }

                  v14 = v13;
                  *&v246 = v13;
                  v180 = length_AuthEnvelopedData(&v241);
                  v228 = sub_258CAFE7C(v180);
                  v229 = v181;
                  v224 = 0;
                  MEMORY[0x28223BE20]();
                  *&v184[-32] = v180;
                  *&v184[-24] = &v241;
                  *&v184[-16] = &v224;
                  v182 = v219;
                  sub_258CBEA70();
                  v16 = v182;
                  if (v182)
                  {
                    sub_258CA82B8(v228, v229);
                    if (*(v210 + v149) >> 62)
                    {
                      sub_258CBEBE0();
                    }

                    MEMORY[0x259C98B10](v13, -1, -1);
                    v14 = v220;
                    v0 = v218;
                    v13 = v182;
                    v183 = v215;
                    if (*(v149 + v150) >> 62)
                    {
                      sub_258CBEBE0();
                    }

                    MEMORY[0x259C98B10](v212, -1, -1);
                    if (*&v221[v149] >> 62)
                    {
                      sub_258CBEBE0();
                    }

                    MEMORY[0x259C98B10](v207, -1, -1);
                    sub_258CA82B8(v231, *(&v231 + 1));
                    v26 = v247;
                    if (v247)
                    {
                      MEMORY[0x259C98B10](v247, -1, -1);
                      MEMORY[0x259C98B10](v225, -1, -1);
                      sub_258CA82B8(v0, v217);
                      sub_258CA8728(v216, v223);
                      MEMORY[0x259C98B10](v183, -1, -1);

                      v26 = *(&v239[0] + 1);
                      if (!*(&v239[0] + 1))
                      {
                        goto LABEL_266;
                      }

                      MEMORY[0x259C98B10](*(&v239[0] + 1), -1, -1);
                      sub_258CA82B8(v14, v18);
                      v26 = v208;
                      if (v208)
                      {
LABEL_230:
                        MEMORY[0x259C98B10](v26, -1, -1);

                        goto LABEL_174;
                      }

LABEL_267:
                      __break(1u);
LABEL_268:
                      __break(1u);
                      continue;
                    }

LABEL_265:
                    __break(1u);
LABEL_266:
                    __break(1u);
                    goto LABEL_267;
                  }

                  v0 = v228;
                  if (*(v210 + v149) >> 62)
                  {
                    goto LABEL_246;
                  }
                }

                break;
              }

              MEMORY[0x259C98B10](v14, -1, -1);
              v13 = v16;
              if (*(v149 + v150) >> 62)
              {
                sub_258CBEBE0();
              }

              MEMORY[0x259C98B10](v212, -1, -1);
              if (*&v221[v149] >> 62)
              {
                sub_258CBEBE0();
              }

              MEMORY[0x259C98B10](v207, -1, -1);
              sub_258CA82B8(v231, *(&v231 + 1));
              v26 = v247;
              if (!v247)
              {
                goto LABEL_270;
              }

              MEMORY[0x259C98B10](v247, -1, -1);
              MEMORY[0x259C98B10](v225, -1, -1);
              sub_258CA82B8(v218, v217);
              sub_258CA8728(v216, v223);
              MEMORY[0x259C98B10](v215, -1, -1);

              v26 = *(&v239[0] + 1);
              if (!*(&v239[0] + 1))
              {
                goto LABEL_271;
              }

              MEMORY[0x259C98B10](*(&v239[0] + 1), -1, -1);
              sub_258CA82B8(v220, v18);
              v26 = v208;
              if (v208)
              {
                MEMORY[0x259C98B10](v208, -1, -1);

                return;
              }

              goto LABEL_272;
            }

            v145 = sub_258CBEA60();
            *&v230 = 0;
            v13 = [(SEL *)v18 encodeRecipientInfo:v145 recipientInfo:v14 error:&v230];

            if (!v13)
            {
              v164 = v230;

              v165 = sub_258CBEA10();

              v219 = v165;
              swift_willThrow();
              sub_258CA82B8(v139, v39);

              if (!(*&v221[v214] >> 62))
              {
                goto LABEL_164;
              }

              goto LABEL_248;
            }

            v146 = v230;
            sub_258CA82B8(v139, v39);

            v135 = v212 + 1;
            v14 += 14;
            v16 = v222;
            if (v0 == v209)
            {
              goto LABEL_142;
            }
          }

          __break(1u);
LABEL_176:
          __break(1u);
          goto LABEL_177;
        }
      }

      else
      {
        __break(1u);
      }

      v134 = sub_258CBEBE0();
      goto LABEL_122;
    }

LABEL_109:
    if (!__OFSUB__(HIDWORD(v39), v39))
    {
      v128 = HIDWORD(v39) - v39;
      goto LABEL_111;
    }

    __break(1u);
LABEL_248:
    sub_258CBEBE0();
LABEL_164:
    MEMORY[0x259C98B10](v207, -1, -1);
    sub_258CA82B8(v231, *(&v231 + 1));
    v26 = v247;
    v14 = v220;
    v3 = v215;
    v16 = v216;
    v2 = v217;
    v13 = v218;
    v166 = v222;
    if (!v247)
    {
      goto LABEL_273;
    }

    MEMORY[0x259C98B10](v247, -1, -1);
    MEMORY[0x259C98B10](v225, -1, -1);
    sub_258CA82B8(v13, v2);
    sub_258CA8728(v16, v223);
    MEMORY[0x259C98B10](v3, -1, -1);

    v26 = *(&v239[0] + 1);
    if (!*(&v239[0] + 1))
    {
      goto LABEL_274;
    }

    MEMORY[0x259C98B10](*(&v239[0] + 1), -1, -1);
    sub_258CA82B8(v14, v166);
    v4 = v219;
    v26 = v208;
    if (v208)
    {
      goto LABEL_230;
    }

    __break(1u);
LABEL_168:
    if (sub_258CBEBE0() < 1)
    {
      goto LABEL_169;
    }
  }

  v42 = OBJC_IVAR___MSCMSAuthEnvelopedData_embeddedContent;
  swift_beginAccess();
  v43 = *(v0 + v42);
  v44 = v13;
  if (!v43)
  {
    goto LABEL_34;
  }

  v222 = v13;
  *&v230 = 0;
  v39 = [v43 encodeMessageSecurityObject_];
  v45 = v230;
  if (v39)
  {
    v216 = sub_258CBEA80();
    v40 = v46;

    goto LABEL_27;
  }

  v0 = v45;
  v13 = sub_258CBEA10();

  swift_willThrow();
  sub_258CA82B8(v218, v217);
  MEMORY[0x259C98B10](v14, -1, -1);

  v26 = *(&v239[0] + 1);
  if (!*(&v239[0] + 1))
  {
LABEL_255:
    __break(1u);
LABEL_256:
    __break(1u);
LABEL_257:
    __break(1u);
LABEL_258:
    __break(1u);
LABEL_259:
    __break(1u);
LABEL_260:
    __break(1u);
    goto LABEL_261;
  }

LABEL_40:
  MEMORY[0x259C98B10](v26, -1, -1);
  v27 = v220;
  v35 = v222;
LABEL_18:
  sub_258CA82B8(v27, v35);
  MEMORY[0x259C98B10](v223, -1, -1);
LABEL_174:
}

void *sub_258CAC1C4(uint64_t a1, uint64_t a2, id *a3, uint64_t a4, uint64_t a5, uint64_t a6, void *a7, uint64_t a8, uint64_t a9, void *a10, uint64_t a11, uint64_t a12, uint64_t a13, void *a14, uint64_t a15, uint64_t a16)
{
  v58[6] = *MEMORY[0x277D85DE8];
  v20 = OBJC_IVAR___MSCMSAuthEnvelopedData_encryptionAlgorithm;
  swift_beginAccess();
  v21 = *(a4 + v20);
  v22 = objc_allocWithZone(MSAlgorithmIdentifier);
  v23 = v21;
  v24 = sub_258CBEA60();
  v25 = [v22 initWithOID:v23 parameters:v24];

  v26 = *a3;
  *a3 = v25;
  v27 = v25;

  v58[0] = *a7;
  v28 = [v27 ccAlgorithm_];

  v29 = v58[0];
  v30 = *a7;
  *a7 = v58[0];
  v31 = v29;

  v32 = *a3;
  v58[0] = *a7;
  v33 = [v32 ccMode_];
  v34 = v58[0];
  v35 = *a7;
  *a7 = v58[0];
  v36 = v34;

  if (v28 || v33 != 11)
  {
    if (qword_27F97DBE0 != -1)
    {
      swift_once();
    }

    v44 = sub_258CBEAB0();
    __swift_project_value_buffer(v44, qword_27F97DBE8);
    v45 = sub_258CBEA90();
    v46 = sub_258CBEB70();
    if (os_log_type_enabled(v45, v46))
    {
      v47 = swift_slowAlloc();
      *v47 = 67109120;
      *(v47 + 4) = v28;
      _os_log_impl(&dword_258C80000, v45, v46, "Invalid input algorithm %u", v47, 8u);
      MEMORY[0x259C98B10](v47, -1, -1);
    }

    sub_258CAFE28();
    swift_allocError();
    *v48 = 0;
    *(v48 + 8) = 0;
    *(v48 + 16) = 48;
    return swift_willThrow();
  }

  result = [*a3 asn1AlgId];
  v38 = result[2];
  *(a8 + 16) = *result;
  *(a8 + 32) = v38;
  if (!a10)
  {
    __break(1u);
LABEL_28:
    __break(1u);
    goto LABEL_29;
  }

  v39 = SecRandomCopyBytes(*MEMORY[0x277CDC540], a11 - a10, a10);
  swift_beginAccess();
  *(a9 + 16) = v39;
  if (v39)
  {
    if (qword_27F97DBE0 != -1)
    {
      swift_once();
    }

    v40 = sub_258CBEAB0();
    __swift_project_value_buffer(v40, qword_27F97DBE8);

    v41 = sub_258CBEA90();
    v42 = sub_258CBEB70();
    if (os_log_type_enabled(v41, v42))
    {
      v43 = swift_slowAlloc();
      *v43 = 67109120;
      swift_beginAccess();
      *(v43 + 4) = *(a9 + 16);

      _os_log_impl(&dword_258C80000, v41, v42, "Unable to generate key underlying crypto error %d", v43, 8u);
      MEMORY[0x259C98B10](v43, -1, -1);
    }

    else
    {
    }

    swift_beginAccess();
    v54 = *(a9 + 16);
LABEL_22:
    sub_258CAFE28();
    swift_allocError();
    *v55 = v54;
    *(v55 + 8) = 0;
    *(v55 + 16) = 0;
    return swift_willThrow();
  }

  result = CCCryptorGCMOneshotEncrypt();
  if (result)
  {
    v49 = result;
    if (qword_27F97DBE0 != -1)
    {
      swift_once();
    }

    v50 = sub_258CBEAB0();
    __swift_project_value_buffer(v50, qword_27F97DBE8);
    v51 = sub_258CBEA90();
    v52 = sub_258CBEB70();
    if (os_log_type_enabled(v51, v52))
    {
      v53 = swift_slowAlloc();
      *v53 = 67109120;
      *(v53 + 4) = v49;
      _os_log_impl(&dword_258C80000, v51, v52, "Error encrypting underlying crypto error %d", v53, 8u);
      MEMORY[0x259C98B10](v53, -1, -1);
    }

    v54 = v49;
    goto LABEL_22;
  }

  v56 = *(a8 + 40);
  if (!v56)
  {
    goto LABEL_28;
  }

  *(v56 + 8) = *a14;
  v57 = *(a8 + 40);
  if (v57)
  {
    *v57 = a16;
    return result;
  }

LABEL_29:
  __break(1u);
  return result;
}

uint64_t sub_258CAC73C(uint64_t a1, unint64_t a2, void (*a3)(uint64_t, uint64_t), uint64_t a4)
{
  v9[2] = *MEMORY[0x277D85DE8];
  v5 = a2 >> 62;
  if ((a2 >> 62) <= 1)
  {
    if (!v5)
    {
      v9[0] = a1;
      LOWORD(v9[1]) = a2;
      BYTE2(v9[1]) = BYTE2(a2);
      BYTE3(v9[1]) = BYTE3(a2);
      BYTE4(v9[1]) = BYTE4(a2);
      BYTE5(v9[1]) = BYTE5(a2);
      result = (a3)(v9, v9 + BYTE6(a2));
      if (!v4)
      {
        goto LABEL_12;
      }

      return result;
    }

    v7 = a1;
    v8 = a1 >> 32;
    if (a1 >> 32 < a1)
    {
      __break(1u);
    }

LABEL_8:
    result = sub_258CB02AC(v7, v8, a2 & 0x3FFFFFFFFFFFFFFFLL, a3);
    if (!v4)
    {
      return result & 1;
    }

    return result;
  }

  if (v5 == 2)
  {
    v7 = *(a1 + 16);
    v8 = *(a1 + 24);
    goto LABEL_8;
  }

  memset(v9, 0, 14);
  result = (a3)(v9, v9);
  if (!v4)
  {
LABEL_12:
    LOBYTE(result) = 0;
    return result & 1;
  }

  return result;
}

uint64_t static MSCMSAuthEnvelopedData.decodeMessageSecurityObject(_:options:)(uint64_t a1, void *a2)
{
  v3 = sub_258CBEA80();
  v5 = v4;
  static MSCMSAuthEnvelopedData.decodeSecurityObject(_:options:)(v3, v4, a2);
  v7 = v6;
  sub_258CA82B8(v3, v5);
  return v7;
}

void static MSCMSAuthEnvelopedData.decodeSecurityObject(_:options:)(uint64_t a1, uint64_t a2, void *a3)
{
  v264 = *MEMORY[0x277D85DE8];
  v6 = [objc_allocWithZone(MSCMSRecipientInfo) init];
  v236 = [objc_allocWithZone(MSAlgorithmIdentifier) init];
  v7 = [objc_allocWithZone(MSOID) init];
  v262 = 0u;
  v263 = 0u;
  v260 = 0u;
  v261 = 0u;
  v258 = 0u;
  v259 = 0u;
  v257 = 0u;
  v8 = sub_258CBEA60();
  v9 = nsheim_decode_AuthEnvelopedData(v8, &v257);

  if (v9)
  {
    if (qword_27F97DBE0 != -1)
    {
      goto LABEL_170;
    }

    goto LABEL_3;
  }

  v234 = v4;
  v232 = a3;
  v16 = objc_allocWithZone(v3);
  v17 = v7;
  v18 = sub_258CAF340(v17);

  v19 = MEMORY[0x277D84F90];
  v242 = v18;
  if (*(&v257 + 1))
  {
    v20 = NSDataFromAny(*(&v257 + 1));
    v21 = sub_258CBEA80();
    v23 = v22;

    __dst = 0uLL;
    v24 = sub_258CBEA60();
    v25 = nsheim_decode_OriginatorInfo(v24, &__dst);

    if (v25)
    {
      if (qword_27F97DBE0 != -1)
      {
        swift_once();
      }

      v26 = sub_258CBEAB0();
      __swift_project_value_buffer(v26, qword_27F97DBE8);
      v27 = sub_258CBEA90();
      v28 = sub_258CBEB70();
      if (!os_log_type_enabled(v27, v28))
      {
        goto LABEL_14;
      }

      v19 = swift_slowAlloc();
      *v19 = 0;
      v29 = "Invalid data - error decoding OriginatorInfo";
    }

    else
    {
      if (__dst)
      {
        v32 = *(__dst + 8);
        v33 = *__dst;
        v256[0] = v19;
        if (v32)
        {
          if (v33)
          {
            v34 = 24 * v33;
            v35 = v32 + 8;
            v36 = MEMORY[0x277D84F90];
            do
            {
              if (SecCertificateCreateWithBytes())
              {
                MEMORY[0x259C97D40]();
                if (*((v256[0] & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v256[0] & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
                {
                  sub_258CBEB40();
                  v18 = v242;
                }

                sub_258CBEB60();
                v36 = v256[0];
              }

              v35 += 24;
              v34 -= 24;
            }

            while (v34);
          }

          else
          {
            v36 = MEMORY[0x277D84F90];
          }
        }

        else
        {
          v36 = v19;
        }

        v30 = v4;
        v19 = v36;
        goto LABEL_32;
      }

      if (qword_27F97DBE0 != -1)
      {
        swift_once();
      }

      v37 = sub_258CBEAB0();
      __swift_project_value_buffer(v37, qword_27F97DBE8);
      v27 = sub_258CBEA90();
      v28 = sub_258CBEB70();
      if (!os_log_type_enabled(v27, v28))
      {
LABEL_14:

        sub_258CAFE28();
        v30 = swift_allocError();
        *v31 = xmmword_258CC1D30;
        *(v31 + 16) = 48;
        swift_willThrow();
LABEL_32:
        v234 = v30;
        if (v30)
        {

          sub_258CA82B8(v21, v23);
          return;
        }

        sub_258CA82B8(v21, v23);
        v38 = OBJC_IVAR___MSCMSAuthEnvelopedData_originatorCertificates;
        swift_beginAccess();
        *(v18 + v38) = v19;

        goto LABEL_35;
      }

      v19 = swift_slowAlloc();
      *v19 = 0;
      v29 = "Invalid data - originatorInfo has no certificates";
    }

    _os_log_impl(&dword_258C80000, v27, v28, v29, v19, 2u);
    MEMORY[0x259C98B10](v19, -1, -1);
    goto LABEL_14;
  }

LABEL_35:
  v233 = v17;
  v39 = v258;
  v40 = *(&v258 + 1);
  v41 = OBJC_IVAR___MSCMSAuthEnvelopedData_recipients;
  swift_beginAccess();
  v249 = v41;
  if (v39)
  {
    v7 = 0;
    v42 = v19 & 0xFFFFFFFFFFFFFF8;
    v247 = v19 & 0xFFFFFFFFFFFFFF8;
    if (v19 < 0)
    {
      v42 = v19;
    }

    v231 = v42;
    v235 = (v19 & 0xC000000000000001);
    v237 = v19 >> 62;
    v239 = v40;
    while (1)
    {
      if (!v239)
      {
        __break(1u);
      }

      memmove(&__dst, v40, 0x70uLL);
      v43 = objc_opt_self();

      sub_258CAE654(v44);

      v45 = sub_258CBEB20();

      v252[0] = v7;
      v46 = [v43 decodeRecipientInfo:&__dst certificates:v45 LAContext:0 error:v252];

      v47 = v252[0];
      if (v237)
      {
        v41 = v249;
        if (sub_258CBEBE0() < 1)
        {
          goto LABEL_48;
        }

        if (!sub_258CBEBE0())
        {
          v6 = v46;

          if (qword_27F97DBE0 == -1)
          {
LABEL_175:
            v210 = sub_258CBEAB0();
            __swift_project_value_buffer(v210, qword_27F97DBE8);
            v211 = sub_258CBEA90();
            v212 = sub_258CBEB70();
            if (os_log_type_enabled(v211, v212))
            {
              v213 = swift_slowAlloc();
              *v213 = 0;
              _os_log_impl(&dword_258C80000, v211, v212, "Invalid data - no certificate in originatorCertificates", v213, 2u);
              MEMORY[0x259C98B10](v213, -1, -1);
            }

            sub_258CAFE28();
            swift_allocError();
            *v214 = xmmword_258CC1D30;
            *(v214 + 16) = 48;
            swift_willThrow();

LABEL_81:
            v95 = v233;
LABEL_82:

            return;
          }

LABEL_183:
          swift_once();
          goto LABEL_175;
        }
      }

      else
      {
        v41 = v249;
        if (!*(v247 + 16))
        {
          goto LABEL_48;
        }
      }

      if (v235)
      {
        v48 = MEMORY[0x259C97E00](0, v19);
      }

      else
      {
        if (!*(v247 + 16))
        {
          __break(1u);
LABEL_170:
          swift_once();
LABEL_3:
          v10 = sub_258CBEAB0();
          __swift_project_value_buffer(v10, qword_27F97DBE8);
          v11 = sub_258CBEA90();
          v12 = sub_258CBEB70();
          if (os_log_type_enabled(v11, v12))
          {
            v13 = swift_slowAlloc();
            *v13 = 0;
            _os_log_impl(&dword_258C80000, v11, v12, "Invalid data - error decoding AuthEnvelopedData", v13, 2u);
            MEMORY[0x259C98B10](v13, -1, -1);
          }

          v14 = sub_258CBEA60();
          dumpNSData("AuthEnvelopedData", v14);

          sub_258CAFE28();
          swift_allocError();
          *v15 = xmmword_258CC1D20;
          *(v15 + 16) = 48;
          swift_willThrow();

          return;
        }

        v48 = *(v19 + 32);
      }

      v49 = v48;
      v50 = SecCertificateCopyKey(v48);
      if (!v50)
      {

        sub_258CAFE28();
        swift_allocError();
        *v93 = xmmword_258CC1D20;
        *(v93 + 16) = 48;
        swift_willThrow();

        goto LABEL_81;
      }

      v51 = v50;
      v245 = v47;
      v52 = SecKeyCopyExternalRepresentation(v50, 0);
      if (!v52)
      {

        sub_258CAFE28();
        swift_allocError();
        *v94 = xmmword_258CC1D20;
        *(v94 + 16) = 48;
        swift_willThrow();

        goto LABEL_81;
      }

      v53 = v52;
      v54 = v19;
      v55 = sub_258CBEA80();
      v57 = v56;
      v243 = v40;
      v58 = v49;
      v59 = sub_258CBEA60();
      v60 = v55;
      v19 = v54;
      v41 = v249;
      v61 = v57;
      v18 = v242;
      sub_258CA82B8(v60, v61);
      [v46 setOriginatorPubKey_];

      v40 = v243;
      v47 = v245;
LABEL_48:
      swift_beginAccess();
      v6 = v46;
      MEMORY[0x259C97D40]();
      if (*((*(v18 + v41) & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((*(v18 + v41) & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        sub_258CBEB40();
      }

      sub_258CBEB60();
      swift_endAccess();
      v40 += 112;
      v7 = v47;
      if (!--v39)
      {
        goto LABEL_57;
      }
    }
  }

  v47 = 0;
LABEL_57:
  swift_beginAccess();
  v62 = *(v18 + v41);
  if (v62 >> 62)
  {
LABEL_173:
    v63 = sub_258CBEBE0();
  }

  else
  {
    v63 = *((v62 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v64 = v233;
  v65 = v234;
  if (v63 < 1)
  {

    if (qword_27F97DBE0 != -1)
    {
      swift_once();
    }

    v79 = sub_258CBEAB0();
    __swift_project_value_buffer(v79, qword_27F97DBE8);
    v80 = sub_258CBEA90();
    v81 = sub_258CBEB70();
    if (os_log_type_enabled(v80, v81))
    {
      v82 = swift_slowAlloc();
      *v82 = 0;
      _os_log_impl(&dword_258C80000, v80, v81, "Invalid data - no recipients found", v82, 2u);
      MEMORY[0x259C98B10](v82, -1, -1);
    }

    sub_258CAFE28();
    swift_allocError();
    *v83 = xmmword_258CC1D20;
    *(v83 + 16) = 48;
    swift_willThrow();

    return;
  }

  if (!*(&v261 + 1))
  {
LABEL_182:
    __break(1u);
    goto LABEL_183;
  }

  v220 = *(&v259 + 1);
  v221 = v259;
  v66 = NSDataFromOctetString(*(&v261 + 1));
  v67 = sub_258CBEA80();
  v69 = v68;

  v70 = (v18 + OBJC_IVAR___MSCMSAuthEnvelopedData_encryptedContent);
  v71 = *(v18 + OBJC_IVAR___MSCMSAuthEnvelopedData_encryptedContent);
  v72 = *(v18 + OBJC_IVAR___MSCMSAuthEnvelopedData_encryptedContent + 8);
  *v70 = v67;
  v70[1] = v69;
  sub_258CA82B8(v71, v72);
  *&__dst = v47;
  v246 = [objc_allocWithZone(MSAlgorithmIdentifier) initWithAsn1AlgId:&v260 error:&__dst];

  v229 = __dst;
  v73 = NSDataFromOctetString(&v262 + 1);
  v74 = sub_258CBEA80();
  v76 = v75;

  v77 = v76 >> 62;
  v230 = v74;
  if ((v76 >> 62) > 1)
  {
    v78 = 0x2798BD000;
    if (v77 != 2 || *(v74 + 16) == *(v74 + 24))
    {
      goto LABEL_84;
    }
  }

  else
  {
    v78 = 0x2798BD000;
    if (v77)
    {
      if (v74 == v74 >> 32)
      {
LABEL_84:

        if (qword_27F97DBE0 != -1)
        {
          swift_once();
        }

        v96 = sub_258CBEAB0();
        __swift_project_value_buffer(v96, qword_27F97DBE8);
        v97 = sub_258CBEA90();
        v98 = sub_258CBEB70();
        if (os_log_type_enabled(v97, v98))
        {
          v99 = swift_slowAlloc();
          *v99 = 0;
          _os_log_impl(&dword_258C80000, v97, v98, "Error extracting MAC", v99, 2u);
          MEMORY[0x259C98B10](v99, -1, -1);
        }

        sub_258CAFE28();
        swift_allocError();
        *v100 = 0;
        *(v100 + 8) = 0;
        *(v100 + 16) = 48;
        swift_willThrow();

        sub_258CA82B8(v230, v76);
        return;
      }
    }

    else if ((v76 & 0xFF000000000000) == 0)
    {
      goto LABEL_84;
    }
  }

  v84 = v262;
  v228 = v76;
  if (!v262 || (v85 = *(v262 + 8)) == 0)
  {
    v218 = 0;
    goto LABEL_98;
  }

  v86 = *v262;
  if (!v86)
  {
    v218 = 0;
    v18 = v242;
    goto LABEL_98;
  }

  v47 = OBJC_IVAR___MSCMSAuthEnvelopedData_protectedAttributes;
  v87 = *(v85 + 4);
  v88 = *(v85 + 3);
  __dst = *v85;
  LODWORD(v254) = v87;
  *(&v254 + 1) = v88;
  v89 = objc_opt_self();
  v250[0] = v229;
  v90 = [v89 decodeAttribute:&__dst error:v250];
  v91 = v250[0];

  swift_beginAccess();
  v92 = v90;
  MEMORY[0x259C97D40]();
  if (*((*&v242[v47] & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((*&v242[v47] & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
  {
    sub_258CBEB40();
  }

  sub_258CBEB60();
  swift_endAccess();
  v235 = v92;

  if (v86 == 1)
  {
    v218 = 1;
    v229 = v91;
    goto LABEL_97;
  }

  v101 = 0;
  v102 = v86 - 1;
  do
  {
    v103 = *(v84 + 8);
    if (!v103)
    {
      __break(1u);
LABEL_181:
      __break(1u);
      goto LABEL_182;
    }

    v104 = v103 + v101;
    v105 = *(v104 + 48);
    v106 = *(v104 + 56);
    __dst = *(v104 + 32);
    LODWORD(v254) = v105;
    *(&v254 + 1) = v106;
    v107 = objc_opt_self();
    v250[0] = v91;
    v108 = [v107 decodeAttribute:&__dst error:v250];
    v109 = v250[0];

    swift_beginAccess();
    v110 = v108;
    MEMORY[0x259C97D40]();
    if (*((*&v242[v47] & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((*&v242[v47] & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
    {
      sub_258CBEB40();
    }

    sub_258CBEB60();
    swift_endAccess();
    v235 = v110;

    v101 += 32;
    v91 = v109;
    --v102;
  }

  while (v102);
  v229 = v109;
  v218 = 1;
LABEL_97:
  v18 = v242;
  v64 = v233;
  v65 = v234;
  v78 = 0x2798BD000;
LABEL_98:
  v111 = *(&v263 + 1);
  if (*(&v263 + 1) && (v112 = *(*(&v263 + 1) + 8)) != 0)
  {
    v113 = **(&v263 + 1);
    if (v113)
    {
      v234 = v65;
      v47 = OBJC_IVAR___MSCMSAuthEnvelopedData_unprotectedAttributes;
      v114 = *(v112 + 4);
      v115 = *(v112 + 3);
      __dst = *v112;
      LODWORD(v254) = v114;
      *(&v254 + 1) = v115;
      v116 = objc_opt_self();
      v250[0] = v229;
      v117 = [v116 decodeAttribute:&__dst error:v250];
      v118 = v250[0];

      swift_beginAccess();
      v119 = v117;
      MEMORY[0x259C97D40]();
      if (*((*&v242[v47] & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((*&v242[v47] & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        sub_258CBEB40();
      }

      sub_258CBEB60();
      swift_endAccess();
      v231 = v119;

      if (v113 == 1)
      {
        v217 = 1;
        v229 = v118;
      }

      else
      {
        v120 = 0;
        v121 = v113 - 1;
        do
        {
          v122 = *(v111 + 8);
          if (!v122)
          {
            goto LABEL_181;
          }

          v123 = v122 + v120;
          v124 = *(v123 + 48);
          v125 = *(v123 + 56);
          __dst = *(v123 + 32);
          LODWORD(v254) = v124;
          *(&v254 + 1) = v125;
          v126 = objc_opt_self();
          v250[0] = v118;
          v127 = [v126 decodeAttribute:&__dst error:v250];
          v128 = v250[0];

          swift_beginAccess();
          v129 = v127;
          MEMORY[0x259C97D40]();
          if (*((*&v242[v47] & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((*&v242[v47] & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
          {
            sub_258CBEB40();
          }

          sub_258CBEB60();
          swift_endAccess();
          v231 = v129;

          v120 += 32;
          v118 = v128;
          --v121;
        }

        while (v121);
        v229 = v128;
        v217 = 1;
      }

      v18 = v242;
      v64 = v233;
      v65 = v234;
      v78 = 0x2798BD000uLL;
    }

    else
    {
      v217 = 0;
      v18 = v242;
    }
  }

  else
  {
    v217 = 0;
  }

  v130 = *&v249[v18];
  if (v130 >> 62)
  {
    v131 = sub_258CBEBE0();
  }

  else
  {
    v131 = *((v130 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  if (!v131)
  {
LABEL_150:

    if (qword_27F97DBE0 != -1)
    {
      swift_once();
    }

    v192 = sub_258CBEAB0();
    __swift_project_value_buffer(v192, qword_27F97DBE8);
    v193 = sub_258CBEA90();
    v194 = sub_258CBEB70();
    if (os_log_type_enabled(v193, v194))
    {
      v195 = swift_slowAlloc();
      *v195 = 0;
      _os_log_impl(&dword_258C80000, v193, v194, "Error decrypting encoded content", v195, 2u);
      MEMORY[0x259C98B10](v195, -1, -1);
    }

    sub_258CAFE28();
    swift_allocError();
    *v196 = xmmword_258CC1D20;
    *(v196 + 16) = 48;
    swift_willThrow();

    sub_258CA82B8(v230, v228);
LABEL_155:

    if (v218)
    {
    }

    if (!v217)
    {
      return;
    }

    v95 = v231;
    goto LABEL_82;
  }

  v47 = 0;
  v240 = v130 & 0xFFFFFFFFFFFFFF8;
  v241 = v130 & 0xC000000000000001;
  v236 = v131;
  v238 = v130;
  while (2)
  {
    if (v241)
    {
      v132 = MEMORY[0x259C97E00](v47, v130);
      v133 = v47 + 1;
      if (__OFADD__(v47, 1))
      {
        goto LABEL_171;
      }
    }

    else
    {
      if (v47 >= *(v240 + 16))
      {
        goto LABEL_172;
      }

      v132 = *(v130 + 8 * v47 + 32);
      v133 = v47 + 1;
      if (__OFADD__(v47, 1))
      {
LABEL_171:
        __break(1u);
LABEL_172:
        __break(1u);
        goto LABEL_173;
      }
    }

    v249 = v132;
    v244 = v133;
    *&__dst = 0;
    v134 = [v246 ccAlgorithm_];
    v135 = __dst;
    v136 = [v246 ccMode_];
    v248 = __dst;

    if (v134 || v136 != 11)
    {
      if (qword_27F97DBE0 != -1)
      {
        swift_once();
      }

      v144 = sub_258CBEAB0();
      __swift_project_value_buffer(v144, qword_27F97DBE8);
      v145 = sub_258CBEA90();
      v146 = sub_258CBEB70();
      if (os_log_type_enabled(v145, v146))
      {
        v147 = swift_slowAlloc();
        *v147 = 67109120;
        *(v147 + 4) = v134;
        _os_log_impl(&dword_258C80000, v145, v146, "Invalid encryption algorithm %u", v147, 8u);
        MEMORY[0x259C98B10](v147, -1, -1);
      }

      sub_258CAFE28();
      v148 = swift_allocError();
      *v149 = 0;
      *(v149 + 8) = 0;
      *(v149 + 16) = 48;
      swift_willThrow();

      v18 = v242;
      goto LABEL_137;
    }

    v255 = 0;
    __dst = 0u;
    v254 = 0u;
    v137 = [v246 parameters];
    if (v137)
    {
      v138 = v137;
      v139 = sub_258CBEA80();
      v141 = v140;

      v142 = sub_258CBEA60();
      v143 = v141;
      v18 = v242;
      sub_258CA82B8(v139, v143);
    }

    else
    {
      v142 = 0;
    }

    v150 = nsheim_decode_GCMParameters(v142, &__dst);

    if (v150)
    {
      if (qword_27F97DBE0 != -1)
      {
        swift_once();
      }

      v151 = sub_258CBEAB0();
      __swift_project_value_buffer(v151, qword_27F97DBE8);
      v152 = sub_258CBEA90();
      v153 = sub_258CBEB70();
      if (os_log_type_enabled(v152, v153))
      {
        v154 = swift_slowAlloc();
        *v154 = 0;
        _os_log_impl(&dword_258C80000, v152, v153, "Invalid data - error decoding GCMParameters", v154, 2u);
        MEMORY[0x259C98B10](v154, -1, -1);
      }

      sub_258CAFE28();
      v148 = swift_allocError();
      *v155 = xmmword_258CC1D40;
      *(v155 + 16) = 48;
      swift_willThrow();

      goto LABEL_137;
    }

    v234 = v65;
    v157 = NSDataFromOctetString(&__dst);
    v158 = sub_258CBEA80();
    v160 = v159;

    v161 = [v249 key];
    v162 = sub_258CBEA80();
    v164 = v163;

    v165 = *(v18 + OBJC_IVAR___MSCMSAuthEnvelopedData_encryptedContent);
    v166 = *(v18 + OBJC_IVAR___MSCMSAuthEnvelopedData_encryptedContent + 8);
    v222 = (v18 + OBJC_IVAR___MSCMSAuthEnvelopedData_encryptedContent);
    sub_258CA85E0(v165, v166);
    v224 = v162;
    v225 = v164;
    v167 = v165;
    v168 = sub_258CBEA60();
    v226 = v158;
    v227 = v160;
    v169 = sub_258CBEA60();
    v170 = sub_258CBEA60();
    v171 = sub_258CBEA60();
    v250[0] = 0;
    v172 = MSDecryptGCMOneShot(0, v168, v169, v170, v171, v250);

    v173 = v250[0];
    v174 = sub_258CBEA80();
    v176 = v175;

    if (v173)
    {
      swift_willThrow();
      sub_258CA82B8(v167, v166);
      sub_258CA82B8(v174, v176);

      v177 = [v249 key_];
      v178 = sub_258CBEA80();
      v180 = v179;

      v181 = *v222;
      v182 = v222[1];
      sub_258CA85E0(*v222, v182);
      v219 = v178;
      v223 = v180;
      v183 = sub_258CBEA60();
      v184 = sub_258CBEA60();
      v185 = sub_258CBEA60();
      v234 = v181;
      v186 = sub_258CBEA60();
      v250[0] = 0;
      v187 = MSDecryptGCMOneShot(0, v183, v184, v185, v186, v250);

      v188 = v250[0];
      v189 = sub_258CBEA80();
      v191 = v190;

      if (v188)
      {
        swift_willThrow();
        v148 = v188;
        sub_258CA82B8(v224, v225);
        sub_258CA82B8(v226, v227);
        sub_258CA82B8(v219, v223);

        sub_258CA82B8(v234, v182);
        sub_258CA82B8(v189, v191);

        v18 = v242;
        v64 = v233;
        v78 = 0x2798BD000;
LABEL_137:
        v130 = v238;
        v156 = v249;
        if (!v148)
        {
          goto LABEL_159;
        }

LABEL_138:

        v65 = 0;
        ++v47;
        if (v244 == v131)
        {
          goto LABEL_150;
        }

        continue;
      }

      v215 = v189;
      v216 = v191;
      sub_258CA82B8(v224, v225);
      sub_258CA82B8(v226, v227);
      sub_258CA82B8(v219, v223);

      sub_258CA82B8(v234, v182);
      v148 = 0;
      v64 = v233;
    }

    else
    {
      v215 = v174;
      v216 = v176;
      sub_258CA82B8(v224, v225);
      sub_258CA82B8(v226, v227);
      sub_258CA82B8(v167, v166);
      v64 = v233;
      v148 = v234;
    }

    break;
  }

  v78 = 0x2798BD000;
  v130 = v238;
  v156 = v249;

  v18 = v242;
  if (v148)
  {
    goto LABEL_138;
  }

LABEL_159:

  v251[0] = v221;
  v251[1] = v220;
  *&__dst = v229;
  v197 = [objc_allocWithZone(*(v78 + 3272)) initWithAsn1OID:v251 error:&__dst];
  v198 = __dst;

  v199 = OBJC_IVAR___MSCMSAuthEnvelopedData_contentType;
  swift_beginAccess();
  v200 = *(v18 + v199);
  *(v18 + v199) = v197;
  v201 = v197;

  if ([v201 isEqualToString_])
  {

    sub_258CA82B8(v230, v228);
    v202 = (v18 + OBJC_IVAR___MSCMSAuthEnvelopedData_dataContent);
    swift_beginAccess();
    v203 = *v202;
    v204 = v202[1];
    *v202 = v215;
    v202[1] = v216;
    sub_258CA8728(v203, v204);
  }

  else
  {
    v205 = sub_258CBEA60();
    v250[0] = v198;
    v206 = decodeEmbeddedCMSContent(v201, v205, v232, v250);

    v207 = v250[0];
    if (!v206)
    {
      sub_258CAFE28();
      swift_allocError();
      *v209 = xmmword_258CC1D20;
      *(v209 + 16) = 48;
      swift_willThrow();

      sub_258CA82B8(v230, v228);
      sub_258CA82B8(v215, v216);

      goto LABEL_155;
    }

    sub_258CA82B8(v230, v228);
    sub_258CA82B8(v215, v216);

    v208 = OBJC_IVAR___MSCMSAuthEnvelopedData_embeddedContent;
    swift_beginAccess();
    *(v18 + v208) = v206;

    swift_unknownObjectRelease();
  }

  if (v218)
  {
  }

  if (v217)
  {
  }

  swift_dynamicCastClassUnconditional();
}

char *sub_258CAE654(unint64_t a1)
{
  if (a1 >> 62)
  {
    v2 = sub_258CBEBE0();
  }

  else
  {
    v2 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v3 = MEMORY[0x277D84F90];
  if (!v2)
  {
    return v3;
  }

  v13 = MEMORY[0x277D84F90];
  result = sub_258CAF210(0, v2 & ~(v2 >> 63), 0);
  if ((v2 & 0x8000000000000000) == 0)
  {
    v3 = v13;
    if ((a1 & 0xC000000000000001) != 0)
    {
      for (i = 0; i != v2; ++i)
      {
        MEMORY[0x259C97E00](i, a1);
        type metadata accessor for SecCertificate();
        swift_dynamicCast();
        v13 = v3;
        v7 = *(v3 + 16);
        v6 = *(v3 + 24);
        if (v7 >= v6 >> 1)
        {
          sub_258CAF210((v6 > 1), v7 + 1, 1);
          v3 = v13;
        }

        *(v3 + 16) = v7 + 1;
        sub_258CB03E0(v12, (v3 + 32 * v7 + 32));
      }
    }

    else
    {
      v8 = (a1 + 32);
      type metadata accessor for SecCertificate();
      do
      {
        v9 = *v8;
        swift_dynamicCast();
        v13 = v3;
        v11 = *(v3 + 16);
        v10 = *(v3 + 24);
        if (v11 >= v10 >> 1)
        {
          sub_258CAF210((v10 > 1), v11 + 1, 1);
          v3 = v13;
        }

        *(v3 + 16) = v11 + 1;
        sub_258CB03E0(v12, (v3 + 32 * v11 + 32));
        ++v8;
        --v2;
      }

      while (v2);
    }

    return v3;
  }

  __break(1u);
  return result;
}