BOOL gckIsNewInformationAvailableForParticipant(uint64_t a1, uint64_t a2, int a3)
{
  v10 = *MEMORY[0x277D85DE8];
  if (a1 < 1)
  {
    return 0;
  }

  else
  {
    v4 = (a2 + 280);
    v5 = 1;
    v6 = 1;
    while (!*(v4 - 1) || *v4 == a3)
    {
      v6 = v5 < a1;
      v4 += 104;
      if (++v5 - a1 == 1)
      {
        return 0;
      }
    }

    v8 = gcks_log(a1, a2);
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
    {
      v9[0] = 67109120;
      v9[1] = a3;
      _os_log_impl(&dword_239FB7000, v8, OS_LOG_TYPE_DEFAULT, "New information is available for participant [%08X].", v9, 8u);
    }
  }

  return v6;
}

void gckSessionSendDD(uint64_t a1, uint64_t a2, int a3, int a4)
{
  v6 = a2;
  v35 = *MEMORY[0x277D85DE8];
  v27 = 0u;
  v28 = 0u;
  v26 = 0;
  v8 = pthread_mutex_lock((a1 + 7080));
  HIDWORD(v27) = *(a1 + 420);
  *&v28 = a1 + 424;
  v10 = *(a1 + 7184);
  if (!v10)
  {
LABEL_5:
    v11 = gcks_log(v8, v9);
    if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 67109120;
      LODWORD(v30) = v6;
      _os_log_impl(&dword_239FB7000, v11, OS_LOG_TYPE_DEFAULT, "Couldn't find cList with iPriority == 0 for participant [%08X].", buf, 8u);
    }

    pthread_mutex_unlock((a1 + 7080));
    return;
  }

  while (*(v10 + 88) != v6 || *(v10 + 80))
  {
    v10 = *(v10 + 832);
    if (!v10)
    {
      goto LABEL_5;
    }
  }

  if (!*(v10 + 60))
  {
    gckSessionRequestLSAUpdateForNode((a1 + 424), v9);
  }

  v12 = OSPFMakeDD(&v26, &v27, 0, *(a1 + 416), v6, *(v10 + 32));
  *(v10 + 60) = 1;
  v13 = pthread_mutex_unlock((a1 + 7080));
  if ((v12 & 0x80000000) != 0)
  {
    v17 = gcks_log(v13, v14);
    if (os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
    {
      gckSessionSendDD_cold_1();
    }

    return;
  }

  if (!a4)
  {
    v18 = gcks_log(v13, v14);
    if (os_log_type_enabled(v18, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 136315650;
      v30 = " back";
      v31 = 1024;
      v32 = v12;
      v33 = 1024;
      v34 = v6;
      _os_log_impl(&dword_239FB7000, v18, OS_LOG_TYPE_DEFAULT, "Sending DD%s with %d bytes to participant %08X.", buf, 0x18u);
    }

    pthread_mutex_lock((a1 + 7080));
    TracePrintNodes(a1, *(a1 + 420), a1 + 424, 1, *(a1 + 416));
    pthread_mutex_unlock((a1 + 7080));
    SendUDPPacketToParticipantChannelID(a1, v26, v12, v6, 0, a3, 0);
    goto LABEL_24;
  }

  v15 = *(a1 + 7184);
  if (!v15)
  {
LABEL_17:
    v16 = gcks_log(v13, v14);
    if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 67109120;
      LODWORD(v30) = v6;
      _os_log_impl(&dword_239FB7000, v16, OS_LOG_TYPE_DEFAULT, "Couldn't find cList with iPriority == 0 for participant [%08X].", buf, 8u);
    }

LABEL_24:
    free(v26);
    return;
  }

  while (*(v15 + 88) != v6 || *(v15 + 80))
  {
    v15 = *(v15 + 832);
    if (!v15)
    {
      goto LABEL_17;
    }
  }

  pthread_mutex_lock((v15 + 768));
  v19 = *(v15 + 600);
  if (v19)
  {
    while (1)
    {
      v20 = v19;
      if (*v19 == 2)
      {
        break;
      }

      v19 = *(v19 + 64);
      if (!v19)
      {
        v21 = (v20 + 64);
        goto LABEL_30;
      }
    }

    *(v19 + 8) = xmmword_239FEC310;
    *(v19 + 32) = 0x4082BFEB851EB852;
    v24 = *(v19 + 40);
    if (v24)
    {
      free(v24);
    }

    *(v20 + 40) = v26;
    *(v20 + 48) = v12;
    *(v20 + 52) = v6;
  }

  else
  {
    v21 = (v15 + 600);
LABEL_30:
    v22 = malloc_type_calloc(1uLL, 0x48uLL, 0x10200409EACE7F9uLL);
    *v22 = 2;
    *(v22 + 8) = xmmword_239FEC310;
    v23 = v26;
    *(v22 + 4) = 0x4082BFEB851EB852;
    *(v22 + 5) = v23;
    *(v22 + 12) = v12;
    *(v22 + 13) = v6;
    *v21 = v22;
  }

  pthread_mutex_unlock((v15 + 768));
  v25 = *(a1 + 16);
  if (v25 != -1)
  {
    *(a1 + 16) = -1;
    close(v25);
  }
}

void gckPreemptivelyClearFlagsForTransientNodes(_BOOL8 a1, uint64_t a2, unsigned int a3)
{
  v13 = *MEMORY[0x277D85DE8];
  if (a2 && a3 >= 1)
  {
    v4 = 0;
    v5 = (a1 + 424);
    v6 = a3;
    do
    {
      v7 = v6;
      v8 = v5;
      do
      {
        if (*(a2 + 4 * v4) == *v8 && v8[1] == -1)
        {
          v9 = gcks_log(a1, a2);
          a1 = os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT);
          if (a1)
          {
            v10 = *v8;
            *buf = 67109120;
            v12 = v10;
            _os_log_impl(&dword_239FB7000, v9, OS_LOG_TYPE_DEFAULT, "Received LSA with no route to previously unknown participant [%08X] (no old connection).", buf, 8u);
          }

          v8[69] = 0;
        }

        v8 += 104;
        --v7;
      }

      while (v7);
      ++v4;
    }

    while (v4 != v6);
  }
}

__n128 gckSessionSendLSA(uint64_t a1, int a2, uint64_t a3, int a4, uint64_t a5)
{
  v45 = *MEMORY[0x277D85DE8];
  v37 = 0;
  v38 = 0;
  v40 = a3;
  v39 = a2;
  if (*(a1 + 708) >= 1)
  {
    v8 = 0;
    v35 = 0;
    v36 = 0;
    v9 = a1 + 712;
    result.n128_u64[0] = 67109376;
    do
    {
      v11 = *(v9 + 8 * v8);
      if (v11 != a4)
      {
        v12 = *(a1 + 20);
        *(a1 + 20) = v12 + 1;
        WORD2(v38) = v12;
        v13 = OSPFMakeLSA(&v36, &v37, 0, *(a1 + 416), v11, 0);
        if ((v13 & 0x80000000) != 0)
        {
          v17 = gcks_log(v13, v14);
          if (os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT))
          {
            *buf = 0;
            _os_log_impl(&dword_239FB7000, v17, OS_LOG_TYPE_DEFAULT, "OSPFMakeLSA failed.", buf, 2u);
          }
        }

        else
        {
          v15 = *(a1 + 7184);
          if (!v15)
          {
            goto LABEL_24;
          }

          v16 = v13;
          while (v11 != *(v15 + 88) || *(v15 + 80))
          {
            v15 = *(v15 + 832);
            if (!v15)
            {
              goto LABEL_24;
            }
          }

          if (!*(v15 + 60) && a5 == 0)
          {
LABEL_24:
            free(v36);
          }

          else
          {
            v19 = a5;
            pthread_mutex_lock((v15 + 768));
            v20 = (v15 + 600);
            do
            {
              v21 = v20;
              v22 = *v20;
              v20 = (*v20 + 64);
            }

            while (v22);
            v23 = malloc_type_calloc(1uLL, 0x48uLL, 0x10200409EACE7F9uLL);
            *v23 = 4;
            *(v23 + 8) = xmmword_239FEC310;
            v24 = v36;
            *(v23 + 4) = 0x4082BFEB851EB852;
            *(v23 + 5) = v24;
            *(v23 + 12) = v16;
            *(v23 + 13) = v11;
            *(v23 + 28) = WORD2(v38);
            *v21 = v23;
            v25 = pthread_mutex_unlock((v15 + 768));
            v27 = gcks_log(v25, v26);
            if (os_log_type_enabled(v27, OS_LOG_TYPE_DEFAULT))
            {
              *buf = 67109376;
              v42 = WORD2(v38);
              v43 = 1024;
              v44 = v11;
              _os_log_impl(&dword_239FB7000, v27, OS_LOG_TYPE_DEFAULT, "Sending LSA with SN [%d] to participant [%08X].", buf, 0xEu);
            }

            v28 = *(a1 + 16);
            if (v28 != -1)
            {
              *(a1 + 16) = -1;
              close(v28);
            }

            ++v35;
            a5 = v19;
          }
        }
      }

      ++v8;
    }

    while (v8 < *(a1 + 708));
    if (v35)
    {
      TracePrintNodes(a1, a2, a3, 1, *(a1 + 416));
      v31 = gcks_log(v29, v30);
      if (os_log_type_enabled(v31, OS_LOG_TYPE_DEFAULT))
      {
        v32 = *(a1 + 416);
        *buf = 67109376;
        v42 = v32;
        v43 = 1024;
        v44 = v35;
        _os_log_impl(&dword_239FB7000, v31, OS_LOG_TYPE_DEFAULT, "I am participant %08X. Just sent LSAs to %d participants.", buf, 0xEu);
      }
    }
  }

  return result;
}

void gckSessionHandleRemainingDisconnectedNodes(uint64_t a1)
{
  v1 = MEMORY[0x28223BE20](a1);
  v3 = v2;
  v5 = v4;
  v7 = v6;
  v8 = v1;
  v19 = *MEMORY[0x277D85DE8];
  v17 = 0;
  gckSessionFindAndRemoveDisconnectedNodes(v1, v18, &v17);
  v9 = v17;
  if (v17 >= 1)
  {
    v10 = 0;
    do
    {
      v11 = &v18[26 * v10];
      v12 = *v11;
      v13 = v3;
      v14 = v5;
      if (v3 < 1)
      {
LABEL_6:
        gckSessionDisconnectParticipant(v8, *v11, v11 + 9, *(v11 + 8), v7);
        for (i = *(v8 + 7184); i; i = *(i + 832))
        {
          if (*(i + 88) == v12)
          {
            gckSessionScheduleCListClose(i, v7);
          }
        }
      }

      else
      {
        while (1)
        {
          v15 = *v14++;
          if (v15 == v12)
          {
            break;
          }

          if (!--v13)
          {
            goto LABEL_6;
          }
        }
      }

      ++v10;
    }

    while (v10 != v9);
  }
}

void gckSessionRequestLSAUpdateForNode(int *a1, uint64_t a2)
{
  v9 = *MEMORY[0x277D85DE8];
  ++*(a1 + 136);
  a1[69] = 1;
  v3 = gcks_log(a1, a2);
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    v4 = *a1;
    v5 = *(a1 + 136);
    v6[0] = 67109376;
    v6[1] = v4;
    v7 = 1024;
    v8 = v5;
    _os_log_impl(&dword_239FB7000, v3, OS_LOG_TYPE_DEFAULT, "Requesting LSA update for node with ID [%08X] serial number [%d].", v6, 0xEu);
  }
}

_DWORD *gckSessionFindAndRemoveDisconnectedNodes(_DWORD *result, uint64_t a2, _DWORD *a3)
{
  v21 = *MEMORY[0x277D85DE8];
  v3 = result[105];
  if (v3 < 1)
  {
    v7 = 0;
  }

  else
  {
    v5 = result;
    v6 = 0;
    v7 = 0;
    v8 = (result + 106);
    v9 = (result + 178);
    do
    {
      v10 = &v8[416 * v6];
      *(v10 + 69) = 0;
      if (*(v10 + 1) == -1)
      {
        v11 = gcks_log(result, a2);
        if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
        {
          v12 = *v10;
          *buf = 136315394;
          v18 = v10 + 9;
          v19 = 1024;
          v20 = v12;
          _os_log_impl(&dword_239FB7000, v11, OS_LOG_TYPE_DEFAULT, "No route to participant %s[%08X] -- disconnected.", buf, 0x12u);
        }

        v13 = v5[177];
        if (v13 >= 1)
        {
          for (i = 0; i < v13; ++i)
          {
            v15 = &v9[8 * i];
            if (*v15 == *v10)
            {
              gckSessionDeleteNeighbor(v5, v15);
              --i;
              v13 = v5[177];
            }
          }
        }

        memcpy((a2 + 416 * v7), &v8[416 * v6], 0x1A0uLL);
        result = gckSessionDeleteDisconnectedNode(v5, &v8[416 * v6--]);
        v3 = v5[105];
        ++v7;
      }

      ++v6;
    }

    while (v6 < v3);
  }

  *a3 = v7;
  return result;
}

void gckSessionDeleteNeighbor(uint64_t a1, int *a2)
{
  v9 = *MEMORY[0x277D85DE8];
  v4 = gcks_log(a1, a2);
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    v5 = *a2;
    v8[0] = 67109120;
    v8[1] = v5;
    _os_log_impl(&dword_239FB7000, v4, OS_LOG_TYPE_DEFAULT, "Deleting neighbor representing participant %08X.", v8, 8u);
  }

  v6 = *(a1 + 708) - 1;
  v7 = (a1 + 8 * v6 + 712);
  if (v7 != a2)
  {
    *a2 = *v7;
    LODWORD(v6) = *(a1 + 708) - 1;
  }

  *(a1 + 708) = v6;
}

void *gckSessionDeleteDisconnectedNode(uint64_t a1, int *a2)
{
  v8 = *MEMORY[0x277D85DE8];
  v4 = gcks_log(a1, a2);
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    v5 = *a2;
    v7[0] = 67109120;
    v7[1] = v5;
    _os_log_impl(&dword_239FB7000, v4, OS_LOG_TYPE_DEFAULT, "Deleting node for participant %08X.", v7, 8u);
  }

  result = memmove(a2, (a1 + 416 * *(a1 + 420) + 8), 0x1A0uLL);
  --*(a1 + 420);
  return result;
}

void gckSessionDisconnectParticipant(uint64_t a1, uint64_t a2, const void *a3, uint64_t a4, uint64_t a5)
{
  v6 = a4;
  v8 = a2;
  v17 = *MEMORY[0x277D85DE8];
  v10 = gcks_log(a1, a2);
  if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
  {
    v16[0] = 67109120;
    v16[1] = v8;
    _os_log_impl(&dword_239FB7000, v10, OS_LOG_TYPE_DEFAULT, "Disconnecting participant [%08X].", v16, 8u);
  }

  v11 = *(a1 + 408);
  v12 = *(v11 + 168);
  if (v12 < 1)
  {
    LODWORD(v13) = 0;
  }

  else
  {
    v13 = 0;
    while (*(v11 + 172 + 4 * v13) != v8)
    {
      if (v12 == ++v13)
      {
        LODWORD(v13) = *(v11 + 168);
        break;
      }
    }
  }

  if (v13 <= 0xF && v13 == v12)
  {
    *(v11 + 4 * v12 + 172) = v8;
    *(v11 + 168) = v12 + 1;
  }

  if (a5)
  {
    v14 = -2145779689;
  }

  else
  {
    v14 = 0;
  }

  PostEventCallback(v11, v8, 2, a3, v6, v14);
  for (i = *(a1 + 7184); i; i = *(i + 832))
  {
    if (*(i + 88) == v8)
    {
      gckSessionScheduleCListClose(i, a5);
    }
  }
}

void gckSessionScheduleCListClose(uint64_t a1, uint64_t a2)
{
  v2 = a2;
  v13 = *MEMORY[0x277D85DE8];
  v4 = gcks_log(a1, a2);
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    v5 = *(a1 + 88);
    v6 = *(a1 + 72);
    v10[0] = 67109376;
    v10[1] = v5;
    v11 = 1024;
    v12 = v6;
    _os_log_impl(&dword_239FB7000, v4, OS_LOG_TYPE_DEFAULT, "Scheduling to close CList corresponding to participant (%08X), channel %d.", v10, 0xEu);
  }

  *(a1 + 56) = 1;
  if (v2)
  {
    *(a1 + 8) = micro();
    v9 = gcks_log(v7, v8);
    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
    {
      LOWORD(v10[0]) = 0;
      _os_log_impl(&dword_239FB7000, v9, OS_LOG_TYPE_DEFAULT, "Timed out, enforcing clean up.", v10, 2u);
    }
  }
}

void gckSessionSendLSAACK(uint64_t a1, uint64_t a2, int a3, int a4)
{
  v6 = a2;
  v18 = *MEMORY[0x277D85DE8];
  memset(v13, 0, sizeof(v13));
  v12 = 0;
  WORD6(v13[0]) = a4;
  v8 = OSPFMakeLSAACK(&v12, v13, 0, *(a1 + 416), a2);
  v10 = gcks_log(v8, v9);
  v11 = v10;
  if ((v8 & 0x80000000) != 0)
  {
    if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
    {
      gckSessionSendLSAACK_cold_1();
    }
  }

  else
  {
    if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 67109376;
      v15 = a4;
      v16 = 1024;
      v17 = v6;
      _os_log_impl(&dword_239FB7000, v11, OS_LOG_TYPE_DEFAULT, "Sending LSAACK with SN [%d] to participant [%08X].", buf, 0xEu);
    }

    SendUDPPacketToParticipantChannelID(a1, v12, v8, v6, 0, a3, 0);
    free(v12);
  }
}

uint64_t gckSessionHandleDeletedNode(_DWORD *a1, uint64_t a2, int a3)
{
  v20 = *MEMORY[0x277D85DE8];
  v6 = a1[177];
  if (v6 < 1)
  {
    LODWORD(v7) = 0;
  }

  else
  {
    v7 = 0;
    v8 = a1 + 178;
    while (1)
    {
      v9 = *v8;
      v8 += 2;
      if (v9 == a2)
      {
        break;
      }

      if (v6 == ++v7)
      {
        goto LABEL_8;
      }
    }
  }

  if (v7 == v6)
  {
LABEL_8:
    v10 = 2149187606;
    v11 = gcks_log(a1, a2);
    if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
    {
      v19[0] = 67109120;
      v19[1] = a2;
      _os_log_impl(&dword_239FB7000, v11, OS_LOG_TYPE_DEFAULT, "Participant %08X not found.", v19, 8u);
    }
  }

  else
  {
    v12 = &a1[2 * v7 + 178];
    v13 = v12[1];
    gckSessionDeleteNeighbor(a1, v12);
    if (v13 != -1 || a3 != 0)
    {
      v16 = a1 + 106;
      gckSessionRequestLSAUpdateForNode(a1 + 106, v14);
      if (a3)
      {
        v17 = a1[105];
        if (v17 >= 1)
        {
          while (*v16 != a2)
          {
            v16 += 104;
            if (!--v17)
            {
              goto LABEL_20;
            }
          }

          gckSessionDisconnectParticipant(a1, a2, v16 + 9, *(v16 + 8), 1);
          gckSessionDeleteDisconnectedNode(a1, v16);
        }
      }

LABEL_20:
      gckSessionUpdateRoutingTable(a1);
    }

    return 0;
  }

  return v10;
}

uint64_t gckSessionGetInterfacePriorityForCList(uint64_t a1, uint64_t a2)
{
  v48 = *MEMORY[0x277D85DE8];
  v2 = *(a2 + 384);
  if ((v2 & 0x100) != 0)
  {
    return 4;
  }

  if ((v2 & 4) != 0)
  {
    return 1;
  }

  v5 = SCNetworkInterfaceCopyAll();
  if (!v5)
  {
    v24 = gcks_log(0, v6);
    if (os_log_type_enabled(v24, OS_LOG_TYPE_ERROR))
    {
      gckSessionGetInterfacePriorityForCList_cold_1();
    }

    return 0;
  }

  v7 = v5;
  Count = CFArrayGetCount(v5);
  if (Count < 1)
  {
    goto LABEL_19;
  }

  v9 = Count;
  v10 = 0;
  while (1)
  {
    ValueAtIndex = CFArrayGetValueAtIndex(v7, v10);
    if (ValueAtIndex)
    {
      v12 = ValueAtIndex;
      InterfaceType = SCNetworkInterfaceGetInterfaceType(ValueAtIndex);
      BSDName = SCNetworkInterfaceGetBSDName(v12);
      CStringPtr = CFStringGetCStringPtr(BSDName, 0x8000100u);
      v17 = CStringPtr;
      if (!CStringPtr)
      {
        CStringPtr = CFStringGetCString(BSDName, buffer, 256, 0x8000100u);
        if (CStringPtr)
        {
          v17 = buffer;
        }

        else
        {
          v17 = 0;
        }
      }

      if (!InterfaceType || !BSDName || !v17)
      {
        v18 = gcks_log(CStringPtr, v16);
        if (os_log_type_enabled(v18, OS_LOG_TYPE_DEFAULT))
        {
          v19 = CFStringGetCStringPtr(InterfaceType, 0x8000100u);
          v20 = CFStringGetCStringPtr(BSDName, 0x8000100u);
          v21 = *(a2 + 88);
          v22 = *(a2 + 72);
          *buf = 136315906;
          v40 = v19;
          v41 = 2080;
          v42 = v20;
          v43 = 1024;
          v44 = v21;
          v45 = 1024;
          v46 = v22;
          _os_log_impl(&dword_239FB7000, v18, OS_LOG_TYPE_DEFAULT, "Invalid type [%s] or bsd name [%s] for participant [%08X] channelID [%d].", buf, 0x22u);
        }

        goto LABEL_18;
      }

      if (!strcmp((a2 + 388), v17))
      {
        break;
      }
    }

LABEL_18:
    if (v9 == ++v10)
    {
      goto LABEL_19;
    }
  }

  if (CFStringCompare(InterfaceType, *MEMORY[0x277CE16D8], 0) == kCFCompareEqualTo)
  {
    v23 = 3;
    goto LABEL_20;
  }

  v26 = CFStringCompare(InterfaceType, *MEMORY[0x277CE16D0], 0);
  if (v26 == kCFCompareEqualTo)
  {
    *buf = 0;
    *existing = 0;
    IORegistryEntryID = _SCNetworkInterfaceGetIORegistryEntryID();
    if (!IORegistryEntryID)
    {
      v34 = 0;
LABEL_44:
      if (*buf)
      {
        mach_port_deallocate(*MEMORY[0x277D85F48], *buf);
      }

      if (v34)
      {
        if (*(a1 + 7540))
        {
          v23 = 7;
        }

        else
        {
          v23 = 5;
        }
      }

      else
      {
        v23 = 6;
      }

      goto LABEL_20;
    }

    v33 = IORegistryEntryID;
    IOMasterPort(*MEMORY[0x277D85F18], buf);
    v34 = *buf;
    if (*buf)
    {
      v35 = IORegistryEntryIDMatching(v33);
      IOServiceGetMatchingServices(v34, v35, &existing[1]);
      if (!existing[1])
      {
        v34 = 0;
LABEL_42:
        if (existing[0])
        {
          IOObjectRelease(existing[0]);
        }

        goto LABEL_44;
      }

      v36 = IOIteratorNext(existing[1]);
      v37 = v36;
      if (v36 && (IORegistryEntryGetParentEntry(v36, "IOService", existing), existing[0]))
      {
        v34 = IOObjectConformsTo(existing[0], "AppleUSBDeviceNCMData");
      }

      else
      {
        v34 = 0;
      }
    }

    else
    {
      v37 = 0;
    }

    if (existing[1])
    {
      IOObjectRelease(existing[1]);
    }

    if (v37)
    {
      IOObjectRelease(v37);
    }

    goto LABEL_42;
  }

  v28 = gcks_log(v26, v27);
  v23 = 0;
  if (os_log_type_enabled(v28, OS_LOG_TYPE_DEFAULT))
  {
    v29 = CFStringGetCStringPtr(InterfaceType, 0x8000100u);
    v30 = *(a2 + 88);
    v31 = *(a2 + 72);
    *buf = 136315906;
    v40 = v29;
    v41 = 2080;
    v42 = v17;
    v43 = 1024;
    v44 = v30;
    v45 = 1024;
    v46 = v31;
    _os_log_impl(&dword_239FB7000, v28, OS_LOG_TYPE_DEFAULT, "Unexpected type [%s] for bsd name [%s] of participant [%08X] channelID [%d].", buf, 0x22u);
LABEL_19:
    v23 = 0;
  }

LABEL_20:
  CFRelease(v7);
  return v23;
}

void OUTLINED_FUNCTION_0_2(void *a1, NSObject *a2, uint64_t a3, const char *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, ...)
{
  va_start(va, a8);

  _os_log_error_impl(a1, a2, OS_LOG_TYPE_ERROR, a4, va, 8u);
}

uint64_t OUTLINED_FUNCTION_6_1()
{

  return [v0 displayNameAndPID];
}

void OUTLINED_FUNCTION_4_0(void *a1, uint64_t a2, os_log_t log, const char *a4, ...)
{
  va_start(va, a4);

  _os_log_error_impl(a1, log, OS_LOG_TYPE_ERROR, a4, va, 0x16u);
}

uint64_t AGPSendingSetElement::buffer(AGPSendingSetElement *this, unsigned __int8 *a2, __int32 a3, int a4, unsigned int a5, unsigned int a6, char a7)
{
  pthread_mutex_lock((this + 32));
  can_buffer = AGPAssociationSetElement::can_buffer(this, 1);
  v15 = 0xFFFFFFFFLL;
  if (a5 <= a6 && a2 && (a3 - 1) <= 0x5DB && can_buffer)
  {
    v16 = *(this + 699);
    if (v16 > 0x3F)
    {
      v15 = 0xFFFFFFFFLL;
    }

    else
    {
      *(this + 699) = v16 + 1;
      v15 = *(this + 697);
      *(this + 697) = (v15 + 1) & 0x3F;
      v17 = this + 8 * v15;
      *(*(v17 + 15) + 8) = *(*(v17 + 15) + 8) & 0xFFFFFFFE | !AGPAssociationSetElement::can_buffer(this, 1);
      *(*(v17 + 15) + 8) |= 2u;
      *(*(v17 + 15) + 8) = *(*(v17 + 15) + 8) & 0xFFFFC0FF | ((v15 & 0x3F) << 8);
      *(*(v17 + 15) + 8) = *(*(v17 + 15) + 8) & 0xFFFFFF03 | (4 * (*(this + 698) & 0x3F));
      *(*(v17 + 15) + 8) = *(*(v17 + 15) + 8) & 0x3FFFFFF | (*(this + 697) << 26);
      *(*(v17 + 15) + 8) = *(*(v17 + 15) + 8) & 0xFFFFC0FF | ((v15 & 0x3F) << 8);
      *(*(v17 + 15) + 8) = *(*(v17 + 15) + 8) & 0xFFF03FFF | ((a5 & 0x3F) << 14);
      *(*(v17 + 15) + 8) = *(*(v17 + 15) + 8) & 0xFC0FFFFF | ((a6 & 0x3F) << 20);
      v18 = *(this + 27);
      *(this + 27) = v18 + 1;
      **(v17 + 15) = v18;
      v19 = CAGP::current_timestamp(*(this + 1));
      v20 = *(v17 + 15);
      v20[1] = v19;
      v20[3] = a3;
      v20[379] = a4;
      *(this + v15 + 632) = a7;
      memcpy((*(v17 + 15) + 16), a2, a3);
      *(this + 12) |= 1 << v15;
      v21.i32[0] = 1;
      v21.i32[1] = a3;
      *(*(this + 1) + 368) = vadd_s32(*(*(this + 1) + 368), v21);
    }
  }

  pthread_mutex_unlock((this + 32));
  return v15;
}

BOOL AGPAssociationSetElement::can_buffer(AGPAssociationSetElement *this, _BOOL8 a2)
{
  pthread_mutex_lock((this + 32));
  v4 = *(this + 698);
  v5 = *(this + 696);
  if (v4 == v5)
  {
    v6 = 0;
    if (!a2)
    {
      goto LABEL_6;
    }

    goto LABEL_5;
  }

  v6 = ((((v5 - v4) & ~((v5 - v4) >> 31)) + v4 - v5 + 63) & 0xFFFFFFC0) + v5 - v4;
  if (a2)
  {
LABEL_5:
    a2 = 64 - v6 - *(this + 699) >= a2;
  }

LABEL_6:
  pthread_mutex_unlock((this + 32));
  return a2;
}

uint64_t CAGP::current_timestamp(CAGP *this)
{
  v2 = *(this + 52);
  if (!gettimeofday(&v6, 0))
  {
    v3 = (v6.tv_usec / 1000 + 1000 * (SLODWORD(v6.tv_sec) % 604800)) % 0x240C8400u;
    v2 = *(this + 52);
    if (v2 == -1 || (v2 > v3 ? (v4 = (v2 - v3) >= 0x12064201) : (v4 = 1), v4))
    {
      *(this + 52) = v3;
      return v3;
    }
  }

  return v2;
}

uint64_t AGPSendingSetElement::search(AGPSendingSetElement *this, int a2)
{
  pthread_mutex_lock((this + 32));
  v4 = *(this + 699);
  if (*(this + 699))
  {
    v5 = *(this + 696);
    while (**(this + v5 + 15) != a2)
    {
      v5 = (v5 + 1) & 0x3FLL;
      if (!--v4)
      {
        goto LABEL_5;
      }
    }
  }

  else
  {
LABEL_5:
    v5 = 0xFFFFFFFFLL;
  }

  pthread_mutex_unlock((this + 32));
  return v5;
}

uint64_t AGPSendingSetElement::remove(AGPSendingSetElement *this, unsigned int a2)
{
  pthread_mutex_lock((this + 32));
  if (a2 <= 0x3F && (v4 = this + 120, v5 = *(this + a2 + 15), (v6 = v5[3]) != 0))
  {
    v7 = a2;
    v8 = v5[380];
    v9 = *(this + 1);
    *(v9 + 94) += v8;
    *(v9 + 95) += v8 * v6;
    v5[3] = 0;
    if (v5[1] != -1)
    {
      v10 = CAGP::current_timestamp(v9);
      v5 = *&v4[8 * a2];
      v11 = v10 - v5[1];
      v12 = v11 <= -302400000 ? v11 + 604800000 : v10 - v5[1];
      if (v12 >= 1)
      {
        pthread_mutex_lock((this + 32));
        UpdateRTO(this + 175, v12);
        pthread_mutex_unlock((this + 32));
        v5 = *&v4[8 * v7];
      }
    }

    v5[380] = 0;
    *(this + v7 + 632) = 0x80;
    *(*&v4[8 * v7] + 4) = -1;
    v13 = 1;
    *(this + 12) &= ~(1 << v7);
    if (*(this + 699))
    {
      v14 = *(this + 696);
LABEL_11:
      v15 = *&v4[8 * v14];
      if (!*(v15 + 12))
      {
        v16 = ((*(v15 + 8) >> 20) & 0x3F) + 1;
        v17 = v16;
        v18 = v14;
        while (1)
        {
          v19 = *&v4[8 * v18];
          if (*(v19 + 12) || (*(v19 + 8) & 2) == 0)
          {
            break;
          }

          v18 = (v18 + 1) & 0x3F;
          if (!--v17)
          {
            do
            {
              --v16;
              --*(this + 699);
              *(*&v4[8 * v14] + 8) &= ~2u;
              v14 = (*(this + 696) + 1) & 0x3F;
              *(this + 696) = v14;
            }

            while (v16);
            v13 = 1;
            if (*(this + 699))
            {
              goto LABEL_11;
            }

            goto LABEL_21;
          }
        }
      }

      v13 = 1;
    }
  }

  else
  {
    v13 = 0;
  }

LABEL_21:
  pthread_mutex_unlock((this + 32));
  return v13;
}

void releaseAssociationSetElement(const __CFAllocator *a1, void *a2)
{
  v2 = a2[1];
  a2[2] = *(v2 + 200);
  *(v2 + 200) = a2;
}

uint64_t checkSendingSet(char *a1, pthread_mutex_t **a2)
{
  v19[185] = *MEMORY[0x277D85DE8];
  v3 = *a2;
  v4 = *(a2 + 2);
  pthread_mutex_lock(*a2 + 1);
  pthread_mutex_lock((a1 + 32));
  for (i = 0; ; ++i)
  {
    v6 = (i + a1[698]) & 0x3FLL;
    v7 = *&a1[8 * v6 + 120];
    if (v7)
    {
      if (*(v7 + 3) && (v7[8] & 2) != 0 && *(v7 + 1) != -1)
      {
        v8 = CAGP::current_timestamp(v3);
        v9 = v8 - *(v7 + 1);
        if (v9 <= -302400000)
        {
          v9 += 604800000;
        }

        v10 = *(a1 + 178);
        if (v10)
        {
          if (v9 > 3 * v10)
          {
            break;
          }
        }
      }
    }

    if (i > 0x3E)
    {
      goto LABEL_15;
    }

LABEL_14:
    ;
  }

  v13[0] = 5;
  v13[1] = a1[v6 + 632];
  checksum = 0;
  v11 = *(a1 + 26);
  v15 = *(v3 + 16);
  v16 = v11;
  v17 = *v7;
  v18 = *(v7 + 2) & 0x3FFFF03 | (4 * (a1[698] & 0x3F)) | (a1[697] << 26);
  *(v7 + 1) = v8;
  ++*(v7 + 380);
  memcpy(v19, v7 + 16, *(v7 + 3));
  checksum = agp_control::generate_checksum(v13, v7 + 16, *(v7 + 3));
  if (GCKSessionSendTo(*(v3 + 24), (a1 + 104), 1, v13, (*(v7 + 3) + 20), 0, 64, 0, 0, *(v7 + 379), v4) != -1072037833 && i < 0x3F)
  {
    goto LABEL_14;
  }

LABEL_15:
  pthread_mutex_unlock((a1 + 32));
  return pthread_mutex_unlock((v3 + 64));
}

uint64_t agp_control::generate_checksum(agp_control *this, char *a2, int a3)
{
  if (*this)
  {
    v3 = 0;
    v4 = 2 * *this;
    do
    {
      v5 = *this;
      this = (this + 2);
      v3 += v5;
      --v4;
    }

    while (v4);
    if (!a2)
    {
      return ~v3;
    }
  }

  else
  {
    v3 = 0;
    if (!a2)
    {
      return ~v3;
    }
  }

  v6 = a3 >> 1;
  if (a3 >> 1 >= 1)
  {
    v7 = a2;
    do
    {
      v8 = *v7;
      v7 += 2;
      v3 += v8;
      --v6;
    }

    while (v6);
    a2 += 2 * ((a3 >> 1) - 1) + 2;
  }

  if (a3)
  {
    v3 += *a2;
  }

  return ~v3;
}

uint64_t AGPTransportCallback(uint64_t a1, unsigned int *a2, uint64_t a3, unsigned __int8 *a4, int a5, uint64_t a6, unsigned __int8 *a7, uint64_t a8, char a9, char a10, char a11, unsigned int a12)
{
  v16 = a3;
  v19 = CheckInHandleDebug();
  if (v19)
  {
    v21 = v19;
    if (v16 < 1)
    {
      if (v16)
      {
        v43 = -v16;
        AGPDataQueue::disconnect((v19 + 216), a2, -v16);
        pthread_mutex_lock((v21 + 64));
        v44 = v43;
        v45 = a2;
        do
        {
          v46 = *v45++;
          v47 = *(v21 + 48);
          v47[26] = v46;
          value = 0;
          if (CFSetGetValueIfPresent(*(v21 + 40), v47, &value))
          {
            CFSetRemoveValue(*(v21 + 40), value);
          }

          --v44;
        }

        while (v44);
        while (1)
        {
          v48 = *(v21 + 200);
          if (!v48)
          {
            break;
          }

          *(v21 + 200) = v48[2];
          (*(*v48 + 8))(v48);
        }

        pthread_mutex_unlock((v21 + 64));
        pthread_mutex_lock((v21 + 128));
        do
        {
          v49 = *a2++;
          v50 = *(v21 + 56);
          v50[26] = v49;
          value = 0;
          if (CFSetGetValueIfPresent(*(v21 + 32), v50, &value))
          {
            CFSetRemoveValue(*(v21 + 32), value);
          }

          --v43;
        }

        while (v43);
        while (1)
        {
          v51 = *(v21 + 200);
          if (!v51)
          {
            break;
          }

          *(v21 + 200) = v51[2];
          (*(*v51 + 8))(v51);
        }

        v52 = (v21 + 128);
      }

      else
      {
        pthread_mutex_lock((v19 + 224));
        pthread_mutex_lock((v21 + 224));
        v53 = *(v21 + 216);
        pthread_mutex_unlock((v21 + 224));
        while (v53)
        {
          v54 = *(v53 + 80);
          if (v54)
          {
            v55 = *(v53 + 72);
            BytePtr = CFDataGetBytePtr(v54);
            Length = CFDataGetLength(*(v53 + 80));
            if (AGPSessionSendTo(a1, (v53 + 8), v55, BytePtr, Length, 0, 2, *(v53 + 88), a12, 0))
            {
              break;
            }
          }

          v58 = *(v53 + 96);
          if (v58)
          {
            global_queue = dispatch_get_global_queue(0, 0);
            dispatch_async(global_queue, v58);
          }

          pthread_mutex_lock((v21 + 224));
          v60 = *(v21 + 216);
          *(v21 + 216) = *v60;
          pthread_mutex_unlock((v21 + 224));
          AGPDataQueueNode::~AGPDataQueueNode(v60);
          MEMORY[0x23EE811A0]();
          pthread_mutex_lock((v21 + 224));
          v53 = *(v21 + 216);
          pthread_mutex_unlock((v21 + 224));
        }

        pthread_mutex_lock((v21 + 64));
        value = v21;
        v65 = a12;
        CFSetApplyFunction(*(v21 + 40), checkSendingSet, &value);
        pthread_mutex_unlock((v21 + 64));
        v52 = (v21 + 224);
      }

      pthread_mutex_unlock(v52);
    }

    else
    {
      v22 = a9;
      if ((a9 & 0x40) == 0)
      {
        v62 = a4;
        *a4 = 0;
        a4[1] = a9;
        *(a4 + 1) = 0;
        if ((a9 & 2) != 0)
        {
          LODWORD(v23) = a4 + 4;
        }

        else
        {
          *(a4 + 1) = *(v19 + 16);
          v23 = a4 + 8;
          v24 = v16;
          v25 = a4 + 8;
          do
          {
            v26 = CAGP::sendingSetElement(v21, *a2);
            v27 = AGPSendingSetElement::buffer(v26, a7, a8, a6, a10, a11, v22);
            if ((v27 & 0x80000000) != 0)
            {
              v40 = agps_log(v27, v28);
              if (os_log_type_enabled(v40, OS_LOG_TYPE_ERROR))
              {
                AGPTransportCallback(&value, &value + 1);
              }
            }

            else
            {
              *v25 = *a2;
              v63 = v23;
              v29 = v22;
              v30 = a6;
              v31 = a7;
              v32 = a8;
              v33 = v26 + 8 * v27;
              *(v25 + 1) = **(v33 + 15);
              v34 = *(v25 + 2) & 0xFFFFFFFC | !AGPAssociationSetElement::can_buffer(v26, 1) | 2;
              *(v25 + 2) = v34;
              v35 = v34 & 0xFFFFFF03 | (4 * ((*(*(v33 + 15) + 8) >> 2) & 0x3F));
              *(v25 + 2) = v35;
              v36 = v35 & 0xFFFFC0FF | (((*(*(v33 + 15) + 8) >> 8) & 0x3F) << 8);
              *(v25 + 2) = v36;
              v37 = v36 & 0xFFF03FFF | (((*(*(v33 + 15) + 8) >> 14) & 0x3F) << 14);
              *(v25 + 2) = v37;
              v38 = v37 & 0xFC0FFFFF | (((*(*(v33 + 15) + 8) >> 20) & 0x3F) << 20);
              *(v25 + 2) = v38;
              v39 = *(v33 + 15);
              a8 = v32;
              a7 = v31;
              a6 = v30;
              v22 = v29;
              *(v25 + 2) = *(v39 + 8) & 0xFC000000 | v38 & 0x3FFFFFF;
              v23 = v63 + 12;
              v25 += 12;
            }

            ++a2;
            --v24;
          }

          while (v24);
        }

        *v62 = (v23 - v62 + 3) >> 2;
        *(v62 + 1) = agp_control::generate_checksum(v62, a7, a8);
        v42 = 4 * *v62;
        goto LABEL_42;
      }
    }

    v42 = 0;
LABEL_42:
    CheckOutHandleDebug();
    return v42;
  }

  v41 = agps_log(0, v20);
  if (os_log_type_enabled(v41, OS_LOG_TYPE_ERROR))
  {
    AGPTransportCallback(v16, v41);
  }

  return 0xFFFFFFFFLL;
}

void *CAGP::sendingSetElement(pthread_mutex_t *this, int a2)
{
  pthread_mutex_lock(this + 1);
  v4 = *&this->__opaque[32];
  v5 = *&this->__opaque[40];
  v5[26] = a2;
  value = 0;
  if (!CFSetGetValueIfPresent(v4, v5, &value))
  {
    operator new();
  }

  pthread_mutex_unlock(this + 1);
  return value;
}

uint64_t AGPDataQueue::disconnect(AGPDataQueue *this, unsigned int *a2, int a3)
{
  pthread_mutex_lock((this + 8));
  if (a3 >= 1)
  {
    v6 = 0;
    v7 = *this;
    do
    {
      if (v7)
      {
        v8 = a2[v6];
        v9 = v7;
        do
        {
          v10 = *(v9 + 18);
          if (v10 >= 1)
          {
            v11 = 0;
            v12 = v10 - 1;
            v13 = v9 + 3;
            v14 = (v10 - 1);
            while (*(v9 + v11 + 2) != v8)
            {
              ++v11;
              ++v13;
              --v14;
              if (v10 == v11)
              {
                goto LABEL_14;
              }
            }

            if (v12 > v11)
            {
              do
              {
                *(v13 - 1) = *v13;
                ++v13;
                --v14;
              }

              while (v14);
              v12 = *(v9 + 18) - 1;
            }

            *(v9 + 18) = v12;
          }

LABEL_14:
          v9 = *v9;
        }

        while (v9);
      }

      ++v6;
    }

    while (v6 != a3);
  }

  return pthread_mutex_unlock((this + 8));
}

uint64_t AGPSessionSendTo(uint64_t a1, int *a2, uint64_t a3, UInt8 *a4, int a5, uint64_t a6, int a7, unsigned int a8, unsigned int a9, void *a10)
{
  v10 = 0;
  v62 = *MEMORY[0x277D85DE8];
  if (a3 < 1)
  {
    return v10;
  }

  if (!a4)
  {
    return v10;
  }

  v11 = a5;
  if (a5 < 1)
  {
    return v10;
  }

  can_buffer = CheckInHandleDebug();
  if (!can_buffer)
  {
    v10 = 2149187586;
    v43 = agps_log(0, v18);
    if (os_log_type_enabled(v43, OS_LOG_TYPE_ERROR))
    {
      AGPSessionSendTo_cold_3(v43);
    }

    return v10;
  }

  __src = a2;
  v57 = a6;
  v48 = 0;
  v49 = 1115 - 16 * a3;
  v20 = a4;
  v56 = can_buffer;
  while (1)
  {
    memset(v61, 0, sizeof(v61));
    if (v49 < 0)
    {
      v44 = agps_log(can_buffer, v18);
      if (os_log_type_enabled(v44, OS_LOG_TYPE_ERROR))
      {
        AGPSessionSendTo_cold_2(&v59, v60);
      }

      goto LABEL_59;
    }

    v21 = 0;
    v22 = 0;
    v23 = 1;
    v24 = v20;
    do
    {
      v25 = v21;
      *(v61 + v21) = v24;
      if (v11 >= v49)
      {
        v26 = 1115 - 16 * a3;
      }

      else
      {
        v26 = v11;
      }

      *&v60[4 * v21 + 15] = v26;
      v27 = v23;
      v22 += v26;
      v11 -= v26;
      v24 += v26;
      ++v21;
      if (v25 > 6)
      {
        break;
      }

      ++v23;
    }

    while (v11 > 0);
    if (v21 != 1 && a7 == 1)
    {
      a7 = 0;
    }

    v55 = a7;
    if (!a7)
    {
      v29 = a10;
      v30 = 0;
      v31 = v11 > 0;
      goto LABEL_24;
    }

    if (a7 != 1)
    {
      break;
    }

    v29 = a10;
    v30 = 1;
    v31 = 2;
LABEL_24:
    v54 = v31;
    pthread_mutex_lock((v56 + 224));
    v32 = *(v56 + 27);
    can_buffer = pthread_mutex_unlock((v56 + 224));
    v33 = v32 != 0;
    if ((v30 & 1) != 0 || !v32)
    {
      v52 = v29;
      v50 = v30;
      v51 = v32 != 0;
      if (v54 <= 1)
      {
        a7 = v55;
        goto LABEL_29;
      }

      v54 = 2;
LABEL_36:
      v39 = 0;
      do
      {
        v40 = *&v60[4 * v39 + 15];
        v41.i32[0] = 1;
        v41.i32[1] = *&v60[4 * v39 + 15];
        *(v56 + 45) = vadd_s32(*(v56 + 360), v41);
        can_buffer = GCKSessionSendTo(*(v56 + 3), __src, a3, *(v61 + v39), v40, v57, v54, v39, v21 - 1, a8, a9);
        ++v39;
      }

      while (v25 + 1 != v39);
      v34 = v48;
      a10 = v52;
      a7 = v55;
      v33 = v51;
      if (v50)
      {
        goto LABEL_60;
      }
    }

    else
    {
      v34 = 0;
      v27 = 0;
      a10 = v29;
      a7 = v55;
    }

LABEL_39:
    if (v33)
    {
      v10 = v34;
    }

    else
    {
      v10 = 0;
    }

    if (v34)
    {
      v42 = 1;
    }

    else
    {
      v42 = v33;
    }

    if (v11 > 0)
    {
      v42 = 1;
    }

    if (v27 < v21 && v42)
    {
      operator new();
    }

    if (v11 >= 1)
    {
      v20 = v24;
      if (!v10)
      {
        continue;
      }
    }

    goto LABEL_61;
  }

  if (a7 != 2)
  {
    v45 = agps_log(can_buffer, v18);
    if (os_log_type_enabled(v45, OS_LOG_TYPE_ERROR))
    {
      AGPSessionSendTo_cold_1(&v59, v60);
    }

LABEL_59:
    v48 = -2145648639;
    goto LABEL_60;
  }

  v52 = a10;
  v54 = v11 > 0;
  v50 = 1;
  v51 = 0;
LABEL_29:
  v35 = a3;
  v36 = __src;
  while (1)
  {
    v37 = *v36++;
    v38 = CAGP::sendingSetElement(v56, v37);
    can_buffer = AGPAssociationSetElement::can_buffer(v38, v21);
    if ((can_buffer & 1) == 0)
    {
      break;
    }

    if (!--v35)
    {
      goto LABEL_36;
    }
  }

  v33 = v51;
  if ((v50 & 1) == 0)
  {
    v27 = 0;
    v34 = -2145648639;
    v48 = -2145648639;
    a10 = v52;
    goto LABEL_39;
  }

  v48 = -2145648639;
  a10 = v52;
LABEL_60:
  v10 = v48;
LABEL_61:
  if (a10)
  {
    global_queue = dispatch_get_global_queue(0, 0);
    dispatch_async(global_queue, a10);
  }

  CheckOutHandleDebug();
  return v10;
}

uint64_t AGPSessionCreate(uint64_t a1, int a2, uint64_t a3, uint64_t a4, uint64_t *a5)
{
  if (CheckInHandleDebug())
  {
    CheckOutHandleDebug();
    operator new();
  }

  return 2149187586;
}

uint64_t AGPSessionRelease(uint64_t a1)
{
  v1 = CheckInHandleDebug();
  if (!v1)
  {
    return 2149187586;
  }

  v2 = v1;
  CheckOutHandleDebug();
  CAGP::~CAGP(v2);
  MEMORY[0x23EE811A0]();
  return 0;
}

uint64_t AGPDataQueue::add_tail(uint64_t a1, void *a2)
{
  pthread_mutex_lock((a1 + 8));
  v4 = *a1;
  if (*a1)
  {
    do
    {
      v5 = v4;
      if (v4 == a2)
      {
        a2 = 0;
      }

      v4 = *v4;
    }

    while (v4);
  }

  else
  {
    v5 = a1;
  }

  *v5 = a2;

  return pthread_mutex_unlock((a1 + 8));
}

uint64_t AGPSessionRecvFrom(uint64_t a1, uint64_t a2, uint64_t a3, unsigned int a4)
{
  v5 = a2;
  v116 = *MEMORY[0x277D85DE8];
  v114 = a2;
  if (!a1 || !a3 || !*(a3 + 8) || (*(a3 + 16) - 1) > 0x5DB)
  {
    v14 = agps_log(a1, a2);
    if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
    {
      if (a3)
      {
        v21 = *(a3 + 8);
        v22 = *(a3 + 16);
      }

      else
      {
        v21 = 0;
        v22 = 0;
      }

      *v115 = 67109632;
      *&v115[4] = v5;
      *&v115[8] = 2048;
      *&v115[10] = v21;
      *&v115[18] = 1024;
      *&v115[20] = v22;
      _os_log_error_impl(&dword_239FB7000, v14, OS_LOG_TYPE_ERROR, "Could not process a packet for participant [%08X], event-buffer [%p], event->size [%d].", v115, 0x18u);
    }

    return 0;
  }

  pthread_mutex_lock((a1 + 128));
  v8 = CAGP::receiveSetElement(a1, v5);
  v9 = *(a3 + 8);
  v10 = 4 * *v9;
  v11 = *(a3 + 16);
  if (v11 < v10 || v8 == 0)
  {
    goto LABEL_10;
  }

  v16 = v8;
  v17 = *(v9 + 1);
  *(v9 + 1) = 0;
  checksum = agp_control::generate_checksum(v9, &v9[v10], v11 - v10);
  if (v17 != checksum)
  {
    v23 = checksum;
    v24 = agps_log(checksum, v19);
    if (os_log_type_enabled(v24, OS_LOG_TYPE_DEFAULT))
    {
      *v115 = 67109376;
      *&v115[4] = v17;
      *&v115[8] = 1024;
      *&v115[10] = v23;
      _os_log_impl(&dword_239FB7000, v24, OS_LOG_TYPE_DEFAULT, "Incoming packet for participant (%08X) failed checksum check -> given (%04x) calculated (04x).", v115, 0xEu);
    }

    goto LABEL_10;
  }

  v20 = v9[1];
  if (v20 >= 2 && v20 != 11)
  {
    if (v20 == 2)
    {
      *(a3 + 8) += v10;
      *(a3 + 16) -= v10;
      v13 = 1;
      goto LABEL_11;
    }

    goto LABEL_10;
  }

  v25 = (v9 + 4);
  v26 = 20;
  do
  {
    if (v26 > v10)
    {
      goto LABEL_10;
    }

    v27 = v25[1];
    v25 += 3;
    v26 += 12;
  }

  while (v27 != *(a1 + 16));
  *(a3 + 8) += v10;
  *(a3 + 16) -= v10;
  if (v20 < 2)
  {
    v55 = *(v25 - 1);
    v56 = v16[27];
    if (v55 >= v56 || v16[28] == -1)
    {
      v59 = 0;
      v13 = 1;
    }

    else
    {
      v57 = CAGP::current_timestamp(a1);
      v56 = v16[27];
      v58 = v57 - v16[28];
      if (v58 <= -302400000)
      {
        v58 += 604800000;
      }

      v59 = v58 > 1000;
      v13 = v58 < 1001;
      v55 = *(v25 - 1);
    }

    if (v55 >= v56 || v59)
    {
      if (v59)
      {
        goto LABEL_76;
      }

      v72 = (*v25 >> 8) & 0x3F;
      *&v111 = v16 + 30;
      v13 = *&v16[2 * v72 + 30];
      if (!v13)
      {
LABEL_11:
        pthread_mutex_unlock((a1 + 128));
        return v13;
      }

      if (!*(v13 + 12))
      {
        v73 = v9[1];
        v105 = (v16 + 158);
        *(v16 + v72 + 632) = v73;
        v74 = memcpy((v13 + 16), *(a3 + 8), *(a3 + 16));
        *v13 = *(v25 - 1);
        *(v13 + 8) = *v25;
        *(v13 + 12) = *(a3 + 16);
        *(v13 + 1516) = a4;
        v76 = *v25;
        v77 = (*v25 >> 14) & 0x3F;
        LODWORD(v106) = *(v25 - 1) - v77;
        *&v110 = (v76 >> 8) - v77;
        while (1)
        {
          v78 = 0;
          v107 = (v76 >> 20) & 0x3F;
          v108 = v107 + 1;
          LODWORD(v109) = 1;
          do
          {
            v79 = (v110 + v78) & 0x3F;
            v80 = *(v111 + 8 * v79);
            if (!v80)
            {
              v97 = agps_log(v74, v75);
              if (!os_log_type_enabled(v97, OS_LOG_TYPE_ERROR))
              {
                goto LABEL_134;
              }

              *v115 = 67109120;
              *&v115[4] = v79;
              v98 = "No buffer pointer for message fragment @index %d.";
              v99 = v97;
              v100 = 8;
LABEL_138:
              _os_log_error_impl(&dword_239FB7000, v99, OS_LOG_TYPE_ERROR, v98, v115, v100);
              goto LABEL_134;
            }

            if (!v80[3])
            {
              goto LABEL_134;
            }

            v81 = v80[2];
            if (((v81 >> 20) & 0x3F) != v107)
            {
              v101 = agps_log(v74, v75);
              if (os_log_type_enabled(v101, OS_LOG_TYPE_ERROR))
              {
                v102 = (v80[2] >> 20) & 0x3F;
                *v115 = 67109632;
                *&v115[4] = v79;
                *&v115[8] = 1024;
                *&v115[10] = v102;
                *&v115[14] = 1024;
                *&v115[16] = v107;
                v98 = "Fragment @index %d has incorrect maximum segment count: %d should be %d.";
                goto LABEL_137;
              }

LABEL_134:
              v13 = 0;
              v5 = v114;
LABEL_76:
              *&v115[20] = 0;
              v61 = *(a1 + 16);
              *v115 = 2823;
              *&v115[4] = v61;
              *&v115[8] = v5;
              *&v115[12] = *(v25 - 1);
              v62 = *(v16 + 696);
              *&v115[16] = *v25 & 0xFFFFFF03 | (4 * (v62 & 0x3F));
              v63 = *v25 >> 2;
              v64 = *v25 >> 26;
              if ((*v25 & 1) != 0 || v63 != v64)
              {
                v65 = 0;
                v66 = 0;
                v68 = (*v25 & 1) == 0 || v63 != v64;
                do
                {
                  v66 |= v68 && v63 == v62;
                  if (v66)
                  {
                    v69 = *&v16[2 * v63 + 30];
                    if (v69)
                    {
                      if (*(v69 + 12) || (*(v69 + 8) & 2) != 0)
                      {
                        v65 &= ~(1 << v63);
                      }

                      else
                      {
                        v65 |= 1 << v63;
                      }

                      *&v115[20] = v65;
                    }
                  }

                  v63 = (v63 + 1) & 0x3F;
                  v68 = 1;
                }

                while (v63 != v64);
              }

              v70 = 0;
              v71 = 0;
              do
              {
                v71 += *&v115[v70];
                v70 += 2;
              }

              while (v70 != 28);
              *&v115[2] = ~v71;
              *(a1 + 384) = vadd_s32(*(a1 + 384), 0x1C00000001);
              v16[28] = CAGP::current_timestamp(a1);
              pthread_mutex_unlock((a1 + 128));
              GCKSessionSendTo(*(a1 + 24), &v114, 1, v115, 28, 0, 64, 0, 0, a4, 1u);
              return v13;
            }

            if (v106 + v78 != *v80)
            {
              v101 = agps_log(v74, v75);
              if (!os_log_type_enabled(v101, OS_LOG_TYPE_ERROR))
              {
                goto LABEL_134;
              }

              v103 = *v80;
              *v115 = 67109632;
              *&v115[4] = v79;
              *&v115[8] = 1024;
              *&v115[10] = v103;
              *&v115[14] = 1024;
              *&v115[16] = v106 + v78;
              v98 = "Fragment @index %d has incorrect serial number: is %08X should be %08X.";
LABEL_137:
              v99 = v101;
              v100 = 20;
              goto LABEL_138;
            }

            if (v78 != ((v81 >> 14) & 0x3F))
            {
              v82 = agps_log(v74, v75);
              v74 = os_log_type_enabled(v82, OS_LOG_TYPE_ERROR);
              if (v74)
              {
                v83 = *v80;
                v84 = (v80[2] >> 14) & 0x3F;
                *v115 = 67109888;
                *&v115[4] = v79;
                *&v115[8] = 1024;
                *&v115[10] = v83;
                *&v115[14] = 1024;
                *&v115[16] = v84;
                *&v115[20] = 1024;
                *&v115[22] = v78;
                _os_log_error_impl(&dword_239FB7000, v82, OS_LOG_TYPE_ERROR, "Message fragment @index %d serial number %08X seg_idx %d should be %d.", v115, 0x1Au);
              }
            }

            LODWORD(v109) = (v105[v79] != 1) & v109;
            ++v78;
          }

          while (v108 != v78);
          if (v106 != v16[27])
          {
            goto LABEL_134;
          }

          v85 = AGPDataQueue::peek_head_for_participant((a1 + 288), v114);
          v104[1] = v104;
          *v115 = *a3;
          *&v115[16] = *(a3 + 16);
          MEMORY[0x28223BE20](v85);
          v88 = v104 - v87;
          v89 = 0;
          v90 = v104 - v87;
          v106 = v104 - v87;
          v107 = v86;
          do
          {
            v91 = *(v111 + 8 * ((v110 + v89) & 0x3F));
            *(v16 + 696) = (*(v16 + 696) + 1) & 0x3F;
            ++v16[27];
            if (v86)
            {
              v90 = (v91 + 16);
            }

            else
            {
              memcpy(v88, (v91 + 16), *(v91 + 12));
              LOBYTE(v86) = v107;
            }

            v88 += *(v91 + 12);
            a4 = *(v91 + 1516);
            *v91 = 0;
            *(v91 + 8) = 0;
            ++v89;
          }

          while (v108 != v89);
          *&v115[8] = v90;
          *&v115[16] = v88 - v106;
          if ((v86 & 1) == 0)
          {
            operator new();
          }

          if (a4 == 10)
          {
            v92 = 5;
          }

          else
          {
            v92 = 3;
          }

          *v115 = v92;
          v74 = (*a1)(*(a1 + 8), v114, v115);
          if ((v107 & 1) == 0)
          {
            CFRelease(0);
          }

          *&v110 = *(v16 + 696);
          v93 = *(v111 + 8 * v110);
          if (!v93)
          {
            goto LABEL_134;
          }

          if (!v93[3])
          {
            goto LABEL_134;
          }

          v94 = v16[27];
          LODWORD(v106) = *v93;
          if (v106 != v94)
          {
            goto LABEL_134;
          }

          v76 = v93[2];
        }
      }
    }

LABEL_10:
    v13 = 0;
    goto LABEL_11;
  }

  pthread_mutex_unlock((a1 + 128));
  pthread_mutex_lock((a1 + 64));
  v28 = CAGP::sendingSetElement(a1, v5);
  v29 = pthread_mutex_lock((v28 + 32));
  if (!v28[699])
  {
    goto LABEL_128;
  }

  v32 = v28 + 120;
  if (*(v25 - 1) < **&v28[8 * v28[696] + 120])
  {
    goto LABEL_128;
  }

  if (*(v25 + 1))
  {
    v33 = 0;
    *&v110 = v28 + 632;
    while (1)
    {
      v34 = v33 + v28[698];
      if ((v25[1] >> v34))
      {
        v35 = v34 & 0x3F;
        v36 = *&v32[8 * v35];
        if (v36)
        {
          if (*(v36 + 12) && (*(v36 + 8) & 2) != 0 && *(v36 + 4) != -1)
          {
            break;
          }
        }
      }

LABEL_47:
      if (++v33 == 64)
      {
        goto LABEL_48;
      }
    }

    v29 = CAGP::current_timestamp(a1);
    v37 = v29;
    v38 = v29 - *(v36 + 4);
    if (v38 < 0)
    {
      if (v38 > 0xEDF9BE00)
      {
        LODWORD(v111) = v29 - *(v36 + 4);
        v109 = agps_log(v29, v30);
        v29 = os_log_type_enabled(v109, OS_LOG_TYPE_ERROR);
        if (v29)
        {
          AGPSessionRecvFrom(&v112, v113);
        }

        goto LABEL_45;
      }

      v38 += 604800000;
    }

    LODWORD(v111) = v38;
LABEL_45:
    if (v111 > *(v28 + 178))
    {
      v115[0] = 5;
      v115[1] = *(v110 + v35);
      *&v115[2] = 0;
      *&v115[4] = *(a1 + 16);
      *&v115[8] = v114;
      *&v115[12] = *v36;
      *&v115[16] = *(v36 + 8) & 0x3FFFF03 | (4 * (v28[698] & 0x3F)) | (v28[697] << 26);
      *(v36 + 4) = v37;
      ++*(v36 + 1520);
      memcpy(&v115[20], (v36 + 16), *(v36 + 12));
      *&v115[2] = agp_control::generate_checksum(v115, (v36 + 16), *(v36 + 12));
      v29 = GCKSessionSendTo(*(a1 + 24), &v114, 1, v115, (*(v36 + 12) + 20), 0, 64, 0, 0, a4, 1u);
    }

    goto LABEL_47;
  }

LABEL_48:
  v39 = *v25 >> 2;
  v40 = v28[698];
  if (v39 == v40)
  {
    goto LABEL_126;
  }

  *&v31 = 67109632;
  v111 = v31;
  *&v31 = 67109376;
  v110 = v31;
  while (1)
  {
    v41 = *&v32[8 * v40];
    if (!v41)
    {
      break;
    }

    if (!*(v41 + 12) || (*(v41 + 8) & 2) == 0)
    {
      goto LABEL_61;
    }

    v42 = AGPSendingSetElement::search(v28, *v41);
    v44 = v42;
    if (v42 == v28[698])
    {
LABEL_56:
      v29 = AGPSendingSetElement::remove(v28, v44);
      if (v29)
      {
        goto LABEL_61;
      }

      v48 = agps_log(v29, v30);
      v29 = os_log_type_enabled(v48, OS_LOG_TYPE_ERROR);
      if (!v29)
      {
        goto LABEL_61;
      }

      v49 = *v41;
      *v115 = v111;
      *&v115[4] = v44;
      *&v115[8] = 1024;
      *&v115[10] = v49;
      *&v115[14] = 1024;
      *&v115[16] = v114;
      v50 = v48;
      v51 = "Failed to remove index (%02d) packet serial number (%08X) from (%08X).";
      goto LABEL_64;
    }

    v45 = agps_log(v42, v43);
    v46 = os_log_type_enabled(v45, OS_LOG_TYPE_ERROR);
    if (v46)
    {
      v52 = v28[698];
      *v115 = v110;
      *&v115[4] = v44;
      *&v115[8] = 1024;
      *&v115[10] = v52;
      _os_log_error_impl(&dword_239FB7000, v45, OS_LOG_TYPE_ERROR, "SACK buf_idx [%d] != base [%d].", v115, 0xEu);
      if ((v44 & 0x80000000) == 0)
      {
        goto LABEL_56;
      }
    }

    else if ((v44 & 0x80000000) == 0)
    {
      goto LABEL_56;
    }

    v53 = agps_log(v46, v47);
    v29 = os_log_type_enabled(v53, OS_LOG_TYPE_ERROR);
    if (v29)
    {
      v54 = *v41;
      *v115 = v111;
      *&v115[4] = -1;
      *&v115[8] = 1024;
      *&v115[10] = v54;
      *&v115[14] = 1024;
      *&v115[16] = v114;
      v50 = v53;
      v51 = "Index (%02d) packet serial number (%08X) from (%08X) was not found in sending set.";
LABEL_64:
      _os_log_error_impl(&dword_239FB7000, v50, OS_LOG_TYPE_ERROR, v51, v115, 0x14u);
    }

LABEL_61:
    v40 = (v28[698] + 1) & 0x3F;
    v28[698] = v40;
    if (v39 == v40)
    {
      goto LABEL_126;
    }
  }

  v95 = agps_log(v29, v30);
  if (os_log_type_enabled(v95, OS_LOG_TYPE_ERROR))
  {
    AGPSessionRecvFrom(v95);
  }

LABEL_126:
  v96 = AGPSendingSetElement::search(v28, *(v25 - 1));
  if ((v96 & 0x80000000) == 0)
  {
    AGPSendingSetElement::remove(v28, v96);
  }

LABEL_128:
  pthread_mutex_unlock((v28 + 32));
  pthread_mutex_unlock((a1 + 64));
  return 0;
}

void *CAGP::receiveSetElement(CAGP *this, int a2)
{
  pthread_mutex_lock(this + 2);
  v4 = *(this + 7);
  v4[26] = a2;
  value = 0;
  if (!CFSetGetValueIfPresent(*(this + 4), v4, &value))
  {
    operator new();
  }

  pthread_mutex_unlock(this + 2);
  return value;
}

uint64_t *AGPDataQueue::peek_head_for_participant(AGPDataQueue *this, int a2)
{
  pthread_mutex_lock((this + 8));
  v4 = *this;
  if (*this)
  {
    do
    {
      if (*(v4 + 18) == 1 && *(v4 + 2) == a2)
      {
        break;
      }

      v4 = *v4;
    }

    while (v4);
  }

  pthread_mutex_unlock((this + 8));
  return v4;
}

AGPDataQueue *AGPDataQueue::pop_head_for_participant(AGPDataQueue *this, int a2)
{
  pthread_mutex_lock((this + 8));
  if (*this)
  {
    v4 = 0;
    v5 = *this;
    v6 = this;
    while (1)
    {
      v7 = v5;
      if (*(v5 + 18) == 1 && *(v5 + 2) == a2)
      {
        break;
      }

      v5 = *v5;
      v4 = v6;
      v6 = v7;
      if (!*v7)
      {
        goto LABEL_6;
      }
    }

    if (v4)
    {
      **v4 = *v5;
    }

    else
    {
      *this = **this;
    }
  }

  else
  {
LABEL_6:
    v7 = 0;
  }

  pthread_mutex_unlock((this + 8));
  return v7;
}

void (**AGPSessionEvent(uint64_t a1, uint64_t a2, __int128 *a3))(uint64_t, uint64_t, __int128 *)
{
  result = CheckInHandleDebug();
  if (result)
  {
    v6 = result;
    v7 = *result;
    if (!*result)
    {
      return CheckOutHandleDebug();
    }

    if (!a3)
    {
      return CheckOutHandleDebug();
    }

    v8 = result[1];
    if (!v8)
    {
      return CheckOutHandleDebug();
    }

    v10 = *a3;
    v11 = *(a3 + 2);
    if (v10 == 3)
    {
      v9 = 5;
    }

    else
    {
      if (v10 != 5)
      {
        goto LABEL_11;
      }

      v9 = 10;
    }

    if (!AGPSessionRecvFrom(v6, a2, &v10, v9))
    {
      return CheckOutHandleDebug();
    }

    v7 = *v6;
    v8 = v6[1];
LABEL_11:
    v7(v8, a2, &v10);
    return CheckOutHandleDebug();
  }

  return result;
}

uint64_t AGPSessionCopyDetailedDescription(uint64_t a1)
{
  v1 = CheckInHandleDebug();
  Mutable = CFStringCreateMutable(*MEMORY[0x277CBECE8], 0);
  v3 = Mutable;
  if (v1)
  {
    CFStringAppendF(Mutable, "AGPSession\n");
    CFStringAppendF(v3, "----------");
    CheckOutHandleDebug();
  }

  else
  {
    CFRelease(Mutable);
    return 0;
  }

  return v3;
}

void AGPAssociationSetElement::AGPAssociationSetElement(AGPAssociationSetElement *this, CAGP *a2)
{
  v4 = *MEMORY[0x277D85DE8];
  *(this + 2) = 0;
  *(this + 3) = 0;
  *(this + 12) = 0;
  *this = &unk_284D240A0;
  *(this + 1) = a2;
  *(this + 27) = 0;
  *(this + 696) = 0u;
  *(this + 178) = 0;
  if (!pthread_mutexattr_init(&v3))
  {
    pthread_mutexattr_settype(&v3, 2);
    pthread_mutex_init((this + 32), &v3);
    pthread_mutexattr_destroy(&v3);
  }

  pthread_mutex_lock((this + 32));
  UpdateRTO(this + 175, 250);
  pthread_mutex_unlock((this + 32));
  *(this + 28) = -1;
  operator new();
}

void AGPSendingSetElement::~AGPSendingSetElement(AGPSendingSetElement *this)
{
  *this = &unk_284D24040;
  AGPAssociationSetElement::~AGPAssociationSetElement(this);
}

{
  *this = &unk_284D24040;
  AGPAssociationSetElement::~AGPAssociationSetElement(this);

  JUMPOUT(0x23EE811A0);
}

void AGPAssociationSetElement::~AGPAssociationSetElement(AGPAssociationSetElement *this)
{
  AGPAssociationSetElement::~AGPAssociationSetElement(this);

  JUMPOUT(0x23EE811A0);
}

{
  v2 = 0;
  *this = &unk_284D240A0;
  do
  {
    *(this + v2 + 632) = 0x80;
    v3 = *(this + v2 + 15);
    if (v3)
    {
      MEMORY[0x23EE811A0](v3, 0x1000C40049130BCLL);
    }

    ++v2;
  }

  while (v2 != 64);
  pthread_mutex_destroy((this + 32));
}

void AGPDataQueueNode::~AGPDataQueueNode(CFTypeRef *this)
{
  CFRelease(this[10]);
  this[10] = 0;
  *(this + 18) = 0;
  v2 = this[12];
  if (v2)
  {
    _Block_release(v2);
  }
}

void CAGP::CAGP(CAGP *this)
{
  v2 = *MEMORY[0x277D85DE8];
  AGPDataQueue::AGPDataQueue((this + 216));
  AGPDataQueue::AGPDataQueue((this + 288));
  *(this + 24) = 0;
  *(this + 25) = 0;
  *(this + 4) = CFSetCreateMutable(0, 0, &associationSetCallBacks);
  *(this + 5) = CFSetCreateMutable(0, 0, &associationSetCallBacks);
  operator new();
}

void sub_239FE1918(_Unwind_Exception *a1)
{
  v3 = v2;
  MEMORY[0x23EE811A0](v3, 0x10A1C404616C3E8);
  AGPDataQueue::~AGPDataQueue((v1 + 288));
  AGPDataQueue::~AGPDataQueue((v1 + 216));
  _Unwind_Resume(a1);
}

void AGPDataQueue::AGPDataQueue(AGPDataQueue *this)
{
  v3 = *MEMORY[0x277D85DE8];
  *this = 0;
  if (!pthread_mutexattr_init(&v2))
  {
    pthread_mutexattr_settype(&v2, 2);
    pthread_mutex_init((this + 8), &v2);
    pthread_mutexattr_destroy(&v2);
  }
}

void AGPReceiveSetElement::~AGPReceiveSetElement(AGPReceiveSetElement *this)
{
  *this = &unk_284D240C0;
  AGPAssociationSetElement::~AGPAssociationSetElement(this);
}

{
  *this = &unk_284D240C0;
  AGPAssociationSetElement::~AGPAssociationSetElement(this);

  JUMPOUT(0x23EE811A0);
}

void AGPDataQueue::~AGPDataQueue(AGPDataQueue *this)
{
  v2 = *this;
  if (v2)
  {
    do
    {
      *this = *v2;
      AGPDataQueueNode::~AGPDataQueueNode(v2);
      MEMORY[0x23EE811A0]();
      v2 = *this;
    }

    while (*this);
  }

  pthread_mutex_destroy((this + 8));
}

void CAGP::~CAGP(pthread_mutex_t *this)
{
  v2 = *&this->__opaque[32];
  if (v2)
  {
    CFRelease(v2);
    *&this->__opaque[32] = 0;
  }

  v3 = *&this->__opaque[24];
  if (v3)
  {
    CFRelease(v3);
    *&this->__opaque[24] = 0;
  }

  while (1)
  {
    sig = this[3].__sig;
    if (!sig)
    {
      break;
    }

    v5 = sig[3];
    this[3].__sig = sig[2];
    CFSetRemoveValue(v5, sig);
  }

  while (1)
  {
    v6 = *this[3].__opaque;
    if (!v6)
    {
      break;
    }

    *this[3].__opaque = v6[2];
    (*(*v6 + 8))(v6);
  }

  pthread_mutex_destroy(this + 1);
  pthread_mutex_destroy(this + 2);
  v7 = *&this->__opaque[40];
  if (v7)
  {
    (*(*v7 + 8))(v7);
  }

  v8 = *&this->__opaque[48];
  if (v8)
  {
    (*(*v8 + 8))(v8);
  }

  AGPDataQueue::~AGPDataQueue(&this[4].__opaque[24]);
  AGPDataQueue::~AGPDataQueue(&this[3].__opaque[16]);
}

_BYTE *OUTLINED_FUNCTION_0_3(_BYTE *result, _BYTE *a2)
{
  *result = 0;
  *a2 = 0;
  return result;
}

void OUTLINED_FUNCTION_1_3(void *a1, int a2, os_log_t log, const char *a4, uint8_t *a5)
{

  _os_log_error_impl(a1, log, OS_LOG_TYPE_ERROR, a4, a5, 2u);
}

uint64_t PostEventCallback(uint64_t a1, int a2, int a3, const void *a4, int a5, int a6)
{
  v6 = 2149187587;
  if (!a1)
  {
    return 2149187585;
  }

  if (*(a1 + 4))
  {
    return 2149187606;
  }

  if (a4 && a5)
  {
    v13 = malloc_type_malloc(a5 + 48, 0x103004055E16862uLL);
    if (!v13)
    {
      return v6;
    }

    v14 = v13;
    *v13 = a2;
    v13[2] = a3;
    v15 = v13 + 12;
    *(v14 + 2) = v15;
    v14[6] = a5;
    v14[7] = a6;
    memcpy(v15, a4, a5);
  }

  else
  {
    v16 = malloc_type_malloc(0x30uLL, 0x103004055E16862uLL);
    if (!v16)
    {
      return v6;
    }

    v14 = v16;
    *v16 = a2;
    v16[2] = a3;
    *(v16 + 2) = 0;
    v16[6] = 0;
    v16[7] = a6;
  }

  *(v14 + 5) = 0;
  pthread_mutex_lock((a1 + 48));
  v17 = a1;
  do
  {
    v18 = v17;
    v17 = *(v17 + 40);
  }

  while (v17);
  *(v18 + 40) = v14;
  pthread_cond_signal((a1 + 112));
  pthread_mutex_unlock((a1 + 48));
  return 0;
}

uint64_t ServiceWaitEventCallbacks(uint64_t a1, double a2)
{
  v17 = *MEMORY[0x277D85DE8];
  result = 2149187585;
  if (a1)
  {
    if (*(a1 + 4))
    {
      return 2149187606;
    }

    else
    {
      v5 = pthread_mutex_lock((a1 + 248));
      v8 = (a1 + 240);
      v7 = *(a1 + 240);
      if (v7)
      {
        do
        {
          v9 = (v7 + 40);
          if (*(v7 + 32) <= a2)
          {
            *v8 = *v9;
            *v9 = 0;
            v10 = ec_log(v5, v6);
            if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
            {
              v11 = *(v7 + 8);
              v12 = *v7;
              *buf = 67109376;
              v14 = v11;
              v15 = 1024;
              v16 = v12;
              _os_log_impl(&dword_239FB7000, v10, OS_LOG_TYPE_DEFAULT, "ServiceWaitEventCallbacks: post delayed event of type %d to participant %08X.", buf, 0xEu);
            }

            PostEventCallback(a1, *v7, *(v7 + 8), *(v7 + 16), *(v7 + 24), *(v7 + 28));
            free(v7);
          }

          else
          {
            v8 = (v7 + 40);
          }

          v7 = *v8;
        }

        while (*v8);
      }

      pthread_mutex_unlock((a1 + 248));
      return 0;
    }
  }

  return result;
}

uint64_t CleanupWaitEventCallbacks(uint64_t a1, uint64_t a2)
{
  v3 = ec_log(a1, a2);
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    *v6 = 0;
    _os_log_impl(&dword_239FB7000, v3, OS_LOG_TYPE_DEFAULT, "Start cleanup.", v6, 2u);
  }

  if (!a1)
  {
    return 2149187585;
  }

  pthread_mutex_lock((a1 + 248));
  while (1)
  {
    v4 = *(a1 + 240);
    if (!v4)
    {
      break;
    }

    *(a1 + 240) = v4[5];
    free(v4);
  }

  pthread_mutex_unlock((a1 + 248));
  return 0;
}

uint64_t StartEventCallbackThread(_DWORD *a1)
{
  v5 = *MEMORY[0x277D85DE8];
  if (!a1)
  {
    return 2149187585;
  }

  memset(&v4, 0, sizeof(v4));
  pthread_mutex_lock((a1 + 12));
  pthread_attr_init(&v4);
  pthread_attr_setdetachstate(&v4, 2);
  v2 = pthread_create(a1 + 20, 0, EventCBProc, a1);
  pthread_attr_destroy(&v4);
  if (v2)
  {
    v2 = v2 | 0xC01A0000;
  }

  else
  {
    *a1 = 1;
  }

  pthread_mutex_unlock((a1 + 12));
  return v2;
}

uint64_t EventCBProc(uint64_t a1)
{
  pthread_setname_np("com.apple.multipeerconnectivity.eventcallback.eventcbproc");
  while (1)
  {
    pthread_mutex_lock((a1 + 48));
    while (1)
    {
      v2 = *(a1 + 40);
      if (v2)
      {
        break;
      }

      if (*(a1 + 4))
      {
        goto LABEL_8;
      }

      pthread_cond_wait((a1 + 112), (a1 + 48));
    }

    if (*(a1 + 4))
    {
      break;
    }

    *(a1 + 40) = v2[5];
    pthread_mutex_unlock((a1 + 48));
    (*(a1 + 8))(*(a1 + 16), *v2, v2 + 1);
    free(v2);
  }

LABEL_8:
  v3 = pthread_mutex_unlock((a1 + 48));
  v5 = ec_log(v3, v4);
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    *v7 = 0;
    _os_log_impl(&dword_239FB7000, v5, OS_LOG_TYPE_DEFAULT, "EventCallbackThread ends.", v7, 2u);
  }

  return 0;
}

uint64_t StopEventCallbackThread(char *a1)
{
  v1 = 2149187585;
  if (a1)
  {
    pthread_mutex_lock((a1 + 48));
    v3 = *a1;
    if (*a1)
    {
      *(a1 + 1) = 1;
      pthread_cond_signal((a1 + 112));
    }

    v4 = *(a1 + 5);
    if (v4)
    {
      do
      {
        v5 = v4[5];
        free(v4);
        v4 = v5;
      }

      while (v5);
    }

    *(a1 + 5) = 0;
    pthread_mutex_unlock((a1 + 48));
    pthread_join(*(a1 + 20), 0);
    CleanupWaitEventCallbacks(a1, v6);
    pthread_mutex_destroy((a1 + 48));
    pthread_mutex_destroy((a1 + 248));
    pthread_cond_destroy((a1 + 112));
    free(a1);
    if (v3)
    {
      return 0;
    }

    else
    {
      return 2149187606;
    }
  }

  return v1;
}

uint64_t OSPFMakeHello(void *a1, uint64_t a2, unsigned int a3, unsigned int a4)
{
  v8 = malloc_type_calloc(1uLL, 0x22uLL, 0x1000040451B5BE8uLL);
  if (!v8)
  {
    return 0xFFFFFFFFLL;
  }

  v9 = 0;
  LOWORD(v10) = 0;
  *v8 = 449;
  *(v8 + 2) = 50340352;
  *(v8 + 2) = bswap32(a3);
  *(v8 + 3) = bswap32(a4);
  *(v8 + 8) = bswap32(*(a2 + 12)) >> 16;
  *(v8 + 18) = 268435960;
  *(v8 + 22) = 523;
  *(v8 + 26) = bswap64(*(a2 + 16));
  do
  {
    v10 = CRC16Table[(v8[v9++] ^ v10)] ^ ((v10 & 0xFF00) >> 8);
  }

  while (v9 != 34);
  *(v8 + 3) = bswap32(v10) >> 16;
  *a1 = v8;
  return 34;
}

uint64_t OSPFMakeHeartbeat(void *a1, unsigned int a2, unsigned int a3, int a4, unsigned int a5)
{
  v10 = malloc_type_calloc(1uLL, 0x14uLL, 0x1000040451B5BE8uLL);
  if (!v10)
  {
    return 0xFFFFFFFFLL;
  }

  v11 = 0;
  LOWORD(v12) = 0;
  *v10 = 2241;
  *(v10 + 2) = 5120;
  v10[2] = bswap32(a2);
  v10[3] = bswap32(a3);
  *(v10 + 8) = (a4 != 0) << 9;
  *(v10 + 9) = __rev16(a5);
  do
  {
    v12 = CRC16Table[(*(v10 + v11++) ^ v12)] ^ ((v12 & 0xFF00) >> 8);
  }

  while (v11 != 20);
  *(v10 + 3) = bswap32(v12) >> 16;
  *a1 = v10;
  return 20;
}

uint64_t OSPFMakeDD(void *a1, uint64_t a2, uint64_t a3, unsigned int a4, unsigned int a5, int a6)
{
  v10 = *(a2 + 12);
  v11 = *(a2 + 16);
  if (v10 < 1)
  {
    v12 = 0;
    v16 = 18;
  }

  else
  {
    v12 = 0;
    v13 = 2;
    v14 = *(a2 + 12);
    v15 = *(a2 + 16);
    do
    {
      if (*v15 != a5)
      {
        v13 += *(v15 + 8) + 8 * *(v15 + 284) + 9;
        ++v12;
      }

      v15 += 416;
      --v14;
    }

    while (v14);
    v16 = (v13 + 16);
  }

  v17 = malloc_type_calloc(1uLL, v16, 0x1000040451B5BE8uLL);
  if (!v17)
  {
    return 0xFFFFFFFFLL;
  }

  v18 = v17;
  v36 = a6;
  v37 = v16;
  v38 = a1;
  *v17 = 705;
  v17[1] = bswap32(v16) >> 16;
  *(v17 + 2) = bswap32(a4);
  *(v17 + 3) = bswap32(a5);
  v17[8] = bswap32(v12) >> 16;
  if (v10 >= 1)
  {
    v19 = 0;
    v20 = v17 + 9;
    v21 = (v11 + 292);
    do
    {
      v22 = v11 + 416 * v19;
      if (*v22 != a5)
      {
        v23 = *(v22 + 284);
        *v20 = bswap32(*v22);
        v20[2] = bswap32(*(v22 + 272)) >> 16;
        v24 = *(v22 + 8);
        *(v20 + 6) = v24;
        v25 = v20 + 7;
        memcpy(v20 + 7, (v22 + 9), v24);
        v26 = &v25[*(v22 + 8)];
        *v26 = bswap32(v23) >> 16;
        v20 = v26 + 2;
        if (v23 >= 1)
        {
          v27 = v21;
          do
          {
            *v20 = bswap32(*(v27 - 1));
            v28 = *v27;
            v27 += 2;
            *(v20 + 1) = bswap32(v28);
            v20 += 4;
            --v23;
          }

          while (v23);
        }
      }

      ++v19;
      v21 += 104;
    }

    while (v19 != v10);
  }

  if (v36)
  {
    v40 = 0;
    v39 = 0;
    v29 = v37;
    v30 = v38;
    if (!ospfTryCompressPacket(&v40, &v39, v18, v37))
    {
      free(v18);
      v18 = v40;
      v29 = v39;
    }
  }

  else
  {
    v29 = v37;
    v30 = v38;
  }

  if (v29 < 1)
  {
    v31 = 0;
  }

  else
  {
    LOWORD(v31) = 0;
    v32 = v29;
    v33 = v18;
    do
    {
      v34 = *v33++;
      v31 = CRC16Table[(v34 ^ v31)] ^ ((v31 & 0xFF00) >> 8);
      --v32;
    }

    while (v32);
  }

  v18[3] = bswap32(v31) >> 16;
  *v30 = v18;
  return v29;
}

uint64_t ospfTryCompressPacket(void *a1, unsigned int *a2, uint64_t a3, int a4)
{
  v35 = *MEMORY[0x277D85DE8];
  v8 = a4 - 16;
  destLen = compressBound(a4 - 16);
  v9 = malloc_type_malloc(destLen + 18, 0x1000040451B5BE8uLL);
  if (!v9)
  {
    return 1;
  }

  v10 = v9;
  v11 = compress2(v9 + 18, &destLen, (a3 + 16), v8, 9);
  if (v11 || (v13 = destLen, destLen + 2 >= v8))
  {
    v21 = ospf_log(v11, v12);
    if (os_log_type_enabled(v21, OS_LOG_TYPE_DEFAULT))
    {
      v22 = *(a3 + 1);
      v23 = "OSPF";
      if (v22 == 3)
      {
        v23 = "LSA";
      }

      *buf = 136315650;
      if (v22 == 2)
      {
        v23 = "DD";
      }

      v26 = v23;
      v27 = 1024;
      v28 = v8;
      v29 = 1024;
      v30 = destLen;
      _os_log_impl(&dword_239FB7000, v21, OS_LOG_TYPE_DEFAULT, "%s compressed body %u => %u+2 (not performed).", buf, 0x18u);
    }

    free(v10);
    return 1;
  }

  *v10 = *a3;
  v10[8] = bswap32(v8) >> 16;
  v10[2] = 256;
  v14 = v13 + 18;
  v10[1] = bswap32(v14) >> 16;
  *a1 = v10;
  *a2 = v14;
  v15 = ospf_log(v11, v12);
  v16 = os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT);
  result = 0;
  if (v16)
  {
    v18 = "OSPF";
    v19 = *(a3 + 1);
    v20 = *a2;
    if (v19 == 3)
    {
      v18 = "LSA";
    }

    *buf = 136316162;
    if (v19 == 2)
    {
      v18 = "DD";
    }

    v26 = v18;
    v27 = 1024;
    v28 = v8;
    v29 = 1024;
    v30 = v13;
    v31 = 1024;
    v32 = a4;
    v33 = 1024;
    v34 = v20;
    _os_log_impl(&dword_239FB7000, v15, OS_LOG_TYPE_DEFAULT, "%s compressed body %u => %u+2, total size: %d => %d.", buf, 0x24u);
    return 0;
  }

  return result;
}

uint64_t OSPFMakeLSA(uint64_t a1, uint64_t a2, uint64_t a3, unsigned int a4, unsigned int a5, int a6)
{
  v6 = *(a2 + 16);
  if (v6 < 1)
  {
    goto LABEL_22;
  }

  v11 = 0;
  v12 = *(a2 + 12);
  v13 = *(a2 + 24);
  v14 = 4;
  v15 = *(a2 + 16);
  v16 = v13;
  do
  {
    if (*v16 != a5 && *(v16 + 276) && *(v16 + 280) != a5)
    {
      v14 += *(v16 + 8) + 8 * *(v16 + 284) + 9;
      ++v11;
    }

    v16 += 416;
    --v15;
  }

  while (v15);
  if (!v11)
  {
LABEL_22:
    v33 = ospf_log(a1, a2);
    if (os_log_type_enabled(v33, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_239FB7000, v33, OS_LOG_TYPE_DEFAULT, "No eligible nodes.", buf, 2u);
    }

    return 0xFFFFFFFFLL;
  }

  v17 = (v14 + 16);
  v18 = malloc_type_calloc(1uLL, v17, 0x1000040451B5BE8uLL);
  if (!v18)
  {
    v34 = ospf_log(0, v19);
    if (os_log_type_enabled(v34, OS_LOG_TYPE_ERROR))
    {
      OSPFMakeLSA_cold_1(v34);
    }

    return 0xFFFFFFFFLL;
  }

  v20 = v18;
  v40 = a6;
  v41 = v17;
  v42 = a1;
  v21 = 0;
  *v18 = 961;
  v18[1] = bswap32(v17) >> 16;
  *(v18 + 2) = bswap32(a4);
  *(v18 + 3) = bswap32(a5);
  v18[8] = __rev16(v12);
  v18[9] = bswap32(v11) >> 16;
  v22 = v18 + 10;
  v23 = (v13 + 292);
  do
  {
    v24 = v13 + 416 * v21;
    if (*v24 != a5)
    {
      if (*(v24 + 276))
      {
        if (*(v24 + 280) != a5)
        {
          v25 = *(v24 + 284);
          *v22 = bswap32(*v24);
          v22[2] = bswap32(*(v24 + 272)) >> 16;
          v26 = *(v24 + 8);
          *(v22 + 6) = v26;
          v27 = v22 + 7;
          memcpy(v22 + 7, (v24 + 9), v26);
          v28 = &v27[*(v24 + 8)];
          *v28 = bswap32(v25) >> 16;
          v22 = v28 + 2;
          if (v25 >= 1)
          {
            v29 = v23;
            do
            {
              *v22 = bswap32(*(v29 - 1));
              v30 = *v29;
              v29 += 2;
              *(v22 + 1) = bswap32(v30);
              v22 += 4;
              --v25;
            }

            while (v25);
          }
        }
      }
    }

    ++v21;
    v23 += 104;
  }

  while (v21 != v6);
  if (v40)
  {
    v44 = 0;
    v43 = 0;
    v31 = v41;
    if (!ospfTryCompressPacket(&v44, &v43, v20, v41))
    {
      free(v20);
      v20 = v44;
      v31 = v43;
    }

    v32 = v42;
  }

  else
  {
    v31 = v41;
    v32 = v42;
  }

  if (v31 < 1)
  {
    v35 = 0;
  }

  else
  {
    LOWORD(v35) = 0;
    v36 = v31;
    v37 = v20;
    do
    {
      v38 = *v37++;
      v35 = CRC16Table[(v38 ^ v35)] ^ ((v35 & 0xFF00) >> 8);
      --v36;
    }

    while (v36);
  }

  v20[3] = bswap32(v35) >> 16;
  *v32 = v20;
  return v31;
}

uint64_t OSPFMakeLSAACK(void *a1, uint64_t a2, uint64_t a3, unsigned int a4, uint64_t a5)
{
  v5 = a5;
  v9 = malloc_type_calloc(1uLL, 0x12uLL, 0x1000040451B5BE8uLL);
  if (v9)
  {
    v11 = 0;
    LOWORD(v12) = 0;
    *v9 = 301991105;
    v9[2] = bswap32(a4);
    v9[3] = bswap32(v5);
    *(v9 + 8) = bswap32(*(a2 + 12)) >> 16;
    do
    {
      v12 = CRC16Table[(*(v9 + v11++) ^ v12)] ^ ((v12 & 0xFF00) >> 8);
    }

    while (v11 != 18);
    *(v9 + 3) = bswap32(v12) >> 16;
    *a1 = v9;
    return 18;
  }

  else
  {
    v14 = ospf_log(0, v10);
    if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
    {
      OSPFMakeLSAACK_cold_1(v5, v14);
    }

    return 0xFFFFFFFFLL;
  }
}

uint64_t OSPFMakeData(char *a1, int a2, uint64_t a3, uint64_t a4, uint64_t a5, unsigned int a6, unsigned int *a7, uint64_t a8, uint64_t (*a9)(uint64_t, unsigned int *, uint64_t, char *, void, uint64_t, void, void, int), uint64_t a10, char a11, unsigned __int8 a12, unsigned __int8 a13)
{
  v13 = a8;
  v14 = a7;
  v16 = a5;
  v19 = a1;
  v20 = &a1[4 * a8];
  if (a9)
  {
    *(&v31 + 1) = __PAIR16__(a13, a12);
    LOBYTE(v31) = a11;
    v21 = a9(a10, a7, a8, v20 + 12, (1488 - 4 * a8), a5, *a3, *(a3 + 8), v31);
    if (v21 < 0)
    {
      v22 = 0;
      v23 = 0;
      *(v19 + 2) = 0;
      v24 = v19 + 6;
LABEL_15:
      *v24 = bswap32(v23) >> 16;
      return v22;
    }
  }

  else
  {
    v21 = 0;
  }

  v22 = (4 * v13 + *(a3 + 8) + v21 + 12);
  if (v22 <= a2)
  {
    *v19 = v13 & 0xF | 0xC0;
    v19[1] = v16;
    *(v19 + 1) = bswap32(v22) >> 16;
    *(v19 + 2) = bswap32(a6);
    if (v13 >= 1)
    {
      v25 = v19 + 12;
      v26 = v13;
      do
      {
        v27 = *v14++;
        *v25++ = bswap32(v27);
        --v26;
      }

      while (v26);
    }

    memcpy(&v20[v21 + 12], *a3, *(a3 + 8));
    *(v19 + 1) = 0;
    v24 = v19 + 6;
    if (v22 < 1)
    {
      v23 = 0;
    }

    else
    {
      LOWORD(v23) = 0;
      v28 = v22;
      do
      {
        v29 = *v19++;
        v23 = CRC16Table[(v29 ^ v23)] ^ ((v23 & 0xFF00) >> 8);
        --v28;
      }

      while (v28);
    }

    goto LABEL_15;
  }

  return 0xFFFFFFFFLL;
}

uint64_t ospfParseOption(uint64_t a1, uint64_t a2, int *a3, _DWORD *a4)
{
  v28 = *MEMORY[0x277D85DE8];
  if ((*(a1 + 4) & 2) == 0)
  {
    return 0;
  }

  v7 = *a3;
  if (!*a3)
  {
    goto LABEL_7;
  }

  if (v7 <= 3)
  {
    v9 = ospf_log(a1, a2);
    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
    {
      v10 = *(a1 + 1);
      v11 = *a3;
      v22 = 67109376;
      v23 = v10;
      v24 = 1024;
      v25 = v11;
      _os_log_impl(&dword_239FB7000, v9, OS_LOG_TYPE_DEFAULT, "Msg: %d: option too small: %d.", &v22, 0xEu);
    }

LABEL_7:
    result = 0;
    *a4 = 0;
    return result;
  }

  v13 = *a2;
  v14 = 4 * *(*a2 + 1);
  v15 = v14 + 4;
  if (v14 + 4 <= v7)
  {
    if (*v13)
    {
      if (*v13 < 0)
      {
        v19 = ospf_log(a1, a2);
        if (os_log_type_enabled(v19, OS_LOG_TYPE_DEFAULT))
        {
          v20 = *(a1 + 1);
          v21 = *v13;
          v22 = 67109376;
          v23 = v20;
          v24 = 1024;
          v25 = v21;
          _os_log_impl(&dword_239FB7000, v19, OS_LOG_TYPE_DEFAULT, "Msg: %d: unsupported required option: %d", &v22, 0xEu);
        }

        *a4 = 1;
        v13 = *a2;
      }

      else
      {
        *a4 = 0;
      }
    }

    else
    {
      *a4 = 1;
    }

    *a2 = &v13[v15];
    *a3 -= v15;
    return 1;
  }

  else
  {
    v16 = ospf_log(a1, a2);
    if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
    {
      v17 = *(a1 + 1);
      v18 = *a3;
      v22 = 67109632;
      v23 = v17;
      v24 = 1024;
      v25 = v15;
      v26 = 1024;
      v27 = v18;
      _os_log_impl(&dword_239FB7000, v16, OS_LOG_TYPE_DEFAULT, "Msg: %d: incorrect option size: %d > %d.", &v22, 0x14u);
    }

    result = 1;
    *a4 = 1;
  }

  return result;
}

uint64_t ospfVerifyOptions(uint64_t a1, unsigned __int8 *a2, unsigned int a3, int *a4, _DWORD *a5)
{
  v42 = *MEMORY[0x277D85DE8];
  if (a3 > 3)
  {
    if (*a2 == 248)
    {
      v11 = __rev16(*(a2 + 1));
      if (v11 <= a3)
      {
        v17 = a2[1];
        v18 = a2 + 4;
        if (a2[1])
        {
          v19 = 0;
          while (1)
          {
            v20 = v18 - a2;
            v21 = v11 - (v18 - a2);
            if (v21 <= 3)
            {
              break;
            }

            v22 = 4 * v18[1] + 4;
            if (v21 < v22)
            {
              v28 = ospf_log(a1, a2);
              if (os_log_type_enabled(v28, OS_LOG_TYPE_DEFAULT))
              {
                v29 = *(a1 + 1);
                v30 = 67110400;
                v31 = v29;
                v32 = 1024;
                v33 = v19;
                v34 = 1024;
                v35 = v17;
                v36 = 1024;
                v37 = v20;
                v38 = 1024;
                v39 = v11;
                v40 = 1024;
                v41 = v22;
                _os_log_impl(&dword_239FB7000, v28, OS_LOG_TYPE_DEFAULT, "Msg: %d: option %d of %d: @%d/%d, size=%d.", &v30, 0x26u);
              }

              return 5;
            }

            v18 += v22;
            if (v17 == ++v19)
            {
              goto LABEL_19;
            }
          }

          v26 = ospf_log(a1, a2);
          if (os_log_type_enabled(v26, OS_LOG_TYPE_DEFAULT))
          {
            v27 = *(a1 + 1);
            v30 = 67109632;
            v31 = v27;
            v32 = 1024;
            v33 = v19;
            v34 = 1024;
            v35 = v17;
            _os_log_impl(&dword_239FB7000, v26, OS_LOG_TYPE_DEFAULT, "Msg: %d: option %d of %d: not enough option header.", &v30, 0x14u);
          }

          return 4;
        }

        else
        {
LABEL_19:
          v23 = v18 - a2;
          if (v18 - a2 == v11)
          {
            result = 0;
            *a4 = v17;
            *a5 = v11;
          }

          else
          {
            v24 = ospf_log(a1, a2);
            if (os_log_type_enabled(v24, OS_LOG_TYPE_DEFAULT))
            {
              v25 = *(a1 + 1);
              v30 = 67109888;
              v31 = v25;
              v32 = 1024;
              v33 = v17;
              v34 = 1024;
              v35 = v23;
              v36 = 1024;
              v37 = v11;
              _os_log_impl(&dword_239FB7000, v24, OS_LOG_TYPE_DEFAULT, "Msg: %d: %d options used %d bytes != %d offset.", &v30, 0x1Au);
            }

            return 6;
          }
        }
      }

      else
      {
        v12 = ospf_log(a1, a2);
        if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
        {
          v13 = *(a1 + 1);
          v30 = 67109632;
          v31 = v13;
          v32 = 1024;
          v33 = v11;
          v34 = 1024;
          v35 = a3;
          _os_log_impl(&dword_239FB7000, v12, OS_LOG_TYPE_DEFAULT, "Msg: %d: body offset %d > %d.", &v30, 0x14u);
        }

        return 3;
      }
    }

    else
    {
      v14 = ospf_log(a1, a2);
      if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
      {
        v15 = *(a1 + 1);
        v16 = *a2;
        v30 = 67109376;
        v31 = v15;
        v32 = 1024;
        v33 = v16;
        _os_log_impl(&dword_239FB7000, v14, OS_LOG_TYPE_DEFAULT, "Msg: %d: expecting options info, got %d.", &v30, 0xEu);
      }

      return 2;
    }
  }

  else
  {
    v6 = ospf_log(a1, a2);
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      v7 = *(a1 + 1);
      v30 = 67109120;
      v31 = v7;
      _os_log_impl(&dword_239FB7000, v6, OS_LOG_TYPE_DEFAULT, "Msg: %d: missing options info.", &v30, 8u);
    }

    return 1;
  }

  return result;
}

uint64_t OSPFParse(uint64_t a1, void *a2, unsigned __int8 *a3, uint64_t a4, uint64_t a5, unsigned __int8 **a6, int *a7)
{
  v10 = a4;
  v13 = a1;
  v132 = *MEMORY[0x277D85DE8];
  v124 = 0;
  if ((*a3 & 0xF0) != 0xC0 && a3[1] != 1)
  {
    v21 = -3001;
    goto LABEL_141;
  }

  v14 = *a3 & 0xF;
  if ((*a3 & 0xF) == 0)
  {
    v21 = -3002;
LABEL_141:
    v99 = ospf_log(a1, a2);
    if (os_log_type_enabled(v99, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 67109120;
      *v126 = v21;
      _os_log_impl(&dword_239FB7000, v99, OS_LOG_TYPE_DEFAULT, "OSPFParse failed with error %d.", buf, 8u);
    }

    v10 = 0xFFFFFFFFLL;
    goto LABEL_144;
  }

  v15 = a3[1];
  if ((v15 - 1) > 9)
  {
    v21 = -3003;
    goto LABEL_141;
  }

  v16 = *(a3 + 3);
  *(a3 + 3) = 0;
  if (a4 < 1)
  {
    v17 = 0;
  }

  else
  {
    LOWORD(v17) = 0;
    v18 = a4;
    v19 = a3;
    do
    {
      v20 = *v19++;
      v17 = CRC16Table[(v20 ^ v17)] ^ ((v17 & 0xFF00) >> 8);
      --v18;
    }

    while (v18);
  }

  v22 = bswap32(v17) >> 16;
  *(a3 + 3) = v22;
  if (v22 != v16)
  {
    *(a3 + 3) = v16;
    v21 = -3004;
    goto LABEL_141;
  }

  v23 = bswap32(*(a3 + 1)) >> 16;
  *(a3 + 1) = v23;
  if (v23 != a4)
  {
    v21 = -3005;
    goto LABEL_141;
  }

  v24 = bswap32(*(a3 + 2)) >> 16;
  *(a3 + 2) = v24;
  *(a3 + 2) = bswap32(*(a3 + 2));
  v25 = (a3 + 12);
  v26 = 12;
  v27 = v14;
  do
  {
    *&a3[v26] = bswap32(*&a3[v26]);
    v26 += 4;
    --v27;
  }

  while (v27);
  v28 = a4 - 4 * v14;
  v29 = (v28 - 12);
  if (v28 - 12 < 0)
  {
    v21 = -3006;
    goto LABEL_141;
  }

  v30 = v24 & 1;
  if (!a2 && v30)
  {
    v31 = ospf_log(a1, 0);
    a1 = os_log_type_enabled(v31, OS_LOG_TYPE_DEFAULT);
    if (a1)
    {
      *buf = 0;
      _os_log_impl(&dword_239FB7000, v31, OS_LOG_TYPE_DEFAULT, "Cannot pre-parse compressed packet.", buf, 2u);
    }

    *(a3 + 2) = bswap32(*(a3 + 2)) >> 16;
    *(a3 + 1) = bswap32(*(a3 + 1)) >> 16;
    *(a3 + 2) = bswap32(*(a3 + 2));
    v21 = -3007;
    do
    {
      *v25 = bswap32(*v25);
      ++v25;
      --v14;
    }

    while (v14);
    goto LABEL_141;
  }

  a1 = 0;
  v32 = &v25[v14];
  if ((v15 & 0xE) == 2 && v29 >= 3 && v30)
  {
    destLen = bswap32(*v32) >> 16;
    v117 = destLen;
    a1 = malloc_type_malloc(destLen, 0x100004077774924uLL);
    if (a1)
    {
      v119 = a1;
      v104 = v29 - 2;
      v33 = uncompress(a1, &destLen, &v25[v14] + 2, v29 - 2);
      v34 = v33;
      v112 = destLen;
      log = ospf_log(v33, v35);
      v36 = os_log_type_enabled(log, OS_LOG_TYPE_DEFAULT);
      if (!v34 && v112 == v117)
      {
        if (v36)
        {
          v37 = a3[1];
          v38 = "OSPF";
          if (v37 == 3)
          {
            v38 = "LSA";
          }

          v39 = v37 == 2;
          *buf = 136315906;
          v40 = "DD";
          if (!v39)
          {
            v40 = v38;
          }

          *v126 = v40;
          *&v126[8] = 1024;
          v127 = v104;
          v128 = 1024;
          v129 = destLen;
          v130 = 1024;
          v131 = v117;
          _os_log_impl(&dword_239FB7000, log, OS_LOG_TYPE_DEFAULT, "%s uncompressed body %u+2 => %u (stated %u).", buf, 0x1Eu);
        }

        LODWORD(v29) = destLen;
        v15 = a3[1];
        a1 = v119;
        v32 = v119;
        goto LABEL_41;
      }

      if (v36)
      {
        v53 = a3[1];
        v54 = "OSPF";
        if (v53 == 3)
        {
          v54 = "LSA";
        }

        v39 = v53 == 2;
        *buf = 136315906;
        v55 = "DD";
        if (!v39)
        {
          v55 = v54;
        }

        *v126 = v55;
        *&v126[8] = 1024;
        v127 = destLen;
        v128 = 1024;
        v129 = v117;
        v130 = 1024;
        v131 = v34;
        _os_log_impl(&dword_239FB7000, log, OS_LOG_TYPE_DEFAULT, "%s uncompressed body (real %u =? %u) failed (%d).", buf, 0x1Eu);
      }

      v21 = -3008;
      a1 = v119;
    }

    else
    {
      v21 = -6728;
    }

    v44 = 0;
    if (!a1)
    {
      goto LABEL_138;
    }

    goto LABEL_137;
  }

LABEL_41:
  if (v15 == 1)
  {
    v41 = *v32;
    v32 += 2;
    loga = bswap32(v41) >> 16;
    LODWORD(v29) = v29 - 2;
  }

  else
  {
    LOWORD(loga) = 0;
  }

  v120 = a1;
  if ((*(a3 + 2) & 2) == 0)
  {
    v42 = 0;
    v118 = 0;
    if (!a6)
    {
      goto LABEL_50;
    }

LABEL_46:
    if (*(a3 + 2))
    {
      v43 = 0;
    }

    else
    {
      v43 = v32;
    }

    *a6 = v43;
LABEL_50:
    v44 = v118;
    if (a5)
    {
      v45 = *(a5 + 16);
      v46 = a5;
      v47 = v32;
      v45(v46, v118, v42);
      v32 = v47;
      a1 = v120;
    }

    if (!a2)
    {
      *(a3 + 2) = bswap32(*(a3 + 2)) >> 16;
      *(a3 + 1) = bswap32(*(a3 + 1)) >> 16;
      *(a3 + 2) = bswap32(*(a3 + 2));
      do
      {
        *v25 = bswap32(*v25);
        ++v25;
        --v14;
      }

      while (v14);
      v56 = 0;
      goto LABEL_125;
    }

    v48 = a3[1];
    if (v48 > 3)
    {
      if (a3[1] <= 7u)
      {
        if (v48 == 4)
        {
          v82 = v32;
          v56 = malloc_type_malloc(0x20uLL, 0x1032040E8FB2772uLL);
          *v56 = 0;
          v56[2] = 0;
          *(v56 + 6) = bswap32(*v82) >> 16;
          goto LABEL_124;
        }

        if (v48 != 5)
        {
          goto LABEL_109;
        }

        goto LABEL_98;
      }

      if (v48 == 8)
      {
        v83 = v32;
        v56 = malloc_type_calloc(1uLL, 0x20uLL, 0x1032040E8FB2772uLL);
        *v56 = 0;
        v56[2] = 0;
        *(v56 + 6) = bswap32(*v83) >> 16;
        *(v56 + 7) = bswap32(*(v83 + 1)) >> 16;
        goto LABEL_124;
      }

      if (v48 == 10)
      {
LABEL_98:
        v75 = v32;
        v56 = malloc_type_malloc(0x20uLL, 0x1032040E8FB2772uLL);
        *v56 = v75;
        v56[2] = v29;
        goto LABEL_124;
      }

LABEL_109:
      v80 = ospf_log(a1, a2);
      if (os_log_type_enabled(v80, OS_LOG_TYPE_DEFAULT))
      {
        v81 = a3[1];
        *buf = 67109120;
        *v126 = v81;
        _os_log_impl(&dword_239FB7000, v80, OS_LOG_TYPE_DEFAULT, "Unknown OSPF type %d.", buf, 8u);
      }

      v21 = -3003;
      goto LABEL_135;
    }

    switch(v48)
    {
      case 1u:
        v76 = malloc_type_calloc(1uLL, 0x20uLL, 0x1032040E8FB2772uLL);
        v56 = v76;
        *v76 = 0;
        *(v76 + 2) = 0;
        *(v76 + 6) = loga;
        v77 = HIDWORD(v124);
        if (SHIDWORD(v124) >= 1)
        {
          v78 = v118;
          do
          {
            if (**v78 == 11)
            {
              v76[2] = bswap64(*(*v78 + 4));
            }

            v78 += 8;
            --v77;
          }

          while (v77);
        }

        v79 = *a3 >> 4;
        if (v79 != 12)
        {
          fprintf(*MEMORY[0x277D85DF8], "OSPF version mismatch: expected %d, got %d\n", 12, v79);
          v10 = 0;
        }

        goto LABEL_124;
      case 2u:
        v84 = v32;
        v85 = *v32;
        v86 = __rev16(v85);
        v87 = malloc_type_malloc((416 * v86) | 0x18, 0x1030040D5FA72FAuLL);
        v56 = v87;
        v87->isa = 0;
        LODWORD(v87[1].isa) = 0;
        HIDWORD(v87[1].isa) = v86;
        v107 = v86;
        logc = v87 + 3;
        v87[2].isa = &v87[3];
        if (!v85)
        {
          goto LABEL_124;
        }

        v88 = 0;
        v89 = (v84 + 2);
        v103 = v87;
        v90 = &v87[39].isa + 4;
        while (1)
        {
          v116 = v90;
          v91 = &logc[52 * v88];
          LODWORD(v91->isa) = bswap32(*v89);
          HIDWORD(v91->isa) = -1;
          HIDWORD(v91[33].isa) = -1;
          LOWORD(v91[34].isa) = bswap32(*(v89 + 4)) >> 16;
          HIDWORD(v91[34].isa) = 1;
          LODWORD(v91[35].isa) = *(a3 + 2);
          v92 = *(v89 + 6);
          LOBYTE(v91[1].isa) = v92;
          v93 = v89 + 7;
          memcpy(&v91[1].isa + 1, (v89 + 7), v92);
          *(&v91[1].isa + v92 + 1) = 0;
          v94 = *(v93 + v92);
          v95 = __rev16(v94);
          if (v95 > 0x10)
          {
            break;
          }

          v89 = v93 + v92 + 2;
          HIDWORD(v91[35].isa) = v95;
          if (v94)
          {
            v96 = v116;
            v97 = v116;
            do
            {
              *(v97 - 1) = bswap32(*v89);
              *v97 = bswap32(*(v89 + 4));
              v97 += 2;
              v89 += 8;
              --v95;
            }

            while (v95);
          }

          else
          {
            v96 = v116;
          }

          ++v88;
          v90 = (v96 + 104);
          if (v88 == v107)
          {
LABEL_123:
            v44 = v118;
            a1 = v120;
            v56 = v103;
            goto LABEL_125;
          }
        }

        break;
      case 3u:
        v61 = v32;
        v114 = bswap32(*v32) >> 16;
        v62 = *(v32 + 1);
        v63 = __rev16(v62);
        v64 = malloc_type_malloc(416 * v63 + 32, 0x1030040A19808B3uLL);
        v56 = v64;
        v64->isa = 0;
        LODWORD(v64[1].isa) = 0;
        WORD2(v64[1].isa) = v114;
        LODWORD(v64[2].isa) = v63;
        v106 = v63;
        logb = v64 + 4;
        v64[3].isa = &v64[4];
        if (!v62)
        {
LABEL_124:
          a1 = v120;
LABEL_125:
          if (v13)
          {
            *v13 = a3;
          }

          v21 = 0;
          if (a2)
          {
            *a2 = v56;
            if (!a1)
            {
              goto LABEL_138;
            }

LABEL_137:
            free(a1);
            goto LABEL_138;
          }

          if (!v56)
          {
            goto LABEL_136;
          }

LABEL_131:
          free(v56);
LABEL_135:
          a1 = v120;
LABEL_136:
          if (!a1)
          {
            goto LABEL_138;
          }

          goto LABEL_137;
        }

        v65 = 0;
        v66 = (v61 + 4);
        v103 = v64;
        v67 = &v64[40].isa + 4;
        while (1)
        {
          v115 = v67;
          v68 = &logb[52 * v65];
          LODWORD(v68->isa) = bswap32(*v66);
          HIDWORD(v68->isa) = -1;
          HIDWORD(v68[33].isa) = -1;
          LOWORD(v68[34].isa) = bswap32(*(v66 + 4)) >> 16;
          HIDWORD(v68[34].isa) = 1;
          LODWORD(v68[35].isa) = *(a3 + 2);
          v69 = *(v66 + 6);
          LOBYTE(v68[1].isa) = v69;
          v70 = v66 + 7;
          memcpy(&v68[1].isa + 1, (v66 + 7), v69);
          *(&v68[1].isa + v69 + 1) = 0;
          v71 = *(v70 + v69);
          v72 = __rev16(v71);
          if (v72 > 0x10)
          {
            break;
          }

          v66 = v70 + v69 + 2;
          HIDWORD(v68[35].isa) = v72;
          if (v71)
          {
            v73 = v115;
            v74 = v115;
            do
            {
              *(v74 - 1) = bswap32(*v66);
              *v74 = bswap32(*(v66 + 4));
              v74 += 2;
              v66 += 8;
              --v72;
            }

            while (v72);
          }

          else
          {
            v73 = v115;
          }

          ++v65;
          v67 = (v73 + 104);
          if (v65 == v106)
          {
            goto LABEL_123;
          }
        }

        break;
      default:
        goto LABEL_109;
    }

    v21 = -3010;
    v44 = v118;
    v56 = v103;
    goto LABEL_131;
  }

  destLen = 0;
  v122 = 0;
  v105 = v32;
  v49 = ospfVerifyOptions(a3, v32, v29, &v124 + 1, &v124);
  if (v49)
  {
    v50 = v49;
    v51 = ospf_log(v49, a2);
    if (os_log_type_enabled(v51, OS_LOG_TYPE_DEFAULT))
    {
      v52 = a3[1];
      *buf = 67109376;
      *v126 = v52;
      *&v126[4] = 1024;
      *&v126[6] = v50;
      _os_log_impl(&dword_239FB7000, v51, OS_LOG_TYPE_DEFAULT, "Msg: %d: options verification failed (%d).", buf, 0xEu);
    }

    v44 = 0;
    v21 = -3009;
    goto LABEL_135;
  }

  v57 = v105;
  destLen = (v105 + 4);
  v122 = v29 - 4;
  v42 = HIDWORD(v124);
  if (!HIDWORD(v124))
  {
    v118 = 0;
    a1 = v120;
LABEL_100:
    v32 = &v57[v124];
    LODWORD(v29) = v29 - v124;
    if (!a6)
    {
      goto LABEL_50;
    }

    goto LABEL_46;
  }

  v113 = v29;
  v58 = HIDWORD(v124);
  v118 = malloc_type_malloc(8 * SHIDWORD(v124), 0x2004093837F09uLL);
  if (!v118)
  {
    v98 = ospf_log(0, a2);
    if (os_log_type_enabled(v98, OS_LOG_TYPE_ERROR))
    {
      OSPFParse_cold_1(v98);
    }

    v44 = 0;
    v21 = -6728;
    goto LABEL_135;
  }

  v121 = 0;
  v42 = v58;
  if (v58 < 1)
  {
LABEL_82:
    a1 = v120;
    v57 = v105;
    LODWORD(v29) = v113;
    goto LABEL_100;
  }

  v59 = 0;
  v102 = v42;
  while (1)
  {
    *&v118[8 * v59] = destLen;
    v60 = ospfParseOption(a3, &destLen, &v122, &v121);
    if (!v60)
    {
      break;
    }

    if (v121)
    {
      goto LABEL_150;
    }

    ++v59;
    v42 = v102;
    if (v102 == v59)
    {
      goto LABEL_82;
    }
  }

  v101 = ospf_log(v60, a2);
  if (os_log_type_enabled(v101, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 67109376;
    *v126 = v59;
    *&v126[4] = 1024;
    *&v126[6] = v102;
    _os_log_impl(&dword_239FB7000, v101, OS_LOG_TYPE_DEFAULT, "Expecting option %d of %d.", buf, 0xEu);
  }

LABEL_150:
  v21 = -3009;
  v44 = v118;
  a1 = v120;
  if (v120)
  {
    goto LABEL_137;
  }

LABEL_138:
  if (v44)
  {
    free(v44);
  }

  if (v21)
  {
    goto LABEL_141;
  }

LABEL_144:
  if (a7)
  {
    *a7 = v21;
  }

  return v10;
}

uint64_t OSPFAddDynamicOptions(uint64_t a1, int a2, uint64_t a3)
{
  v11 = *MEMORY[0x277D85DE8];
  v4 = 0u;
  v7 = 0u;
  v9 = 0u;
  v10 = 0u;
  v8[0] = a1;
  v8[1] = a2;
  v6 = 1;
  v5 = v8;
  if (a3)
  {
    (*(a3 + 16))(a3, &v4);
  }

  return 0;
}

char *makebase36string(unint64_t a1)
{
  v5 = *MEMORY[0x277D85DE8];
  __s1[13] = 0;
  v1 = 12;
  do
  {
    __s1[v1] = MCPeerIDBase36Digits[a1 % 0x24];
    v2 = v1-- + 1;
    a1 /= 0x24uLL;
  }

  while (v2 > 1);
  return strdup(__s1);
}

void MCMetricsLog_cold_5(uint64_t a1, NSObject *a2)
{
  v4 = *MEMORY[0x277D85DE8];
  v2 = 138412290;
  v3 = a1;
  _os_log_error_impl(&dword_239FB7000, a2, OS_LOG_TYPE_ERROR, "Invalid name %@", &v2, 0xCu);
}

void AGPEventListenerForMCSession_cold_1()
{
  OUTLINED_FUNCTION_7();
  OUTLINED_FUNCTION_3();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

void gckSessionUpdateDstIPPortAndSockAddrForCList(uint64_t a1, __int128 *a2)
{
  v18 = *MEMORY[0x277D85DE8];
  if (a2)
  {
    v3 = a1;
    v4 = a1 + 424;
    if ((*a2 & 1) == (*(a1 + 424) & 1))
    {
      if ((*a2 & 1) == 0)
      {
        if (*(a2 + 5) != *(a1 + 444))
        {
          goto LABEL_8;
        }

LABEL_7:
        if (*(a2 + 18) == *(v3 + 460))
        {
          return;
        }

        goto LABEL_8;
      }

      a1 = memcmp(a2 + 20, (a1 + 444), 0x10uLL);
      if (!a1)
      {
        goto LABEL_7;
      }
    }

LABEL_8:
    v5 = gcks_log(a1, a2);
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      v6 = *(v3 + 88);
      v7 = *(v3 + 72);
      v11[0] = 67109890;
      v11[1] = v6;
      v12 = 1024;
      v13 = v7;
      v14 = 2080;
      v15 = IPPORTToString();
      v16 = 2080;
      v17 = IPPORTToString();
      _os_log_impl(&dword_239FB7000, v5, OS_LOG_TYPE_DEFAULT, "Update destination IPPort for participant %08X, channel %d from %s to %s.", v11, 0x22u);
    }

    v8 = *a2;
    v9 = a2[1];
    *(v4 + 32) = *(a2 + 4);
    *v4 = v8;
    *(v4 + 16) = v9;
    if (*(v3 + 384))
    {
      OUTLINED_FUNCTION_5_0();
      IPPORTToSA6();
    }

    else
    {
      OUTLINED_FUNCTION_5_0();
      IPPORTToSA();
    }

    *(v3 + 592) = v11[0];
    return;
  }

  v10 = gcks_log(a1, 0);
  if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
  {
    LOWORD(v11[0]) = 0;
    _os_log_impl(&dword_239FB7000, v10, OS_LOG_TYPE_DEFAULT, "Invalid parameter.", v11, 2u);
  }
}

uint64_t DTLS_SocketWrite(uint64_t a1, uint64_t a2, uint64_t *a3)
{
  v22[6] = *MEMORY[0x277D85DE8];
  v6 = *a3;
  gckSessionUpdateDstIPPortAndSockAddrForCList(a1, (a1 + 424));
  memset(&v15.msg_namelen, 0, 40);
  v22[4] = 0;
  v22[5] = 0;
  v15.msg_name = (a1 + 464);
  v15.msg_namelen = *(a1 + 592);
  v14 = -48;
  v22[0] = &v14;
  v22[1] = 1;
  v22[2] = a2;
  v22[3] = v6;
  v15.msg_iovlen = 2;
  v15.msg_iov = v22;
  if (sendmsg(*a1, &v15, 0) == -1)
  {
    v10 = gcks_log(-1, v7);
    if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
    {
      v11 = __error();
      v12 = strerror(*v11);
      v13 = *__error();
      *buf = 67109634;
      v17 = (v6 + 1);
      v18 = 2080;
      v19 = v12;
      v20 = 1024;
      v21 = v13;
      _os_log_error_impl(&dword_239FB7000, v10, OS_LOG_TYPE_ERROR, "Failed to send a DTLS packet with %d bytes; sendmsg error: %s (%d).", buf, 0x18u);
    }

    __error();
    *a3 = 0;
    return 4294957493;
  }

  else
  {
    v8 = micro();
    result = 0;
    *(a1 + 48) = v8;
  }

  return result;
}

void TracePrintNodes_cold_1()
{
  v2 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_4();
  _os_log_debug_impl(&dword_239FB7000, v0, OS_LOG_TYPE_DEBUG, "TracePrintNodes throttled (last second count %d)\n", v1, 8u);
}

double micro_cold_1()
{
  info = 0;
  mach_timebase_info(&info);
  LODWORD(v1) = info.denom;
  LODWORD(v0) = info.numer;
  result = v0 / v1 / 1000000000.0;
  qword_27DF91D30 = *&result;
  __dmb(0xBu);
  _MergedGlobals = 1;
  return result;
}

void GCKSessionPrepareConnection_cold_1(_DWORD *a1, _DWORD *a2)
{
  *a1 = 67109120;
  *a2 = -2145779708;
  OUTLINED_FUNCTION_3_0();
  _os_log_error_impl(v2, v3, v4, v5, v6, 8u);
}

void GCKSessionPrepareConnection_cold_2(_BYTE *a1, _BYTE *a2)
{
  *a1 = 0;
  *a2 = 0;
  OUTLINED_FUNCTION_3_0();
  _os_log_error_impl(v2, v3, v4, v5, v6, 2u);
}

void GCKSessionPrepareConnection_cold_3(_DWORD *a1, _DWORD *a2)
{
  *a1 = 67109120;
  *a2 = 840;
  OUTLINED_FUNCTION_3_0();
  _os_log_error_impl(v2, v3, v4, v5, v6, 8u);
}

void GCKSessionEstablishConnection_cold_1()
{
  OUTLINED_FUNCTION_4();
  OUTLINED_FUNCTION_3_0();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xEu);
}

void __SendUDPPacketCList_block_invoke_cold_1(uint64_t *a1, int a2, NSObject *a3)
{
  v29 = *MEMORY[0x277D85DE8];
  v5 = *a1;
  v6 = *(*a1 + 88);
  v7 = *(*a1 + 72);
  v8 = *(*a1 + 632);
  v9 = DTLSErrorName(a2);
  v10 = a2;
  v11 = __error();
  v12 = strerror(*v11);
  v13 = *__error();
  v14[0] = 67110914;
  v14[1] = v6;
  v15 = 1024;
  v16 = v7;
  v17 = 2048;
  v18 = v8;
  v19 = 2048;
  v20 = v5;
  v21 = 2080;
  v22 = v9;
  v23 = 2048;
  v24 = v10;
  v25 = 2080;
  v26 = v12;
  v27 = 1024;
  v28 = v13;
  _os_log_error_impl(&dword_239FB7000, a3, OS_LOG_TYPE_ERROR, "SSLWrite failed, packet was not sent for participant [%08X] channelID [%d] DTLS context [%p] pCList [%p]; SSLError = %s (%ld): errno = %s (%d).", v14, 0x46u);
}

void SendUDPPacketToParticipantChannelID_cold_1(uint64_t a1, int a2, os_log_t log)
{
  v7 = *MEMORY[0x277D85DE8];
  v3 = *(a1 + 72);
  v4[0] = 67109376;
  v4[1] = a2;
  v5 = 1024;
  v6 = v3;
  _os_log_debug_impl(&dword_239FB7000, log, OS_LOG_TYPE_DEBUG, "Channel ID %d resolved to %d.", v4, 0xEu);
}

void gckSessionGetInterfacePriorityForCList_cold_1()
{
  OUTLINED_FUNCTION_4();
  OUTLINED_FUNCTION_3();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xEu);
}

void AGPTransportCallback(int a1, NSObject *a2)
{
  v3 = *MEMORY[0x277D85DE8];
  v2[0] = 67109120;
  v2[1] = a1;
  _os_log_error_impl(&dword_239FB7000, a2, OS_LOG_TYPE_ERROR, "Couldn't check in handle iDstIDs (%d).", v2, 8u);
}

void OSPFMakeLSAACK_cold_1(int a1, NSObject *a2)
{
  v3 = *MEMORY[0x277D85DE8];
  v2[0] = 67109120;
  v2[1] = a1;
  _os_log_error_impl(&dword_239FB7000, a2, OS_LOG_TYPE_ERROR, "Calloc failed for participant [%08X].", v2, 8u);
}

CFUUIDBytes CFUUIDGetUUIDBytes(CFUUIDRef uuid)
{
  v1 = MEMORY[0x2821100F0](uuid);
  result.byte8 = v2;
  result.byte9 = BYTE1(v2);
  result.byte10 = BYTE2(v2);
  result.byte11 = BYTE3(v2);
  result.byte12 = BYTE4(v2);
  result.byte13 = BYTE5(v2);
  result.byte14 = BYTE6(v2);
  result.byte15 = HIBYTE(v2);
  result.byte0 = v1;
  result.byte1 = BYTE1(v1);
  result.byte2 = BYTE2(v1);
  result.byte3 = BYTE3(v1);
  result.byte4 = BYTE4(v1);
  result.byte5 = BYTE5(v1);
  result.byte6 = BYTE6(v1);
  result.byte7 = HIBYTE(v1);
  return result;
}

void operator delete()
{
    ;
  }
}

void operator new()
{
    ;
  }
}