const char *ETLSAHModeAsString(int a1)
{
  if (a1 <= 1)
  {
    if (!a1)
    {
      return "ETLSAHModePending";
    }

    if (a1 == 1)
    {
      return "ETLSAHModeComplete";
    }
  }

  else
  {
    switch(a1)
    {
      case 2:
        return "ETLSAHModeMemoryDebug";
      case 3:
        return "ETLSAHModeCommand";
      case 256:
        return "ETLSAHModeMaverick";
    }
  }

  return "Unknown";
}

const char *ETLSAHExecutionCommandIDAsString(unsigned int a1)
{
  if (a1 > 9)
  {
    return "Unknown";
  }

  else
  {
    return (&off_29EE6E088)[a1];
  }
}

uint64_t ETLSAHCommandSend(uint64_t (**a1)(void), uint64_t a2)
{
  v2 = *a1;
  if (!*a1)
  {
    return 0;
  }

  v5 = -1431655766;
  result = v2();
  if (result)
  {
    return v5 == *(a2 + 4);
  }

  return result;
}

uint64_t ETLSAHSendReadData(uint64_t (**a1)(void), uint64_t a2, int a3)
{
  if (!*a1)
  {
    return 0;
  }

  LODWORD(result) = (*a1)();
  if (a3 == -1431655766)
  {
    return result;
  }

  else
  {
    return 0;
  }
}

uint64_t ETLSAHCommandReceive(uint64_t a1, uint64_t a2, int *a3, unsigned int a4, uint64_t a5)
{
  if (a4 < 8)
  {
    return 0;
  }

  v8 = a4 - 8;
  while (1)
  {
    Size = TelephonyUtilRingBufferGetSize();
    Remaining = TelephonyUtilRingBufferGetLinearReadRemaining();
    if (Size >= 8)
    {
      break;
    }

LABEL_4:
    if (TelephonyUtilRingBufferInsertTransport() <= 0)
    {
      return 0;
    }
  }

  if (Remaining <= 7)
  {
    result = TelephonyUtilRingBufferLinearize();
    if (!result)
    {
      return result;
    }
  }

  v11 = (*a2 + *(a2 + 16));
  v12 = *v11;
  v13 = v11[1];
  *a3 = *v11;
  a3[1] = v13;
  if (v13 >= 8 && v8 >= v13)
  {
    if (v13 <= Size)
    {
      memcpy(a3 + 2, v11 + 2, (v13 - 8));
      TelephonyUtilRingBufferSkip();
      return 1;
    }

    goto LABEL_4;
  }

  _ETLDebugPrint("ETLSAHCommandReceive", "Command of type %u, length %u has invalid length\n", v12, v13);
  _ETLDebugPrintBinary();
  return 0;
}

uint64_t ETLSAHCommandExecute(int *a1, unsigned int a2, void *a3, uint64_t a4, uint64_t a5, uint64_t a6, unint64_t a7, unint64_t *a8, unsigned int a9)
{
  v9 = a5;
  *a8 = 0;
  if (a2 < 0xC)
  {
    _ETLDebugPrint("ETLSAHCommandExecuteCreate", "buffer capacity too small\n", a3, a4, a5, a6, a7);
LABEL_11:
    _ETLDebugPrint("ETLSAHCommandExecute", "failed creating command 0x%0x\n");
    return 2;
  }

  if (!a1)
  {
    _ETLDebugPrint("ETLSAHCommandExecuteCreate", "header is NULL\n", a3, a4, a5, a6, a7);
    goto LABEL_11;
  }

  *a1 = 0xC0000000DLL;
  a1[2] = a5;
  v11 = *a3;
  if (*a3)
  {
    v24 = -1431655766;
    if ((v11(a3, a1, 12, &v24, 1, a9, 0) & 1) != 0 && v24 == a1[1])
    {
      if ((ETLSAHCommandReceive(a3, a4, a1, a2, a9) & 1) == 0)
      {
LABEL_30:
        _ETLDebugPrint("ETLSAHCommandExecute", "failed receiving command response packet\n");
        return 4;
      }

      if ((a1[1] & 0xFFFFFFF8) == 8)
      {
        _ETLDebugPrint("ETLSAHCommandExecuteParseResponse", "not enough data received\n");
LABEL_18:
        _ETLDebugPrint("ETLSAHCommandExecute", "failed parsing command response\n");
        return 2;
      }

      if (*a1 != 14)
      {
        _ETLDebugPrint("_ETLSAHCommandExpectType", "Expected type %u, got %u:\n", 14, *a1);
        _ETLDebugPrintBinary();
        _ETLDebugPrint("ETLSAHCommandExecuteParseResponse", "unexpected command type\n");
        goto LABEL_18;
      }

      v19 = a1[2];
      v20 = a1[3];
      *a8 = v20;
      if (v19 != v9)
      {
        _ETLDebugPrint("ETLSAHCommandExecute", "command response ID doesn't match, expected %u but received %u\n", v9, v19);
        return 5;
      }

      if (v20 > a7)
      {
        _ETLDebugPrint("ETLSAHCommandExecute", "not enough room in buffer for data\n");
        return 3;
      }

      *a1 = 0xC0000000FLL;
      a1[2] = v9;
      v21 = *a3;
      if (*a3)
      {
        v25 = -1431655766;
        if ((v21(a3, a1, 12, &v25, 1, a9, 0) & 1) != 0 && v25 == a1[1])
        {
          v23 = 0;
          v22 = a3[1];
          if (v22 && v22(a3, a6, *a8, &v23, 1, a9, 0) && *a8 == v23)
          {
            return 0;
          }

          goto LABEL_30;
        }
      }
    }
  }

  _ETLDebugPrint("ETLSAHCommandExecute", "failed sending command\n");
  return 4;
}

uint64_t ETLSAHCommandExecuteCreate(uint64_t a1, int a2, unint64_t a3)
{
  if (a3 <= 0xB)
  {
    _ETLDebugPrint("ETLSAHCommandExecuteCreate", "buffer capacity too small\n");
    return 0;
  }

  else if (a1)
  {
    *a1 = 0xC0000000DLL;
    *(a1 + 8) = a2;
    return 1;
  }

  else
  {
    _ETLDebugPrint("ETLSAHCommandExecuteCreate", "header is NULL\n");
    return 0;
  }
}

uint64_t ETLSAHCommandExecuteParseResponse(_DWORD *a1, _DWORD *a2, void *a3)
{
  if (!a1 || !a2 || !a3)
  {
    _ETLDebugPrint("ETLSAHCommandExecuteParseResponse", "header, command, or responseLength is NULL\n");
    return 0;
  }

  if ((a1[1] & 0xFFFFFFF8) == 8)
  {
    _ETLDebugPrint("ETLSAHCommandExecuteParseResponse", "not enough data received\n");
    return 0;
  }

  if (*a1 != 14)
  {
    _ETLDebugPrint("_ETLSAHCommandExpectType", "Expected type %u, got %u:\n", 14, *a1);
    _ETLDebugPrintBinary();
    _ETLDebugPrint("ETLSAHCommandExecuteParseResponse", "unexpected command type\n");
    return 0;
  }

  v4 = a1[3];
  *a2 = a1[2];
  *a3 = v4;
  return 1;
}

uint64_t ETLSAHCommandExecuteDataCreate(uint64_t a1, int a2, unint64_t a3)
{
  if (a3 <= 0xB)
  {
    _ETLDebugPrint("ETLSAHCommandExecuteDataCreate", "buffer capacity too small\n");
    return 0;
  }

  else if (a1)
  {
    *a1 = 0xC0000000FLL;
    *(a1 + 8) = a2;
    return 1;
  }

  else
  {
    _ETLDebugPrint("ETLSAHCommandExecuteDataCreate", "header is NULL\n");
    return 0;
  }
}

uint64_t ETLSAHCommandParseHello(_DWORD *a1, _DWORD *a2, _DWORD *a3, _DWORD *a4, _DWORD *a5, void *a6, _DWORD *a7)
{
  v7 = a1[1];
  if (*a1 != 1)
  {
    _ETLDebugPrint("_ETLSAHCommandExpectType", "Expected type %u, got %u:\n", 1, *a1);
    _ETLDebugPrintBinary();
    return 0;
  }

  if ((v7 - 24) > 0xFFFFFFEF)
  {
    return 0;
  }

  *a2 = a1[2];
  *a3 = a1[3];
  *a4 = a1[4];
  *a5 = a1[5];
  if (a6)
  {
    *a6 = a1 + 6;
  }

  if (a7)
  {
    *a7 = v7 - 24;
  }

  return 1;
}

BOOL ETLSAHCommandCreateHelloResponse(uint64_t a1, unsigned int a2, int a3, int a4, int a5, int a6)
{
  if (a2 >= 0x30)
  {
    *a1 = 0x3000000002;
    *(a1 + 8) = a3;
    *(a1 + 12) = a4;
    *(a1 + 16) = a5;
    *(a1 + 20) = a6;
    *(a1 + 32) = 0;
    *(a1 + 40) = 0;
    *(a1 + 24) = 0;
  }

  return a2 > 0x2F;
}

uint64_t ETLSAHCommandCreateHelloResponseExt(uint64_t a1, unsigned int a2, int a3, int a4, int a5, int a6, void *__src, size_t __n)
{
  if (a2 < 0x30)
  {
    return 0;
  }

  *a1 = 0x3000000002;
  *(a1 + 8) = a3;
  *(a1 + 12) = a4;
  *(a1 + 16) = a5;
  *(a1 + 20) = a6;
  if (__src)
  {
    if (__n <= 0x18)
    {
      memcpy((a1 + 24), __src, __n);
      return 1;
    }

    return 0;
  }

  *(a1 + 24) = 0;
  *(a1 + 32) = 0;
  *(a1 + 40) = 0;
  return 1;
}

uint64_t ETLSAHCommandParseMemoryDebug(_DWORD *a1, _DWORD *a2, _DWORD *a3)
{
  if (*a1 == 9)
  {
    if ((a1[1] & 0xFFFFFFF8) == 8)
    {
      return 0;
    }

    else
    {
      *a2 = a1[2];
      *a3 = a1[3];
      return 1;
    }
  }

  else
  {
    _ETLDebugPrint("_ETLSAHCommandExpectType", "Expected type %u, got %u:\n", 9, *a1);
    _ETLDebugPrintBinary();
    return 0;
  }
}

uint64_t ETLSAHCommandParseMemoryDebug64Bit(uint64_t a1, void *a2, void *a3)
{
  if (*a1 == 16)
  {
    if ((*(a1 + 4) - 24) <= 0xFFFFFFEF)
    {
      *a2 = *(a1 + 8);
      *a3 = *(a1 + 16);
      return 1;
    }
  }

  else
  {
    _ETLDebugPrint("_ETLSAHCommandExpectType", "Expected type %u, got %u:\n", 16, *a1);
    _ETLDebugPrintBinary();
  }

  return 0;
}

BOOL ETLSAHCommandCreateMemoryRead(uint64_t a1, unsigned int a2, int a3, int a4)
{
  if (a2 >= 0x10)
  {
    *a1 = 0x100000000ALL;
    *(a1 + 8) = a3;
    *(a1 + 12) = a4;
  }

  return a2 > 0xF;
}

BOOL ETLSAHCommandCreateMemoryRead64Bit(uint64_t a1, unsigned int a2, int a3, int a4)
{
  if (a2 >= 0x10)
  {
    *a1 = 0x100000000ALL;
    *(a1 + 8) = a3;
    *(a1 + 12) = a4;
  }

  return a2 > 0xF;
}

uint64_t ETLSAHGetDebugRecordCount(void *a1, uint64_t a2, int *a3, unsigned int a4, unsigned int *a5, uint64_t a6)
{
  if (!ETLSAHCommandReceive(a1, a2, a3, a4, a6))
  {
    _ETLDebugPrint("ETLSAHGetDebugRecordCount", "ETLSAHCommandReceive failed in %s\n");
    return 0;
  }

  if (*a3 != 9)
  {
    _ETLDebugPrint("_ETLSAHCommandExpectType", "Expected type %u, got %u:\n", 9, *a3);
    _ETLDebugPrintBinary();
    goto LABEL_13;
  }

  if ((a3[1] & 0xFFFFFFF8) == 8)
  {
LABEL_13:
    v13 = 0;
LABEL_14:
    *a5 = 0;
    _ETLDebugPrint("ETLSAHGetDebugRecordCount", "%s: no records requested\n", "ETLSAHGetDebugRecordCount");
    return v13;
  }

  v11 = a3[3];
  if (!v11)
  {
    v13 = 1;
    goto LABEL_14;
  }

  if (a4 < 0x10)
  {
    _ETLDebugPrint("ETLSAHGetDebugRecordCount", "ETLSAHCommandCreateMemoryRead failed in %s\n");
    return 0;
  }

  *a3 = 0x100000000ALL;
  v12 = *a1;
  if (!*a1 || (v15 = -1431655766, (v12(a1, a3, 16, &v15, 1, a6, 0) & 1) == 0) || v15 != a3[1])
  {
    _ETLDebugPrint("ETLSAHGetDebugRecordCount", "ETLSAHCommandSend failed in %s\n");
    return 0;
  }

  *a5 = v11 / 0x34;
  return 1;
}

uint64_t ETLSAHGetDebugRecordCount64Bit(void *a1, uint64_t a2, int *a3, unsigned int a4, unint64_t *a5, uint64_t a6)
{
  if (!ETLSAHCommandReceive(a1, a2, a3, a4, a6))
  {
    _ETLDebugPrint("ETLSAHGetDebugRecordCount64Bit", "ETLSAHCommandReceive failed in %s\n");
    return 0;
  }

  if (*a3 != 16)
  {
    _ETLDebugPrint("_ETLSAHCommandExpectType", "Expected type %u, got %u:\n", 16, *a3);
    _ETLDebugPrintBinary();
    goto LABEL_13;
  }

  if ((a3[1] - 24) > 0xFFFFFFEF)
  {
LABEL_13:
    v14 = 0;
LABEL_14:
    *a5 = 0;
    _ETLDebugPrint("ETLSAHGetDebugRecordCount64Bit", "%s: no records requested\n", "ETLSAHGetDebugRecordCount64Bit");
    return v14;
  }

  v11 = *(a3 + 2);
  if (!v11)
  {
    v14 = 1;
    goto LABEL_14;
  }

  if (a4 < 0x10)
  {
    _ETLDebugPrint("ETLSAHGetDebugRecordCount64Bit", "ETLSAHCommandCreateMemoryRead failed in %s\n");
    return 0;
  }

  v12 = *(a3 + 1);
  *a3 = 0x100000000ALL;
  a3[2] = v12;
  a3[3] = v11;
  v13 = *a1;
  if (!*a1 || (v16 = -1431655766, (v13(a1, a3, 16, &v16, 1, a6, 0) & 1) == 0) || v16 != a3[1])
  {
    _ETLDebugPrint("ETLSAHGetDebugRecordCount64Bit", "ETLSAHCommandSend failed in %s\n");
    return 0;
  }

  *a5 = v11 >> 6;
  return 1;
}

uint64_t ETLSAHGetDebugTable(uint64_t a1, uint64_t *a2, uint64_t a3, unsigned int a4, uint64_t a5)
{
  TelephonyUtilRingBufferReset();
  if (TelephonyUtilRingBufferInsertTransport() < 1)
  {
    _ETLDebugPrint("ETLSAHGetDebugTable", "Couldn't insert transport data into ring buffer when getting debug table\n");
    return 0;
  }

  v8 = *a2;
  if (!*a2)
  {
    _ETLDebugPrint("ETLSAHGetDebugTable", "Bad payload data when getting debug table\n");
    return 0;
  }

  v9 = *(a2 + 4);
  if (52 * a4 != TelephonyUtilRingBufferGetLinearReadRemaining())
  {
    _ETLDebugPrint("ETLSAHGetDebugTable", "Didn't receive expected number of bytes when getting debug table\n");
    return 0;
  }

  if (a4)
  {
    v10 = a4;
    v11 = (v8 + v9);
    do
    {
      v12 = *v11;
      v13 = v11[1];
      v14 = v11[2];
      v15 = *(v11 + 12);
      v11 = (v11 + 52);
      *(a3 + 48) = v15;
      *(a3 + 16) = v13;
      *(a3 + 32) = v14;
      *a3 = v12;
      a3 += 52;
      --v10;
    }

    while (v10);
  }

  return 1;
}

uint64_t ETLSAHGetDebugTable64Bit(uint64_t a1, uint64_t *a2, uint64_t a3, unint64_t a4, uint64_t a5)
{
  TelephonyUtilRingBufferReset();
  if (TelephonyUtilRingBufferInsertTransport() < 1)
  {
    _ETLDebugPrint("ETLSAHGetDebugTable64Bit", "Couldn't insert transport data into ring buffer when getting debug table\n");
    return 0;
  }

  v8 = *a2;
  if (!*a2)
  {
    _ETLDebugPrint("ETLSAHGetDebugTable64Bit", "Bad payload data when getting debug table\n");
    return 0;
  }

  v9 = *(a2 + 4);
  if (a4 << 6 != TelephonyUtilRingBufferGetLinearReadRemaining())
  {
    _ETLDebugPrint("ETLSAHGetDebugTable64Bit", "Didn't receive expected number of bytes when getting debug table\n");
    return 0;
  }

  if (a4)
  {
    v10 = 0;
    v11 = (v8 + v9);
    v12 = 1;
    do
    {
      v13 = (a3 + (v10 << 6));
      v14 = *v11;
      v15 = v11[1];
      v16 = v11[2];
      v17 = v11[3];
      v11 += 4;
      v13[2] = v16;
      v13[3] = v17;
      *v13 = v14;
      v13[1] = v15;
      v10 = v12++;
    }

    while (v10 < a4);
  }

  return 1;
}

BOOL ETLSAHGetRecordEx(uint64_t a1, void (**a2)(void), uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, size_t __size)
{
  v7 = __size;
  v13 = *(a3 + 4);
  v14 = *(a3 + 8);
  if (v14 <= 0x40000000)
  {
    v15 = *(a3 + 8);
  }

  else
  {
    v15 = 0;
  }

  v31[0] = *(a4 + 8);
  v31[1] = v13;
  v31[2] = v15 + v13;
  v32 = 0xAAAAAAAAAAAAAAAALL;
  v16 = malloc(__size);
  if (!v16)
  {
    return 0;
  }

  v17 = v16;
  v18 = *(a4 + 16) * (v15 / v7);
  v19 = v18 / 0x64;
  if (v18 < 0x64)
  {
    v19 = 1;
  }

  if (v15)
  {
    if (v7 >= 0x10 && *a1)
    {
      v28 = v19;
      v29 = a5;
      v20 = 1;
      while (1)
      {
        v21 = v14 >= v7 ? v7 : v14;
        *v17 = 0x100000000ALL;
        v17[2] = v13;
        v17[3] = v21;
        v22 = *a1;
        if (!*a1)
        {
          break;
        }

        v33 = -1431655766;
        if (!v22(a1, v17, 16, &v33, 1, a6, 0))
        {
          break;
        }

        v23 = v17[1];
        v24 = v33 == v23;
        if (v33 != v23)
        {
          goto LABEL_30;
        }

        v33 = 0;
        v25 = *(a1 + 8);
        if (!v25)
        {
          v26 = 0;
LABEL_28:
          _ETLDebugPrint("ETLSAHGetRecordEx", "Read failed. success = %u, read %u of %u\n", v26, v25, v21);
          break;
        }

        v26 = v25(a1, v17, v21, &v33, 1, a6, 0);
        LODWORD(v25) = v33;
        if (!v26 || v21 != v33)
        {
          goto LABEL_28;
        }

        if (*a2)
        {
          (*a2)();
          LODWORD(v21) = v33;
        }

        v13 = (v21 + v13);
        if (!--v20)
        {
          v32 = v13;
          (*(v29 + 16))(v29, v31, a3);
          v20 = v28;
        }

        v14 -= v21;
        if (!v14)
        {
          goto LABEL_30;
        }
      }
    }

    v24 = 0;
  }

  else
  {
    v24 = 1;
  }

LABEL_30:
  free(v17);
  return v24;
}

BOOL ETLSAHGetRecordEx64Bit(uint64_t a1, void (**a2)(void, void *, void, int *, uint64_t, uint64_t, void), uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, size_t __size)
{
  v7 = __size;
  v12 = *(a3 + 8);
  v13 = *(a3 + 16);
  if (v13 <= 0x40000000)
  {
    v14 = *(a3 + 16);
  }

  else
  {
    v14 = 0;
  }

  v15 = __size;
  v33[0] = *(a4 + 8);
  v33[1] = v12;
  v33[2] = v14 + v12;
  v34 = 0xAAAAAAAAAAAAAAAALL;
  v16 = malloc(__size);
  if (!v16)
  {
    return 0;
  }

  v17 = v16;
  v18 = v14 / v15 * *(a4 + 16);
  v19 = v18 / 0x64;
  if (v18 < 0x64)
  {
    v19 = 1;
  }

  if (v14)
  {
    if (v7 >= 0x10 && *a1)
    {
      v29 = v19;
      v20 = 1;
      while (1)
      {
        v21 = v13 >= v15 ? v15 : v13;
        *v17 = 0x100000000ALL;
        v17[2] = v12;
        v17[3] = v21;
        v22 = *a1;
        if (!*a1)
        {
          break;
        }

        v35 = -1431655766;
        if (!v22(a1, v17, 16, &v35, 1, a6, 0))
        {
          break;
        }

        v23 = v17[1];
        v24 = v35 == v23;
        if (v35 != v23)
        {
          goto LABEL_30;
        }

        v35 = 0;
        v25 = *(a1 + 8);
        if (!v25)
        {
          v27 = 0;
          v26 = 0;
LABEL_28:
          _ETLDebugPrint("ETLSAHGetRecordEx64Bit", "Read failed. success = %u, read %u of %llu\n", v26, v27, v21);
          break;
        }

        v26 = v25(a1, v17, v21, &v35, 1, a6, 0);
        v27 = v35;
        if (!v26 || v21 != v35)
        {
          goto LABEL_28;
        }

        v32 = 0;
        if (*a2)
        {
          (*a2)(a2, v17, v35, &v32, 1, a6, 0);
          v21 = v35;
        }

        v12 += v21;
        if (!--v20)
        {
          v34 = v12;
          (*(a5 + 16))(a5, v33, a3);
          v20 = v29;
        }

        v13 -= v21;
        if (!v13)
        {
          goto LABEL_30;
        }
      }
    }

    v24 = 0;
  }

  else
  {
    v24 = 1;
  }

LABEL_30:
  free(v17);
  return v24;
}

uint64_t ETLSAHCommandParseReadData(_DWORD *a1, _DWORD *a2, _DWORD *a3, _DWORD *a4)
{
  if (*a1 == 3)
  {
    if ((a1[1] - 20) <= 0xFFFFFFF3)
    {
      *a2 = a1[2];
      *a3 = a1[3];
      *a4 = a1[4];
      return 1;
    }
  }

  else
  {
    _ETLDebugPrint("_ETLSAHCommandExpectType", "Expected type %u, got %u:\n", 3, *a1);
    _ETLDebugPrintBinary();
  }

  return 0;
}

uint64_t ETLSAHCommandParseEndOfImageTransfer(_DWORD *a1, _DWORD *a2, _DWORD *a3)
{
  if (*a1 == 4)
  {
    if ((a1[1] & 0xFFFFFFF8) == 8)
    {
      return 0;
    }

    else
    {
      *a2 = a1[2];
      *a3 = a1[3];
      return 1;
    }
  }

  else
  {
    _ETLDebugPrint("_ETLSAHCommandExpectType", "Expected type %u, got %u:\n", 4, *a1);
    _ETLDebugPrintBinary();
    return 0;
  }
}

BOOL ETLSAHCommandCreateDone(void *a1, unsigned int a2)
{
  if (a2 >= 8)
  {
    *a1 = 0x800000005;
  }

  return a2 > 7;
}

uint64_t ETLSAHCommandParseDoneResponse(_DWORD *a1, _DWORD *a2)
{
  if (*a1 == 6)
  {
    if ((a1[1] & 0xFFFFFFFC) == 8)
    {
      return 0;
    }

    else
    {
      *a2 = a1[2];
      return 1;
    }
  }

  else
  {
    _ETLDebugPrint("_ETLSAHCommandExpectType", "Expected type %u, got %u:\n", 6, *a1);
    _ETLDebugPrintBinary();
    return 0;
  }
}

BOOL ETLSAHCommandCreateReset(void *a1, unsigned int a2)
{
  if (a2 >= 8)
  {
    *a1 = 0x800000007;
  }

  return a2 > 7;
}

BOOL ETLSAHCommandParseResetResponse(int *a1)
{
  v1 = *a1;
  if (*a1 != 8)
  {
    _ETLDebugPrint("_ETLSAHCommandExpectType", "Expected type %u, got %u:\n", 8, v1);
    _ETLDebugPrintBinary();
  }

  return v1 == 8;
}

BOOL ETLSAHCommandParseCommandReady(int *a1)
{
  v1 = *a1;
  if (*a1 != 11)
  {
    _ETLDebugPrint("_ETLSAHCommandExpectType", "Expected type %u, got %u:\n", 11, v1);
    _ETLDebugPrintBinary();
  }

  return v1 == 11;
}

uint64_t ETLSAHCommandCreateSwitchMode(uint64_t a1, int a2, unint64_t a3)
{
  if (a3 <= 0xB)
  {
    _ETLDebugPrint("ETLSAHCommandCreateSwitchMode", "buffer capacity too small\n");
    return 0;
  }

  else if (a1)
  {
    *a1 = 0xC0000000CLL;
    *(a1 + 8) = a2;
    return 1;
  }

  else
  {
    _ETLDebugPrint("ETLSAHCommandCreateSwitchMode", "header is NULL\n");
    return 0;
  }
}

uint64_t ETLSAHCommandParseMaverickEraseQuery(_DWORD *a1, void *a2, _DWORD *a3)
{
  v3 = 0;
  if (!a2 || !a3)
  {
    return v3;
  }

  if (*a1 == 160)
  {
    *a3 = a1[1] - 8;
    *a2 = a1 + 2;
    return 1;
  }

  _ETLDebugPrint("_ETLSAHCommandExpectType", "Expected type %u, got %u:\n", 160, *a1);
  _ETLDebugPrintBinary();
  return 0;
}

BOOL ETLSAHCommandCreateMaverickEraseResponse(_DWORD *a1, unsigned int a2, int a3, char a4)
{
  if (a4)
  {
    v4 = 16;
  }

  else
  {
    v4 = 12;
  }

  if (v4 <= a2)
  {
    *a1 = 161;
    a1[1] = v4;
    a1[2] = a3;
    if (a4)
    {
      a1[3] = 1213417795;
    }
  }

  return v4 <= a2;
}

uint64_t ETLSAHCommandParseMaverickSendHashesQuery(uint64_t a1, uint64_t a2)
{
  if (*a1 != 165)
  {
    _ETLDebugPrint("_ETLSAHCommandExpectType", "Expected type %u, got %u:\n", 165, *a1);
    _ETLDebugPrintBinary();
    return 0;
  }

  v4 = *(a1 + 4) - 8;
  v5 = ETLDLOADGetProtocolVersion();
  if (v5 <= 1)
  {
    if (!v5)
    {
      _ETLDebugPrint("ETLSAHCommandParseMaverickSendHashesQuery", "Protocol version 2\n");
      if (v4 >= 0x8C)
      {
        v28 = *(a1 + 8);
        *(a2 + 16) = *(a1 + 24);
        *a2 = v28;
        v29 = *(a1 + 28);
        *(a2 + 36) = *(a1 + 44);
        *(a2 + 20) = v29;
        v30 = *(a1 + 48);
        *(a2 + 56) = *(a1 + 64);
        *(a2 + 40) = v30;
        v31 = *(a1 + 68);
        *(a2 + 76) = *(a1 + 84);
        *(a2 + 60) = v31;
        v32 = *(a1 + 88);
        *(a2 + 96) = *(a1 + 104);
        *(a2 + 80) = v32;
        v33 = *(a1 + 108);
        *(a2 + 116) = *(a1 + 124);
        *(a2 + 100) = v33;
        v34 = *(a1 + 128);
        *(a2 + 136) = *(a1 + 144);
        *(a2 + 120) = v34;
        return 1;
      }

      return 0;
    }

    if (v5 == 1)
    {
      _ETLDebugPrint("ETLSAHCommandParseMaverickSendHashesQuery", "Sahara Protocol version 1\n");
      if (v4 >= 0x140)
      {
        v6 = *(a1 + 24);
        *a2 = *(a1 + 8);
        *(a2 + 16) = v6;
        v7 = *(a1 + 56);
        *(a2 + 32) = *(a1 + 40);
        *(a2 + 48) = v7;
        v8 = *(a1 + 88);
        *(a2 + 64) = *(a1 + 72);
        *(a2 + 80) = v8;
        v9 = *(a1 + 120);
        *(a2 + 96) = *(a1 + 104);
        *(a2 + 112) = v9;
        v10 = *(a1 + 152);
        *(a2 + 128) = *(a1 + 136);
        *(a2 + 144) = v10;
        v11 = *(a1 + 184);
        *(a2 + 160) = *(a1 + 168);
        *(a2 + 176) = v11;
        v12 = *(a1 + 216);
        *(a2 + 192) = *(a1 + 200);
        *(a2 + 208) = v12;
        v13 = *(a1 + 248);
        *(a2 + 224) = *(a1 + 232);
        *(a2 + 240) = v13;
        v14 = *(a1 + 280);
        *(a2 + 256) = *(a1 + 264);
        *(a2 + 272) = v14;
        v15 = *(a1 + 312);
        *(a2 + 288) = *(a1 + 296);
        *(a2 + 304) = v15;
        return 1;
      }

      return 0;
    }

LABEL_12:
    if (v4 >= 0x3C)
    {
      v25 = *(a1 + 8);
      *(a2 + 16) = *(a1 + 24);
      *a2 = v25;
      v26 = *(a1 + 28);
      *(a2 + 36) = *(a1 + 44);
      *(a2 + 20) = v26;
      v27 = *(a1 + 48);
      *(a2 + 56) = *(a1 + 64);
      *(a2 + 40) = v27;
      return 1;
    }

    return 0;
  }

  if (v5 != 3)
  {
    if (v5 == 2)
    {
      _ETLDebugPrint("ETLSAHCommandParseMaverickSendHashesQuery", "Sahara Protocol version 3\n");
      if (v4 >= 0xC0)
      {
        v17 = *(a1 + 8);
        v18 = *(a1 + 40);
        *(a2 + 16) = *(a1 + 24);
        *(a2 + 32) = v18;
        *a2 = v17;
        v19 = *(a1 + 56);
        v20 = *(a1 + 88);
        *(a2 + 64) = *(a1 + 72);
        *(a2 + 80) = v20;
        *(a2 + 48) = v19;
        v21 = *(a1 + 104);
        v22 = *(a1 + 136);
        *(a2 + 112) = *(a1 + 120);
        *(a2 + 128) = v22;
        *(a2 + 96) = v21;
        v23 = *(a1 + 152);
        v24 = *(a1 + 184);
        *(a2 + 160) = *(a1 + 168);
        *(a2 + 176) = v24;
        *(a2 + 144) = v23;
        return 1;
      }

      return 0;
    }

    goto LABEL_12;
  }

  _ETLDebugPrint("ETLSAHCommandParseMaverickSendHashesQuery", "Sahara Protocol version 4\n");
  if (v4 >= 0xF0)
  {
    v35 = *(a1 + 8);
    v36 = *(a1 + 40);
    *(a2 + 16) = *(a1 + 24);
    *(a2 + 32) = v36;
    *a2 = v35;
    v37 = *(a1 + 56);
    v38 = *(a1 + 88);
    *(a2 + 64) = *(a1 + 72);
    *(a2 + 80) = v38;
    *(a2 + 48) = v37;
    v39 = *(a1 + 104);
    v40 = *(a1 + 136);
    *(a2 + 112) = *(a1 + 120);
    *(a2 + 128) = v40;
    *(a2 + 96) = v39;
    v41 = *(a1 + 152);
    v42 = *(a1 + 184);
    *(a2 + 160) = *(a1 + 168);
    *(a2 + 176) = v42;
    *(a2 + 144) = v41;
    v43 = *(a1 + 200);
    v44 = *(a1 + 232);
    *(a2 + 208) = *(a1 + 216);
    *(a2 + 224) = v44;
    *(a2 + 192) = v43;
    return 1;
  }

  return 0;
}

uint64_t ETLSAHCommandParseMaverickConfigQuery(uint64_t a1, uint64_t a2)
{
  if (*a1 == 169)
  {
    if ((*(a1 + 4) - 280) <= 0xFFFFFEEF)
    {
      *a2 = *(a1 + 8);
      *(a2 + 4) = *(a1 + 12);
      *(a2 + 8) = *(a1 + 16);
      *(a2 + 12) = *(a1 + 20);
      v2 = *(a1 + 24);
      v3 = *(a1 + 40);
      v4 = *(a1 + 72);
      *(a2 + 48) = *(a1 + 56);
      *(a2 + 64) = v4;
      *(a2 + 16) = v2;
      *(a2 + 32) = v3;
      v5 = *(a1 + 88);
      v6 = *(a1 + 104);
      v7 = *(a1 + 136);
      *(a2 + 112) = *(a1 + 120);
      *(a2 + 128) = v7;
      *(a2 + 80) = v5;
      *(a2 + 96) = v6;
      v8 = *(a1 + 152);
      v9 = *(a1 + 168);
      v10 = *(a1 + 200);
      *(a2 + 176) = *(a1 + 184);
      *(a2 + 192) = v10;
      *(a2 + 144) = v8;
      *(a2 + 160) = v9;
      v11 = *(a1 + 216);
      v12 = *(a1 + 232);
      v13 = *(a1 + 264);
      *(a2 + 240) = *(a1 + 248);
      *(a2 + 256) = v13;
      *(a2 + 208) = v11;
      *(a2 + 224) = v12;
      *(a2 + 271) = 0;
      return 1;
    }
  }

  else
  {
    _ETLDebugPrint("_ETLSAHCommandExpectType", "Expected type %u, got %u:\n", 169, *a1);
    _ETLDebugPrintBinary();
  }

  return 0;
}

uint64_t ETLSAHCommandCreateMaverickConfigResponse(uint64_t a1, int a2, uint64_t a3, uint64_t a4, unsigned int a5)
{
  if (a5 <= 0x17)
  {
    _ETLDebugPrint("ETLSAHCommandCreateMaverickConfigResponse", "buffer capacity too small\n", a3, a4);
    return 0;
  }

  else if (a1)
  {
    *a1 = 0x18000000AALL;
    *(a1 + 8) = a2;
    *(a1 + 12) = a3;
    *(a1 + 16) = a4;
    return 1;
  }

  else
  {
    _ETLDebugPrint("ETLSAHCommandCreateMaverickConfigResponse", "header is NULL\n", a3, a4);
    return 0;
  }
}

BOOL ETLSAHCommandCreateMaverickHashResponse(uint64_t a1, unsigned int a2, int a3)
{
  if (a2 >= 0xC)
  {
    *a1 = 0xC000000A6;
    *(a1 + 8) = a3;
  }

  return a2 > 0xB;
}

uint64_t ETLSAHCommandParseChipID(_DWORD *a1, unint64_t a2, _DWORD *a3)
{
  if (a1 && a3)
  {
    if (a2 <= 7)
    {
      _ETLDebugPrint("ETLSAHCommandParseChipID", "unexpected data size.  expected %zu received %zu\n", 8uLL, a2);
      return 0;
    }

    else
    {
      *a3 = a1[1];
      return 1;
    }
  }

  else
  {
    _ETLDebugPrint("ETLSAHCommandParseChipID", "invalid arguments.  buffer = %p, chip id = %p\n", a1, a3);
    return 0;
  }
}

uint64_t ETLSAHCommandParseMaverickRootManifestQuery(uint64_t a1, uint64_t a2)
{
  if (*a1 != 162)
  {
    _ETLDebugPrint("_ETLSAHCommandExpectType", "Expected type %u, got %u:\n", 162, *a1);
    _ETLDebugPrintBinary();
    return 0;
  }

  v4 = *(a1 + 4) - 8;
  v5 = ETLDLOADGetProtocolVersion();
  if (v5 < 2)
  {
    _ETLDebugPrint("ETLSAHCommandParseMaverickRootManifestQuery", "MAV Extension: Protocol version 2\n");
    if (v4 < 0x40)
    {
      return 0;
    }

    *a2 = *(a1 + 8);
    v10 = *(a1 + 12);
    *(a2 + 20) = *(a1 + 28);
    *(a2 + 4) = v10;
    *(a2 + 24) = *(a1 + 32);
    *(a2 + 28) = *(a1 + 36);
    v11 = *(a1 + 40);
    v12 = *(a1 + 56);
LABEL_12:
    *(a2 + 32) = v11;
    *(a2 + 48) = v12;
    return 1;
  }

  if (v5 == 2)
  {
    _ETLDebugPrint("ETLSAHCommandParseMaverickRootManifestQuery", "MAV Extension Protocol version 3\n");
    if (v4 < 0x50)
    {
      return 0;
    }

    *a2 = *(a1 + 8);
    v13 = *(a1 + 12);
    *(a2 + 20) = *(a1 + 28);
    *(a2 + 4) = v13;
    *(a2 + 24) = *(a1 + 32);
    *(a2 + 28) = *(a1 + 36);
    v11 = *(a1 + 40);
    v12 = *(a1 + 56);
    *(a2 + 64) = *(a1 + 72);
    goto LABEL_12;
  }

  if (v5 == 3)
  {
    _ETLDebugPrint("ETLSAHCommandParseMaverickRootManifestQuery", "MAV Extension Protocol version 4\n");
    if (v4 >= 0x54)
    {
      *a2 = *(a1 + 8);
      v6 = *(a1 + 12);
      *(a2 + 20) = *(a1 + 28);
      *(a2 + 4) = v6;
      *(a2 + 24) = *(a1 + 32);
      *(a2 + 32) = *(a1 + 40);
      v7 = *(a1 + 44);
      v8 = *(a1 + 60);
      *(a2 + 68) = *(a1 + 76);
      *(a2 + 52) = v8;
      *(a2 + 36) = v7;
      return 1;
    }
  }

  else if (v4 >= 0x20)
  {
    *a2 = *(a1 + 8);
    v14 = *(a1 + 12);
    *(a2 + 20) = *(a1 + 28);
    *(a2 + 4) = v14;
    *(a2 + 24) = *(a1 + 32);
    *(a2 + 28) = *(a1 + 36);
    return 1;
  }

  return 0;
}

BOOL ETLSAHCommandCreateMaverickRootManifestResponse(_DWORD *a1, unsigned int a2, void *__src, size_t __n)
{
  v5 = __n + 8;
  if (__n + 8 <= a2)
  {
    *a1 = 163;
    a1[1] = v5;
    memcpy(a1 + 2, __src, __n);
  }

  return v5 <= a2;
}

BOOL ETLSAHCommandMaverickParseEnd(int *a1)
{
  v1 = *a1;
  if (*a1 != 164)
  {
    _ETLDebugPrint("_ETLSAHCommandExpectType", "Expected type %u, got %u:\n", 164, v1);
    _ETLDebugPrintBinary();
  }

  return v1 == 164;
}