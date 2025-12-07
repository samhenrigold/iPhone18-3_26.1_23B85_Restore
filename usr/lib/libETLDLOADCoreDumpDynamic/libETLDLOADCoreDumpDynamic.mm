uint64_t ETLDLOADCoreDumpCaptureRecord(uint64_t a1, uint64_t a2, uint64_t (**a3)(void, unint64_t, uint64_t, int *, uint64_t, void, void), char a4, uint64_t a5, uint64_t a6, unsigned int a7)
{
  v7 = a6;
  v13 = *(a1 + 4);
  v12 = *(a1 + 8);
  v42[0] = *(a5 + 8);
  v42[1] = v13;
  v14 = v12 + v13;
  v42[2] = (v12 + v13);
  v43 = 0xAAAAAAAAAAAAAAAALL;
  v15 = malloc((4 << a4));
  if (v15)
  {
    v34 = v15;
    v35 = a3;
    *&v16 = 0xAAAAAAAAAAAAAAAALL;
    *(&v16 + 1) = 0xAAAAAAAAAAAAAAAALL;
    v47[1] = v16;
    v47[2] = v16;
    v17 = 1 << a4;
    v47[0] = v16;
    v44 = v16;
    v45 = v16;
    v46 = v16;
    memset(v41, 170, sizeof(v41));
    v18 = TelephonyUtilRingBufferInitialize();
    v19 = 0;
    v20 = (((1 << a4) + *(a1 + 8) - 1) >> a4) * *(a5 + 16);
    if (v20 < 0x64)
    {
      v21 = 1;
    }

    else
    {
      v21 = v20 / 0x64;
    }

    v33 = v21;
    v22 = 1;
    v23 = *(a5 + 24);
    if (v23)
    {
      goto LABEL_8;
    }

    while (1)
    {
      while (1)
      {
        if (v14 == v13)
        {
LABEL_37:
          free(v34);
          return v18 & 1;
        }

        v40 = -1431655766;
        v39 = -21846;
        v38 = 0xAAAAAAAAAAAAAAAALL;
        if (v14 - v13 >= v17)
        {
          v24 = v17;
        }

        else
        {
          v24 = v14 - v13;
        }

        if (!ETLDLOADCommandCreateMemoryDebugReadRequest())
        {
          goto LABEL_36;
        }

        v25 = ETLDLOADCommandSend();
        HDLCFrameFree();
        if (!v25)
        {
          goto LABEL_36;
        }

        if (ETLDLOADCommandReceiveWithBufferAndFlags())
        {
          break;
        }

        _ETLDebugPrint("ETLDLOADCoreDumpCaptureRecord", "Error on receiving debug data at 0x%x, length 0x%x, timeout %u\n", v13, v24, v7);
        if (v19 >= 7)
        {
          goto LABEL_36;
        }

LABEL_24:
        v18 = 0;
        ++v19;
        v23 = *(a5 + 24);
        if (v23)
        {
LABEL_8:
          if (*v23 == 1)
          {
            _ETLDebugPrint("ETLDLOADCoreDumpCaptureRecord", "Aborted\n");
            goto LABEL_36;
          }
        }
      }

      if (!ETLDLOADCommandParseMemoryDebugReadResponse())
      {
        _ETLDebugPrint("ETLDLOADCoreDumpCaptureRecord", "Parsing memory read response failed at 0x%x, length 0x%x:\n", v13, v24);
        ETLDLOADCommandDumpCommand();
        HDLCFrameFree();
        if (v19 >= 7)
        {
          goto LABEL_36;
        }

        goto LABEL_24;
      }

      v37 = -1431655766;
      if (v40 == v13)
      {
        v26 = v39;
        v27 = v24;
        v28 = v35;
        if (v24 != v39)
        {
          goto LABEL_27;
        }
      }

      else
      {
        _ETLDebugPrint("ETLDLOADCoreDumpCaptureRecord", "Received current was 0x%x, expected 0x%x\n", v40, v13);
        v26 = v39;
        v27 = v24;
        v28 = v35;
        if (v24 != v39)
        {
LABEL_27:
          _ETLDebugPrint("ETLDLOADCoreDumpCaptureRecord", "Received chunk was 0x%x, expected 0x%x\n", v26, v27);
          v29 = *v28;
          if (!*v28)
          {
LABEL_34:
            v31 = v37;
LABEL_35:
            _ETLDebugPrint("ETLDLOADCoreDumpCaptureRecord", "Failed in writing debug data at 0x%x, length 0x%x, wrote 0x%x\n", v13, v27, v31);
            HDLCFrameFree();
LABEL_36:
            v18 = 0;
            goto LABEL_37;
          }

          goto LABEL_28;
        }
      }

      v29 = *v28;
      if (!*v28)
      {
        goto LABEL_34;
      }

LABEL_28:
      v30 = v29(v28, v38, v27, &v37, 1, a7, 0);
      v31 = v37;
      if (!v30 || v37 != v27)
      {
        goto LABEL_35;
      }

      v13 = (v27 + v13);
      if (!--v22)
      {
        v43 = v13;
        (*a5)(v42);
        v22 = v33;
      }

      HDLCFrameFree();
      v19 = 0;
      v18 = 1;
      v23 = *(a5 + 24);
      if (v23)
      {
        goto LABEL_8;
      }
    }
  }

  _ETLDebugPrint("ETLDLOADCoreDumpCaptureRecord", "Failed to allocate buffer\n");
  v18 = 0;
  return v18 & 1;
}

uint64_t ETLDLOADCoreDumpCaptureRecordFast(uint64_t a1, uint64_t a2, unsigned int (**a3)(void, void, void, void, void, void, void), char a4, uint64_t a5, uint64_t a6, unsigned int a7)
{
  v7 = a6;
  v12 = *(a1 + 4);
  v11 = *(a1 + 8);
  v55[0] = *(a5 + 8);
  v55[1] = v12;
  v13 = v11 + v12;
  v55[2] = (v11 + v12);
  v56 = 0xAAAAAAAAAAAAAAAALL;
  v53 = malloc((4 << a4));
  if (!v53)
  {
    _ETLDebugPrint("ETLDLOADCoreDumpCaptureRecordFast", "Failed to allocate buffer\n");
    Response = 0;
    return Response & 1;
  }

  Response = 0;
  v15 = 1 << a4;
  *&v16 = 0xAAAAAAAAAAAAAAAALL;
  *(&v16 + 1) = 0xAAAAAAAAAAAAAAAALL;
  v58 = v16;
  v59 = v16;
  v17 = *(a5 + 16) * (((1 << a4) + v11 - 1) >> a4);
  v57 = v16;
  if (v17 < 0x64)
  {
    v18 = 1;
  }

  else
  {
    v18 = v17 / 0x64;
  }

  v49 = v18;
  v52 = 1;
  v50 = a3;
  while (1)
  {
    v19 = *(a5 + 24);
    if (v19 && *v19 == 1)
    {
LABEL_81:
      _ETLDebugPrint("ETLDLOADCoreDumpCaptureRecordFast", "Aborted\n");
      goto LABEL_82;
    }

    v20 = v13 - v12;
    if (v13 == v12)
    {
      goto LABEL_83;
    }

    if (v13 - v12 >= v15)
    {
      v21 = v15;
    }

    else
    {
      v21 = v13 - v12;
    }

    if (!ETLDLOADCommandCreateMemoryDebugFastReadRequest())
    {
      goto LABEL_82;
    }

    v22 = ETLDLOADCommandSend();
    HDLCFrameFree();
    if (!v22)
    {
      goto LABEL_82;
    }

    v23 = v21;
    Response = ETLDLOADCommandReadMemoryDebugFastReadResponse();
    if (Response)
    {
      goto LABEL_64;
    }

    _ETLDebugPrint("ETLDLOADCoreDumpCaptureRecordFast", "Error on receiving debug data at 0x%x, length 0x%x, timeout %u\n", v12, v21, v7);
    v24 = *(a5 + 24);
    if (v24 && (*v24 & 1) != 0)
    {
      goto LABEL_81;
    }

    v25 = v13 - v12;
    if (v13 == v12)
    {
      goto LABEL_83;
    }

    if (v20 >= v15)
    {
      LOWORD(v20) = v15;
    }

    if (!ETLDLOADCommandCreateMemoryDebugFastReadRequest())
    {
      goto LABEL_82;
    }

    v26 = ETLDLOADCommandSend();
    HDLCFrameFree();
    if (!v26)
    {
      goto LABEL_82;
    }

    v23 = v20;
    Response = ETLDLOADCommandReadMemoryDebugFastReadResponse();
    if (Response)
    {
      goto LABEL_64;
    }

    _ETLDebugPrint("ETLDLOADCoreDumpCaptureRecordFast", "Error on receiving debug data at 0x%x, length 0x%x, timeout %u\n", v12, v20, v7);
    v27 = *(a5 + 24);
    if (v27 && (*v27 & 1) != 0)
    {
      goto LABEL_81;
    }

    v28 = v13 - v12;
    if (v13 == v12)
    {
      goto LABEL_83;
    }

    if (v25 >= v15)
    {
      LOWORD(v25) = v15;
    }

    if (!ETLDLOADCommandCreateMemoryDebugFastReadRequest())
    {
      goto LABEL_82;
    }

    v29 = ETLDLOADCommandSend();
    HDLCFrameFree();
    if (!v29)
    {
      goto LABEL_82;
    }

    v23 = v25;
    Response = ETLDLOADCommandReadMemoryDebugFastReadResponse();
    if (Response)
    {
      goto LABEL_64;
    }

    _ETLDebugPrint("ETLDLOADCoreDumpCaptureRecordFast", "Error on receiving debug data at 0x%x, length 0x%x, timeout %u\n", v12, v25, v7);
    v30 = *(a5 + 24);
    if (v30 && (*v30 & 1) != 0)
    {
      goto LABEL_81;
    }

    v31 = v13 - v12;
    if (v13 == v12)
    {
      goto LABEL_83;
    }

    if (v28 >= v15)
    {
      LOWORD(v28) = v15;
    }

    if (!ETLDLOADCommandCreateMemoryDebugFastReadRequest())
    {
      goto LABEL_82;
    }

    v32 = ETLDLOADCommandSend();
    HDLCFrameFree();
    if (!v32)
    {
      goto LABEL_82;
    }

    v23 = v28;
    Response = ETLDLOADCommandReadMemoryDebugFastReadResponse();
    if (Response)
    {
      goto LABEL_64;
    }

    _ETLDebugPrint("ETLDLOADCoreDumpCaptureRecordFast", "Error on receiving debug data at 0x%x, length 0x%x, timeout %u\n", v12, v28, v7);
    v33 = *(a5 + 24);
    if (v33 && (*v33 & 1) != 0)
    {
      goto LABEL_81;
    }

    v34 = v13 - v12;
    if (v13 == v12)
    {
      goto LABEL_83;
    }

    if (v31 >= v15)
    {
      LOWORD(v31) = v15;
    }

    if (!ETLDLOADCommandCreateMemoryDebugFastReadRequest())
    {
      goto LABEL_82;
    }

    v35 = ETLDLOADCommandSend();
    HDLCFrameFree();
    if (!v35)
    {
      goto LABEL_82;
    }

    v23 = v31;
    Response = ETLDLOADCommandReadMemoryDebugFastReadResponse();
    if (Response)
    {
      goto LABEL_64;
    }

    _ETLDebugPrint("ETLDLOADCoreDumpCaptureRecordFast", "Error on receiving debug data at 0x%x, length 0x%x, timeout %u\n", v12, v31, v7);
    v36 = *(a5 + 24);
    if (v36 && (*v36 & 1) != 0)
    {
      goto LABEL_81;
    }

    v37 = v13 - v12;
    if (v13 == v12)
    {
      goto LABEL_83;
    }

    if (v34 >= v15)
    {
      LOWORD(v34) = v15;
    }

    if (!ETLDLOADCommandCreateMemoryDebugFastReadRequest())
    {
      goto LABEL_82;
    }

    v38 = ETLDLOADCommandSend();
    HDLCFrameFree();
    if (!v38)
    {
      goto LABEL_82;
    }

    v23 = v34;
    Response = ETLDLOADCommandReadMemoryDebugFastReadResponse();
    if (Response)
    {
      goto LABEL_64;
    }

    _ETLDebugPrint("ETLDLOADCoreDumpCaptureRecordFast", "Error on receiving debug data at 0x%x, length 0x%x, timeout %u\n", v12, v34, v7);
    v39 = *(a5 + 24);
    if (v39 && (*v39 & 1) != 0)
    {
      goto LABEL_81;
    }

    if (v13 == v12)
    {
      goto LABEL_83;
    }

    if (v37 >= v15)
    {
      LOWORD(v37) = v15;
    }

    if (!ETLDLOADCommandCreateMemoryDebugFastReadRequest())
    {
      goto LABEL_82;
    }

    v40 = ETLDLOADCommandSend();
    HDLCFrameFree();
    if (!v40)
    {
      goto LABEL_82;
    }

    v23 = v37;
    Response = ETLDLOADCommandReadMemoryDebugFastReadResponse();
    if (Response)
    {
LABEL_64:
      v54 = -1431655766;
      v41 = v50;
      v42 = *v50;
      if (!*v50)
      {
        goto LABEL_79;
      }

      goto LABEL_65;
    }

    _ETLDebugPrint("ETLDLOADCoreDumpCaptureRecordFast", "Error on receiving debug data at 0x%x, length 0x%x, timeout %u\n", v12, v37, v7);
    v44 = *(a5 + 24);
    if (v44 && (*v44 & 1) != 0)
    {
      goto LABEL_81;
    }

    if (v13 == v12)
    {
      goto LABEL_83;
    }

    if (v13 - v12 >= v15)
    {
      v45 = v15;
    }

    else
    {
      v45 = v13 - v12;
    }

    if (!ETLDLOADCommandCreateMemoryDebugFastReadRequest())
    {
      goto LABEL_82;
    }

    v46 = ETLDLOADCommandSend();
    HDLCFrameFree();
    if (!v46)
    {
      goto LABEL_82;
    }

    v23 = v45;
    v47 = ETLDLOADCommandReadMemoryDebugFastReadResponse();
    if ((v47 & 1) == 0)
    {
      break;
    }

    Response = v47;
    v54 = -1431655766;
    v41 = v50;
    v42 = *v50;
    if (!*v50)
    {
      goto LABEL_79;
    }

LABEL_65:
    if (!v42(v41, v53, v23, &v54, 1, a7, 0) || v54 != v23)
    {
LABEL_79:
      _ETLDebugPrint("ETLDLOADCoreDumpCaptureRecordFast", "Failed in writing debug data at 0x%x, length 0x%x, wrote 0x%x\n");
      goto LABEL_82;
    }

    v12 = (v23 + v12);
    v43 = v52 - 1;
    if (v52 == 1)
    {
      v56 = v12;
      (*a5)(v55);
      v43 = v49;
    }

    v52 = v43;
  }

  _ETLDebugPrint("ETLDLOADCoreDumpCaptureRecordFast", "Error on receiving debug data at 0x%x, length 0x%x, timeout %u\n");
LABEL_82:
  Response = 0;
LABEL_83:
  free(v53);
  return Response & 1;
}