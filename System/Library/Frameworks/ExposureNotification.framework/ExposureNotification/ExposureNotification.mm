uint64_t ENCloneFileToTemporaryDirectory(int a1, uint64_t a2, void *a3)
{
  v6 = objc_alloc(MEMORY[0x277CBEBC0]);
  v7 = NSTemporaryDirectory();
  v8 = [v6 initFileURLWithPath:v7 isDirectory:1];

  v9 = [MEMORY[0x277CCAA00] defaultManager];
  v10 = [v9 createDirectoryAtURL:v8 withIntermediateDirectories:1 attributes:0 error:a3];

  if (!v10)
  {
    goto LABEL_34;
  }

  v11 = open([v8 fileSystemRepresentation], 0);
  if ((v11 & 0x80000000) == 0)
  {
LABEL_5:
    v32[0] = MEMORY[0x277D85DD0];
    v32[1] = 3221225472;
    v32[2] = __ENCloneFileToTemporaryDirectory_block_invoke;
    v32[3] = &__block_descriptor_36_e5_v8__0l;
    v33 = v11;
    v13 = MEMORY[0x2383EE560](v32);
    v28 = 0;
    v29 = &v28;
    v30 = 0x2020000000;
    v31 = -1;
    v27[0] = MEMORY[0x277D85DD0];
    v27[1] = 3221225472;
    v27[2] = __ENCloneFileToTemporaryDirectory_block_invoke_2;
    v27[3] = &unk_278A4AF10;
    v27[4] = &v28;
    v14 = MEMORY[0x2383EE560](v27);
    if (a2)
    {
      v15 = sandbox_extension_consume();
      v29[3] = v15;
      if (v15 == -1)
      {
        if (*__error())
        {
          v16 = *__error();
          if (!v16)
          {
            goto LABEL_9;
          }
        }

        else
        {
          v16 = 4294960596;
        }

        if (a3)
        {
          ENErrorF(2, "sandbox consume failed: %#m", v16);
          *a3 = v23 = 0;
        }

        else
        {
          v23 = 0;
        }

        goto LABEL_29;
      }
    }

LABEL_9:
    v17 = [MEMORY[0x277CCAD78] UUID];
    v18 = [v17 UUIDString];

    v19 = [v18 UTF8String];
    v20 = [v8 URLByAppendingPathComponent:v18];
    v21 = [v20 fileSystemRepresentation];
    if (!fclonefileat(a1, v11, v19, 0))
    {
      goto LABEL_12;
    }

    if (*__error())
    {
      v22 = *__error();
      if (!v22)
      {
LABEL_12:
        v23 = open(v21, 0);
        if ((v23 & 0x80000000) == 0)
        {
          unlink(v21);
LABEL_28:

LABEL_29:
          v14[2](v14);

          _Block_object_dispose(&v28, 8);
          v13[2](v13);

          goto LABEL_30;
        }

        if (*__error())
        {
          v24 = *__error();
          unlink(v21);
          if (!v24)
          {
            goto LABEL_28;
          }
        }

        else
        {
          unlink(v21);
          v24 = 4294960596;
        }

        if (a3)
        {
          v25 = ENErrorF(2, "Open cloned file failed: %#m", v24);
          goto LABEL_26;
        }

        goto LABEL_27;
      }
    }

    else
    {
      v22 = 4294960596;
    }

    if (a3)
    {
      v25 = ENErrorF(2, "fclonefileat failed: %#m", v22);
LABEL_26:
      v23 = 0;
      *a3 = v25;
      goto LABEL_28;
    }

LABEL_27:
    v23 = 0;
    goto LABEL_28;
  }

  if (*__error())
  {
    v12 = *__error();
    if (!v12)
    {
      goto LABEL_5;
    }
  }

  else
  {
    v12 = 4294960596;
  }

  if (!a3)
  {
LABEL_34:
    v23 = 0;
    goto LABEL_30;
  }

  ENErrorF(2, "Open temp parent FD failed: %#m", v12);
  *a3 = v23 = 0;
LABEL_30:

  return v23;
}

void sub_238291C4C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, ...)
{
  va_start(va, a15);
  (*(v16 + 16))(v16, a2, a3, a4, a5, a6, a7, a8);
  _Block_object_dispose(va, 8);
  (*(v15 + 16))(v15);
  _Unwind_Resume(a1);
}

id ENErrorF(uint64_t a1, const char *a2, ...)
{
  v12[3] = *MEMORY[0x277D85DE8];
  if ((a1 - 1) > 0xF)
  {
    v3 = "?";
  }

  else
  {
    v3 = off_278A4AF50[a1 - 1];
  }

  v4 = NSPrintV();
  v5 = NSPrintF("%s (%@)", v3, v4);
  v6 = objc_alloc(MEMORY[0x277CCA9B8]);
  v11[0] = @"cuErrorDesc";
  v11[1] = @"cuErrorMsg";
  if (v4)
  {
    v7 = v4;
  }

  else
  {
    v7 = &stru_284B06230;
  }

  v12[0] = v5;
  v12[1] = v7;
  v11[2] = *MEMORY[0x277CCA068];
  v12[2] = v5;
  v8 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v12 forKeys:v11 count:3];
  v9 = [v6 initWithDomain:@"ENErrorDomain" code:a1 userInfo:v8];

  return v9;
}

uint64_t __ENCloneFileToTemporaryDirectory_block_invoke_2(uint64_t a1)
{
  result = *(*(*(a1 + 32) + 8) + 24);
  if (result != -1)
  {
    return MEMORY[0x282204FA0]();
  }

  return result;
}

uint64_t ENCompareDiagnosisReportTypes(int a1, int a2)
{
  if ((a1 - 1) > 4)
  {
    v2 = 0;
  }

  else
  {
    v2 = dword_2382C88D8[a1 - 1];
  }

  if ((a2 - 1) > 4)
  {
    v3 = 0;
  }

  else
  {
    v3 = dword_2382C88D8[a2 - 1];
  }

  v4 = v2 > v3;
  if (v2 >= v3)
  {
    v5 = 0;
  }

  else
  {
    v5 = -1;
  }

  if (v4)
  {
    return 1;
  }

  else
  {
    return v5;
  }
}

SecKeyRef ENCopyPublicKeyFromBase64String(void *a1, void *a2)
{
  v22[3] = *MEMORY[0x277D85DE8];
  v3 = a1;
  v4 = v3;
  if (!v3)
  {
    if (a2)
    {
      ENErrorF(2, "Nil key string");
LABEL_11:
      *a2 = v17 = 0;
      goto LABEL_6;
    }

LABEL_12:
    v17 = 0;
    goto LABEL_6;
  }

  if ([v3 length] <= 0x41)
  {
    if (a2)
    {
      ENErrorF(15, "Invalid key length");
      goto LABEL_11;
    }

    goto LABEL_12;
  }

  v5 = [objc_alloc(MEMORY[0x277CBEA90]) initWithBase64EncodedString:v4 options:1];
  v6 = [v5 subdataWithRange:{objc_msgSend(v5, "length") - 65, 65}];
  v20 = 0;
  v7 = *MEMORY[0x277CDC030];
  v8 = *MEMORY[0x277CDBFE0];
  v21[0] = *MEMORY[0x277CDC028];
  v21[1] = v8;
  v9 = *MEMORY[0x277CDC000];
  v22[0] = v7;
  v22[1] = v9;
  v21[2] = *MEMORY[0x277CDC018];
  v22[2] = &unk_284B0EF58;
  v10 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v22 forKeys:v21 count:3];
  v17 = SecKeyCreateWithData(v6, v10, &v20);
  v18 = v20;
  if (!v17)
  {
    ENCopyPublicKeyFromBase64String_cold_1(a2, v20, v11, v12, v13, v14, v15, v16);
  }

LABEL_6:
  return v17;
}

id ENNestedErrorF(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  v23[4] = *MEMORY[0x277D85DE8];
  v10 = a1;
  if ((a2 - 1) > 0xF)
  {
    v11 = "?";
  }

  else
  {
    v11 = off_278A4AF50[a2 - 1];
  }

  v12 = NSPrintV();
  v13 = NSPrintF("%s (%@)", v11, v12);
  v14 = objc_alloc(MEMORY[0x277CCA9B8]);
  v22[0] = @"cuErrorDesc";
  v22[1] = @"cuErrorMsg";
  v15 = &stru_284B06230;
  if (v12)
  {
    v15 = v12;
  }

  v23[0] = v13;
  v23[1] = v15;
  v16 = *MEMORY[0x277CCA068];
  v23[2] = v13;
  v17 = *MEMORY[0x277CCA7E8];
  v22[2] = v16;
  v22[3] = v17;
  v18 = v10;
  if (!v10)
  {
    v18 = NSErrorF(*MEMORY[0x277CCA590], 4294960596, "Unknown");
  }

  v23[3] = v18;
  v19 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v23 forKeys:v22 count:4];
  v20 = [v14 initWithDomain:@"ENErrorDomain" code:a2 userInfo:v19];

  if (!v10)
  {
  }

  return v20;
}

id ENDataVaultPath()
{
  v0 = NSHomeDirectory();
  v1 = [v0 stringByAppendingPathComponent:@"Library/ExposureNotification"];

  return v1;
}

id ENDataVaultURL()
{
  v0 = MEMORY[0x277CBEBC0];
  v1 = ENDataVaultPath();
  v2 = [v0 fileURLWithPath:v1 isDirectory:1];

  return v2;
}

id ENDefaultExpirationDate(void *a1)
{
  v1 = a1;
  v2 = v1;
  if (v1)
  {
    v3 = v1;
  }

  else
  {
    v3 = [MEMORY[0x277CBEAA8] date];
  }

  v4 = v3;
  v5 = [v3 dateByAddingTimeInterval:1209600.0];

  return v5;
}

const char *ENErrorMetricTypeToString(int a1)
{
  if (a1 > 3003)
  {
    if (a1 <= 5002)
    {
      if (a1 > 4002)
      {
        if (a1 > 5000)
        {
          if (a1 == 5001)
          {
            return "APIErrorInsufficientStorage";
          }

          else
          {
            return "APIErrorAPIMisuse";
          }
        }

        if (a1 == 4003)
        {
          return "ExposureDatabaseMigrationFailure";
        }

        if (a1 == 5000)
        {
          return "APIErrorUnsupported";
        }
      }

      else
      {
        if (a1 > 4000)
        {
          if (a1 == 4001)
          {
            return "ExposureDatabaseUnknownError";
          }

          else
          {
            return "ExposureDatabaseDiskFull";
          }
        }

        if (a1 == 3004)
        {
          return "ExposureDetectionManagerKeyFileProcessingFailure";
        }

        if (a1 == 4000)
        {
          return "ExposureDatabaseCorruption";
        }
      }
    }

    else if (a1 <= 5999)
    {
      if (a1 <= 5004)
      {
        if (a1 == 5003)
        {
          return "APIErrorInternal";
        }

        else
        {
          return "APIErrorInsufficientMemory";
        }
      }

      if (a1 == 5005)
      {
        return "APIErrorBadFormat";
      }

      if (a1 == 5006)
      {
        return "APIErrorDataInaccessible";
      }
    }

    else
    {
      if (a1 <= 6001)
      {
        if (a1 == 6000)
        {
          return "ConfigurationManagerUnknownNetworkError";
        }

        else
        {
          return "ConfigurationManagerSigValidationFailure";
        }
      }

      switch(a1)
      {
        case 6002:
          return "ConfigurationManagerBadResponseFormat";
        case 6003:
          return "ConfigurationManagerStoreFailure";
        case 6004:
          return "ConfigurationManagerInvalidResponse";
      }
    }
  }

  else if (a1 <= 1999)
  {
    if (a1 > 1002)
    {
      if (a1 <= 1004)
      {
        if (a1 == 1003)
        {
          return "AdvertisementDatabaseFailedToOpenAllStores";
        }

        else
        {
          return "AdvertisementDatabaseUnauthorized";
        }
      }

      if (a1 == 1005)
      {
        return "AdvertisementDatabaseTempStoreLimit";
      }

      if (a1 == 1006)
      {
        return "AdvertisementDatabaseAEMDecryptionFailure";
      }
    }

    else
    {
      if (a1 > 1000)
      {
        if (a1 == 1001)
        {
          return "AdvertisementDatabaseUnknownError";
        }

        else
        {
          return "AdvertisementDatabaseDiskFull";
        }
      }

      if (!a1)
      {
        return "Unknown";
      }

      if (a1 == 1000)
      {
        return "AdvertisementDatabaseCorruption";
      }
    }
  }

  else
  {
    if (a1 <= 2003)
    {
      if (a1 > 2001)
      {
        if (a1 == 2002)
        {
          return "DownloadManagerKeyFileNoResponse";
        }

        else
        {
          return "DownloadManagerKeyFileBadFormat";
        }
      }

      else if (a1 == 2000)
      {
        return "DownloadManagerIndexFileNoResponse";
      }

      else
      {
        return "DownloadManagerIndexFileBadFormat";
      }
    }

    if (a1 > 3000)
    {
      if (a1 == 3001)
      {
        return "ExposureDetectionManagerUnableToOpenSigFile";
      }

      if (a1 == 3002)
      {
        return "ExposureDetectionManagerUnableToOpenKeyFile";
      }

      return "ExposureDetectionManagerSigValidationFailure";
    }

    if (a1 == 2004)
    {
      return "DownloadManagerStateFileCorrupt";
    }

    if (a1 == 3000)
    {
      return "ExposureDetectionManagerBadArchive";
    }
  }

  if ((a1 - 10000) >= 0x3E8)
  {
    v2 = "?";
  }

  else
  {
    v2 = "ConfigurationManagerHTTPErrorStatus";
  }

  if ((a1 - 9000) >= 0x3E8)
  {
    v3 = v2;
  }

  else
  {
    v3 = "DownloadManagerKeyFileHTTPErrorStatus";
  }

  if ((a1 - 8000) >= 0x3E8)
  {
    return v3;
  }

  else
  {
    return "DownloadManagerIndexFileHTTPErrorStatus";
  }
}

id ENFrameworkBundle(uint64_t a1)
{
  if (ENFrameworkBundle_sOnce != -1)
  {
    ENFrameworkBundle_cold_1();
  }

  v2 = ENFrameworkBundle_sBundle;

  return v2;
}

void __ENFrameworkBundle_block_invoke()
{
  v0 = [MEMORY[0x277CCA8D8] bundleWithIdentifier:@"com.apple.ExposureNotification"];
  v1 = ENFrameworkBundle_sBundle;
  ENFrameworkBundle_sBundle = v0;

  if (!ENFrameworkBundle_sBundle)
  {
    v2 = [objc_alloc(MEMORY[0x277CBEBC0]) initFileURLWithPath:@"/System/Library/Frameworks/ExposureNotification.framework" isDirectory:1];
    if (v2)
    {
      v5 = v2;
      v3 = [MEMORY[0x277CCA8D8] bundleWithURL:v2];
      v4 = ENFrameworkBundle_sBundle;
      ENFrameworkBundle_sBundle = v3;

      v2 = v5;
    }
  }
}

id ENLocalizedString(void *a1)
{
  v1 = a1;
  v2 = ENFrameworkBundle(v1);
  v3 = v2;
  if (v2)
  {
    v4 = [v2 localizations];
    v5 = [MEMORY[0x277CBEAF8] preferredLanguages];
    v6 = v5;
    if (v4)
    {
      if (v5)
      {
        v7 = [MEMORY[0x277CCA8D8] preferredLocalizationsFromArray:v4 forPreferences:v5];
        v8 = [v7 firstObject];

        if (v8)
        {
          v9 = [v3 pathForResource:@"Localizable" ofType:@"strings" inDirectory:@"." forLocalization:v8];
          if (v9)
          {
            v10 = v9;
            v11 = [objc_alloc(MEMORY[0x277CBEAC0]) initWithContentsOfFile:v9];
            v12 = [v11 objectForKeyedSubscript:v1];

            if (v12)
            {
LABEL_10:

              goto LABEL_11;
            }
          }

          else
          {
          }
        }
      }
    }

    v12 = [v3 localizedStringForKey:v1 value:&stru_284B06230 table:@"Localizable"];
    goto LABEL_10;
  }

  v12 = v1;
LABEL_11:

  return v12;
}

void ENWriteTemporaryExposureKeysCSV(uint64_t a1, void *a2)
{
  v16 = *MEMORY[0x277D85DE8];
  v3 = a2;
  FPrintF(a1, "# Diagnosis Keys: %##N UTC\n");
  FPrintF(a1, "# Format: TEK,ENIN,Transmission Risk,Rolling Period,daysSinceOnsetOfSymptoms,diagnosisReportType, vaccinated, variantOfConcernType\n");
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  obj = v3;
  v4 = [obj countByEnumeratingWithState:&v11 objects:v15 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = *v12;
    do
    {
      for (i = 0; i != v5; ++i)
      {
        if (*v12 != v6)
        {
          objc_enumerationMutation(obj);
        }

        v8 = *(*(&v11 + 1) + 8 * i);
        v9 = [v8 keyData];
        FPrintF(a1, "%@,%u,%d,%u,", v9, [v8 rollingStartNumber], objc_msgSend(v8, "transmissionRiskLevel"), objc_msgSend(v8, "rollingPeriod"));

        if ([v8 daysSinceOnsetOfSymptoms] != 0x7FFFFFFFFFFFFFFFLL)
        {
          FPrintF(a1, "%ld", [v8 daysSinceOnsetOfSymptoms]);
        }

        FPrintF(a1, ",%d", [v8 diagnosisReportType]);
        FPrintF(a1, ",%s", [v8 vaccinated]);
        FPrintF(a1, ",%d\n", [v8 variantOfConcernType]);
        FPrintF(a1, "\n");
      }

      v5 = [obj countByEnumeratingWithState:&v11 objects:v15 count:16];
    }

    while (v5);
  }

  FPrintF(a1, "# Total keys: %d\n", [obj count]);
}

id ENXPCDecodeSecureObject(void *a1, const char *a2, uint64_t a3, void *a4)
{
  v7 = a1;
  if (MEMORY[0x2383EE9C0]() == MEMORY[0x277D86468])
  {
    v8 = xpc_dictionary_get_value(v7, a2);
    v9 = v8;
    if (v8)
    {
      if (MEMORY[0x2383EE9C0](v8) != MEMORY[0x277D86458])
      {
        if (a4)
        {
          ENErrorF(2, "Invalid value type for %s");
LABEL_25:
          *a4 = v15 = 0;
          goto LABEL_10;
        }

        goto LABEL_26;
      }

      length = 0;
      data = xpc_dictionary_get_data(v7, a2, &length);
      if (data)
      {
        if (length)
        {
          v11 = data;
          v12 = objc_alloc(MEMORY[0x277CBEA90]);
          v13 = [v12 initWithBytesNoCopy:v11 length:length freeWhenDone:0];
          v14 = [MEMORY[0x277CCAAC8] unarchivedObjectOfClass:a3 fromData:v13 error:a4];
          if (v14)
          {
            if (objc_opt_isKindOfClass())
            {
              v15 = v14;
LABEL_9:

LABEL_10:
              goto LABEL_11;
            }

            if (a4)
            {
              ENErrorF(15, "Illegal archived value for %s", a2);
              *a4 = v15 = 0;
              goto LABEL_9;
            }
          }

          v15 = 0;
          goto LABEL_9;
        }

        if (a4)
        {
          v17 = "Zero secure coded XPC bytes";
          goto LABEL_24;
        }

LABEL_26:
        v15 = 0;
        goto LABEL_10;
      }

      if (!a4)
      {
        goto LABEL_26;
      }

      v17 = "Null secure coded XPC bytes";
    }

    else
    {
      if (!a4)
      {
        goto LABEL_26;
      }

      v18 = a2;
      v17 = "Missing value for %s";
    }

LABEL_24:
    ENErrorF(15, v17, v18);
    goto LABEL_25;
  }

  if (a4)
  {
    ENErrorF(2, "inXPC must be a dictionary");
    *a4 = v15 = 0;
  }

  else
  {
    v15 = 0;
  }

LABEL_11:

  return v15;
}

id ENXPCDecodeSecureObjectIfPresent(void *a1, const char *a2, uint64_t a3, void *a4)
{
  v7 = a1;
  if (MEMORY[0x2383EE9C0]() == MEMORY[0x277D86468])
  {
    v8 = xpc_dictionary_get_value(v7, a2);
    if (v8)
    {
      v9 = ENXPCDecodeSecureObject(v7, a2, a3, a4);
    }

    else
    {
      v9 = 0;
    }
  }

  else if (a4)
  {
    ENErrorF(2, "inXPC must be a dictionary");
    *a4 = v9 = 0;
  }

  else
  {
    v9 = 0;
  }

  return v9;
}

BOOL ENXPCEncodeSecureObject(void *a1, const char *a2, void *a3, void *a4)
{
  v7 = a1;
  v8 = a3;
  if (MEMORY[0x2383EE9C0](v7) != MEMORY[0x277D86468])
  {
    if (a4)
    {
      ENErrorF(2, "inXPC must be a dictionary");
LABEL_11:
      *a4 = v11 = 0;
      goto LABEL_6;
    }

LABEL_12:
    v11 = 0;
    goto LABEL_6;
  }

  if (!v8)
  {
    if (a4)
    {
      ENErrorF(2, "Nil object for XPC secure coding");
      goto LABEL_11;
    }

    goto LABEL_12;
  }

  v9 = [MEMORY[0x277CCAAB0] archivedDataWithRootObject:v8 requiringSecureCoding:1 error:a4];
  v10 = v9;
  v11 = v9 != 0;
  if (v9)
  {
    xpc_dictionary_set_data(v7, a2, [v9 bytes], objc_msgSend(v9, "length"));
  }

LABEL_6:
  return v11;
}

uint64_t ENXPCGetNextClientID()
{
  if (ENXPCGetNextClientID_sOnce != -1)
  {
    ENXPCGetNextClientID_cold_1();
  }

  return atomic_fetch_add(&ENXPCGetNextClientID_sNext, 1u) + 1;
}

uint64_t __ENXPCGetNextClientID_block_invoke()
{
  result = RandomBytes();
  ENXPCGetNextClientID_sNext = word_27DF03F62 << 16;
  return result;
}

_BYTE *ENAEMCrypt(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  ccaes_ctr_crypt_mode();
  result = ccctr_one_shot();
  if (result)
  {
    v6 = ENAEMCrypt_cold_1();
    return ENRPIMetadataDeserialize(v6, v7);
  }

  return result;
}

_BYTE *ENRPIMetadataDeserialize(_BYTE *result, unsigned __int8 *a2)
{
  v2 = *a2;
  v3 = a2[1];
  if (v3 >= 4)
  {
    v4 = 1;
  }

  else
  {
    v4 = 2;
  }

  v5 = (v2 >> 4) & 3;
  if (v5)
  {
    v6 = v2 > 0x3F;
  }

  else
  {
    v6 = 0;
  }

  *result = *a2 >> 6;
  result[1] = v5;
  if (v6)
  {
    v7 = (v2 >> 2) & 3;
  }

  else
  {
    v7 = v4;
  }

  result[2] = v3;
  result[3] = v7;
  return result;
}

_BYTE *ENRPIMetadataSerialize(_BYTE *result, uint64_t a2)
{
  *a2 = (*result << 6) | (16 * (result[1] & 3)) | (4 * (result[3] & 3));
  *(a2 + 1) = result[2];
  *(a2 + 2) = 0;
  return result;
}

uint64_t ENAEMKDerive(uint64_t a1, uint64_t a2)
{
  ccsha256_di();
  result = cchkdf();
  if (result)
  {
    v3 = ENAEMKDerive_cold_1();
    return ENRPIDerive(v3, v4, v5);
  }

  return result;
}

uint64_t ENRPIDerive(uint64_t a1, uint64_t a2, int a3)
{
  ccaes_ecb_encrypt_mode();
  result = ccecb_one_shot();
  if (result)
  {
    ENRPIDerive_cold_1();
  }

  return result;
}

uint64_t ENRPIDeriveBatch(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  v12[1] = *MEMORY[0x277D85DE8];
  MEMORY[0x28223BE20]();
  v7 = &v12[-2 * v6];
  bzero(v7, v8);
  if (a4)
  {
    v9 = a4;
    v10 = v7;
    do
    {
      *(v10 + 2) = 18768;
      *v10 = 1378700869;
      *(v10 + 6) = 0;
      *(v10 + 5) = 0;
      *(v10 + 3) = a3;
      v10 += 2;
      ++a3;
      --v9;
    }

    while (v9);
  }

  ccaes_ecb_encrypt_mode();
  result = ccecb_one_shot();
  if (result)
  {
    ENRPIDeriveBatch_cold_1();
  }

  return result;
}

ENExposureDetectionHistoryCheck *ENRPIKDerive(uint64_t a1, uint64_t a2)
{
  ccsha256_di();
  result = cchkdf();
  if (result)
  {
    v3 = ENRPIKDerive_cold_1();
    return ENTEKGenerate(v3);
  }

  return result;
}

ENExposureDetectionHistoryCheck *ENTEKGenerate(uint64_t a1)
{
  v2 = ccrng();
  result = (*v2)(v2, 16, a1);
  if (result)
  {
    v4 = ENTEKGenerate_cold_1();
    return [(ENExposureDetectionHistoryCheck *)v4 init];
  }

  return result;
}

void sub_238297064(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, uint64_t a55, uint64_t a56, uint64_t a57, uint64_t a58, uint64_t a59, uint64_t a60, uint64_t a61, uint64_t a62, ...)
{
  va_start(va, a62);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t __Block_byref_object_copy_(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_238297F08(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, ...)
{
  va_start(va, a16);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_2382998D0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, ...)
{
  va_start(va, a15);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_23829A788(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, ...)
{
  va_start(va, a15);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t OUTLINED_FUNCTION_2(uint64_t a1, uint64_t a2, uint64_t a3)
{

  return CUXPCDecodeDouble();
}

uint64_t OUTLINED_FUNCTION_4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{

  return CUXPCDecodeSInt64RangedEx();
}

void LogInvalidValueForKey(void *a1, void *a2)
{
  v4 = a2;
  v3 = [a1 objectForKeyedSubscript:?];
  if (v3)
  {
    if (gLogCategory__ENRegionServerConfiguration <= 10 && (gLogCategory__ENRegionServerConfiguration != -1 || _LogCategory_Initialize()))
    {
      LogPrintF_safe();
    }
  }

  else if (gLogCategory__ENRegionServerConfiguration <= 10 && (gLogCategory__ENRegionServerConfiguration != -1 || _LogCategory_Initialize()))
  {
    LogInvalidValueForKey_cold_1();
  }
}

uint64_t OUTLINED_FUNCTION_3_0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, int a26, char a27)
{

  return CFDictionaryGetInt64Ranged();
}

void OUTLINED_FUNCTION_4_0(uint64_t a1)
{
  v3 = *(v1 + 56);
  *(v1 + 56) = a1;
}

void OUTLINED_FUNCTION_5(uint64_t a1)
{
  v3 = *(v1 + 48);
  *(v1 + 48) = a1;
}

void sub_2382A0B44(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, ...)
{
  va_start(va, a25);
  (*(v25 + 16))(v25, a2, a3, a4, a5, a6, a7, a8);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t __Block_byref_object_copy__0(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_2382A19BC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, ...)
{
  va_start(va, a22);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_2382A1F90(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, ...)
{
  va_start(va, a26);
  (*(a9 + 16))(a9, a2, a3, a4, a5, a6, a7, a8);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t OUTLINED_FUNCTION_3_1(uint64_t a1, uint64_t a2, uint64_t a3, ...)
{

  return CUXPCDecodeUInt64RangedEx();
}

uint64_t OUTLINED_FUNCTION_5_0()
{

  return [v0 readDataIntoBuffer:v2 - 192 maxLength:128 error:v1];
}

void sub_2382A3910(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, ...)
{
  va_start(va1, a16);
  va_start(va, a16);
  v17 = va_arg(va1, void);
  v19 = va_arg(va1, void);
  v20 = va_arg(va1, void);
  v21 = va_arg(va1, void);
  v22 = va_arg(va1, void);
  v23 = va_arg(va1, void);
  _Block_object_dispose(va, 8);
  _Block_object_dispose(va1, 8);
  _Unwind_Resume(a1);
}

uint64_t __Block_byref_object_copy__1(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_2382A5758(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, ...)
{
  va_start(va, a20);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t __Block_byref_object_copy__2(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_2382A83C0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, ...)
{
  va_start(va, a20);
  (*(v20 + 16))(v20, a2, a3, a4, a5, a6, a7, a8);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_2382A89A8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, ...)
{
  va_start(va, a15);
  _Block_object_dispose(va, 8);
  (*(v15 + 16))(v15);
  _Block_object_dispose((v16 - 112), 8);
  _Unwind_Resume(a1);
}

void sub_2382AA034(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, ...)
{
  va_start(va, a20);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_2382AB8D0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, ...)
{
  va_start(va, a20);
  (*(v20 + 16))(v20, a2, a3, a4, a5, a6, a7, a8);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_2382AC230(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  (*(v12 + 16))(v12, a2, a3, a4, a5, a6, a7, a8);
  (*(v11 + 16))(v11);
  (*(v10 + 16))(v10);
  (*(a10 + 16))();
  _Block_object_dispose((v13 - 160), 8);
  _Unwind_Resume(a1);
}

void sub_2382ACE5C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, ...)
{
  va_start(va, a20);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_2382AD3F8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, ...)
{
  va_start(va, a20);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_2382B3A90(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, ...)
{
  va_start(va, a16);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void OUTLINED_FUNCTION_7(uint64_t a1)
{
  v3 = *(*v1 + 8);
  v4 = *(v3 + 40);
  *(v3 + 40) = a1;
}

void __DefaultDispatchQueue_block_invoke(uint64_t a1, uint64_t a2)
{
  v2 = objc_opt_class();
  v8 = NSStringFromClass(v2);
  v3 = v8;
  v4 = [v8 UTF8String];
  v5 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
  v6 = dispatch_queue_create(v4, v5);
  v7 = DefaultDispatchQueue_defaultQueue;
  DefaultDispatchQueue_defaultQueue = v6;
}

void sub_2382B6F94(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, ...)
{
  va_start(va, a16);
  (*(v16 + 16))(v16, a2, a3, a4, a5, a6, a7, a8);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

Class ENUICreateRemotePresentationController()
{
  v6 = *MEMORY[0x277D85DE8];
  v3[0] = 0;
  if (!HealthExposureNotificationUILibraryCore_frameworkLibrary)
  {
    v3[1] = MEMORY[0x277D85DD0];
    v3[2] = 3221225472;
    v3[3] = __HealthExposureNotificationUILibraryCore_block_invoke;
    v3[4] = &__block_descriptor_40_e5_v8__0l;
    v3[5] = v3;
    v4 = xmmword_278A4BC88;
    v5 = 0;
    HealthExposureNotificationUILibraryCore_frameworkLibrary = _sl_dlopen();
  }

  if (!HealthExposureNotificationUILibraryCore_frameworkLibrary)
  {
    ENUICreateRemotePresentationController_cold_1(v3);
  }

  if (v3[0])
  {
    free(v3[0]);
  }

  v0 = NSClassFromString(&cfstr_Enuipresentati.isa);
  if (v0)
  {
    v1 = v0;
    if ([(objc_class *)v0 conformsToProtocol:&unk_284B18CE8])
    {
      v0 = objc_alloc_init(v1);
    }

    else
    {
      v0 = 0;
    }
  }

  return v0;
}

uint64_t __HealthExposureNotificationUILibraryCore_block_invoke(uint64_t a1)
{
  result = _sl_dlopen();
  HealthExposureNotificationUILibraryCore_frameworkLibrary = result;
  return result;
}

void sub_2382B86B8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, ...)
{
  va_start(va, a16);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t __Block_byref_object_copy__3(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_2382B8A44(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, ...)
{
  va_start(va, a15);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t OUTLINED_FUNCTION_5_2(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{

  return [v10 _writeBytes:&a9 length:8 error:{v9, a6, a7, a8}];
}

uint64_t OUTLINED_FUNCTION_6_0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, int a10, char a11)
{

  return [v12 _writeBytes:&a11 length:4 error:{v11, a6, a7, a8}];
}

uint64_t OUTLINED_FUNCTION_9_0(void *a1, const char *a2, uint64_t a3, uint64_t a4, uint64_t a5)
{

  return [a1 writeVarInt:8 * a4 error:a5];
}

uint64_t OUTLINED_FUNCTION_11_0()
{
  result = 0;
  *v0 = v1;
  return result;
}

uint64_t OUTLINED_FUNCTION_12_0(void *a1, const char *a2, uint64_t a3, uint64_t a4, uint64_t a5)
{

  return [a1 writeVarInt:(8 * a4) | 1 error:a5];
}

id ENUIRemoteViewControllerInterface()
{
  v0 = [MEMORY[0x277CCAE90] interfaceWithProtocol:&unk_284B18DA8];
  v1 = [objc_alloc(MEMORY[0x277CBEB98]) initWithObjects:{objc_opt_class(), 0}];
  [v0 setClasses:v1 forSelector:sel_setPresentationRequest_ argumentIndex:0 ofReply:0];

  return v0;
}

void sub_2382BA328(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, ...)
{
  va_start(va, a18);
  (*(v18 + 16))(v18, a2, a3, a4, a5, a6, a7, a8);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t __Block_byref_object_copy__4(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void _responseCallback(uint64_t a1, uint64_t a2)
{
  pthread_mutex_lock(&gENUserAlertMutex);
  v4 = gENUserAlertMap;
  v5 = [MEMORY[0x277CCABB0] numberWithLong:a1];
  v6 = [v4 objectForKeyedSubscript:v5];

  pthread_mutex_unlock(&gENUserAlertMutex);
  [v6 _responseCallback:a1 responseFlags:a2];
}

BOOL ENValidateRegionCodeISO(void *a1)
{
  v1 = a1;
  if (!v1)
  {
    v9 = 0;
    goto LABEL_7;
  }

  v2 = objc_autoreleasePoolPush();
  v3 = v1;
  if ([v3 containsString:@"-"])
  {
    v4 = [v3 componentsSeparatedByString:@"-"];
    if ([v4 count] != 2)
    {
      v9 = 0;
      goto LABEL_6;
    }

    v5 = [v4 firstObject];

    v3 = v5;
  }

  v4 = [MEMORY[0x277CBEAC0] dictionaryWithContentsOfFile:@"/System/Library/Carrier Bundles/iPhone/Default.bundle/ISO2MCC.plist"];
  v6 = [v3 lowercaseString];
  v7 = [v4 objectForKey:v6];

  v8 = [v7 firstObject];
  v9 = v8 != 0;

LABEL_6:
  objc_autoreleasePoolPop(v2);
LABEL_7:

  return v9;
}

void *ENCopyPublicKeyFromBase64String_cold_1(void *result, void *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  if (result)
  {
    v8 = result;
    result = ENNestedErrorF(a2, 15, "Bad public key", a4, a5, a6, a7, a8, v9);
    *v8 = result;
  }

  return result;
}

BOOL UInt64NumIsInRange(void *a1)
{
  v1 = a1;
  objc_opt_class();
  v2 = (objc_opt_isKindOfClass() & 1) != 0 && [v1 unsignedLongLongValue] < 0x10000;

  return v2;
}

void ENUICreateRemotePresentationController_cold_1(void *a1)
{
  v2 = [MEMORY[0x277CCA890] currentHandler];
  v3 = [MEMORY[0x277CCACA8] stringWithUTF8String:"void *HealthExposureNotificationUILibrary(void)"];
  [v2 handleFailureInFunction:v3 file:@"ENRemotePresentationController.m" lineNumber:12 description:{@"%s", *a1}];

  __break(1u);
}