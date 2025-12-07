uint64_t HMXPCGetNextClientID()
{
  if (HMXPCGetNextClientID_sOnce != -1)
  {
    HMXPCGetNextClientID_cold_1();
  }

  return atomic_fetch_add(&HMXPCGetNextClientID_sNext, 1u) + 1;
}

uint64_t __HMXPCGetNextClientID_block_invoke()
{
  result = RandomBytes();
  HMXPCGetNextClientID_sNext = word_280C38202 << 16;
  return result;
}

uint64_t OUTLINED_FUNCTION_1(uint64_t a1, uint64_t a2, uint64_t a3, const char *a4)
{

  return LogPrintF(a1, a2, 30, a4);
}

id HMEarLossDataToArray(void *a1)
{
  v21[8] = *MEMORY[0x277D85DE8];
  if (a1)
  {
    v19 = 0u;
    v20 = 0u;
    [a1 getBytes:&v19 length:32];
    LODWORD(v1) = v19;
    v2 = [MEMORY[0x277CCABB0] numberWithFloat:v1];
    v21[0] = v2;
    LODWORD(v3) = DWORD1(v19);
    v4 = [MEMORY[0x277CCABB0] numberWithFloat:v3];
    v21[1] = v4;
    LODWORD(v5) = DWORD2(v19);
    v6 = [MEMORY[0x277CCABB0] numberWithFloat:v5];
    v21[2] = v6;
    LODWORD(v7) = HIDWORD(v19);
    v8 = [MEMORY[0x277CCABB0] numberWithFloat:v7];
    v21[3] = v8;
    LODWORD(v9) = v20;
    v10 = [MEMORY[0x277CCABB0] numberWithFloat:v9];
    v21[4] = v10;
    LODWORD(v11) = DWORD1(v20);
    v12 = [MEMORY[0x277CCABB0] numberWithFloat:v11];
    v21[5] = v12;
    LODWORD(v13) = DWORD2(v20);
    v14 = [MEMORY[0x277CCABB0] numberWithFloat:v13];
    v21[6] = v14;
    LODWORD(v15) = HIDWORD(v20);
    v16 = [MEMORY[0x277CCABB0] numberWithFloat:v15];
    v21[7] = v16;
    v17 = [MEMORY[0x277CBEA60] arrayWithObjects:v21 count:8];
  }

  else
  {
    v17 = 0;
  }

  return v17;
}

id HMEarLossArrayToData(void *a1)
{
  v18 = *MEMORY[0x277D85DE8];
  v1 = a1;
  v2 = v1;
  if (v1)
  {
    memset(v16, 0, sizeof(v16));
    v12 = 0u;
    v13 = 0u;
    v14 = 0u;
    v15 = 0u;
    v3 = v1;
    v4 = [v3 countByEnumeratingWithState:&v12 objects:v17 count:16];
    if (v4)
    {
      v5 = v4;
      LODWORD(v6) = 0;
      v7 = *v13;
LABEL_4:
      v8 = 0;
      v6 = v6;
      while (1)
      {
        if (*v13 != v7)
        {
          objc_enumerationMutation(v3);
        }

        if (v6 == 8)
        {
          break;
        }

        [*(*(&v12 + 1) + 8 * v8) doubleValue];
        *&v9 = v9;
        *(v16 + v6++) = LODWORD(v9);
        if (v5 == ++v8)
        {
          v5 = [v3 countByEnumeratingWithState:&v12 objects:v17 count:16];
          if (v5)
          {
            goto LABEL_4;
          }

          break;
        }
      }
    }

    v10 = [objc_alloc(MEMORY[0x277CBEA90]) initWithBytes:v16 length:32];
  }

  else
  {
    v10 = 0;
  }

  return v10;
}

uint64_t OUTLINED_FUNCTION_4()
{

  return [v0 isEqual:v1];
}

void sub_251F7CB04(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, ...)
{
  va_start(va, a18);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_251F7CF78(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, ...)
{
  va_start(va, a16);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_251F7D314(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, ...)
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

uint64_t __Block_byref_object_copy_(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

uint64_t __Block_byref_object_copy__0(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}