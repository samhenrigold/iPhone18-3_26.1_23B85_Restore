uint64_t AFCProcessServerPacket_cold_3(_DWORD *a1)
{
  __error();
  v2 = OUTLINED_FUNCTION_0_3();
  result = __AFCSetErrorResult_4(v2, v3, v4, v5, 2726, v6, v7, v8, v10);
  *a1 = result;
  return result;
}

uint64_t AFCProcessServerPacket_cold_4(_DWORD *a1)
{
  __error();
  OUTLINED_FUNCTION_8_0();
  result = __AFCSetErrorResult_4(v2, v3, v4, v5, 2760, v6, v7, v8, v10);
  *a1 = result;
  return result;
}

uint64_t AFCProcessServerPacket_cold_5(_DWORD *a1)
{
  __error();
  v2 = OUTLINED_FUNCTION_0_3();
  result = __AFCSetErrorResult_4(v2, v3, v4, v5, 2681, v6, v7, v8, v10);
  *a1 = result;
  return result;
}

uint64_t AFCProcessServerPacket_cold_6(_DWORD *a1)
{
  __error();
  v2 = OUTLINED_FUNCTION_0_3();
  result = __AFCSetErrorResult_4(v2, v3, v4, v5, 1521, v6, v7, v8, v10);
  *a1 = result;
  return result;
}

uint64_t AFCProcessServerPacket_cold_7()
{
  OUTLINED_FUNCTION_6_1();
  v3 = OUTLINED_FUNCTION_1_2();
  v10 = __AFCSetErrorResult_4(v3, v4, v5, v6, 1465, v7, v8, v9, v14);
  v11 = v10;
  result = AFCSendStatus(v2, v1, v10);
  if (v11)
  {
    v13 = v11;
  }

  else
  {
    v13 = result;
  }

  *v0 = v13;
  return result;
}

uint64_t AFCProcessServerPacket_cold_8(_DWORD *a1)
{
  __error();
  v2 = OUTLINED_FUNCTION_0_3();
  result = __AFCSetErrorResult_4(v2, v3, v4, v5, 2055, v6, v7, v8, v10);
  *a1 = result;
  return result;
}

uint64_t AFCProcessServerPacket_cold_9(_DWORD *a1)
{
  __error();
  v2 = __error();
  strerror(*v2);
  v3 = OUTLINED_FUNCTION_7_0();
  result = __AFCSetErrorResult_4(v3, v4, v5, v6, 2073, v7, v8, v9, v11);
  *a1 = result;
  return result;
}

uint64_t AFCProcessServerPacket_cold_10(_DWORD *a1)
{
  __error();
  v2 = __error();
  strerror(*v2);
  v3 = OUTLINED_FUNCTION_7_0();
  result = __AFCSetErrorResult_4(v3, v4, v5, v6, 2062, v7, v8, v9, v11);
  *a1 = result;
  return result;
}

uint64_t AFCProcessServerPacket_cold_11()
{
  v0 = *__error();
  v1 = __error();
  v2 = strerror(*v1);
  return __AFCSetErrorResult_4(1, v0, 3892330519, v3, 206, "failed to retrieve file information (%s)", v4, v5, v2);
}

uint64_t AFCProcessServerPacket_cold_14(_DWORD *a1)
{
  __error();
  v2 = OUTLINED_FUNCTION_5_2();
  result = __AFCSetErrorResult_4(v2, v3, v4, v5, 988, v6, v7, v8, v10);
  *a1 = result;
  return result;
}

uint64_t AFCProcessServerPacket_cold_15(_DWORD *a1)
{
  __error();
  v2 = OUTLINED_FUNCTION_5_2();
  result = __AFCSetErrorResult_4(v2, v3, v4, v5, 1072, v6, v7, v8, v10);
  *a1 = result;
  return result;
}

uint64_t AFCProcessFileRefWritePacket_cold_1()
{
  OUTLINED_FUNCTION_6_1();
  v1 = OUTLINED_FUNCTION_3_2();
  *(*v0 + 24) = __AFCSetErrorResult_4(v1, v2, 3892330508, v3, 2378, v4, v5, v6, v16);
  v7 = OUTLINED_FUNCTION_4_2();
  return AFCDiscardData(v7, v8, v9, v10, v11, v12, v13, v14);
}

uint64_t AFCProcessFileRefWritePacket_cold_2(uint64_t a1)
{
  v2 = OUTLINED_FUNCTION_2_2();
  result = __AFCSetErrorResult_4(v2, v3, v4, v5, 2344, v6, v7, v8, v10);
  *(*a1 + 24) = result;
  return result;
}

uint64_t AFCProcessFileRefWritePacket_cold_3()
{
  OUTLINED_FUNCTION_6_1();
  v1 = OUTLINED_FUNCTION_1_2();
  *(*v0 + 24) = __AFCSetErrorResult_4(v1, v2, v3, v4, 2361, v5, v6, v7, v17);
  v8 = OUTLINED_FUNCTION_4_2();
  return AFCDiscardData(v8, v9, v10, v11, v12, v13, v14, v15);
}

uint64_t AFCProcessFileRefWritePacket_cold_4(uint64_t a1)
{
  v2 = OUTLINED_FUNCTION_1_2();
  result = __AFCSetErrorResult_4(v2, v3, v4, v5, 2330, v6, v7, v8, v10);
  *(*a1 + 24) = result;
  return result;
}

uint64_t RemovePath_cold_1(_DWORD *a1)
{
  __error();
  v2 = OUTLINED_FUNCTION_0_3();
  result = __AFCSetErrorResult_4(v2, v3, v4, v5, 1335, v6, v7, v8, v10);
  *a1 = result;
  return result;
}

uint64_t __AFCGetFileHash_cold_1(_DWORD *a1)
{
  __error();
  v2 = OUTLINED_FUNCTION_0_3();
  result = __AFCSetErrorResult_4(v2, v3, v4, v5, 1753, v6, v7, v8, v10);
  *a1 = result;
  return result;
}

uint64_t __AFCGetFileHash_cold_2(_DWORD *a1)
{
  __error();
  OUTLINED_FUNCTION_8_0();
  result = __AFCSetErrorResult_4(v2, v3, v4, v5, 1832, v6, v7, v8, v10);
  *a1 = result;
  return result;
}

uint64_t __AFCGetFileHash_cold_3(_DWORD *a1)
{
  __error();
  OUTLINED_FUNCTION_8_0();
  result = __AFCSetErrorResult_4(v2, v3, v4, v5, 1847, v6, v7, v8, v10);
  *a1 = result;
  return result;
}

uint64_t __AFCGetFileHash_cold_4(_DWORD *a1)
{
  __error();
  OUTLINED_FUNCTION_8_0();
  result = __AFCSetErrorResult_4(v2, v3, v4, v5, 1825, v6, v7, v8, v10);
  *a1 = result;
  return result;
}