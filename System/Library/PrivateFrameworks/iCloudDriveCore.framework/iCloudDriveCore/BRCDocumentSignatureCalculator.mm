@interface BRCDocumentSignatureCalculator
+ (id)_calculateSignatureForFileAtURL:(id)l boundaryKey:(id)key error:(id *)error;
+ (id)_calculateSignatureForPackageAtURL:(id)l boundaryKey:(id)key error:(id *)error;
+ (id)calculateSignatureForScopedURLWrapper:(id)wrapper boundaryKey:(id)key error:(id *)error;
+ (id)calculateSignatureForURL:(id)l boundaryKey:(id)key error:(id *)error;
@end

@implementation BRCDocumentSignatureCalculator

+ (id)calculateSignatureForURL:(id)l boundaryKey:(id)key error:(id *)error
{
  v30 = *MEMORY[0x277D85DE8];
  lCopy = l;
  keyCopy = key;
  startAccessingSecurityScopedResource = [lCopy startAccessingSecurityScopedResource];
  v21 = 0;
  defaultManager = [MEMORY[0x277CCAA00] defaultManager];
  path = [lCopy path];
  v13 = [defaultManager fileExistsAtPath:path isDirectory:&v21];

  if (v13)
  {
    if (v21 == 1)
    {
      [self _calculateSignatureForPackageAtURL:lCopy boundaryKey:keyCopy error:error];
    }

    else
    {
      [self _calculateSignatureForFileAtURL:lCopy boundaryKey:keyCopy error:error];
    }
    v18 = ;
    if (!startAccessingSecurityScopedResource)
    {
      goto LABEL_11;
    }

    goto LABEL_10;
  }

  v14 = [MEMORY[0x277CCA9B8] br_errorWithPOSIXCode:2];
  if (v14)
  {
    v15 = brc_bread_crumbs();
    v16 = brc_default_log();
    if (os_log_type_enabled(v16, 0x90u))
    {
      v20 = "(passed to caller)";
      *buf = 136315906;
      v23 = "+[BRCDocumentSignatureCalculator calculateSignatureForURL:boundaryKey:error:]";
      v24 = 2080;
      if (!error)
      {
        v20 = "(ignored by caller)";
      }

      v25 = v20;
      v26 = 2112;
      v27 = v14;
      v28 = 2112;
      v29 = v15;
      _os_log_error_impl(&dword_223E7A000, v16, 0x90u, "[ERROR] %s: %s error: %@%@", buf, 0x2Au);
    }
  }

  if (error)
  {
    v17 = v14;
    *error = v14;
  }

  v18 = 0;
  if (startAccessingSecurityScopedResource)
  {
LABEL_10:
    [lCopy stopAccessingSecurityScopedResource];
  }

LABEL_11:

  return v18;
}

+ (id)calculateSignatureForScopedURLWrapper:(id)wrapper boundaryKey:(id)key error:(id *)error
{
  keyCopy = key;
  wrapperCopy = wrapper;
  v9 = [wrapperCopy url];
  v10 = MEMORY[0x277CFAE88];
  _scope = [wrapperCopy _scope];

  v12 = [v10 consumeSandboxExtension:_scope error:error];
  if (v12 < 0)
  {
    v13 = 0;
  }

  else
  {
    v13 = [objc_opt_class() calculateSignatureForURL:v9 boundaryKey:keyCopy error:error];
    [MEMORY[0x277CFAE88] releaseSandboxExtensionHandle:v12];
  }

  return v13;
}

+ (id)_calculateSignatureForPackageAtURL:(id)l boundaryKey:(id)key error:(id *)error
{
  v45 = *MEMORY[0x277D85DE8];
  lCopy = l;
  keyCopy = key;
  v31 = 0;
  v32 = &v31;
  v33 = 0x3032000000;
  v34 = __Block_byref_object_copy__53;
  v35 = __Block_byref_object_dispose__53;
  v36 = 0;
  v9 = [BRCFSPackageEnumerator alloc];
  v10 = (v32 + 5);
  obj = v32[5];
  v11 = [(BRCFSPackageEnumerator *)v9 initForURL:lCopy boundaryKey:keyCopy error:&obj];
  objc_storeStrong(v10, obj);
  v12 = v32[5];
  if (v12)
  {
    v13 = v12;
    v14 = 0;
  }

  else
  {
    v15 = objc_opt_new();
    v16 = objc_opt_new();
    v17 = (v32 + 5);
    v29 = v32[5];
    v25[0] = MEMORY[0x277D85DD0];
    v25[1] = 3221225472;
    v25[2] = __87__BRCDocumentSignatureCalculator__calculateSignatureForPackageAtURL_boundaryKey_error___block_invoke;
    v25[3] = &unk_2785079F0;
    v18 = v16;
    v26 = v18;
    v14 = v15;
    v27 = v14;
    v28 = &v31;
    [v11 enumeratePackageItemsWithSortOrder:2 error:&v29 usingBlock:v25];
    objc_storeStrong(v17, v29);
    [v14 done];

    v13 = v32[5];
    if (!v13)
    {
      goto LABEL_6;
    }
  }

  v19 = brc_bread_crumbs();
  v20 = brc_default_log();
  if (os_log_type_enabled(v20, 0x90u))
  {
    v24 = "(passed to caller)";
    *buf = 136315906;
    v38 = "+[BRCDocumentSignatureCalculator _calculateSignatureForPackageAtURL:boundaryKey:error:]";
    v39 = 2080;
    if (!error)
    {
      v24 = "(ignored by caller)";
    }

    v40 = v24;
    v41 = 2112;
    v42 = v13;
    v43 = 2112;
    v44 = v19;
    _os_log_error_impl(&dword_223E7A000, v20, 0x90u, "[ERROR] %s: %s error: %@%@", buf, 0x2Au);
  }

LABEL_6:
  if (error)
  {
    v21 = v13;
    *error = v13;
  }

  if (v32[5])
  {
    signature = 0;
  }

  else
  {
    signature = [v14 signature];
  }

  _Block_object_dispose(&v31, 8);

  return signature;
}

void __87__BRCDocumentSignatureCalculator__calculateSignatureForPackageAtURL_boundaryKey_error___block_invoke(uint64_t a1, uint64_t a2, void *a3, _BYTE *a4)
{
  v7 = a3;
  [*(a1 + 32) updateWithPkgItem:a2];
  v9 = *(a1 + 32);
  v8 = *(a1 + 40);
  v10 = *(*(a1 + 48) + 8);
  obj = *(v10 + 40);
  v11 = [v8 addItem:v9 error:&obj];
  objc_storeStrong((v10 + 40), obj);
  if (v11)
  {
    [*(a1 + 32) clear];
  }

  else
  {
    v12 = brc_bread_crumbs();
    v13 = brc_default_log();
    if (os_log_type_enabled(v13, 0x90u))
    {
      __87__BRCDocumentSignatureCalculator__calculateSignatureForPackageAtURL_boundaryKey_error___block_invoke_cold_1(v7, v12, v13);
    }

    *a4 = 1;
  }
}

+ (id)_calculateSignatureForFileAtURL:(id)l boundaryKey:(id)key error:(id *)error
{
  v31 = *MEMORY[0x277D85DE8];
  lCopy = l;
  keyCopy = key;
  v10 = [MEMORY[0x277CFAE88] open:lCopy flags:33028];
  if ((v10 & 0x80000000) != 0)
  {
    br_errorFromErrno = [MEMORY[0x277CCA9B8] br_errorFromErrno];
    v14 = brc_bread_crumbs();
    v15 = brc_default_log();
    if (os_log_type_enabled(v15, 0x90u))
    {
      *buf = 138413058;
      selfCopy = self;
      v25 = 2112;
      v26 = lCopy;
      v27 = 2112;
      v28 = br_errorFromErrno;
      v29 = 2112;
      v30 = v14;
      _os_log_error_impl(&dword_223E7A000, v15, 0x90u, "[ERROR] %@ - Failed opening contents at '%@'. Error: %@%@", buf, 0x2Au);
    }

    v12 = 0;
  }

  else
  {
    v11 = v10;
    v22 = 0;
    v12 = [MEMORY[0x277CBC6A8] br_signatureWithFileDescriptor:v10 boundaryKey:keyCopy error:&v22];
    br_errorFromErrno = v22;
    if (!(v12 | br_errorFromErrno))
    {
      br_errorFromErrno = [MEMORY[0x277CCA9B8] br_errorWithPOSIXCode:22];
    }

    [MEMORY[0x277CFAE88] closeFD:v11];
  }

  v16 = br_errorFromErrno;
  if (v16)
  {
    v17 = brc_bread_crumbs();
    v18 = brc_default_log();
    if (os_log_type_enabled(v18, 0x90u))
    {
      v21 = "(passed to caller)";
      *buf = 136315906;
      selfCopy = "+[BRCDocumentSignatureCalculator _calculateSignatureForFileAtURL:boundaryKey:error:]";
      v25 = 2080;
      if (!error)
      {
        v21 = "(ignored by caller)";
      }

      v26 = v21;
      v27 = 2112;
      v28 = v16;
      v29 = 2112;
      v30 = v17;
      _os_log_error_impl(&dword_223E7A000, v18, 0x90u, "[ERROR] %s: %s error: %@%@", buf, 0x2Au);
    }
  }

  if (error)
  {
    v19 = v16;
    *error = v16;
  }

  return v12;
}

@end