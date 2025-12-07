@interface CFGetProductName
@end

@implementation CFGetProductName

void ___CFGetProductName_block_invoke()
{
  v18 = *MEMORY[0x1E69E9840];
  v0 = getenv("CLASSIC_SUFFIX");
  if (v0)
  {
    v1 = v0;
    v2 = strncmp(v0, "iphone", 6uLL);
    if (!v2)
    {
      v9 = _CFBundleResourceLogger(v2, v3);
      v6 = os_log_type_enabled(v9, OS_LOG_TYPE_DEBUG);
      if (v6)
      {
        ___CFGetProductName_block_invoke_cold_2(v9);
      }

      goto LABEL_16;
    }

    v4 = strncmp(v1, "ipad", 4uLL);
    if (!v4)
    {
      v14 = _CFBundleResourceLogger(v4, v5);
      v6 = os_log_type_enabled(v14, OS_LOG_TYPE_DEBUG);
      if (v6)
      {
        ___CFGetProductName_block_invoke_cold_1(v14);
      }

LABEL_39:
      v10 = @"ipad";
      goto LABEL_41;
    }
  }

  memset(v17, 0, sizeof(v17));
  v16 = 256;
  v6 = sysctlbyname("hw.machine", v17, &v16, 0, 0);
  if (v6)
  {
    if (v6 != -1)
    {
      goto LABEL_42;
    }

    v6 = __error();
    if (*v6 != 12)
    {
      goto LABEL_42;
    }
  }

  if (v16 >= 6)
  {
    if (LODWORD(v17[0]) != 1869107305 || WORD2(v17[0]) != 25966)
    {
      goto LABEL_18;
    }

LABEL_16:
    v10 = @"iphone";
LABEL_41:
    _CFGetProductName__cfBundlePlatform = v10;
    goto LABEL_42;
  }

  if (v16 < 4)
  {
    goto LABEL_42;
  }

LABEL_18:
  if (LODWORD(v17[0]) == 1685016681)
  {
    v10 = @"ipod";
    goto LABEL_41;
  }

  if (LODWORD(v17[0]) == 1684099177)
  {
    goto LABEL_39;
  }

  if (v16 < 5)
  {
    goto LABEL_42;
  }

  if (LODWORD(v17[0]) == 1668571479 && BYTE4(v17[0]) == 104)
  {
    v10 = @"applewatch";
    goto LABEL_41;
  }

  if (v16 < 7)
  {
    goto LABEL_42;
  }

  if (LODWORD(v17[0]) == 1819308097 && *(v17 + 3) == 1448371564)
  {
    v10 = @"appletv";
    goto LABEL_41;
  }

  if (v16 >= 0xD && *&v17[0] == 0x447974696C616552 && *(v17 + 5) == 0x6563697665447974)
  {
    v10 = @"applevision";
    goto LABEL_41;
  }

LABEL_42:
  v15 = _CFBundleResourceLogger(v6, v7);
  if (os_log_type_enabled(v15, OS_LOG_TYPE_DEBUG))
  {
    ___CFGetProductName_block_invoke_cold_3(v15);
  }
}

void ___CFGetProductName_block_invoke_cold_1(os_log_t log)
{
  v2 = *MEMORY[0x1E69E9840];
  *v1 = 0;
  _os_log_debug_impl(&dword_1830E6000, log, OS_LOG_TYPE_DEBUG, "Using ~ipad resources (classic)", v1, 2u);
}

void ___CFGetProductName_block_invoke_cold_2(os_log_t log)
{
  v2 = *MEMORY[0x1E69E9840];
  *v1 = 0;
  _os_log_debug_impl(&dword_1830E6000, log, OS_LOG_TYPE_DEBUG, "Using ~iphone resources (classic)", v1, 2u);
}

void ___CFGetProductName_block_invoke_cold_3(os_log_t log)
{
  v3 = *MEMORY[0x1E69E9840];
  v1 = 138412290;
  v2 = _CFGetProductName__cfBundlePlatform;
  _os_log_debug_impl(&dword_1830E6000, log, OS_LOG_TYPE_DEBUG, "Using ~%@ resources", &v1, 0xCu);
}

@end