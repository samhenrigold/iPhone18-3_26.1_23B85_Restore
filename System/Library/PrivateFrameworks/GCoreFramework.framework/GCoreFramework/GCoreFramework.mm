uint64_t create_gcore_with_options(void *a1)
{
  v77 = *MEMORY[0x277D85DE8];
  if (create_gcore_with_options_onceToken != -1)
  {
    create_gcore_with_options_cold_1();
  }

  v3 = objc_autoreleasePoolPush();
  v4 = objc_alloc_init(MEMORY[0x277CBEB18]);
  v62 = 0u;
  v63 = 0u;
  v64 = 0u;
  v65 = 0u;
  v5 = [a1 countByEnumeratingWithState:&v62 objects:v73 count:16];
  if (!v5)
  {
    v21 = 0;
    v8 = 0;
    v22 = -1;
    goto LABEL_52;
  }

  v6 = v5;
  v55 = 0;
  v7 = 0;
  v8 = 0;
  v9 = *v63;
  v56 = 0;
  v57 = -1;
  v61 = v3;
  while (2)
  {
    v10 = 0;
    do
    {
      if (*v63 != v9)
      {
        objc_enumerationMutation(a1);
      }

      v11 = *(*(&v62 + 1) + 8 * v10);
      objc_opt_class();
      if ((objc_opt_isKindOfClass() & 1) == 0)
      {
LABEL_65:
        v1 = 22;
        goto LABEL_104;
      }

      if (![v11 compare:@"debug"])
      {
        LODWORD(v71) = 0;
        *buf = 0;
        if (get_integer_value(v11, a1, buf, &v71))
        {
          v7 = [*buf intValue];
          v16 = 3;
        }

        else
        {
          v16 = 1;
          v1 = v71;
        }

        v8 = 1;
        goto LABEL_29;
      }

      if (![v11 compare:@"verbose"])
      {
        v8 = 1;
        goto LABEL_30;
      }

      if (![v11 compare:@"filedesc"])
      {
        LODWORD(v71) = 0;
        *buf = 0;
        if (get_integer_value(v11, a1, buf, &v71))
        {
          v57 = [*buf intValue];
LABEL_27:
          v16 = 3;
          goto LABEL_29;
        }

LABEL_28:
        v16 = 1;
        v1 = v71;
        goto LABEL_29;
      }

      if (![v11 compare:@"port"])
      {
        LODWORD(v71) = 0;
        *buf = 0;
        if (get_integer_value(v11, a1, buf, &v71))
        {
          v56 = [*buf intValue];
          goto LABEL_27;
        }

        goto LABEL_28;
      }

      v60 = v6;
      v58 = v1;
      v59 = v8;
      if (!v11)
      {
LABEL_62:
        v29 = logger;
        if (os_log_type_enabled(logger, OS_LOG_TYPE_DEFAULT))
        {
          v30 = [v11 UTF8String];
          *buf = 136315138;
          *&buf[4] = v30;
          _os_log_impl(&dword_24BC7B000, v29, OS_LOG_TYPE_DEFAULT, "unrecognized option: %s", buf, 0xCu);
        }

        v1 = 33;
        v3 = v61;
        goto LABEL_104;
      }

      v12 = [v11 UTF8String];
      v13 = &qword_27916BD68;
      v14 = 13;
      while (1)
      {
        v15 = strlen(*(v13 - 2));
        if (!strncmp(v12, *(v13 - 2), v15))
        {
          break;
        }

        v13 += 3;
        if (!--v14)
        {
          goto LABEL_62;
        }
      }

      v3 = v61;
      if (!*v13)
      {
        v18 = 0;
LABEL_42:
        [v4 addObject:{objc_msgSend(MEMORY[0x277CCACA8], "stringWithUTF8String:", *(v13 - 1), v55)}];
        if (v18)
        {
          [v4 addObject:v18];
        }

        v8 = v59;
        v1 = v58;
        goto LABEL_30;
      }

      v17 = [a1 objectForKeyedSubscript:v11];
      if (!v17)
      {
        v1 = 34;
        goto LABEL_104;
      }

      v18 = v17;
      v19 = *v13;
      if (strncmp(*v13, "NSINTEGER", 9uLL))
      {
        if (!strncmp(v19, "NSSTRING", 8uLL))
        {
          objc_opt_class();
          v6 = v60;
          if ((objc_opt_isKindOfClass() & 1) == 0)
          {
            goto LABEL_65;
          }
        }

        else
        {
          v18 = 0;
          v6 = v60;
        }

        goto LABEL_42;
      }

      LODWORD(v71) = 0;
      *buf = 0;
      v6 = v60;
      if ((get_integer_value(v11, a1, buf, &v71) & 1) == 0)
      {
        v1 = v71;
        goto LABEL_104;
      }

      v18 = [*buf stringValue];
      if ([v11 compare:@"pid"])
      {
        goto LABEL_42;
      }

      v16 = 3;
      v55 = v18;
      v8 = v59;
      v1 = v58;
LABEL_29:
      if (v16 != 3)
      {
        goto LABEL_104;
      }

LABEL_30:
      ++v10;
    }

    while (v10 != v6);
    v20 = [a1 countByEnumeratingWithState:&v62 objects:v73 count:16];
    v6 = v20;
    if (v20)
    {
      continue;
    }

    break;
  }

  for (; v7; --v7)
  {
    [v4 addObject:{@"-d", v55}];
  }

  if (v55)
  {
    [v4 addObject:?];
  }

  v21 = v56;
  v22 = v57;
LABEL_52:
  v23 = malloc_type_malloc(8 * [v4 count] + 16, 0x10040436913F5uLL);
  if (!v23)
  {
    v1 = 12;
    goto LABEL_104;
  }

  v24 = v23;
  *v23 = strdup("gcore");
  if ([v4 count])
  {
    v25 = 1;
    do
    {
      v24[v25] = strdup([objc_msgSend(v4 objectAtIndexedSubscript:{v25 - 1), "UTF8String"}]);
      ++v25;
    }

    while (v25 <= [v4 count]);
  }

  v24[[v4 count] + 1] = 0;
  if ([v4 count] < 1)
  {
LABEL_61:
    v1 = 22;
    goto LABEL_100;
  }

  if (v21 - 1 <= 0xFFFFFFFD)
  {
    v26 = *MEMORY[0x277D85F48];
    init_port_set = v21;
    v27 = mach_ports_register(v26, &init_port_set, 1u);
    if (v27)
    {
      v28 = v27;
      if (os_log_type_enabled(logger, OS_LOG_TYPE_ERROR))
      {
        create_gcore_with_options_cold_2(v28);
      }

      goto LABEL_61;
    }
  }

  v71 = 0;
  if (posix_spawnattr_init(&v71) && os_log_type_enabled(logger, OS_LOG_TYPE_ERROR))
  {
    create_gcore_with_options_cold_3();
  }

  if (posix_spawnattr_setflags(&v71, 2) && os_log_type_enabled(logger, OS_LOG_TYPE_ERROR))
  {
    create_gcore_with_options_cold_4();
  }

  if (posix_spawnattr_setflags(&v71, 0x4000) && os_log_type_enabled(logger, OS_LOG_TYPE_ERROR))
  {
    create_gcore_with_options_cold_5();
  }

  if (posix_spawnattr_setflags(&v71, 12) && os_log_type_enabled(logger, OS_LOG_TYPE_ERROR))
  {
    create_gcore_with_options_cold_6();
  }

  v70 = 0;
  if (((v22 < 0) & ~v8) == 0)
  {
    if (posix_spawnattr_init(&v70) && os_log_type_enabled(logger, OS_LOG_TYPE_ERROR))
    {
      create_gcore_with_options_cold_7();
      if ((v22 & 0x80000000) == 0)
      {
LABEL_83:
        if (posix_spawn_file_actions_addinherit_np(&v70, v22) && os_log_type_enabled(logger, OS_LOG_TYPE_ERROR))
        {
          create_gcore_with_options_cold_8();
        }
      }
    }

    else if ((v22 & 0x80000000) == 0)
    {
      goto LABEL_83;
    }

    if (v8)
    {
      v31 = fileno(*MEMORY[0x277D85E08]);
      if (posix_spawn_file_actions_addinherit_np(&v70, v31))
      {
        if (os_log_type_enabled(logger, OS_LOG_TYPE_ERROR))
        {
          create_gcore_with_options_cold_9();
        }
      }
    }
  }

  v68 = 0;
  v69 = -1;
  if (posix_spawnattr_setsigdefault(&v71, &v69) && os_log_type_enabled(logger, OS_LOG_TYPE_ERROR))
  {
    create_gcore_with_options_cold_10();
  }

  if (posix_spawnattr_setsigmask(&v71, &v68) && os_log_type_enabled(logger, OS_LOG_TYPE_ERROR))
  {
    create_gcore_with_options_cold_11();
  }

  v32 = v3;
  v67 = -1;
  v33 = *v24;
  v34 = _NSGetEnviron();
  v35 = posix_spawnp(&v67, v33, &v70, &v71, v24, *v34);
  v66 = v35;
  posix_spawnattr_destroy(&v71);
  if (v35)
  {
    v1 = v35;
    if (os_log_type_enabled(logger, OS_LOG_TYPE_ERROR))
    {
      create_gcore_with_options_cold_12(v24, v35);
    }

    goto LABEL_99;
  }

  while (1)
  {
    while (1)
    {
      v38 = logger;
      if (os_log_type_enabled(logger, OS_LOG_TYPE_DEBUG))
      {
        v49 = *v24;
        *buf = 136315394;
        *&buf[4] = v49;
        *&buf[12] = 1024;
        *&buf[14] = v67;
        _os_log_debug_impl(&dword_24BC7B000, v38, OS_LOG_TYPE_DEBUG, "wait4 %s pid %d", buf, 0x12u);
      }

      v39 = wait4(v67, &v66, 0, 0);
      if (v39 != -1)
      {
        break;
      }

      v47 = *__error();
      v48 = logger;
      if (os_log_type_enabled(logger, OS_LOG_TYPE_DEBUG))
      {
        v50 = v67;
        v51 = strerror(v47);
        *buf = 67109634;
        *&buf[4] = v50;
        *&buf[8] = 1024;
        *&buf[10] = v47;
        *&buf[14] = 2080;
        *&buf[16] = v51;
        _os_log_debug_impl(&dword_24BC7B000, v48, OS_LOG_TYPE_DEBUG, "wait4: %d error: errno %d (%s)", buf, 0x18u);
      }

      v1 = v47;
      if (v47 != 4)
      {
        goto LABEL_99;
      }
    }

    v40 = v39;
    v41 = logger;
    if (os_log_type_enabled(logger, OS_LOG_TYPE_DEBUG))
    {
      *buf = 67109376;
      *&buf[4] = v40;
      *&buf[8] = 1024;
      *&buf[10] = v66;
      _os_log_debug_impl(&dword_24BC7B000, v41, OS_LOG_TYPE_DEBUG, "wait4: %d status 0x%x\n", buf, 0xEu);
    }

    v42 = v66;
    v43 = v66 & 0x7F;
    if (v43 != 127)
    {
      break;
    }

    v44 = logger;
    if (os_log_type_enabled(logger, OS_LOG_TYPE_DEBUG))
    {
      v45 = v42 >> 8;
      v46 = strsignal(v45);
      *buf = 67109634;
      *&buf[4] = v40;
      *&buf[8] = 1024;
      *&buf[10] = v45;
      *&buf[14] = 2080;
      *&buf[16] = v46;
      _os_log_debug_impl(&dword_24BC7B000, v44, OS_LOG_TYPE_DEBUG, "wait4: %d signal %d (%s)", buf, 0x18u);
    }
  }

  if ((v66 & 0x7F) != 0)
  {
    if (os_log_type_enabled(logger, OS_LOG_TYPE_ERROR))
    {
      create_gcore_with_options_cold_13(v43);
    }

    v1 = 4;
    goto LABEL_99;
  }

  v52 = BYTE1(v66);
  if (BYTE1(v66) > 0x49u)
  {
    if (BYTE1(v66) > 0x4Cu)
    {
      if (BYTE1(v66) == 77)
      {
        v1 = 1;
        goto LABEL_141;
      }

      if (BYTE1(v66) == 78)
      {
        v1 = 19;
        goto LABEL_141;
      }
    }

    else
    {
      if (BYTE1(v66) == 74)
      {
        v1 = 5;
        goto LABEL_141;
      }

      if (BYTE1(v66) == 75)
      {
        v1 = 35;
        goto LABEL_141;
      }
    }

LABEL_140:
    v1 = 22;
    goto LABEL_141;
  }

  if (BYTE1(v66) - 70 < 2)
  {
    v1 = 61;
    goto LABEL_141;
  }

  v1 = BYTE1(v66);
  if (!BYTE1(v66))
  {
    goto LABEL_99;
  }

  if (BYTE1(v66) != 73)
  {
    goto LABEL_140;
  }

  v1 = 13;
LABEL_141:
  v53 = logger;
  if (os_log_type_enabled(logger, OS_LOG_TYPE_ERROR))
  {
    v54 = *v24;
    *buf = 67109890;
    *&buf[4] = v40;
    *&buf[8] = 2080;
    *&buf[10] = v54;
    *&buf[18] = 1024;
    *&buf[20] = v52;
    v75 = 1024;
    v76 = v1;
    _os_log_error_impl(&dword_24BC7B000, v53, OS_LOG_TYPE_ERROR, "wait4: %d %s exit status %d, ret %d", buf, 0x1Eu);
  }

LABEL_99:
  v3 = v32;
LABEL_100:
  if ([v4 count] != -2)
  {
    v36 = 0;
    do
    {
      free(v24[v36++]);
    }

    while (v36 < [v4 count] + 2);
  }

  free(v24);
LABEL_104:
  objc_autoreleasePoolPop(v3);
  return v1;
}

os_log_t __create_gcore_with_options_block_invoke()
{
  result = os_log_create("com.apple.gcore", "framework");
  logger = result;
  return result;
}

uint64_t get_integer_value(uint64_t a1, void *a2, uint64_t *a3, _DWORD *a4)
{
  v6 = [a2 objectForKeyedSubscript:a1];
  if (a4)
  {
    *a4 = 0;
  }

  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();
  if (isKindOfClass)
  {
    *a3 = v6;
  }

  else if (a4)
  {
    *a4 = 34;
  }

  return isKindOfClass & 1;
}

void OUTLINED_FUNCTION_0(void *a1, NSObject *a2, uint64_t a3, const char *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, ...)
{
  va_start(va, a8);

  _os_log_error_impl(a1, a2, OS_LOG_TYPE_ERROR, a4, va, 8u);
}

void create_gcore_with_options_cold_2(mach_error_t a1)
{
  mach_error_string(a1);
  OUTLINED_FUNCTION_2();
  _os_log_error_impl(v1, v2, v3, v4, v5, 0x12u);
}

void create_gcore_with_options_cold_12(int a1, int __errnum)
{
  strerror(__errnum);
  OUTLINED_FUNCTION_2();
  _os_log_error_impl(v2, v3, v4, v5, v6, 0x1Cu);
}

void create_gcore_with_options_cold_13(int a1)
{
  strsignal(a1);
  OUTLINED_FUNCTION_2();
  _os_log_error_impl(v1, v2, v3, v4, v5, 0x1Eu);
}