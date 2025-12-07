@interface FAUICreatePDFFromDocumentURLs
@end

@implementation FAUICreatePDFFromDocumentURLs

void ___FAUICreatePDFFromDocumentURLs_block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v5 = v3;
  if (*(a1 + 32))
  {
    v6 = fauiLogHandle;
    if (!fauiLogHandle)
    {
      FAUIInitLogging(v3, v4);
      v6 = fauiLogHandle;
    }

    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      ___FAUICreatePDFFromDocumentURLs_block_invoke_cold_1(a1);
    }

    goto LABEL_20;
  }

  v7 = [v3 startAccessingSecurityScopedResource];
  v20 = 0;
  v8 = *MEMORY[0x277CBE918];
  v19 = 0;
  v9 = [v5 getResourceValue:&v20 forKey:v8 error:&v19];
  v10 = v20;
  v11 = v19;
  v13 = v11;
  if (!v9)
  {
    v15 = fauiLogHandle;
    if (!fauiLogHandle)
    {
      FAUIInitLogging(v11, v12);
      v15 = fauiLogHandle;
    }

    if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
    {
      ___FAUICreatePDFFromDocumentURLs_block_invoke_cold_2();
    }

    goto LABEL_17;
  }

  if (UTTypeConformsTo(v10, *MEMORY[0x277CC20B0]))
  {
    v14 = _AppendImageToDocument(v5, *(a1 + 48));
    if (v14)
    {
      [*(a1 + 56) addObject:v14];
    }
  }

  else
  {
    v16 = UTTypeConformsTo(v10, *MEMORY[0x277CC2108]);
    if (!v16)
    {
      v18 = fauiLogHandle;
      if (!fauiLogHandle)
      {
        FAUIInitLogging(v16, v17);
        v18 = fauiLogHandle;
      }

      if (os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
      {
        ___FAUICreatePDFFromDocumentURLs_block_invoke_cold_3();
      }

      goto LABEL_17;
    }

    v14 = [objc_alloc(getPDFDocumentClass()) initWithURL:v5];
    _AppendDocumentToDocument(v14, *(a1 + 48));
  }

LABEL_17:
  if (v7)
  {
    [v5 stopAccessingSecurityScopedResource];
  }

LABEL_20:
}

uint64_t ___FAUICreatePDFFromDocumentURLs_block_invoke_4(uint64_t a1)
{
  result = *(a1 + 40);
  if (result)
  {
    return (*(result + 16))(result, *(a1 + 32));
  }

  return result;
}

void ___FAUICreatePDFFromDocumentURLs_block_invoke_cold_1(uint64_t a1)
{
  v6 = *MEMORY[0x277D85DE8];
  LODWORD(v4) = 138412546;
  *(&v4 + 4) = *(a1 + 40);
  OUTLINED_FUNCTION_3();
  *v5 = v1;
  OUTLINED_FUNCTION_2(&dword_24ABD1000, v2, v3, "Failed to take a coordinated read on url: %@ error: %@", v4, DWORD2(v4), *&v5[2], v6);
}

void ___FAUICreatePDFFromDocumentURLs_block_invoke_cold_2()
{
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_3();
  OUTLINED_FUNCTION_2(&dword_24ABD1000, v0, v1, "Error: Unable to determine UTI for file: %@ error: %@");
}

void ___FAUICreatePDFFromDocumentURLs_block_invoke_cold_3()
{
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_3();
  OUTLINED_FUNCTION_2(&dword_24ABD1000, v0, v1, "Error: Unexpected UTI: %@ for file: %@");
}

@end