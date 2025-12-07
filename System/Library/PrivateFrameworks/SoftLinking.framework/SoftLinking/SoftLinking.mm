uint64_t _sl_dlopen(void *a1, char **a2)
{
  v3 = a1;
  v34 = *MEMORY[0x277D85DE8];
  v4 = a1;
  if (!*a1)
  {
LABEL_5:
    if (!a2)
    {
      return 0;
    }

    v7 = malloc_type_calloc(v4 - v3, 8uLL, 0x10040436913F5uLL);
    v8 = v7;
    v31 = v4 - v3;
    if (v4 == v3)
    {
      v21 = malloc_type_calloc(0, 1uLL, 0x100004077774924uLL);
      if (v21)
      {
        goto LABEL_24;
      }
    }

    else
    {
      v28 = a2;
      v9 = 0;
      if ((v4 - v3) <= 1)
      {
        v10 = 1;
      }

      else
      {
        v10 = v4 - v3;
      }

      v11 = MEMORY[0x277D86220];
      v29 = v3;
      v30 = v7;
      v12 = v3;
      v13 = v10;
      v14 = v7;
      do
      {
        v15 = dlopen_from();
        if (v15)
        {
          v23 = v15;
          v3 = v29;
          v8 = v30;
          goto LABEL_26;
        }

        v16 = dlerror();
        v17 = strdup(v16);
        *v14 = v17;
        v18 = strlen(v17);
        if (os_log_type_enabled(v11, OS_LOG_TYPE_INFO))
        {
          *buf = 136446210;
          v33 = v17;
          _os_log_impl(&dword_26A939000, v11, OS_LOG_TYPE_INFO, "SoftLinking client failed to load dependency: %{public}s", buf, 0xCu);
        }

        v9 += v18 + 1;
        ++v14;
        ++v12;
        --v13;
      }

      while (v13);
      v19 = malloc_type_calloc(v9, 1uLL, 0x100004077774924uLL);
      a2 = v28;
      v3 = v29;
      v20 = v30;
      if (v19)
      {
        v21 = v19;
        v22 = 1;
        do
        {
          strlcat(v21, *v20, v9);
          if (v22 < v31)
          {
            strlcat(v21, "\n", v9);
          }

          ++v22;
          ++v20;
          --v10;
        }

        while (v10);
        v8 = v30;
LABEL_24:
        v23 = 0;
        *a2 = v21;
LABEL_26:
        if (v4 != v3)
        {
          if (v31 <= 1)
          {
            v24 = 1;
          }

          else
          {
            v24 = v31;
          }

          v25 = v8;
          do
          {
            v26 = *v25++;
            free(v26);
            --v24;
          }

          while (v24);
        }

        free(v8);
        return v23;
      }
    }

    _sl_dlopen_cold_1();
  }

  v4 = a1;
  while (1)
  {
    v5 = dlopen_from();
    if (v5)
    {
      return v5;
    }

    v6 = v4[1];
    ++v4;
    if (!v6)
    {
      goto LABEL_5;
    }
  }
}