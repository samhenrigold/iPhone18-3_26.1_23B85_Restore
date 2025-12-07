uint64_t sub_297EBDADC(uint64_t a1)
{
  sub_297E4E1B4(3, a1, 3, 5u, "phNciNfc_StateRecv2Dummy");
  sub_297E4DFAC(3, a1, 3, 5u, "phNciNfc_StateRecv2Dummy");
  return 0;
}

uint64_t sub_297EBDB38(uint64_t *a1)
{
  sub_297E4E1B4(3, a1, 3, 5u, "phNciNfc_StateDummy2Recv");
  sub_297E4E0B0(3, a1, 3, 4u, "Dummy to Receive Transition");
  v2 = sub_297E528A0(a1);
  sub_297E4DFAC(3, a1, 3, 5u, "phNciNfc_StateDummy2Recv");
  return v2;
}

uint64_t sub_297EBDBC4(uint64_t *a1)
{
  sub_297E4E1B4(3, a1, 3, 5u, "phNciNfc_CoreInitialise");
  if (!a1)
  {
    v2 = "Invalid input parameter";
    v3 = 1;
    v5 = 3;
    v4 = 0;
    goto LABEL_5;
  }

  phOsalNfc_SetMemory();
  phOsalNfc_SetMemory();
  *(a1 + 2352) = 0;
  if (sub_297E75C94(a1))
  {
    v2 = "phNciNfc_CoreInitialise:phNciNfc_CoreRecvMgrInit failed!";
    v3 = 1;
    v4 = a1 + 2460;
    v5 = 1;
LABEL_5:
    sub_297E4E0B0(v5, v4, 3, 1u, v2);
    goto LABEL_11;
  }

  v6 = sub_297ED6D60(*a1);
  if (v6)
  {
    v3 = v6;
    sub_297E4E0B0(1, a1 + 2460, 3, 1u, "Logical connection Init failed!");
    v7 = "phNciNfc_CoreInitialise:Releasing resources acquired by Receive Manager...";
LABEL_10:
    sub_297E4E0B0(1, a1 + 2460, 3, 4u, v7);
    sub_297E75D54(a1);
    goto LABEL_11;
  }

  v8 = sub_297EBD044(a1);
  if (v8)
  {
    v3 = v8;
    sub_297E4E0B0(1, a1 + 2460, 3, 1u, "NCI Core Receiver State Machine Init Failed");
    v7 = "Releasing RecvMgr...";
    goto LABEL_10;
  }

  if (!sub_297E5B294(*a1, 6u))
  {
    v10 = sub_297EBDE58(a1);
    if (v10 == 13)
    {
      sub_297E4E0B0(1, a1 + 2460, 3, 4u, "NCI Core Initialization success!");
    }

    else
    {
      v3 = v10;
      sub_297E4E0B0(1, a1 + 2460, 3, 4u, "Releasing RecvMgr...");
      sub_297E75D54(a1);
      sub_297E4E0B0(1, a1 + 2460, 3, 4u, "phNciNfc_CoreInitialise:Receive State machine release...");
      sub_297EBD1D0(a1);
      sub_297E4E0B0(1, a1 + 2460, 3, 4u, "Sender State machine release...");
      sub_297E5B294(*a1, 6u);
      if (v3)
      {
        goto LABEL_11;
      }
    }

    v3 = sub_297F00D78(a1, 32);
    goto LABEL_11;
  }

  v3 = 1;
  sub_297E4E0B0(1, a1 + 2460, 3, 1u, "NCI Core Sender State Machine Init Failed");
  sub_297E4E0B0(1, a1 + 2460, 3, 4u, "Releasing RecvMgr...");
  sub_297E75D54(a1);
  sub_297E4E0B0(1, a1 + 2460, 3, 4u, "phNciNfc_CoreInitialise:Receive State machine release...");
  sub_297EBD1D0(a1);
LABEL_11:
  sub_297E4DFAC(3, a1, 3, 5u, "phNciNfc_CoreInitialise");
  return v3;
}

uint64_t sub_297EBDE58(uint64_t a1)
{
  sub_297E4E1B4(3, a1, 3, 5u, "phNciNfc_CoreReceiveManager_Init");
  if (a1)
  {
    v2 = sub_297E4EE00(a1, 0, 3);
    if (v2 != 13)
    {
      sub_297E4E0B0(1, a1 + 2460, 3, 1u, "Tml Read request failed!");
      sub_297E54838(a1);
    }
  }

  else
  {
    v2 = 1;
    sub_297E4E0B0(2, 0, 3, 1u, "Invalid Core context!");
  }

  sub_297E4DFAC(3, a1, 3, 5u, "phNciNfc_CoreReceiveManager_Init");
  return v2;
}

uint64_t sub_297EBDF1C(uint64_t a1)
{
  sub_297E4E1B4(2, a1, 3, 5u, "phNciNfc_ReleaseNfceeCntx");
  v2 = *(a1 + 3984);
  if (*(a1 + 3984))
  {
    v3 = 0;
    v4 = (a1 + 4024);
    do
    {
      if (*v4)
      {
        phOsalNfc_FreeMemory();
        *v4 = 0;
        v2 = *(a1 + 3984);
      }

      ++v3;
      v4 += 13;
    }

    while (v3 < v2);
  }

  return sub_297E4DFAC(2, a1, 3, 5u, "phNciNfc_ReleaseNfceeCntx");
}

uint64_t sub_297EBDFC0(uint64_t a1)
{
  v1 = a1;
  sub_297E4E1B4(2, a1, 3, 5u, "phNciNfc_ReleaseNciHandle");
  if (!v1)
  {
    sub_297ED7658(0);
LABEL_43:
    sub_297E4E0B0(2, v1, 3, 4u, "Releasing NCI context has already been done");
    v20 = 49;
    goto LABEL_72;
  }

  v2 = 0;
  v3 = 0;
  do
  {
    v4 = *(&unk_2A18BDDC0 + 14 * v3 + 4);
    if (v2)
    {
      break;
    }

    v2 = 1;
    v3 = 1;
  }

  while (v4 != v1);
  v5 = sub_297ED7658(v1);
  if (v4 != v1)
  {
    goto LABEL_43;
  }

  v6 = v5;
  v7 = *(v1 + 1488);
  if (v7 && v7 != 0xFFFFFFFFFFFFLL)
  {
    phOsalNfc_Timer_Stop();
    phOsalNfc_Timer_Delete();
    *(v1 + 1488) = 0xFFFFFFFFFFFFLL;
  }

  v8 = *(v1 + 3384);
  if (v8 && v8 != 0xFFFFFFFFFFFFLL)
  {
    phOsalNfc_Timer_Stop();
    phOsalNfc_Timer_Delete();
    *(v1 + 3384) = 0xFFFFFFFFFFFFLL;
  }

  v9 = *(v1 + 1920);
  if (v9 && v9 != 0xFFFFFFFFFFFFLL)
  {
    phOsalNfc_Timer_Stop();
    phOsalNfc_Timer_Delete();
    *(v1 + 6512) = 0;
    *(v1 + 1920) = 0xFFFFFFFFFFFFLL;
    *(v1 + 1928) = 0;
  }

  v10 = *(v1 + 4704);
  if (v10 && v10 != 0xFFFFFFFFFFFFLL)
  {
    phOsalNfc_Timer_Stop();
    sub_297E687D8(1, v1 + 6524, *(v1 + 4704), 3, 4u, "phNciNfc_ReleaseNciHandle");
    phOsalNfc_Timer_Delete();
    *(v1 + 4704) = 0xFFFFFFFFFFFFLL;
  }

  if (v6)
  {
    v11 = *(v6 + 56);
    if (v11)
    {
      if (v11 != 0xFFFFFFFFFFFFLL)
      {
        phOsalNfc_Timer_Stop();
        phOsalNfc_Timer_Delete();
        *(v1 + 6513) = 0;
        *(v6 + 64) = 0;
        *(v6 + 56) = 0;
        v12 = &gphNfc_DebugInfo_Sec;
        if (!*(v1 + 6524))
        {
          v12 = &gphNfc_DebugInfo_Prim;
        }

        v12[1] &= ~8u;
      }
    }
  }

  v13 = *(v1 + 4696);
  if (v13 && v13 != 0xFFFFFFFFFFFFLL)
  {
    phOsalNfc_Timer_Delete();
    *(v1 + 4696) = 0xFFFFFFFFFFFFLL;
  }

  v14 = *(v1 + 6504);
  if (v14 && v14 != 0xFFFFFFFFFFFFLL)
  {
    phOsalNfc_Timer_Stop();
    *(v1 + 6512) = 0;
    sub_297E687D8(1, v1 + 6524, *(v1 + 6504), 3, 4u, "phNciNfc_ReleaseNciHandle");
    phOsalNfc_Timer_Delete();
    *(v1 + 6504) = 0xFFFFFFFFFFFFLL;
  }

  v15 = *(v1 + 6664);
  if (v15 && v15 != 0xFFFFFFFFFFFFLL)
  {
    phOsalNfc_Timer_Stop();
    *(v1 + 6512) = 0;
    sub_297E687D8(1, v1 + 6524, *(v1 + 6664), 3, 4u, "phNciNfc_ReleaseNciHandle");
    phOsalNfc_Timer_Delete();
    *(v1 + 6664) = 0xFFFFFFFFFFFFLL;
  }

  v16 = *(v1 + 4872);
  if (v16 && v16 != 0xFFFFFFFFFFFFLL)
  {
    phOsalNfc_Timer_Stop();
    *(v1 + 6512) = 0;
    sub_297E687D8(1, v1 + 6524, *(v1 + 4872), 3, 4u, "phNciNfc_ReleaseNciHandle");
    phOsalNfc_Timer_Delete();
    *(v1 + 4872) = 0xFFFFFFFFFFFFLL;
  }

  *(v1 + 6464) = 0;
  *(v1 + 6456) = 0;
  sub_297E7263C(v1);
  *(v1 + 172) = 0;
  sub_297E5B554(v1);
  sub_297EBDF1C(v1);
  v25 = 0;
  sub_297E4E1B4(2, v1, 3, 5u, "phNciNfc_ReleaseMemory");
  v17 = 0;
  v18 = 0;
  do
  {
    v19 = *(&unk_2A18BDDC0 + 14 * v18 + 4);
    if (v17)
    {
      break;
    }

    v17 = 1;
    v18 = 1;
  }

  while (v19 != v1);
  if (v19 == v1)
  {
    v21 = *(v1 + 6528);
    v25 = v21;
    v22 = (v1 + 936);
    sub_297E4E1B4(3, v1 + 936, 3, 5u, "phNciNfc_CoreRelease");
    if (sub_297E75D54(v1 + 936))
    {
      sub_297E4E0B0(1, v1 + 3396, 3, 1u, "phNciNfc_CoreRelease:Notification Handler release failed");
      sub_297E4DFAC(3, v1 + 936, 3, 5u, "phNciNfc_CoreRelease");
      sub_297E4E0B0(1, v1 + 6524, 3, 1u, "Nci Core release failed!");
      v20 = 255;
    }

    else
    {
      sub_297E4E0B0(1, v1 + 3396, 3, 4u, "Notification manager release success");
      phTmlNfc_ReadAbort();
      phTmlNfc_FlushTxRxBuffers();
      if (sub_297E56AFC(*(v1 + 1568)) == 1)
      {
        phTmlNfc_WriteAbort();
        sub_297E5A3A8(*(v1 + 1568), 0);
      }

      sub_297E4E1B4(3, v1 + 936, 3, 5u, "phNciNfc_CoreReleaseSendRecvStateMachines");
      if (*v22)
      {
        if (sub_297E5B294(*v22, 6u))
        {
          sub_297E4E0B0(1, v1 + 3396, 3, 1u, "Release Sender State Machine failed!");
        }

        if (sub_297EBD1D0(v1 + 936))
        {
          sub_297E4E0B0(1, v1 + 3396, 3, 1u, "phNciNfc_CoreReleaseSendRecvStateMachines:Release Receiver State Machine failed!");
        }
      }

      sub_297E4DFAC(3, v1 + 936, 3, 5u, "phNciNfc_CoreReleaseSendRecvStateMachines");
      sub_297E54838(v1 + 936);
      v23 = *(v1 + 1488);
      if (v23 && v23 != 0xFFFFFFFFFFFFLL)
      {
        phOsalNfc_Timer_Delete();
        *(v1 + 1488) = 0xFFFFFFFFFFFFLL;
      }

      sub_297E4DFAC(3, v1 + 936, 3, 5u, "phNciNfc_CoreRelease");
      if (*(v1 + 3304))
      {
        phOsalNfc_FreeMemory();
        *(v1 + 3304) = 0;
      }

      if (*(v1 + 3336))
      {
        phOsalNfc_FreeMemory();
        *(v1 + 3336) = 0;
      }

      if (*(v1 + 896))
      {
        phOsalNfc_FreeMemory();
        *(v1 + 896) = 0;
      }

      if (*(v1 + 160))
      {
        phOsalNfc_FreeMemory();
        *(v1 + 160) = 0;
      }

      if (*(v1 + 4800))
      {
        phOsalNfc_FreeMemory();
        *(v1 + 4800) = 0;
      }

      if (*(v1 + 4640))
      {
        phOsalNfc_FreeMemory();
        *(v1 + 4640) = 0;
      }

      if (*(v1 + 4656))
      {
        phOsalNfc_FreeMemory();
        *(v1 + 4656) = 0;
      }

      sub_297E4E0B0(1, v1 + 6524, 3, 4u, "Nci Release invoked - Release Nci Context handle");
      phOsalNfc_FreeMemory();
      sub_297E9F5D8(v21, 0);
      sub_297E9F688(v21, 0);
      v20 = 0;
    }
  }

  else
  {
    v20 = 1;
    sub_297E4E0B0(2, v1, 3, 1u, "Invalid input parameter");
  }

  sub_297E4DFAC(0, &v25, 3, 5u, "phNciNfc_ReleaseMemory");
  v1 = 0;
LABEL_72:
  sub_297E4DFAC(2, v1, 3, 5u, "phNciNfc_ReleaseNciHandle");
  return v20;
}

BOOL sub_297EBE67C(uint64_t a1, uint64_t a2, int a3)
{
  sub_297E4E1B4(3, a1, 3, 5u, "phNciNfc_CoreValidateNfceeMgtCmd");
  if (a3 != 1)
  {
    if (!a3 && *(a2 + 24) == 1)
    {
      goto LABEL_4;
    }

LABEL_6:
    v6 = 1;
    goto LABEL_7;
  }

  if (*(a2 + 24) != 2)
  {
    goto LABEL_6;
  }

LABEL_4:
  v6 = *(a2 + 16) == 0;
LABEL_7:
  sub_297E4DFAC(3, a1, 3, 5u, "phNciNfc_CoreValidateNfceeMgtCmd");
  return v6;
}

uint64_t sub_297EBE720(uint64_t a1, uint64_t *a2)
{
  v12 = 0;
  sub_297E4E1B4(3, a2, 3, 5u, "phNciNfc_DeAssertWakeUpTimerCb");
  if (!a2)
  {
    goto LABEL_6;
  }

  v4 = 0;
  v5 = 0;
  do
  {
    v6 = *(&unk_2A18BDDC0 + 14 * v5 + 5);
    if (v4)
    {
      break;
    }

    v4 = 1;
    v5 = 1;
  }

  while (v6 != a2);
  if (v6 != a2)
  {
LABEL_6:
    v7 = "phNciNfc_DeAssertWakeUpTimerCb-Invalid LIBNFC context";
LABEL_7:
    sub_297E4E0B0(3, a2, 3, 1u, v7);
    return sub_297E4DFAC(3, a2, 3, 5u, "phNciNfc_DeAssertWakeUpTimerCb");
  }

  if (sub_297E5A99C(a2[79], &v12))
  {
    v7 = "phNciNfc_DeAssertWakeUpTimerCb-Failed to retrieve gbIgnoreWkUpRet";
    goto LABEL_7;
  }

  v9 = *a2;
  if (*a2)
  {
    v10 = *(v9 + 6616) == 1 ? 0 : sub_297E5AA54(a2[79], 20);
    v11 = v12 == 1 ? 0 : v10;
    if (v11)
    {
      if (v11 == 179)
      {
        sub_297E96818(a2[79], 193);
        sub_297E4E0B0(1, v9 + 6524, 3, 1u, "phNciNfc_DeAssertWakeUpTimerCb-Fialed to De-Assert Wake Up Line");
      }

      else
      {
        sub_297E96818(a2[79], 192);
      }
    }
  }

  if (a1 && a1 != 0xFFFFFFFFFFFFLL)
  {
    phOsalNfc_Timer_Stop();
    phOsalNfc_Timer_Delete();
    a2[306] = 0xFFFFFFFFFFFFLL;
  }

  return sub_297E4DFAC(3, a2, 3, 5u, "phNciNfc_DeAssertWakeUpTimerCb");
}

uint64_t sub_297EBE8B0(uint64_t a1)
{
  v7 = 0;
  v8 = a1;
  v6 = 0;
  sub_297E4E1B4(0, &v8, 3, 5u, "phNciNfc_SpmiRetryWakeup");
  v1 = sub_297E5A99C(v8, &v6);
  if (v1)
  {
    v2 = v1;
    sub_297E4E0B0(0, &v8, 3, 1u, "phNciNfc_SpmiRetryWakeup-Failed to retrieve gbIgnoreWkUpRet");
  }

  else
  {
    v4 = sub_297E5AA54(v8, 21);
    if (v6 == 1)
    {
      v2 = 0;
    }

    else
    {
      v2 = v4;
    }

    if (v2)
    {
      if (v2 == 179)
      {
        sub_297E50EBC(0, &v8, 3, 4u, "phNciNfc_SpmiRetryWakeup: SPMI wakeup Retry Status =");
        sub_297E9F51C(v8, &v7);
        phOsalNfc_Delay();
        v2 = sub_297E5AA54(v8, 21);
        if (v2 == 179)
        {
          phOsalNfc_Delay();
          v2 = sub_297E5AA54(v8, 21);
          if (v2)
          {
            sub_297E96818(v8, 193);
          }
        }
      }

      else
      {
        v5 = v4;
        sub_297E96914(0, &v8, 3, 3u, "phNciNfc_SpmiRetryWakeup: SPMI wakeup Retry Status =");
        sub_297E96818(v8, 192);
        v2 = v5;
      }
    }
  }

  sub_297E4DFAC(0, &v8, 3, 5u, "phNciNfc_SpmiRetryWakeup");
  return v2;
}

uint64_t sub_297EBEA38(uint64_t *a1, int a2)
{
  v26 = 0;
  sub_297E4E1B4(3, a1, 3, 5u, "phNciNfc_CoreReSend");
  if (!a1)
  {
    goto LABEL_6;
  }

  v4 = 0;
  v5 = 0;
  do
  {
    v6 = *(&unk_2A18BDDC0 + 14 * v5 + 5);
    if (v4)
    {
      break;
    }

    v4 = 1;
    v5 = 1;
  }

  while (v6 != a1);
  if (v6 != a1)
  {
LABEL_6:
    sub_297E4E0B0(3, a1, 3, 4u, "Invalid input parameter");
    v7 = 1;
    goto LABEL_7;
  }

  v9 = *a1;
  v10 = sub_297ED7658(*a1);
  v7 = sub_297E9144C(*a1);
  if (!v7 && v10)
  {
    if (*(a1 + 136) <= 4u)
    {
      *(v9 + 6496) = 0;
      *(a1 + 140) = a2;
      sub_297E4E0B0(1, v9 + 6524, 3, 4u, "Syntax/Interface error received, Re-transmitting pkt..");
      if (*(v10 + 49) == 1)
      {
        *(v9 + 6273) = 1;
        if (*(v10 + 64) == 1)
        {
          sub_297E4E0B0(1, v9 + 6524, 3, 1u, "Resend - Stopping Credit await timer..");
          v11 = *(v10 + 56);
          if (v11 && v11 != 0xFFFFFFFFFFFFLL)
          {
            phOsalNfc_Timer_Stop();
            phOsalNfc_Timer_Delete();
          }

          *(v9 + 6513) = 0;
          *(v10 + 64) = 0;
          *(v10 + 56) = 0;
          *(v10 + 9) = -1;
          *(v10 + 32) = 0;
          *(v10 + 40) = 0;
          v12 = &gphNfc_DebugInfo_Sec;
          if (!*(v9 + 6524))
          {
            v12 = &gphNfc_DebugInfo_Prim;
          }

          v12[1] &= ~8u;
        }

        *(v10 + 49) = 0;
      }

      if (a1[69] == 0xFFFFFFFFFFFFLL)
      {
        sub_297E4E0B0(1, a1 + 2460, 3, 4u, "Creating resend timer");
      }

      else
      {
        sub_297E4E0B0(1, a1 + 2460, 3, 4u, "Resend timer active, restarting resend timer");
        if (!phOsalNfc_Timer_Stop())
        {
          v13 = a1[69];
LABEL_31:
          if (v13 != 0xFFFFFFFFFFFFLL)
          {
            if (!phOsalNfc_Timer_Start())
            {
              sub_297E4E0B0(1, a1 + 2460, 3, 4u, "Resend timer started");
              v7 = 13;
              goto LABEL_7;
            }

            sub_297E4E0B0(1, v9 + 6524, 3, 1u, "Failed to start resend timer");
            phOsalNfc_Timer_Delete();
            a1[69] = 0xFFFFFFFFFFFFLL;
LABEL_60:
            v7 = 255;
            goto LABEL_7;
          }

LABEL_32:
          sub_297E4E0B0(1, v9 + 6524, 3, 1u, "Failed to created resend timer");
          goto LABEL_60;
        }

        sub_297E4E0B0(1, v9 + 6524, 3, 1u, "Failed to stop resend timer, proceed deleting and creating it");
        if (phOsalNfc_Timer_Delete())
        {
          sub_297E4E0B0(1, v9 + 6524, 3, 1u, "Unable to delete resend timer");
          a1[69] = 0xFFFFFFFFFFFFLL;
          goto LABEL_32;
        }
      }

      v13 = phOsalNfc_Timer_Create();
      a1[69] = v13;
      goto LABEL_31;
    }

    if (*(v9 + 6616) == 1)
    {
LABEL_45:
      sub_297E5B294(*a1, 6u);
      v17 = 1;
      sub_297E4E0B0(1, v9 + 6524, 3, 1u, "Resend Count Reached");
      v18 = *(v10 + 56);
      if (v18 && v18 != 0xFFFFFFFFFFFFLL)
      {
        phOsalNfc_Timer_Stop();
        phOsalNfc_Timer_Delete();
      }

      v19 = 0;
      *(v9 + 6513) = 0;
      *(v10 + 64) = 0;
      *(v10 + 56) = 0;
      *(v10 + 49) = 0;
      v20 = &gphNfc_DebugInfo_Sec;
      if (*(v9 + 6524))
      {
        v21 = &gphNfc_DebugInfo_Sec;
      }

      else
      {
        v21 = &gphNfc_DebugInfo_Prim;
      }

      v21[1] &= ~8u;
      *(v9 + 6496) = 1;
      if (!*(a1 + 615))
      {
        v20 = &gphNfc_DebugInfo_Prim;
      }

      v20[1] = v20[1] & 0xFFFFFFFB | (4 * (a1[68] & 1));
      v7 = 255;
      while (1)
      {
        v22 = &unk_2A18BDDC0 + 112 * v19;
        if (*v22 == a1[79])
        {
          break;
        }

        v23 = v17;
        v17 = 0;
        v19 = 1;
        if ((v23 & 1) == 0)
        {
          goto LABEL_7;
        }
      }

      v24 = *(v22 + 2);
      if (v24 <= 1)
      {
        v25 = *(&unk_2A18BDDC0 + 14 * v24 + 10);
        if (v25)
        {
          *(v25 + 152) = 80;
        }
      }

      goto LABEL_60;
    }

    if (sub_297E5AA54(a1[79], 20))
    {
      if (sub_297E5A99C(a1[79], &v26))
      {
        v14 = "phNciNfc_CoreReSend-Failed to retrieve bIgnoreWkUpRet";
LABEL_38:
        sub_297E4E0B0(1, v9 + 6524, 3, 1u, v14);
        goto LABEL_39;
      }

      if (v26 != 1)
      {
        v14 = "phNciNfc_CoreReSend-Fialed to De-Assert Wake Up Line";
        goto LABEL_38;
      }
    }

LABEL_39:
    v15 = a1[306];
    if (v15 && v15 != 0xFFFFFFFFFFFFLL)
    {
      if (phOsalNfc_Timer_Stop())
      {
        sub_297E4E0B0(1, v9 + 6524, 3, 1u, "phNciNfc_CoreReSend Failed to Stop Timer");
      }

      v16 = phOsalNfc_Timer_Delete();
      a1[306] = 0xFFFFFFFFFFFFLL;
      if (v16)
      {
        sub_297E4E0B0(1, v9 + 6524, 3, 1u, "Failed to Delete De-Assert Wake Up Line Timer");
      }
    }

    goto LABEL_45;
  }

LABEL_7:
  sub_297E4DFAC(3, a1, 3, 5u, "phNciNfc_CoreReSend");
  return v7;
}

uint64_t sub_297EBEF6C(uint64_t a1, uint64_t a2)
{
  v34 = 0;
  sub_297E4E1B4(3, a2, 3, 5u, "phNciNfc_ResendTimerCb");
  if (!a2)
  {
    return sub_297E4DFAC(3, a2, 3, 5u, "phNciNfc_ResendTimerCb");
  }

  v3 = 0;
  v4 = 0;
  do
  {
    v5 = *(&unk_2A18BDDC0 + 14 * v4 + 5);
    if (v3)
    {
      break;
    }

    v3 = 1;
    v4 = 1;
  }

  while (v5 != a2);
  if (v5 != a2)
  {
    return sub_297E4DFAC(3, a2, 3, 5u, "phNciNfc_ResendTimerCb");
  }

  v6 = *a2;
  phOsalNfc_Timer_Stop();
  phOsalNfc_Timer_Delete();
  *(a2 + 552) = 0xFFFFFFFFFFFFLL;
  v7 = *(a2 + 560);
  if (v7)
  {
    if (v7 != 1)
    {
      sub_297E50EBC(1, a2 + 2460, 3, 1u, "Unknown Msg Type");
      v13 = "phNciNfc_ResendTimerCb:Resend Failed, Unknown Message Type";
      v14 = v6 + 6524;
LABEL_28:
      sub_297E4E0B0(1, v14, 3, 1u, v13);
      return sub_297E4DFAC(3, a2, 3, 5u, "phNciNfc_ResendTimerCb");
    }

    v7 = 2;
    v8 = 540;
    v9 = 276;
  }

  else
  {
    v8 = 272;
    v9 = 8;
  }

  v10 = *(a2 + v8);
  if (*(v6 + 6524))
  {
    v11 = &gphNfc_DebugInfo_Sec;
  }

  else
  {
    v11 = &gphNfc_DebugInfo_Prim;
  }

  v11[1] |= 0x8000000u;
  sub_297E4E880(1, a2 + 2460, 3, 4u, "Re Sending packet->->", a2 + v9, v10);
  if (sub_297E5A824(a2))
  {
    if (sub_297E5A99C(*(v6 + 6528), &v34))
    {
      v12 = "phNciNfc_ResendTimerCb1-Failed to retrieve bIgnoreWkUpRet";
LABEL_19:
      sub_297E4E0B0(1, v6 + 6524, 3, 1u, v12);
      goto LABEL_20;
    }

    if (v34 != 1)
    {
      v12 = "phNciNfc_ResendTimerCb1-Failed to Assert Wake Up Line";
      goto LABEL_19;
    }
  }

LABEL_20:
  v15 = *(a2 + 2448);
  if (v15 && v15 != 0xFFFFFFFFFFFFLL)
  {
    if (phOsalNfc_Timer_Stop())
    {
      sub_297E4E0B0(1, v6 + 6524, 3, 1u, "phNciNfc_ResendTimerCb Failed to Stop Timer");
    }

    v16 = phOsalNfc_Timer_Delete();
    *(a2 + 2448) = 0xFFFFFFFFFFFFLL;
    if (v16)
    {
      sub_297E4E0B0(1, v6 + 6524, 3, 1u, "Failed to Delete De-Assert Wake Up Line Timer");
    }
  }

  *(a2 + 2448) = phOsalNfc_Timer_Create();
  if (phOsalNfc_Timer_Start())
  {
    v13 = "phNciNfc_ResendTimerCb-Failed to Start De-Assert Wake Up Timer";
    v14 = v6 + 6524;
    goto LABEL_28;
  }

  if (!*(a2 + 616))
  {
    v18 = *(a2 + 984);
    if (v18 != 0xFFFFFFFFFFFFLL && *(a2 + 992) == 1)
    {
      sub_297E5A304(*(a2 + 2460), v18);
      *(v6 + 6512) = 0;
      if (phOsalNfc_Timer_Start())
      {
        sub_297E4E0B0(1, a2 + 2460, 3, 4u, "Response timer start failed");
      }

      else
      {
        sub_297E4E0B0(1, a2 + 2460, 3, 4u, "Response timer started");
        phOsalNfc_MemCopy();
        *(a2 + 992) = 1;
        if (*(a2 + 2460))
        {
          v19 = &gphNfc_DebugInfo_Sec;
        }

        else
        {
          v19 = &gphNfc_DebugInfo_Prim;
        }

        v19[1] &= ~0x10u;
        *(a2 + 968) = v7;
      }
    }
  }

  v20 = phTmlNfc_Write();
  v21 = *(v6 + 6524);
  if (v21)
  {
    v22 = &gphNfc_DebugInfo_Sec;
  }

  else
  {
    v22 = &gphNfc_DebugInfo_Prim;
  }

  v22[1] &= ~0x8000000u;
  if (v20 == 13)
  {
    v24 = v20;
    if (!v21)
    {
      dword_2A18BE76C |= 1u;
    }

    v25 = sub_297E5ACA0(v6, (a2 + v9));
    if (*(v6 + 6524))
    {
      v26 = &gphNfc_DebugInfo_Sec;
    }

    else
    {
      v26 = &gphNfc_DebugInfo_Prim;
    }

    v26[1] = v26[1] & 0xFFFFFC1F | (32 * v25);
    ++*(a2 + 544);
    if (v24 == -1)
    {
      goto LABEL_55;
    }

    return sub_297E4DFAC(3, a2, 3, 5u, "phNciNfc_ResendTimerCb");
  }

  if (v20 != 111)
  {
    v27 = "TML Write failed";
LABEL_54:
    sub_297E4E0B0(1, v6 + 6524, 3, 1u, v27);
    sub_297E96818(*(v6 + 6528), 194);
LABEL_55:
    *(a2 + 544) = 0;
    if (!*(a2 + 568))
    {
      sub_297E8C964(*a2, *(a2 + 580), 1);
    }

    return sub_297E4DFAC(3, a2, 3, 5u, "phNciNfc_ResendTimerCb");
  }

  v23 = phTmlNfc_WriteAbort();
  sub_297E5A3A8(*(a2 + 632), 0);
  if (v23)
  {
    sub_297E4E0B0(1, v6 + 6524, 3, 1u, "TML Write Abort Failed");
    goto LABEL_55;
  }

  if (*(v6 + 6524))
  {
    v28 = &gphNfc_DebugInfo_Sec;
  }

  else
  {
    v28 = &gphNfc_DebugInfo_Prim;
  }

  v28[1] |= 0x8000000u;
  if (sub_297E5A824(a2))
  {
    if (sub_297E5A99C(*(v6 + 6528), &v34))
    {
      v29 = "phNciNfc_ResendTimerCb1-Failed to retrieve bIgnoreWkUpRet";
LABEL_65:
      sub_297E4E0B0(1, v6 + 6524, 3, 1u, v29);
      goto LABEL_66;
    }

    if (v34 != 1)
    {
      v29 = "phNciNfc_ResendTimerCb1-Failed to Assert Wake Up Line";
      goto LABEL_65;
    }
  }

LABEL_66:
  v30 = phTmlNfc_Write();
  if (*(v6 + 6524))
  {
    dword_2A18BE764 &= ~0x8000000u;
    if (v30 != 13)
    {
      goto LABEL_75;
    }
  }

  else
  {
    v31 = dword_2A18BE76C & 0xF7FFFFFF;
    dword_2A18BE76C &= ~0x8000000u;
    if (v30 != 13)
    {
LABEL_75:
      v27 = "TML Write Failed";
      goto LABEL_54;
    }

    dword_2A18BE76C = v31 | 1;
  }

  v32 = sub_297E5ACA0(v6, (a2 + v9));
  if (*(a2 + 2460))
  {
    v33 = &gphNfc_DebugInfo_Sec;
  }

  else
  {
    v33 = &gphNfc_DebugInfo_Prim;
  }

  v33[1] = v33[1] & 0xFFFFFC1F | (32 * v32);
  sub_297E4E0B0(1, a2 + 2460, 3, 4u, "Re Sending packet when TML BUSY");
  ++*(a2 + 544);
  return sub_297E4DFAC(3, a2, 3, 5u, "phNciNfc_ResendTimerCb");
}

uint64_t sub_297EBF550(uint64_t *a1, unsigned __int8 *a2)
{
  if (a2)
  {
    v4 = *(a2 + 1);
    if (v4 <= 1)
    {
      sub_297E5A3A8(*(&unk_2A18BDDC0 + 14 * v4), 0);
    }
  }

  sub_297E4E1B4(3, a1, 3, 5u, "phNciNfc_CoreReSendCb");
  if (!a1)
  {
    goto LABEL_9;
  }

  v5 = 0;
  v6 = 0;
  do
  {
    v7 = *(&unk_2A18BDDC0 + 14 * v6 + 5);
    if (v5)
    {
      break;
    }

    v5 = 1;
    v6 = 1;
  }

  while (v7 != a1);
  if (v7 != a1 || !*a1)
  {
LABEL_9:
    sub_297E4E0B0(3, a1, 3, 2u, "phNciNfc_CoreReSendCb:Nci context cleared, received send callback!");
    goto LABEL_10;
  }

  sub_297E4E0B0(1, a1 + 2460, 3, 4u, "phNciNfc_CoreReSendCb:Resend command send callback received");
  *(*a1 + 5992) = 0;
  if (*(a1 + 615))
  {
    if (a2)
    {
      goto LABEL_16;
    }

LABEL_20:
    v9 = "phNciNfc_CoreReSendCb:Invalid 'pInfo' from TML!";
LABEL_23:
    sub_297E4E0B0(1, a1 + 2460, 3, 1u, v9);
    goto LABEL_24;
  }

  dword_2A18BE76C &= ~1u;
  if (!a2)
  {
    goto LABEL_20;
  }

LABEL_16:
  sub_297E50DB0(1, a1 + 2460, 3, 4u, "phNciNfc_CoreReSendCb: Send status");
  if (*a2 == 179)
  {
    sub_297E4E0B0(1, a1 + 2460, 3, 2u, "phNciNfc_CoreReSendCb: SPMI Nack");
    goto LABEL_24;
  }

  if (*a2)
  {
    v9 = "phNciNfc_CoreSendCb: Tml write error!";
    goto LABEL_23;
  }

  sub_297E4E0B0(1, a1 + 2460, 3, 4u, "phNciNfc_CoreReSendCb: Send success");
LABEL_24:
  sub_297E5B1DC(*a1, a2);
LABEL_10:

  return sub_297E4DFAC(3, a1, 3, 5u, "phNciNfc_CoreReSendCb");
}

uint64_t sub_297EBF738(uint64_t a1)
{
  sub_297E4E1B4(3, a1, 3, 5u, "phNciNfc_AbortCoreReSend");
  if (a1)
  {
    v2 = 0;
    v3 = 0;
    do
    {
      v4 = *(&unk_2A18BDDC0 + 14 * v3 + 5);
      if (v2)
      {
        break;
      }

      v2 = 1;
      v3 = 1;
    }

    while (v4 != a1);
    if (v4 == a1)
    {
      v6 = *(a1 + 552);
      if (v6)
      {
        if (v6 != 0xFFFFFFFFFFFFLL)
        {
          phOsalNfc_Timer_Stop();
          phOsalNfc_Timer_Delete();
          *(a1 + 552) = 0xFFFFFFFFFFFFLL;
          *(a1 + 560) = 4;
        }
      }
    }
  }

  return sub_297E4DFAC(3, a1, 3, 5u, "phNciNfc_AbortCoreReSend");
}

uint64_t sub_297EBF810(uint64_t a1)
{
  sub_297E4E1B4(2, a1, 8, 5u, "phFriNfc_Felica_HGetMaximumBlksToRead");
  v2 = *(a1 + 700);
  v3 = (v2 | (*(a1 + 699) << 8)) >> 4;
  if ((v2 & 0xF) != 0)
  {
    v4 = v3 + 1;
  }

  else
  {
    v4 = v3;
  }

  sub_297E4DFAC(2, a1, 8, 5u, "phFriNfc_Felica_HGetMaximumBlksToRead");
  return v4;
}

uint64_t sub_297EBF88C(uint64_t a1, uint64_t a2, _DWORD *a3, unsigned int a4, uint64_t a5, uint64_t a6)
{
  v21 = 0;
  v22 = a1;
  sub_297E4E1B4(0, &v22, 8, 5u, "phFriNfc_Felica_RdNdef");
  sub_297E57170(v22, &v21);
  v11 = 1;
  if (a4 <= 1)
  {
    if (a3)
    {
      if (a2)
      {
        if (a5)
        {
          v12 = v21;
          if (v21)
          {
            if (a4 == 1 || v21[540] != 3)
            {
              *(v21 + 2) = a5;
              *(v12 + 5) = a6;
              *(v12 + 62) = *a3;
              *(v12 + 30) = a2;
              *(v12 + 69) = a3;
              *a3 = 0;
              *(v12 + 126) = 0;
              v12[540] = 2;
              v12[686] = a4;
              if (a4 == 1)
              {
                v12[640] = 0;
                *(v12 + 338) = 0;
                v12[659] = 0;
                *(v12 + 682) = 285212672;
                sub_297EBFB18(v12, v12 + 660);
                v13 = v21;
                if (v21[65])
                {
                  sub_297E4E1B4(2, v21, 8, 5u, "phFriNfc_Felica_HNdefRdAttrInfo");
                  *(v13 + 58) = 240;
                  v13[208] &= 0xFCu;
                  *(v13 + 133) = 1536;
                  phOsalNfc_MemCopy();
                  *(v13 + 69) = 251660545;
                  v14 = v13 + 281;
                  v15 = 1;
                  do
                  {
                    *(v14 - 1) = 0x80;
                    *v14 = v15;
                    v14 += 2;
                  }

                  while (v15++ < 0xF);
                  v13[266] = 44;
                  *(v13 + 132) = 260;
                  *(v13 + 263) = 44;
                  *v13 = 4;
                  *(v13 + 6) = sub_297EC0534;
                  *(v13 + 7) = v13;
                  v11 = sub_297E98D38(v13, sub_297EC0B0C);
                  sub_297E4DFAC(2, v13, 8, 5u, "phFriNfc_Felica_HNdefRdAttrInfo");
                }

                else
                {
                  v11 = sub_297EBFB8C(v21);
                }

                if (v11 != 13)
                {
                  sub_297EBFC80(v21, 0, v11);
                }
              }

              else
              {
                v17 = sub_297EBF810(v12);
                v18 = v21;
                v19 = v21[640];
                if (v17 == v19 && v21[684] == 4)
                {
                  v11 = 26;
                }

                else
                {
                  *(v21 + 341) = 16 * v19 - v21[659];
                  v11 = sub_297EBFDEC(v18, v18[686]);
                }
              }
            }

            else
            {
              v11 = 245;
            }
          }
        }
      }
    }
  }

  sub_297E4DFAC(0, &v22, 8, 5u, "phFriNfc_Felica_RdNdef");
  return v11;
}

uint64_t sub_297EBFB18(uint64_t a1, void *a2)
{
  sub_297E4E1B4(2, a1, 8, 5u, "phFriNfc_Felica_HInitInternalBuf");
  *a2 = 0;
  a2[1] = 0;

  return sub_297E4DFAC(2, a1, 8, 5u, "phFriNfc_Felica_HInitInternalBuf");
}

uint64_t sub_297EBFB8C(uint64_t a1)
{
  sub_297E4E1B4(2, a1, 8, 5u, "phFriNfc_Felica_HRdAttrInfo");
  *(a1 + 232) = 240;
  *(a1 + 208) &= 0xFCu;
  *(a1 + 266) = 1536;
  phOsalNfc_MemCopy();
  *(a1 + 276) = 16780033;
  *(a1 + 280) = 128;
  *(a1 + 266) = 16;
  *(a1 + 264) = 260;
  *(a1 + 526) = 16;
  *a1 = 4;
  *(a1 + 48) = sub_297EC0534;
  *(a1 + 56) = a1;
  v2 = sub_297E98D38(a1, sub_297EC0B0C);
  sub_297E4DFAC(2, a1, 8, 5u, "phFriNfc_Felica_HRdAttrInfo");
  return v2;
}

uint64_t sub_297EBFC80(unsigned __int8 *a1, int a2, uint64_t a3)
{
  v13 = 0;
  v11 = 0;
  v12 = 0;
  v10 = 0;
  v6 = *a1;
  sub_297E4E1B4(2, a1, 8, 5u, "phFriNfc_Felica_HCrHandler");
  *a1 = 0;
  if (a2 == 4)
  {
    (*(a1 + 4))(*(a1 + 5), a3);
    return sub_297E4DFAC(2, a1, 8, 5u, "phFriNfc_Felica_HCrHandler");
  }

  if ((v6 - 1) < 4)
  {
    if (!a3)
    {
      goto LABEL_9;
    }

    if (a3 == 157)
    {
LABEL_19:
      (*(a1 + 1))(*(a1 + 5), a3, &v12);
      return sub_297E4DFAC(2, a1, 8, 5u, "phFriNfc_Felica_HCrHandler");
    }

    if (a3 != 25)
    {
      a1[546] = 0;
      v8 = 3;
    }

    else
    {
LABEL_9:
      a1[546] = 1;
      v13 = 16 * *(a1 + 347);
      if (a3 == 25)
      {
        v7 = 0;
      }

      else
      {
        v7 = (a1[698] << 24) | (a1[699] << 8) | a1[700];
      }

      HIDWORD(v12) = v7;
      v8 = a1[545];
    }

    LOBYTE(v12) = v8;
    goto LABEL_19;
  }

  if ((v6 - 6) >= 3)
  {
    if (v6 == 5)
    {
      if (!a3)
      {
        LODWORD(v11) = **(a1 + 69);
        v10 = *(a1 + 30);
      }

      (*(a1 + 2))(*(a1 + 5), a3, &v10);
    }
  }

  else
  {
    (*(a1 + 3))(*(a1 + 5), a3);
  }

  return sub_297E4DFAC(2, a1, 8, 5u, "phFriNfc_Felica_HCrHandler");
}

uint64_t sub_297EBFDEC(uint64_t a1, int a2)
{
  sub_297E4E1B4(2, a1, 8, 5u, "phFriNfc_Felica_HReadData");
  v4 = sub_297EBF810(a1);
  v5 = v4;
  if (*(a1 + 248) > *(a1 + 252) && v4 > *(a1 + 640))
  {
    if (!*(a1 + 659))
    {
      goto LABEL_7;
    }

    sub_297EC0028(a1);
  }

  v6 = sub_297EC0344(a1);
  if (v6 && *(a1 + 680) == 1)
  {
LABEL_7:
    v7 = sub_297EC0474(a1, v5);
    sub_297E4E1B4(2, a1, 8, 5u, "phFriNfc_Felica_HSetTransceiveForRead");
    *(a1 + 232) = 240;
    *a1 = 5;
    *(a1 + 48) = sub_297EC0534;
    *(a1 + 56) = a1;
    *(a1 + 208) &= 0xFCu;
    v8 = a1 + 266;
    *(a1 + 266) = 1536;
    phOsalNfc_MemCopy();
    *(a1 + 276) = 2817;
    *(a1 + 278) = 0;
    v9 = v7 >> 4;
    *(a1 + 279) = v7 >> 4;
    if (a2 == 1)
    {
      if (v7 >= 0x10)
      {
        v10 = 0;
        v11 = 14;
        do
        {
          *(v8 + v11) = 0x80;
          v12 = v11 + 1;
          *(v8 + (v11 + 1)) = ++v10;
          v11 += 2;
          if (v12 == -1)
          {
            v11 = 0;
          }
        }

        while (v9 > v10);
        goto LABEL_20;
      }
    }

    else if (v7 >= 0x10)
    {
      v13 = 14;
      v14 = 1;
      do
      {
        *(v8 + v13) = 0x80;
        v15 = v13 + 1;
        *(v8 + (v13 + 1)) = *(a1 + 640) + v14;
        v13 += 2;
        if (v15 == -1)
        {
          v13 = 0;
        }

        v16 = v9 > v14++;
        v11 = v13;
      }

      while (v16);
      goto LABEL_20;
    }

    v11 = 14;
LABEL_20:
    *(a1 + 266) = v11;
    *(a1 + 526) = v11;
    *(a1 + 264) = 260;
    v6 = sub_297E98D38(a1, sub_297EC0B0C);
    sub_297E4DFAC(2, a1, 8, 5u, "phFriNfc_Felica_HSetTransceiveForRead");
  }

  sub_297E4DFAC(2, a1, 8, 5u, "phFriNfc_Felica_HReadData");
  return v6;
}

uint64_t sub_297EC0028(uint64_t a1)
{
  sub_297E4E1B4(2, a1, 8, 5u, "phFriNfc_Felica_HAfterRead_CopyDataToBuff");
  v2 = *(a1 + 659);
  v3 = *(a1 + 248) - *(a1 + 252);
  if (*(a1 + 659))
  {
    if (v3 >= v2)
    {
      phOsalNfc_MemCopy();
      v11 = *(a1 + 659);
      *(a1 + 252) += v11;
      *(a1 + 682) += v11;
      *(a1 + 659) = 0;
      *(a1 + 676) = 0;
      goto LABEL_19;
    }

    *(a1 + 659) = v2 - v3;
    if (*(a1 + 676) == 1)
    {
      phOsalNfc_MemCopy();
      v4 = *(a1 + 248);
      v5 = *(a1 + 252);
      *(a1 + 677) += v4 - v5;
      *(a1 + 676) = 1;
      if (!*(a1 + 659))
      {
        *(a1 + 684) = 4;
      }
    }

    else
    {
      phOsalNfc_MemCopy();
      v4 = *(a1 + 248);
      v5 = *(a1 + 252);
    }

    v12 = v4 - v5;
    *(a1 + 682) += v12;
    v13 = v5 + v12;
    goto LABEL_15;
  }

  v6 = *(a1 + 700);
  v7 = (*(a1 + 698) << 24) | (*(a1 + 699) << 8) | v6;
  v8 = *(a1 + 688);
  v9 = *(a1 + 682);
  v10 = v9 + v8;
  if (v8 > v3)
  {
    if (v10 <= v7)
    {
      *(a1 + 659) = v8 - v3;
      phOsalNfc_MemCopy();
      phOsalNfc_MemCopy();
      *(a1 + 676) = 1;
      v14 = *(a1 + 248);
      v15 = *(a1 + 252);
      *(a1 + 682) += v14 - v15;
      v16 = v15 + (v14 - v15);
      *(a1 + 252) = v16;
      if (v7 > v14 - v16)
      {
        goto LABEL_19;
      }

      goto LABEL_17;
    }

    if (v3 <= v7 - v9)
    {
      phOsalNfc_MemCopy();
      v19 = *(a1 + 682);
      v20 = *(a1 + 248);
      v21 = *(a1 + 252);
      *(a1 + 659) = v21 - v20 + v6 - v19;
      if (v21 - v20 + v6 - v19)
      {
        phOsalNfc_MemCopy();
        *(a1 + 676) = 1;
        v20 = *(a1 + 248);
        v21 = *(a1 + 252);
        v19 = *(a1 + 682);
      }

      v22 = v20 - v21;
      *(a1 + 682) = v22 + v19;
      v13 = v21 + v22;
LABEL_15:
      *(a1 + 252) = v13;
      goto LABEL_19;
    }

LABEL_12:
    phOsalNfc_MemCopy();
    *(a1 + 252) += v7 - *(a1 + 682);
    *(a1 + 682) = v7;
LABEL_17:
    *(a1 + 684) = 4;
    goto LABEL_19;
  }

  if (v10 > v7)
  {
    goto LABEL_12;
  }

  phOsalNfc_MemCopy();
  v17 = *(a1 + 688);
  *(a1 + 252) += v17;
  *(a1 + 682) += v17;
LABEL_19:

  return sub_297E4DFAC(2, a1, 8, 5u, "phFriNfc_Felica_HAfterRead_CopyDataToBuff");
}

uint64_t sub_297EC0344(uint64_t a1)
{
  sub_297E4E1B4(2, a1, 8, 5u, "phFriNfc_Felica_HChkApduBuff_Size");
  v2 = sub_297EBF810(a1);
  v3 = *(a1 + 248);
  v4 = *(a1 + 252);
  if (v3 == v4)
  {
    v5 = *(a1 + 640);
    if (v2 <= v5)
    {
      if (v2 == v5)
      {
        if (!*(a1 + 659))
        {
          goto LABEL_8;
        }

        goto LABEL_17;
      }

      if (v3 != 16 * v2)
      {
        v6 = 0;
        goto LABEL_19;
      }

      goto LABEL_8;
    }

LABEL_17:
    v6 = 0;
    **(a1 + 552) = v3;
    goto LABEL_18;
  }

  if (v4 == 16 * v2)
  {
    goto LABEL_7;
  }

  if (v2 != *(a1 + 640))
  {
    *(a1 + 680) = 1;
    v6 = 13;
    goto LABEL_19;
  }

  if (!*(a1 + 659))
  {
LABEL_7:
    v3 = *(a1 + 252);
    goto LABEL_8;
  }

  if (*(a1 + 684) == 1)
  {
    v6 = 0;
    **(a1 + 552) = v4;
LABEL_18:
    *(a1 + 252) = 0;
    goto LABEL_19;
  }

  sub_297EC0028(a1);
  v3 = *(a1 + 252);
  if (*(a1 + 659))
  {
    goto LABEL_17;
  }

LABEL_8:
  v6 = 0;
  **(a1 + 552) = v3;
  *(a1 + 252) = 0;
  *(a1 + 659) = 0;
  *(a1 + 684) = 4;
LABEL_19:
  sub_297E4DFAC(2, a1, 8, 5u, "phFriNfc_Felica_HChkApduBuff_Size");
  return v6;
}

uint64_t sub_297EC0474(uint64_t a1, unsigned int a2)
{
  sub_297E4E1B4(2, a1, 8, 5u, "phFriNfc_Felica_HSetTrxLen");
  v4 = *(a1 + 248);
  v5 = *(a1 + 252);
  v6 = ((v4 - v5) & 0xF) != 0 && v4 >= v5;
  v7 = (v4 - v5) >> 4;
  if (v6)
  {
    LOWORD(v7) = v7 + 1;
  }

  if (a2 >= v7)
  {
    v8 = *(a1 + 640);
    if ((a2 - v8) >= v7)
    {
      goto LABEL_10;
    }
  }

  else
  {
    LOWORD(v8) = *(a1 + 640);
  }

  LOWORD(v7) = a2 - v8;
LABEL_10:
  v7 = v7;
  if (v7 >= *(a1 + 691))
  {
    v7 = *(a1 + 691);
  }

  if (v7 >= a2)
  {
    v7 = a2;
  }

  v9 = 16 * v7;
  *(a1 + 688) = 16 * v7;
  sub_297E4DFAC(2, a1, 8, 5u, "phFriNfc_Felica_HSetTrxLen");
  return v9;
}

uint64_t sub_297EC0534(uint64_t a1, unsigned __int8 *a2, uint64_t a3)
{
  sub_297E4E1B4(2, a2, 8, 5u, "phFriNfc_Felica_Process");
  if (a3)
  {
    if (a2[540] == 6)
    {
      v5 = a2;
      v6 = 4;
LABEL_21:
      v9 = a3;
LABEL_22:
      sub_297EBFC80(v5, v6, v9);
      goto LABEL_23;
    }

    v10 = *a2;
    if ((v10 - 1) < 4)
    {
      v5 = a2;
      v6 = 0;
      goto LABEL_21;
    }

    if ((v10 - 6) < 3)
    {
      v5 = a2;
      v6 = 2;
      goto LABEL_21;
    }

    if (v10 == 5)
    {
      v5 = a2;
      v6 = 1;
      goto LABEL_21;
    }

LABEL_32:
    v5 = a2;
    v6 = 5;
    v9 = 245;
    goto LABEL_22;
  }

  v7 = *a2;
  if (v7 <= 5)
  {
    if (v7 != 2)
    {
      if (v7 != 4)
      {
        if (v7 != 5)
        {
          goto LABEL_32;
        }

        v11 = sub_297EC210C(a2);
        if (v11)
        {
LABEL_19:
          v9 = v11;
          goto LABEL_91;
        }

        if (a2[267] != 7 || (v15 = sub_297EBF810(a2), v16 = sub_297EC0474(a2, v15), a2[276]))
        {
          *(a2 + 126) = 0;
          v9 = 20;
          goto LABEL_91;
        }

        if (v16 != 16 * a2[278])
        {
          *(a2 + 126) = 0;
          a2[659] = 0;
          v9 = 27;
          goto LABEL_91;
        }

        a2[640] += v16 >> 4;
        sub_297EC0028(a2);
        v11 = sub_297EBFDEC(a2, 0);
LABEL_83:
        if (v11 == 13)
        {
          goto LABEL_23;
        }

        goto LABEL_19;
      }

      if (a2[276])
      {
        v9 = 20;
        goto LABEL_55;
      }

      v17 = sub_297EC210C(a2);
      if (v17 || (v17 = sub_297EC21D4(a2), v17 != 25) && v17)
      {
        v9 = v17;
        goto LABEL_55;
      }

      v21 = (a2[698] << 24) | (a2[699] << 8) | a2[700];
      v22 = a2[685];
      v9 = 245;
      if (v22 <= 0x11)
      {
        if (v22 == 16)
        {
          v8 = sub_297EC127C(a2);
          goto LABEL_10;
        }

        if (v22 == 17)
        {
          if (!v21 && !a2[65])
          {
            v5 = a2;
            v6 = 1;
            v9 = 157;
            goto LABEL_22;
          }

          v11 = sub_297EC13A4(a2, v21);
          goto LABEL_83;
        }

LABEL_55:
        if (a2[540] == 6)
        {
          goto LABEL_56;
        }

LABEL_91:
        v5 = a2;
        v6 = 1;
        goto LABEL_22;
      }

      if (v22 != 18)
      {
        if (v22 == 20)
        {
          v27 = sub_297EC10C4(a2);
          if (v27 == 13)
          {
            goto LABEL_23;
          }

          v9 = v27;
LABEL_56:
          v5 = a2;
          v6 = 4;
          goto LABEL_22;
        }

        goto LABEL_55;
      }

      if (v17 == 25)
      {
        v9 = 25;
      }

      else
      {
        v9 = sub_297E9C0B8(a2, v21);
      }

      a2[544] = 3;
      *(a2 + 126) = 0;
      a2[685] = 15;
LABEL_63:
      v5 = a2;
      v6 = 0;
      goto LABEL_22;
    }

    sub_297E4E1B4(2, a2, 8, 5u, "phFriNfc_Felica_HUpdateManufIdDetails");
    v13 = *(a2 + 132);
    if (a2[65])
    {
      if (v13 <= 0x11)
      {
        goto LABEL_62;
      }
    }

    else if (v13 < 0x14)
    {
      goto LABEL_62;
    }

    phOsalNfc_MemCopy();
    phOsalNfc_MemCopy();
    if (a2[65])
    {
      *(*(a2 + 28) + 28) = 18;
      v14 = -4;
    }

    else
    {
      *(*(a2 + 28) + 28) = a2[284];
      v14 = a2[285];
    }

    *(*(a2 + 28) + 27) = v14;
    *(*(a2 + 28) + 18) = 8;
    phOsalNfc_MemCopy();
    phOsalNfc_MemCopy();
    v18 = *(a2 + 28);
    if (*(v18 + 28) == 18 && *(v18 + 27) == 252)
    {
      sub_297E4DFAC(2, a2, 8, 5u, "phFriNfc_Felica_HUpdateManufIdDetails");
      a2[685] = 18;
      v9 = sub_297EBFB8C(a2);
      if (v9 == 13)
      {
        goto LABEL_23;
      }

      goto LABEL_63;
    }

LABEL_62:
    sub_297E4DFAC(2, a2, 8, 5u, "phFriNfc_Felica_HUpdateManufIdDetails");
    v9 = 22;
    goto LABEL_63;
  }

  if (*a2 > 7u)
  {
    if (v7 == 8)
    {
      if (a2[276])
      {
        v9 = 21;
      }

      else
      {
        v9 = 0;
      }

LABEL_43:
      v5 = a2;
      v6 = 2;
      goto LABEL_22;
    }

    if (v7 != 10)
    {
      goto LABEL_32;
    }

    if (a2[276])
    {
      v9 = 21;
    }

    else
    {
      v9 = 0;
      a2[545] = 1;
    }

    goto LABEL_56;
  }

  if (v7 != 6)
  {
    if (v7 != 7)
    {
      goto LABEL_32;
    }

    if (!a2[276])
    {
      goto LABEL_9;
    }

LABEL_39:
    v5 = a2;
    v6 = 2;
    v9 = 21;
    goto LABEL_22;
  }

  if (a2[267] != 9 || a2[276])
  {
    *(a2 + 126) = 0;
    a2[642] = 0;
    *(a2 + 62) = 0;
    goto LABEL_39;
  }

  if (a2[679] != 1)
  {
    v23 = *(a2 + 126) + *(a2 + 108);
    *(a2 + 126) = v23;
    **(a2 + 32) = v23;
    if (a2[684])
    {
      v24 = a2[640];
      v25 = *(a2 + 347);
      if (v25 > v24)
      {
        LOBYTE(v24) = a2[641] + v24;
        a2[640] = v24;
        v24 = v24;
      }

      if (v25 == v24)
      {
        v26 = 16 * v25;
        if (v26 == v23 || ((a2[698] << 24) | (a2[699] << 8) | a2[700]) + v23 == v26)
        {
          a2[684] = 4;
          v8 = sub_297EC0EEC(a2, 1);
          goto LABEL_10;
        }
      }
    }

    else
    {
      a2[640] += a2[641];
    }

LABEL_9:
    v8 = sub_297EC1444(a2);
LABEL_10:
    if (v8 == 13)
    {
      goto LABEL_23;
    }

    v9 = v8;
    goto LABEL_43;
  }

  phOsalNfc_MemCopy();
  v19 = *(a2 + 108);
  a2[642] += v19;
  v20 = *(a2 + 126) + v19;
  *(a2 + 126) = v20;
  **(a2 + 32) = v20;
  a2[679] = 0;
  sub_297EC1444(a2);
LABEL_23:

  return sub_297E4DFAC(2, a2, 8, 5u, "phFriNfc_Felica_Process");
}

uint64_t sub_297EC0B0C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v9 = 0;
  v10 = a1;
  sub_297E4E1B4(0, &v10, 8, 5u, "phFriNfc_Felica_CB_Transceive");
  sub_297E57170(v10, &v9);
  v7 = v9;
  if (v9)
  {
    if (a4)
    {
      *(v9 + 264) = *(a4 + 8);
    }

    (*(v7 + 48))(*(v7 + 2712), v7, a5);
  }

  return sub_297E4DFAC(0, &v10, 8, 5u, "phFriNfc_Felica_CB_Transceive");
}

uint64_t sub_297EC0BA4(uint64_t a1, unsigned __int8 *a2, unsigned __int8 *a3, unsigned __int8 a4, uint64_t a5, uint64_t a6)
{
  v20 = a1;
  v19 = 0;
  v18 = 208;
  v17 = 0;
  sub_297E4E1B4(0, &v20, 8, 5u, "phFriNfc_Felica_WrNdef");
  sub_297E57170(v20, &v17);
  v11 = 1;
  if (a3 && a5 && v17)
  {
    phOsalNfc_MemCopy();
    v12 = v17;
    v13 = v17 + 2740;
    *(v17 + 685) = 3;
    if (*a3)
    {
      v13 = a3;
      v14 = a2;
    }

    else
    {
      v14 = v12 + 2736;
    }

    *(v12 + 3) = a5;
    *(v12 + 5) = a6;
    *(v12 + 126) = 0;
    **(v12 + 66) = 0;
    *(v12 + 62) = *v13;
    *(v12 + 30) = v14;
    *(v12 + 32) = v13;
    *v13 = 0;
    v12[540] = 3;
    v12[686] = a4;
    v12[685] = 16;
    if (v12[65])
    {
      v15 = sub_297EC0D00(v12);
    }

    else
    {
      v15 = sub_297EBFB8C(v12);
    }

    v11 = v15;
    if (v15 != 13)
    {
      sub_297EBFC80(v17, 0, v15);
    }
  }

  sub_297E4DFAC(0, &v20, 8, 5u, "phFriNfc_Felica_WrNdef");
  return v11;
}

uint64_t sub_297EC0D00(uint64_t a1)
{
  v2 = a1 + 276;
  sub_297E4E1B4(2, a1, 8, 5u, "phFriNfc_Felica_HNdefWrAttrInfo");
  *(a1 + 232) = 240;
  *(a1 + 208) &= 0xFCu;
  *(a1 + 266) = 2048;
  phOsalNfc_MemCopy();
  *v2 = 0xF10008001000901;
  *(a1 + 284) = 12;
  *(a1 + 286) = -109;
  *(v2 + 11) = 0;
  *(v2 + 15) = 271;
  *(a1 + 295) = 496;
  *(a1 + 297) = -67;
  *(a1 + 266) = 32;
  *(a1 + 264) = 260;
  *(a1 + 526) = 32;
  *a1 = 7;
  *(a1 + 48) = sub_297EC0534;
  *(a1 + 56) = a1;
  v3 = sub_297E98D38(a1, sub_297EC0B0C);
  sub_297E4DFAC(2, a1, 8, 5u, "phFriNfc_Felica_HNdefWrAttrInfo");
  return v3;
}

uint64_t sub_297EC0E24(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v8 = 0;
  v9 = a1;
  sub_297E4E1B4(0, &v9, 8, 5u, "phFriNfc_Felica_ConvertToRdOnlyNdef");
  sub_297E57170(v9, &v8);
  v5 = 1;
  if (a2)
  {
    v6 = v8;
    if (v8)
    {
      *(v8 + 4) = a2;
      *(v6 + 5) = a3;
      v6[540] = 6;
      v6[685] = 20;
      v5 = sub_297EBFB8C(v6);
      if (v5 != 13)
      {
        sub_297EBFC80(v8, 0, v5);
      }
    }
  }

  sub_297E4DFAC(0, &v9, 8, 5u, "phFriNfc_Felica_ConvertToRdOnlyNdef");
  return v5;
}

uint64_t sub_297EC0EEC(uint64_t a1, int a2)
{
  sub_297E4E1B4(2, a1, 8, 5u, "phFriNfc_Felica_HUpdateAttrBlkForWrOp");
  if (a2)
  {
    v4 = 8;
  }

  else
  {
    v4 = 7;
  }

  *a1 = v4;
  *(a1 + 232) = 240;
  *(a1 + 266) = 2048;
  phOsalNfc_MemCopy();
  *(a1 + 276) = 16779521;
  *(a1 + 280) = 128;
  *(a1 + 282) = *(a1 + 690);
  *(a1 + 283) = *(a1 + 691);
  v5 = *(a1 + 694);
  *(a1 + 285) = HIBYTE(v5);
  *(a1 + 286) = v5;
  *(a1 + 287) = 0;
  if (a2)
  {
    v6 = *(a1 + 642);
    if (*(a1 + 642))
    {
      v7 = *(a1 + 640);
      if (!*(a1 + 640))
      {
        v13 = 1;
        goto LABEL_16;
      }

      *(a1 + 291) = 0;
      *(a1 + 292) = *(a1 + 697);
      v8 = v6 + 16 * v7 - 16;
    }

    else
    {
      *(a1 + 291) = 0;
      *(a1 + 292) = *(a1 + 697);
      v8 = 16 * *(a1 + 640);
    }

    *(a1 + 293) = 0;
    *(a1 + 294) = HIBYTE(v8);
  }

  else
  {
    *(a1 + 291) = 15;
    *(a1 + 292) = *(a1 + 697);
    *(a1 + 293) = *(a1 + 698);
    LOBYTE(v8) = *(a1 + 700);
  }

  v9 = 0;
  *(a1 + 295) = v8;
  for (i = 282; i != 296; ++i)
  {
    v11 = *(a1 + i);
    v12 = v11 + v9;
    v9 += v11;
    if (v12 >= 0x10000)
    {
      v9 = 0;
    }
  }

  *(a1 + 296) = bswap32(v9) >> 16;
  *(a1 + 266) = 32;
  *(a1 + 264) = 260;
  *(a1 + 526) = 32;
  *(a1 + 48) = sub_297EC0534;
  *(a1 + 56) = a1;
  *(a1 + 208) &= 0xFCu;
  v13 = sub_297E98D38(a1, sub_297EC0B0C);
LABEL_16:
  sub_297E4DFAC(2, a1, 8, 5u, "phFriNfc_Felica_HUpdateAttrBlkForWrOp");
  return v13;
}

uint64_t sub_297EC10C4(uint64_t a1)
{
  sub_297E4E1B4(2, a1, 8, 5u, "phFriNfc_Felica_HUpdateAttrBlkForRdOnlyOp");
  if (!a1)
  {
    goto LABEL_12;
  }

  v2 = *(a1 + 697);
  if (v2 == 1)
  {
    if (!sub_297E8EA44(*(a1 + 2712)))
    {
      goto LABEL_7;
    }

    v2 = *(a1 + 697);
  }

  if (v2 || sub_297E8EA44(*(a1 + 2712)) != 1)
  {
LABEL_12:
    v9 = 4341;
    goto LABEL_13;
  }

LABEL_7:
  *a1 = 10;
  *(a1 + 232) = 240;
  *(a1 + 266) = 2048;
  phOsalNfc_MemCopy();
  *(a1 + 276) = 16779521;
  *(a1 + 280) = 128;
  *(a1 + 282) = *(a1 + 690);
  *(a1 + 283) = *(a1 + 691);
  v3 = *(a1 + 694);
  *(a1 + 285) = HIBYTE(v3);
  *(a1 + 286) = v3;
  *(a1 + 287) = 0;
  *(a1 + 291) = 0;
  v4 = sub_297E8EA44(*(a1 + 2712));
  v5 = 0;
  *(a1 + 292) = v4 == 1;
  *(a1 + 293) = *(a1 + 698);
  *(a1 + 294) = *(a1 + 699);
  for (i = 282; i != 296; ++i)
  {
    v7 = *(a1 + i);
    v8 = v7 + v5;
    v5 += v7;
    if (v8 >= 0x10000)
    {
      v5 = 0;
    }
  }

  *(a1 + 296) = bswap32(v5) >> 16;
  *(a1 + 266) = 32;
  *(a1 + 264) = 260;
  *(a1 + 526) = 32;
  *(a1 + 48) = sub_297EC0534;
  *(a1 + 56) = a1;
  *(a1 + 208) &= 0xFCu;
  v9 = sub_297E98D38(a1, sub_297EC0B0C);
LABEL_13:
  sub_297E4DFAC(2, a1, 8, 5u, "phFriNfc_Felica_HUpdateAttrBlkForRdOnlyOp");
  return v9;
}

uint64_t sub_297EC127C(uint64_t a1)
{
  sub_297E4E1B4(2, a1, 8, 5u, "phFriNfc_Felica_HChkAttrBlkForWrOp");
  if (*(a1 + 697))
  {
    if (*(a1 + 686) == 1 || *(a1 + 540) == 2)
    {
      *(a1 + 684) = 2 * (*(a1 + 248) > 16 * *(a1 + 694));
      *(a1 + 642) = 0;
      *(a1 + 640) = 0;
      sub_297EBFB18(a1, (a1 + 643));
    }

    else
    {
      if (*(a1 + 686))
      {
        v2 = 13;
        goto LABEL_9;
      }

      v4 = (*(a1 + 698) << 24) | (*(a1 + 699) << 8) | *(a1 + 700);
      v5 = *(a1 + 248);
      v6 = 16 * *(a1 + 694);
      if (v5 <= ~v4 && v4 + v5 > v6)
      {
        if (v4 == v6)
        {
          v2 = 26;
          goto LABEL_9;
        }

        *(a1 + 684) = 3;
      }

      *(a1 + 252) = 0;
      *(a1 + 641) = 0;
    }

    v2 = sub_297EC0EEC(a1, 0);
  }

  else
  {
    v2 = 245;
  }

LABEL_9:
  sub_297E4DFAC(2, a1, 8, 5u, "phFriNfc_Felica_HChkAttrBlkForWrOp");
  return v2;
}

uint64_t sub_297EC13A4(uint64_t a1, int a2)
{
  sub_297E4E1B4(2, a1, 8, 5u, "phFriNfc_Felica_HChkAttrBlkForRdOp");
  if (*(a1 + 696) == 15)
  {
    **(a1 + 552) = 0;
    v4 = 20;
  }

  else
  {
    v4 = sub_297E9C0B8(a1, a2);
    if (!v4)
    {
      v4 = sub_297EBFDEC(a1, *(a1 + 686));
    }
  }

  sub_297E4DFAC(2, a1, 8, 5u, "phFriNfc_Felica_HChkAttrBlkForRdOp");
  return v4;
}

uint64_t sub_297EC1444(uint64_t a1)
{
  sub_297E4E1B4(2, a1, 8, 5u, "phFriNfc_Felica_HUpdateData");
  if (*(a1 + 248) > *(a1 + 252))
  {
    v2 = a1 + 266;
    *(a1 + 266) = 2048;
    phOsalNfc_MemCopy();
    *(a1 + 276) = 2305;
    *(a1 + 278) = 0;
    v3 = *(a1 + 684);
    if (v3 == 3)
    {
      sub_297EBF810(a1);
      v10 = *(a1 + 642);
      v11 = 16 * *(a1 + 640);
      v12 = v11 - (16 - v10);
      if (v11 < 16 - v10)
      {
        v12 = 0;
      }

      if (*(a1 + 642))
      {
        v13 = v12;
      }

      else
      {
        v13 = 16 * *(a1 + 640);
      }

      v14 = 16 * *(a1 + 694);
      v7 = v14 >= v13;
      v8 = v14 - v13;
    }

    else
    {
      v4 = 0;
      if (v3 != 2)
      {
        goto LABEL_15;
      }

      v5 = 16 * *(a1 + 694);
      v6 = *(a1 + 640);
      v7 = v5 >= 16 * v6;
      v8 = v5 - 16 * v6;
    }

    if (v7)
    {
      v4 = v8;
    }

    else
    {
      v4 = 0;
    }

LABEL_15:
    v15 = *(a1 + 642);
    if (*(a1 + 642))
    {
      *(a1 + 279) = 0;
      v16 = *(a1 + 248);
      v17 = 16 - v15;
      if (v16 <= 16 - v15)
      {
        v18 = 0;
        v24 = 0;
        v23 = 0;
        *(a1 + 641) = 0;
      }

      else
      {
        v18 = *(a1 + 248) - v17;
        if (*(a1 + 248) < v17)
        {
          v18 = 0;
        }

        if (*(a1 + 684))
        {
          v19 = v4;
        }

        else
        {
          v19 = v18;
        }

        if (v19)
        {
          if (*(a1 + 684))
          {
            v20 = (v4 - (16 - v15)) >> 4;
            if (v4 < (16 - v15))
            {
              LOBYTE(v20) = 0;
            }

            v21 = *(a1 + 692);
            if (v21 > v20)
            {
              if (!(v4 & 0xF | v20))
              {
                LOBYTE(v20) = 1;
              }

              if (((v4 + v15) & 0xF) != 0)
              {
                v22 = 16 * (v20 + 1);
                if (v22 >= v4)
                {
                  v23 = v22 - v4;
                }

                else
                {
                  v23 = 0;
                }

                *(a1 + 678) = 1;
                *(a1 + 641) = v20 + 1;
                LOBYTE(v21) = v20 + 2;
                if (v20 == 0xFE)
                {
                  LOBYTE(v21) = 0;
                  v24 = 0;
                  LOBYTE(v49) = 14;
                  goto LABEL_79;
                }

                v24 = 0;
              }

              else
              {
                if (v15 - 16 + v4)
                {
                  LOBYTE(v21) = v20 + 1;
                }

                else
                {
                  LOBYTE(v21) = 1;
                }

                v24 = 0;
                v23 = 0;
                if (*(a1 + 678))
                {
                  *(a1 + 641) = v21 - 1;
                }
              }

              goto LABEL_226;
            }

            v23 = 0;
            if (*(a1 + 692))
            {
              *(a1 + 641) = v21 - 1;
              v24 = 1;
LABEL_226:
              v18 = v4;
              goto LABEL_68;
            }

            LOBYTE(v21) = 1;
            v18 = v4;
          }

          else
          {
            v73 = v18 >> 4;
            v21 = *(a1 + 692);
            if (*(a1 + 248) <= v17)
            {
              v74 = 1;
            }

            else
            {
              v74 = v18 >> 4;
            }

            if ((v18 & 0xF) != 0 && v73 < v21)
            {
              v24 = 0;
              if (16 * (v74 + 1) >= v18)
              {
                v23 = 16 * (v74 + 1) - v18;
              }

              else
              {
                v23 = 0;
              }

              *(a1 + 678) = 1;
              *(a1 + 641) = v74 + 1;
              LOBYTE(v21) = v74 + 2;
LABEL_68:
              v46 = 0;
              v47 = *(a1 + 678);
              v48 = *(a1 + 640);
              v49 = 14;
              do
              {
                *(v2 + v49) = 0x80;
                if (v47 == 1)
                {
                  *(v2 + (v49 + 1)) = v48 + v46;
                  if (v49 == 0xFE)
                  {
                    v49 = 0;
                  }

                  else
                  {
                    v49 += 2;
                  }

                  ++v46;
                }

                else
                {
                  *(v2 + (v49 + 1)) = v48 + ++v46;
                  if (v49 == 0xFE)
                  {
                    v49 = 0;
                  }

                  else
                  {
                    v49 += 2;
                  }
                }
              }

              while (v46 < v21);
              v4 = v18;
LABEL_79:
              v50 = *(a1 + 252);
              v7 = v16 >= v50;
              v51 = v16 - v50;
              if (v7)
              {
                v52 = v51;
              }

              else
              {
                v52 = 0;
              }

              phOsalNfc_MemCopy();
              if (*(a1 + 642) + v49 >= 0x100)
              {
                v53 = 0;
              }

              else
              {
                v53 = *(a1 + 642) + v49;
              }

              if (v52 < v17)
              {
                phOsalNfc_MemCopy();
                v54 = *(a1 + 248);
                if (v54 + v53 >= 0x100)
                {
                  v55 = 0;
                }

                else
                {
                  v55 = v54 + v53;
                }

                v56 = *(a1 + 642);
                v7 = __CFADD__(v54, v56);
                v57 = v54 + v56;
                if (v7)
                {
                  v57 = 0;
                }

                if (v57 <= 0x10)
                {
                  for (i = (16 - v57); i; --i)
                  {
                    *(v2 + v55++) = 0;
                  }
                }

                *(a1 + 216) = v54;
                *(a1 + 679) = 1;
                if (*(a1 + 678))
                {
                  *(a1 + 641) = 0;
                }

                goto LABEL_160;
              }

              phOsalNfc_MemCopy();
              v59 = *(a1 + 642);
              *(a1 + 216) = 16 - v59;
              if (v53 + 16 >= v59)
              {
                v55 = v53 + 16 - v59;
              }

              else
              {
                v55 = 0;
              }

              if (v4)
              {
                if (!*(a1 + 684))
                {
                  if (v24)
                  {
                    phOsalNfc_MemCopy();
                    v75 = 16 * *(a1 + 692) - 16;
                    if ((v75 & 0xF0) + v55 >= 0x100)
                    {
                      v55 = 0;
                    }

                    else
                    {
                      v55 += v75;
                    }

                    *(a1 + 642) = 0;
                    v76 = *(a1 + 216);
                    v77 = (v75 & 0xFFF0) + v76;
                    v78 = v76 + v75;
                    if (v77 >= 0x10000)
                    {
                      v78 = 0;
                    }

                    *(a1 + 216) = v78;
                    *(a1 + 678) = 0;
                    goto LABEL_160;
                  }

                  phOsalNfc_MemCopy();
                  v100 = *(a1 + 248);
                  v101 = *(a1 + 642);
                  *(a1 + 216) = v100 + v101 + *(a1 + 216) - 16;
                  v102 = 16 - v101;
                  v103 = v100 - v102;
                  v104 = v100 >= v102;
                  if (v100 >= v102)
                  {
                    v105 = (v100 - v102);
                  }

                  else
                  {
                    v105 = 0;
                  }

                  v106 = v105 + v55;
                  if (!v104)
                  {
                    v103 = 0;
                  }

                  v107 = v103 + v55;
                  if (v106 >= 0x100)
                  {
                    v55 = 0;
                  }

                  else
                  {
                    v55 = v107;
                  }

                  if (!v23)
                  {
                    *(a1 + 642) = 0;
                    goto LABEL_160;
                  }

                  v108 = 0;
                  do
                  {
                    *(v2 + v55++) = 0;
                    ++v108;
                  }

                  while (v108 < v23);
                  goto LABEL_158;
                }

                if (v24)
                {
                  phOsalNfc_MemCopy();
                  v60 = *(a1 + 692);
                  v61 = 16 * v60 - 16;
                  v62 = (v61 & 0xF0) + v55;
                  v63 = v55 + v61;
                  if (v62 >= 0x100)
                  {
                    v55 = 0;
                  }

                  else
                  {
                    v55 = v63;
                  }

                  v64 = *(a1 + 216);
                  v65 = 16 * v60 - 16;
                  v66 = (v65 & 0xFFF0) + v64;
                  v67 = v64 + v65;
                  if (v66 >= 0x10000)
                  {
                    v67 = 0;
                  }

                  *(a1 + 642) = 0;
                  *(a1 + 216) = v67 + 16 * v60 - 16;
                  goto LABEL_160;
                }

                phOsalNfc_MemCopy();
                v80 = *(a1 + 642);
                *(a1 + 216) = v4 + v80 + *(a1 + 216) - 16;
                v80 = 16 - v80;
                v81 = v4 >= v80;
                v82 = v4 - v80;
                v83 = v82;
                if (!v81)
                {
                  v83 = 0;
                }

                v84 = v83 + v55;
                if (!v81)
                {
                  v82 = 0;
                }

                v85 = v82 + v55;
                if (v84 >= 0x100)
                {
                  v55 = 0;
                }

                else
                {
                  v55 = v85;
                }

                if (v23)
                {
                  v86 = 0;
                  do
                  {
                    *(v2 + v55++) = 0;
                    ++v86;
                  }

                  while (v86 < v23);
LABEL_158:
                  *(a1 + 642) = 16 - v23;
                  phOsalNfc_MemCopy();
LABEL_160:
                  *(a1 + 266) = v55;
                  *(a1 + 526) = v55;
                  *(a1 + 279) = v21;
LABEL_214:
                  sub_297E4E1B4(2, a1, 8, 5u, "phFriNfc_Felica_HWriteDataBlk");
                  *(a1 + 208) &= 0xFCu;
                  *(a1 + 232) = 240;
                  *a1 = 6;
                  *(a1 + 264) = 260;
                  v9 = sub_297E98D38(a1, sub_297EC0B0C);
                  sub_297E4DFAC(2, a1, 8, 5u, "phFriNfc_Felica_HWriteDataBlk");
                  goto LABEL_215;
                }
              }

              *(a1 + 642) = 0;
              goto LABEL_160;
            }

            if (v73 < v21)
            {
              if (v15 - 16 + v18)
              {
                LOBYTE(v21) = v74 + 1;
              }

              else
              {
                LOBYTE(v21) = 1;
              }

              v24 = 0;
              v23 = 0;
              if (*(a1 + 678))
              {
                *(a1 + 641) = v21 - 1;
              }

              goto LABEL_68;
            }

            v23 = 0;
            if (*(a1 + 692))
            {
              *(a1 + 641) = v21 - 1;
            }

            else
            {
              LOBYTE(v21) = 1;
            }
          }

          v24 = 1;
          goto LABEL_68;
        }

        v18 = 0;
        v24 = 0;
        v23 = 0;
      }

      LOBYTE(v21) = 1;
      goto LABEL_68;
    }

    v25 = *(a1 + 248);
    v26 = *(a1 + 252);
    v27 = v25 - v26;
    if (v25 >= v26)
    {
      v28 = v25 - v26;
    }

    else
    {
      v28 = 0;
    }

    v29 = *(a1 + 692);
    if (v28 >= 16 * v29)
    {
      v33 = *(a1 + 694);
      v34 = *(a1 + 640);
      if ((v33 - v34) >= v29)
      {
        *(a1 + 279) = v29;
        if (v29)
        {
          v68 = (v29 + 1);
          if (v68 <= 2)
          {
            v68 = 2;
          }

          v69 = v68 - 1;
          v70 = v34 + 1;
          v71 = 14;
          do
          {
            *(v2 + v71) = 0x80;
            if (v70 >= 0x100)
            {
              v72 = 0;
            }

            else
            {
              v72 = v70;
            }

            *(v2 + (v71 + 1)) = v72;
            if (v71 == 0xFE)
            {
              v71 = 0;
            }

            else
            {
              v71 += 2;
            }

            ++v70;
            --v69;
          }

          while (v69);
        }

        else
        {
          v71 = 14;
        }

        phOsalNfc_MemCopy();
        v109 = *(a1 + 692);
        if (((16 * v109) & 0xF0) + v71 >= 0x100)
        {
          v110 = 0;
        }

        else
        {
          v110 = v71 + 16 * v109;
        }

        *(a1 + 266) = v110;
        *(a1 + 642) = 0;
        *(a1 + 216) = 16 * v109;
        *(a1 + 641) = v109;
        *(a1 + 526) = v110;
        *(a1 + 678) = 0;
      }

      else
      {
        *(a1 + 279) = v33 - v34;
        v35 = v33 - v34;
        if (v33 < v34)
        {
          v35 = 0;
        }

        v36 = 14;
        if (v33 > v34)
        {
          v37 = 1;
          do
          {
            *(v2 + v36) = 0x80;
            *(v2 + (v36 + 1)) = v37 + v34;
            if (v36 == 0xFE)
            {
              v36 = 0;
            }

            else
            {
              v36 += 2;
            }

            ++v37;
          }

          while (v35 >= v37);
        }

        phOsalNfc_MemCopy();
        v38 = *(a1 + 694);
        v39 = *(a1 + 640);
        v40 = v38 >= v39;
        v41 = v38 - v39;
        v42 = 16 * v41;
        v43 = (16 * v41) & 0xF0;
        if (!v40)
        {
          v43 = 0;
        }

        v44 = v43 + v36;
        if (!v40)
        {
          v42 = 0;
          LOBYTE(v41) = 0;
        }

        if (v44 >= 0x100)
        {
          v45 = 0;
        }

        else
        {
          v45 = v42 + v36;
        }

        *(a1 + 266) = v45;
        *(a1 + 216) = v42;
        *(a1 + 641) = v41;
        *(a1 + 526) = v45;
        *(a1 + 678) = 0;
        *(a1 + 642) = 0;
      }

      goto LABEL_214;
    }

    v30 = *(a1 + 684);
    if (*(a1 + 684))
    {
      v31 = v4 >> 4;
      if ((v4 & 0xF) != 0)
      {
        if ((~v4 & 0xFF0) != 0)
        {
          LOBYTE(v31) = v31 + 1;
        }

        else
        {
          LOBYTE(v31) = 0;
        }

        if (16 * v31 >= v4)
        {
          v32 = 16 * v31 - v4;
        }

        else
        {
          v32 = 0;
        }

        *(a1 + 678) = 1;
      }

      else
      {
        v32 = 0;
      }
    }

    else
    {
      v32 = 0;
      v79 = v25 >= v26;
      if (v25 >= v26)
      {
        v31 = v27 >> 4;
      }

      else
      {
        v31 = 0;
      }

      if (v79 && (v27 & 0xF) != 0)
      {
        ++v31;
        *(a1 + 678) = 1;
        if (16 * v31 >= v27)
        {
          v32 = 16 * v31 - v27;
        }

        else
        {
          v32 = 0;
        }

        *(a1 + 279) = v31;
        *(a1 + 641) = v31;
        goto LABEL_164;
      }
    }

    *(a1 + 279) = v31;
    *(a1 + 641) = v31;
    if (!v31)
    {
      v88 = 14;
LABEL_173:
      v91 = v88;
      if (v30)
      {
        phOsalNfc_MemCopy();
        if (v91 + v4 >= 0x100)
        {
          v92 = 0;
        }

        else
        {
          v92 = v91 + v4;
        }

        v93 = v4;
      }

      else
      {
        phOsalNfc_MemCopy();
        v94 = *(a1 + 248);
        v95 = *(a1 + 252);
        v96 = v94 >= v95;
        v93 = v94 - v95;
        v97 = v93;
        if (!v96)
        {
          v97 = 0;
        }

        v98 = v97 + v91;
        if (!v96)
        {
          v93 = 0;
        }

        if (v98 >= 0x100)
        {
          v92 = 0;
        }

        else
        {
          v92 = v93 + v91;
        }
      }

      *(a1 + 216) = v93;
      if (v32)
      {
        v99 = 0;
        do
        {
          *(v2 + v92++) = 0;
          ++v99;
        }

        while (v99 < v32);
        *(a1 + 642) = 16 - v32;
        phOsalNfc_MemCopy();
      }

      else
      {
        *(a1 + 642) = 0;
        *(a1 + 678) = 0;
      }

      *(a1 + 266) = v92;
      *(a1 + 526) = v92;
      goto LABEL_214;
    }

    v31 = v31;
LABEL_164:
    v87 = (*(a1 + 640) + 1);
    v88 = 14;
    do
    {
      *(v2 + v88) = 0x80;
      v89 = v88 + 1;
      if (v87 >= 0x100)
      {
        v90 = 0;
      }

      else
      {
        v90 = v87;
      }

      *(v2 + (v88 + 1)) = v90;
      v88 += 2;
      if (v89 == -1)
      {
        v88 = 0;
      }

      ++v87;
      --v31;
    }

    while (v31);
    goto LABEL_173;
  }

  v9 = sub_297EC0EEC(a1, 1);
LABEL_215:
  sub_297E4DFAC(2, a1, 8, 5u, "phFriNfc_Felica_HUpdateData");
  return v9;
}

uint64_t sub_297EC1F6C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v10 = a1;
  v9 = -1006;
  v8 = 0;
  sub_297E4E1B4(0, &v10, 8, 5u, "phFriNfc_Felica_ChkNdef");
  sub_297E57170(v10, &v8);
  v5 = 1;
  if (a3)
  {
    if (a2)
    {
      v6 = v8;
      if (v8)
      {
        *(v8 + 8) = a2;
        *(v6 + 40) = a3;
        v5 = sub_297EC2024(v6, &v9, 2);
      }
    }
  }

  sub_297E4DFAC(0, &v10, 8, 5u, "phFriNfc_Felica_ChkNdef");
  return v5;
}

uint64_t sub_297EC2024(uint64_t a1, _BYTE *a2, char a3)
{
  sub_297E4E1B4(2, a1, 8, 5u, "phFriNfc_Felica_HPollCard");
  *(a1 + 266) = 6;
  *(a1 + 268) = *a2;
  *(a1 + 269) = a2[1];
  if (*(a1 + 65))
  {
    v6 = 0;
  }

  else
  {
    v6 = 3;
  }

  *(a1 + 270) = *(a1 + 65) == 0;
  *(a1 + 271) = v6;
  *(a1 + 526) = 6;
  *(a1 + 48) = sub_297EC0534;
  *(a1 + 56) = a1;
  *a1 = a3;
  *(a1 + 232) = 240;
  *(a1 + 208) &= 0xFCu;
  v7 = sub_297E98D38(a1, sub_297EC0B0C);
  sub_297E4DFAC(2, a1, 8, 5u, "phFriNfc_Felica_HPollCard");
  return v7;
}

uint64_t sub_297EC210C(uint64_t a1)
{
  sub_297E4E1B4(2, a1, 8, 5u, "phFriNfc_Felica_HCheckManufId");
  sub_297E4E1B4(2, a1, 8, 5u, "phFriNfc_Felica_MemCompare");
  v2 = 0;
  do
  {
    v3 = *(a1 + v2 + 268);
    v4 = *(a1 + v2 + 702);
    if (v2 == 7)
    {
      break;
    }

    ++v2;
  }

  while (v3 == v4);
  sub_297E4DFAC(2, a1, 8, 5u, "phFriNfc_Felica_MemCompare");
  sub_297E4DFAC(2, a1, 8, 5u, "phFriNfc_Felica_HCheckManufId");
  if (v3 == v4)
  {
    return 0;
  }

  else
  {
    return 29;
  }
}

uint64_t sub_297EC21D4(uint64_t a1)
{
  sub_297E4E1B4(2, a1, 8, 5u, "phFriNfc_Felica_HUpdateAttrInfo");
  v2 = sub_297E9C178(a1, 0xDu);
  if (v2)
  {
    goto LABEL_2;
  }

  v3 = __rev16(*(a1 + 282));
  if (!v3)
  {
    goto LABEL_14;
  }

  v4 = *(a1 + 280);
  if (v3 < v4)
  {
    goto LABEL_14;
  }

  v5 = *(a1 + 281);
  if (v3 < v5)
  {
    goto LABEL_14;
  }

  v6 = *(a1 + 288);
  if (v6 != 15)
  {
    if (*(a1 + 288))
    {
      goto LABEL_14;
    }
  }

  v7 = *(a1 + 289);
  if (v7 > 1 || *(a1 + 284) || *(a1 + 285) || *(a1 + 286) || *(a1 + 287))
  {
    goto LABEL_14;
  }

  v10 = *(a1 + 292);
  v11 = (v10 | (*(a1 + 291) << 8)) >> 4;
  if ((v10 & 0xF) != 0)
  {
    ++v11;
  }

  if (v11 > v3 && *(a1 + 685) == 18)
  {
    sub_297E4E0B0(2, a1, 8, 2u, "phFriNfc_Felica_HUpdateAttrInfo: Current NDEF message exceeds the Maximum Tag NDEF size");
    sub_297E50EBC(2, a1, 8, 2u, "phFriNfc_Felica_HUpdateAttrInfo:Current Ndef Message size");
    sub_297E50EBC(2, a1, 8, 2u, "phFriNfc_Felica_HUpdateAttrInfo:Maximum Ndef Message size");
    *(a1 + 545) = 0;
    *(a1 + 694) = v3;
    v8 = 25;
    goto LABEL_15;
  }

  *(a1 + 690) = *(a1 + 279);
  *(a1 + 691) = v4;
  *(a1 + 692) = v5;
  *(a1 + 694) = v3;
  *(a1 + 696) = v6;
  *(a1 + 697) = v7;
  v2 = sub_297EC23D4(a1, a1 + 266, bswap32(*(a1 + 293)) >> 16);
  if (v2)
  {
LABEL_2:
    if (v2 == 28)
    {
      *(a1 + 545) = 3;
    }

LABEL_14:
    v8 = 28;
    goto LABEL_15;
  }

  v8 = 0;
  if (*(a1 + 697) == 1)
  {
    v12 = 2;
  }

  else
  {
    v12 = 3;
  }

  if (*(a1 + 697))
  {
    v13 = v12;
  }

  else
  {
    v13 = 1;
  }

  *(a1 + 545) = v13;
  *(a1 + 698) = *(a1 + 290);
  *(a1 + 699) = *(a1 + 291);
LABEL_15:
  sub_297E4DFAC(2, a1, 8, 5u, "phFriNfc_Felica_HUpdateAttrInfo");
  return v8;
}

uint64_t sub_297EC23D4(uint64_t a1, uint64_t a2, int a3)
{
  sub_297E4E1B4(2, a1, 8, 5u, "phFriNfc_Felica_HCalCheckSum");
  v6 = 0;
  v7 = 0;
  do
  {
    v8 = *(a2 + 13 + v6);
    v9 = v8 + v7;
    v10 = v7 + v8;
    if (v9 >= 0x10000)
    {
      v7 = 0;
    }

    else
    {
      v7 = v10;
    }

    ++v6;
  }

  while (v6 != 14);
  sub_297E4DFAC(2, a1, 8, 5u, "phFriNfc_Felica_HCalCheckSum");
  if (a3 == v7)
  {
    return 0;
  }

  else
  {
    return 28;
  }
}

uint64_t sub_297EC2474(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v10 = 0;
  v8 = 0u;
  v9 = 0u;
  v7 = 0u;
  sub_297E4E1B4(2, a1, 4, 5u, "phLibNfc_FelicaReqResCmd");
  if (a1 && a3)
  {
    phOsalNfc_SetMemory();
    *(a1 + 1535) = 4;
    phOsalNfc_MemCopy();
    *(a1 + 1534) = *(a3 + 18) + 2;
    LODWORD(v7) = 0;
    *&v8 = a1 + 1534;
    DWORD2(v8) = *(a3 + 18) + 2;
    *&v9 = a1 + 2064;
    DWORD2(v9) = 530;
    WORD3(v7) = 500;
    a2 = sub_297F06F3C(*(a1 + 3088), *(a1 + 1504), &v7, sub_297E5BA84, a1);
  }

  sub_297E4DFAC(2, a1, 4, 5u, "phLibNfc_FelicaReqResCmd");
  return a2;
}

uint64_t sub_297EC2594(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v10 = 0;
  sub_297E4E1B4(2, a1, 4, 5u, "phLibNfc_FelicaReqResResp");
  if (!a1)
  {
    v7 = 1;
    goto LABEL_15;
  }

  v5 = sub_297ECD484(a1, &v10, (a1 + 1504), 0);
  if (!a3 || v5)
  {
    v8 = "Felica Request Response no response received";
LABEL_14:
    sub_297E4E0B0(1, a1 + 9792, 4, 1u, v8);
    v7 = 255;
    goto LABEL_15;
  }

  if (!v10 || (v6 = *a3) == 0 || *(a3 + 8) != 11)
  {
    v8 = "Felica Invalid response buffer or response length";
    goto LABEL_14;
  }

  v7 = 255;
  if (*v6 == 11)
  {
    if (phOsalNfc_MemCompare())
    {
      v7 = 255;
    }

    else
    {
      v7 = 0;
    }
  }

LABEL_15:
  sub_297E4DFAC(2, a1, 4, 5u, "phLibNfc_FelicaReqResResp");
  return v7;
}

uint64_t sub_297EC26A8(uint64_t a1, int a2, uint64_t a3)
{
  sub_297E4E1B4(2, a1, 4, 5u, "phLibNfc_FelicaChkPresComplete");
  sub_297E4E0B0(1, a1 + 9792, 4, 4u, "Completing T3t Connect sequence");
  if (a2)
  {
    *(a1 + 2960) = &qword_2A1A928E0;
    *(a1 + 2952) = 0;
    *(a1 + 2954) = 0;
    v6 = qword_2A1A928E0;
    if (qword_2A1A928E0)
    {
      v6 = 0;
      v7 = &qword_2A1A928F0;
      do
      {
        ++v6;
        v8 = *v7;
        v7 += 2;
      }

      while (v8);
    }

    *(a1 + 2953) = v6;
    if (sub_297E5588C(a1, 0, a3) == 13)
    {
      v9 = 13;
    }

    else
    {
      v9 = 255;
    }
  }

  else
  {
    sub_297ECF0FC(a1, 0);
    v9 = 0;
  }

  sub_297E4DFAC(2, a1, 4, 5u, "phLibNfc_FelicaChkPresComplete");
  return v9;
}

uint64_t sub_297EC27A8(uint64_t a1)
{
  v4 = 0;
  sub_297E4E1B4(2, a1, 4, 5u, "phLibNfc_SendT3tPollCmd");
  if (a1 && *(a1 + 1504))
  {
    v4 = 0xFFFF;
    v2 = sub_297E9B40C(*(a1 + 3088), &v4, sub_297E5BA84, a1);
  }

  else
  {
    v2 = 1;
  }

  sub_297E4DFAC(2, a1, 4, 5u, "phLibNfc_SendT3tPollCmd");
  return v2;
}

uint64_t sub_297EC2850(uint64_t a1, uint64_t a2)
{
  sub_297E4E1B4(2, a1, 4, 5u, "phLibNfc_T3tCmdResp");
  if (!a1 || a2)
  {
    sub_297E4E0B0(2, a1, 4, 1u, "Discovery select command failed!");
    a2 = 255;
  }

  else
  {
    sub_297E4E0B0(1, a1 + 9792, 4, 4u, "Discovery select command success");
  }

  sub_297E4DFAC(2, a1, 4, 5u, "phLibNfc_T3tCmdResp");
  return a2;
}

uint64_t sub_297EC28FC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  sub_297E4E1B4(2, a1, 4, 5u, "phLibNfc_T3tChkPresComplete");
  if (a1)
  {
    sub_297E4E0B0(1, a1 + 9792, 4, 4u, "Completing T3t Connect sequence");
    sub_297ECF0FC(a1, a2);
  }

  sub_297E4DFAC(2, a1, 4, 5u, "phLibNfc_T3tChkPresComplete");
  return a2;
}

uint64_t sub_297EC299C(uint64_t a1, uint64_t a2)
{
  sub_297E4E1B4(2, a1, 4, 5u, "phLibNfc_T3tConnectComplete");
  if (a1)
  {
    sub_297E4E0B0(1, a1 + 9792, 4, 4u, "Completing T3t Connect sequence");
    sub_297EC2A2C(a1, a2);
  }

  sub_297E4DFAC(2, a1, 4, 5u, "phLibNfc_T3tConnectComplete");
  return a2;
}

uint64_t sub_297EC2A2C(uint64_t a1, uint64_t a2)
{
  v14 = 0;
  v15 = 0;
  sub_297E4E1B4(2, a1, 4, 5u, "phLibNfc_ConnectExtensionFelica_Cb");
  if (!a1)
  {
    sub_297E4E0B0(2, 0, 4, 1u, "Lower layer has returned invalid LibNfc context");
    return sub_297E4DFAC(2, a1, 4, 5u, "phLibNfc_ConnectExtensionFelica_Cb");
  }

  if (!a2)
  {
    sub_297E4E0B0(1, a1 + 9792, 4, 4u, "State machine has returned NFCSTATUS_SUCCESS");
    if (sub_297E55558(*(a1 + 3088), *(a1 + 1512)))
    {
      v4 = 0;
      *(a1 + 1504) = 0u;
    }

    else
    {
      v4 = *(a1 + 1512);
    }

    v14 = v4;
    v5 = sub_297ECD484(a1, &v15, &v14, 0);
    if (v5)
    {
      a2 = v5;
      v6 = "Mapping of Nci RemoteDev Handle to LibNfc RemoteDev handle Failed";
    }

    else
    {
      a2 = sub_297ECFA10(a1, v15, v13);
      if (!a2)
      {
        v11 = v14;
        v12 = v15;
        *(a1 + 1504) = v14;
        *v12 = *v11;
        v7 = 118;
        goto LABEL_13;
      }

      v6 = "Getting LibNfc RemoteDev Info by using LibNfc Handle Failed";
    }

    sub_297E4E0B0(1, a1 + 9792, 4, 1u, v6);
  }

  sub_297E4E0B0(1, a1 + 9792, 4, 1u, "phLibNfc_ConnectExtensionFelica_Cb: Lower layer has returned failure status");
  *(a1 + 1504) = 0;
  v7 = 119;
LABEL_13:
  if (*(a1 + 1488) == 1 && (v8 = *(a1 + 6200)) != 0)
  {
    v9 = *(a1 + 6208);
    *(a1 + 6200) = 0;
    *(a1 + 6208) = 0;
    sub_297E4E0B0(1, a1 + 9792, 4, 4u, "Invoking upper layer callback");
    sub_297E4D930(1, a1 + 9792, 4, 15, "phLibNfc_ConnectExtensionFelica_Cb");
    v8(*(a1 + 9784), v9, v15, v15, a2);
  }

  else
  {
    sub_297E4F450(*(a1 + 9784), v7, a2, v15, v15);
  }

  return sub_297E4DFAC(2, a1, 4, 5u, "phLibNfc_ConnectExtensionFelica_Cb");
}

uint64_t sub_297EC2C48(uint64_t a1, uint64_t a2, unsigned int a3)
{
  sub_297E4E1B4(2, a1, 3, 5u, "phNciNfc_TlvUtilsParseTLV");
  v6 = 1;
  v7 = "phNciNfc_TlvUtilsParseTLV: Invalid input parameter";
  if (!a2 || a3 < 2)
  {
    goto LABEL_8;
  }

  v8 = 0;
  do
  {
    v8 = (v8 + *(a2 + 1 + v8) + 2);
  }

  while (v8 < a3);
  if (v8 != a3)
  {
    v6 = 255;
    v7 = "phNciNfc_TlvUtilsParseTLV: Inconsistent tlv's!";
LABEL_8:
    sub_297E4E0B0(2, a1, 3, 1u, v7);
    goto LABEL_9;
  }

  v6 = 0;
LABEL_9:
  sub_297E4DFAC(2, a1, 3, 5u, "phNciNfc_TlvUtilsParseTLV");
  return v6;
}

uint64_t sub_297EC2D1C(uint64_t a1, uint64_t *a2, _BYTE *a3, _BYTE *a4, void *a5)
{
  sub_297E4E1B4(2, a1, 3, 5u, "phNciNfc_TlvUtilsGetNxtTlv");
  if (a2 && a3 && a4)
  {
    v10 = *a2;
    if (*a2 && (v11 = *(a2 + 3), v11 >= 2))
    {
      v12 = *(a2 + 2);
      if (v12 + 2 <= v11)
      {
        v14 = 0;
        *(a2 + 2) = v12 + 1;
        *a3 = *(v10 + v12);
        v16 = *a2;
        v17 = *(a2 + 2);
        *(a2 + 2) = v17 + 1;
        *a4 = *(v16 + v17);
        *a5 = *a2 + *(a2 + 2);
        *(a2 + 2) += *a4;
        goto LABEL_11;
      }

      v13 = "phNciNfc_TlvUtilsGetNxtTlv: Invalid Tlv buffer offset";
    }

    else
    {
      v13 = "phNciNfc_TlvUtilsGetNxtTlv: Invalid tlv buffer or its length";
    }

    sub_297E4E0B0(2, a1, 3, 1u, v13);
    v14 = 255;
  }

  else
  {
    v14 = 1;
    sub_297E4E0B0(2, a1, 3, 1u, "phNciNfc_TlvUtilsGetNxtTlv: Invalid input parameter");
  }

LABEL_11:
  sub_297E4DFAC(2, a1, 3, 5u, "phNciNfc_TlvUtilsGetNxtTlv");
  return v14;
}

void *phLibNfc_Mgt_GetMwVersionStr()
{
  phOsalNfc_MemCopy();
  strcpy(byte_2A18BE741, " 5.1_R4.10");
  return &unk_2A18BE737;
}

uint64_t phLibNfc_Mgt_ConfigureDriver(uint64_t a1, uint64_t *a2)
{
  v23 = 0;
  v24 = 0;
  v21 = 0u;
  v22 = 0u;
  v19 = 0u;
  v20 = 0u;
  v17 = 0u;
  v18 = 0u;
  memset(v16, 0, sizeof(v16));
  sub_297E4E1B4(0, &v23, 4, 5u, "phLibNfc_Mgt_ConfigureDriver");
  if (!a1 || !a2 || *(a1 + 8) == 8)
  {
    v4 = "ConfigureDriver:Invalid Parameter";
LABEL_5:
    v5 = 1;
    sub_297E4E0B0(0, &v23, 4, 1u, v4);
LABEL_6:
    sub_297E5AE60(v23, 1);
    sub_297E96818(v23, v5);
    goto LABEL_7;
  }

  v8 = (a1 + 24);
  v7 = *(a1 + 24);
  if (v7 >= 2)
  {
    v4 = "ConfigureDriver:Invalid Controller type";
    goto LABEL_5;
  }

  sub_297E963C0(v7);
  sub_297E4D930(1, a1 + 24, 4, 0, "phLibNfc_Mgt_ConfigureDriver");
  phOsalNfc_SetMemory();
  LODWORD(v9) = *(a1 + 8);
  if (v9 > 3)
  {
    if (v9 <= 5)
    {
      if (v9 == 4)
      {
        v10 = 0;
        *&v16[1] = 0;
        *(&v16[1] + 1) = "/dev/tty.p2m";
        LOBYTE(v9) = 4;
      }

      else
      {
        v10 = "/dev/tty.p2m";
        *&v16[1] = "/dev/tty.p2m";
        *(&v16[1] + 1) = "/dev/tty.p2m";
      }

      goto LABEL_25;
    }

    if (v9 == 6)
    {
      v10 = *(a1 + 16);
      *&v16[1] = v10;
      *(&v16[1] + 8) = *(a1 + 32);
      goto LABEL_25;
    }

    if (v9 == 7)
    {
      v10 = *(a1 + 16);
      v9 = *(a1 + 32);
      *&v16[1] = v10;
      *(&v16[1] + 1) = v9;
      LOBYTE(v9) = 7;
      goto LABEL_25;
    }

    goto LABEL_40;
  }

  if (v9 > 1)
  {
    v10 = *(a1 + 16);
    *&v16[1] = v10;
    goto LABEL_25;
  }

  if (v9)
  {
    if (v9 == 1)
    {
      v10 = *(a1 + 16);
      v9 = *(a1 + 32);
      *&v16[1] = v10;
      *(&v16[1] + 1) = v9;
      LOBYTE(v9) = 1;
LABEL_25:
      BYTE8(v17) = v9;
      goto LABEL_26;
    }

LABEL_40:
    v10 = *&v16[1];
    goto LABEL_26;
  }

  v10 = "/dev/tty.p2m";
  *&v16[1] = "/dev/tty.p2m";
LABEL_26:
  v11 = BYTE8(v17);
  v12 = *(a1 + 68);
  DWORD2(v16[2]) = *(a1 + 24);
  DWORD2(v18) = v12;
  byte_2A18BD388 = 1;
  if (BYTE8(v17) == 1 && v10)
  {
    if (!strcmp(v10, "I2C") || !strcmp(v10, "ZYNQ_SPMI") || !strcmp(v10, "ZYNQ_SPMI_GOANNA") || !strcmp(v10, "SPMI"))
    {
      v11 = 6;
    }

    else
    {
      v11 = 1;
    }
  }

  v13 = *(a1 + 48);
  v14 = *(a1 + 56);
  *&v16[0] = *a1;
  *(&v16[0] + 1) = v13;
  *&v17 = v14;
  phOsalNfc_SetMemory();
  *(&v21 + 4) = 0;
  LOBYTE(v21) = 1;
  LODWORD(v19) = 2;
  sub_297EE07F8(0, *(a1 + 24));
  v15 = sub_297E4F450(0, 1, *(a1 + 24), a2, v16);
  if (v15)
  {
    v5 = v15;
    sub_297E4E0B0(1, a1 + 24, 4, 1u, "State Transition failed");
    sub_297E96474(*v8);
    sub_297E4D930(0, &v23, 4, 0, "phLibNfc_Mgt_ConfigureDriver");
    goto LABEL_6;
  }

  sub_297E966F4(1, a1 + 24, 4, 4u, "phLibNfc_Mgt_ConfigureDriver: Driver Handle Returned");
  v23 = *a2;
  sub_297E966F4(1, a1 + 24, 4, 4u, "hDriverHandle");
  sub_297E9F198(*a2, *v8, v11);
  sub_297E8F848(*v8);
  sub_297E5D114(*a2, &v24);
  if (v24)
  {
    *(v24 + 192) = *(a1 + 68);
  }

  else
  {
    sub_297E4E0B0(0, &v23, 4, 1u, "Invalid input parameter");
  }

  sub_297E4D930(0, &v23, 4, 0, "phLibNfc_Mgt_ConfigureDriver");
  v5 = 0;
LABEL_7:
  sub_297E4DFAC(0, &v23, 4, 5u, "phLibNfc_Mgt_ConfigureDriver");
  return v5;
}

uint64_t phLibNfc_Mgt_UnConfigureDriver(uint64_t a1)
{
  v11 = a1;
  v10 = 0;
  sub_297E4D930(0, &v11, 4, 1, "phLibNfc_Mgt_UnConfigureDriver");
  sub_297E4E1B4(0, &v11, 4, 5u, "phLibNfc_Mgt_UnConfigureDriver");
  sub_297E966F4(0, &v11, 4, 4u, "phLibNfc_Mgt_UnConfigureDriver:hDriverHandle");
  v1 = sub_297E9F738(v11);
  if (v11)
  {
    v2 = v1 == 0;
  }

  else
  {
    v2 = 0;
  }

  if (!v2)
  {
    sub_297E4E0B0(0, &v11, 4, 1u, "Invalid input parameter");
    if (!v1)
    {
      goto LABEL_11;
    }

    goto LABEL_10;
  }

  v3 = sub_297E4F450(v11, 2, 0, &v11, 0);
  if (v3 == 147)
  {
    v1 = 138;
LABEL_10:
    sub_297E5AE60(v11, 2);
    sub_297E96818(v11, v1);
    goto LABEL_11;
  }

  v1 = v3;
  if (v3)
  {
    goto LABEL_10;
  }

  v5 = 0;
  v10 = 255;
  v6 = 1;
  while (1)
  {
    v7 = v6;
    v8 = &unk_2A18BDDC0 + 112 * v5;
    if (*v8 == v11)
    {
      break;
    }

    v6 = 0;
    v5 = 1;
    if ((v7 & 1) == 0)
    {
      v9 = 255;
      goto LABEL_17;
    }
  }

  v9 = *(v8 + 2);
  v10 = *(v8 + 2);
LABEL_17:
  sub_297E96474(v9);
  sub_297E8F978(v11);
  sub_297E9F198(0, v9, 8);
  v1 = 0;
LABEL_11:
  sub_297E4DFAC(1, &v10, 4, 5u, "phLibNfc_Mgt_UnConfigureDriver");
  return v1;
}

uint64_t phLibNfc_Mgt_ConfigureMwLogging(uint64_t a1, uint64_t a2)
{
  v12 = a1;
  v3 = 1;
  sub_297E4D930(0, &v12, 4, 2, "phLibNfc_Mgt_ConfigureMwLogging");
  sub_297E4E1B4(0, &v12, 4, 5u, "phLibNfc_Mgt_ConfigureMwLogging");
  v4 = 0;
  while (1)
  {
    v5 = &unk_2A18BDDC0 + 112 * v4;
    if (*v5 == v12)
    {
      break;
    }

    v6 = v3;
    v3 = 0;
    v4 = 1;
    if ((v6 & 1) == 0)
    {
      goto LABEL_11;
    }
  }

  v7 = *(v5 + 2);
  if (v7 > 1)
  {
LABEL_11:
    v9 = 0;
    if (!a2)
    {
LABEL_10:
      v10 = 1;
      sub_297E4E0B0(0, &v12, 4, 1u, "Invalid input parameter");
      goto LABEL_13;
    }
  }

  else
  {
    v8 = *(&unk_2A18BDDC0 + 14 * v7 + 10);
    if (v8)
    {
      v9 = v8 + 120;
    }

    else
    {
      v9 = 0;
    }

    if (!a2)
    {
      goto LABEL_10;
    }
  }

  v10 = sub_297E4F450(v12, 3, 0, a2, 0);
LABEL_13:
  sub_297E4DFAC(0, &v12, 4, 5u, "phLibNfc_Mgt_ConfigureMwLogging");
  sub_297E4D930(0, &v12, 4, 2, "phLibNfc_Mgt_ConfigureMwLogging");
  if (v10 && v9)
  {
    *(v9 + 36) = 2;
    sub_297E96818(v12, v10);
  }

  return v10;
}

uint64_t phLibNfc_Mgt_Initialize(uint64_t a1, int *a2, uint64_t a3, uint64_t a4)
{
  Memory_Typed = 0;
  v33 = a1;
  v31 = 8;
  v30 = 0;
  v7 = 1;
  sub_297E4D930(0, &v33, 4, 3, "phLibNfc_Mgt_Initialize");
  sub_297E4E1B4(0, &v33, 4, 5u, "phLibNfc_Mgt_Initialize");
  v8 = 0;
  while (1)
  {
    v9 = &unk_2A18BDDC0 + 112 * v8;
    if (*v9 == v33)
    {
      break;
    }

    v10 = v7;
    v7 = 0;
    v8 = 1;
    if ((v10 & 1) == 0)
    {
      v11 = 255;
      goto LABEL_6;
    }
  }

  v11 = *(v9 + 2);
LABEL_6:
  sub_297E5F164(v33, &v31);
  sub_297E4F0E8(v33, &Memory_Typed);
  sub_297E5D114(v33, &v30);
  phOsalNfc_SetMemory();
  if (!a2 || !a3 || !v33 || *a2 > 0xF || a2[6] > 1 || (v12 = a2[7], v12 >= 3))
  {
    v13 = 1;
    sub_297E4E0B0(0, &v33, 4, 1u, "Invalid input parameter");
    sub_297E4D930(0, &v33, 4, 3, "phLibNfc_Mgt_Initialize");
    goto LABEL_19;
  }

  if (v11 == 1)
  {
    if (v12 != 1)
    {
      goto LABEL_14;
    }

LABEL_22:
    sub_297E4E0B0(0, &v33, 4, 1u, "Feature not supported");
    sub_297E4D930(0, &v33, 4, 3, "phLibNfc_Mgt_Initialize");
    v13 = 51;
    goto LABEL_19;
  }

  if (v12 == 2)
  {
    goto LABEL_22;
  }

LABEL_14:
  if (!v30)
  {
    sub_297E4E0B0(0, &v33, 4, 1u, "Invalid IOCTL context");
LABEL_40:
    v13 = 255;
    goto LABEL_19;
  }

  if (!Memory_Typed)
  {
    sub_297E50EBC(0, &v33, 4, 4u, "**** LibNfc Major version **** ");
    sub_297E50EBC(0, &v33, 4, 4u, "**** LibNfc Minor version **** ");
    sub_297E50EBC(0, &v33, 4, 4u, "**** MW major version **** ");
    sub_297E50EBC(0, &v33, 4, 4u, "**** MW Minor version **** ");
    if ((v31 & 0xFFFFFFFD) != 4 && phTmlNfc_ConfigHsuBaudRate())
    {
      v15 = "Init- Set Default Baud Rate FAILED,ConfigHsuBaudRate Status";
LABEL_39:
      sub_297E50EBC(0, &v33, 4, 1u, v15);
      sub_297E4D930(0, &v33, 4, 3, "phLibNfc_Mgt_Initialize");
      goto LABEL_40;
    }

    sub_297E9F888(v33, 0);
    sub_297E50EBC(0, &v33, 4, 4u, "phLibNfc_Mgt_Initialize : Success Config Hsu Baud Rate = ");
    if (v11 == 1 && a2[7])
    {
      v16 = 0;
    }

    else
    {
      if (*(v30 + 192) == 1)
      {
        v18 = phTmlNfc_IoCtl();
        v16 = 0;
      }

      else
      {
        v18 = phTmlNfc_IoCtl();
        v16 = v18 == 0;
      }

      if (v18)
      {
        v15 = "phLibNfc_Mgt_Initialize:NFCC Power On Failed!!,phTmlNfc_IoCtl Return Status =";
        goto LABEL_39;
      }
    }

    if (a2[8])
    {
      phOsalNfc_Delay();
    }

    Memory_Typed = phOsalNfc_GetMemory_Typed();
    if (Memory_Typed)
    {
      if (v11 == 1)
      {
        v19 = "####Secondary NFCC, DriverHandle";
      }

      else
      {
        v19 = "####Primary NFCC, DriverHandle";
      }

      if (v11 == 1)
      {
        v20 = "####Secondary NFCC, LIBNFC context";
      }

      else
      {
        v20 = "####Primary NFCC, LIBNFC context";
      }

      sub_297E966F4(0, &v33, 4, 4u, v19);
      sub_297E966F4(0, &v33, 4, 4u, v20);
      sub_297E9F3BC(v33, Memory_Typed);
      phOsalNfc_SetMemory();
      v21 = Memory_Typed;
      v22 = Memory_Typed + 9782;
      v23 = Memory_Typed + 5448;
      *(Memory_Typed + 1048) |= 0x40000u;
      *(v21 + 1055) = 1;
      *(v21 + 1472) = 0;
      *(v21 + 1036) = 0;
      *(v21 + 3196) = 3;
      *(v21 + 765) = 3;
      *v21 = 514;
      v24 = v33;
      *(v21 + 3000) = v33;
      *(v21 + 3104) = 2;
      v25 = *a2;
      *(v21 + 3112) = a2[1];
      *(v21 + 488) = v25 & 0xB;
      *(v21 + 584) = 0xFFFFFFFFFFFFLL;
      *(v21 + 756) = 0;
      *(v21 + 512) = 0;
      *(v21 + 745) = 0;
      *(v21 + 2976) = 0;
      *(v21 + 492) = *(a2 + 37) == 1;
      *(v21 + 744) = 0;
      v26 = a2[7];
      *(v21 + 5452) = a2[6];
      *(v21 + 3204) = v26;
      *(v21 + 3224) = *(v30 + 192);
      *(v21 + 2932) = 1;
      *v23 = 0;
      *(v23 + 8) = 0;
      *(v21 + 3209) = 0;
      *(v21 + 3264) = 0;
      *(v23 + 629) = 0;
      *v22 = 0;
      *(v21 + 9784) = v24;
      *(v21 + 9792) = v11;
      *(v22 + 15) = *(a2 + 36);
      v27 = sub_297E4F450(v24, 5, 0, &v33, 0);
      if (v27 == 13)
      {
        v28 = Memory_Typed;
        *(Memory_Typed + 6104) = a3;
        *(v28 + 6112) = a4;
        *(v28 + 6568) = *(a2 + 2);
        sub_297ECABF8(v28);
        *(Memory_Typed + 9784) = v33;
        v13 = 13;
        goto LABEL_20;
      }

      v29 = v27;
      phTmlNfc_ReadAbort();
      sub_297E50EBC(0, &v33, 4, 1u, "phLibNfc_Mgt_Initialize: received other than NFCSTATUS_PENDING, Status Rxd=");
      if (Memory_Typed)
      {
        phOsalNfc_FreeMemory();
        sub_297E9F3BC(v33, 0);
      }

      Memory_Typed = 0;
      if (v29 == 179)
      {
        v13 = 180;
      }

      else
      {
        v13 = 255;
      }
    }

    else
    {
      sub_297E4E0B0(0, &v33, 4, 1u, "Failed to allocate memory, Insufficient Resources");
      v13 = 12;
    }

    sub_297E4D930(0, &v33, 4, 3, "phLibNfc_Mgt_Initialize");
    if (v16)
    {
      phTmlNfc_IoCtl();
    }

    goto LABEL_19;
  }

  if (*(Memory_Typed + 6104))
  {
    sub_297E4E0B0(0, &v33, 4, 2u, "Libnfc Stack busy - Init callback pending");
    sub_297E4D930(0, &v33, 4, 3, "phLibNfc_Mgt_Initialize");
    v13 = 111;
  }

  else
  {
    if (*(Memory_Typed + 6078) == 1 || *(Memory_Typed + 6079) == 1)
    {
      v17 = "phLibNfc_Mgt_Initialize:ESE in Download mode has to be disabled before MW Init";
    }

    else
    {
      if (*(Memory_Typed + 6081) != 1 && *(Memory_Typed + 6082) != 1)
      {
        sub_297E4E0B0(0, &v33, 4, 4u, "Stack already initialized");
        sub_297E4D930(0, &v33, 4, 3, "phLibNfc_Mgt_Initialize");
        v13 = 50;
        goto LABEL_19;
      }

      v17 = "phLibNfc_Mgt_Initialize:SMB logging in Download mode has to be disabled before MW Init";
    }

    sub_297E4E0B0(0, &v33, 4, 1u, v17);
    sub_297E4D930(0, &v33, 4, 3, "phLibNfc_Mgt_Initialize");
    v13 = 147;
  }

LABEL_19:
  sub_297E5AE60(v33, 5);
  sub_297E96818(v33, v13);
LABEL_20:
  sub_297E4DFAC(0, &v33, 4, 5u, "phLibNfc_Mgt_Initialize");
  return v13;
}

uint64_t phLibNfc_Mgt_DeInitialize(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  v27 = a1;
  v26 = a3;
  v25 = 0;
  v24 = 8;
  sub_297E4D930(0, &v27, 4, 116, "phLibNfc_Mgt_DeInitialize");
  sub_297E4E1B4(0, &v27, 4, 5u, "phLibNfc_Mgt_DeInitialize");
  sub_297E5F164(v27, &v24);
  v7 = sub_297E4F050(v27, &v25);
  v8 = v27;
  if (!v27)
  {
    v7 = 1;
    sub_297E4E0B0(0, &v27, 4, 1u, "Invalid input parameter");
    goto LABEL_46;
  }

  if (!v7)
  {
    v9 = v25;
    if (v25)
    {
      if (*(v25 + 6078) == 1 || *(v25 + 6081) == 1 || *(v25 + 6082) == 1 || *(v25 + 6079) == 1)
      {
        v7 = 49;
LABEL_46:
        sub_297E4D930(0, &v27, 4, 116, "phLibNfc_Mgt_DeInitialize");
        sub_297E5AE60(v27, 112);
        sub_297E96818(v27, v7);
        goto LABEL_47;
      }

      *(v25 + 9778) = 0;
      if (!a3 || (v7 = 0, (v24 & 0xFFFFFFFD) != 4))
      {
        v17 = sub_297E4F450(v8, 112, 0, &v27, 0);
        if (v17 == 13)
        {
          v9 = v25;
          if (*(v25 + 9798) == 1)
          {
            v7 = 13;
            v10 = 1;
LABEL_41:
            if (!a2 && (v10 & 1) != 0)
            {
              v7 = 0;
              goto LABEL_46;
            }

            if (v10)
            {
              goto LABEL_45;
            }

            v9 = v25;
LABEL_49:
            if (*(v9 + 3224) == 1)
            {
              v7 = 288;
            }

            else
            {
              v7 = 0;
            }

            *(v9 + 6184) = a2;
            *(v9 + 6192) = a4;
            if (sub_297E4F450(v27, 113, v7, 0, &v26))
            {
              sub_297E4E0B0(0, &v27, 4, 2u, "State Machine has rejected the event!!!");
              sub_297EE17E4(v27, 1);
              sub_297EE1720(v27, 0);
              v20 = v25;
              if (v25)
              {
                v21 = 0;
                v22 = 0;
                do
                {
                  v23 = *(&unk_2A18BDDC0 + 14 * v22 + 2);
                  if (v21)
                  {
                    break;
                  }

                  v21 = 1;
                  v22 = 1;
                }

                while (v23 != v25);
                if (v23 == v25)
                {
                  sub_297EA7418(v25);
                  sub_297E5A3A8(v27, 0);
                  sub_297F080D4(*(v25 + 3088), 2, 0, 0);
                  v20 = v25;
                  *(v25 + 3088) = 0;
                }
              }
            }

            else
            {
              v20 = v25;
            }

            sub_297EA9F80(v20);
            v25 = 0;
            sub_297E9F3BC(v27, 0);
            goto LABEL_46;
          }

          *(v25 + 6184) = a2;
          *(v9 + 6192) = a4;
          *(v9 + 488) = 16;
          v7 = 13;
          v10 = 1;
LABEL_14:
          v11 = *(v9 + 1496);
          if (v11 && v11 != 0xFFFFFFFFFFFFLL)
          {
            phOsalNfc_Timer_Delete();
            v9 = v25;
            *(v25 + 1496) = 0xFFFFFFFFFFFFLL;
          }

          v12 = *(v9 + 768);
          if (v12 && v12 != 0xFFFFFFFFFFFFLL)
          {
            phOsalNfc_Timer_Delete();
            v9 = v25;
            *(v25 + 768) = 0xFFFFFFFFFFFFLL;
          }

          v13 = *(v9 + 512);
          if (v13)
          {
            v14 = v13[105];
            if (v14 && v14 != 0xFFFFFFFFFFFFLL)
            {
              phOsalNfc_Timer_Stop();
              phOsalNfc_Timer_Delete();
              v13[105] = 0xFFFFFFFFFFFFLL;
            }

            v15 = v13[107];
            if (v15 && v15 != 0xFFFFFFFFFFFFLL)
            {
              phOsalNfc_Timer_Stop();
              phOsalNfc_Timer_Delete();
              v13[107] = 0xFFFFFFFFFFFFLL;
            }

            v16 = v13[109];
            if (v16 && v16 != 0xFFFFFFFFFFFFLL)
            {
              phOsalNfc_Timer_Stop();
              phOsalNfc_Timer_Delete();
              sub_297E4E0B0(0, &v27, 4, 4u, "phLibNfc_Mgt_DeInitialize : HCI Command Response timer deleted successfully");
              v13[109] = 0;
            }
          }

          goto LABEL_41;
        }

        v7 = v17;
        if (v17 == 49)
        {
          goto LABEL_46;
        }

        if (v17 == 111)
        {
          v18 = v25;
          if (!*(v25 + 3208) || *(v25 + 9798) == 1)
          {
            v7 = 111;
            goto LABEL_46;
          }

          v10 = 1;
          *(v25 + 9798) = 1;
          *(v18 + 9800) = a2;
          *(v18 + 9808) = a4;
          v7 = 13;
          goto LABEL_41;
        }

        v9 = v25;
      }

      if (*(v9 + 9798) == 1)
      {
        goto LABEL_49;
      }

      v10 = 0;
      goto LABEL_14;
    }
  }

LABEL_45:
  if (v7 != 13)
  {
    goto LABEL_46;
  }

LABEL_47:
  sub_297E4DFAC(0, &v27, 4, 5u, "phLibNfc_Mgt_DeInitialize");
  return v7;
}

uint64_t phLibNfc_Mgt_VenResetStatus(uint64_t a1, unsigned int a2)
{
  v22 = 0;
  v23 = a1;
  v21 = 0;
  v3 = 1;
  sub_297E4D930(0, &v23, 4, 129, "phLibNfc_Mgt_VenResetStatus");
  sub_297E4E1B4(0, &v23, 4, 5u, "phLibNfc_Mgt_VenResetStatus");
  v4 = 0;
  while (1)
  {
    v5 = &unk_2A18BDDC0 + 112 * v4;
    if (*v5 == v23)
    {
      break;
    }

    v6 = v3;
    v3 = 0;
    v4 = 1;
    if ((v6 & 1) == 0)
    {
      goto LABEL_9;
    }
  }

  v7 = *(v5 + 2);
  if (v7 > 1)
  {
LABEL_9:
    v9 = 0;
    goto LABEL_10;
  }

  v8 = *(&unk_2A18BDDC0 + 14 * v7 + 10);
  if (v8)
  {
    v9 = v8 + 120;
  }

  else
  {
    v9 = 0;
  }

LABEL_10:
  sub_297E67F6C(v23, &v21);
  v10 = 49;
  if (!sub_297E4F050(v23, &v22) && v22)
  {
    v11 = *(v22 + 3232);
    if (v11)
    {
      v12 = v11 == 0xFFFFFFFFFFFFLL;
    }

    else
    {
      v12 = 1;
    }

    if (!v12)
    {
      phOsalNfc_Timer_Stop();
      phOsalNfc_Timer_Delete();
      *(v22 + 3232) = 0xFFFFFFFFFFFFLL;
    }

    if (v21)
    {
      v13 = *(v21 + 48);
      if (v13)
      {
        v14 = *(v13 + 72);
        if (v14 && v14 != 0xFFFFFFFFFFFFLL)
        {
          phOsalNfc_Timer_Stop();
        }
      }
    }

    v16 = 0x133013201310000uLL >> (16 * a2);
    if (a2 >= 4)
    {
      LOWORD(v16) = 1;
    }

    v17 = v22;
    v18 = *(v22 + 3216);
    if (v18 == sub_297EA9708)
    {
      *(v22 + 3216) = 0;
      v19 = sub_297EA9800(v17, v16);
    }

    else if (v18 == sub_297EA9948)
    {
      *(v22 + 3216) = 0;
      v19 = sub_297EA9A40(v17, v16);
    }

    else if (v18 == sub_297E89A5C)
    {
      *(v22 + 3216) = 0;
      v19 = sub_297E8A420(v17, v16);
    }

    else if (v18 == sub_297E89B74)
    {
      *(v22 + 3216) = 0;
      v19 = sub_297E8A594(v17, v16);
    }

    else if (v18 == sub_297E89C8C)
    {
      *(v22 + 3216) = 0;
      v19 = sub_297E8A708(v17, v16);
    }

    else if (v18 == sub_297E89DA4)
    {
      *(v22 + 3216) = 0;
      v19 = sub_297E8A87C(v17, v16);
    }

    else if (v18 == sub_297E89EBC)
    {
      *(v22 + 3216) = 0;
      v19 = sub_297E8A9F4(v17, v16);
    }

    else if (v18 == phDnldNfc_eSEPwrCfgVenResetTimeoutCb)
    {
      *(v22 + 3216) = 0;
      v19 = phDnldNfc_eSEPwrCfgAfterVenReset(v17, v16);
    }

    else
    {
      if (v18 != phDnldNfc_eSESmbCfgVenResetTimeoutCb)
      {
        v10 = 255;
        goto LABEL_46;
      }

      *(v22 + 3216) = 0;
      v19 = phDnldNfc_eSESmbCfgAfterVenReset(v17, v16);
    }

    v10 = v19;
  }

LABEL_46:
  sub_297E4D930(0, &v23, 4, 129, "phLibNfc_Mgt_VenResetStatus");
  sub_297E4DFAC(0, &v23, 4, 5u, "phLibNfc_Mgt_VenResetStatus");
  if (v10 && v9)
  {
    *(v9 + 36) = 129;
    sub_297E96818(v23, v10);
  }

  return v10;
}

uint64_t phLibNfc_Mgt_ConfigureHsuParams(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v11 = 0;
  v12 = a1;
  sub_297E4D930(0, &v12, 4, 4, "phLibNfc_Mgt_ConfigureHsuParams");
  sub_297E4E1B4(0, &v12, 4, 5u, "phLibNfc_Mgt_ConfigureHsuParams");
  v7 = sub_297E4F050(v12, &v11);
  if (v7)
  {
    v8 = 1;
  }

  else
  {
    v8 = v11 == 0;
  }

  if (!v8)
  {
    if (!a2 || !a3)
    {
      sub_297E4E0B0(0, &v12, 4, 2u, "phLibNfc_Mgt_ConfigureHsuParams: Invalid param");
      sub_297E4DFAC(0, &v12, 4, 5u, "phLibNfc_Mgt_ConfigureHsuParams");
      sub_297E4D930(0, &v12, 4, 4, "phLibNfc_Mgt_ConfigureHsuParams");
      v7 = 1;
LABEL_14:
      sub_297E5AE60(v12, 6);
      sub_297E96818(v12, v7);
      return v7;
    }

    v7 = sub_297E4F450(v12, 6, 0, a2, 0);
    if (v7 == 13)
    {
      v9 = v11;
      *(v11 + 6552) = a3;
      *(v9 + 6560) = a4;
      sub_297E4DFAC(0, &v12, 4, 5u, "phLibNfc_Mgt_ConfigureHsuParams");
      return v7;
    }
  }

  sub_297E4DFAC(0, &v12, 4, 5u, "phLibNfc_Mgt_ConfigureHsuParams");
  if (v7 != 13)
  {
    sub_297E4D930(0, &v12, 4, 4, "phLibNfc_Mgt_ConfigureHsuParams");
    if (v7)
    {
      goto LABEL_14;
    }
  }

  return v7;
}

uint64_t phLibNfc_Mgt_ConfigurePowerMode(uint64_t a1, int a2, uint64_t a3, uint64_t a4)
{
  v12 = a1;
  v11 = a2;
  v10 = 0;
  sub_297E4D930(0, &v12, 4, 5, "phLibNfc_Mgt_ConfigurePowerMode");
  sub_297E4E1B4(0, &v12, 4, 5u, "phLibNfc_Mgt_ConfigurePowerMode");
  v6 = sub_297E4F050(v12, &v10);
  if (v6)
  {
    v7 = 1;
  }

  else
  {
    v7 = v10 == 0;
  }

  if (!v7)
  {
    if (!a3)
    {
      v6 = 1;
      sub_297E4E0B0(0, &v12, 4, 1u, "phLibNfc_Mgt_ConfigurePowerMode: Invalid call back function passed");
      goto LABEL_16;
    }

    if (v10[817] || v10[793] || v10[795] || v10[835])
    {
      sub_297E4E0B0(0, &v12, 4, 2u, "phLibNfc_Mgt_ConfigurePowerMode: Wired mode/SetMode API in progress");
      v6 = 111;
LABEL_16:
      sub_297E4DFAC(0, &v12, 4, 5u, "phLibNfc_Mgt_ConfigurePowerMode");
      sub_297E4D930(0, &v12, 4, 5, "phLibNfc_Mgt_ConfigurePowerMode");
LABEL_17:
      sub_297E5AE60(v12, 7);
      sub_297E96818(v12, v6);
      return v6;
    }

    v6 = sub_297E4F450(v12, 7, 0, &v11, 0);
    if (v6 == 13)
    {
      v9 = v10;
      v10[829] = a3;
      v9[830] = a4;
      sub_297E4DFAC(0, &v12, 4, 5u, "phLibNfc_Mgt_ConfigurePowerMode");
      return v6;
    }
  }

  sub_297E4DFAC(0, &v12, 4, 5u, "phLibNfc_Mgt_ConfigurePowerMode");
  if (v6 != 13)
  {
    sub_297E4D930(0, &v12, 4, 5, "phLibNfc_Mgt_ConfigurePowerMode");
    if (v6)
    {
      goto LABEL_17;
    }
  }

  return v6;
}

uint64_t phLibNfc_Mgt_GeneralNtfRegister(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v11 = 0;
  v12 = a1;
  sub_297E4D930(0, &v12, 4, 43, "phLibNfc_Mgt_GeneralNtfRegister");
  sub_297E4E1B4(0, &v12, 4, 5u, "phLibNfc_Mgt_GeneralNtfRegister");
  v5 = sub_297E4F050(v12, &v11);
  if (v5)
  {
    v6 = 1;
  }

  else
  {
    v6 = v11 == 0;
  }

  if (v6)
  {
    v7 = v5;
    v8 = "phLibNfc_Mgt_GeneralNtfRegister: LIBNFC Not Initialized";
LABEL_11:
    sub_297E4E0B0(0, &v12, 4, 1u, v8);
    goto LABEL_12;
  }

  if (!a2)
  {
    v8 = "phLibNfc_Mgt_GeneralNtfRegister: Invalid input parameters";
    v7 = 1;
    goto LABEL_11;
  }

  v7 = sub_297E4F450(v12, 46, 0, 0, 0);
  if (!v7)
  {
    v9 = v11;
    *(v11 + 6568) = a2;
    *(v9 + 6576) = a3;
  }

LABEL_12:
  sub_297E4DFAC(0, &v12, 4, 5u, "phLibNfc_Mgt_GeneralNtfRegister");
  sub_297E4D930(0, &v12, 4, 43, "phLibNfc_Mgt_GeneralNtfRegister");
  if (v7)
  {
    sub_297E5AE60(v12, 46);
    sub_297E96818(v12, v7);
  }

  return v7;
}

uint64_t phLibNfc_Mgt_ConfigRoutingTable(uint64_t a1, int a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v15 = a1;
  v14 = a2;
  v13 = 0;
  sub_297E4D930(0, &v15, 4, 38, "phLibNfc_Mgt_ConfigRoutingTable");
  sub_297E4E1B4(0, &v15, 4, 5u, "phLibNfc_Mgt_ConfigRoutingTable");
  v9 = sub_297E4F050(v15, &v13);
  if (v9)
  {
    v10 = 1;
  }

  else
  {
    v10 = v13 == 0;
  }

  if (v10)
  {
    goto LABEL_6;
  }

  if (!a2 || !a3 || !a4)
  {
    v9 = 1;
    sub_297E4E0B0(0, &v15, 4, 1u, "Invalid input parameters received");
    goto LABEL_14;
  }

  if (*(v13 + 2994) != 1)
  {
    v9 = sub_297E4F450(v15, 40, 0, &v14, a3);
    if (v9 == 147)
    {
      sub_297E4E0B0(0, &v15, 4, 2u, "State machine status is NFCSTATUS_REJECTED");
      v9 = 255;
      goto LABEL_14;
    }

    if (v9 == 13)
    {
      v12 = v13;
      *(v13 + 6504) = a4;
      *(v12 + 6512) = a5;
      sub_297E4DFAC(0, &v15, 4, 5u, "phLibNfc_Mgt_ConfigRoutingTable");
      return v9;
    }

LABEL_6:
    sub_297E4DFAC(0, &v15, 4, 5u, "phLibNfc_Mgt_ConfigRoutingTable");
    if (v9 == 13)
    {
      return v9;
    }

    goto LABEL_15;
  }

  sub_297E4E0B0(0, &v15, 4, 1u, "phLibNfc_Mgt_ConfigRoutingTable: Feature not supported");
  v9 = 51;
LABEL_14:
  sub_297E4DFAC(0, &v15, 4, 5u, "phLibNfc_Mgt_ConfigRoutingTable");
LABEL_15:
  sub_297E4D930(0, &v15, 4, 38, "phLibNfc_Mgt_ConfigRoutingTable");
  sub_297E5AE60(v15, 40);
  sub_297E96818(v15, v9);
  return v9;
}

uint64_t phLibNfc_Mgt_GetstackCapabilities(uint64_t a1, uint64_t a2)
{
  v6 = 0;
  v7 = a1;
  sub_297E4D930(0, &v7, 4, 32, "phLibNfc_Mgt_GetstackCapabilities");
  sub_297E4E1B4(0, &v7, 4, 5u, "phLibNfc_Mgt_GetstackCapabilities");
  v3 = sub_297E4F050(v7, &v6);
  if (v3)
  {
    v4 = 1;
  }

  else
  {
    v4 = v6 == 0;
  }

  if (!v4)
  {
    if (a2)
    {
      v3 = sub_297E4F450(v7, 34, 0, a2, 0);
    }

    else
    {
      sub_297E4E0B0(0, &v7, 4, 4u, "Invalid parameters passed");
      v3 = 1;
    }
  }

  sub_297E4DFAC(0, &v7, 4, 5u, "phLibNfc_Mgt_GetstackCapabilities");
  sub_297E4D930(0, &v7, 4, 32, "phLibNfc_Mgt_GetstackCapabilities");
  if (v3)
  {
    sub_297E5AE60(v7, 34);
    sub_297E96818(v7, v3);
  }

  return v3;
}

uint64_t phLibNfc_Mgt_ValidateEepromSettings(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v10 = 0;
  v11 = a1;
  sub_297E4D930(0, &v11, 4, 49, "phLibNfc_Mgt_ValidateEepromSettings");
  sub_297E4E1B4(0, &v11, 4, 5u, "phLibNfc_Mgt_ValidateEepromSettings");
  v5 = sub_297E4F050(v11, &v10);
  if (v5)
  {
    v6 = 1;
  }

  else
  {
    v6 = v10 == 0;
  }

  if (v6)
  {
    v7 = v5;
    sub_297E4E0B0(0, &v11, 4, 1u, "phLibNfc_Mgt_ValidateEepromSettings: LIBNFC Not Initialized");
    sub_297E4DFAC(0, &v11, 4, 5u, "phLibNfc_Mgt_ValidateEepromSettings");
    if (v7 == 13)
    {
      return v7;
    }

    goto LABEL_13;
  }

  if (!a2)
  {
    v7 = 1;
    sub_297E4E0B0(0, &v11, 4, 1u, "phLibNfc_Mgt_ValidateEepromSettings: Invalid call back function passed");
    goto LABEL_12;
  }

  *(v10 + 744) = 0;
  v7 = sub_297E4F450(v11, 52, 0, 0, 0);
  if (v7 != 13)
  {
LABEL_12:
    sub_297E4DFAC(0, &v11, 4, 5u, "phLibNfc_Mgt_ValidateEepromSettings");
LABEL_13:
    sub_297E4D930(0, &v11, 4, 49, "phLibNfc_Mgt_ValidateEepromSettings");
    sub_297E5AE60(v11, 52);
    sub_297E96818(v11, v7);
    return v7;
  }

  v8 = v10;
  *(v10 + 6664) = a2;
  *(v8 + 6672) = a3;
  sub_297E4DFAC(0, &v11, 4, 5u, "phLibNfc_Mgt_ValidateEepromSettings");
  return v7;
}

uint64_t phLibNfc_Mgt_SetRfSettings(uint64_t a1, int a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v16 = a1;
  v15 = a2;
  v14 = 0;
  sub_297E4D930(0, &v16, 4, 40, "phLibNfc_Mgt_SetRfSettings");
  sub_297E4E1B4(0, &v16, 4, 5u, "phLibNfc_Mgt_SetRfSettings");
  v9 = sub_297E4F050(v16, &v14);
  if (v9)
  {
    v10 = 1;
  }

  else
  {
    v10 = v14 == 0;
  }

  if (v10)
  {
LABEL_6:
    sub_297E4DFAC(0, &v16, 4, 5u, "phLibNfc_Mgt_SetRfSettings");
    if (v9 == 13)
    {
      return v9;
    }

    goto LABEL_16;
  }

  if (a3 && *a3)
  {
    v9 = 1;
    v11 = "phLibNfc_Mgt_SetRfSettings: Invalid input parameter";
    if (a4 && *(a3 + 8))
    {
      if (*(v14 + 2994) != 1 && (*(v14 + 2984) == 1 || *(v14 + 2985) == 1 || *(v14 + 2986) == 1 || a2 != 1 || *(v14 + 2992) == 1))
      {
        *(v14 + 744) = 0;
        v9 = sub_297E4F450(v16, 43, 0, &v15, a3);
        if (v9 == 13)
        {
          v13 = v14;
          *(v14 + 6152) = a4;
          *(v13 + 6160) = a5;
          sub_297E4DFAC(0, &v16, 4, 5u, "phLibNfc_Mgt_SetRfSettings");
          return v9;
        }

        goto LABEL_6;
      }

      v9 = 51;
      v11 = "phLibNfc_Mgt_SetRfSettings: Feature Not Supported by NFCC";
    }
  }

  else
  {
    v9 = 1;
    v11 = "phLibNfc_Mgt_SetRfSettings: Invalid input parameter";
  }

  sub_297E4E0B0(0, &v16, 4, 1u, v11);
  sub_297E4DFAC(0, &v16, 4, 5u, "phLibNfc_Mgt_SetRfSettings");
LABEL_16:
  sub_297E4D930(0, &v16, 4, 40, "phLibNfc_Mgt_SetRfSettings");
  sub_297E5AE60(v16, 43);
  sub_297E96818(v16, v9);
  return v9;
}

uint64_t phLibNfc_Mgt_eSeSvddControl(uint64_t a1, unsigned int a2, uint64_t a3, uint64_t a4)
{
  v13 = a1;
  v12 = a2;
  v11 = 0;
  sub_297E4D930(0, &v13, 4, 41, "phLibNfc_Mgt_eSeSvddControl");
  sub_297E4E1B4(0, &v13, 4, 5u, "phLibNfc_Mgt_eSeSvddControl");
  v7 = sub_297E4F050(v13, &v11);
  if (v7)
  {
    v8 = 1;
  }

  else
  {
    v8 = v11 == 0;
  }

  if (v8)
  {
    goto LABEL_6;
  }

  if (a2 > 1 || !a3)
  {
    sub_297E4DFAC(0, &v13, 4, 5u, "phLibNfc_Mgt_eSeSvddControl");
    v7 = 1;
LABEL_13:
    sub_297E4D930(0, &v13, 4, 41, "phLibNfc_Mgt_eSeSvddControl");
    sub_297E5AE60(v13, 44);
    sub_297E96818(v13, v7);
    return v7;
  }

  v7 = sub_297E4F450(v13, 44, 0, &v12, 0);
  if (v7 != 13)
  {
LABEL_6:
    sub_297E4DFAC(0, &v13, 4, 5u, "phLibNfc_Mgt_eSeSvddControl");
    if (v7 == 13)
    {
      return v7;
    }

    goto LABEL_13;
  }

  v9 = v11;
  *(v11 + 6136) = a3;
  *(v9 + 6144) = a4;
  sub_297E4DFAC(0, &v13, 4, 5u, "phLibNfc_Mgt_eSeSvddControl");
  return v7;
}

uint64_t phLibNfc_Mgt_GetFwVersion(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v15 = 0;
  v16 = a1;
  v13 = 0;
  v14 = 0;
  sub_297E4D930(0, &v16, 4, 12, "phLibNfc_Mgt_GetFwVersion");
  sub_297E4E1B4(0, &v16, 4, 5u, "phLibNfc_Mgt_GetFwVersion");
  v7 = sub_297E4F050(v16, &v15);
  sub_297E5D114(v16, &v14);
  sub_297E67EB0(v16, &v13);
  if (!v7 && !v13)
  {
    v8 = 147;
    v9 = "This API will be handled only in Libnfc uninitialized state";
LABEL_4:
    sub_297E4E0B0(0, &v16, 4, 1u, v9);
    goto LABEL_5;
  }

  v8 = 1;
  v9 = "phLibNfc_Mgt_GetFwVersion: Invalid input parameter";
  if (!a2 || !a3 || !v16 || !v14)
  {
    goto LABEL_4;
  }

  v8 = sub_297E4F450(v16, 181, 0, &v16, 0);
  if (v8 == 13)
  {
    v11 = v14;
    *(v14 + 32) = a3;
    *v11 = a4;
    v12 = v14;
    *(v14 + 64) = a2;
    *(v12 + 8) = v16;
    sub_297E4DFAC(0, &v16, 4, 5u, "phLibNfc_Mgt_GetFwVersion");
    return v8;
  }

  if (v15 && !v15[6078] && !v15[6081] && !v15[6082] && !v15[6079])
  {
    *(v14 + 91) = 0;
    phOsalNfc_FreeMemory();
    v15 = 0;
    sub_297E9F3BC(v16, 0);
  }

LABEL_5:
  sub_297E4DFAC(0, &v16, 4, 5u, "phLibNfc_Mgt_GetFwVersion");
  sub_297E4D930(0, &v16, 4, 12, "phLibNfc_Mgt_GetFwVersion");
  sub_297E5AE60(v16, 181);
  sub_297E96818(v16, v8);
  return v8;
}

uint64_t phLibNfc_AntennaSelfTest(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v6 = a2;
  v14 = a1;
  v15 = a2;
  v13 = 0;
  sub_297E4D930(0, &v14, 4, 42, "phLibNfc_AntennaSelfTest");
  sub_297E4E1B4(0, &v14, 4, 5u, "phLibNfc_AntennaSelfTest");
  v7 = sub_297E4F050(v14, &v13);
  if (v7)
  {
    v8 = 1;
  }

  else
  {
    v8 = v13 == 0;
  }

  if (v8)
  {
    v9 = v7;
    sub_297E4E0B0(0, &v14, 4, 1u, "phLibNfc_AntennaSelfTest: Stack Not Initialized");
LABEL_7:
    if (v9 == 13)
    {
      goto LABEL_15;
    }

    goto LABEL_14;
  }

  v9 = 1;
  v10 = "phLibNfc_AntennaSelfTest: Invalid Params";
  if (a3 && (v6 & 1) != 0)
  {
    if (*(v13 + 2994) != 1 && (*(v13 + 2985) == 1 || *(v13 + 2986) == 1 || *(v13 + 2992) == 1))
    {
      v9 = sub_297E4F450(v14, 45, 0, &v15, 0);
      if (v9 == 13)
      {
        v12 = v13;
        *(v13 + 6792) = a3;
        *(v12 + 6800) = a4;
        goto LABEL_15;
      }

      goto LABEL_7;
    }

    v9 = 51;
    v10 = "phLibNfc_AntennaSelfTest: Feature Not Supported";
  }

  sub_297E4E0B0(0, &v14, 4, 1u, v10);
LABEL_14:
  sub_297E4D930(0, &v14, 4, 42, "phLibNfc_AntennaSelfTest");
  sub_297E5AE60(v14, 45);
  sub_297E96818(v14, v9);
LABEL_15:
  sub_297E4DFAC(0, &v14, 4, 5u, "phLibNfc_AntennaSelfTest");
  return v9;
}

uint64_t phLibNfc_GetMemoryDump(uint64_t a1, int a2, uint64_t a3, uint64_t a4)
{
  v15 = 0;
  v16 = a1;
  v13 = 0;
  v14 = 0;
  v7 = 1;
  sub_297E4D930(0, &v16, 4, 10, "phLibNfc_GetMemoryDump");
  sub_297E4E1B4(0, &v16, 4, 5u, "phLibNfc_GetMemoryDump");
  sub_297E4F0E8(v16, &v15);
  sub_297E5D114(v16, &v14);
  sub_297E67EB0(v16, &v13);
  v8 = "phLibNfc_GetMemoryDump: INVALID_PARAMETER ";
  if ((a2 - 3) < 0xFFFFFFFE)
  {
    goto LABEL_8;
  }

  if (!a3)
  {
    goto LABEL_8;
  }

  v9 = v16;
  if (!v16)
  {
    goto LABEL_8;
  }

  v10 = v14;
  if (!v14)
  {
    goto LABEL_8;
  }

  if (v15 && !v13)
  {
    v7 = 147;
    v8 = "phLibNfc_GetMemoryDump: This API will only be handled only in the Libnfc uninitialized state";
LABEL_8:
    sub_297E4E0B0(0, &v16, 4, 1u, v8);
    goto LABEL_9;
  }

  *(v14 + 112) = a2;
  *(v10 + 8) = v9;
  v7 = sub_297E4F450(v9, 183, 0, 0, 0);
  if (v7 == 13)
  {
    v12 = v14;
    *(v14 + 24) = a3;
    *v12 = a4;
    sub_297E4DFAC(0, &v16, 4, 5u, "phLibNfc_GetMemoryDump");
    return v7;
  }

LABEL_9:
  sub_297E4DFAC(0, &v16, 4, 5u, "phLibNfc_GetMemoryDump");
  sub_297E4D930(0, &v16, 4, 10, "phLibNfc_GetMemoryDump");
  sub_297E5AE60(v16, 183);
  sub_297E96818(v16, v7);
  return v7;
}

uint64_t phLibNfc_Mgt_TriggerNfccAssertion(uint64_t a1, int a2, int a3, uint64_t a4, uint64_t a5)
{
  v19 = a1;
  v17 = a3;
  v18 = a2;
  v16 = 0;
  sub_297E4D930(0, &v19, 4, 44, "phLibNfc_Mgt_TriggerNfccAssertion");
  sub_297E4E1B4(0, &v19, 4, 5u, "phLibNfc_Mgt_TriggerNfccAssertion");
  v9 = sub_297E4F050(v19, &v16);
  if (v9)
  {
    v10 = 1;
  }

  else
  {
    v10 = v16 == 0;
  }

  if (v10)
  {
    v11 = v9;
    sub_297E4E0B0(0, &v19, 4, 1u, "phLibNfc_Mgt_TriggerNfccAssertion: LIBNFC Not Initialized");
    sub_297E4DFAC(0, &v19, 4, 5u, "phLibNfc_Mgt_TriggerNfccAssertion");
    if (v11 == 13)
    {
      return v11;
    }

    goto LABEL_22;
  }

  if (!a4)
  {
    v11 = 1;
    sub_297E4E0B0(0, &v19, 4, 1u, "phLibNfc_Mgt_TriggerNfccAssertion: Invalid input parameters");
LABEL_21:
    sub_297E4DFAC(0, &v19, 4, 5u, "phLibNfc_Mgt_TriggerNfccAssertion");
LABEL_22:
    sub_297E4D930(0, &v19, 4, 44, "phLibNfc_Mgt_TriggerNfccAssertion");
    sub_297E5AE60(v19, 47);
    sub_297E96818(v19, v11);
    return v11;
  }

  if (*(v16 + 2992) == 1 && a3 && a2 == 1 && !*(v16 + 2994) && *(v16 + 3196) == 2)
  {
    if ((a3 - 961) <= 0xFFFFFC48)
    {
      v17 = 10;
    }

    v12 = v19;
    v13 = &v17;
  }

  else
  {
    v12 = v19;
    v13 = 0;
  }

  v11 = sub_297E4F450(v12, 47, 0, &v18, v13);
  if (v11 != 13)
  {
    goto LABEL_21;
  }

  v14 = v16;
  *(v16 + 6584) = a4;
  *(v14 + 6592) = a5;
  sub_297E4DFAC(0, &v19, 4, 5u, "phLibNfc_Mgt_TriggerNfccAssertion");
  return v11;
}

uint64_t phLibNfc_Mgt_GetClrAssertRegs(uint64_t a1, int a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v15 = a1;
  v14 = a2;
  v13 = 0;
  sub_297E4D930(0, &v15, 4, 45, "phLibNfc_Mgt_GetClrAssertRegs");
  sub_297E4E1B4(0, &v15, 4, 5u, "phLibNfc_Mgt_GetClrAssertRegs");
  v8 = sub_297E4F050(v15, &v13);
  if (v8)
  {
    v9 = 1;
  }

  else
  {
    v9 = v13 == 0;
  }

  if (v9)
  {
    v10 = v8;
    sub_297E4E0B0(0, &v15, 4, 1u, "phLibNfc_Mgt_GetClrAssertRegs: LIBNFC Not Initialized");
    sub_297E4DFAC(0, &v15, 4, 5u, "phLibNfc_Mgt_GetClrAssertRegs");
    if (v10 == 13)
    {
      return v10;
    }

    goto LABEL_13;
  }

  if (!a4)
  {
    v10 = 1;
    goto LABEL_12;
  }

  v10 = sub_297E4F450(v15, 48, 0, &v14, a3);
  if (v10 != 13)
  {
LABEL_12:
    sub_297E4DFAC(0, &v15, 4, 5u, "phLibNfc_Mgt_GetClrAssertRegs");
LABEL_13:
    sub_297E4D930(0, &v15, 4, 45, "phLibNfc_Mgt_GetClrAssertRegs");
    sub_297E5AE60(v15, 48);
    sub_297E96818(v15, v10);
    return v10;
  }

  v11 = v13;
  *(v13 + 6088) = a4;
  *(v11 + 6096) = a5;
  sub_297E4DFAC(0, &v15, 4, 5u, "phLibNfc_Mgt_GetClrAssertRegs");
  return v10;
}

uint64_t phLibNfc_Mgt_ConfigureLogging(uint64_t a1, int a2, uint64_t a3, uint64_t a4)
{
  v15 = a2;
  v13 = 0;
  v14 = a1;
  sub_297E4D930(0, &v14, 4, 46, "phLibNfc_Mgt_ConfigureLogging");
  sub_297E4E1B4(0, &v14, 4, 5u, "phLibNfc_Mgt_ConfigureLogging");
  v7 = sub_297E4F050(v14, &v13);
  if (v7)
  {
    v8 = 1;
  }

  else
  {
    v8 = v13 == 0;
  }

  if (v8)
  {
    v9 = v7;
    sub_297E4E0B0(0, &v14, 4, 1u, "phLibNfc_Mgt_ConfigureLogging: LIBNFC Not Initialized");
    sub_297E4DFAC(0, &v14, 4, 5u, "phLibNfc_Mgt_ConfigureLogging");
    if (v9 == 13)
    {
      return v9;
    }

    goto LABEL_12;
  }

  if (*(v13 + 2994) == 1)
  {
    v9 = 51;
    v10 = "phLibNfc_Mgt_ConfigureLogging: Feature not supported";
  }

  else
  {
    v9 = 1;
    v10 = "phLibNfc_Mgt_ConfigureLogging: Invalid input parameters";
    if (a3 && (a2 & 0xFFFF2080) == 0)
    {
      v9 = sub_297E4F450(v14, 49, 0, &v15, 0);
      if (v9 == 13)
      {
        v12 = v13;
        *(v13 + 6600) = a3;
        *(v12 + 6608) = a4;
        sub_297E4DFAC(0, &v14, 4, 5u, "phLibNfc_Mgt_ConfigureLogging");
        return v9;
      }

      goto LABEL_11;
    }
  }

  sub_297E4E0B0(0, &v14, 4, 1u, v10);
LABEL_11:
  sub_297E4DFAC(0, &v14, 4, 5u, "phLibNfc_Mgt_ConfigureLogging");
LABEL_12:
  sub_297E4D930(0, &v14, 4, 46, "phLibNfc_Mgt_ConfigureLogging");
  sub_297E5AE60(v14, 49);
  sub_297E96818(v14, v9);
  return v9;
}

uint64_t phLibNfc_Mgt_ConfigureAssertionLogging(uint64_t a1, int a2, uint64_t a3, uint64_t a4)
{
  v13 = a1;
  v12 = a2;
  v11 = 0;
  sub_297E4D930(0, &v13, 4, 47, "phLibNfc_Mgt_ConfigureAssertionLogging");
  sub_297E4E1B4(0, &v13, 4, 5u, "phLibNfc_Mgt_ConfigureAssertionLogging");
  v6 = sub_297E4F050(v13, &v11);
  if (v6)
  {
    v7 = 1;
  }

  else
  {
    v7 = v11 == 0;
  }

  if (v7)
  {
    v8 = v6;
    sub_297E4E0B0(0, &v13, 4, 1u, "phLibNfc_Mgt_ConfigureAssertionLogging: LIBNFC Not Initialized");
    sub_297E4DFAC(0, &v13, 4, 5u, "phLibNfc_Mgt_ConfigureAssertionLogging");
    if (v8 == 13)
    {
      return v8;
    }

    goto LABEL_13;
  }

  if (!a3)
  {
    v8 = 1;
    sub_297E4E0B0(0, &v13, 4, 1u, "phLibNfc_Mgt_ConfigureAssertionLogging: Invalid input parameters");
    goto LABEL_12;
  }

  v8 = sub_297E4F450(v13, 50, 0, &v12, 0);
  if (v8 != 13)
  {
LABEL_12:
    sub_297E4DFAC(0, &v13, 4, 5u, "phLibNfc_Mgt_ConfigureAssertionLogging");
LABEL_13:
    sub_297E4D930(0, &v13, 4, 47, "phLibNfc_Mgt_ConfigureAssertionLogging");
    sub_297E5AE60(v13, 50);
    sub_297E96818(v13, v8);
    return v8;
  }

  v9 = v11;
  *(v11 + 6616) = a3;
  *(v9 + 6624) = a4;
  sub_297E4DFAC(0, &v13, 4, 5u, "phLibNfc_Mgt_ConfigureAssertionLogging");
  return v8;
}

uint64_t phLibNfc_TriggerRfFieldOnNtf(uint64_t a1, char a2, uint64_t a3, uint64_t a4)
{
  v13 = 0;
  v14 = a1;
  sub_297E4D930(0, &v14, 4, 48, "phLibNfc_TriggerRfFieldOnNtf");
  sub_297E4E1B4(0, &v14, 4, 5u, "phLibNfc_TriggerRfFieldOnNtf");
  v7 = sub_297E4F050(v14, &v13);
  if (v7)
  {
    v8 = 1;
  }

  else
  {
    v8 = v13 == 0;
  }

  if (v8)
  {
    v9 = v7;
    sub_297E4E0B0(0, &v14, 4, 1u, "phLibNfc_TriggerRfFieldOnNtf: LIBNFC Not Initialized");
    sub_297E4DFAC(0, &v14, 4, 5u, "phLibNfc_TriggerRfFieldOnNtf");
    if (v9 == 13)
    {
      return v9;
    }

    goto LABEL_14;
  }

  if (a3)
  {
    if (*(v13 + 2994) != 1)
    {
      *(v13 + 766) = a2;
      v9 = sub_297E4F450(v14, 51, 0, 0, 0);
      if (v9 == 13)
      {
        v12 = v13;
        *(v13 + 6648) = a3;
        *(v12 + 6656) = a4;
        sub_297E4DFAC(0, &v14, 4, 5u, "phLibNfc_TriggerRfFieldOnNtf");
        return v9;
      }

      goto LABEL_13;
    }

    v9 = 51;
    v10 = "phLibNfc_TriggerRfFieldOnNtf: Feature not supported";
  }

  else
  {
    v9 = 1;
    v10 = "phLibNfc_TriggerRfFieldOnNtf: pRspCb not defined";
  }

  sub_297E4E0B0(0, &v14, 4, 1u, v10);
LABEL_13:
  sub_297E4DFAC(0, &v14, 4, 5u, "phLibNfc_TriggerRfFieldOnNtf");
LABEL_14:
  sub_297E4D930(0, &v14, 4, 48, "phLibNfc_TriggerRfFieldOnNtf");
  sub_297E5AE60(v14, 51);
  sub_297E96818(v14, v9);
  return v9;
}

uint64_t phLibNfc_Mgt_GetDebugInfo(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v19 = a1;
  sub_297E4D930(0, &v19, 4, 50, "phLibNfc_Mgt_GetDebugInfo");
  sub_297E4E1B4(0, &v19, 4, 5u, "phLibNfc_Mgt_GetDebugInfo");
  if (!a3 && !a2 && !a4 && !a5)
  {
    v9 = "phLibNfc_Mgt_GetDebugInfo: Invalid parameter";
LABEL_14:
    v15 = 1;
    sub_297E4E0B0(0, &v19, 4, 1u, v9);
    goto LABEL_19;
  }

  if (a3 && (!*a3 || !*(a3 + 8)))
  {
    v9 = "phLibNfc_Mgt_GetDebugInfo: Invalid parameter for Circular buffer";
    goto LABEL_14;
  }

  v10 = 0;
  v11 = 1;
  v12 = v19;
  while (1)
  {
    v13 = v11;
    v14 = &unk_2A18BDDC0 + 112 * v10;
    if (*v14 == v19)
    {
      break;
    }

    v11 = 0;
    v10 = 1;
    if ((v13 & 1) == 0)
    {
      goto LABEL_18;
    }
  }

  v16 = *(v14 + 2);
  if (v16 <= 1)
  {
    v17 = *(&unk_2A18BDDC0 + 14 * v16 + 10);
    if (v17)
    {
      v17[15] = a2;
      v17[16] = a3;
      v17[17] = a4;
      v17[18] = a5;
      v15 = sub_297E4F450(v12, 53, 0, a2, a3);
      goto LABEL_19;
    }
  }

LABEL_18:
  v15 = 0;
LABEL_19:
  sub_297E4DFAC(0, &v19, 4, 5u, "phLibNfc_Mgt_GetDebugInfo");
  sub_297E4D930(0, &v19, 4, 50, "phLibNfc_Mgt_GetDebugInfo");
  return v15;
}

uint64_t phLibNfc_RemoteDev_Connect(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v13 = 0;
  v14 = a1;
  sub_297E4D930(0, &v14, 4, 15, "phLibNfc_RemoteDev_Connect");
  sub_297E4E1B4(0, &v14, 4, 5u, "phLibNfc_RemoteDev_Connect");
  v7 = sub_297E4F050(v14, &v13);
  if (v7)
  {
    v8 = 1;
  }

  else
  {
    v8 = v13 == 0;
  }

  if (v8)
  {
    v9 = v7;
    goto LABEL_7;
  }

  if (!a2 || !a3)
  {
    v9 = 1;
    sub_297E4E0B0(0, &v14, 4, 1u, "Invalid input Parameter");
LABEL_16:
    sub_297E4DFAC(0, &v14, 4, 5u, "phLibNfc_RemoteDev_Connect");
    sub_297E4D930(0, &v14, 4, 15, "phLibNfc_RemoteDev_Connect");
LABEL_17:
    sub_297E5AE60(v14, 17);
    sub_297E96818(v14, v9);
    return v9;
  }

  *(v13 + 1488) = 0;
  v10 = sub_297E4F450(v14, 17, 0, a2, 0);
  if (v10 == 147)
  {
    if (*(v13 + 1504))
    {
      v9 = 147;
    }

    else
    {
      sub_297E4E0B0(0, &v14, 4, 2u, "State machine status is NFCSTATUS_REJECTED");
      v9 = 1;
    }

    goto LABEL_16;
  }

  v9 = v10;
  if (v10 == 13)
  {
    v11 = v13;
    *(v13 + 6200) = a3;
    *(v11 + 6208) = a4;
    sub_297E4DFAC(0, &v14, 4, 5u, "phLibNfc_RemoteDev_Connect");
    return v9;
  }

LABEL_7:
  sub_297E4DFAC(0, &v14, 4, 5u, "phLibNfc_RemoteDev_Connect");
  if (v9 != 13)
  {
    sub_297E4D930(0, &v14, 4, 15, "phLibNfc_RemoteDev_Connect");
    if (v9)
    {
      goto LABEL_17;
    }
  }

  return v9;
}

uint64_t phLibNfc_GetTagInfo(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v14 = 0;
  v15 = a1;
  sub_297E4D930(0, &v15, 4, 16, "phLibNfc_GetTagInfo");
  sub_297E4E1B4(0, &v15, 4, 5u, "phLibNfc_GetTagInfo");
  v9 = sub_297E4F050(v15, &v14);
  if (v9)
  {
    v10 = 1;
  }

  else
  {
    v10 = v14 == 0;
  }

  if (v10)
  {
LABEL_6:
    sub_297E4DFAC(0, &v15, 4, 5u, "phLibNfc_GetTagInfo");
    if (v9 == 13)
    {
      return v9;
    }

    goto LABEL_20;
  }

  v9 = 1;
  v11 = "phLibNfc_GetTagInfo: Invalid param";
  if (!a3 || !a2 || !a4 || !*(a3 + 8))
  {
    goto LABEL_18;
  }

  v9 = sub_297E4F450(v15, 18, 0, a2, a3);
  if (v9 == 147)
  {
    if (*(v14 + 1504))
    {
      v9 = 147;
LABEL_19:
      sub_297E4DFAC(0, &v15, 4, 5u, "phLibNfc_GetTagInfo");
LABEL_20:
      sub_297E4D930(0, &v15, 4, 16, "phLibNfc_GetTagInfo");
      sub_297E5AE60(v15, 18);
      sub_297E96818(v15, v9);
      return v9;
    }

    v9 = 148;
    v11 = "State machine status is NFCSTATUS_REJECTED";
LABEL_18:
    sub_297E4E0B0(0, &v15, 4, 2u, v11);
    goto LABEL_19;
  }

  if (v9 != 13)
  {
    goto LABEL_6;
  }

  v12 = v14;
  *(v14 + 6216) = a4;
  *(v12 + 6224) = a5;
  sub_297E4DFAC(0, &v15, 4, 5u, "phLibNfc_GetTagInfo");
  return v9;
}

uint64_t phLibNfc_RemoteDev_Transceive(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v14 = 0;
  v15 = a1;
  sub_297E4D930(0, &v15, 4, 17, "phLibNfc_RemoteDev_Transceive");
  sub_297E4E1B4(0, &v15, 4, 5u, "phLibNfc_RemoteDev_Transceive");
  v9 = sub_297E4F050(v15, &v14);
  if (v9)
  {
    v10 = 1;
  }

  else
  {
    v10 = v14 == 0;
  }

  if (v10)
  {
LABEL_6:
    sub_297E4DFAC(0, &v15, 4, 5u, "phLibNfc_RemoteDev_Transceive");
    if (v9 == 13)
    {
      return v9;
    }

    goto LABEL_19;
  }

  v9 = 1;
  v11 = "phLibNfc_RemoteDev_Transceive: Invalid param";
  if (!a2 || !a3 || !a4)
  {
    goto LABEL_17;
  }

  v9 = sub_297E4F450(v15, 19, 0, a2, a3);
  if (v9 == 147)
  {
    if (*(v14 + 1504))
    {
      v9 = 147;
LABEL_18:
      sub_297E4DFAC(0, &v15, 4, 5u, "phLibNfc_RemoteDev_Transceive");
LABEL_19:
      sub_297E4D930(0, &v15, 4, 17, "phLibNfc_RemoteDev_Transceive");
      sub_297E5AE60(v15, 19);
      sub_297E96818(v15, v9);
      return v9;
    }

    v9 = 148;
    v11 = "phLibNfc_RemoteDev_Transceive: State machine status is NFCSTATUS_REJECTED";
LABEL_17:
    sub_297E4E0B0(0, &v15, 4, 2u, v11);
    goto LABEL_18;
  }

  if (v9 != 13)
  {
    goto LABEL_6;
  }

  v12 = v14;
  *(v14 + 6232) = a4;
  *(v12 + 6240) = a5;
  *(v12 + 2600) = *(a3 + 48);
  *(v12 + 1528) = 0;
  sub_297E4DFAC(0, &v15, 4, 5u, "phLibNfc_RemoteDev_Transceive");
  return v9;
}

uint64_t phLibNfc_RemoteDev_Disconnect(uint64_t a1, _BYTE *a2, int a3, uint64_t a4, uint64_t a5)
{
  v9 = 0;
  v26 = 0;
  v27 = a1;
  v10 = 1;
  while (1)
  {
    v11 = v10;
    v12 = &unk_2A18BDDC0 + 112 * v9;
    if (*v12 == a1)
    {
      break;
    }

    v10 = 0;
    v9 = 1;
    if ((v11 & 1) == 0)
    {
      goto LABEL_9;
    }
  }

  v13 = *(v12 + 2);
  if (v13 > 1)
  {
LABEL_9:
    v15 = 0;
    goto LABEL_10;
  }

  v14 = *(&unk_2A18BDDC0 + 14 * v13 + 10);
  if (v14)
  {
    v15 = v14 + 120;
  }

  else
  {
    v15 = 0;
  }

LABEL_10:
  v25 = 0;
  sub_297E4D930(0, &v27, 4, 130, "phLibNfc_RemoteDev_Disconnect");
  sub_297E4E1B4(0, &v27, 4, 5u, "phLibNfc_RemoteDev_Disconnect");
  v16 = sub_297E4F050(v27, &v26);
  if (v16 || (v17 = v26) == 0)
  {
    if (v15)
    {
      *(v15 + 36) = 130;
      sub_297E96818(v27, v16);
      LODWORD(v15) = 0;
    }

LABEL_26:
    sub_297E4DFAC(0, &v27, 4, 5u, "phLibNfc_RemoteDev_Disconnect");
    if (v16 == 13)
    {
      return v16;
    }

    goto LABEL_35;
  }

  if (!a2 || !a4)
  {
    v18 = "Invalid parameters passed by upper layer";
LABEL_29:
    v16 = 1;
    sub_297E4E0B0(0, &v27, 4, 1u, v18);
    if (!v15)
    {
      goto LABEL_34;
    }

    *(v15 + 36) = 130;
    v19 = v27;
    v20 = 1;
LABEL_33:
    sub_297E96818(v19, v20);
    LODWORD(v15) = 0;
    goto LABEL_34;
  }

  if (!*(v26 + 1504))
  {
    sub_297E4E0B0(0, &v27, 4, 1u, "Target not connected");
    if (!v15)
    {
      v16 = 148;
      goto LABEL_34;
    }

    *(v15 + 36) = 130;
    v19 = v27;
    v16 = 148;
    v20 = 148;
    goto LABEL_33;
  }

  if ((a3 & 0xFFFFFFFB) == 0)
  {
    v18 = "Invalid Release type passed ";
    goto LABEL_29;
  }

  if ((a3 & 0xFFFFFFFE) == 6 && *(v26 + 2985) != 1 && *(v26 + 2986) != 1 && *(v26 + 2992) != 1)
  {
    sub_297E4E0B0(0, &v27, 4, 1u, "Feature not supported for this platform ");
    if (!v15)
    {
      v16 = 51;
      goto LABEL_34;
    }

    *(v15 + 36) = 130;
    v19 = v27;
    v16 = 51;
    v20 = 51;
    goto LABEL_33;
  }

  if (a3 > 4)
  {
    switch(a3)
    {
      case 5:
        v25 = 5;
        v15 = 22;
        break;
      case 6:
        v25 = 5;
        v15 = 23;
        break;
      case 7:
        v25 = 5;
        v15 = 24;
        break;
      default:
LABEL_44:
        v22 = 5;
        goto LABEL_50;
    }

    *(v26 + 1032) = 5;
    *(v17 + 1036) = a3;
    goto LABEL_55;
  }

  if (a3 != 1)
  {
    if (a3 == 2)
    {
      if (*a2 == 1)
      {
        v22 = 4;
      }

      else
      {
        v22 = 3;
      }

      goto LABEL_50;
    }

    goto LABEL_44;
  }

  v22 = 3;
LABEL_50:
  v25 = v22;
  *(v26 + 1032) = v22;
  *(v17 + 1036) = a3;
  if (sub_297EE7E94(v17, v22))
  {
    v15 = 20;
  }

  else
  {
    v15 = 21;
  }

LABEL_55:
  v16 = sub_297E4F450(v27, v15, 0, &v25, a2);
  if (v16 - 111 <= 0x26 && ((1 << (v16 - 111)) & 0x4500000001) != 0 || v16 == 1)
  {
    sub_297E50DB0(0, &v27, 4, 1u, "State machine has returned ");
    goto LABEL_26;
  }

  if (v16 == 13)
  {
    sub_297E4E0B0(0, &v27, 4, 4u, "State machine has returned NFCSTATUS_PENDING");
    v23 = v26;
    *(v26 + 6264) = a4;
    *(v23 + 6272) = a5;
    v24 = *(v23 + 3088);
    if (v24)
    {
      *(v24 + 6514) = v15 == 21;
    }

    goto LABEL_26;
  }

  sub_297E4E0B0(0, &v27, 4, 1u, "State machine has returned NFCSTATUS_FAILED");
  v16 = 255;
LABEL_34:
  sub_297E4DFAC(0, &v27, 4, 5u, "phLibNfc_RemoteDev_Disconnect");
LABEL_35:
  sub_297E4D930(0, &v27, 4, 130, "phLibNfc_RemoteDev_Disconnect");
  if (v15)
  {
    sub_297E5AE60(v27, v15);
    sub_297E96818(v27, v16);
  }

  return v16;
}

uint64_t phLibNfc_RemoteDev_NtfRegister(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v12 = 0;
  v13 = a1;
  sub_297E4D930(0, &v13, 4, 13, "phLibNfc_RemoteDev_NtfRegister");
  sub_297E4E1B4(0, &v13, 4, 5u, "phLibNfc_RemoteDev_NtfRegister");
  v7 = sub_297E4F050(v13, &v12);
  if (v7)
  {
    v8 = 1;
  }

  else
  {
    v8 = v12 == 0;
  }

  if (!v8)
  {
    if (a2 && a3)
    {
      v9 = sub_297E4F450(v13, 15, 0, a2, 0);
      v7 = v9;
      if (!v9)
      {
        v10 = v12;
        *(v12 + 6280) = a3;
        *(v10 + 6288) = a4;
      }
    }

    else
    {
      v7 = 1;
      sub_297E4E0B0(0, &v13, 4, 1u, "Invalid input parameter");
    }
  }

  sub_297E4DFAC(0, &v13, 4, 5u, "phLibNfc_RemoteDev_NtfRegister");
  sub_297E4D930(0, &v13, 4, 13, "phLibNfc_RemoteDev_NtfRegister");
  if (v7)
  {
    sub_297E5AE60(v13, 15);
    sub_297E96818(v13, v7);
  }

  return v7;
}

uint64_t phLibNfc_RemoteDev_NtfUnregister(uint64_t a1)
{
  v5 = 0;
  v6 = a1;
  sub_297E4D930(0, &v6, 4, 14, "phLibNfc_RemoteDev_NtfUnregister");
  sub_297E4E1B4(0, &v6, 4, 5u, "phLibNfc_RemoteDev_NtfUnregister");
  v1 = sub_297E4F050(v6, &v5);
  if (v1)
  {
    v2 = 1;
  }

  else
  {
    v2 = v5 == 0;
  }

  if (!v2)
  {
    v3 = sub_297E4F450(v6, 16, 0, 0, 0);
    v1 = v3;
    if (!v3)
    {
      *(v5 + 6280) = 0u;
    }
  }

  sub_297E4DFAC(0, &v6, 4, 5u, "phLibNfc_RemoteDev_NtfUnregister");
  sub_297E4D930(0, &v6, 4, 14, "phLibNfc_RemoteDev_NtfUnregister");
  if (v1)
  {
    sub_297E5AE60(v6, 16);
    sub_297E96818(v6, v1);
  }

  return v1;
}

uint64_t phLibNfc_RemoteDev_CheckPresence(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v13 = 0;
  v14 = a1;
  sub_297E4D930(0, &v14, 4, 22, "phLibNfc_RemoteDev_CheckPresence");
  sub_297E4E1B4(0, &v14, 4, 5u, "phLibNfc_RemoteDev_CheckPresence");
  v7 = sub_297E4F050(v14, &v13);
  if (v7)
  {
    v8 = 1;
  }

  else
  {
    v8 = v13 == 0;
  }

  if (v8)
  {
    v9 = v7;
    goto LABEL_7;
  }

  if (!a2 || !a3)
  {
    v9 = 1;
    sub_297E4E0B0(0, &v14, 4, 1u, "Invalid parameters passed by upper layer");
LABEL_16:
    sub_297E4DFAC(0, &v14, 4, 5u, "phLibNfc_RemoteDev_CheckPresence");
    sub_297E4D930(0, &v14, 4, 22, "phLibNfc_RemoteDev_CheckPresence");
LABEL_17:
    sub_297E5AE60(v14, 25);
    sub_297E96818(v14, v9);
    return v9;
  }

  *(v13 + 1489) = 0;
  v10 = sub_297E4F450(v14, 25, 0, a2, 0);
  if (v10 == 147)
  {
    if (*(v13 + 1504))
    {
      v9 = 147;
    }

    else
    {
      sub_297E4E0B0(0, &v14, 4, 2u, "State machine status is NFCSTATUS_REJECTED");
      v9 = 148;
    }

    goto LABEL_16;
  }

  v9 = v10;
  if (v10 == 13)
  {
    v11 = v13;
    *(v13 + 6472) = a3;
    *(v11 + 6480) = a4;
    sub_297E4DFAC(0, &v14, 4, 5u, "phLibNfc_RemoteDev_CheckPresence");
    return v9;
  }

LABEL_7:
  sub_297E4DFAC(0, &v14, 4, 5u, "phLibNfc_RemoteDev_CheckPresence");
  if (v9 != 13)
  {
    sub_297E4D930(0, &v14, 4, 22, "phLibNfc_RemoteDev_CheckPresence");
    if (v9)
    {
      goto LABEL_17;
    }
  }

  return v9;
}

uint64_t phLibNfc_RemoteDev_FormatNdef(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v14 = 0;
  v15 = a1;
  sub_297E4D930(0, &v15, 4, 26, "phLibNfc_RemoteDev_FormatNdef");
  sub_297E4E1B4(0, &v15, 4, 5u, "phLibNfc_RemoteDev_FormatNdef");
  v9 = sub_297E4F050(v15, &v14);
  if (v9)
  {
    v10 = 1;
  }

  else
  {
    v10 = v14 == 0;
  }

  if (v10)
  {
    goto LABEL_6;
  }

  v9 = 1;
  if (!a2 || !a3 || !a4 || !a5)
  {
    goto LABEL_23;
  }

  v11 = sub_297E4F450(v15, 29, 0, a2, a3);
  v9 = v11;
  if (v11 == 147)
  {
    if (*(v14 + 1504))
    {
      v9 = 147;
    }

    else
    {
      sub_297E4E0B0(0, &v15, 4, 2u, "State machine status is NFCSTATUS_REJECTED");
      v9 = 148;
    }

    goto LABEL_23;
  }

  if (v11 != 13)
  {
    if ((v11 & 0xFB) != 0x91 && v11 && v11 != 49 && v11 != 111)
    {
      sub_297E50DB0(0, &v15, 4, 2u, "Internal LibNfc status = ");
      v9 = 255;
LABEL_23:
      sub_297E4DFAC(0, &v15, 4, 5u, "phLibNfc_RemoteDev_FormatNdef");
LABEL_24:
      sub_297E4D930(0, &v15, 4, 26, "phLibNfc_RemoteDev_FormatNdef");
      sub_297E5AE60(v15, 29);
      sub_297E96818(v15, v9);
      return v9;
    }

LABEL_6:
    sub_297E4DFAC(0, &v15, 4, 5u, "phLibNfc_RemoteDev_FormatNdef");
    if (v9 == 13)
    {
      return v9;
    }

    goto LABEL_24;
  }

  v12 = v14;
  *(v14 + 6824) = a4;
  *(v12 + 6832) = a5;
  *(v12 + 2934) = 1;
  sub_297E4DFAC(0, &v15, 4, 5u, "phLibNfc_RemoteDev_FormatNdef");
  return v9;
}

uint64_t phLibNfc_Ndef_CheckNdef(uint64_t a1, uint64_t a2, char a3, uint64_t a4, uint64_t a5)
{
  v16 = a1;
  v15 = a3;
  v14 = 0;
  sub_297E4D930(0, &v16, 4, 23, "phLibNfc_Ndef_CheckNdef");
  sub_297E4E1B4(0, &v16, 4, 5u, "phLibNfc_Ndef_CheckNdef");
  v8 = sub_297E4F050(v16, &v14);
  if (v8)
  {
    v9 = 1;
  }

  else
  {
    v9 = v14 == 0;
  }

  if (v9)
  {
    goto LABEL_6;
  }

  v8 = 1;
  if (!a2 || !a4)
  {
    goto LABEL_22;
  }

  v10 = sub_297E4F450(v16, 26, 0, a2, &v15);
  v8 = v10;
  if (v10 > 0x6Eu)
  {
    v11 = v10 - 111;
    if (v11 > 0x26)
    {
      goto LABEL_19;
    }

    if (((1 << (v10 - 111)) & 0x4500000001) == 0)
    {
      if (v11 == 36)
      {
        if (*(v14 + 1504))
        {
          v8 = 147;
        }

        else
        {
          sub_297E4E0B0(0, &v16, 4, 2u, "State machine status is NFCSTATUS_REJECTED");
          v8 = 148;
        }

        goto LABEL_22;
      }

LABEL_19:
      sub_297E50DB0(0, &v16, 4, 2u, "Internal LibNfc status = ");
      v8 = 255;
LABEL_22:
      sub_297E4DFAC(0, &v16, 4, 5u, "phLibNfc_Ndef_CheckNdef");
LABEL_23:
      sub_297E4D930(0, &v16, 4, 23, "phLibNfc_Ndef_CheckNdef");
      sub_297E5AE60(v16, 26);
      sub_297E96818(v16, v8);
      return v8;
    }

LABEL_6:
    sub_297E4DFAC(0, &v16, 4, 5u, "phLibNfc_Ndef_CheckNdef");
    if (v8 == 13)
    {
      return v8;
    }

    goto LABEL_23;
  }

  if (!v10)
  {
    goto LABEL_6;
  }

  if (v10 != 13)
  {
    if (v10 != 49)
    {
      goto LABEL_19;
    }

    goto LABEL_6;
  }

  v12 = v14;
  *(v14 + 6312) = a4;
  *(v12 + 6320) = a5;
  *(v12 + 2934) = 1;
  sub_297E4DFAC(0, &v16, 4, 5u, "phLibNfc_Ndef_CheckNdef");
  return v8;
}

uint64_t phLibNfc_Ndef_Read(uint64_t a1, uint64_t a2, uint64_t a3, int a4, uint64_t a5, uint64_t a6)
{
  v17 = 0;
  v18 = a1;
  sub_297E4D930(0, &v18, 4, 24, "phLibNfc_Ndef_Read");
  sub_297E4E1B4(0, &v18, 4, 5u, "phLibNfc_Ndef_Read");
  v11 = sub_297E4F050(v18, &v17);
  if (v11)
  {
    v12 = 1;
  }

  else
  {
    v12 = v17 == 0;
  }

  if (v12)
  {
    goto LABEL_6;
  }

  v11 = 1;
  if (!a3 || !a5 || !*a3 || !a2 || !*(a3 + 8))
  {
    goto LABEL_27;
  }

  *(v17 + 6856) = a4 == 1;
  v13 = sub_297E4F450(v18, 27, 0, a2, a3);
  v11 = v13;
  if (v13 > 48)
  {
    v14 = (v13 - 111);
    if (v14 <= 0x26)
    {
      if (((1 << (v13 - 111)) & 0x4500000001) != 0)
      {
        goto LABEL_6;
      }

      if (v14 == 36)
      {
        if (*(v17 + 1504))
        {
          v11 = 147;
        }

        else
        {
          sub_297E4E0B0(0, &v18, 4, 2u, "State machine status is NFCSTATUS_REJECTED");
          v11 = 148;
        }

        goto LABEL_27;
      }
    }

    if (v13 != 49)
    {
LABEL_25:
      sub_297E50DB0(0, &v18, 4, 2u, "Internal LibNfc status = ");
      v11 = 255;
LABEL_27:
      sub_297E4DFAC(0, &v18, 4, 5u, "phLibNfc_Ndef_Read");
LABEL_28:
      sub_297E4D930(0, &v18, 4, 24, "phLibNfc_Ndef_Read");
      sub_297E5AE60(v18, 27);
      sub_297E96818(v18, v11);
      return v11;
    }

LABEL_6:
    sub_297E4DFAC(0, &v18, 4, 5u, "phLibNfc_Ndef_Read");
    if (v11 == 13)
    {
      return v11;
    }

    goto LABEL_28;
  }

  if (!v13)
  {
    goto LABEL_6;
  }

  if (v13 != 13)
  {
    if (v13 != 26)
    {
      goto LABEL_25;
    }

    goto LABEL_6;
  }

  v15 = v17;
  *(v17 + 6408) = a5;
  *(v15 + 6416) = a6;
  *(v15 + 2934) = 1;
  sub_297E4DFAC(0, &v18, 4, 5u, "phLibNfc_Ndef_Read");
  return v11;
}

uint64_t phLibNfc_Ndef_Write(uint64_t a1, uint64_t a2, uint64_t *a3, int a4, uint64_t a5, uint64_t a6)
{
  v18 = 0;
  v19 = a1;
  sub_297E4D930(0, &v19, 4, 25, "phLibNfc_Ndef_Write");
  sub_297E4E1B4(0, &v19, 4, 5u, "phLibNfc_Ndef_Write");
  v11 = sub_297E4F050(v19, &v18);
  if (v11)
  {
    v12 = 1;
  }

  else
  {
    v12 = v18 == 0;
  }

  if (v12)
  {
    goto LABEL_6;
  }

  v11 = 1;
  if (!a3 || !a5)
  {
    goto LABEL_30;
  }

  v13 = *a3;
  if (*(a3 + 2))
  {
    if (!a2 || !v13)
    {
      goto LABEL_30;
    }
  }

  else if (!a2 || v13)
  {
    goto LABEL_30;
  }

  *(v18 + 6868) = a4;
  v14 = sub_297E4F450(v19, 28, 0, a2, a3);
  v11 = v14;
  if (v14 > 48)
  {
    v15 = (v14 - 111);
    if (v15 <= 0x26)
    {
      if (((1 << (v14 - 111)) & 0x4500000001) != 0)
      {
        goto LABEL_6;
      }

      if (v15 == 36)
      {
        if (*(v18 + 1504))
        {
          v11 = 147;
        }

        else
        {
          sub_297E4E0B0(0, &v19, 4, 2u, "State machine status is NFCSTATUS_REJECTED");
          v11 = 148;
        }

        goto LABEL_30;
      }
    }

    if (v14 != 49)
    {
LABEL_28:
      sub_297E50DB0(0, &v19, 4, 2u, "Internal LibNfc status = ");
      v11 = 255;
LABEL_30:
      sub_297E4DFAC(0, &v19, 4, 5u, "phLibNfc_Ndef_Write");
LABEL_31:
      sub_297E4D930(0, &v19, 4, 25, "phLibNfc_Ndef_Write");
      sub_297E5AE60(v19, 28);
      sub_297E96818(v19, v11);
      return v11;
    }

LABEL_6:
    sub_297E4DFAC(0, &v19, 4, 5u, "phLibNfc_Ndef_Write");
    if (v11 == 13)
    {
      return v11;
    }

    goto LABEL_31;
  }

  if (!v14)
  {
    goto LABEL_6;
  }

  if (v14 != 13)
  {
    if (v14 != 31)
    {
      goto LABEL_28;
    }

    goto LABEL_6;
  }

  v16 = v18;
  *(v18 + 6424) = a5;
  *(v16 + 6432) = a6;
  *(v16 + 2934) = 1;
  sub_297E4DFAC(0, &v19, 4, 5u, "phLibNfc_Ndef_Write");
  return v11;
}

uint64_t phLibNfc_ConvertToReadOnlyNdef(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v14 = 0;
  v15 = a1;
  sub_297E4D930(0, &v15, 4, 27, "phLibNfc_ConvertToReadOnlyNdef");
  sub_297E4E1B4(0, &v15, 4, 5u, "phLibNfc_ConvertToReadOnlyNdef");
  v9 = sub_297E4F050(v15, &v14);
  if (v9)
  {
    v10 = 1;
  }

  else
  {
    v10 = v14 == 0;
  }

  if (!v10)
  {
    if (!a2 || !a4)
    {
      v9 = 1;
      sub_297E4E0B0(0, &v15, 4, 1u, "Invalid input parameters");
      goto LABEL_16;
    }

    v9 = sub_297E4F450(v15, 30, 0, a2, a3);
    v11 = (v9 - 111);
    if (v11 <= 0x29)
    {
      if (((1 << (v9 - 111)) & 0x24500000001) != 0)
      {
        goto LABEL_6;
      }

      if (v11 == 36)
      {
        if (*(v14 + 1504))
        {
          v9 = 147;
        }

        else
        {
          sub_297E4E0B0(0, &v15, 4, 2u, "State machine status is NFCSTATUS_REJECTED");
          v9 = 148;
        }

        goto LABEL_16;
      }
    }

    if (v9 > 0x3A)
    {
LABEL_22:
      sub_297E50DB0(0, &v15, 4, 2u, "Internal LibNfc status = ");
      v9 = 255;
      goto LABEL_16;
    }

    if (((1 << v9) & 0x40A000000000001) == 0)
    {
      if (v9 == 13)
      {
        v13 = v14;
        *(v14 + 6440) = a4;
        *(v13 + 6448) = a5;
        *(v13 + 2934) = 1;
        goto LABEL_17;
      }

      goto LABEL_22;
    }
  }

LABEL_6:
  if (v9 != 13)
  {
LABEL_16:
    sub_297E4D930(0, &v15, 4, 27, "phLibNfc_ConvertToReadOnlyNdef");
    sub_297E5AE60(v15, 30);
    sub_297E96818(v15, v9);
    goto LABEL_17;
  }

  v9 = 13;
LABEL_17:
  sub_297E4DFAC(0, &v15, 4, 5u, "phLibNfc_ConvertToReadOnlyNdef");
  return v9;
}

uint64_t phLibNfc_RemoteDev_Receive(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v11 = 0;
  v12 = a1;
  sub_297E4D930(0, &v12, 4, 30, "phLibNfc_RemoteDev_Receive");
  sub_297E4E1B4(0, &v12, 4, 5u, "phLibNfc_RemoteDev_Receive");
  v7 = sub_297E4F050(v12, &v11);
  if (v7)
  {
    v8 = 1;
  }

  else
  {
    v8 = v11 == 0;
  }

  if (v8)
  {
LABEL_6:
    sub_297E4DFAC(0, &v12, 4, 5u, "phLibNfc_RemoteDev_Receive");
    if (v7 == 13)
    {
      return v7;
    }

    goto LABEL_15;
  }

  v7 = 1;
  if (!a2 || !a3)
  {
LABEL_14:
    sub_297E4DFAC(0, &v12, 4, 5u, "phLibNfc_RemoteDev_Receive");
LABEL_15:
    sub_297E4D930(0, &v12, 4, 30, "phLibNfc_RemoteDev_Receive");
    sub_297E5AE60(v12, 32);
    sub_297E96818(v12, v7);
    return v7;
  }

  v7 = sub_297E4F450(v12, 32, 0, a2, 0);
  if (v7 == 147)
  {
    sub_297E4E0B0(0, &v12, 4, 2u, "State machine status is NFCSTATUS_REJECTED");
    v7 = 56;
    goto LABEL_14;
  }

  if (v7 != 13)
  {
    goto LABEL_6;
  }

  v9 = v11;
  *(v11 + 6744) = a3;
  *(v9 + 6752) = a4;
  sub_297E4DFAC(0, &v12, 4, 5u, "phLibNfc_RemoteDev_Receive");
  return v7;
}

uint64_t phLibNfc_RemoteDev_Send(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v13 = 0;
  v14 = a1;
  sub_297E4D930(0, &v14, 4, 31, "phLibNfc_RemoteDev_Send");
  sub_297E4E1B4(0, &v14, 4, 5u, "phLibNfc_RemoteDev_Send");
  v9 = sub_297E4F050(v14, &v13);
  if (v9)
  {
    v10 = 1;
  }

  else
  {
    v10 = v13 == 0;
  }

  if (v10)
  {
LABEL_6:
    sub_297E4DFAC(0, &v14, 4, 5u, "phLibNfc_RemoteDev_Send");
    if (v9 == 13)
    {
      return v9;
    }

    goto LABEL_18;
  }

  v9 = 1;
  if (!a3 || !a2 || !a4 || !*a3 || !*(a3 + 8))
  {
LABEL_17:
    sub_297E4DFAC(0, &v14, 4, 5u, "phLibNfc_RemoteDev_Send");
LABEL_18:
    sub_297E4D930(0, &v14, 4, 31, "phLibNfc_RemoteDev_Send");
    sub_297E5AE60(v14, 33);
    sub_297E96818(v14, v9);
    return v9;
  }

  v9 = sub_297E4F450(v14, 33, 0, a2, a3);
  if (v9 == 147)
  {
    sub_297E4E0B0(0, &v14, 4, 2u, "State machine status is NFCSTATUS_REJECTED");
    v9 = 56;
    goto LABEL_17;
  }

  if (v9 != 13)
  {
    goto LABEL_6;
  }

  v11 = v13;
  *(v13 + 6728) = a4;
  *(v11 + 6736) = a5;
  sub_297E4DFAC(0, &v14, 4, 5u, "phLibNfc_RemoteDev_Send");
  return v9;
}

uint64_t phLibNfc_SE_GetSecureElementList(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v17 = 0;
  v18 = a1;
  sub_297E4D930(0, &v18, 4, 6, "phLibNfc_SE_GetSecureElementList");
  sub_297E4E1B4(0, &v18, 4, 5u, "phLibNfc_SE_GetSecureElementList");
  v5 = sub_297E4F050(v18, &v17);
  v6 = v17;
  if (v5)
  {
    v7 = 1;
  }

  else
  {
    v7 = v17 == 0;
  }

  if (v7)
  {
    goto LABEL_11;
  }

  v5 = 1;
  if (!a2 || !a3)
  {
    goto LABEL_11;
  }

  if (*(v17 + 6079) == 1 || *(v17 + 6082) == 1 || *(v17 + 6083) == 1)
  {
    v5 = 111;
    goto LABEL_11;
  }

  if (!*(v17 + 6078))
  {
    v9 = sub_297E56FC8(v18);
    v6 = v17;
    if (v9 <= 2 && !*(v17 + 6104))
    {
LABEL_23:
      v5 = 147;
      goto LABEL_11;
    }
  }

  v10 = v6 + 4096;
  if (*(v10 + 1982) != 1)
  {
    if (*(v10 + 1985) != 1)
    {
      v5 = sub_297E4F450(v18, 8, 0, a2, a3);
      goto LABEL_11;
    }

    goto LABEL_23;
  }

  v5 = sub_297EE0FE8(v18, 8, 0, a2, a3);
  v11 = 0;
  v12 = 1;
  while (1)
  {
    v13 = v12;
    v14 = &unk_2A18BDDC0 + 112 * v11;
    if (*v14 == v18)
    {
      break;
    }

    v12 = 0;
    v11 = 1;
    if ((v13 & 1) == 0)
    {
      goto LABEL_11;
    }
  }

  v15 = *(v14 + 2);
  if (v15 <= 1)
  {
    v16 = *(&unk_2A18BDDC0 + 14 * v15 + 10);
    if (v16)
    {
      sub_297E5AE60(v18, 8);
      *(v16 + 152) = v5;
    }
  }

LABEL_11:
  sub_297E4DFAC(0, &v18, 4, 5u, "phLibNfc_SE_GetSecureElementList");
  sub_297E4D930(0, &v18, 4, 6, "phLibNfc_SE_GetSecureElementList");
  if (v5)
  {
    sub_297E5AE60(v18, 8);
    sub_297E96818(v18, v5);
  }

  return v5;
}

uint64_t phLibNfc_SE_SetMode(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v7 = a3;
  v25 = 0;
  v26 = a1;
  v24 = 135;
  v9 = 1;
  sub_297E4D930(0, &v26, 4, 134, "phLibNfc_SE_SetMode");
  sub_297E4E1B4(0, &v26, 4, 5u, "phLibNfc_SE_SetMode");
  v10 = 0;
  while (1)
  {
    v11 = &unk_2A18BDDC0 + 112 * v10;
    if (*v11 == v26)
    {
      break;
    }

    v12 = v9;
    v9 = 0;
    v10 = 1;
    if ((v12 & 1) == 0)
    {
      goto LABEL_9;
    }
  }

  v13 = *(v11 + 2);
  if (v13 > 1)
  {
LABEL_9:
    v15 = 0;
    goto LABEL_10;
  }

  v14 = *(&unk_2A18BDDC0 + 14 * v13 + 10);
  if (v14)
  {
    v15 = v14 + 120;
  }

  else
  {
    v15 = 0;
  }

LABEL_10:
  v16 = sub_297E4F050(v26, &v25);
  if (v16 || (v17 = v25) == 0)
  {
    if (v15)
    {
      *(v15 + 36) = 134;
      sub_297E96818(v26, v16);
    }

    goto LABEL_20;
  }

  if (!*(v25 + 6344) && !*(v25 + 6536) && !*(v25 + 6360))
  {
    if (v7 > 4 || !a4)
    {
      if (!v15)
      {
        v16 = 1;
        goto LABEL_23;
      }

      *(v15 + 36) = 134;
      v18 = v26;
      v16 = 1;
      v19 = 1;
      goto LABEL_17;
    }

    v21 = 0;
    while (1)
    {
      v22 = v25 + v21;
      if (*(v25 + v21 + 408) == a2)
      {
        break;
      }

      v21 += 16;
      if (v21 == 80)
      {
        v16 = 1;
        goto LABEL_55;
      }
    }

    *(v25 + 560) = v22 + 408;
    if (*(v22 + 416) == 1)
    {
      if (v7 == 2)
      {
        *(v17 + 1) = 0;
        *(v17 + 555) = 0;
        goto LABEL_51;
      }

      v23 = *(v17 + 2) & 1;
    }

    else
    {
      sub_297E4E0B0(0, &v26, 4, 4u, "\nMode set requested for UICC, no change in power state\n");
      v17 = v25;
      v23 = *v25;
    }

    *(v17 + 1) = v23;
    *(v17 + 555) = 0;
    if (v7 == 3)
    {
      if ((*(v17 + 2985) == 1 || *(v17 + 2986) == 1 || *(v17 + 2992) == 1) && *(*(v17 + 560) + 8) == 1)
      {
        v7 = 3;
      }

      else
      {
        v7 = 1;
      }
    }

LABEL_51:
    *(v17 + 572) = v7;
    sub_297EECFCC(v17, *(*(v17 + 560) + 8), v7, &v24);
    v16 = sub_297E4F450(v26, v24, 0, 0, 0);
    v17 = v25;
    if (v16)
    {
      if (v16 == 13)
      {
        *(v25 + 6680) = a4;
        *(v17 + 6688) = a5;
        **(v17 + 560) = a2;
        v17 = v25;
        *(v25 + 576) = 127;
      }
    }

    else
    {
      *(*(v25 + 560) + 12) = *(v25 + 572);
    }

LABEL_55:
    if (!*(v17 + 560))
    {
      sub_297E4E0B0(0, &v26, 4, 1u, "Invalid input Se Handle");
    }

LABEL_20:
    sub_297E4DFAC(0, &v26, 4, 5u, "phLibNfc_SE_SetMode");
    if (v16 == 13)
    {
      return v16;
    }

    goto LABEL_24;
  }

  if (!v15)
  {
    v16 = 111;
    goto LABEL_23;
  }

  *(v15 + 36) = 134;
  v18 = v26;
  v16 = 111;
  v19 = 111;
LABEL_17:
  sub_297E96818(v18, v19);
LABEL_23:
  sub_297E4DFAC(0, &v26, 4, 5u, "phLibNfc_SE_SetMode");
LABEL_24:
  sub_297E4D930(0, &v26, 4, 134, "phLibNfc_SE_SetMode");
  if (v24 == 135)
  {
    if (v15)
    {
      *(v15 + 36) = 134;
    }
  }

  else
  {
    sub_297E5AE60(v26, v24);
  }

  sub_297E96818(v26, v16);
  return v16;
}

uint64_t phLibNfc_eSE_Transceive(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v28 = 0;
  v29 = a1;
  v27 = 0;
  sub_297E4D930(0, &v29, 4, 124, "phLibNfc_eSE_Transceive");
  sub_297E4E1B4(0, &v29, 4, 5u, "phLibNfc_eSE_Transceive");
  sub_297E67EB0(v29, &v27);
  v11 = sub_297E4F050(v29, &v28);
  v12 = v11;
  v13 = v28;
  if (!v28)
  {
    LODWORD(v14) = 135;
    goto LABEL_18;
  }

  LODWORD(v14) = 135;
  if (v11 == 49 || v11 == 145)
  {
    goto LABEL_25;
  }

  v15 = 1;
  v16 = "phLibNfc_eSE_Transceive: Invalid input parameters";
  if (!a3 || !a2 || !a4)
  {
    goto LABEL_24;
  }

  if (!*a3 && !*(a3 + 8) && !*(a3 + 16) && !*(a3 + 24))
  {
    v16 = "phLibNfc_eSE_Transceive: Send or Receive data invalid";
    goto LABEL_24;
  }

  if (*(v28 + 555) != 1 && *(v28 + 6079) != 1 && *(v28 + 6083) != 1 && *(v28 + 6082) != 1 && *(v28 + 6080) != 1)
  {
    v17 = *(v28 + 6078);
    if (v17 == 1)
    {
      if (*(v28 + 440) != a2)
      {
        v16 = "phLibNfc_eSE_Transceive: Invalid SE Handle";
LABEL_24:
        sub_297E4E0B0(0, &v29, 4, 1u, v16);
        v12 = v15;
        goto LABEL_25;
      }

      v14 = 187;
      if (!v11)
      {
LABEL_45:
        v22 = sub_297E4F450(v29, v14, 0, a3, 0);
        v12 = v22;
        if ((v22 - 111) <= 0x24 && ((1 << (v22 - 111)) & 0x1500000001) != 0)
        {
          goto LABEL_25;
        }

        if (v22 != 13)
        {
          v15 = 255;
          v16 = "phLibNfc_eSE_Transceive:Hci Transceive sequence could not start!";
          goto LABEL_24;
        }

        if (v17 == 1 && (v24 = v27) != 0)
        {
          v27[81] = a4;
          v24[82] = a6;
          if (a5)
          {
            v24[83] = a5;
            v25 = v24 + 84;
LABEL_60:
            *v25 = a6;
          }
        }

        else
        {
          v26 = v28;
          *(v28 + 6344) = a4;
          v26[794] = a6;
          if (a5)
          {
            v26[799] = a5;
            v25 = v26 + 800;
            goto LABEL_60;
          }
        }

        sub_297E4DFAC(0, &v29, 4, 5u, "phLibNfc_eSE_Transceive");
        return 13;
      }
    }

    else
    {
      if (*(v28 + 6081) == 1)
      {
        v12 = 147;
        goto LABEL_25;
      }

      *(v28 + 560) = 0;
      v20 = v13 + 408;
      v21 = 4;
      v16 = "phLibNfc_eSE_Transceive: Invalid SE Handle";
      while (*v20 != a2)
      {
        v20 += 16;
        if (!--v21)
        {
          goto LABEL_24;
        }
      }

      *(v13 + 560) = v20;
      if (*(v20 + 8) == 1)
      {
        if (*(a3 + 40) == 1 && !*(v20 + 12))
        {
          v14 = 143;
          if (!v11)
          {
            goto LABEL_45;
          }
        }

        else
        {
          v14 = 142;
          if (!v11)
          {
            goto LABEL_45;
          }
        }
      }

      else
      {
        v14 = 135;
        if (!v11)
        {
          goto LABEL_45;
        }
      }
    }

LABEL_18:
    sub_297E4DFAC(0, &v29, 4, 5u, "phLibNfc_eSE_Transceive");
    if (v12 == 13)
    {
      return v12;
    }

    goto LABEL_26;
  }

  v12 = 111;
LABEL_25:
  sub_297E4DFAC(0, &v29, 4, 5u, "phLibNfc_eSE_Transceive");
LABEL_26:
  sub_297E4D930(0, &v29, 4, 124, "phLibNfc_eSE_Transceive");
  if (v14 == 135)
  {
    v18 = 142;
  }

  else
  {
    v18 = v14;
  }

  sub_297E5AE60(v29, v18);
  sub_297E96818(v29, v12);
  return v12;
}

uint64_t phLibNfc_SE_RawTranseive(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v21 = 0;
  v22 = a1;
  sub_297E4D930(0, &v22, 4, 125, "phLibNfc_SE_RawTranseive");
  sub_297E4E1B4(0, &v22, 4, 5u, "phLibNfc_SE_RawTranseive");
  v11 = sub_297E4F050(v22, &v21);
  v12 = v11;
  if (!v21)
  {
    goto LABEL_28;
  }

  if (v11 == 49 || v11 == 145)
  {
    goto LABEL_32;
  }

  v12 = 1;
  v13 = "phLibNfc_SE_RawTranseive: Invalid input parameters";
  if (!a2 || !a3 || !a4)
  {
    goto LABEL_31;
  }

  if (*(a3 + 16) && (!*(a3 + 32) || *(a3 + 28) < 2u))
  {
    v13 = "phLibNfc_SE_RawTranseive: Receive data invalid";
LABEL_31:
    sub_297E4E0B0(0, &v22, 4, 1u, v13);
    goto LABEL_32;
  }

  if (*(v21 + 555) != 1)
  {
    v14 = v21 + 408;
    v15 = 4;
    do
    {
      if (*v14 == a2)
      {
        *(v21 + 560) = v14;
        goto LABEL_19;
      }

      v14 += 16;
      --v15;
    }

    while (v15);
    v14 = *(v21 + 560);
    if (!v14)
    {
      v12 = 255;
      v13 = "phLibNfc_SE_RawTranseive: Invalid SE Handle";
      goto LABEL_31;
    }

LABEL_19:
    if (*(v14 + 8) != 1)
    {
      v12 = 51;
      v13 = "phLibNfc_SE_RawTranseive:Wrong handle, eSE is supported in raw mode";
      goto LABEL_31;
    }

    v16 = sub_297E4F450(v22, 144, 0, a3, 0);
    v12 = v16;
    if (((v16 - 111) > 0x24 || ((1 << (v16 - 111)) & 0x1500000001) == 0) && v16 != 1)
    {
      if (v16 == 13)
      {
        v20 = v21;
        *(v21 + 6360) = a4;
        v20[796] = a6;
        v20[799] = a5;
        v20[800] = a6;
        sub_297E4DFAC(0, &v22, 4, 5u, "phLibNfc_SE_RawTranseive");
        return v12;
      }

      v12 = 255;
      v13 = "phLibNfc_SE_RawTranseive:Hci Transceive sequence could not start!";
      goto LABEL_31;
    }

LABEL_28:
    sub_297E4DFAC(0, &v22, 4, 5u, "phLibNfc_SE_RawTranseive");
    if (v12 == 13)
    {
      return v12;
    }

    goto LABEL_33;
  }

  v12 = 111;
LABEL_32:
  sub_297E4DFAC(0, &v22, 4, 5u, "phLibNfc_SE_RawTranseive");
LABEL_33:
  sub_297E4D930(0, &v22, 4, 125, "phLibNfc_SE_RawTranseive");
  sub_297E5AE60(v22, 144);
  sub_297E96818(v22, v12);
  return v12;
}

uint64_t phLibNfc_SE_NtfRegister(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v10 = 0;
  v11 = a1;
  sub_297E4D930(0, &v11, 4, 8, "phLibNfc_SE_NtfRegister");
  sub_297E4E1B4(0, &v11, 4, 5u, "phLibNfc_SE_NtfRegister");
  v5 = sub_297E4F050(v11, &v10);
  if (v5)
  {
    v6 = 1;
  }

  else
  {
    v6 = v10 == 0;
  }

  if (!v6)
  {
    if (a2)
    {
      v7 = sub_297E4F450(v11, 13, 0, 0, 0);
      v5 = v7;
      if (!v7)
      {
        v8 = v10;
        *(v10 + 6696) = a2;
        *(v8 + 6704) = a3;
      }
    }

    else
    {
      v5 = 1;
    }
  }

  sub_297E4DFAC(0, &v11, 4, 5u, "phLibNfc_SE_NtfRegister");
  sub_297E4D930(0, &v11, 4, 8, "phLibNfc_SE_NtfRegister");
  if (v5)
  {
    sub_297E5AE60(v11, 13);
    sub_297E96818(v11, v5);
  }

  return v5;
}

uint64_t phLibNfc_SE_NtfUnregister(uint64_t a1)
{
  v5 = 0;
  v6 = a1;
  sub_297E4D930(0, &v6, 4, 9, "phLibNfc_SE_NtfUnregister");
  sub_297E4E1B4(0, &v6, 4, 5u, "phLibNfc_SE_NtfUnregister");
  v1 = sub_297E4F050(v6, &v5);
  if (v1)
  {
    v2 = 1;
  }

  else
  {
    v2 = v5 == 0;
  }

  if (!v2)
  {
    v3 = sub_297E4F450(v6, 14, 0, 0, 0);
    v1 = v3;
    if (!v3)
    {
      *(v5 + 6696) = 0u;
    }
  }

  sub_297E4DFAC(0, &v6, 4, 5u, "phLibNfc_SE_NtfUnregister");
  sub_297E4D930(0, &v6, 4, 9, "phLibNfc_SE_NtfUnregister");
  if (v1)
  {
    sub_297E5AE60(v6, 14);
    sub_297E96818(v6, v1);
  }

  return v1;
}

uint64_t phLibNfc_Mgt_SetCE_ConfigParams(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v12 = 0;
  v13 = a1;
  sub_297E4D930(0, &v13, 4, 35, "phLibNfc_Mgt_SetCE_ConfigParams");
  sub_297E4E1B4(0, &v13, 4, 5u, "phLibNfc_Mgt_SetCE_ConfigParams");
  v7 = sub_297E4F050(v13, &v12);
  if (v7)
  {
    v8 = 1;
  }

  else
  {
    v8 = v12 == 0;
  }

  if (v8)
  {
LABEL_6:
    sub_297E4DFAC(0, &v13, 4, 5u, "phLibNfc_Mgt_SetCE_ConfigParams");
    if (v7 == 13)
    {
      return v7;
    }

    goto LABEL_13;
  }

  v7 = 1;
  v9 = "Invalid input Parameter";
  if (!a2 || !a3)
  {
    goto LABEL_12;
  }

  if (*(v12 + 2994) != 1)
  {
    v7 = sub_297E4F450(v13, 37, 0, a2, 0);
    if (v7 == 13)
    {
      v11 = v12;
      *(v12 + 6488) = a3;
      *(v11 + 6496) = a4;
      sub_297E4DFAC(0, &v13, 4, 5u, "phLibNfc_Mgt_SetCE_ConfigParams");
      return v7;
    }

    goto LABEL_6;
  }

  v7 = 51;
  v9 = "Feature not supported";
LABEL_12:
  sub_297E4E0B0(0, &v13, 4, 1u, v9);
  sub_297E4DFAC(0, &v13, 4, 5u, "phLibNfc_Mgt_SetCE_ConfigParams");
LABEL_13:
  sub_297E4D930(0, &v13, 4, 35, "phLibNfc_Mgt_SetCE_ConfigParams");
  sub_297E5AE60(v13, 37);
  sub_297E96818(v13, v7);
  return v7;
}

uint64_t phLibNfc_CardEmulation_NtfRegister(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v10 = 0;
  v11 = a1;
  sub_297E4D930(0, &v11, 4, 36, "phLibNfc_CardEmulation_NtfRegister");
  sub_297E4E1B4(0, &v11, 4, 5u, "phLibNfc_CardEmulation_NtfRegister");
  v5 = sub_297E4F050(v11, &v10);
  if (v5)
  {
    v6 = 1;
  }

  else
  {
    v6 = v10 == 0;
  }

  if (!v6)
  {
    if (a2)
    {
      v7 = sub_297E4F450(v11, 38, 0, 0, 0);
      v5 = v7;
      if (!v7)
      {
        v8 = v10;
        *(v10 + 6712) = a2;
        *(v8 + 6720) = a3;
      }
    }

    else
    {
      v5 = 1;
    }
  }

  sub_297E4DFAC(0, &v11, 4, 5u, "phLibNfc_CardEmulation_NtfRegister");
  sub_297E4D930(0, &v11, 4, 36, "phLibNfc_CardEmulation_NtfRegister");
  if (v5)
  {
    sub_297E5AE60(v11, 38);
    sub_297E96818(v11, v5);
  }

  return v5;
}

uint64_t phLibNfc_eSE_GetAtr(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v22 = 0;
  v23 = a1;
  sub_297E4D930(0, &v23, 4, 126, "phLibNfc_eSE_GetAtr");
  sub_297E4E1B4(0, &v23, 4, 5u, "phLibNfc_eSE_GetAtr");
  v9 = sub_297E4F050(v23, &v22);
  v10 = v9;
  if (!v22)
  {
    goto LABEL_33;
  }

  if (v9 == 49 || v9 == 145)
  {
LABEL_17:
    sub_297E4DFAC(0, &v23, 4, 5u, "phLibNfc_eSE_GetAtr");
LABEL_34:
    sub_297E4D930(0, &v23, 4, 126, "phLibNfc_eSE_GetAtr");
    sub_297E5AE60(v23, 145);
    sub_297E96818(v23, v10);
    return v10;
  }

  if (!a3 || !a2 || !a4 || !*a3 || !*(a3 + 8))
  {
    v13 = "phLibNfc_eSE_GetAtr: Invalid input parameters";
LABEL_16:
    v10 = 1;
    sub_297E4E0B0(0, &v23, 4, 1u, v13);
    goto LABEL_17;
  }

  v11 = (v22 + 420);
  v12 = 4;
  while (*(v11 - 3) != a2 || *(v11 - 1) != 1 || *v11 != 2)
  {
    v11 += 4;
    if (!--v12)
    {
      goto LABEL_14;
    }
  }

  v14 = *(v22 + 512);
  if (!v14)
  {
LABEL_14:
    v13 = "phLibNfc_eSE_GetAtr: Invalid Hci context received or Invalid SE Handle!";
    goto LABEL_16;
  }

  v15 = sub_297E4F450(v23, 145, 0, 0, 0);
  if (v15 != 13)
  {
    v17 = v15;
    sub_297E4E0B0(0, &v23, 4, 1u, "phLibNfc_eSE_GetAtr Failed!");
    if (v17 == 145 || v17 == 111 || v17 == 143)
    {
      v10 = v17;
    }

    else
    {
      v10 = 255;
    }

    goto LABEL_17;
  }

  sub_297E4E0B0(0, &v23, 4, 4u, "phLibNfc_eSE_GetAtr Cmd Sent to lower layer");
  v16 = v22;
  *(v22 + 6536) = a4;
  *(v16 + 6544) = a5;
  *(v16 + 600) = a3;
  if (sub_297EEEC64(v14) || (v20 = *(v22 + 512), *(v20 + 868) = 2000, !phOsalNfc_Timer_Start()))
  {
    sub_297E4DFAC(0, &v23, 4, 5u, "phLibNfc_eSE_GetAtr");
    return 13;
  }

  v10 = phOsalNfc_Timer_Delete();
  *(v20 + 856) = 0xFFFFFFFFFFFFLL;
  sub_297E4E0B0(0, &v23, 4, 1u, "phLibNfc_eSE_GetAtr: SE Get ATR Timer Start Failed");
LABEL_33:
  sub_297E4DFAC(0, &v23, 4, 5u, "phLibNfc_eSE_GetAtr");
  if (v10 != 13)
  {
    goto LABEL_34;
  }

  return v10;
}

uint64_t phLibNfc_Mgt_SetNfccParams(uint64_t a1, int *a2, uint64_t a3, uint64_t a4)
{
  v33 = 0;
  v34 = a1;
  v32 = 2;
  v30 = 0;
  v31 = 0;
  v29 = 0;
  v7 = 1;
  sub_297E4D930(0, &v34, 4, 132, "phLibNfc_Mgt_SetNfccParams");
  sub_297E4E1B4(0, &v34, 4, 5u, "phLibNfc_Mgt_SetNfccParams");
  sub_297E5D114(v34, &v30);
  sub_297E67EB0(v34, &v31);
  sub_297E67F6C(v34, &v29);
  v8 = 0;
  while (1)
  {
    v9 = &unk_2A18BDDC0 + 112 * v8;
    if (*v9 == v34)
    {
      break;
    }

    v10 = v7;
    v7 = 0;
    v8 = 1;
    if ((v10 & 1) == 0)
    {
      goto LABEL_9;
    }
  }

  v11 = *(v9 + 2);
  if (v11 > 1)
  {
LABEL_9:
    v13 = 0;
    goto LABEL_10;
  }

  v12 = *(&unk_2A18BDDC0 + 14 * v11 + 10);
  if (v12)
  {
    v13 = v12 + 120;
  }

  else
  {
    v13 = 0;
  }

LABEL_10:
  v14 = sub_297E4F050(v34, &v33);
  if (v14)
  {
    v15 = 1;
  }

  else
  {
    v15 = v33 == 0;
  }

  v16 = v15;
  if (!a2 || !v16 || !*a2)
  {
    if (!a2 || !a3)
    {
      goto LABEL_44;
    }

    v19 = *a2;
    if (*a2 <= 4)
    {
      if (v19 <= 2)
      {
        if (!v19)
        {
          if (v33)
          {
            if (!v29)
            {
              phOsalNfc_MemCopy();
              v20 = v34;
              v18 = 67;
              v21 = 67;
              goto LABEL_68;
            }

            if (v30 && *(v30 + 836) == 1)
            {
              sub_297E4E0B0(0, &v34, 4, 2u, "Degraded FW update on going");
              v14 = 147;
LABEL_59:
              v17 = 1;
              v18 = 208;
              goto LABEL_74;
            }

            if (*(v33 + 6082) == 1 || *(v33 + 6083) == 1 || *(v33 + 6079) == 1 || *(v33 + 6080) == 1)
            {
              sub_297E4E0B0(0, &v34, 4, 2u, "Previous API in progress");
              v14 = 111;
              goto LABEL_59;
            }
          }

          v20 = v34;
          v18 = 188;
          v22 = a2 + 2;
          v23 = &v32;
          v21 = 188;
          v24 = v14;
LABEL_69:
          v14 = sub_297E4F450(v20, v21, v24, v22, v23);
          v17 = 0;
          goto LABEL_70;
        }

        if (v19 == 1)
        {
          if (*(v33 + 2994) != 1)
          {
            phOsalNfc_MemCopy();
            v20 = v34;
            v18 = 68;
            v21 = 68;
            goto LABEL_68;
          }

          goto LABEL_58;
        }

        goto LABEL_44;
      }

      if (v19 == 3)
      {
        if (*(v33 + 2994) != 1)
        {
          phOsalNfc_MemCopy();
          v20 = v34;
          v18 = 69;
          v21 = 69;
          goto LABEL_68;
        }
      }

      else
      {
        if (v19 != 4)
        {
          goto LABEL_44;
        }

        if (*(v33 + 2994) != 1)
        {
          phOsalNfc_MemCopy();
          v20 = v34;
          v18 = 70;
          v21 = 70;
          goto LABEL_68;
        }
      }
    }

    else if (v19 <= 6)
    {
      if (v19 == 5)
      {
        phOsalNfc_MemCopy();
        v20 = v34;
        v18 = 71;
        v21 = 71;
        goto LABEL_68;
      }

      if (v19 != 6)
      {
        goto LABEL_44;
      }

      if (*(v33 + 2994) != 1)
      {
        phOsalNfc_MemCopy();
        v20 = v34;
        v18 = 73;
        v21 = 73;
        goto LABEL_68;
      }
    }

    else
    {
      switch(v19)
      {
        case 7:
          if (*(v33 + 2994) != 1)
          {
            phOsalNfc_MemCopy();
            v20 = v34;
            v18 = 74;
            v21 = 74;
            goto LABEL_68;
          }

          break;
        case 8:
          if (*(v33 + 2994) != 1)
          {
            phOsalNfc_MemCopy();
            v20 = v34;
            v18 = 75;
            v21 = 75;
            goto LABEL_68;
          }

          break;
        case 9:
          if (*(v33 + 2994) != 1)
          {
            phOsalNfc_MemCopy();
            v20 = v34;
            v18 = 76;
            v21 = 76;
LABEL_68:
            v24 = v14;
            v22 = 0;
            v23 = 0;
            goto LABEL_69;
          }

          break;
        default:
LABEL_44:
          v17 = 1;
          sub_297E4E0B0(0, &v34, 4, 1u, "phLibNfc_Mgt_SetNfccParams: Invalid input parameters");
          if (v13)
          {
            *(v13 + 36) = 132;
            sub_297E96818(v34, 1);
          }

          v18 = 208;
          v14 = 1;
          goto LABEL_74;
      }
    }

LABEL_58:
    v14 = 51;
    goto LABEL_59;
  }

  v17 = 1;
  sub_297E4E0B0(0, &v34, 4, 1u, "phLibNfc_Mgt_SetNfccParams: LIBNFC Not Initialized");
  if (v13)
  {
    *(v13 + 36) = 132;
    sub_297E96818(v34, v14);
  }

  v18 = 208;
LABEL_70:
  if (v14 == 13)
  {
    sub_297E4F0E8(v34, &v33);
    sub_297E67EB0(v34, &v31);
    v25 = v33;
    if (v33 && (v26 = v31) != 0)
    {
      *(v33 + 6082) = 1;
      *(v26 + 712) = a3;
      v27 = (v26 + 720);
    }

    else
    {
      if (!v33)
      {
LABEL_79:
        sub_297E4DFAC(0, &v34, 4, 5u, "phLibNfc_Mgt_SetNfccParams");
        return 13;
      }

      *(v33 + 6776) = a3;
      v27 = (v25 + 6784);
    }

    *v27 = a4;
    goto LABEL_79;
  }

LABEL_74:
  sub_297E4DFAC(0, &v34, 4, 5u, "phLibNfc_Mgt_SetNfccParams");
  sub_297E4D930(0, &v34, 4, 132, "phLibNfc_Mgt_SetNfccParams");
  if ((v17 & 1) == 0)
  {
    sub_297E5AE60(v34, v18);
    sub_297E96818(v34, v14);
  }

  return v14;
}

uint64_t phLibNfc_Mgt_RawCtrlMsgTransceive(uint64_t a1, int a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v16 = a1;
  v15 = a2;
  v14 = 0;
  sub_297E4D930(0, &v16, 4, 67, "phLibNfc_Mgt_RawCtrlMsgTransceive");
  sub_297E4E1B4(0, &v16, 4, 5u, "phLibNfc_Mgt_RawCtrlMsgTransceive");
  v9 = sub_297E4F050(v16, &v14);
  if (v9)
  {
    v10 = v9;
    sub_297E4E0B0(0, &v16, 4, 1u, "phLibNfc_Mgt_RawCtrlMsgTransceive: LIBNFC Not Initialized");
    sub_297E4DFAC(0, &v16, 4, 5u, "phLibNfc_Mgt_RawCtrlMsgTransceive");
    if (v10 == 13)
    {
      return v10;
    }
  }

  else
  {
    if (a3 && a4 && ((v11 = *(a3 + 8)) == 0 || v11 <= 0xFF && *a3) && !sub_297E8D380(a5, a2))
    {
      v10 = sub_297E4F450(v16, 72, 0, a3, &v15);
      if (v10 == 13)
      {
        v13 = v14;
        *(v14 + 6840) = a4;
        *(v13 + 6848) = a5;
        sub_297E4DFAC(0, &v16, 4, 5u, "phLibNfc_Mgt_RawCtrlMsgTransceive");
        return v10;
      }
    }

    else
    {
      v10 = 1;
      sub_297E4E0B0(0, &v16, 4, 1u, "phLibNfc_Mgt_RawCtrlMsgTransceive: Invalid input parameters");
    }

    sub_297E4DFAC(0, &v16, 4, 5u, "phLibNfc_Mgt_RawCtrlMsgTransceive");
  }

  sub_297E4D930(0, &v16, 4, 67, "phLibNfc_Mgt_RawCtrlMsgTransceive");
  sub_297E5AE60(v16, 72);
  sub_297E96818(v16, v10);
  return v10;
}

uint64_t phLibNfc_Mgt_eSeCfgDnldMode(uint64_t a1, unsigned int a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v26 = a1;
  v25 = a2;
  v23 = 0;
  v24 = 0;
  v21 = 0;
  v22 = 0;
  v20 = 1;
  sub_297E4D930(0, &v26, 4, 84, "phLibNfc_Mgt_eSeCfgDnldMode");
  sub_297E4E1B4(0, &v26, 4, 5u, "phLibNfc_Mgt_eSeCfgDnldMode");
  sub_297E5D114(v26, &v23);
  sub_297E67F6C(v26, &v24);
  sub_297E67EB0(v26, &v21);
  v11 = sub_297E4F050(v26, &v22);
  if (!v11 && v22)
  {
    if (v24)
    {
      if (v22[6079] == 1 || v22[6082] == 1 || v22[6083] == 1)
      {
        sub_297E4E0B0(0, &v26, 4, 2u, "Previous API call in progress");
        v11 = 111;
        goto LABEL_10;
      }

      if (*(v23 + 836) != 1)
      {
        v11 = 0;
        goto LABEL_10;
      }

      sub_297E4E0B0(0, &v26, 4, 2u, "Degraded FW update on going");
    }

    else
    {
      sub_297E4E0B0(0, &v26, 4, 1u, "This API will only be handled only in the Libnfc uninitialized state");
    }

    v11 = 147;
  }

LABEL_10:
  v12 = 1;
  v13 = "phLibNfc_Mgt_eSeCfgDnldMode: Invalid input parameters";
  if (a2 > 2)
  {
    goto LABEL_45;
  }

  if (!a5)
  {
    goto LABEL_45;
  }

  if (!a3)
  {
    goto LABEL_45;
  }

  v14 = v26;
  if (!v26)
  {
    goto LABEL_45;
  }

  if (v11 != 49)
  {
    if (v11 == 13)
    {
      goto LABEL_36;
    }

    if (v11)
    {
LABEL_22:
      LODWORD(v15) = 185;
LABEL_46:
      sub_297E4D930(0, &v26, 4, 84, "phLibNfc_Mgt_eSeCfgDnldMode");
      sub_297E5AE60(v26, v15);
      sub_297E96818(v26, v11);
      goto LABEL_47;
    }
  }

  if (a2 == 1 && !v11 && v22)
  {
    if (v22[6078] == 1)
    {
      v11 = 0;
      goto LABEL_22;
    }
  }

  else if (a2 == 2)
  {
    if (!v22 || !v22[6078])
    {
      v12 = 147;
      v13 = "eSE not enabled";
      goto LABEL_45;
    }

    v16 = v23;
    if (v23)
    {
      v17 = *(v23 + 116);
      if ((v17 - 209) >= 3 && v17 != 96)
      {
        LODWORD(v15) = 185;
        v11 = 51;
        goto LABEL_46;
      }

      goto LABEL_31;
    }

LABEL_41:
    v12 = 255;
    v13 = "phLibNfc_Mgt_eSeCfgDnldMode: Invalid IOCTL context!!";
LABEL_45:
    sub_297E4E0B0(0, &v26, 4, 1u, v13);
    LODWORD(v15) = 185;
    v11 = v12;
    goto LABEL_46;
  }

  v16 = v23;
  if (!v23)
  {
    goto LABEL_41;
  }

LABEL_31:
  *(v16 + 8) = v26;
  if (a2 == 1)
  {
    v15 = 185;
  }

  else
  {
    v15 = 186;
  }

  v11 = sub_297E4F450(v14, v15, v11, &v25, &v20);
  if (v11 != 13)
  {
    goto LABEL_46;
  }

  v14 = v26;
LABEL_36:
  sub_297E4F0E8(v14, &v22);
  if (v22)
  {
    v22[6079] = 1;
  }

  sub_297E67EB0(v26, &v21);
  v18 = v21;
  if (v21)
  {
    v21[87] = a3;
    v18[88] = a4;
    v18[85] = a5;
    v11 = 13;
    v18[86] = a6;
  }

  else
  {
    v11 = 13;
  }

LABEL_47:
  sub_297E4DFAC(0, &v26, 4, 5u, "phLibNfc_Mgt_eSeCfgDnldMode");
  return v11;
}

uint64_t phLibNfc_Mgt_DnldGeneralNtfRegister(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v11 = 0;
  v12 = a1;
  v10 = 0;
  v5 = 1;
  sub_297E4D930(0, &v12, 4, 83, "phLibNfc_Mgt_DnldGeneralNtfRegister");
  sub_297E4E1B4(0, &v12, 4, 5u, "phLibNfc_Mgt_DnldGeneralNtfRegister");
  if (!a2)
  {
    v6 = "phLibNfc_Mgt_DnldGeneralNtfRegister: Invalid input parameters";
LABEL_11:
    sub_297E4E0B0(0, &v12, 4, 1u, v6);
    goto LABEL_12;
  }

  sub_297E5D114(v12, &v11);
  sub_297E4F0E8(v12, &v10);
  if (!v11)
  {
    v5 = 255;
    v6 = "phLibNfc_Mgt_DnldGeneralNtfRegister: Invalid IOCTL context!!";
    goto LABEL_11;
  }

  if (v10 && (v10[6079] == 1 || v10[6080] == 1 || v10[6083] == 1 || v10[6082] == 1))
  {
    v5 = 111;
  }

  else
  {
    v8 = sub_297E4F450(v12, 179, 0, 0, 0);
    v5 = v8;
    if (!v8)
    {
      v9 = v11;
      *(v11 + 200) = a2;
      *(v9 + 208) = a3;
      sub_297E4D930(v8, &v12, 4, 83, "phLibNfc_Mgt_DnldGeneralNtfRegister");
      goto LABEL_13;
    }
  }

LABEL_12:
  sub_297E4D930(0, &v12, 4, 83, "phLibNfc_Mgt_DnldGeneralNtfRegister");
  sub_297E5AE60(v12, 179);
  sub_297E96818(v12, v5);
LABEL_13:
  sub_297E4DFAC(0, &v12, 4, 5u, "phLibNfc_Mgt_DnldGeneralNtfRegister");
  return v5;
}

uint64_t phLibNfc_Mgt_GetTagID(uint64_t a1, unsigned int a2)
{
  v10 = 0;
  v11 = a1;
  sub_297E4D930(0, &v11, 4, 135, "phLibNfc_Mgt_GetTagID");
  sub_297E4E1B4(0, &v11, 4, 5u, "phLibNfc_Mgt_GetTagID");
  v3 = sub_297E4F050(v11, &v10);
  if (v3)
  {
    v4 = 1;
  }

  else
  {
    v4 = v10 == 0;
  }

  if (v4)
  {
    v5 = v3;
    v6 = " Invalid driver handle or libctx";
LABEL_9:
    sub_297E4E0B0(0, &v11, 4, 1u, v6);
    v8 = 0;
    goto LABEL_10;
  }

  v7 = sub_297E4F450(v11, 9, 0, 0, 0);
  v5 = v7;
  if (v7)
  {
    v6 = "Get tag id is not allowed in this state";
    goto LABEL_9;
  }

  v8 = sub_297EA6AB4(v10, a2);
LABEL_10:
  sub_297E4DFAC(0, &v11, 4, 5u, "phLibNfc_Mgt_GetTagID");
  sub_297E4D930(0, &v11, 4, 135, "phLibNfc_Mgt_GetTagID");
  if (v5)
  {
    sub_297E5AE60(v11, 9);
    sub_297E96818(v11, v5);
  }

  return v8;
}

uint64_t phLibNfc_Mgt_InvalidateSeRmProhibitTimer(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v10 = 0;
  v11 = a1;
  sub_297E4D930(0, &v11, 4, 136, "phLibNfc_Mgt_InvalidateSeRmProhibitTimer");
  sub_297E4E1B4(0, &v11, 4, 5u, "phLibNfc_Mgt_InvalidateSeRmProhibitTimer");
  v5 = sub_297E4F050(v11, &v10);
  if (v5)
  {
    v6 = 1;
  }

  else
  {
    v6 = v10 == 0;
  }

  if (v6)
  {
    v7 = v5;
    sub_297E4E0B0(0, &v11, 4, 1u, " Invalid driver handle or libctx");
    if (v7 == 13)
    {
      goto LABEL_15;
    }
  }

  else if (a2)
  {
    if (*(v10 + 2994) == 1 || *(v10 + 2990) == 1 || *(v10 + 2991) == 1 || *(v10 + 2987) == 1 && *(v10 + 3136) == 2)
    {
      v7 = 51;
    }

    else
    {
      v7 = sub_297E4F450(v11, 61, 0, 0, 0);
      if (v7 == 13)
      {
        v9 = v10;
        *(v10 + 6808) = a2;
        *(v9 + 6816) = a3;
        goto LABEL_15;
      }
    }
  }

  else
  {
    v7 = 1;
    sub_297E4E0B0(0, &v11, 4, 1u, "phLibNfc_Mgt_InvalidateSeRmProhibitTimer: Invalid input parameters");
  }

  sub_297E5AE60(v11, 61);
  sub_297E96818(v11, v7);
  sub_297E4D930(0, &v11, 4, 136, "phLibNfc_Mgt_InvalidateSeRmProhibitTimer");
LABEL_15:
  sub_297E4DFAC(0, &v11, 4, 5u, "phLibNfc_Mgt_InvalidateSeRmProhibitTimer");
  return v7;
}

uint64_t sub_297ECA38C(uint64_t a1, void *a2, uint64_t a3, int a4, uint64_t a5, _BYTE *a6, int a7, uint64_t a8, unsigned __int16 *a9)
{
  sub_297E4E1B4(4, a1, 8, 5u, "phFriNfc_OvrHal_Transceive");
  if (a1 && ((v16 = *(a1 + 256), a9) ? (v17 = a8 == 0) : (v17 = 1), !v17 ? (v18 = a6 == 0) : (v18 = 1), !v18 ? (v19 = a3 == 0) : (v19 = 1), !v19 ? (v20 = a2 == 0) : (v20 = 1), !v20 ? (v21 = v16 == 0) : (v21 = 1), !v21 && (a7 || *(a3 + 4) == 22)))
  {
    *(a1 + 120) = a4;
    v24 = *(a3 + 4);
    if (v24 == 16 || v24 == 12)
    {
      *(a1 + 124) = *a6;
      v25 = a7 - 1;
      if ((a4 & 0xFFFFFFFE) == 0x60)
      {
        v26 = *(a3 + 18);
        *(a1 + 152) = a1 + 264;
        if (v26 != 7 && v26 != 4)
        {
          *(a1 + 160) = v25;
          v22 = 20;
          goto LABEL_21;
        }

        phOsalNfc_MemCopy();
        phOsalNfc_MemCopy();
        v25 = a7 + 3;
      }

      else
      {
        *(a1 + 152) = a6 + 1;
      }
    }

    else
    {
      *(a1 + 152) = a6;
      v25 = a7;
    }

    *(a1 + 160) = v25;
    *(a1 + 168) = a8;
    *(a1 + 176) = *a9;
    *(a1 + 232) = a9;
    sub_297ECA568(a1, a2, 8);
    *(a1 + 126) = 500;
    *(v16 + 1532) = 0;
    v22 = sub_297EA14F4(a3, a1 + 120, sub_297ECA5EC, v16);
  }

  else
  {
    v22 = 1;
  }

LABEL_21:
  sub_297E4DFAC(4, a1, 8, 5u, "phFriNfc_OvrHal_Transceive");
  return v22;
}

uint64_t sub_297ECA568(uint64_t a1, void *a2, char a3)
{
  *a1 = a3;
  sub_297E4E1B4(4, a1, 8, 5u, "phFriNfc_OvrHal_SetComplInfo");
  *(a1 + 8) = *a2;
  *(a1 + 16) = a2[1];

  return sub_297E4DFAC(4, a1, 8, 5u, "phFriNfc_OvrHal_SetComplInfo");
}

uint64_t sub_297ECA5EC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v10 = 0;
  v11 = a1;
  sub_297E4E1B4(0, &v11, 8, 5u, "phFriNfc_OvrHal_CB_Transceive");
  sub_297E4F0E8(v11, &v10);
  if (v10)
  {
    v7 = *(v10 + 6952);
    if (v7)
    {
      if (a4)
      {
        **(v7 + 232) = *(a4 + 8);
      }

      v8 = *(v7 + 8);
      if (v8)
      {
        v8(v11, *(v7 + 16), a5);
      }
    }
  }

  return sub_297E4DFAC(0, &v11, 8, 5u, "phFriNfc_OvrHal_CB_Transceive");
}

uint64_t sub_297ECA698(uint64_t a1, void *a2, uint64_t a3)
{
  v11 = 0;
  v12 = 0;
  sub_297E4E1B4(4, a1, 8, 5u, "phFriNfc_OvrHal_Reconnect");
  v6 = 1;
  if (a1)
  {
    if (a3)
    {
      if (a2)
      {
        v7 = *(a1 + 256);
        if (v7)
        {
          sub_297ECA568(a1, a2, 7);
          v8 = v7 + 188;
          if (sub_297E55558(v7[386], v7[188]))
          {
            v9 = 0;
            *v8 = 0;
            v7[189] = 0;
          }

          else
          {
            v9 = *v8;
          }

          v12 = v9;
          if (sub_297ECD484(v7, &v11, &v12, 0))
          {
            v6 = 255;
          }

          else
          {
            v6 = sub_297ECD24C(v7[1223], v11, sub_297ECA7A4, a1);
          }
        }
      }
    }
  }

  sub_297E4DFAC(4, a1, 8, 5u, "phFriNfc_OvrHal_Reconnect");
  return v6;
}

uint64_t sub_297ECA7A4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = a1;
  sub_297E4E1B4(0, &v7, 8, 5u, "phFriNfc_OvrHal_CB_ConnectDisconnect");
  if (a2)
  {
    if (a3)
    {
      v5 = 0;
    }

    else
    {
      v5 = 255;
    }

    (*(a2 + 8))(v7, *(a2 + 16), v5);
  }

  return sub_297E4DFAC(0, &v7, 8, 5u, "phFriNfc_OvrHal_CB_ConnectDisconnect");
}

uint64_t sub_297ECA828(uint64_t a1, void *a2, uint64_t a3, uint64_t a4)
{
  v12 = 0;
  v13 = a3;
  sub_297E4E1B4(4, a1, 8, 5u, "phFriNfc_OvrHal_Connect");
  v8 = 1;
  if (a1)
  {
    if (a4)
    {
      if (a3)
      {
        if (a2)
        {
          v9 = *(a1 + 256);
          if (v9)
          {
            sub_297ECA568(a1, a2, 6);
            v10 = v9 + 188;
            if (sub_297E55558(v9[386], v9[188]))
            {
              *v10 = 0;
              v9[189] = 0;
              v8 = 255;
              v12 = 0;
            }

            else
            {
              v12 = *v10;
              if (v12 && sub_297ECD484(v9, &v13, &v12, 0) != 255)
              {
                v8 = sub_297ECD24C(v9[1223], v13, sub_297ECA7A4, a1);
              }

              else
              {
                v8 = 255;
              }
            }
          }
        }
      }
    }
  }

  sub_297E4DFAC(4, a1, 8, 5u, "phFriNfc_OvrHal_Connect");
  return v8;
}

uint64_t sub_297ECA950(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v9 = 0;
  v7 = 0u;
  v8 = 0u;
  v6 = 0u;
  sub_297E4E1B4(2, a1, 4, 5u, "phLibNfc_Send_ISO_14443_3B_AttribCmd");
  if (a1)
  {
    phOsalNfc_SetMemory();
    *(a1 + 1534) = 29;
    phOsalNfc_MemCopy();
    *(a1 + 1539) = 3840;
    phOsalNfc_MemCopy();
    *&v7 = a1 + 1534;
    DWORD2(v7) = 13;
    *&v8 = a1 + 2064;
    DWORD2(v8) = 530;
    WORD3(v6) = 500;
    v4 = sub_297F06F3C(*(a1 + 3088), *(a1 + 1504), &v6, sub_297E5BA84, a1);
  }

  else
  {
    v4 = 1;
  }

  sub_297E4DFAC(2, a1, 4, 5u, "phLibNfc_Send_ISO_14443_3B_AttribCmd");
  return v4;
}

uint64_t sub_297ECAA7C(uint64_t a1, int a2, unsigned __int8 *a3)
{
  LODWORD(v3) = a2;
  v5 = *a3;
  sub_297E4E1B4(2, a1, 4, 5u, "phLibNfc_ISO_14443_3B_AttribResp");
  if (a1)
  {
    if (v5 == 1)
    {
      v6 = "Invalid Attrib response!!";
    }

    else
    {
      v6 = "Valid Attrib response!!";
    }

    if (v5 == 1)
    {
      v3 = 1;
    }

    else
    {
      v3 = v3;
    }

    sub_297E4E0B0(1, a1 + 9792, 4, 4u, v6);
  }

  else
  {
    v3 = 1;
  }

  sub_297E4DFAC(2, a1, 4, 5u, "phLibNfc_ISO_14443_3B_AttribResp");
  return v3;
}

uint64_t sub_297ECAB28(uint64_t a1, uint64_t a2, uint64_t a3)
{
  sub_297E4E1B4(2, a1, 4, 5u, "phLibNfc_ISO_14443_3B_PresChkConnComplete");
  if (a1)
  {
    if (*(a1 + 6200))
    {
      sub_297EC2A2C(a1, a2);
    }

    else if (*(a1 + 6480))
    {
      sub_297ECF0FC(a1, a2);
    }

    else
    {
      sub_297E4E0B0(1, a1 + 9792, 4, 1u, "phLibNfc_ISO_14443_3B_PresChkConnComplete:ISO_14443_3B Connect callback and Presence Check callback unavailable!!");
    }
  }

  else
  {
    a2 = 1;
  }

  sub_297E4DFAC(2, a1, 4, 5u, "phLibNfc_ISO_14443_3B_PresChkConnComplete");
  return a2;
}

uint64_t sub_297ECABF8(uint64_t a1)
{
  sub_297E4E1B4(2, a1, 4, 5u, "phLibNfc_Ndef_Init");
  if (a1)
  {
    *(a1 + 2934) = 0;
    if (*(a1 + 6872) || (v2 = phOsalNfc_GetMemory_Typed(), (*(a1 + 6872) = v2) != 0))
    {
      phOsalNfc_SetMemory();
      *(a1 + 6880) = 252;
      *(*(a1 + 6872) + 184) = 0;
      Memory_Typed = phOsalNfc_GetMemory_Typed();
      v4 = *(a1 + 6872);
      *(v4 + 184) = Memory_Typed;
      if (Memory_Typed)
      {
        phOsalNfc_SetMemory();
        *(a1 + 6952) = 0;
        *(a1 + 6952) = phOsalNfc_GetMemory_Typed();
        v4 = *(a1 + 6872);
      }

      *(v4 + 2632) = *(a1 + 3000);
      v5 = *(a1 + 9792);
      *(v4 + 2640) = v5;
    }

    else
    {
      v5 = *(a1 + 9792);
    }

    if (*(a1 + 6952))
    {
      phOsalNfc_SetMemory();
      v6 = *(a1 + 6952);
      *(v6 + 256) = a1;
      *(v6 + 80) = a1 + 3000;
      if (*(a1 + 6944) || (v7 = phOsalNfc_GetMemory_Typed(), (*(a1 + 6944) = v7) != 0))
      {
        *(a1 + 6904) = 2;
LABEL_14:
        if (*(a1 + 6912) || (v8 = phOsalNfc_GetMemory_Typed(), (*(a1 + 6912) = v8) != 0))
        {
          phOsalNfc_SetMemory();
          v9 = *(a1 + 6912);
          v10 = *(a1 + 3000);
          *(v9 + 400) = a1;
          *(v9 + 408) = v10;
          *(v9 + 416) = *(a1 + 9792);
        }

        else
        {
          sub_297EFC3D8(*(a1 + 9792));
          phOsalNfc_RaiseException();
        }

        goto LABEL_17;
      }

      v5 = *(a1 + 9792);
    }

    sub_297EFC3D8(v5);
    phOsalNfc_RaiseException();
    goto LABEL_14;
  }

LABEL_17:

  return sub_297E4DFAC(2, a1, 4, 5u, "phLibNfc_Ndef_Init");
}

uint64_t sub_297ECAE1C(uint64_t a1)
{
  sub_297E4E1B4(2, a1, 4, 5u, "phLibNfc_Ndef_DeInit");
  if (a1)
  {
    *(a1 + 6905) = 0;
    v2 = *(a1 + 6872);
    if (v2)
    {
      if (*(v2 + 424))
      {
        phOsalNfc_FreeMemory();
        v2 = *(a1 + 6872);
        *(v2 + 424) = 0;
      }

      *(v2 + 2640) = 255;
      if (*(v2 + 184))
      {
        phOsalNfc_FreeMemory();
        *(*(a1 + 6872) + 184) = 0;
      }

      phOsalNfc_FreeMemory();
      *(a1 + 6872) = 0;
    }

    v3 = *(a1 + 6912);
    if (v3)
    {
      *(v3 + 16) = 0;
      *(v3 + 40) = 0;
      *(v3 + 56) = 0;
      *(v3 + 72) = 0;
      *(v3 + 400) = 0;
      *(v3 + 88) = 0;
      *(v3 + 96) = 0;
      *(v3 + 104) = 0;
      *(v3 + 416) = 255;
      phOsalNfc_FreeMemory();
      *(a1 + 6912) = 0;
    }

    v4 = *(a1 + 6952);
    if (v4)
    {
      v4[32] = 0;
      if (v4[9])
      {
        phOsalNfc_FreeMemory();
        v4 = *(a1 + 6952);
        v4[9] = 0;
      }

      if (v4[13])
      {
        phOsalNfc_FreeMemory();
        v4 = *(a1 + 6952);
        v4[13] = 0;
      }

      if (v4[14])
      {
        phOsalNfc_FreeMemory();
        *(*(a1 + 6952) + 112) = 0;
      }

      phOsalNfc_FreeMemory();
      *(a1 + 6952) = 0;
    }

    if (*(a1 + 6944))
    {
      phOsalNfc_FreeMemory();
      *(a1 + 6944) = 0;
    }

    v5 = 0;
    v6 = a1 + 7360;
    do
    {
      if (*(v6 + v5))
      {
        phOsalNfc_FreeMemory();
        *(v6 + v5) = 0;
      }

      v5 += 8;
    }

    while (v5 != 64);
    if (*(a1 + 7464))
    {
      phOsalNfc_FreeMemory();
      *(a1 + 7464) = 0;
    }

    v7 = *(a1 + 7496);
    if (v7 && *(v7 + 24))
    {
      phOsalNfc_FreeMemory();
      *(*(a1 + 7496) + 24) = 0;
    }

    if (*(a1 + 7504))
    {
      for (i = 400; i != 464; i += 8)
      {
        if (*(*(a1 + 7504) + i))
        {
          phOsalNfc_FreeMemory();
          *(*(a1 + 7504) + i) = 0;
        }
      }
    }

    if (*(a1 + 8368))
    {
      phOsalNfc_FreeMemory();
      *(a1 + 8368) = 0;
    }

    v9 = 0;
    v10 = a1 + 8656;
    do
    {
      if (*(v10 + v9))
      {
        phOsalNfc_FreeMemory();
        *(v10 + v9) = 0;
      }

      v9 += 8;
    }

    while (v9 != 1024);
    v11 = *(a1 + 9680);
    if (v11)
    {
      do
      {
        if (*(v11 + 656))
        {
          phOsalNfc_FreeMemory();
          *(v11 + 656) = 0;
        }

        v12 = *(v11 + 672);
        phOsalNfc_FreeMemory();
        v11 = v12;
      }

      while (v12);
    }
  }

  return sub_297E4DFAC(2, a1, 4, 5u, "phLibNfc_Ndef_DeInit");
}

uint64_t sub_297ECB0A8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t *a4, int a5)
{
  v18 = a1;
  v17 = 0;
  v15 = 0;
  v16 = 0;
  sub_297E4E1B4(0, &v18, 4, 5u, "phLibNfc_Reconnect_Mifare_Cb");
  if (a5)
  {
    v7 = 146;
  }

  else
  {
    v7 = 255;
  }

  sub_297E4F0E8(v18, &v15);
  if (v15)
  {
    v8 = *(v15 + 6920);
    if ((v8 - 1) >= 4)
    {
      if (v8 == 5)
      {
        v14[0] = 0;
        v14[1] = 0;
        v9 = *(v15 + 9784);
        v12 = v14;
        v10 = v7;
        v11 = a4;
        goto LABEL_8;
      }

      if (v8)
      {
        return sub_297E4DFAC(0, &v18, 4, 5u, "phLibNfc_Reconnect_Mifare_Cb");
      }

      HIDWORD(v16) = 0;
      v17 = 0;
      v9 = *(v15 + 9784);
      v11 = &v16;
      v10 = v7;
    }

    else
    {
      v9 = *(v15 + 9784);
      v10 = v7;
      v11 = 0;
    }

    v12 = 0;
LABEL_8:
    sub_297E4F450(v9, 119, v10, v11, v12);
  }

  return sub_297E4DFAC(0, &v18, 4, 5u, "phLibNfc_Reconnect_Mifare_Cb");
}

uint64_t sub_297ECB1A4(uint64_t a1, unsigned int a2)
{
  v12 = 0;
  sub_297E4E1B4(2, a1, 4, 5u, "phLibNfc_Ndef_ReadOnly_Cb");
  if (a1)
  {
    if (sub_297E8DB3C(a1))
    {
      *(a1 + 2934) = 0;
      sub_297E57170(*(a1 + 9784), &v12);
      if (!a2 && v12)
      {
        v4 = 0;
        if (*(a1 + 9796) == 1)
        {
          v5 = 2;
        }

        else
        {
          v5 = 1;
        }

        *(v12 + 545) = v5;
        v10 = 118;
        goto LABEL_27;
      }

      if (a2 == 10)
      {
        v6 = sub_297F0A90C(*(a1 + 3088));
        if (v6 <= 1)
        {
          v4 = 10;
        }

        else
        {
          v4 = v6;
        }
      }

      else if ((a2 & 0xFFFFFFFD) == 0xB5 || (a2 & 0xFFFFFFFB) == 178 || (a2 & 0xFFFE) == 184 || a2 == 143)
      {
        v4 = a2;
      }

      else
      {
        v4 = 255;
      }
    }

    else
    {
      sub_297E4E0B0(1, a1 + 9792, 4, 1u, "LibNfc Stack Shut Down in progress");
      v4 = 145;
    }

    v10 = 119;
LABEL_27:
    sub_297E4F450(*(a1 + 9784), v10, v4, 0, 0);
  }

  return sub_297E4DFAC(2, a1, 4, 5u, "phLibNfc_Ndef_ReadOnly_Cb");
}

uint64_t sub_297ECB2F4(uint64_t a1, uint64_t a2, int a3)
{
  v14 = 0;
  v15 = a1;
  v13 = 0;
  sub_297E4E1B4(0, &v15, 4, 5u, "phLibNfc_Ndef_format_Cb");
  if (a2)
  {
    v5 = (a2 + 1504);
    if (sub_297E55558(*(a2 + 3088), *(a2 + 1504)))
    {
      v6 = 0;
      *v5 = 0;
      *(a2 + 1512) = 0;
    }

    else
    {
      v6 = *v5;
    }

    v13 = v6;
    v7 = sub_297ECD484(a2, &v14, &v13, 0);
    v8 = 119;
    LOBYTE(v9) = -1;
    if (v7)
    {
      goto LABEL_18;
    }

    v10 = v14;
    if (!v14)
    {
      goto LABEL_18;
    }

    *(a2 + 2934) = 0;
    if (!a3)
    {
      LOBYTE(v9) = 0;
      v8 = 118;
      goto LABEL_18;
    }

    if (a3 != 0xFF)
    {
      if ((a3 - 178) < 8u)
      {
        LOBYTE(v9) = byte_297F13610[2 * (a3 - 178)];
      }

      goto LABEL_18;
    }

    v11 = *(v10 + 4);
    if (v11 != 16 && v11 != 12 || (*(v10 + 68) & 8) == 0)
    {
LABEL_18:
      sub_297E4F450(*(a2 + 9784), v8, v9, 0, 0);
      return sub_297E4DFAC(0, &v15, 4, 5u, "phLibNfc_Ndef_format_Cb");
    }

    v9 = sub_297ECD24C(*(a2 + 9784), v10, sub_297ECB0A8, a2);
    if (v9 != 13)
    {
      v8 = 119;
      goto LABEL_18;
    }
  }

  else
  {
    sub_297EFC3D8(255);
    phOsalNfc_RaiseException();
  }

  return sub_297E4DFAC(0, &v15, 4, 5u, "phLibNfc_Ndef_format_Cb");
}

uint64_t sub_297ECB488(uint64_t a1, uint64_t a2, unsigned __int8 *a3)
{
  v15 = 0;
  v16 = 0;
  sub_297E4E1B4(2, a1, 4, 5u, "phLibNfc_Ndef_CheckNdefRsp_Cb");
  if (!a1)
  {
    return sub_297E4DFAC(2, a1, 4, 5u, "phLibNfc_Ndef_CheckNdefRsp_Cb");
  }

  v6 = (a1 + 1504);
  if (!sub_297E55558(*(a1 + 3088), *(a1 + 1504)))
  {
    v15 = *v6;
    if (!v15)
    {
      v7 = 255;
      v8 = 119;
      goto LABEL_4;
    }

    v12 = sub_297ECD484(a1, &v16, &v15, 0);
    v7 = 255;
    v8 = 119;
    if (v12 || !v16)
    {
      goto LABEL_4;
    }

    v13 = sub_297E8DB3C(a1);
    if (a2 == 145 || !v13)
    {
      sub_297E4E0B0(1, a1 + 9792, 4, 1u, "LibNfc Stack Shut Down in progress");
      v7 = 145;
      v8 = 119;
LABEL_28:
      *(a1 + 2934) = 0;
      goto LABEL_4;
    }

    if (a2 != 157)
    {
      if (a2 == 25)
      {
        v14 = 0;
        *(a3 + 1) = 0;
        *(a1 + 6905) = 1;
        goto LABEL_23;
      }

      if (!a2)
      {
        v14 = *(a3 + 1);
LABEL_23:
        *(a1 + 6904) = 1;
        *(a1 + 6860) = v14;
        *(a1 + 6900) = *(a3 + 2);
        v8 = 118;
LABEL_27:
        v7 = a2;
        goto LABEL_28;
      }

      *(a1 + 6904) = 0;
      v7 = 255;
      v8 = 119;
      if ((a2 - 143) > 0x2A || ((1 << (a2 + 113)) & 0x7C800000209) == 0)
      {
        goto LABEL_28;
      }
    }

    v8 = 119;
    goto LABEL_27;
  }

  *v6 = 0;
  *(a1 + 1512) = 0;
  v7 = 255;
  v8 = 119;
  v15 = 0;
LABEL_4:
  if (a3)
  {
    v9 = *a3;
    if (v9 >= 3)
    {
      v10 = 0;
    }

    else
    {
      v10 = 0x20301u >> (8 * v9);
    }

    *a3 = v10;
  }

  sub_297E4F450(*(a1 + 9784), v8, v7, a3, 0);
  return sub_297E4DFAC(2, a1, 4, 5u, "phLibNfc_Ndef_CheckNdefRsp_Cb");
}

uint64_t sub_297ECB664(uint64_t a1, uint64_t a2)
{
  v11 = 0;
  v12 = 0;
  sub_297E4E1B4(2, a1, 4, 5u, "phLibNfc_Ndef_ReadNdefRsp_Cb");
  if (a1)
  {
    v4 = (a1 + 1504);
    if (sub_297E55558(*(a1 + 3088), *(a1 + 1504)))
    {
      v5 = 0;
      *v4 = 0;
      *(a1 + 1512) = 0;
    }

    else
    {
      v5 = *v4;
    }

    v11 = v5;
    v6 = sub_297ECD484(a1, &v12, &v11, 0);
    v7 = 0;
    v8 = 119;
    if (v6 || !v12)
    {
      goto LABEL_23;
    }

    if (!sub_297E8DB3C(a1))
    {
      sub_297E4E0B0(1, a1 + 9792, 4, 1u, "LibNfc Stack Shut Down in progress");
      a2 = 0;
      goto LABEL_21;
    }

    if (a2 <= 144)
    {
      if (!a2)
      {
        *(*(a1 + 6872) + 209) = *(*(a1 + 6872) + 210);
        v8 = 118;
LABEL_22:
        *(a1 + 2934) = 0;
        v7 = a2;
LABEL_23:
        sub_297E4F450(*(a1 + 9784), v8, v7, 0, 0);
        return sub_297E4DFAC(2, a1, 4, 5u, "phLibNfc_Ndef_ReadNdefRsp_Cb");
      }

      if (a2 == 24)
      {
        goto LABEL_11;
      }
    }

    else
    {
      if ((a2 - 145) <= 0x28 && ((1 << (a2 + 111)) & 0x1F200001001) != 0)
      {
LABEL_11:
        *(*(a1 + 6872) + 209) = -1;
LABEL_21:
        v8 = 119;
        goto LABEL_22;
      }

      if (a2 == 255)
      {
        v9 = *(a1 + 6872);
LABEL_20:
        *(v9 + 209) = a2;
        goto LABEL_21;
      }
    }

    v9 = *(a1 + 6872);
    a2 = 255;
    goto LABEL_20;
  }

  return sub_297E4DFAC(2, a1, 4, 5u, "phLibNfc_Ndef_ReadNdefRsp_Cb");
}

uint64_t sub_297ECB7F4(uint64_t a1, int a2)
{
  v12 = 0;
  v13 = 0;
  sub_297E4E1B4(2, a1, 4, 5u, "phLibNfc_Ndef_WriteNdefRsp_Cb");
  if (a1)
  {
    v4 = (a1 + 1504);
    if (sub_297E55558(*(a1 + 3088), *(a1 + 1504)))
    {
      v5 = 0;
      *v4 = 0;
      *(a1 + 1512) = 0;
    }

    else
    {
      v5 = *v4;
    }

    v12 = v5;
    v6 = sub_297ECD484(a1, &v13, &v12, 0);
    v7 = 119;
    if (v6 || !v13)
    {
      goto LABEL_23;
    }

    if (sub_297E8DB3C(a1))
    {
      if (a2 != 145)
      {
        if (!a2)
        {
          if (*(a1 + 6864) <= *(a1 + 6900))
          {
            LOBYTE(a2) = 0;
            v11 = *(a1 + 6896);
            *(*(a1 + 6888) + 8) = v11;
            *(a1 + 6860) = v11;
            *(a1 + 6905) = 0;
            v7 = 118;
          }

          else
          {
            v7 = 119;
            LOBYTE(a2) = 31;
          }

          goto LABEL_22;
        }

        if ((a2 & 0xFFFFFFFD) != 0xB5 && (a2 & 0xFFFFFFFB) != 178 && (a2 - 186) < 0xFFFEu)
        {
          LOBYTE(a2) = -1;
        }
      }
    }

    else
    {
      sub_297E4E0B0(1, a1 + 9792, 4, 1u, "LibNfc Stack Shut Down in progress");
    }

    v7 = 119;
LABEL_22:
    *(a1 + 2934) = 0;
LABEL_23:
    sub_297E4F450(*(a1 + 9784), v7, a2, 0, 0);
  }

  return sub_297E4DFAC(2, a1, 4, 5u, "phLibNfc_Ndef_WriteNdefRsp_Cb");
}

uint64_t sub_297ECB978(uint64_t a1)
{
  sub_297E4E1B4(2, a1, 4, 5u, "phLibNfc_ClearNdefInfo");
  if (a1)
  {
    *(a1 + 6904) = 2;
  }

  return sub_297E4DFAC(2, a1, 4, 5u, "phLibNfc_ClearNdefInfo");
}

uint64_t sub_297ECB9EC(uint64_t a1)
{
  sub_297E4E1B4(2, a1, 4, 5u, "phLibNfc_Pending_Ndeftransv_Cb");
  if (a1)
  {
    phOsalNfc_SetMemory();
    if (*(a1 + 6184))
    {
      if (*(a1 + 6312))
      {
        v2 = *(a1 + 6320);
        sub_297E4D930(1, a1 + 9792, 4, 23, "phLibNfc_Pending_Ndeftransv_Cb");
        (*(a1 + 6312))(*(a1 + 9784), v2, 0, 0, 145);
      }

      else if (*(a1 + 6408))
      {
        v3 = *(a1 + 6416);
        sub_297E4D930(1, a1 + 9792, 4, 24, "phLibNfc_Pending_Ndeftransv_Cb");
        (*(a1 + 6408))(*(a1 + 9784), v3, 145);
      }

      else if (*(a1 + 6424))
      {
        v4 = *(a1 + 6432);
        sub_297E4D930(1, a1 + 9792, 4, 25, "phLibNfc_Pending_Ndeftransv_Cb");
        (*(a1 + 6424))(*(a1 + 9784), v4, 145);
      }

      else if (*(a1 + 6440))
      {
        *(a1 + 9796) = 0;
        v5 = *(a1 + 6448);
        sub_297E4D930(1, a1 + 9792, 4, 27, "phLibNfc_Pending_Ndeftransv_Cb");
        (*(a1 + 6440))(*(a1 + 9784), v5, 145);
      }

      else if (*(a1 + 6824))
      {
        v6 = *(a1 + 6832);
        sub_297E4D930(1, a1 + 9792, 4, 26, "phLibNfc_Pending_Ndeftransv_Cb");
        (*(a1 + 6824))(*(a1 + 9784), v6, 145);
      }

      else if (*(a1 + 6456))
      {
        v8 = *(a1 + 6464);
        sub_297E4D930(1, a1 + 9792, 4, 29, "phLibNfc_Pending_Ndeftransv_Cb");
        (*(a1 + 6456))(*(a1 + 9784), v8, 0, 0, 145);
      }
    }
  }

  else
  {
    phOsalNfc_SetMemory();
  }

  sub_297E4DFAC(2, a1, 4, 5u, "phLibNfc_Pending_Ndeftransv_Cb");
  return 0;
}