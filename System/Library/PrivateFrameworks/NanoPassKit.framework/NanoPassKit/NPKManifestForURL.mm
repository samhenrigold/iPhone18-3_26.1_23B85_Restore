@interface NPKManifestForURL
@end

@implementation NPKManifestForURL

void ___NPKManifestForURL_block_invoke(uint64_t a1, void *a2, void *a3, _BYTE *a4)
{
  v32 = *MEMORY[0x277D85DE8];
  v7 = a2;
  v8 = a3;
  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();
  if ((isKindOfClass & 1) == 0)
  {
    v10 = pk_Payment_log(isKindOfClass);
    v11 = os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT);

    if (v11)
    {
      v13 = pk_Payment_log(v12);
      if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
      {
        v14 = *(a1 + 32);
        v28 = 138412546;
        v29 = v14;
        v30 = 2112;
        v31 = objc_opt_class();
        v15 = v31;
        _os_log_impl(&dword_25B300000, v13, OS_LOG_TYPE_DEFAULT, "Warning: manifest.json for unique ID %@ should map filenames to SHA1 hash strings. Found key of class %@", &v28, 0x16u);
      }
    }

    v16 = *(*(a1 + 40) + 8);
    v17 = *(v16 + 40);
    *(v16 + 40) = 0;

    *a4 = 1;
  }

  objc_opt_class();
  v18 = objc_opt_isKindOfClass();
  if ((v18 & 1) == 0)
  {
    v19 = pk_Payment_log(v18);
    v20 = os_log_type_enabled(v19, OS_LOG_TYPE_DEFAULT);

    if (v20)
    {
      v22 = pk_Payment_log(v21);
      if (os_log_type_enabled(v22, OS_LOG_TYPE_DEFAULT))
      {
        v23 = *(a1 + 32);
        v24 = objc_opt_class();
        v28 = 138412546;
        v29 = v23;
        v30 = 2112;
        v31 = v24;
        v25 = v24;
        _os_log_impl(&dword_25B300000, v22, OS_LOG_TYPE_DEFAULT, "Warning: manifest.json for unique ID %@ should map filenames to SHA1 hash strings. Found object of class %@", &v28, 0x16u);
      }
    }

    v26 = *(*(a1 + 40) + 8);
    v27 = *(v26 + 40);
    *(v26 + 40) = 0;

    *a4 = 1;
  }
}

@end