uint64_t InputOutputProc(uint64_t a1, const void *a2, unsigned int *a3, const void *a4, unsigned int *a5, const void *a6, _DWORD *a7)
{
  v13 = a1;
  v54 = *MEMORY[0x277D85DE8];
  if (!a2 || !a3 || !a4 || !a5 || !a6 || !a7)
  {
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
    {
      *buf = 67110656;
      v41 = v13;
      v42 = 2048;
      v43 = a2;
      v44 = 2048;
      v45 = a3;
      v46 = 2048;
      v47 = a4;
      v48 = 2048;
      v49 = a5;
      v50 = 2048;
      v51 = a6;
      v52 = 2048;
      v53 = a7;
      _os_log_impl(&dword_2415BC000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, "ASAPlaythrough IO Proc NULL argument %u %p %p %p %p %p %p", buf, 0x44u);
    }

    printf("ASAPlaythrough IO Proc NULL argument %u %p %p %p %p %p %p", v13, a2, a3, a4, a5, a6, a7);
    return 0;
  }

  v14 = a7[1];
  if (v14)
  {
    v15 = 0;
    v16 = 0;
    v17 = *(a7 + 5);
    do
    {
      v18 = *(v17 + 8 * v15);
      if (*v18)
      {
        v19 = 0;
        v20 = 0;
        do
        {
          v21 = &v18[v19];
          if (v16 >= *a3)
          {
            v21[2] = 0;
            *(v21 + 2) = 0;
          }

          else
          {
            *(v21 + 2) = *&a3[4 * v16++ + 2];
            v17 = *(a7 + 5);
          }

          ++v20;
          v18 = *(v17 + 8 * v15);
          v19 += 4;
        }

        while (v20 < *v18);
        v14 = a7[1];
      }

      ++v15;
    }

    while (v15 < v14);
  }

  else
  {
    v14 = 0;
  }

  v24 = a7[2];
  if (v24)
  {
    v25 = 0;
    v26 = 0;
    v27 = *(a7 + 6);
    do
    {
      v28 = *(v27 + 8 * v25);
      if (*v28)
      {
        v29 = 0;
        v30 = 0;
        do
        {
          v31 = &v28[v29];
          if (v26 >= *a5)
          {
            v31[2] = 0;
            *(v31 + 2) = 0;
          }

          else
          {
            *(v31 + 2) = *&a5[4 * v26++ + 2];
            v27 = *(a7 + 6);
          }

          ++v30;
          v28 = *(v27 + 8 * v25);
          v29 += 4;
        }

        while (v30 < *v28);
        v24 = a7[2];
      }

      ++v25;
    }

    while (v25 < v24);
    v14 = a7[1];
  }

  if (v14)
  {
    v32 = 0;
    do
    {
      v33 = *(*(a7 + 5) + 8 * v32);
      if (CheckAudioBufferList(&v33->mNumberBuffers))
      {
        v22 = 2003329396;
        if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
        {
          InputOutputProc_cold_1(v32, a4);
        }

        return v22;
      }

      v34 = *(*(a7 + 7) + 8 * v32);
      if (CheckAudioBufferList(&v34->mNumberBuffers))
      {
        v22 = 2003329396;
        if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
        {
          InputOutputProc_cold_2(v32, a4);
        }

        return v22;
      }

      v35 = AudioConverterConvertComplexBuffer(*(*(a7 + 3) + 8 * v32++), *a7, v33, v34);
    }

    while (v32 < a7[1]);
    v22 = v35;
    if (v35)
    {
      return v22;
    }
  }

  if (!a7[2])
  {
    return 0;
  }

  v36 = 0;
  while (1)
  {
    v37 = *(a7 + 8);
    if (CheckAudioBufferList(&v37->mNumberBuffers))
    {
      break;
    }

    v38 = *(*(a7 + 6) + 8 * v36);
    if (CheckAudioBufferList(&v38->mNumberBuffers))
    {
      v22 = 2003329396;
      if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
      {
        InputOutputProc_cold_4(v36, a6);
      }

      return v22;
    }

    v39 = AudioConverterConvertComplexBuffer(*(*(a7 + 4) + 8 * v36++), *a7, v37, v38);
    if (v36 >= a7[2])
    {
      return v39;
    }
  }

  v22 = 2003329396;
  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
  {
    InputOutputProc_cold_3(v36, a6);
  }

  return v22;
}

uint64_t CheckAudioBufferList(unsigned int *a1)
{
  v1 = *a1;
  if (!v1)
  {
    return 0;
  }

  v2 = 0;
  v3 = &a1[4 * v1 + 2];
  v4 = a1 + 2;
  while (1)
  {
    v5 = *(v4 + 1);
    if (!v5)
    {
      break;
    }

    v6 = v4[1];
    if (v6 >= 4)
    {
      v2 += *v5 + *(v5 + (v6 & 0xFFFFFFFC) - 4);
    }

    v4 += 4;
    if (v4 >= v3)
    {
      v7 = 0;
      return v7 | v2 & 0xFFFFFFFE;
    }
  }

  v7 = 1;
  return v7 | v2 & 0xFFFFFFFE;
}

void OUTLINED_FUNCTION_0_0(void *a1, NSObject *a2, uint64_t a3, const char *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, ...)
{
  va_start(va, a8);

  _os_log_error_impl(a1, a2, OS_LOG_TYPE_ERROR, a4, va, 2u);
}

void InputOutputProc_cold_1(uint64_t a1, uint64_t a2)
{
  OUTLINED_FUNCTION_1(a2, *MEMORY[0x277D85DE8]);
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_2();
  _os_log_error_impl(v2, v3, v4, v5, v6, 0x18u);
}

void InputOutputProc_cold_2(uint64_t a1, uint64_t a2)
{
  OUTLINED_FUNCTION_1(a2, *MEMORY[0x277D85DE8]);
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_2();
  _os_log_error_impl(v2, v3, v4, v5, v6, 0x18u);
}

void InputOutputProc_cold_3(uint64_t a1, uint64_t a2)
{
  OUTLINED_FUNCTION_1(a2, *MEMORY[0x277D85DE8]);
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_2();
  _os_log_error_impl(v2, v3, v4, v5, v6, 0x18u);
}

void InputOutputProc_cold_4(uint64_t a1, uint64_t a2)
{
  OUTLINED_FUNCTION_1(a2, *MEMORY[0x277D85DE8]);
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_2();
  _os_log_error_impl(v2, v3, v4, v5, v6, 0x18u);
}