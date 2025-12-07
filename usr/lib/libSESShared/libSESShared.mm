id Transform(void *a1, void *a2)
{
  v18 = *MEMORY[0x1E69E9840];
  v3 = a1;
  v4 = a2;
  v5 = objc_opt_new();
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v6 = v3;
  v7 = [v6 countByEnumeratingWithState:&v13 objects:v17 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v14;
    do
    {
      for (i = 0; i != v8; ++i)
      {
        if (*v14 != v9)
        {
          objc_enumerationMutation(v6);
        }

        v11 = v4[2](v4, *(*(&v13 + 1) + 8 * i));
        [v5 addObject:{v11, v13}];
      }

      v8 = [v6 countByEnumeratingWithState:&v13 objects:v17 count:16];
    }

    while (v8);
  }

  return v5;
}

id Find(void *a1, void *a2)
{
  v16 = *MEMORY[0x1E69E9840];
  v3 = a1;
  v4 = a2;
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v5 = v3;
  v6 = [v5 countByEnumeratingWithState:&v11 objects:v15 count:16];
  if (v6)
  {
    v7 = *v12;
    while (2)
    {
      for (i = 0; i != v6; i = i + 1)
      {
        if (*v12 != v7)
        {
          objc_enumerationMutation(v5);
        }

        v9 = *(*(&v11 + 1) + 8 * i);
        if (v4[2](v4, v9))
        {
          v6 = v9;
          goto LABEL_11;
        }
      }

      v6 = [v5 countByEnumeratingWithState:&v11 objects:v15 count:16];
      if (v6)
      {
        continue;
      }

      break;
    }
  }

LABEL_11:

  return v6;
}

id SESDefaultLogObject()
{
  if (SESDefaultLogObject_once != -1)
  {
    SESDefaultLogObject_cold_1();
  }

  v1 = SESDefaultLogObject_log;

  return v1;
}

uint64_t __SESDefaultLogObject_block_invoke()
{
  SESDefaultLogObject_log = os_log_create("com.apple.seserviced", "default");

  return MEMORY[0x1EEE66BB8]();
}

id getSecKeyPublicBytes(uint64_t a1, void *a2)
{
  if (a1 && a2)
  {
    *a2 = 0;
    v3 = SecKeyCopyPublicBytes();
    v4 = 0;
    *a2 = v4;
    if (v3 || (v5 = 0, !v4))
    {
      v6 = SESDefaultLogObject();
      v5 = SESCreateAndLogError(0, v6, SESErrorDomain, 0, @"Could not retrieve public key bytes : %d", v7, v8, v9, v3);
    }
  }

  else
  {
    v10 = SESDefaultLogObject();
    v5 = SESCreateAndLogError(0, v10, SESErrorDomain, 1, @"Nil parameter to getSecKeyPublicBytes", v11, v12, v13, v15);
  }

  return v5;
}

id ECIES_V1(__SecKey *a1, __SecKey *a2, uint64_t a3, uint64_t a4, uint64_t a5, void *a6, void *a7)
{
  v61[2] = *MEMORY[0x1E69E9840];
  v13 = a6;
  v14 = v13;
  if (!a1 || !a2 || !a3 || !a4 || !v13 || !a7)
  {
    v15 = SESDefaultLogObject();
    SESCreateAndLogError(0, v15, SESErrorDomain, 1, @"Nil parameter to ECIES_V1", v19, v20, v21, v56);
    goto LABEL_10;
  }

  if (a5 >= 2)
  {
    v15 = SESDefaultLogObject();
    SESCreateAndLogError(0, v15, SESErrorDomain, 1, @"Invalid ECIESOperationKind %d", v16, v17, v18, a5);
    v22 = LABEL_10:;
    goto LABEL_23;
  }

  v59 = 0;
  v23 = getSecKeyPublicBytes(a3, &v59);
  v15 = v59;
  if (v23)
  {
    v24 = SESDefaultLogObject();
    v25 = SESErrorDomain;
    v26 = [v23 code];
    v22 = SESCreateAndLogError(0, v24, v25, v26, @"Failed to get sender public key data", v27, v28, v29, v56);
  }

  else
  {
    v58 = 0;
    v23 = getSecKeyPublicBytes(a4, &v58);
    v24 = v58;
    if (v23)
    {
      v30 = SESDefaultLogObject();
      v31 = SESErrorDomain;
      v32 = [v23 code];
      v22 = SESCreateAndLogError(0, v30, v31, v32, @"Failed to get receiver public key data", v33, v34, v35, v56);
    }

    else
    {
      v30 = [v15 mutableCopy];
      [v30 appendData:v24];
      v36 = *MEMORY[0x1E697B230];
      v60[0] = *MEMORY[0x1E697B228];
      v60[1] = v36;
      v61[0] = &unk_1F5BEB8B8;
      v61[1] = v30;
      v37 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v61 forKeys:v60 count:2];
      error = 0;
      v38 = SecKeyCopyKeyExchangeResult(a1, *MEMORY[0x1E697B0D8], a2, v37, &error);
      v39 = v38;
      v23 = error;
      if (error || [(__CFData *)v38 length]!= 32)
      {
        v42 = SESDefaultLogObject();
        v44 = SESErrorDomain;
        v45 = [v23 code];
        v22 = SESCreateAndLogError(0, v42, v44, v45, @"Failed to SecKeyCopyKeyExchangeResult", v46, v47, v48, v56);
      }

      else
      {
        v40 = MEMORY[0x1E695DF88];
        v41 = [v14 length];
        if (a5 == 1)
        {
          v42 = [v40 dataWithLength:v41 + 16];
          [(__CFData *)v39 bytes];
          [(__CFData *)v39 bytes];
          [v14 bytes];
          [v14 length];
          [v42 mutableBytes];
          [v42 bytes];
          [v14 length];
          v43 = CCCryptorGCMOneshotEncrypt();
        }

        else
        {
          v42 = [v40 dataWithLength:v41 - 16];
          [(__CFData *)v39 bytes];
          [(__CFData *)v39 bytes];
          [v14 bytes];
          [v14 length];
          [v42 mutableBytes];
          [v14 bytes];
          [v14 length];
          v43 = CCCryptorGCMOneshotDecrypt();
        }

        v50 = v43;
        if (v43)
        {
          v51 = SESDefaultLogObject();
          v22 = SESCreateAndLogError(0, v51, SESErrorDomain, 0, @"Could not perform privacy operation: %d", v52, v53, v54, v50);
        }

        else
        {
          v55 = v42;
          v22 = 0;
          *a7 = v42;
        }
      }
    }
  }

LABEL_23:

  return v22;
}

id encryptPrivacyData(void *a1, void *a2, void *a3, void *a4)
{
  v41[2] = *MEMORY[0x1E69E9840];
  v7 = a1;
  v8 = a2;
  v9 = v8;
  if (!v7 || !a3 || !v8 || !a4)
  {
    v23 = SESDefaultLogObject();
    v27 = SESCreateAndLogError(0, v23, SESErrorDomain, 1, @"Nil input to encryptPrivacy", v24, v25, v26, v35);
    goto LABEL_13;
  }

  error = 0;
  v10 = *MEMORY[0x1E697AD68];
  v11 = *MEMORY[0x1E697AD78];
  v12 = *MEMORY[0x1E697AD50];
  v40[0] = *MEMORY[0x1E697AD68];
  v40[1] = v12;
  v41[0] = v11;
  v41[1] = &unk_1F5BEB8D0;
  v36 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v41 forKeys:v40 count:2];
  v13 = SecKeyCreateRandomKey(v36, &error);
  v14 = v13;
  v15 = error;
  if (error || !v13)
  {
    v20 = SESDefaultLogObject();
    v21 = SESErrorDomain;
    v22 = @"While calling SecKeyCreateRandomKey";
  }

  else
  {
    v16 = getSecKeyPublicBytes(v13, a3);
    if (!v16)
    {
      v38[0] = v10;
      v38[1] = v12;
      v39[0] = v11;
      v39[1] = &unk_1F5BEB8D0;
      v38[2] = *MEMORY[0x1E697AD30];
      v39[2] = *MEMORY[0x1E697AD40];
      v20 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v39 forKeys:v38 count:3];
      v29 = SecKeyCreateWithData(v9, v20, &error);
      v30 = v29;
      v15 = error;
      if (error || !v29)
      {
        v31 = SESDefaultLogObject();
        v27 = SESCreateAndLogError(0, v31, SESErrorDomain, 0, @"Could not create server privacy encryption key", v32, v33, v34, v35);
      }

      else
      {
        v27 = ECIES_V1(v14, v29, v14, v29, 1, v7, a4);
      }

      v23 = v36;

      goto LABEL_12;
    }

    v15 = v16;
    v20 = SESDefaultLogObject();
    v21 = SESErrorDomain;
    v22 = @"While calling getSecKeyPublicBytes";
  }

  v27 = SESCreateAndLogError(0, v20, v21, 0, v22, v17, v18, v19, v35);
  v23 = v36;
LABEL_12:

LABEL_13:

  return v27;
}

id decryptPrivacyData(void *a1, void *a2, void *a3, void *a4)
{
  v28[3] = *MEMORY[0x1E69E9840];
  v7 = a1;
  v8 = a2;
  v9 = a3;
  v10 = v9;
  if (v7 && v8 && v9 && a4)
  {
    v11 = *MEMORY[0x1E697AD78];
    v12 = *MEMORY[0x1E697AD50];
    v27[0] = *MEMORY[0x1E697AD68];
    v27[1] = v12;
    v28[0] = v11;
    v28[1] = &unk_1F5BEB8D0;
    v27[2] = *MEMORY[0x1E697AD30];
    v28[2] = *MEMORY[0x1E697AD40];
    v13 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v28 forKeys:v27 count:3];
    v26 = 0;
    v14 = SecKeyCreateWithData(v10, v13, &v26);
    v15 = v14;
    v16 = v26;
    if (v26 || !v14)
    {
      v21 = SESDefaultLogObject();
      v17 = SESCreateAndLogError(0, v21, SESErrorDomain, 0, @"Calling SecKeyCreateWithData", v22, v23, v24, v26);
    }

    else
    {
      v17 = ECIES_V1(v7, v14, v14, v7, 0, v8, a4);
    }
  }

  else
  {
    v13 = SESDefaultLogObject();
    v17 = SESCreateAndLogError(0, v13, SESErrorDomain, 1, @"Nil input to decryptPrivacyData", v18, v19, v20, v26);
  }

  return v17;
}

id getCertificateSubjectCN(void *a1)
{
  v9 = *MEMORY[0x1E69E9840];
  v1 = a1;
  v2 = SecCertificateCreateWithData(0, v1);
  if (v2)
  {
    v3 = v2;
    *v8 = 0;
    SecCertificateCopyCommonName(v2, v8);
    CFRelease(v3);
    v4 = *v8;
  }

  else
  {
    v5 = SESDefaultLogObject();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
    {
      v6 = [(__CFData *)v1 asHexString];
      *v8 = 138412290;
      *&v8[4] = v6;
      _os_log_impl(&dword_1E0FCB000, v5, OS_LOG_TYPE_ERROR, "Could not create certificate with data %@", v8, 0xCu);
    }

    v4 = 0;
  }

  return v4;
}

id getCertificatePublicKey(void *a1)
{
  v28[9] = *MEMORY[0x1E69E9840];
  v1 = a1;
  v21[0] = [v1 DERItem];
  v21[1] = v2;
  memset(v20, 0, sizeof(v20));
  if (DERParseSequence(v21, DERNumSignedCertCrlItemSpecs, &DERSignedCertCrlItemSpecs, v20, 0x30uLL))
  {
    v3 = 1;
  }

  else
  {
    v3 = *(&v20[0] + 1) == 0;
  }

  if (v3)
  {
    v4 = SESDefaultLogObject();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
    {
      v5 = [v1 asHexString];
      LODWORD(buf[0]) = 138412290;
      *(buf + 4) = v5;
      _os_log_impl(&dword_1E0FCB000, v4, OS_LOG_TYPE_ERROR, "Could not parse certificate with data %@", buf, 0xCu);
    }

    goto LABEL_19;
  }

  memset(v28, 0, 64);
  memset(buf, 0, sizeof(buf));
  v6 = DERParseSequence(v20, DERNumTBSCertItemSpecs, &DERTBSCertItemSpecs, buf, 0xA0uLL);
  if (v6)
  {
    v7 = v6;
    v4 = SESDefaultLogObject();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
    {
      v8 = [MEMORY[0x1E695DEF0] dataWithDERItem:v20];
      v9 = [v8 asHexString];
      v26[0] = 67109378;
      v26[1] = v7;
      LOWORD(v26[2]) = 2112;
      *(&v26[2] + 2) = v9;
      v10 = "Failed (%d) to parse TBS with data %@";
      v11 = v26;
LABEL_18:
      _os_log_impl(&dword_1E0FCB000, v4, OS_LOG_TYPE_ERROR, v10, v11, 0x12u);
    }

LABEL_19:

    v16 = 0;
    goto LABEL_20;
  }

  memset(v26, 0, sizeof(v26));
  v12 = DERParseSequenceContent(v28, DERNumSubjPubKeyInfoItemSpecs, &DERSubjPubKeyInfoItemSpecs, v26, 0x20uLL);
  if (v12)
  {
    v13 = v12;
    v4 = SESDefaultLogObject();
    if (!os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_19;
    }

    v8 = [MEMORY[0x1E695DEF0] dataWithDERItem:v28];
    v9 = [v8 asHexString];
    *v22 = 67109378;
    v23 = v13;
    v24 = 2112;
    v25 = v9;
    v10 = "Failed (%d) to parse SubjPubKey with data %@";
LABEL_17:
    v11 = v22;
    goto LABEL_18;
  }

  v19 = 0;
  v18[0] = 0;
  v18[1] = 0;
  v14 = DERParseBitString(&v26[4], v18, &v19);
  if (v14)
  {
    v15 = v14;
    v4 = SESDefaultLogObject();
    if (!os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_19;
    }

    v8 = [MEMORY[0x1E695DEF0] dataWithDERItem:&v26[4]];
    v9 = [v8 asHexString];
    *v22 = 67109378;
    v23 = v15;
    v24 = 2112;
    v25 = v9;
    v10 = "Failed (%d) to parse BITSTRING with data %@";
    goto LABEL_17;
  }

  v16 = [MEMORY[0x1E695DEF0] dataWithDERItem:v18];
LABEL_20:

  return v16;
}

void sub_1E0FCDFFC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, ...)
{
  va_start(va, a16);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t Any(void *a1, void *a2)
{
  v15 = *MEMORY[0x1E69E9840];
  v3 = a1;
  v4 = a2;
  v10 = 0u;
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v5 = v3;
  v6 = [v5 countByEnumeratingWithState:&v10 objects:v14 count:16];
  if (v6)
  {
    v7 = *v11;
    while (2)
    {
      for (i = 0; i != v6; ++i)
      {
        if (*v11 != v7)
        {
          objc_enumerationMutation(v5);
        }

        if (v4[2](v4, *(*(&v10 + 1) + 8 * i)))
        {
          v6 = 1;
          goto LABEL_11;
        }
      }

      v6 = [v5 countByEnumeratingWithState:&v10 objects:v14 count:16];
      if (v6)
      {
        continue;
      }

      break;
    }
  }

LABEL_11:

  return v6;
}

uint64_t All(void *a1, void *a2)
{
  v17 = *MEMORY[0x1E69E9840];
  v3 = a1;
  v4 = a2;
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v5 = v3;
  v6 = [v5 countByEnumeratingWithState:&v12 objects:v16 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v13;
    while (2)
    {
      v9 = 0;
      do
      {
        if (*v13 != v8)
        {
          objc_enumerationMutation(v5);
        }

        if (!v4[2](v4, *(*(&v12 + 1) + 8 * v9)))
        {
          v10 = 0;
          goto LABEL_11;
        }

        ++v9;
      }

      while (v7 != v9);
      v7 = [v5 countByEnumeratingWithState:&v12 objects:v16 count:16];
      if (v7)
      {
        continue;
      }

      break;
    }
  }

  v10 = 1;
LABEL_11:

  return v10;
}

id Filter(void *a1, void *a2)
{
  v18 = *MEMORY[0x1E69E9840];
  v3 = a1;
  v4 = a2;
  v5 = objc_opt_new();
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v6 = v3;
  v7 = [v6 countByEnumeratingWithState:&v13 objects:v17 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v14;
    do
    {
      for (i = 0; i != v8; ++i)
      {
        if (*v14 != v9)
        {
          objc_enumerationMutation(v6);
        }

        v11 = *(*(&v13 + 1) + 8 * i);
        if (v4[2](v4, v11))
        {
          [v5 addObject:{v11, v13}];
        }
      }

      v8 = [v6 countByEnumeratingWithState:&v13 objects:v17 count:16];
    }

    while (v8);
  }

  return v5;
}

id TransformIf(void *a1, void *a2)
{
  v18 = *MEMORY[0x1E69E9840];
  v3 = a1;
  v4 = a2;
  v5 = objc_opt_new();
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v6 = v3;
  v7 = [v6 countByEnumeratingWithState:&v13 objects:v17 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v14;
    do
    {
      for (i = 0; i != v8; ++i)
      {
        if (*v14 != v9)
        {
          objc_enumerationMutation(v6);
        }

        v11 = v4[2](v4, *(*(&v13 + 1) + 8 * i));
        if (v11)
        {
          [v5 addObject:{v11, v13}];
        }
      }

      v8 = [v6 countByEnumeratingWithState:&v13 objects:v17 count:16];
    }

    while (v8);
  }

  return v5;
}

id getPublicKeyBytes(unint64_t a1, unint64_t a2)
{
  v17[3] = *MEMORY[0x1E69E9840];
  v14[0] = a1;
  v14[1] = a2;
  v12 = 0u;
  v13 = 0u;
  v2 = DERParseSequenceContent(v14, DERNumSubjPubKeyInfoItemSpecs, &DERSubjPubKeyInfoItemSpecs, &v12, 0);
  if (v2)
  {
    v3 = v2;
    v4 = SESDefaultLogObject();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
    {
      LODWORD(v17[0]) = 67109120;
      HIDWORD(v17[0]) = v3;
      v5 = "Could not extract pubKeyInfo : %d\n";
      v6 = v17;
LABEL_7:
      _os_log_impl(&dword_1E0FCB000, v4, OS_LOG_TYPE_ERROR, v5, v6, 8u);
      goto LABEL_8;
    }

    goto LABEL_8;
  }

  v17[0] = 0;
  v17[1] = 0;
  v11 = 0;
  v7 = DERParseBitString(&v13, v17, &v11);
  if (v7)
  {
    v8 = v7;
    v4 = SESDefaultLogObject();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
    {
      *buf = 67109120;
      v16 = v8;
      v5 = "Could not extract publicKey bytes : %d\n";
      v6 = buf;
      goto LABEL_7;
    }

LABEL_8:

    v9 = 0;
    goto LABEL_9;
  }

  v9 = [MEMORY[0x1E695DEF0] dataWithDERItem:v17];
LABEL_9:

  return v9;
}

id encodeSequence(uint64_t a1, unint64_t a2, uint64_t a3, uint64_t a4)
{
  v17 = *MEMORY[0x1E69E9840];
  v14 = DERLengthOfEncodedSequence(a1, a2, a3, a4);
  v8 = [MEMORY[0x1E695DF88] dataWithLength:v14];
  v9 = DEREncodeSequence(a1, a2, a3, a4, [v8 mutableBytes], &v14);
  if (v9)
  {
    v10 = v9;
    v11 = SESDefaultLogObject();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
    {
      *buf = 67109120;
      v16 = v10;
      _os_log_impl(&dword_1E0FCB000, v11, OS_LOG_TYPE_ERROR, "while encoding extensions : %d", buf, 8u);
    }

    v12 = 0;
  }

  else
  {
    v12 = v8;
  }

  return v12;
}

id encodeSequenceContentSpec(unint64_t a1, uint64_t a2)
{
  v2 = encodeSequence(0x2000000000000010, a1, *(a2 + 8), *a2);
  v3 = DERDecodeData(v2, -1);

  return v3;
}

id encodeItem(unint64_t a1, unint64_t a2, const void *a3)
{
  v15 = *MEMORY[0x1E69E9840];
  v12 = DERLengthOfItem(a1, a2);
  v6 = [MEMORY[0x1E695DF88] dataWithLength:v12];
  v7 = DEREncodeItem(a1, a2, a3, [v6 mutableBytes], &v12);
  if (v7 || (v8 = [v6 length], v8 != v12))
  {
    v10 = SESDefaultLogObject();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
    {
      *buf = 67109120;
      v14 = v7;
      _os_log_impl(&dword_1E0FCB000, v10, OS_LOG_TYPE_ERROR, "while encoding item : %d\n", buf, 8u);
    }

    v9 = 0;
  }

  else
  {
    v9 = v6;
  }

  return v9;
}

id encodeNSData(unint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [v3 length];
  v5 = [v3 bytes];

  return encodeItem(a1, v4, v5);
}

id DERDecodeData(const DERItem *a1, uint64_t a2)
{
  v5 = 0;
  v6[0] = 0;
  v6[1] = 0;
  if (!DERDecodeItem(a1, &v5) && (a2 == -1 || v5 == a2))
  {
    v3 = [MEMORY[0x1E695DEF0] dataWithDERItem:v6];
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

id DERDecodeData(NSData *a1, uint64_t a2)
{
  v7 = 0;
  v8[0] = 0;
  v8[1] = 0;
  v6[0] = [(NSData *)a1 DERItem];
  v6[1] = v3;
  if (!DERDecodeItem(v6, &v7) && (a2 == -1 || v7 == a2))
  {
    v4 = [MEMORY[0x1E695DEF0] dataWithDERItem:v8];
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

uint64_t DERDecodeData(void *a1, unint64_t *a2)
{
  v5[0] = [a1 DERItem];
  v5[1] = v3;
  return DERDecodeItem(v5, a2);
}

id DERDecodeAdvance(uint64_t *a1, uint64_t a2, char a3)
{
  v12 = 0;
  v13 = 0;
  v14 = 0;
  if (!DERDecodeItem(a1, &v12) && (a2 == -1 || v12 == a2))
  {
    v8 = DERLengthOfItem(v12, v14);
    if (a3)
    {
      v9 = *a1;
      v10 = v8;
    }

    else
    {
      v9 = v13;
      v10 = v14;
    }

    v6 = [MEMORY[0x1E695DEF0] dataWithBytes:v9 length:v10];
    v11 = a1[1] - v8;
    *a1 += v8;
    a1[1] = v11;
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

uint64_t DERParseSequenceSpec(uint64_t a1, uint64_t a2, uint64_t a3, void *a4, size_t a5)
{
  bzero(a4, a5);
  v11 = 0;
  v12[0] = 0;
  v12[1] = 0;
  result = DERDecodeItem(a2, &v11);
  if (!result)
  {
    if (v11 == a1)
    {
      return DERParseSequenceContent(v12, *(a3 + 8), *a3, a4, a5);
    }

    else
    {
      return 2;
    }
  }

  return result;
}

uint64_t DERParseSequenceSpec(uint64_t a1, void *a2, uint64_t a3, void *a4, size_t a5)
{
  v11[0] = [a2 DERItem];
  v11[1] = v9;
  return DERParseSequenceSpec(a1, v11, a3, a4, a5);
}

uint64_t DERParseSequenceSpec(void *a1, uint64_t a2, void *a3, size_t a4)
{
  v9[0] = [a1 DERItem];
  v9[1] = v7;
  return DERParseSequenceSpec(0x2000000000000010, v9, a2, a3, a4);
}

unint64_t *DERParseSequenceSpecContent(void *a1, uint64_t a2, unint64_t a3, size_t a4)
{
  v9[0] = [a1 DERItem];
  v9[1] = v7;
  return DERParseSequenceContent(v9, *(a2 + 8), *a2, a3, a4);
}

void sub_1E0FD29C8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, ...)
{
  va_start(va, a18);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t __Block_byref_object_copy_(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

id SESCreateAndLogError(void *a1, void *a2, void *a3, uint64_t a4, void *a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  v33 = *MEMORY[0x1E69E9840];
  v13 = a1;
  v14 = a2;
  v15 = MEMORY[0x1E696AEC0];
  v16 = a5;
  v17 = a3;
  v18 = [[v15 alloc] initWithFormat:v16 arguments:&a9];

  if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
  {
    *buf = 138543362;
    v32 = v18;
    _os_log_impl(&dword_1E0FCB000, v14, OS_LOG_TYPE_ERROR, "%{public}@", buf, 0xCu);
  }

  if (v13)
  {
    v19 = *MEMORY[0x1E696AA08];
    v29[0] = *MEMORY[0x1E696A578];
    v29[1] = v19;
    v30[0] = v18;
    v30[1] = v13;
    v20 = MEMORY[0x1E695DF20];
    v21 = v30;
    v22 = v29;
    v23 = 2;
  }

  else
  {
    v27 = *MEMORY[0x1E696A578];
    v28 = v18;
    v20 = MEMORY[0x1E695DF20];
    v21 = &v28;
    v22 = &v27;
    v23 = 1;
  }

  v24 = [v20 dictionaryWithObjects:v21 forKeys:v22 count:v23];
  v25 = [MEMORY[0x1E696ABC0] errorWithDomain:v17 code:a4 userInfo:v24];

  return v25;
}

id SESEnsureError(void *a1)
{
  v9[1] = *MEMORY[0x1E69E9840];
  v1 = a1;
  v2 = v1;
  if (v1)
  {
    v3 = v1;
  }

  else
  {
    v4 = MEMORY[0x1E696ABC0];
    v5 = SESErrorDomain;
    v8 = *MEMORY[0x1E696A578];
    v9[0] = @"No Valid Error Set";
    v6 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v9 forKeys:&v8 count:1];
    v3 = [v4 errorWithDomain:v5 code:-1 userInfo:v6];
  }

  return v3;
}

uint64_t SESInternalVariant(uint64_t a1, uint64_t a2)
{
  if (SESInternalVariant_onceToken != -1)
  {
    SESInternalVariant_cold_1();
  }

  return SESInternalVariant_ret;
}

uint64_t __SESInternalVariant_block_invoke()
{
  result = os_variant_has_internal_diagnostics();
  SESInternalVariant_ret = result;
  return result;
}

void OUTLINED_FUNCTION_0(uint64_t a1@<X8>)
{
  *(v2 + 4) = a1;
  *(v3 - 196) = 2112;
  *(v2 + 14) = v1;
}

BOOL OUTLINED_FUNCTION_1(NSObject *a1)
{

  return os_log_type_enabled(a1, OS_LOG_TYPE_ERROR);
}

uint64_t OUTLINED_FUNCTION_2(uint64_t a1)
{

  return objc_opt_isKindOfClass();
}

uint64_t DERDecodeItemPartialBufferGetLength(uint64_t result, unint64_t *a2, unint64_t *a3)
{
  v3 = *(result + 8);
  if (v3 < 2)
  {
    return 3;
  }

  v4 = *result;
  if (*result == -1)
  {
    goto LABEL_68;
  }

  v5 = &v4[v3];
  v6 = v4 + 1;
  v7 = v3 - 1;
  v8 = *v4 & 0x1F;
  if ((*v4 & 0x1F) != 0x1F)
  {
    v12 = v4 + 1;
LABEL_20:
    *a2 = v8 | ((*v4 & 0xE0) << 56);
    if (v12 != -1)
    {
      if (v12 >= v5 || v12 < v4)
      {
        goto LABEL_69;
      }

      v14 = v12 + 1;
      v15 = *v12;
      v16 = v7 - 1;
      if ((*v12 & 0x80000000) == 0)
      {
        if (a3 || v16 >= v15)
        {
          if (v16 >= v15)
          {
            v17 = *v12;
          }

          else
          {
            v17 = v7 - 1;
          }

          v10 = v5 >= v14;
          v18 = v5 - v14;
          if (v10 && v4 <= v14 && v17 <= v18)
          {
            a2[1] = v14;
            a2[2] = v17;
            if (!a3)
            {
              return 0;
            }

LABEL_34:
            result = 0;
            *a3 = v15;
            return result;
          }

LABEL_69:
          __break(0x5519u);
LABEL_70:
          __break(0x5515u);
          return result;
        }

        return 3;
      }

      v19 = v15 & 0x7F;
      if ((v15 & 0x7F) > 8)
      {
        return 3;
      }

      if ((v15 & 0x7F) == 0 || v16 < v19)
      {
        return 3;
      }

      if (v14 >= v5 || v14 < v4)
      {
        goto LABEL_69;
      }

      if (!*v14)
      {
        return 3;
      }

      v15 = 0;
      v21 = (v19 - 1);
      v22 = v7 - v21 - 2;
      v23 = &v12[v21 + 2];
      while (v14 != -1)
      {
        if (v14 >= v5)
        {
          goto LABEL_69;
        }

        v10 = v16-- != 0;
        if (!v10)
        {
          goto LABEL_70;
        }

        v24 = *v14++;
        v15 = (v15 << 8) | v24;
        LODWORD(v19) = v19 - 1;
        if (!v19)
        {
          if (a3)
          {
            v25 = 0;
          }

          else
          {
            v25 = v15 > v22;
          }

          v26 = v25;
          result = 3;
          if (v15 < 0x80 || (v26 & 1) != 0)
          {
            return result;
          }

          if (v15 >= v22)
          {
            v27 = v22;
          }

          else
          {
            v27 = v15;
          }

          v10 = v5 >= v23;
          v28 = &v5[-v23];
          if (!v10 || v4 > v23 || v27 > v28)
          {
            goto LABEL_69;
          }

          a2[1] = v23;
          a2[2] = v27;
          if (a3)
          {
            goto LABEL_34;
          }

          return 0;
        }
      }
    }

LABEL_68:
    __break(0x5513u);
    goto LABEL_69;
  }

  v9 = *v6;
  v10 = v9 != 128 && v9 >= 0x1F;
  if (!v10)
  {
    return 3;
  }

  v8 = 0;
  result = 3;
  while (v7 >= 2)
  {
    v11 = v8;
    if (v8 >> 57)
    {
      break;
    }

    if (v6 == -1)
    {
      goto LABEL_68;
    }

    if (v6 >= v5 || v6 < v4)
    {
      goto LABEL_69;
    }

    v12 = (v6 + 1);
    --v7;
    v13 = *v6;
    v8 = *v6++ & 0x7F | (v8 << 7);
    if ((v13 & 0x80) == 0)
    {
      if (v11 >> 54)
      {
        return 3;
      }

      goto LABEL_20;
    }
  }

  return result;
}

uint64_t DERDecodeItemPartialBuffer(uint64_t result, unint64_t *a2, int a3)
{
  v3 = *(result + 8);
  if (v3 < 2)
  {
    return 3;
  }

  v4 = *result;
  if (*result == -1)
  {
    goto LABEL_54;
  }

  v5 = &v4[v3];
  v6 = v4 + 1;
  v7 = v3 - 1;
  v8 = *v4 & 0x1F;
  if ((*v4 & 0x1F) != 0x1F)
  {
    v12 = v4 + 1;
LABEL_20:
    *a2 = v8 | ((*v4 & 0xE0) << 56);
    if (v12 != -1)
    {
      if (v12 >= v5 || v12 < v4)
      {
        goto LABEL_55;
      }

      v14 = v12 + 1;
      v15 = *v12;
      v16 = v7 - 1;
      if ((*v12 & 0x80000000) == 0)
      {
        v17 = v16 < v15 && a3 == 0;
        v18 = (v12 + 1);
        if (v17)
        {
          return 3;
        }

LABEL_28:
        if (v15 > (~v18 & 0x7FFFFFFFFFFFFFFFLL))
        {
          return 7;
        }

        if (v18 <= v18 + v15)
        {
          result = 0;
          a2[1] = v18;
          a2[2] = v15;
          return result;
        }

        goto LABEL_55;
      }

      v19 = v15 & 0x7F;
      if ((v15 & 0x7F) > 8)
      {
        return 3;
      }

      if ((v15 & 0x7F) == 0 || v16 < v19)
      {
        return 3;
      }

      if (v14 >= v5 || v14 < v4)
      {
LABEL_55:
        __break(0x5519u);
LABEL_56:
        __break(0x5515u);
        return result;
      }

      if (!*v14)
      {
        return 3;
      }

      v15 = 0;
      v21 = (v19 - 1);
      v22 = v7 - v21 - 2;
      v18 = &v12[v21 + 2];
      while (v14 != -1)
      {
        if (v14 >= v5)
        {
          goto LABEL_55;
        }

        v10 = v16-- != 0;
        if (!v10)
        {
          goto LABEL_56;
        }

        v23 = *v14++;
        v15 = (v15 << 8) | v23;
        LODWORD(v19) = v19 - 1;
        if (!v19)
        {
          if (v15 <= v22)
          {
            v24 = 1;
          }

          else
          {
            v24 = a3;
          }

          result = 3;
          if (v15 >= 0x80 && (v24 & 1) != 0)
          {
            goto LABEL_28;
          }

          return result;
        }
      }
    }

LABEL_54:
    __break(0x5513u);
    goto LABEL_55;
  }

  v9 = *v6;
  v10 = v9 != 128 && v9 >= 0x1F;
  if (!v10)
  {
    return 3;
  }

  v8 = 0;
  result = 3;
  while (v7 >= 2)
  {
    v11 = v8;
    if (v8 >> 57)
    {
      break;
    }

    if (v6 == -1)
    {
      goto LABEL_54;
    }

    if (v6 >= v5 || v6 < v4)
    {
      goto LABEL_55;
    }

    v12 = (v6 + 1);
    --v7;
    v13 = *v6;
    v8 = *v6++ & 0x7F | (v8 << 7);
    if ((v13 & 0x80) == 0)
    {
      if (v11 >> 54)
      {
        return 3;
      }

      goto LABEL_20;
    }
  }

  return result;
}

uint64_t DERParseBitString(uint64_t result, unint64_t *a2, _BYTE *a3)
{
  *a3 = 0;
  *a2 = 0;
  a2[1] = 0;
  if (!*(result + 8))
  {
    return 3;
  }

  v3 = **result;
  *a3 = v3;
  v4 = *(result + 8);
  if (v4 != 1)
  {
    if (v3 <= 7)
    {
      v5 = v4 - 1;
      if (!v4)
      {
LABEL_20:
        __break(0x5515u);
        goto LABEL_21;
      }

      v6 = *result;
      v7 = *result + v4;
      v8 = (*result + v5);
      if (v8 >= v7 || v8 < v6)
      {
LABEL_19:
        __break(0x5519u);
        goto LABEL_20;
      }

      if (((0xFFu >> (8 - v3)) & *v8) == 0)
      {
        if (v6 == -1)
        {
LABEL_21:
          __break(0x5513u);
          return result;
        }

        v10 = v6 + 1;
        if (v6 + 1 <= v7 && v6 <= v10)
        {
          result = 0;
          *a2 = v10;
          a2[1] = v5;
          return result;
        }

        goto LABEL_19;
      }
    }

    return 3;
  }

  if (v3)
  {
    return 3;
  }

  else
  {
    return 0;
  }
}

uint64_t DERParseBoolean(unsigned __int8 **a1, BOOL *a2)
{
  if (a1[1] != 1)
  {
    return 3;
  }

  v2 = **a1;
  if (v2 != 255 && v2 != 0)
  {
    return 3;
  }

  result = 0;
  *a2 = v2 != 0;
  return result;
}

uint64_t DERParseBooleanWithDefault(unsigned __int8 **a1, BOOL a2, BOOL *a3)
{
  v3 = a1[1];
  if (!v3)
  {
    goto LABEL_9;
  }

  if (v3 == 1)
  {
    v4 = **a1;
    if (v4 == 255 || v4 == 0)
    {
      a2 = v4 != 0;
LABEL_9:
      result = 0;
      *a3 = a2;
      return result;
    }
  }

  return 3;
}

uint64_t DERParseInteger(uint64_t a1, _DWORD *a2)
{
  v4[1] = *MEMORY[0x1E69E9840];
  v4[0] = 0xAAAAAAAAAAAAAAAALL;
  result = DERParseInteger64(a1, v4);
  if (!result)
  {
    if (HIDWORD(v4[0]))
    {
      return 7;
    }

    else
    {
      result = 0;
      *a2 = v4[0];
    }
  }

  return result;
}

uint64_t DERParseInteger64(uint64_t result, unint64_t *a2)
{
  v2 = *(result + 8);
  if (!v2)
  {
    return 3;
  }

  v3 = *result;
  if (**result < 0)
  {
    return 3;
  }

  if (**result)
  {
    if (v2 > 8)
    {
      return 7;
    }

    goto LABEL_7;
  }

  if (v2 != 1)
  {
    if (v3 + 1 >= &v3[v2])
    {
      __break(0x5519u);
      return result;
    }

    if (v3[1] < 0)
    {
      if (v2 > 9)
      {
        return 7;
      }

      goto LABEL_7;
    }

    return 3;
  }

LABEL_7:
  v4 = 0;
  do
  {
    v5 = *v3++;
    v4 = v5 | (v4 << 8);
    --v2;
  }

  while (v2);
  result = 0;
  *a2 = v4;
  return result;
}

uint64_t DERParseIntegerSigned(uint64_t a1, _DWORD *a2)
{
  v4[1] = *MEMORY[0x1E69E9840];
  v4[0] = 0xAAAAAAAAAAAAAAAALL;
  result = DERParseInteger64Signed(a1, v4);
  if (!result)
  {
    if (v4[0] == SLODWORD(v4[0]))
    {
      result = 0;
      *a2 = v4[0];
    }

    else
    {
      return 7;
    }
  }

  return result;
}

uint64_t DERParseInteger64Signed(uint64_t result, uint64_t *a2)
{
  v2 = *(result + 8);
  if (!v2)
  {
    return 3;
  }

  v3 = *result;
  v4 = *result + v2;
  v5 = **result;
  if (**result)
  {
    if (v5 != 255)
    {
      goto LABEL_7;
    }

    if (v2 != 1)
    {
      if ((v3 + 1) < v4)
      {
        if ((v3[1] & 0x80000000) == 0)
        {
LABEL_7:
          if (v2 > 8)
          {
            return 7;
          }

          goto LABEL_10;
        }

        return 3;
      }

LABEL_21:
      __break(0x5519u);
      return result;
    }
  }

  else if (v2 != 1)
  {
    if ((v3 + 1) >= v4)
    {
      goto LABEL_21;
    }

    if ((v3[1] & 0x80000000) == 0)
    {
      return 3;
    }

    if (v2 > 9)
    {
      return 7;
    }
  }

LABEL_10:
  v6 = v5 >> 7;
  do
  {
    v7 = v6;
    v8 = *v3++;
    v6 = v8 | (v6 << 8);
    --v2;
  }

  while (v2);
  if ((v5 & 0x80000000) == 0 && v7 << 8 < 0)
  {
    return 7;
  }

  result = 0;
  *a2 = v6;
  return result;
}

uint64_t DERDecodeSeqInit(uint64_t a1, void *a2, void *a3)
{
  v8[3] = *MEMORY[0x1E69E9840];
  memset(v8, 170, 24);
  result = DERDecodeItemPartialBufferGetLength(a1, v8, 0);
  if (!result)
  {
    v6 = v8[0];
    *a2 = v8[0];
    if (v6 >> 1 == 0x1000000000000008)
    {
      if (__CFADD__(v8[1], v8[2]))
      {
        __break(0x5513u);
      }

      else
      {
        v7 = v8[1] + v8[2];
        if (v8[1] <= v8[1] + v8[2])
        {
          result = 0;
          *a3 = v8[1];
          a3[1] = v7;
          return result;
        }
      }

      __break(0x5519u);
    }

    else
    {
      return 2;
    }
  }

  return result;
}

unint64_t *DERDecodeSeqContentInit(unint64_t *result, unint64_t *a2)
{
  v2 = *result;
  v3 = result[1];
  if (__CFADD__(*result, v3))
  {
    __break(0x5513u);
  }

  else
  {
    v4 = v2 + v3;
    if (v2 <= v4)
    {
      *a2 = v2;
      a2[1] = v4;
      return 0;
    }
  }

  __break(0x5519u);
  return result;
}

uint64_t DERDecodeSeqNext(unint64_t *a1, unint64_t *a2)
{
  v10[2] = *MEMORY[0x1E69E9840];
  v10[0] = 0;
  v2 = *a1;
  v3 = a1[1];
  if (*a1 >= v3)
  {
    return 1;
  }

  v10[0] = *a1;
  v10[1] = v3 - v2;
  result = DERDecodeItemPartialBufferGetLength(v10, a2, 0);
  if (!result)
  {
    v8 = a2[1];
    v7 = a2[2];
    if (!__CFADD__(v8, v7))
    {
      v9 = v8 + v7;
      if (v9 <= a1[1] && *a1 <= v9)
      {
        result = 0;
        *a1 = v9;
        return result;
      }

      __break(0x5519u);
    }

    __break(0x5513u);
  }

  return result;
}

uint64_t DERParseSequenceToObject(uint64_t a1, unsigned int a2, uint64_t a3, unint64_t a4, size_t a5, size_t a6)
{
  v12[3] = *MEMORY[0x1E69E9840];
  memset(v12, 170, 24);
  result = DERDecodeItemPartialBufferGetLength(a1, v12, 0);
  if (!result)
  {
    if (v12[0] == 0x2000000000000010)
    {
      return DERParseSequenceContentToObject(&v12[1], a2, a3, a4, a5, a6);
    }

    else
    {
      return 2;
    }
  }

  return result;
}

uint64_t DERParseSequenceContentToObject(unint64_t *a1, unsigned int a2, uint64_t a3, unint64_t a4, size_t a5, size_t a6)
{
  v37 = *MEMORY[0x1E69E9840];
  v35 = 0;
  if (a6)
  {
    if (a6 > a5)
    {
      goto LABEL_59;
    }

    bzero(a4, a6);
    if (a4 + a6 < a4)
    {
      goto LABEL_59;
    }
  }

  v11 = *a1;
  v12 = a1[1];
  if (__CFADD__(*a1, v12))
  {
    goto LABEL_58;
  }

  v13 = v11 + v12;
  if (v11 > v13)
  {
LABEL_59:
    __break(0x5519u);
  }

  v35 = *a1;
  v36 = v13;
  if (!a2)
  {
LABEL_48:
    if (v11 == v13)
    {
      return 0;
    }

    else
    {
      return 3;
    }
  }

  v14 = 0;
  while (1)
  {
    memset(v34, 170, sizeof(v34));
    v16 = v35;
    v15 = v36;
    result = DERDecodeSeqNext(&v35, v34);
    if (result)
    {
      if (result == 1)
      {
        if (a2 <= v14)
        {
          return 0;
        }

        else
        {
          v29 = (a3 + 24 * v14 + 16);
          v30 = a2 - v14;
          result = 0;
          while (1)
          {
            v31 = *v29;
            v29 += 12;
            if ((v31 & 1) == 0)
            {
              break;
            }

            if (!--v30)
            {
              return result;
            }
          }

          return 5;
        }
      }

      return result;
    }

    if (a2 <= v14)
    {
      return 2;
    }

    while (1)
    {
      if (24 * v14 > ~a3)
      {
        goto LABEL_58;
      }

      v18 = a3 + 24 * v14;
      v19 = *(v18 + 16);
      if ((v19 & 2) != 0 || v34[0] == *(v18 + 8))
      {
        break;
      }

      result = 2;
      if ((v19 & 1) != 0 && a2 > ++v14)
      {
        continue;
      }

      return result;
    }

    if ((v19 & 4) == 0)
    {
      v20 = *v18;
      v21 = *v18 + 16;
      if (v20 > 0xFFFFFFFFFFFFFFEFLL || v21 > a5)
      {
        return 7;
      }

      if (v20 > ~a4)
      {
        goto LABEL_58;
      }

      v23 = (a4 + v20);
      v24 = v23 + 16;
      if (v23 < a4 || v24 > a4 + a5 || v23 >= v24)
      {
        goto LABEL_59;
      }

      *v23 = *&v34[1];
      if ((v19 & 8) != 0)
      {
        break;
      }
    }

LABEL_35:
    if (a2 == ++v14)
    {
      if (!__CFADD__(v34[1], v34[2]))
      {
        v32 = a1[1];
        if (!__CFADD__(*a1, v32))
        {
          v11 = v34[1] + v34[2];
          v13 = *a1 + v32;
          goto LABEL_48;
        }
      }

LABEL_58:
      __break(0x5513u);
      goto LABEL_59;
    }

    if (a2 <= v14)
    {
      v11 = v35;
      v13 = v36;
      goto LABEL_48;
    }
  }

  if (v16 < v34[1])
  {
    v27 = *(v23 + 1);
    v28 = v27 + v34[1] - v16;
    if (__CFADD__(v27, v34[1] - v16))
    {
      __break(0x5500u);
      return result;
    }

    if (v15 < v16 || v28 > v15 - v16)
    {
      goto LABEL_59;
    }

    *v23 = v16;
    *(v23 + 1) = v28;
    goto LABEL_35;
  }

  if (v15 < v16 || *(v23 + 1) > v15 - v16)
  {
    goto LABEL_59;
  }

  *v23 = v16;
  return 3;
}

uint64_t DERParseSequence(uint64_t result, unsigned int a2, uint64_t a3, unint64_t a4, size_t a5)
{
  if ((a4 | 0x7FFFFFFFFFFFFFFFLL) >= a4)
  {
    return DERParseSequenceToObject(result, a2, a3, a4, ~a4 & 0x7FFFFFFFFFFFFFFFLL, a5);
  }

  __break(0x5519u);
  return result;
}

unint64_t *DERParseSequenceContent(unint64_t *result, unsigned int a2, uint64_t a3, unint64_t a4, size_t a5)
{
  if ((a4 | 0x7FFFFFFFFFFFFFFFLL) >= a4)
  {
    return DERParseSequenceContentToObject(result, a2, a3, a4, ~a4 & 0x7FFFFFFFFFFFFFFFLL, a5);
  }

  __break(0x5519u);
  return result;
}

uint64_t DERDecodeSequenceWithBlock(uint64_t a1, uint64_t a2)
{
  v4[3] = *MEMORY[0x1E69E9840];
  memset(v4, 170, 24);
  result = DERDecodeItemPartialBufferGetLength(a1, v4, 0);
  if (!result)
  {
    if (v4[0] - 0x2000000000000012 >= 0xFFFFFFFFFFFFFFFELL)
    {
      return DERDecodeSequenceContentWithBlock(&v4[1], a2);
    }

    else
    {
      return 2;
    }
  }

  return result;
}

uint64_t DERDecodeSequenceContentWithBlock(unint64_t *a1, uint64_t a2)
{
  v9[2] = *MEMORY[0x1E69E9840];
  v9[0] = 0;
  v2 = *a1;
  v3 = a1[1];
  if (__CFADD__(*a1, v3))
  {
    __break(0x5513u);
LABEL_13:
    __break(0x5519u);
  }

  v4 = v2 + v3;
  if (v2 > v4)
  {
    goto LABEL_13;
  }

  v9[0] = *a1;
  v9[1] = v4;
  memset(v8, 170, sizeof(v8));
  v7 = 0;
  do
  {
    if (v7)
    {
      return 0;
    }

    LODWORD(result) = DERDecodeSeqNext(v9, v8);
    if (result)
    {
      break;
    }

    LODWORD(result) = (*(a2 + 16))(a2, v8, &v7);
  }

  while (!result);
  if (result <= 1)
  {
    return 0;
  }

  else
  {
    return result;
  }
}

uint64_t DERLengthOfLength(unint64_t a1)
{
  if (a1 < 0x80)
  {
    return 1;
  }

  v2 = a1;
  result = 1;
  do
  {
    ++result;
    v3 = v2 > 0xFF;
    v2 >>= 8;
  }

  while (v3);
  return result;
}

unint64_t DEREncodeLengthSized(unint64_t result, unint64_t a2, unint64_t a3, unint64_t *a4)
{
  if (result < 0x80)
  {
    if (a3)
    {
      if (*a4)
      {
        *a2 = result;
        if (*a4)
        {
          v4 = 1;
LABEL_19:
          v9 = 0;
          *a4 = v4;
          return v9;
        }
      }

      goto LABEL_22;
    }

    return 7;
  }

  v5 = 0;
  v6 = result;
  do
  {
    --v5;
    v7 = v6 > 0xFF;
    v6 >>= 8;
  }

  while (v7);
  v8 = -v5;
  v9 = 7;
  if (-v5 >= a3 || v8 > 0x7E)
  {
    return v9;
  }

  if (*a4)
  {
    v4 = 1 - v5;
    *a2 = -v5 | 0x80;
    if (v8 < ~a2)
    {
      v10 = (a2 - v5);
      if (a2 - v5 != -2)
      {
        v11 = a2 + *a4;
        while (v10 != -1)
        {
          if (v10 >= v11 || v10 < a2)
          {
            goto LABEL_22;
          }

          *v10-- = result;
          v7 = result > 0xFF;
          result >>= 8;
          if (!v7)
          {
            if (v8 >= *a4)
            {
              goto LABEL_22;
            }

            goto LABEL_19;
          }
        }
      }
    }

    goto LABEL_23;
  }

LABEL_22:
  __break(0x5519u);
LABEL_23:
  __break(0x5513u);
  return result;
}

unint64_t DERLengthOfItem(unint64_t result, unint64_t a2)
{
  v2 = result & 0x1FFFFFFFFFFFFFFFLL;
  v3 = 1;
  if ((result & 0x1FFFFFFFFFFFFFFFLL) >= 0x1F)
  {
    do
    {
      ++v3;
      v4 = v2 > 0x7F;
      v2 >>= 7;
    }

    while (v4);
  }

  v5 = 1;
  if (a2 >= 0x80)
  {
    v6 = a2;
    do
    {
      ++v5;
      v4 = v6 > 0xFF;
      v6 >>= 8;
    }

    while (v4);
  }

  v7 = __CFADD__(v3, v5);
  v8 = v3 + v5;
  if (v7 || (result = v8 + a2, __CFADD__(v8, a2)))
  {
    __break(0x5500u);
  }

  return result;
}

unint64_t DEREncodeItemSized(unint64_t a1, unint64_t a2, const void *a3, unint64_t a4, unint64_t a5, unint64_t *a6)
{
  v22[1] = *MEMORY[0x1E69E9840];
  v12 = *a6;
  v13 = DERLengthOfItem(a1, a2);
  if (v13 > a5)
  {
    return 7;
  }

  v15 = v13;
  if (v13 > *a6)
  {
    goto LABEL_21;
  }

  *a6 = v13;
  v22[0] = v13;
  if (v13 > v12)
  {
    goto LABEL_21;
  }

  result = DEREncodeTag(a1, a4, v22);
  if (result)
  {
    return result;
  }

  v16 = v22[0];
  if (__CFADD__(a4, v22[0]))
  {
LABEL_22:
    __break(0x5513u);
    goto LABEL_23;
  }

  v17 = v15 >= v22[0];
  v18 = v15 - v22[0];
  if (!v17)
  {
    goto LABEL_23;
  }

  v19 = a4 + v12;
  v20 = a4 + v22[0];
  v22[0] = v18;
  if (a4 + v16 > a4 + v12 || v20 < a4 || v18 > v12 - v16)
  {
LABEL_21:
    __break(0x5519u);
  }

  result = DEREncodeLengthSized(a2, v20, v18, v22);
  if (result)
  {
    return result;
  }

  if (__CFADD__(v20, v22[0]))
  {
    goto LABEL_22;
  }

  if (v18 < v22[0])
  {
LABEL_23:
    __break(0x5515u);
    return result;
  }

  v21 = (v20 + v22[0]);
  if (v19 < v20 + v22[0])
  {
    goto LABEL_21;
  }

  if (v21 < a4)
  {
    goto LABEL_21;
  }

  if (v19 - (v20 + v22[0]) < a2)
  {
    goto LABEL_21;
  }

  memmove(v21, a3, a2);
  if (v21 > &v21[a2])
  {
    goto LABEL_21;
  }

  return 0;
}

uint64_t DEREncodeTag(uint64_t result, unint64_t a2, unint64_t *a3)
{
  v3 = result & 0x1FFFFFFFFFFFFFFFLL;
  if ((result & 0x1FFFFFFFFFFFFFFFuLL) < 0x1F)
  {
    if (*a3)
    {
      *a2 = HIBYTE(result) & 0xE0 | result;
      v8 = 1;
      goto LABEL_16;
    }

    return 7;
  }

  v4 = 0;
  v5 = result & 0x1FFFFFFFFFFFFFFFLL;
  do
  {
    ++v4;
    v6 = v5 > 0x7F;
    v5 >>= 7;
  }

  while (v6);
  v7 = *a3;
  if (v4 >= *a3)
  {
    return 7;
  }

  if (v4 < ~a2)
  {
    *a2 = HIBYTE(result) | 0x1F;
    if (a2 + v4 != -2)
    {
      v8 = v4 + 1;
      *(a2 + v4) = result & 0x7F;
      if (v3 >= 0x80)
      {
        v9 = (a2 + v4 - 1);
        v10 = a2 + v7;
        while (v9 != -2)
        {
          if (v9 >= v10 || v9 < a2)
          {
            goto LABEL_19;
          }

          v11 = v3 >> 14;
          v3 >>= 7;
          *v9-- = v3 | 0x80;
          if (!v11)
          {
            goto LABEL_16;
          }
        }

        goto LABEL_20;
      }

LABEL_16:
      if (v8 <= *a3)
      {
        result = 0;
        *a3 = v8;
        return result;
      }

LABEL_19:
      __break(0x5519u);
    }
  }

LABEL_20:
  __break(0x5513u);
  return result;
}

uint64_t DEREncodeSequenceFromObject(uint64_t a1, unint64_t a2, unint64_t a3, uint64_t a4, uint64_t a5, unint64_t a6, unint64_t a7, unint64_t *a8)
{
  v47[1] = *MEMORY[0x1E69E9840];
  v8 = ~a6;
  if (~a6 < a7)
  {
    goto LABEL_72;
  }

  v11 = *a8;
  v46 = a7;
  v47[0] = 0;
  if (v11 < a7)
  {
    goto LABEL_73;
  }

  v14 = a4;
  result = DEREncodeTag(a1, a6, &v46);
  if (result)
  {
    return result;
  }

  v17 = v46;
  if (v46 > v8)
  {
    goto LABEL_72;
  }

  v18 = a7 - v46;
  if (a7 < v46)
  {
    goto LABEL_74;
  }

  v19 = a6 + a7;
  v20 = a6 + v46;
  if (a6 + v46 < v19)
  {
    result = DERContentLengthOfEncodedSequence(a2, a3, v14, a5, v47);
    if (result)
    {
      return result;
    }

    v46 = v18;
    if (v20 > a6 + v11 || v20 < a6 || v18 > v11 - v17)
    {
      goto LABEL_73;
    }

    v44 = a6 + v11;
    v21 = v47[0];
    result = DEREncodeLengthSized(v47[0], a6 + v17, v18, &v46);
    if (result)
    {
      return result;
    }

    v22 = v44;
    if (__CFADD__(v20, v46))
    {
LABEL_72:
      __break(0x5513u);
      goto LABEL_73;
    }

    v23 = v18 - v46;
    if (v18 >= v46)
    {
      v24 = (v20 + v46);
      if (!__CFADD__(v20 + v46, v21))
      {
        if (&v24[v21] > v19)
        {
          return 7;
        }

        if (v14)
        {
          v25 = 0;
          v43 = a2 + a3;
          v42 = ~a5;
          v26 = a5 + 8;
          v41 = 24 * v14;
          do
          {
            if (v25 > v42)
            {
              goto LABEL_72;
            }

            v27 = *(v26 - 8);
            if (v27 > ~a2)
            {
              goto LABEL_72;
            }

            v28 = (a2 + v27);
            v29 = *(v26 + 8);
            if ((v29 & 0x200) != 0)
            {
              v38 = v28 < a2 || (v28 + 2) > v43;
              if (v38 || v24 > v22 || v24 < a6)
              {
                goto LABEL_73;
              }

              v36 = v28[1];
              v37 = v22 - v24;
            }

            else
            {
              if (v29)
              {
                if (v28 < a2 || (v28 + 2) > v43)
                {
                  goto LABEL_73;
                }

                if (!v28[1])
                {
                  goto LABEL_69;
                }
              }

              v46 = v23;
              if (v24 > v22 || v24 < a6 || v23 > v22 - v24)
              {
                goto LABEL_73;
              }

              result = DEREncodeTag(*v26, v24, &v46);
              if (result)
              {
                return result;
              }

              if (__CFADD__(v24, v46))
              {
                goto LABEL_72;
              }

              v31 = v23 - v46;
              if (v23 < v46)
              {
                goto LABEL_74;
              }

              if (v28 < a2 || (v28 + 2) > v43)
              {
                goto LABEL_73;
              }

              v32 = v28[1];
              v47[0] = v32;
              v33 = 1;
              if ((v29 & 0x100) != 0 && v32 && **v28 < 0)
              {
                v33 = 0;
                v47[0] = ++v32;
              }

              v34 = &v24[v46];
              v46 = v23 - v46;
              if (v34 > v44 || v34 < a6 || v31 > v44 - v34)
              {
                goto LABEL_73;
              }

              result = DEREncodeLengthSized(v32, v34, v31, &v46);
              if (result)
              {
                return result;
              }

              v35 = v46;
              if (__CFADD__(v34, v46))
              {
                goto LABEL_72;
              }

              v23 = v31 - v46;
              if (v31 < v46)
              {
                goto LABEL_74;
              }

              v24 = (v34 + v46);
              if ((v33 & 1) == 0)
              {
                if (v24 == -1)
                {
                  goto LABEL_72;
                }

                if (v24 >= v44 || v24 < a6)
                {
                  goto LABEL_73;
                }

                *v24 = 0;
                --v23;
                if (v31 == v35)
                {
                  goto LABEL_74;
                }

                ++v24;
              }

              if (v24 > v44 || v24 < a6)
              {
                goto LABEL_73;
              }

              v36 = v28[1];
              v37 = v44 - v24;
            }

            if (v36 > v37)
            {
              goto LABEL_73;
            }

            result = memmove(v24, *v28, v36);
            if (v24 > &v24[v36])
            {
              goto LABEL_73;
            }

            v39 = v28[1];
            v22 = v44;
            if (__CFADD__(v24, v39))
            {
              goto LABEL_72;
            }

            v40 = v23 >= v39;
            v23 -= v39;
            if (!v40)
            {
              goto LABEL_74;
            }

            v24 += v39;
LABEL_69:
            v26 += 24;
            v25 += 24;
          }

          while (v41 != v25);
        }

        if (&v24[-a6] <= *a8)
        {
          result = 0;
          *a8 = &v24[-a6];
          return result;
        }

LABEL_73:
        __break(0x5519u);
      }

      goto LABEL_72;
    }

LABEL_74:
    __break(0x5515u);
    return result;
  }

  return 7;
}

unint64_t DERContentLengthOfEncodedSequence(unint64_t result, unint64_t a2, int a3, uint64_t a4, void *a5)
{
  v5 = 0;
  if (!a3)
  {
LABEL_38:
    result = 0;
LABEL_40:
    *a5 = v5;
    return result;
  }

  v6 = 0;
  v7 = result + a2;
  while (24 * v6 <= ~a4)
  {
    v8 = a4 + 24 * v6;
    v9 = *v8;
    v10 = *v8 > 0xFFFFFFFFFFFFFFEFLL || *v8 + 16 > a2;
    if (v10)
    {
      v5 = 0;
      result = 7;
      goto LABEL_40;
    }

    if (v9 > ~result)
    {
      break;
    }

    v11 = (result + v9);
    v12 = *(v8 + 16);
    if ((v12 & 0x200) == 0)
    {
      if (v12)
      {
        if (v11 < result || (v11 + 2) > v7)
        {
          goto LABEL_43;
        }

        if (!v11[1])
        {
          goto LABEL_37;
        }
      }

      v14 = *(v8 + 8) & 0x1FFFFFFFFFFFFFFFLL;
      v15 = 1;
      if (v14 >= 0x1F)
      {
        do
        {
          ++v15;
          v10 = v14 > 0x7F;
          v14 >>= 7;
        }

        while (v10);
      }

      v16 = __CFADD__(v5, v15);
      v17 = v5 + v15;
      if (v16)
      {
        goto LABEL_42;
      }

      if (v11 < result || (v11 + 2) > v7)
      {
        goto LABEL_43;
      }

      v18 = v11[1];
      if ((v12 & 0x100) != 0)
      {
        if (v18)
        {
          v18 += **v11 >> 7;
          goto LABEL_24;
        }

LABEL_25:
        v19 = 1;
      }

      else
      {
LABEL_24:
        if (v18 < 0x80)
        {
          goto LABEL_25;
        }

        v19 = 1;
        v22 = v18;
        do
        {
          ++v19;
          v10 = v22 > 0xFF;
          v22 >>= 8;
        }

        while (v10);
      }

      v16 = __CFADD__(v17, v19);
      v23 = v17 + v19;
      if (v16)
      {
        goto LABEL_42;
      }

      v16 = __CFADD__(v23, v18);
      v5 = v23 + v18;
      if (v16)
      {
        goto LABEL_42;
      }

      goto LABEL_37;
    }

    if (v11 < result || (v11 + 2) > v7)
    {
      goto LABEL_43;
    }

    v21 = v11[1];
    v16 = __CFADD__(v5, v21);
    v5 += v21;
    if (v16)
    {
      goto LABEL_42;
    }

LABEL_37:
    if (++v6 == a3)
    {
      goto LABEL_38;
    }
  }

  __break(0x5513u);
LABEL_42:
  __break(0x5500u);
LABEL_43:
  __break(0x5519u);
  return result;
}

uint64_t DEREncodeSequence(uint64_t result, unint64_t a2, uint64_t a3, uint64_t a4, unint64_t a5, unint64_t *a6)
{
  if ((a2 | 0x7FFFFFFFFFFFFFFFLL) >= a2)
  {
    return DEREncodeSequenceFromObject(result, a2, ~a2 & 0x7FFFFFFFFFFFFFFFLL, a3, a4, a5, *a6, a6);
  }

  __break(0x5519u);
  return result;
}

unint64_t DERLengthOfEncodedSequenceFromObject(uint64_t a1, unint64_t a2, unint64_t a3, int a4, uint64_t a5, uint64_t *a6)
{
  v17[1] = *MEMORY[0x1E69E9840];
  v17[0] = 0;
  result = DERContentLengthOfEncodedSequence(a2, a3, a4, a5, v17);
  if (!result)
  {
    v9 = a1 & 0x1FFFFFFFFFFFFFFFLL;
    v10 = 1;
    if ((a1 & 0x1FFFFFFFFFFFFFFFuLL) >= 0x1F)
    {
      do
      {
        ++v10;
        v11 = v9 > 0x7F;
        v9 >>= 7;
      }

      while (v11);
    }

    v12 = 1;
    if (v17[0] >= 0x80uLL)
    {
      v13 = v17[0];
      do
      {
        ++v12;
        v11 = v13 > 0xFF;
        v13 >>= 8;
      }

      while (v11);
    }

    v14 = __CFADD__(v10, v12);
    v15 = v10 + v12;
    if (v14 || (v14 = __CFADD__(v15, v17[0]), v16 = v15 + v17[0], v14))
    {
      __break(0x5500u);
    }

    else
    {
      result = 0;
      *a6 = v16;
    }
  }

  return result;
}

uint64_t DERLengthOfEncodedSequence(uint64_t a1, unint64_t a2, int a3, uint64_t a4)
{
  v5[1] = *MEMORY[0x1E69E9840];
  v5[0] = 0;
  if ((a2 | 0x7FFFFFFFFFFFFFFFLL) < a2)
  {
    __break(0x5519u);
  }

  if (DERLengthOfEncodedSequenceFromObject(a1, a2, ~a2 & 0x7FFFFFFFFFFFFFFFLL, a3, a4, v5))
  {
    return 0;
  }

  else
  {
    return v5[0];
  }
}