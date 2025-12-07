uint64_t sub_297EE6ACC(uint64_t a1)
{
  sub_297E4E1B4(2, a1, 4, 5u, "phLibNfc_Init2InitEnDisMultiTag");
  if (a1)
  {
    *(a1 + 2960) = &qword_2A1A92EF0;
    *(a1 + 2952) = 0;
    *(a1 + 2954) = 0;
    v2 = qword_2A1A92EF0;
    if (qword_2A1A92EF0)
    {
      v2 = 0;
      v3 = off_2A1A92F00;
      do
      {
        ++v2;
        v4 = *v3;
        v3 += 2;
      }

      while (v4);
    }

    *(a1 + 2953) = v2;
    v5 = sub_297E5588C(a1, 0, 0);
  }

  else
  {
    v5 = 1;
  }

  sub_297E4DFAC(2, a1, 4, 5u, "phLibNfc_Init2InitEnDisMultiTag");
  return v5;
}

uint64_t sub_297EE6B84(uint64_t a1, int *a2, uint64_t a3)
{
  sub_297E4E1B4(2, a1, 4, 5u, "phLibNfc_Actv2Discovery");
  v6 = 1;
  if (a1 && a2 && a3)
  {
    if (*(a1 + 745) == 1 && !sub_297EE0A34(*(a1 + 9784), 1))
    {
      *(a1 + 560) = a1 + 440;
      *(a1 + 572) = 0;
      sub_297E4E1B4(2, a1, 4, 5u, "phLibNfc_FindSetModeTransEvent");
      sub_297E4DFAC(2, a1, 4, 5u, "phLibNfc_FindSetModeTransEvent");
      sub_297E4F450(*(a1 + 9784), 140, 1, 0, 0);
      *(a1 + 745) = 0;
    }

    *(a1 + 1472) = 0;
    v7 = *a2;
    *(a1 + 1480) = *a2;
    v6 = sub_297EE462C(a1, v7, a3);
  }

  sub_297E4DFAC(2, a1, 4, 5u, "phLibNfc_Actv2Discovery");
  return v6;
}

uint64_t sub_297EE6C98(uint64_t a1, _DWORD *a2)
{
  sub_297E4E1B4(2, a1, 4, 5u, "phLibNfc_DummyInit");
  if (a1 && a2)
  {
    if (*a2)
    {
      v4 = "phLibNfc_DummyInit: No previous configuration available, discovery failed!";
    }

    else
    {
      v6 = phOsalNfc_Timer_Create();
      if (v6)
      {
        v7 = v6 == 0xFFFFFFFFFFFFLL;
      }

      else
      {
        v7 = 1;
      }

      if (!v7)
      {
        v9 = v6;
        if (!phOsalNfc_Timer_Start())
        {
          sub_297E687D8(1, a1 + 9792, v9, 4, 4u, "phLibNfc_DummyInit");
          sub_297E4E0B0(1, a1 + 9792, 4, 4u, "phLibNfc_DummyInit: Timer started");
          v5 = 13;
          goto LABEL_14;
        }

        sub_297E4E0B0(1, a1 + 9792, 4, 1u, "phLibNfc_DummyInit: Failed start timer");
        phOsalNfc_Timer_Delete();
        goto LABEL_13;
      }

      v4 = "phLibNfc_DummyInit: Failed to create Timer!";
    }

    sub_297E4E0B0(1, a1 + 9792, 4, 1u, v4);
LABEL_13:
    v5 = 255;
    goto LABEL_14;
  }

  v5 = 1;
  sub_297E4E0B0(2, a1, 4, 1u, "Invalid LibNfc context passed or Invalid Parameter");
LABEL_14:
  sub_297E4DFAC(2, a1, 4, 5u, "phLibNfc_DummyInit");
  return v5;
}

uint64_t sub_297EE6E20(uint64_t a1, uint64_t a2)
{
  sub_297E687D8(2, a2, a1, 4, 4u, "phLibNfc_DummyInitTimerCb");
  sub_297E4E1B4(2, a2, 4, 5u, "phLibNfc_DummyInitTimerCb");
  if (!a2)
  {
    goto LABEL_6;
  }

  v3 = 0;
  v4 = 0;
  do
  {
    v5 = *(&unk_2A18BDDC0 + 14 * v4 + 2);
    if (v3)
    {
      break;
    }

    v3 = 1;
    v4 = 1;
  }

  while (v5 != a2);
  if (v5 == a2)
  {
    phOsalNfc_Timer_Stop();
    phOsalNfc_Timer_Delete();
    sub_297E4E0B0(1, a2 + 9792, 4, 4u, "phLibNfc_DummyInitTimerCb: Timer stopped and deleted");
    sub_297E4F450(*(a2 + 9784), 118, 0, 0, 0);
  }

  else
  {
LABEL_6:
    sub_297E4E0B0(2, a2, 4, 1u, "phLibNfc_DummyInitTimerCb: Invalid 'pLibCtx', cannot invoke upper layer call back");
  }

  return sub_297E4DFAC(2, a2, 4, 5u, "phLibNfc_DummyInitTimerCb");
}

uint64_t sub_297EE6F64(uint64_t a1)
{
  if (a1)
  {
    v2 = *(a1 + 496);
    if (v2)
    {
      v3 = v2 == 0xFFFFFFFFFFFFLL;
    }

    else
    {
      v3 = 1;
    }

    if (!v3)
    {
      phOsalNfc_Timer_Stop();
      phOsalNfc_Timer_Delete();
      *(a1 + 496) = 0;
    }

    *(a1 + 534) = 0;
    if (*(a1 + 536))
    {
      phOsalNfc_FreeMemory();
      *(a1 + 536) = 0;
      *(a1 + 544) = 0;
      *(a1 + 533) = 0;
    }

    sub_297F08EEC(*(a1 + 3088), 0);
    v4 = 0;
  }

  else
  {
    v4 = 255;
  }

  sub_297E4DFAC(2, a1, 4, 5u, "phLibNfc_AbortHceData");
  return v4;
}

uint64_t sub_297EE700C(_DWORD *a1)
{
  if (!a1)
  {
    return 1;
  }

  v1 = a1[3];
  if (v1 == 1)
  {
    if (a1[4] != 3 || a1[5] != 130)
    {
      return 255;
    }

    return 0;
  }

  if (v1 == 2 && a1[4] == 4 && (a1[5] & 0xFFFFFFFE) == 0x80)
  {
    return 0;
  }

  return 255;
}

uint64_t sub_297EE7074(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t a4)
{
  sub_297E4E1B4(2, a1, 4, 5u, "phLibNfc_NtfRegRespCb");
  if (!a1)
  {
    v9 = "phLibNfc_NtfRegRespCb: Lower layer has returned invalid                                LibNfc context";
    v10 = 2;
    v11 = 0;
LABEL_28:
    sub_297E4E0B0(v10, v11, 4, 1u, v9);
    goto LABEL_29;
  }

  if (sub_297EE14CC(*(a1 + 9784)))
  {
    goto LABEL_3;
  }

  if (a3)
  {
    if (!*a3)
    {
LABEL_3:
      sub_297E4E0B0(1, a1 + 9792, 4, 2u, "phLibNfc_NtfRegRespCb:Activated Notification received when State Machine is busy");
      if (*(a1 + 6296))
      {
        v7 = *(a1 + 3088);
        if (v7)
        {
          v8 = v7[428];
          if (v8)
          {
            v7[98] = v8;
            v7[99] = v7[469];
          }
        }
      }

      else
      {
        *(a1 + 9777) = 1;
      }

      goto LABEL_29;
    }

    if (a4 == 188)
    {
      sub_297ECF904(a1);
      sub_297ECB978(a1);
      *(a1 + 856) = *a3;
      sub_297E4F450(*(a1 + 9784), 120, 188, 0, 0);
      v9 = "phLibNfc_NtfRegRespCb: Lower layer has returned NFCSTATUS_RF_ACTV_NTF_ERROR";
LABEL_27:
      v11 = a1 + 9792;
      v10 = 1;
      goto LABEL_28;
    }
  }

  if (a4 == 0xFF)
  {
    v9 = "phLibNfc_NtfRegRespCb: Lower layer has returned NFCSTATUS_FAILED";
    goto LABEL_27;
  }

  if (*(a1 + 1400) && sub_297E56FC8(*(a1 + 9784)) == 7 && *(*(a1 + 1400) + 4) == 25 && !*(a1 + 1533))
  {
    goto LABEL_29;
  }

  *(a1 + 764) = 16;
  *(a1 + 1490) = 0;
  if (!a3 || *(a1 + 1472) == 1)
  {
    v9 = "phLibNfc_NtfRegRespCb: Ignoring HCE Activation in Express + HCE mode ";
    goto LABEL_27;
  }

  if (!*(a1 + 1533))
  {
    sub_297ECF904(a1);
    sub_297ECB978(a1);
    *(a1 + 856) = *a3;
  }

  *(a1 + 534) = 0;
  if (a4 == 40)
  {
    sub_297E4E0B0(1, a1 + 9792, 4, 4u, "Lower layer has returned status NFCSTATUS_SINGLE_TAG_ACTIVATED");
    if (sub_297EE5FD4(*(*a3 + 8), (a1 + 760), (a1 + 761)))
    {
      v12 = 116;
    }

    else if (sub_297EE700C(*(*a3 + 8)))
    {
      v12 = 120;
    }

    else
    {
      v12 = 121;
    }
  }

  else if (a4 == 55)
  {
    sub_297E4E0B0(1, a1 + 9792, 4, 4u, "Lower layer has returned status NFCSTATUS_MULTIPLE_TAGS");
    v12 = 120;
  }

  else
  {
    v12 = 208;
  }

  sub_297E4E1B4(2, a1, 4, 5u, "phLibNfc_ConnIsRfListnerRegisterd");
  v14 = *(a1 + 856);
  if (!v14)
  {
    *(a1 + 763) = 1;
    sub_297E4DFAC(2, a1, 4, 5u, "phLibNfc_ConnIsRfListnerRegisterd");
    v37 = (a1 + 9780);
LABEL_150:
    *v37 = 1;
    sub_297EE4EEC(a1);
    goto LABEL_29;
  }

  v16 = (v14 + 2);
  v15 = *v14;
  if (!*v14 || (v17 = *v16) == 0)
  {
    LOBYTE(v22) = 1;
    goto LABEL_147;
  }

  v41 = *(a1 + 856);
  v40 = v12;
  v18 = 0;
  v19 = 0;
  v20 = (v14 + 2);
  do
  {
    v21 = *(v17 + 20);
    LOBYTE(v22) = 1;
    if (v21 > 111)
    {
      if (v21 > 129)
      {
        switch(v21)
        {
          case 130:
            goto LABEL_64;
          case 131:
LABEL_72:
            sub_297E4E1B4(2, a1, 4, 5u, "phLibNfc_ChkRfListnerforNFCAListen");
            v30 = *(*v20 + 16);
            if (v30 != 4)
            {
              v25 = v41;
              if (v30 != 5 || sub_297EE7C28(a1, 27, 0))
              {
                v26 = "phLibNfc_ChkRfListnerforNFCAListen";
                goto LABEL_111;
              }

              LODWORD(v22) = 64;
              v26 = "phLibNfc_ChkRfListnerforNFCAListen";
LABEL_133:
              *(a1 + 1044) |= v22;
              v35 = 1;
              LOBYTE(v22) = 0;
LABEL_134:
              sub_297E4DFAC(2, a1, 4, 5u, v26);
              v15 = *v25;
              v19 = v35;
              break;
            }

            sub_297E4E1B4(2, a1, 4, 5u, "phLibNfc_RfListnerRegisterd");
            sub_297E4DFAC(2, a1, 4, 5u, "phLibNfc_RfListnerRegisterd");
            LODWORD(v22) = 64;
            v26 = "phLibNfc_ChkRfListnerforNFCAListen";
LABEL_107:
            v25 = v41;
            goto LABEL_133;
          case 133:
LABEL_64:
            sub_297E4E1B4(2, a1, 4, 5u, "phLibNfc_ChkRfListnerforNFCFListen");
            v28 = *(*v20 + 16);
            if (v28 != 3)
            {
              v25 = v41;
              if (v28 != 5 || sub_297EE7C28(a1, 27, 0))
              {
                v26 = "phLibNfc_ChkRfListnerforNFCFListen";
                goto LABEL_111;
              }

              LODWORD(v22) = 64;
              v26 = "phLibNfc_ChkRfListnerforNFCFListen";
              goto LABEL_133;
            }

            sub_297E4E1B4(2, a1, 4, 5u, "phLibNfc_RfListnerRegisterd");
            sub_297E4DFAC(2, a1, 4, 5u, "phLibNfc_RfListnerRegisterd");
            LODWORD(v22) = 64;
            v26 = "phLibNfc_ChkRfListnerforNFCFListen";
            goto LABEL_107;
        }
      }

      else
      {
        switch(v21)
        {
          case 112:
            v22 = "phLibNfc_ChkRfListnerforKovioPoll";
            sub_297E4E1B4(2, a1, 4, 5u, "phLibNfc_ChkRfListnerforKovioPoll");
            if (*(*v20 + 16) == 138)
            {
              v25 = v41;
              if (!sub_297EE7C28(a1, 25, 0))
              {
                LODWORD(v22) = 512;
                v26 = "phLibNfc_ChkRfListnerforKovioPoll";
                goto LABEL_133;
              }

              LOBYTE(v22) = 1;
              v26 = "phLibNfc_ChkRfListnerforKovioPoll";
              goto LABEL_111;
            }

            goto LABEL_93;
          case 128:
            goto LABEL_72;
          case 129:
            sub_297E4E1B4(2, a1, 4, 5u, "phLibNfc_ChkRfListnerforNFCBListen");
            if (*(*v20 + 16) == 4)
            {
              sub_297E4E1B4(2, a1, 4, 5u, "phLibNfc_RfListnerRegisterd");
              sub_297E4DFAC(2, a1, 4, 5u, "phLibNfc_RfListnerRegisterd");
              LODWORD(v22) = 64;
              v26 = "phLibNfc_ChkRfListnerforNFCBListen";
              goto LABEL_107;
            }

            v26 = "phLibNfc_ChkRfListnerforNFCBListen";
LABEL_117:
            v35 = v19;
            v25 = v41;
            goto LABEL_134;
        }
      }
    }

    else
    {
      if (v21 <= 0xC)
      {
        if (((1 << v21) & 0x1C08) != 0)
        {
          goto LABEL_45;
        }

        if (((1 << v21) & 0x24) != 0)
        {
          sub_297E4E1B4(2, a1, 4, 5u, "phLibNfc_ChkRfListnerforNFCFPoll");
          v27 = *(*v20 + 16);
          v25 = v41;
          if (v27 == 3)
          {
            if (!sub_297EE7C28(a1, 21, 0))
            {
              LODWORD(v22) = 32;
              goto LABEL_124;
            }
          }

          else if (v27 == 5 && !sub_297EE7C28(a1, 26, 0))
          {
            LODWORD(v22) = 64;
LABEL_124:
            v26 = "phLibNfc_ChkRfListnerforNFCFPoll";
            goto LABEL_133;
          }

          v26 = "phLibNfc_ChkRfListnerforNFCFPoll";
LABEL_111:
          v35 = v19;
          goto LABEL_134;
        }

        if (v21 == 6)
        {
          v22 = "phLibNfc_ChkRfListnerforNFCISO15693Poll";
          sub_297E4E1B4(2, a1, 4, 5u, "phLibNfc_ChkRfListnerforNFCISO15693Poll");
          if (*(*v20 + 16) == 6)
          {
            v25 = v41;
            if (!sub_297EE7C28(a1, 23, 0))
            {
              LODWORD(v22) = 16;
              v26 = "phLibNfc_ChkRfListnerforNFCISO15693Poll";
              goto LABEL_133;
            }

            LOBYTE(v22) = 1;
            v26 = "phLibNfc_ChkRfListnerforNFCISO15693Poll";
            goto LABEL_111;
          }

LABEL_93:
          v26 = v22;
          LOBYTE(v22) = 1;
          goto LABEL_117;
        }
      }

      if (!v21)
      {
LABEL_45:
        sub_297E4E1B4(2, a1, 4, 5u, "phLibNfc_ChkRfListnerforNFCAPoll");
        v23 = *v20;
        v24 = *(*v20 + 16);
        if (v24 <= 3)
        {
          v25 = v41;
          if (v24 != 1)
          {
            if (v24 == 2)
            {
              goto LABEL_70;
            }

LABEL_102:
            v26 = "phLibNfc_ChkRfListnerforNFCAPoll";
            goto LABEL_111;
          }

          if (sub_297EE7C28(a1, 22, 0))
          {
            goto LABEL_102;
          }

          LODWORD(v22) = 128;
        }

        else
        {
          v25 = v41;
          switch(v24)
          {
            case 4:
              LOBYTE(v22) = 0;
              v34 = *(v23 + 4);
              v35 = 1;
              if (v34 > 5)
              {
                if (v34 == 6)
                {
                  if (sub_297EE7C28(a1, 14, 0))
                  {
                    goto LABEL_71;
                  }

                  LODWORD(v22) = 0x8000;
                }

                else
                {
                  v26 = "phLibNfc_ChkRfListnerforNFCAPoll";
                  if (v34 != 7)
                  {
                    goto LABEL_134;
                  }

                  if (sub_297EE7C28(a1, 15, 0))
                  {
                    goto LABEL_71;
                  }

                  LODWORD(v22) = 0x10000;
                }
              }

              else if (v34 == 3)
              {
                if (sub_297EE7C28(a1, 11, 0))
                {
                  goto LABEL_71;
                }

                LODWORD(v22) = 4;
              }

              else
              {
                v26 = "phLibNfc_ChkRfListnerforNFCAPoll";
                if (v34 != 5)
                {
                  goto LABEL_134;
                }

                if (sub_297EE7C28(a1, 13, 0))
                {
                  goto LABEL_71;
                }

                LODWORD(v22) = 0x4000;
              }

              break;
            case 5:
              if (sub_297EE7C28(a1, 26, 0))
              {
                goto LABEL_102;
              }

              LODWORD(v22) = 64;
              break;
            case 128:
LABEL_70:
              v29 = *(v23 + 96);
              if (sub_297EE7C28(a1, 16, *(v23 + 96)))
              {
LABEL_71:
                LOBYTE(v22) = 1;
                goto LABEL_102;
              }

              if (v29 > 0x38)
              {
                goto LABEL_129;
              }

              if (((1 << v29) & 0x100010003030302) == 0)
              {
                if (!v29)
                {
                  LODWORD(v22) = 1;
                  break;
                }

LABEL_129:
                if ((v29 - 136) > 0x30 || ((1 << (v29 + 120)) & 0x1000000010001) == 0)
                {
                  v36 = *(*v20 + 16);
                  LODWORD(v22) = 1;
                  v26 = "phLibNfc_ChkRfListnerforNFCAPoll";
                  v35 = v19;
                  if (v36 == 2)
                  {
                    goto LABEL_133;
                  }

                  goto LABEL_134;
                }
              }

              LODWORD(v22) = 2;
              break;
            default:
              goto LABEL_102;
          }
        }

        v26 = "phLibNfc_ChkRfListnerforNFCAPoll";
        goto LABEL_133;
      }

      if (v21 == 1)
      {
        sub_297E4E1B4(2, a1, 4, 5u, "phLibNfc_ChkRfListnerforNFCBPoll");
        v31 = *v20;
        if (*(*v20 + 16) == 4 && ((v32 = *(v31 + 12), v32 != 131) ? (v33 = v32 == 2) : (v33 = 1), v33))
        {
          v25 = v41;
          if (sub_297EE7C28(a1, 19, 0))
          {
LABEL_110:
            v26 = "phLibNfc_ChkRfListnerforNFCBPoll";
            goto LABEL_111;
          }

          LODWORD(v22) = 8;
        }

        else
        {
          v25 = v41;
          if (*(v31 + 4) != 25 || sub_297EE7C28(a1, 17, 0))
          {
            goto LABEL_110;
          }

          LODWORD(v22) = 0x2000;
        }

        v26 = "phLibNfc_ChkRfListnerforNFCBPoll";
        goto LABEL_133;
      }
    }

    if (v15 <= ++v18)
    {
      break;
    }

    v20 = &v16[v18];
    v17 = *v20;
  }

  while (*v20);
  v12 = v40;
  if (!v19)
  {
LABEL_147:
    *(a1 + 763) = 1;
    sub_297E4DFAC(2, a1, 4, 5u, "phLibNfc_ConnIsRfListnerRegisterd");
    v37 = (a1 + 9780);
    if ((v22 & 1) == 0)
    {
      goto LABEL_156;
    }

    goto LABEL_150;
  }

  v38 = 0;
  if (v15)
  {
    do
    {
      v39 = v16[v38];
      *(a1 + 776 + 8 * v38) = v39;
      *(a1 + 1240 + 16 * v38++ + 8) = v39;
    }

    while (v15 > v38);
    *(a1 + 763) = 0;
  }

  *(a1 + 762) = v38;
  sub_297E4DFAC(2, a1, 4, 5u, "phLibNfc_ConnIsRfListnerRegisterd");
  v37 = (a1 + 9780);
LABEL_156:
  *v37 = 0;
  if (sub_297EE4F6C(a1, v12, a4) != 13)
  {
    if (sub_297EE7B48(a1))
    {
      v12 = 120;
    }

    else
    {
      sub_297EE7BC4(a1);
    }

    sub_297EE4C98(a1, v12, *a3, a4);
  }

LABEL_29:

  return sub_297E4DFAC(2, a1, 4, 5u, "phLibNfc_NtfRegRespCb");
}

BOOL sub_297EE7B48(uint64_t a1)
{
  sub_297E4E1B4(2, a1, 4, 5u, "phLibNfc_ConnChkDevType");
  v2 = *(a1 + 760) == 1 || *(a1 + 762) > 1u;
  sub_297E4DFAC(2, a1, 4, 5u, "phLibNfc_ConnChkDevType");
  return v2;
}

uint64_t sub_297EE7BC4(uint64_t a1)
{
  sub_297E4E1B4(2, a1, 4, 5u, "phLibNfc_ConnChkTgtType");

  return sub_297E4DFAC(2, a1, 4, 5u, "phLibNfc_ConnChkTgtType");
}

uint64_t sub_297EE7C28(uint64_t a1, int a2, unsigned int a3)
{
  sub_297E4E1B4(2, a1, 4, 5u, "phLibNfc_RfListnerRegisterd");
  v6 = 255;
  v7 = 128;
  switch(a2)
  {
    case 11:
      v7 = 4;
      goto LABEL_18;
    case 13:
      v7 = 0x4000;
      goto LABEL_18;
    case 14:
      v7 = 0x8000;
      goto LABEL_18;
    case 15:
      v7 = 0x10000;
      goto LABEL_18;
    case 16:
      if (a3 <= 0x38 && ((1 << a3) & 0x100010003030302) != 0 || (v7 = 1, a3 - 136 <= 0x30) && ((1 << (a3 + 120)) & 0x1000000010001) != 0)
      {
        v7 = 2;
      }

      goto LABEL_18;
    case 17:
      v7 = 0x2000;
      goto LABEL_18;
    case 19:
      v7 = 8;
      goto LABEL_18;
    case 21:
      v7 = 32;
      goto LABEL_18;
    case 22:
      goto LABEL_18;
    case 23:
      v7 = 16;
      goto LABEL_18;
    case 24:
      v7 = 4096;
      goto LABEL_18;
    case 25:
      v7 = 512;
      goto LABEL_18;
    case 26:
    case 27:
      v7 = 64;
LABEL_18:
      if ((*(a1 + 1040) & v7) != 0)
      {
        v6 = 0;
      }

      else
      {
        v6 = 255;
      }

      break;
    default:
      break;
  }

  sub_297E4DFAC(2, a1, 4, 5u, "phLibNfc_RfListnerRegisterd");
  return v6;
}

uint64_t sub_297EE7D84(uint64_t a1, uint64_t a2, uint64_t a3, int *a4, uint64_t a5)
{
  v12 = 0;
  v13 = 0;
  sub_297E4E1B4(2, a1, 4, 5u, "phLibNfc_Process_Disconnect");
  v8 = 1;
  if (a1 && a4 && a5)
  {
    v12 = a5;
    v9 = *a4;
    if (sub_297ECD484(a1, &v12, &v13, 1))
    {
      v8 = 149;
      v10 = "Mapping of LibNfc RemoteDev Handle to NCI RemoteDev handle Failed";
    }

    else if (sub_297E8E7EC(a1, v13))
    {
      v8 = 149;
      v10 = "Validation of  NCI RemoteDev handle Failed";
    }

    else
    {
      *(a1 + 1032) = v9;
      if (v13)
      {
        v8 = 0;
        goto LABEL_9;
      }

      v8 = 1;
      v10 = "Remote Device Handle NULL!!!";
    }

    sub_297E4E0B0(1, a1 + 9792, 4, 1u, v10);
  }

LABEL_9:
  sub_297E4DFAC(2, a1, 4, 5u, "phLibNfc_Process_Disconnect");
  return v8;
}

uint64_t sub_297EE7E94(uint64_t a1, unsigned int a2)
{
  sub_297E4E1B4(2, a1, 4, 5u, "phLibNfc_ChkDeActType");
  if (a2 >= 8)
  {
    v4 = 0;
  }

  else
  {
    v4 = 0x100010000010000uLL >> (8 * a2);
  }

  sub_297E4DFAC(2, a1, 4, 5u, "phLibNfc_ChkDeActType");
  return v4 & 1;
}

uint64_t sub_297EE7F18(uint64_t a1)
{
  v3 = 0;
  v4 = a1;
  sub_297E4E1B4(0, &v4, 4, 5u, "phLibNfc_H_RetreiveConnectedHandle");
  sub_297E4F0E8(v4, &v3);
  if (v3)
  {
    v1 = *(v3 + 1504);
  }

  else
  {
    v1 = 0;
  }

  sub_297E4DFAC(0, &v4, 4, 5u, "phLibNfc_H_RetreiveConnectedHandle");
  return v1;
}

uint64_t sub_297EE7F9C(uint64_t a1, _BYTE *a2)
{
  v10 = 0;
  v11 = a1;
  sub_297E4E1B4(0, &v11, 4, 5u, "phLibNfc_H_GetFSC");
  sub_297E4F0E8(v11, &v10);
  v3 = 255;
  if (a2 && v10)
  {
    v4 = sub_297E55558(*(v10 + 3088), *(v10 + 1504));
    v5 = (v10 + 1504);
    if (v4)
    {
      *v5 = 0;
      v5[1] = 0;
      goto LABEL_11;
    }

    v6 = *v5;
    if (!v6)
    {
      goto LABEL_11;
    }

    v7 = *(v6 + 4);
    if ((v7 - 5) >= 3)
    {
      if (v7 == 16)
      {
        v3 = 0;
        v8 = *(v6 + 145);
        goto LABEL_10;
      }

      if (v7 != 3)
      {
        goto LABEL_11;
      }
    }

    v3 = 0;
    v8 = *(v6 + 106);
LABEL_10:
    *a2 = v8;
  }

LABEL_11:
  sub_297E4E1B4(0, &v11, 4, 5u, "phLibNfc_H_GetFSC");
  return v3;
}

uint64_t sub_297EE8080(uint64_t a1, int a2)
{
  sub_297E4E1B4(2, a1, 3, 5u, "phNciNfc_Recv4AResp");
  if (a1)
  {
    if (!a2 && (v4 = *(a1 + 3808)) != 0 && *(a1 + 3800))
    {
      if (v4 >= *(a1 + 4600))
      {
        v5 = *(a1 + 4600);
      }

      else
      {
        v5 = *(a1 + 3808);
      }

      phOsalNfc_MemCopy();
      v6 = 0;
      *(a1 + 4600) = v5;
    }

    else
    {
      sub_297E4E0B0(1, a1 + 6524, 3, 4u, " Data Receive Failed..");
      v6 = 255;
    }

    *(a1 + 4632) = v6;
    if (*(a1 + 4640))
    {
      *(a1 + 4648) = 0;
      sub_297E4E0B0(1, a1 + 6524, 3, 4u, " Freeing Send Request Payload Buffer..");
      phOsalNfc_FreeMemory();
      *(a1 + 4640) = 0;
    }
  }

  else
  {
    sub_297E4E0B0(2, 0, 3, 4u, " Invalid Context Param..");
    v6 = 1;
  }

  sub_297E4DFAC(2, a1, 3, 5u, "phNciNfc_Recv4AResp");
  return v6;
}

uint64_t sub_297EE81B0(uint64_t a1)
{
  v7 = 0u;
  v8 = 0u;
  sub_297E4E1B4(2, a1, 3, 5u, "phNciNfc_Send4AData");
  if (a1)
  {
    v2 = *(a1 + 4552);
    if (v2)
    {
      if (*(a1 + 4584))
      {
        phOsalNfc_SetMemory();
        LODWORD(v7) = 0;
        if (sub_297E8BB50(a1, v2, (&v7 | 0xC)))
        {
          sub_297E4E0B0(1, a1 + 6524, 3, 4u, " Couldn't Get ConnId..");
          v3 = 255;
        }

        else
        {
          v5 = *(a1 + 4584);
          *(a1 + 4648) = 0;
          *(a1 + 4640) = 0;
          Memory_Typed = phOsalNfc_GetMemory_Typed();
          *(a1 + 4640) = Memory_Typed;
          if (Memory_Typed)
          {
            *(a1 + 4648) = v5;
            phOsalNfc_SetMemory();
            if (v5)
            {
              phOsalNfc_MemCopy();
            }

            sub_297E4E0B0(1, a1 + 6524, 3, 4u, " 4A Payload created successfully..");
            *&v8 = *(a1 + 4640);
            DWORD2(v8) = *(a1 + 4648);
            v3 = sub_297E57BA8(a1 + 936, &v7, a1 + 3800, *(a1 + 4566), sub_297EFF2DC, a1);
            *(a1 + 4566) = 0;
            if (v3 != 13)
            {
              phOsalNfc_FreeMemory();
              *(a1 + 4640) = 0;
              *(a1 + 4648) = 0;
            }
          }

          else
          {
            sub_297E4E0B0(1, a1 + 6524, 3, 4u, " Payload MemAlloc for Send request Failed..");
            v3 = 12;
          }
        }
      }

      else
      {
        v3 = 1;
        sub_297E4E0B0(1, a1 + 6524, 3, 4u, " Invalid Length..");
      }
    }

    else
    {
      sub_297E4E0B0(1, a1 + 6524, 3, 4u, " Invalid Device..");
      v3 = 6;
    }
  }

  else
  {
    sub_297E4E0B0(2, 0, 3, 4u, " Invalid Context Param..");
    v3 = 1;
  }

  sub_297E4DFAC(2, a1, 3, 5u, "phNciNfc_Send4AData");
  return v3;
}

uint64_t sub_297EE83FC(uint64_t a1)
{
  sub_297E4E1B4(2, a1, 4, 5u, "phLibNfc_HciOpenAdmPipe");
  if (!a1)
  {
    v5 = "phLibNfc_HciOpenAdmPipe: Invalid LibNfc context passed!";
    v6 = 1;
    v8 = 2;
    v7 = 0;
    goto LABEL_9;
  }

  v2 = *(a1 + 520);
  v3 = *(a1 + 512);
  if (v3)
  {
    v4 = v2 == 0;
  }

  else
  {
    v4 = 1;
  }

  if (v4)
  {
    v5 = "phLibNfc_HciOpenAdmPipe: Invalid Hci context passed!";
    v6 = 1;
    v7 = a1 + 9792;
    v8 = 1;
LABEL_9:
    sub_297E4E0B0(v8, v7, 4, 1u, v5);
    goto LABEL_18;
  }

  if (*(a1 + 2992) == 1 || *(a1 + 2984) == 1 && *(v2 + 1) == 1 && *(v2 + 4) == 1)
  {
    v6 = 0;
  }

  else if (sub_297E9D970(v3, 1, sub_297E5BA84, a1) == 13)
  {
    sub_297E4E0B0(1, a1 + 9792, 4, 4u, "phLibNfc_HciOpenAdmPipe:ADM Open pipe Cmd Sent to NCI");
    v6 = 13;
  }

  else
  {
    sub_297E50DB0(1, a1 + 9792, 4, 1u, "phLibNfc_HciOpenAdmPipe:Failed to create pipe for ADM, error");
    v6 = 255;
  }

LABEL_18:
  sub_297E4DFAC(2, a1, 4, 5u, "phLibNfc_HciOpenAdmPipe");
  return v6;
}

uint64_t sub_297EE855C(uint64_t a1, uint64_t a2)
{
  sub_297E4E1B4(2, a1, 4, 5u, "phLibNfc_HciOpenAdmPipeProc");
  if (!a1)
  {
    v4 = "phLibNfc_HciOpenAdmPipeProc: Invalid LibNfc context received!";
    a2 = 1;
    v5 = 2;
    v6 = 0;
LABEL_7:
    sub_297E4E0B0(v5, v6, 4, 1u, v4);
    goto LABEL_8;
  }

  if (!*(a1 + 512))
  {
    v4 = "phLibNfc_HciOpenAdmPipeProc: Invalid Hci context received!";
    a2 = 1;
    v6 = a1 + 9792;
    v5 = 1;
    goto LABEL_7;
  }

  if (a2)
  {
    sub_297E4E0B0(1, a1 + 9792, 4, 1u, "phLibNfc_HciOpenAdmPipe: Failed to open ADM pipe");
    a2 = 255;
  }

  else
  {
    sub_297E4E0B0(1, a1 + 9792, 4, 4u, "ADM pipe successfully opened");
  }

LABEL_8:
  sub_297E4DFAC(2, a1, 4, 5u, "phLibNfc_HciOpenAdmPipeProc");
  return a2;
}

uint64_t sub_297EE8650(uint64_t a1)
{
  v10 = -1;
  v9 = -1;
  sub_297E4E1B4(2, a1, 4, 5u, "phLibNfc_HciSetAllowList");
  if (a1)
  {
    v2 = *(a1 + 520);
    if (*(a1 + 512))
    {
      v3 = v2 == 0;
    }

    else
    {
      v3 = 1;
    }

    if (v3)
    {
      v4 = "phLibNfc_HciSetAllowList: Invalid Hci context received!";
      v5 = 1;
    }

    else
    {
      if (*(a1 + 2992) == 1)
      {
LABEL_13:
        v5 = 0;
        goto LABEL_11;
      }

      if (*(a1 + 2984) == 1)
      {
        if (*(v2 + 1) == 1 && *(v2 + 4) == 1)
        {
          goto LABEL_13;
        }

        sub_297E4E0B0(1, a1 + 9792, 4, 4u, "phLibNfc_HciSetAllowList: Setting all secure elements to allow list");
        v9 = -32320;
        v10 = 2;
        v5 = 3;
      }

      else
      {
        if ((*(a1 + 366) | 2) == 3)
        {
          LOBYTE(v9) = -64;
          v5 = 1;
          sub_297E4E0B0(1, a1 + 9792, 4, 4u, "phLibNfc_HciSetAllowList: Setting eSE to Allow list");
        }

        else
        {
          v5 = 0;
        }

        if ((*(a1 + 367) | 2) == 3)
        {
          *(&v9 | v5) = -127;
          sub_297E4E0B0(1, a1 + 9792, 4, 4u, "phLibNfc_HciSetAllowList: Setting SE2 Se Allow list");
          v5 = (v5 + 1);
        }

        if ((*(a1 + 365) | 2) == 3)
        {
          *(&v9 + v5) = 2;
          sub_297E4E0B0(1, a1 + 9792, 4, 4u, "phLibNfc_HciSetAllowList: Setting UICC to Allow list");
          v5 = (v5 + 1);
        }

        else if (!v5)
        {
          goto LABEL_11;
        }
      }

      v5 = sub_297E9D740(*(a1 + 512), 3, 1, v5, &v9, sub_297E5BA84, a1);
      if (v5 == 13)
      {
        sub_297E4E0B0(1, a1 + 9792, 4, 4u, "phLibNfc_HciSetAllowList:Cmd Sent to NCI");
        goto LABEL_11;
      }

      v4 = "phLibNfc_HciSetAllowList:Failed to Send Cmd to NCI";
    }

    v6 = a1 + 9792;
    v7 = 1;
  }

  else
  {
    v4 = "phLibNfc_HciSetAllowList: Invalid LibNfc context received!";
    v5 = 1;
    v7 = 2;
    v6 = 0;
  }

  sub_297E4E0B0(v7, v6, 4, 1u, v4);
LABEL_11:
  sub_297E4DFAC(2, a1, 4, 5u, "phLibNfc_HciSetAllowList");
  return v5;
}

uint64_t sub_297EE88D0(uint64_t a1, uint64_t a2)
{
  sub_297E4E1B4(2, a1, 4, 5u, "phLibNfc_HciSetAllowListProc");
  if (!a1)
  {
    v4 = "phLibNfc_HciSetAllowListProc: Invalid LibNfc context received!";
    a2 = 1;
    v5 = 2;
    v6 = 0;
LABEL_6:
    sub_297E4E0B0(v5, v6, 4, 1u, v4);
    goto LABEL_7;
  }

  if (!*(a1 + 512))
  {
    v4 = "phLibNfc_HciSetAllowListProc: Invalid Hci context received!";
    a2 = 1;
    v6 = a1 + 9792;
    v5 = 1;
    goto LABEL_6;
  }

  sub_297E4E0B0(1, a1 + 9792, 4, 4u, "phLibNfc_HciSetAllowListProc: Successful");
LABEL_7:
  sub_297E4DFAC(2, a1, 4, 5u, "phLibNfc_HciSetAllowListProc");
  return a2;
}

uint64_t sub_297EE8998(uint64_t a1)
{
  sub_297E4E1B4(2, a1, 4, 5u, "phLibNfc_ModeSetHciNwk");
  if (!a1)
  {
    goto LABEL_6;
  }

  v2 = 0;
  v3 = 0;
  do
  {
    v4 = *(&unk_2A18BDDC0 + 14 * v3 + 2);
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
    *(a1 + 2929) = 0;
    *(a1 + 592) = 0;
    v7 = *(a1 + 520);
    if ((*(a1 + 366) | 2) == 3 && !*(a1 + 552))
    {
      *(a1 + 592) = 4000;
      sub_297E4E0B0(1, a1 + 9792, 4, 4u, "Add Delay Wait for EoOP of p61");
    }

    if ((*(a1 + 365) | 2) == 3 && !*(a1 + 553))
    {
      *(a1 + 592) += 2000;
      *(a1 + 2929) = 0;
      sub_297E4E0B0(1, a1 + 9792, 4, 4u, "Add Delay Wait for EoOP of UICC");
    }

    if ((*(a1 + 367) | 2) == 3 && !*(a1 + 554))
    {
      *(a1 + 592) += 2000;
      *(a1 + 2929) = 0;
      sub_297E4E0B0(1, a1 + 9792, 4, 4u, "Add Delay Wait for EoOP of SE2");
    }

    if (*(v7 + 1) == 1 && *(v7 + 4) == 1)
    {
      sub_297E4E0B0(1, a1 + 9792, 4, 4u, "phLibNfc_ModeSetHciNwk:HCI Network is already Enabled");
      if (*(a1 + 592))
      {
        sub_297E79690(a1, 1);
      }

      v5 = 0;
    }

    else
    {
      *(a1 + 572) = 0;
      v8 = sub_297F058B8(*(a1 + 3088), **(a1 + 560), 1u, sub_297E5BA84, a1);
      if (v8 == 13)
      {
        sub_297E4E0B0(1, a1 + 9792, 4, 4u, "phLibNfc_ModeSetHciNwk:Cmd Sent to lower layer");
        v5 = 13;
      }

      else if (v8 == 111)
      {
        sub_297E4E0B0(1, a1 + 9792, 4, 2u, "phLibNfc_ModeSetHciNwk: NCI returned Busy status");
        v5 = 111;
      }

      else
      {
        sub_297E50DB0(1, a1 + 9792, 4, 1u, "phLibNfc_ModeSetHciNwk: Failed to set mode, error");
        v5 = 255;
      }
    }
  }

  else
  {
LABEL_6:
    v5 = 1;
    sub_297E4E0B0(2, a1, 4, 1u, "Invalid Context passed from lower layer!");
  }

  sub_297E4DFAC(2, a1, 4, 5u, "phLibNfc_ModeSetHciNwk");
  return v5;
}

uint64_t sub_297EE8C34(uint64_t a1, uint64_t a2)
{
  sub_297E4E1B4(2, a1, 4, 5u, "phLibNfc_ModeSetHciNwkProc");
  if (a1)
  {
    v4 = 0;
    v5 = 0;
    do
    {
      v6 = *(&unk_2A18BDDC0 + 14 * v5 + 2);
      if (v4)
      {
        break;
      }

      v4 = 1;
      v5 = 1;
    }

    while (v6 != a1);
    if (v6 == a1)
    {
      if (a2)
      {
        sub_297E4E0B0(1, a1 + 9792, 4, 1u, "phLibNfc_ModeSetHciNwkProc: Set Mode Failed!");
      }

      else
      {
        if (*(a1 + 592))
        {
          sub_297E79690(a1, 1);
        }

        *(*(a1 + 560) + 12) = *(a1 + 572) != 0;
        sub_297E4E0B0(1, a1 + 9792, 4, 4u, "phLibNfc_ModeSetHciNwkProc: Set Mode success");
      }
    }
  }

  sub_297E4DFAC(2, a1, 4, 5u, "phLibNfc_ModeSetHciNwkProc");
  return a2;
}

uint64_t sub_297EE8D40(uint64_t a1, uint64_t a2)
{
  v3 = a1;
  sub_297E4E1B4(2, a1, 4, 5u, "phLibNfc_HciInitComplete");
  if (!v3)
  {
    v8 = "phLibNfc_HciInitComplete: Invalid LibNfc context received!";
    a2 = 1;
    v9 = 2;
    v10 = 0;
LABEL_9:
    sub_297E4E0B0(v9, v10, 4, 1u, v8);
    goto LABEL_17;
  }

  v4 = *(v3 + 512);
  *(v3 + 752) = 0;
  *(v3 + 744) = 0;
  if (!v4)
  {
    v8 = "phLibNfc_HciInitComplete: Invalid Hci context received!";
    a2 = 1;
    v10 = v3 + 9792;
    v9 = 1;
    goto LABEL_9;
  }

  if (!a2)
  {
    sub_297E4E0B0(1, v3 + 9792, 4, 4u, "Hci network initialization success");
    *(v3 + 370) = 2;
    if (*(v3 + 2992) == 1)
    {
      a2 = sub_297EA80F4(v3);
      if (a2)
      {
        goto LABEL_20;
      }

      if (*(v3 + 552))
      {
        if (*(v3 + 553))
        {
          *(v4 + 832) = 16650;
LABEL_32:
          sub_297E4E0B0(1, v3 + 9792, 4, 4u, "HCI Init Comp- Static feature config");
          a2 = sub_297EA9C00(v3);
          if (a2 == 13)
          {
            sub_297E4E0B0(1, v3 + 9792, 4, 4u, "phLibNfc_HciInitComplete: Static feature config sequence started");
            goto LABEL_17;
          }

          v5 = "phLibNfc_HciInitComplete: Static feature config sequence failed";
          goto LABEL_5;
        }

        goto LABEL_31;
      }

      if (*(v3 + 366) != 1)
      {
        if (*(v3 + 553))
        {
          goto LABEL_32;
        }

LABEL_31:
        if (*(v3 + 365) != 1)
        {
          goto LABEL_32;
        }

LABEL_21:
        if (*(v3 + 2984) == 1 && (v12 = sub_297EECC30(v3, 4u), v12 != 255) || (v12 = sub_297EECC30(v3, 2u), v12 != 255))
        {
          a2 = v12;
          goto LABEL_17;
        }

        if (*(v3 + 365) == 2 && *(v3 + 366) == 2 && *(v3 + 367) == 2)
        {
          sub_297E4E0B0(1, v3 + 9792, 4, 4u, "phLibNfc_HciInitComplete: UICC, SE2 and eSE are Removed");
        }

        goto LABEL_32;
      }
    }

    a2 = sub_297EECC30(v3, 3u);
LABEL_20:
    if (a2 != 255)
    {
      goto LABEL_17;
    }

    goto LABEL_21;
  }

  v5 = "phLibNfc_HciInitComplete: Hci network initialization FAILED";
LABEL_5:
  sub_297E4E0B0(1, v3 + 9792, 4, 1u, v5);
  if (*(v3 + 2931))
  {
    v6 = v3;
    v7 = 137;
  }

  else
  {
    sub_297EE905C(v3);
    v6 = v3;
    v7 = 255;
  }

  sub_297EA93C8(v6, v7);
  v3 = 0;
LABEL_17:
  sub_297E4DFAC(2, v3, 4, 5u, "phLibNfc_HciInitComplete");
  return a2;
}

uint64_t sub_297EE8FD4(uint64_t a1, uint64_t a2)
{
  sub_297E4E1B4(2, a1, 4, 5u, "phLibNfc_SeReInitSeqComplete");
  if (a1)
  {
    *(a1 + 557) = 0;
  }

  else
  {
    sub_297E4E0B0(2, 0, 4, 1u, "phLibNfc_SeReInitSeqComplete: Invalid parameter!");
  }

  sub_297E4DFAC(2, a1, 4, 5u, "phLibNfc_SeReInitSeqComplete");
  return a2;
}

uint64_t sub_297EE905C(uint64_t a1)
{
  sub_297E4E1B4(2, a1, 4, 5u, "phLibNfc_HciDeInit");
  if (a1)
  {
    v2 = *(a1 + 512);
    if (v2)
    {
      v3 = v2[117];
      if (v3)
      {
        v4 = v3 == 0xFFFFFFFFFFFFLL;
      }

      else
      {
        v4 = 1;
      }

      if (!v4)
      {
        phOsalNfc_Timer_Delete();
        v2[117] = 0;
        sub_297E4E0B0(1, a1 + 9792, 4, 4u, "phLibNfc_HciDeInit:dwHciResendPacketTimerId Deleted");
      }

      v2[99] = *(a1 + 3088);
      sub_297E99840(v2);
      sub_297E9A6EC(v2);
      phOsalNfc_FreeMemory();
      sub_297E9FB94(*(a1 + 9792), 0);
      *(a1 + 512) = 0;
    }

    else
    {
      sub_297E4E0B0(1, a1 + 9792, 4, 4u, "phLibNfc_HciDeInit:Invalid HCI Context");
    }
  }

  else
  {
    sub_297E4E0B0(2, 0, 4, 1u, "phLibNfc_HciDeInit:Invalid LibNfc Context");
  }

  return sub_297E4DFAC(2, a1, 4, 5u, "phLibNfc_HciDeInit");
}

uint64_t sub_297EE9184(uint64_t a1)
{
  v12 = 0;
  v11 = 0;
  sub_297E4E1B4(2, a1, 4, 5u, "phLibNfc_HciDataSend");
  if (!a1)
  {
    v6 = "phLibNfc_HciDataSend: Invalid LibNfc context received!";
    v3 = 1;
    v7 = 2;
    v8 = 0;
LABEL_20:
    sub_297E4E0B0(v7, v8, 4, 1u, v6);
    goto LABEL_21;
  }

  v2 = *(a1 + 512);
  if (!v2)
  {
    v6 = "phLibNfc_HciDataSend: Invalid Hci context received!";
    v3 = 1;
    v8 = a1 + 9792;
LABEL_19:
    v7 = 1;
    goto LABEL_20;
  }

  v3 = sub_297E9F088(*(a1 + 512), *(a1 + 644), &v11);
  if (v3 == 147)
  {
    v3 = sub_297E9DBD0(*(a1 + 512), 240, &v11);
  }

  sub_297E50DB0(1, v2 + 956, 7, 4u, "PIPE ID");
  if (v3 || v11 == 255)
  {
    v6 = "phLibNfc_HciDataSend: Failure with phHciNfc_GetPipeId!";
LABEL_18:
    v8 = a1 + 9792;
    goto LABEL_19;
  }

  sub_297E4E0B0(1, a1 + 9792, 4, 4u, "phHciNfc_RegisterForResponses:APDU Pipe");
  LODWORD(v12) = 2;
  BYTE4(v12) = v11;
  sub_297E9D594(v2, &v12, sub_297EE93FC, v2);
  *(v2 + 1236) = 0;
  *(v2 + 1232) = 0;
  *(a1 + 754) = 0;
  v4 = sub_297EE95D0(*(a1 + 512), v11, 16, 1, *(a1 + 616), *(a1 + 608), 0);
  if (v4 != 13)
  {
    v3 = v4;
    v6 = "phLibNfc_HciDataSend: Failed Status from Lower Layer";
    goto LABEL_18;
  }

  *(v2 + 184) = sub_297EEEFB8;
  *(v2 + 192) = a1;
  v5 = *(a1 + 756);
  if (v5 < 0x7D0)
  {
    v5 = *(a1 + 640);
    if (v5 >> 4 < 0x271)
    {
      v5 = 10000;
    }
  }

  *(v2 + 852) = v5;
  if (!sub_297EEED20(v2))
  {
    v10 = *(a1 + 512);
    if (!phOsalNfc_Timer_Start())
    {
      goto LABEL_13;
    }

    v3 = phOsalNfc_Timer_Delete();
    *(v10 + 840) = 0xFFFFFFFFFFFFLL;
    v6 = "phLibNfc_HciDataSend: SE TxRx Timer Start Failed";
    goto LABEL_18;
  }

  sub_297E50DB0(1, a1 + 9792, 4, 4u, "phLibNfc_HciDataSend: SE TxRx Timer Started with Timeout");
LABEL_13:
  v3 = 13;
LABEL_21:
  sub_297E4DFAC(2, a1, 4, 5u, "phLibNfc_HciDataSend");
  return v3;
}

uint64_t sub_297EE93FC(uint64_t a1, int a2, uint64_t a3)
{
  sub_297E4E1B4(2, a1, 7, 5u, "phHciNfc_ProcessRspsOnApduPipe");
  if (a1)
  {
    if (a3)
    {
      if (!a2)
      {
        v6 = *(a1 + 960);
        if (v6)
        {
          v7 = *(a3 + 1);
          if (v7 > 5)
          {
            if (*(a3 + 1) > 8u)
            {
              switch(v7)
              {
                case 9u:
                  v8 = "phHciNfc_ProcessRspsOnApduPipe:phHciNfc_e_RspAnyETimeout received";
                  goto LABEL_32;
                case 0xAu:
                  v8 = "phHciNfc_ProcessRspsOnApduPipe:phHciNfc_e_RspAnyERegAccessDenied received";
                  goto LABEL_32;
                case 0xBu:
                  v8 = "phHciNfc_ProcessRspsOnApduPipe:phHciNfc_e_RspAnyEPipeAccessDenied received";
                  goto LABEL_32;
              }
            }

            else
            {
              switch(v7)
              {
                case 6u:
                  v8 = "phHciNfc_ProcessRspsOnApduPipe:phHciNfc_e_RspAnyEPipeNotOpened received";
                  goto LABEL_32;
                case 7u:
                  v8 = "phHciNfc_ProcessRspsOnApduPipe:phHciNfc_e_RspAnyECmdNotSupported received";
                  goto LABEL_32;
                case 8u:
                  v8 = "phHciNfc_ProcessRspsOnApduPipe:phHciNfc_e_RspAnyEInhibited received";
LABEL_32:
                  sub_297E4E0B0(1, v6 + 9792, 4, 1u, v8);
                  sub_297EE9744(v6, 255, a3);
                  goto LABEL_33;
              }
            }
          }

          else
          {
            if (*(a3 + 1) <= 2u)
            {
              if (!*(a3 + 1))
              {
                sub_297E4E0B0(1, v6 + 9792, 4, 1u, "phHciNfc_ProcessRspsOnApduPipe:phHciNfc_e_RspAnyOk Not Expected From APDU Pipe");
                goto LABEL_33;
              }

              if (v7 == 1)
              {
                v8 = "phHciNfc_ProcessRspsOnApduPipe:phHciNfc_e_RspAnyENotConnected received";
              }

              else
              {
                v8 = "phHciNfc_ProcessRspsOnApduPipe:phHciNfc_e_RspAnyECmdParUnknown received";
              }

              goto LABEL_32;
            }

            switch(v7)
            {
              case 3u:
                v8 = "phHciNfc_ProcessRspsOnApduPipe:phHciNfc_e_RspAnyENok received";
                goto LABEL_32;
              case 4u:
                v8 = "phHciNfc_ProcessRspsOnApduPipe:phHciNfc_e_RspAnyEPipesFull received";
                goto LABEL_32;
              case 5u:
                v8 = "phHciNfc_ProcessRspsOnApduPipe:phHciNfc_e_RspAnyERegParUnknown received";
                goto LABEL_32;
            }
          }

          v8 = "phHciNfc_ProcessRspsOnApduPipe:Unknown Response INS received";
          goto LABEL_32;
        }
      }
    }
  }

LABEL_33:

  return sub_297E4DFAC(2, a1, 7, 5u, "phHciNfc_ProcessRspsOnApduPipe");
}

uint64_t sub_297EE95D0(uint64_t a1, char a2, char a3, char a4, int a5, uint64_t a6, uint64_t a7)
{
  v18 = 0uLL;
  v19 = 0;
  sub_297E4E1B4(2, a1, 7, 5u, "phHciNfc_Transceive");
  if (a1 && (v14 = *(a1 + 960)) != 0)
  {
    LOBYTE(v18) = a2;
    BYTE1(v18) = a3;
    BYTE2(v18) = a4;
    *(&v18 + 1) = a6;
    DWORD1(v18) = a5;
    *(a1 + 953) = 0;
    if (*(v14 + 2992) == 1 || *(v14 + 2987) == 1)
    {
      *(a1 + 953) = 1;
    }

    if (a7)
    {
      v15 = sub_297E9CC80;
    }

    else
    {
      v15 = sub_297E9CBB4;
    }

    v16 = sub_297E99C88(a1, &v18, v15, a1);
    if (v16 == 13)
    {
      *(a1 + 200) = 0u;
      *(a1 + 184) = 0u;
    }

    else
    {
      sub_297E4E0B0(1, a1 + 956, 7, 1u, "phHciNfc_Transceive:Failed Status from Lower layer");
      *(a1 + 953) = 0;
    }
  }

  else
  {
    v16 = 1;
    sub_297E4E0B0(2, a1, 7, 1u, "phHciNfc_Transceive:Invalid HCI Context");
  }

  sub_297E4DFAC(2, a1, 7, 5u, "phHciNfc_Transceive");
  return v16;
}

uint64_t sub_297EE9744(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v21 = 164;
  v20 = 0;
  v19 = 0;
  sub_297E4E1B4(2, a1, 4, 5u, "phLibNfc_HciDataSendProc");
  if (a1)
  {
    v6 = *(a1 + 512);
    if (!v6)
    {
      sub_297E4E0B0(1, a1 + 9792, 4, 1u, "phLibNfc_HciDataSendProc:Invalid HCI Context");
      a2 = 255;
      goto LABEL_37;
    }

    if (a2 == 44)
    {
      goto LABEL_53;
    }

    v8 = &gphNfc_DebugInfo_Sec;
    if (!*(v6 + 956))
    {
      v8 = &gphNfc_DebugInfo_Prim;
    }

    *v8 &= ~8u;
    if (a2 || !a3 || !*(a1 + 6344))
    {
LABEL_53:
      if (*(a1 + 6360))
      {
        sub_297EE9C34(a1, a2, a3);
      }

      else
      {
        if (a2 != 65)
        {
          if (a2 == 217 && !a3)
          {
            if (*(a1 + 632))
            {
              phOsalNfc_MemCopy();
              *(a1 + 632) = 1;
            }

            a2 = 217;
            goto LABEL_31;
          }

          *(a1 + 632) = 0;
          v11 = "phLibNfc_HciDataSendProc:Failed Status received from lower layer";
          v12 = a1 + 9792;
LABEL_30:
          sub_297E4E0B0(1, v12, 4, 1u, v11);
          goto LABEL_31;
        }

        sub_297E4E0B0(1, a1 + 9792, 4, 4u, "phLibNfc_HciDataSendProc:RECOVERY SUCCESS");
      }
    }

    else
    {
      if (*(a3 + 4) && *(a3 + 8))
      {
        v9 = sub_297EE9B6C(a1);
        if (v9 == 111)
        {
          sub_297E4E0B0(1, a1 + 9792, 4, 4u, "phLibNfc_HciDataSendProc:Received valid data");
          if (*(a1 + 624) && (v10 = *(a1 + 632)) != 0)
          {
            if (v10 >= *(a3 + 4))
            {
              phOsalNfc_MemCopy();
              a2 = 0;
              *(a1 + 632) = *(a3 + 4);
            }

            else
            {
              sub_297E4E0B0(1, a1 + 9792, 4, 1u, "phLibNfc_HciDataSendProc:Could not copy entire received data");
              a2 = 8;
            }
          }

          else
          {
            a2 = 0;
          }

          goto LABEL_31;
        }

        a2 = v9;
        v11 = "phLibNfc_HciDataSendProc:eSE Transceive received data after Timeout";
        v12 = a1 + 9792;
        goto LABEL_30;
      }

      sub_297E4E0B0(1, a1 + 9792, 4, 1u, "phLibNfc_HciDataSendProc:Invalid data received!");
      a2 = 255;
    }

LABEL_31:
    v13 = *(v6 + 840);
    if (v13)
    {
      v14 = v13 == 0xFFFFFFFFFFFFLL;
    }

    else
    {
      v14 = 1;
    }

    if (!v14)
    {
      phOsalNfc_Timer_Stop();
      phOsalNfc_Timer_Delete();
      *(v6 + 840) = 0xFFFFFFFFFFFFLL;
      *(v6 + 852) = 10000;
      sub_297E4E0B0(1, a1 + 9792, 4, 4u, "phLibNfc_HciDataSendProc:SE TxRx Timer Deleted");
    }

    sub_297E9DBD0(*(a1 + 512), 240, &v19 + 1);
    sub_297E4E0B0(1, a1 + 9792, 4, 4u, "phHciNfc_UnRegisterCmdRspEvt:APDU Pipe");
    LODWORD(v20) = 2;
    BYTE4(v20) = HIBYTE(v19);
    sub_297E9DCD0(v6, &v20, sub_297EE93FC);
    v15 = sub_297E99B38(v6, v6, HIBYTE(v19));
    sub_297ED62FC(v6, v6, v15);
    *(v6 + 953) = 0;
LABEL_37:
    v16 = *(a1 + 560);
    if (v16)
    {
      sub_297EEDE84(a1, *(v16 + 8), a2, &v21);
    }

    if (*(a1 + 2992) != 1 && *(a1 + 2987) != 1 || !sub_297E5AA54(*(a1 + 3000), 20))
    {
      goto LABEL_46;
    }

    if (sub_297E5A99C(*(a1 + 9784), &v19))
    {
      a2 = 255;
      v17 = "phLibNfc_HciDataSendProc-Fialed to retrieve bIgnoreWkUpRet from Util module";
    }

    else
    {
      if (v19)
      {
        goto LABEL_46;
      }

      v17 = "phLibNfc_HciDataSendProc-Fialed to De-Assert Wake Up Line";
    }

    sub_297E4E0B0(1, a1 + 9792, 4, 1u, v17);
LABEL_46:
    v7 = sub_297E4F450(*(a1 + 9784), v21, a2, 0, 0);
    goto LABEL_47;
  }

  sub_297E4E0B0(2, 0, 4, 4u, "phLibNfc_HciDataSendProc:Invalid Lib Context");
  v7 = 1;
LABEL_47:
  sub_297E4DFAC(2, a1, 4, 5u, "phLibNfc_HciDataSendProc");
  return v7;
}

uint64_t sub_297EE9B6C(void *a1)
{
  sub_297E4E1B4(2, a1, 4, 5u, "phHciNfc_CheckTransOnApduPipe");
  if (a1)
  {
    if (a1[793] || a1[795] || a1[817])
    {
      sub_297E4E0B0(1, (a1 + 1224), 4, 4u, "phHciNfc_CheckTransOnApduPipe:eSE Transceive or Get ATR API in progress");
      v2 = 111;
    }

    else
    {
      v2 = 0;
    }
  }

  else
  {
    sub_297E4E0B0(2, 0, 4, 1u, "phHciNfc_CheckTransOnApduPipe:Invalid Context");
    v2 = 255;
  }

  sub_297E4DFAC(2, a1, 4, 5u, "phHciNfc_CheckTransOnApduPipe");
  return v2;
}

uint64_t sub_297EE9C34(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v16 = 164;
  v15 = 0;
  v14 = 0;
  sub_297E4E1B4(2, a1, 4, 5u, "phLibNfc_HciRawDataSendProc");
  if (a1)
  {
    v6 = *(a1 + 512);
    if (!v6)
    {
      sub_297E4E0B0(1, a1 + 9792, 4, 1u, "phLibNfc_HciRawDataSendProc:Invalid HCI Context");
      a2 = 255;
      goto LABEL_34;
    }

    if (!a2 && a3)
    {
      if (sub_297EE9B6C(a1) != 111)
      {
        sub_297E4E0B0(1, a1 + 9792, 4, 1u, "phLibNfc_HciDataSendProc:Invalid data received!");
        a2 = 255;
        goto LABEL_28;
      }

      sub_297E4E0B0(1, a1 + 9792, 4, 4u, "phLibNfc_HciDataSendProc:Received valid data");
      *(a1 + 680) = *a3;
      *(a1 + 682) = *(a3 + 2);
      if (!*(a1 + 688) || !*(a1 + 684))
      {
        a2 = 0;
        goto LABEL_28;
      }

      if (*(a3 + 4) <= *(a1 + 684))
      {
        phOsalNfc_MemCopy();
        a2 = 0;
        *(a1 + 684) = *(a3 + 4);
        goto LABEL_28;
      }

      v7 = a1 + 9792;
      goto LABEL_18;
    }

    if (a2 != 217)
    {
      *(a1 + 682) = 0;
      *(a1 + 680) = 0;
      *(a1 + 684) = 0;
      sub_297E4E0B0(1, a1 + 9792, 4, 4u, "phLibNfc_HciRawDataSendProc:Failed Status received from lower layer");
      goto LABEL_28;
    }

    if (a3)
    {
      *(a1 + 680) = *a3;
      *(a1 + 682) = *(a3 + 2);
      if (!*(a1 + 688) || !*(a1 + 684))
      {
        goto LABEL_27;
      }

      if (*(a3 + 4) > *(a1 + 684))
      {
        v7 = a1 + 9792;
LABEL_18:
        sub_297E4E0B0(1, v7, 4, 1u, "phLibNfc_HciRawDataSendProc:Could not copy entire received data");
        a2 = 8;
LABEL_28:
        v10 = *(v6 + 840);
        if (v10)
        {
          v11 = v10 == 0xFFFFFFFFFFFFLL;
        }

        else
        {
          v11 = 1;
        }

        if (!v11)
        {
          phOsalNfc_Timer_Stop();
          phOsalNfc_Timer_Delete();
          *(v6 + 840) = 0xFFFFFFFFFFFFLL;
          *(v6 + 852) = 10000;
          sub_297E4E0B0(1, a1 + 9792, 4, 4u, "phLibNfc_HciDataSendProc:SE TxRx Timer Deleted");
        }

        sub_297E4E0B0(1, a1 + 9792, 4, 4u, "phHciNfc_UnRegisterCmdRspEvt:APDU Pipe");
        LODWORD(v15) = *(a1 + 658);
        BYTE4(v15) = *(a1 + 656);
        sub_297E9DCD0(v6, &v15, sub_297EE93FC);
        *(v6 + 953) = 0;
LABEL_34:
        sub_297EEDE84(a1, *(*(a1 + 560) + 8), a2, &v16);
        if (*(a1 + 2992) != 1 && *(a1 + 2987) != 1 || !sub_297E5AA54(*(a1 + 3000), 20))
        {
          goto LABEL_41;
        }

        if (sub_297E5A99C(*(a1 + 9784), &v14))
        {
          v12 = "phLibNfc_HciRawDataSendProc-Fialed to retrieve bIgnoreWkUpRet from Util module";
        }

        else
        {
          if (v14)
          {
            goto LABEL_41;
          }

          v12 = "phLibNfc_HciRawDataSendProc-Fialed to De-Assert Wake Up Line";
        }

        sub_297E4E0B0(1, a1 + 9792, 4, 1u, v12);
LABEL_41:
        v8 = sub_297E4F450(*(a1 + 9784), v16, a2, 0, 0);
        goto LABEL_42;
      }

      phOsalNfc_MemCopy();
      v9 = *(a3 + 4);
    }

    else
    {
      *(a1 + 682) = 1;
      *(a1 + 680) = 8193;
      if (*(a1 + 684) < 2u)
      {
LABEL_27:
        a2 = 217;
        goto LABEL_28;
      }

      **(a1 + 688) = *(v6 + 1232);
      *(*(a1 + 688) + 1) = *(v6 + 1236);
      v9 = 2;
    }

    *(a1 + 684) = v9;
    goto LABEL_27;
  }

  sub_297E4E0B0(2, 0, 4, 4u, "phLibNfc_HciRawDataSendProc:Invalid Lib Context");
  v8 = 1;
LABEL_42:
  sub_297E4DFAC(2, a1, 4, 5u, "phLibNfc_HciRawDataSendProc");
  return v8;
}

uint64_t sub_297EE9FF8(uint64_t a1, unsigned __int8 *a2)
{
  v10 = 0;
  sub_297E4E1B4(2, a1, 4, 5u, "phLibNfc_VerifyHciRawInfo");
  if (!a1)
  {
    v5 = 255;
    goto LABEL_20;
  }

  if (!a2 || (v4 = sub_297E9F088(*(a1 + 512), *(a2 + 10), &v10), v4 == 147) && ((v4 = sub_297E9DBD0(*(a1 + 512), 240, &v10), v10 != 25) || *a2 != 25))
  {
    v5 = 1;
    goto LABEL_20;
  }

  v5 = v4;
  if (!v4)
  {
    v6 = v10;
    if (v10 == 255)
    {
      v6 = *a2;
      v10 = *a2;
    }

    v5 = 1;
    if (v6 <= 0x29 && ((1 << v6) & 0x38002000000) != 0 && a2[2] == 1)
    {
      v7 = a2[1];
      if (v7 == 65)
      {
        v5 = 147;
        if (v6 == 40 || *(a2 + 10) == 2)
        {
          goto LABEL_20;
        }

        goto LABEL_24;
      }

      if (v7 != 81 || !*(a2 + 1) || (v8 = *(a2 + 1)) == 0)
      {
        sub_297E4E0B0(1, a1 + 9792, 4, 1u, "phLibNfc_VerifyHciRawInfo: Event not supported");
        goto LABEL_20;
      }

      if (*v8 - 1 <= 2)
      {
LABEL_24:
        v5 = 0;
        if (*(a2 + 4) <= 0x7CFu)
        {
          *(a2 + 4) = 2000;
        }
      }
    }
  }

LABEL_20:
  sub_297E4DFAC(2, a1, 4, 5u, "phLibNfc_VerifyHciRawInfo");
  return v5;
}

uint64_t sub_297EEA1A8(uint64_t a1, uint64_t a2, uint64_t a3, int a4)
{
  sub_297E4E1B4(2, a1, 4, 5u, "phLibNfc_HciResponseTimerRestartRequestNtfHandler");
  if (!a1 || a4)
  {
    goto LABEL_7;
  }

  v6 = 0;
  v7 = 0;
  do
  {
    v8 = *(&unk_2A18BDDC0 + 14 * v7 + 2);
    if (v6)
    {
      break;
    }

    v6 = 1;
    v7 = 1;
  }

  while (v8 != a1);
  if (v8 != a1)
  {
    goto LABEL_7;
  }

  v10 = *(a1 + 512);
  if (!v10)
  {
    goto LABEL_7;
  }

  v11 = 0;
  v12 = 0;
  do
  {
    v13 = *(&unk_2A18BDDC0 + 14 * v12 + 13);
    if (v11)
    {
      break;
    }

    v11 = 1;
    v12 = 1;
  }

  while (v13 != v10);
  if (v13 != v10 || *(a1 + 492) != 1 || *(a1 + 2992) != 1 || *(a1 + 2994))
  {
    goto LABEL_7;
  }

  v14 = *(a1 + 756);
  if (v14 < 0x7D0 && (v14 = *(a1 + 640), v14 >> 4 <= 0x270))
  {
    v16 = (v10 + 840);
    v15 = (v10 + 852);
  }

  else
  {
    v15 = (v10 + 852);
    *(v10 + 852) = v14;
    v16 = (v10 + 840);
    if (v14 > 0xAFC7)
    {
      goto LABEL_24;
    }
  }

  *v15 = 45000;
LABEL_24:
  v17 = *v16;
  if (!*v16 || v17 == 0xFFFFFFFFFFFFLL)
  {
    v18 = "phLibNfc_HciResponseTimerRestartRequestNtfHandler: SE Transceive Timer Already deleted";
LABEL_29:
    sub_297E4E0B0(1, a1 + 9792, 4, 1u, v18);
    goto LABEL_7;
  }

  sub_297EFD338(*(v10 + 956), v17);
  if (phOsalNfc_Timer_Start())
  {
    phOsalNfc_Timer_Delete();
    *(v10 + 840) = 0xFFFFFFFFFFFFLL;
    v18 = "phLibNfc_HciResponseTimerRestartRequestNtfHandler: SE TxRx Timer Re-Start Failed";
    goto LABEL_29;
  }

  sub_297E50EBC(1, a1 + 9792, 4, 4u, "phLibNfc_HciResponseTimerRestartRequestNtfHandler: eSe Transceive Timer restarted,Timeout");
LABEL_7:

  return sub_297E4DFAC(2, a1, 4, 5u, "phLibNfc_HciResponseTimerRestartRequestNtfHandler");
}

uint64_t sub_297EEA3AC(uint64_t a1)
{
  v9 = 0;
  v8 = 0;
  sub_297E4E1B4(2, a1, 4, 5u, "phLibNfc_HciRawDataSend");
  if (!a1 || (v2 = *(a1 + 512)) == 0)
  {
    v4 = 1;
    goto LABEL_13;
  }

  if (!sub_297E9F088(*(a1 + 512), *(a1 + 696), &v8) && v8 != 255)
  {
    *(a1 + 656) = v8;
  }

  *(v2 + 1236) = 0;
  *(v2 + 1232) = 0;
  *(a1 + 754) = 0;
  sub_297E4E0B0(1, a1 + 9792, 4, 4u, "phHciNfc_RegisterForResponses:APDU Pipe");
  LODWORD(v9) = *(a1 + 658);
  BYTE4(v9) = *(a1 + 656);
  sub_297E9D594(v2, &v9, sub_297EE93FC, v2);
  v3 = sub_297EE95D0(*(a1 + 512), *(a1 + 656), *(a1 + 657), *(a1 + 658), *(a1 + 660), *(a1 + 664), sub_297E5BA84);
  if (v3 != 13)
  {
    v4 = v3;
    v5 = "phLibNfc_HciRawDataSend: Failed Status from Lower Layer";
    goto LABEL_12;
  }

  *(v2 + 184) = sub_297EEF078;
  *(v2 + 192) = a1;
  *(v2 + 852) = *(a1 + 672);
  if (!sub_297EEED20(v2))
  {
    v7 = *(a1 + 512);
    if (!phOsalNfc_Timer_Start())
    {
      goto LABEL_9;
    }

    v4 = phOsalNfc_Timer_Delete();
    *(v7 + 840) = 0xFFFFFFFFFFFFLL;
    v5 = "phLibNfc_HciRawDataSend: SE TxRx Timer Start Failed";
LABEL_12:
    sub_297E4E0B0(1, a1 + 9792, 4, 1u, v5);
    goto LABEL_13;
  }

  sub_297E50DB0(1, a1 + 9792, 4, 4u, "phLibNfc_HciRawDataSend: SE TxRx Timer Started with Timeout");
LABEL_9:
  v4 = 13;
LABEL_13:
  sub_297E4DFAC(2, a1, 4, 5u, "phLibNfc_HciRawDataSend");
  return v4;
}

uint64_t sub_297EEA5A4(uint64_t a1, int a2, unsigned __int8 *a3)
{
  v31 = 0;
  memset(v30, 0, sizeof(v30));
  sub_297E4E1B4(2, a1, 7, 5u, "phHciNfc_ProcessEventsOnApduPipe");
  if (!a1)
  {
    return sub_297E4DFAC(2, a1, 7, 5u, "phHciNfc_ProcessEventsOnApduPipe");
  }

  if (a2)
  {
    return sub_297E4DFAC(2, a1, 7, 5u, "phHciNfc_ProcessEventsOnApduPipe");
  }

  if (!a3)
  {
    return sub_297E4DFAC(2, a1, 7, 5u, "phHciNfc_ProcessEventsOnApduPipe");
  }

  v6 = *(a1 + 960);
  if (!v6)
  {
    return sub_297E4DFAC(2, a1, 7, 5u, "phHciNfc_ProcessEventsOnApduPipe");
  }

  v7 = a3[1];
  if (v7 > 0x10)
  {
    if (v7 != 17)
    {
      if (v7 != 18)
      {
        return sub_297E4DFAC(2, a1, 7, 5u, "phHciNfc_ProcessEventsOnApduPipe");
      }

      v10 = *(v6 + 6360);
      if (*(v6 + 2992) == 1)
      {
        if (!v10)
        {
          return sub_297E4DFAC(2, a1, 7, 5u, "phHciNfc_ProcessEventsOnApduPipe");
        }

        v11 = *(a1 + 8);
        if ((v11 - 255) <= 0xFFFFFF02)
        {
          v11 = *(v6 + 656);
        }

        if (*(a3 + 2) || v11 != *a3)
        {
          v8 = "phHciNfc_ProcessEventsOnApduPipe: Unexpected, SE Soft Reset or Event ATR, PipeID";
          v9 = v6 + 9792;
          goto LABEL_58;
        }

        v12 = v6 + 9792;
      }

      else
      {
        if (!v10 || *(a3 + 2))
        {
          return sub_297E4DFAC(2, a1, 7, 5u, "phHciNfc_ProcessEventsOnApduPipe");
        }

        v12 = v6 + 9792;
      }

      sub_297E4E0B0(1, v12, 4, 4u, "phHciNfc_ProcessEventsOnApduPipe:Soft Reset response received");
      goto LABEL_38;
    }

    sub_297E4E0B0(1, v6 + 9792, 4, 4u, "phHciNfc_ProcessEventsOnApduPipe:EVENT_WTX_REQ received");
    if (*(v6 + 6392))
    {
      v14 = *(a3 + 1);
      if (v14)
      {
        v15 = sub_297EEAB9C(*(v6 + 9792), *v14);
        if (v15 <= 0x7CF)
        {
          v16 = v15 + 400;
        }

        else
        {
          v16 = v15;
        }
      }

      else
      {
        v16 = 2000;
      }

      v20 = 0;
      *(v6 + 704) = v16;
      *(a1 + 852) = v16;
      while (*(v6 + v20 + 400) != 1)
      {
        v20 += 16;
        if (v20 == 80)
        {
          v21 = 0;
          goto LABEL_48;
        }
      }

      v21 = *(v6 + v20 + 392);
LABEL_48:
      sub_297E54734(1, v6 + 9792, 7, 4u, "ProcessEventsOnApduPipe :EvtWtxCb[WTX Ntf]");
      (*(v6 + 6392))(*(v6 + 9784), *(v6 + 6400), v21, v6 + 704, 74);
      v22 = *(a1 + 840);
      if (!v22 || v22 == 0xFFFFFFFFFFFFLL)
      {
        sub_297E4E0B0(1, v6 + 9792, 4, 1u, "phHciNfc_ProcessEventsOnApduPipe: SE Transceive Timer Already deleted");
        v23 = "phHciNfc_ProcessEventsOnApduPipe: SE Transceive user provided timeout should be incremented";
LABEL_53:
        sub_297E4E0B0(1, v6 + 9792, 4, 1u, v23);
        return sub_297E4DFAC(2, a1, 7, 5u, "phHciNfc_ProcessEventsOnApduPipe");
      }

      sub_297EFD338(*(a1 + 956), v22);
      if (phOsalNfc_Timer_Start())
      {
        phOsalNfc_Timer_Delete();
        *(a1 + 840) = 0xFFFFFFFFFFFFLL;
        v23 = "phLibNfc_HciDataSend: SE TxRx Timer Start Failed";
        goto LABEL_53;
      }

      v19 = "phHciNfc_ProcessEventsOnApduPipe:                                        eSe Transceive Timer restarted with WTX timeout value";
    }

    else
    {
      v19 = "phHciNfc_ProcessEventsOnApduPipe:WTX Call Back not defined by App";
    }

    sub_297E4E0B0(1, v6 + 9792, 4, 4u, v19);
    return sub_297E4DFAC(2, a1, 7, 5u, "phHciNfc_ProcessEventsOnApduPipe");
  }

  if (v7 == 2)
  {
    if (*(v6 + 2992) != 1)
    {
      sub_297E50DB0(1, v6 + 9792, 4, 1u, "phHciNfc_ProcessEventsOnApduPipe: Ignoring eSE OS Reset, PipeID");
      return sub_297E4DFAC(2, a1, 7, 5u, "phHciNfc_ProcessEventsOnApduPipe");
    }

    v13 = *(a1 + 8);
    if (*(v6 + 6360))
    {
      if (v13 == 1)
      {
        v13 = *(a1 + 1232);
      }

      if ((v13 - 255) <= 0xFFFFFF01)
      {
        v13 = *(v6 + 656);
      }

      if (v13 == *a3)
      {
        if (*(v6 + 657) == 65)
        {
          sub_297E50DB0(1, v6 + 9792, 4, 4u, "phHciNfc_ProcessEventsOnApduPipe: OS Reset Success,PipeID");
          goto LABEL_38;
        }

        v25 = "phHciNfc_ProcessEventsOnApduPipe: OS Reset Received,PipeID";
        v26 = v6 + 9792;
LABEL_65:
        sub_297E50DB0(1, v26, 4, 2u, v25);
        sub_297F08EEC(*(v6 + 3088), 1);
        v17 = v6;
        v18 = 217;
        goto LABEL_66;
      }

      if (*(v6 + 6696))
      {
        sub_297E50DB0(1, v6 + 9792, 4, 2u, "phHciNfc_ProcessEventsOnApduPipe: SE OS Reset (SE-raw transceive), PipeID");
        phOsalNfc_SetMemory();
        LODWORD(v31) = sub_297E9EFAC(*(v6 + 9792), *a3);
        v27 = "ProcessEventsOnApduPipe:pSeListenerNtfCb[OS Reset Ntf during Warm reset]";
LABEL_72:
        sub_297E54734(1, v6 + 9792, 4, 4u, v27);
        (*(v6 + 6696))(*(v6 + 9784), *(v6 + 6704), 27, *(v6 + 440), v30, 217);
        return sub_297E4DFAC(2, a1, 7, 5u, "phHciNfc_ProcessEventsOnApduPipe");
      }

      v29 = "phHciNfc_ProcessEventsOnApduPipe:Droping as SE NTF Handler is not registered, PipeID";
    }

    else
    {
      v24 = *a3;
      if (*(v6 + 6344) && v13 == v24)
      {
        v25 = "phHciNfc_ProcessEventsOnApduPipe: OS Reset (SE-transceive),PipeID";
        v26 = v6 + 9792;
        goto LABEL_65;
      }

      if (*(v6 + 6536) && v13 == v24)
      {
        sub_297E50DB0(1, v6 + 9792, 4, 2u, "phHciNfc_ProcessEventsOnApduPipe: OS Reset (SE Get ATR),PipeID");
        sub_297F08EEC(*(v6 + 3088), 1);
        sub_297EED6C0(v6, 217, a3);
        return sub_297E4DFAC(2, a1, 7, 5u, "phHciNfc_ProcessEventsOnApduPipe");
      }

      if (*(v6 + 6696))
      {
        sub_297E50DB0(1, v6 + 9792, 4, 2u, "phHciNfc_ProcessEventsOnApduPipe: Independent SE OS Reset, PipeID");
        phOsalNfc_SetMemory();
        LODWORD(v31) = sub_297E9EFAC(*(v6 + 9792), *a3);
        v27 = "ProcessEventsOnApduPipe:pSeListenerNtfCb[OS Reset Ntf]";
        goto LABEL_72;
      }

      v29 = "phHciNfc_ProcessEventsOnApduPipe: Ignoring SE OS Reset, PipeID";
    }

    sub_297E50DB0(1, v6 + 9792, 4, 2u, v29);
    return sub_297E4DFAC(2, a1, 7, 5u, "phHciNfc_ProcessEventsOnApduPipe");
  }

  if (v7 == 16)
  {
    if (*(v6 + 6360) && (*(v6 + 657) | 0x10) == 0x51)
    {
      sub_297E50DB0(1, v6 + 9792, 4, 1u, "phHciNfc_ProcessEventsOnApduPipe: Undesired Data Packet received, PipeID");
      sub_297E50DB0(1, v6 + 9792, 4, 1u, "pReceivedParams->bIns");
      sub_297E50DB0(1, v6 + 9792, 4, 1u, "pReceivedParams->bMsgType");
      v8 = "pReceivedParams->wLen";
      v9 = v6 + 9792;
LABEL_58:
      sub_297E50DB0(1, v9, 4, 1u, v8);
      v17 = v6;
      v18 = 255;
      goto LABEL_66;
    }

LABEL_38:
    v17 = v6;
    v18 = 0;
LABEL_66:
    sub_297EE9744(v17, v18, a3);
  }

  return sub_297E4DFAC(2, a1, 7, 5u, "phHciNfc_ProcessEventsOnApduPipe");
}

uint64_t sub_297EEAB9C(int a1, unsigned int a2)
{
  v5 = a1;
  sub_297E4E1B4(1, &v5, 7, 5u, "phHciNfc_CalcWtxTimeout");
  v3 = ((sub_297EEAC50(v5, 2u, a2 >> 4) / 10.0) * 1000.0);
  sub_297E50DB0(1, &v5, 7, 4u, "phHciNfc_CalcWtxTimeout:WTX Timeout");
  sub_297E4DFAC(1, &v5, 7, 5u, "phHciNfc_CalcWtxTimeout");
  return v3;
}

uint64_t sub_297EEAC50(int a1, unsigned int a2, int a3)
{
  v13 = a1;
  v5 = 1;
  sub_297E4E1B4(1, &v13, 7, 5u, "phHciNfc_CalcPower");
  if (a3)
  {
    v6 = vdupq_n_s32(a3 - 1);
    v7 = vdupq_n_s32(a2);
    v8.i64[0] = 0x100000001;
    v8.i64[1] = 0x100000001;
    v9 = 4;
    do
    {
      v10 = v8;
      v8 = vmulq_s32(v8, v7);
      v9 -= 4;
    }

    while (((a3 + 3) & 0x1FFFC) + v9 != 4);
    v11 = vbslq_s8(vcgtq_u32(vorrq_s8(vdupq_n_s32(-v9), xmmword_297F137F0), v6), v10, v8);
    *v11.i8 = vmul_s32(*v11.i8, *&vextq_s8(v11, v11, 8uLL));
    v5 = (v11.i32[0] * v11.i32[1]);
  }

  sub_297E4DFAC(1, &v13, 7, 5u, "phHciNfc_CalcPower");
  return v5;
}

uint64_t sub_297EEAD30(unsigned __int8 *a1, int a2)
{
  v6 = 0;
  sub_297E4E1B4(2, a1, 7, 5u, "phHciNfc_RegisterForEvents");
  if (a1[816] == a2 || a1[820] == a2 || a1[824] == a2 || a1[828] == a2)
  {
    sub_297E4E0B0(1, (a1 + 956), 4, 4u, "phHciNfc_RegisterForEvents:APDU Pipe");
    LODWORD(v6) = 1;
    BYTE4(v6) = a2;
    v4 = sub_297EEA5A4;
  }

  else
  {
    if (a1[818] != a2 && a1[822] != a2 && a1[826] != a2 && a1[830] != a2 && !a1[832] && !a1[834])
    {
      sub_297E50EBC(1, (a1 + 956), 7, 1u, "phHciNfc_RegisterForEvents:No registrations done for PipeId");
      return sub_297E4DFAC(2, a1, 7, 5u, "phHciNfc_RegisterForEvents");
    }

    sub_297E4E0B0(1, (a1 + 956), 4, 4u, "phHciNfc_RegisterForEvents:Connectivity Pipe");
    LODWORD(v6) = 1;
    BYTE4(v6) = a2;
    v4 = sub_297E9EB60;
  }

  sub_297E9D594(a1, &v6, v4, a1);
  return sub_297E4DFAC(2, a1, 7, 5u, "phHciNfc_RegisterForEvents");
}

uint64_t sub_297EEAEB4(uint64_t a1)
{
  sub_297E4E1B4(2, a1, 7, 5u, "phLibNfc_PrintHciCritInfo");
  if (a1)
  {
    sub_297E50EBC(1, a1 + 956, 4, 1u, "HCI pHciContext->bResendPacket =");
    sub_297E50EBC(1, a1 + 956, 4, 1u, "HCI Resend Info,bMsgType =");
    sub_297E50EBC(1, a1 + 956, 4, 1u, "HCI Resend Info,bPipeId =");
    sub_297E50EBC(1, a1 + 956, 4, 1u, "HCI Resend Info,bIns =");
    sub_297E50EBC(1, a1 + 956, 4, 1u, "HCI aSEPipeList[0].bGateId =");
    sub_297E50EBC(1, a1 + 956, 4, 1u, "HCI aSEPipeList[0].bPipeId =");
    sub_297E50EBC(1, a1 + 956, 4, 1u, "HCI aSEPipeList[1].bGateId =");
    sub_297E50EBC(1, a1 + 956, 4, 1u, "HCI aSEPipeList[1].bPipeId =");
  }

  return sub_297E4DFAC(2, a1, 7, 5u, "phLibNfc_PrintHciCritInfo");
}

uint64_t sub_297EEB01C(_BYTE *a1, uint64_t a2, _DWORD *a3)
{
  sub_297E4E1B4(2, a1, 4, 5u, "phLibNfc_SysEoOpNtfHandler");
  if (a1)
  {
    if (a3)
    {
      sub_297E4E0B0(1, (a1 + 9792), 4, 4u, "phLibNfc_SysEoOpNtfHandler: Received EoOP");
      if (*a3)
      {
        if (a3[2])
        {
          sub_297E4E1B4(2, a1, 4, 5u, "phLibNfc_UpdateEoOP");
          v5 = **a3;
          if (v5 == 192)
          {
            sub_297E4E0B0(1, (a1 + 9792), 4, 4u, "RXD eSE EOP");
            a1[552] = 1;
            if (!*(*a3 + 1))
            {
              sub_297E50EBC(1, (a1 + 9792), 4, 4u, "P61 EVT ATR wait status");
            }
          }

          else if (v5 == 129 && a1[2984] == 1)
          {
            sub_297E4E0B0(1, (a1 + 9792), 4, 4u, "RXD SE2 EOP");
            a1[554] = 1;
          }

          else if (v5 == 2)
          {
            sub_297E4E0B0(1, (a1 + 9792), 4, 4u, "RXD UICC EOP");
            a1[553] = 1;
          }

          else
          {
            sub_297E4E0B0(1, (a1 + 9792), 4, 4u, "phLibNfc_UpdateEoOP: Invalid EoOP received");
          }

          sub_297E4DFAC(2, a1, 4, 5u, "phLibNfc_UpdateEoOP");
          sub_297EAA214(a1);
        }
      }
    }
  }

  return sub_297E4DFAC(2, a1, 4, 5u, "phLibNfc_SysEoOpNtfHandler");
}

uint64_t sub_297EEB1EC(uint64_t a1, unsigned __int8 *a2, uint64_t a3)
{
  v18 = 0;
  sub_297E4E1B4(2, a1, 7, 5u, "phHciNfc_ReceiveHandler");
  if (!a1 || !a2)
  {
    v9 = "phHciNfc_ReceiveHandler:Failed, Invalid Context or Rxd Params";
    v10 = 2;
    v11 = a1;
LABEL_8:
    sub_297E4E0B0(v10, v11, 7, 1u, v9);
    return sub_297E4DFAC(2, a1, 7, 5u, "phHciNfc_ReceiveHandler");
  }

  v6 = a2[2];
  if (v6 >= 3)
  {
    sub_297E4E0B0(1, a1 + 956, 7, 1u, "phHciNfc_ReceiveHandler:Failed, Invalid HCI bMsgType received");
    v9 = "phHciNfc_ReceiveHandler:Failed, List Empty";
    v11 = a1 + 956;
    v10 = 1;
    goto LABEL_8;
  }

  v7 = qword_297F13800[a2[2]];
  v8 = a1 + v7;
  if (sub_297E9E1B8(a1, a1 + v7, (0x60C06u >> (8 * (v6 & 0x1F))) & 0xE, *a2, &v18) || (v13 = v18, v14 = v8 + 24 * v18, (v15 = *(v14 + 16)) == 0))
  {
    sub_297E4E0B0(1, a1 + 956, 7, 2u, "phHciNfc_ReceiveHandler:Failed, Invalid Pipe Id rxd");
  }

  else
  {
    v16 = *(v14 + 8);
    if (a2[2] == 2)
    {
      *v14 = 0;
      v17 = v8 + 24 * v13;
      *(v17 + 1) = 0;
      *(v17 + 8) = 0;
      *(v17 + 16) = 0;
    }

    v15(v16, a3, a2);
  }

  return sub_297E4DFAC(2, a1, 7, 5u, "phHciNfc_ReceiveHandler");
}

uint64_t sub_297EEB364(unsigned __int8 *a1, uint64_t a2)
{
  sub_297E4E1B4(2, a1, 4, 5u, "phLibNfc_SetPowerModeSeq");
  if (!a1)
  {
    goto LABEL_6;
  }

  v4 = 0;
  v5 = 0;
  do
  {
    v6 = *(&unk_2A18BDDC0 + 14 * v5 + 2);
    if (v4)
    {
      break;
    }

    v4 = 1;
    v5 = 1;
  }

  while (v6 != a1);
  if (v6 == a1)
  {
    if (!a2)
    {
      v8 = a1[2];
      v9 = (v8 & a1[1]);
      a1[1] &= v8;
      if (*a1 == v9)
      {
        a2 = 0;
        a1[2] = 1;
      }

      else if ((a1[2985] == 1 || a1[2986] == 1 || a1[2992] == 1) && *(a1 + 799) == 2 && v9 == 1 && (a1[6076] & 3) == 3)
      {
        a2 = 0;
      }

      else
      {
        a2 = sub_297F05B7C(*(a1 + 386), v9, sub_297E5BA84, a1);
        if (a2 == 13)
        {
          v10 = *(*(a1 + 70) + 8);
          if (v10 == 1)
          {
            a1[552] = 0;
          }

          else if (a1[2984] == 1)
          {
            if (v10 == 2)
            {
              a1[553] = 0;
            }

            else if (v10 == 7)
            {
              a1[554] = 0;
            }
          }

          a2 = 13;
        }
      }
    }
  }

  else
  {
LABEL_6:
    sub_297E4E0B0(2, a1, 4, 1u, "Invalid Context passed from lower layer!");
  }

  sub_297E4DFAC(2, a1, 4, 5u, "phLibNfc_SetPowerModeSeq");
  return a2;
}

uint64_t sub_297EEB510(_BYTE *a1, uint64_t a2)
{
  sub_297E4E1B4(2, a1, 4, 5u, "phLibNfc_SetPowerModeSeqEnd");
  if (!a1)
  {
    goto LABEL_6;
  }

  v4 = 0;
  v5 = 0;
  do
  {
    v6 = *(&unk_2A18BDDC0 + 14 * v5 + 2);
    if (v4)
    {
      break;
    }

    v4 = 1;
    v5 = 1;
  }

  while (v6 != a1);
  if (v6 == a1)
  {
    if (a2)
    {
      sub_297E4E0B0(1, (a1 + 9792), 4, 1u, "Set Power Mode Failed!");
    }

    else
    {
      sub_297E4E0B0(1, (a1 + 9792), 4, 4u, "Set Power Mode success");
      v8 = a1[1];
      *a1 = v8;
      a1[1] = v8 == 0;
      a1[2] = 1;
    }
  }

  else
  {
LABEL_6:
    a2 = 255;
  }

  sub_297E4DFAC(2, a1, 4, 5u, "phLibNfc_SetPowerModeSeqEnd");
  return a2;
}

uint64_t sub_297EEB61C(uint64_t a1, uint64_t a2)
{
  sub_297E4E1B4(2, a1, 4, 5u, "phLibNfc_SetModeSeq");
  if (!a1)
  {
    goto LABEL_6;
  }

  v4 = 0;
  v5 = 0;
  do
  {
    v6 = *(&unk_2A18BDDC0 + 14 * v5 + 2);
    if (v4)
    {
      break;
    }

    v4 = 1;
    v5 = 1;
  }

  while (v6 != a1);
  if (v6 == a1)
  {
    if (!a2)
    {
      *(a1 + 2929) = 0;
      *(a1 + 592) = 0;
      a2 = sub_297F058B8(*(a1 + 3088), **(a1 + 560), *(a1 + 568), sub_297E5BA84, a1);
      if (a2 == 13)
      {
        v8 = *(*(a1 + 560) + 8);
        if (v8 == 1)
        {
          *(a1 + 552) = 0;
        }

        else if (*(a1 + 2984) == 1)
        {
          if (v8 == 2)
          {
            *(a1 + 553) = 0;
          }

          else if (v8 == 7)
          {
            *(a1 + 554) = 0;
          }
        }

        a2 = 13;
      }
    }
  }

  else
  {
LABEL_6:
    sub_297E4E0B0(2, a1, 4, 1u, "Invalid Context passed from lower layer!");
  }

  sub_297E4DFAC(2, a1, 4, 5u, "phLibNfc_SetModeSeq");
  return a2;
}

uint64_t sub_297EEB75C(uint64_t a1, uint64_t a2, unsigned __int8 *a3)
{
  sub_297E4E1B4(2, a1, 4, 5u, "phLibNfc_SetModeSeqEnd");
  if (a1)
  {
    v6 = 0;
    v7 = 0;
    do
    {
      v8 = *(&unk_2A18BDDC0 + 14 * v7 + 2);
      if (v6)
      {
        break;
      }

      v6 = 1;
      v7 = 1;
    }

    while (v8 != a1);
    if (v8 == a1)
    {
      if (a2)
      {
        sub_297E4E0B0(1, a1 + 9792, 4, 1u, "Set Se Mode Failed!");
        goto LABEL_8;
      }

      sub_297E4E0B0(1, a1 + 9792, 4, 4u, "Set Se Mode success");
      if (a3)
      {
        v10 = *a3;
      }

      else
      {
        v10 = 0;
      }

      v11 = *(a1 + 568);
      if (!v11)
      {
        a2 = 0;
        *(a1 + 576) = v10;
        goto LABEL_8;
      }

      if (v11 != 1)
      {
LABEL_22:
        a2 = 255;
        goto LABEL_8;
      }

      v12 = *(*(a1 + 560) + 8);
      if (v12 > 4)
      {
        if (v12 == 5)
        {
          a2 = 0;
          goto LABEL_8;
        }

        if (v12 == 7)
        {
          a2 = 0;
          *(a1 + 554) = 1;
          *(a1 + 367) = 1;
          goto LABEL_8;
        }

        goto LABEL_22;
      }

      if (v12 != 1)
      {
        if (v12 == 2)
        {
          a2 = 0;
          *(a1 + 553) = 1;
          *(a1 + 365) = 1;
          goto LABEL_8;
        }

        goto LABEL_22;
      }

      v13 = *(a1 + 512);
      if (v13)
      {
        sub_297E99A28(v13);
      }

      a2 = 0;
      *(a1 + 552) = 1;
      *(a1 + 366) = 1;
    }
  }

LABEL_8:
  sub_297E4DFAC(2, a1, 4, 5u, "phLibNfc_SetModeSeqEnd");
  return a2;
}

uint64_t sub_297EEB8F8(uint64_t a1, uint64_t a2)
{
  v9 = 208;
  sub_297E4E1B4(2, a1, 4, 5u, "phLibNfc_SetSeModeSeqComplete");
  if (a1)
  {
    if (a2)
    {
      v4 = *(a1 + 584);
      if (v4 && v4 != 0xFFFFFFFFFFFFLL)
      {
        sub_297E4E0B0(1, a1 + 9792, 4, 4u, "SeModeSet/DelayForSE Ntf timer is still active, stopping and deleting the same");
        phOsalNfc_Timer_Stop();
        phOsalNfc_Timer_Delete();
        *(a1 + 584) = 0xFFFFFFFFFFFFLL;
      }

      if (a2 == 67 || a2 == 81 || a2 == 143)
      {
        a2 = a2;
      }

      else
      {
        a2 = 255;
      }

      v7 = *(a1 + 560);
    }

    else
    {
      v7 = *(a1 + 560);
      *(v7 + 12) = *(a1 + 572);
    }

    *(a1 + 745) = 0;
    sub_297EEDE84(a1, *(v7 + 8), a2, &v9);
    a2 = sub_297E4F450(*(a1 + 9784), v9, a2, 0, 0);
  }

  else
  {
    sub_297E4E0B0(2, 0, 4, 1u, "Invalid input parameter!");
  }

  sub_297E4DFAC(2, a1, 4, 5u, "phLibNfc_SetSeModeSeqComplete");
  return a2;
}

uint64_t sub_297EEBA4C(uint64_t a1, uint64_t a2)
{
  sub_297E4E1B4(2, a1, 4, 5u, "phLibNfc_eSePowerCycleSetModeSeqEnd");
  if (a1)
  {
    v4 = 0;
    v5 = 0;
    do
    {
      v6 = *(&unk_2A18BDDC0 + 14 * v5 + 2);
      if (v4)
      {
        break;
      }

      v4 = 1;
      v5 = 1;
    }

    while (v6 != a1);
    if (v6 == a1)
    {
      if (a2)
      {
        sub_297E4E0B0(1, a1 + 9792, 4, 1u, "Set Se Mode Failed!");
      }

      else
      {
        sub_297E4E0B0(1, a1 + 9792, 4, 4u, "Set Se Mode success");
        *(a1 + 1) = 0;
        *(a1 + 568) = 1;
        *(a1 + 2929) = 0;
        *(a1 + 592) = 4000;
      }
    }
  }

  sub_297E4DFAC(2, a1, 4, 5u, "phLibNfc_eSePowerCycleSetModeSeqEnd");
  return a2;
}

uint64_t sub_297EEBB4C(uint64_t a1, uint64_t a2)
{
  sub_297E4E1B4(2, a1, 4, 5u, "phLibNfc_eSePowerCycleSeqComplete");
  if (a1)
  {
    if (a2 != 143 && a2 != 81)
    {
      if (a2)
      {
        sub_297E4E0B0(1, a1 + 9792, 4, 1u, "eSE Power Cycle Sequence Failed !!");
        a2 = 66;
      }

      else
      {
        *(a1 + 452) = 2;
        *(a1 + 366) = 3;
        sub_297EE196C(*(a1 + 9784), 1u, 3);
        sub_297E4E0B0(1, a1 + 9792, 4, 4u, "eSE Power Cycle Sequence Success !!");
        a2 = 65;
      }
    }

    sub_297EE1720(*(a1 + 9784), 0);
    sub_297EECB48(a1, a2);
    *(a1 + 555) = 0;
    if (a2 == 66)
    {
      *(a1 + 452) = 4;
    }
  }

  else
  {
    sub_297E4E0B0(2, 0, 4, 1u, "Invalid input parameter!");
  }

  sub_297E4DFAC(2, a1, 4, 5u, "phLibNfc_eSePowerCycleSeqComplete");
  return a2;
}

uint64_t sub_297EEBC7C(uint64_t a1)
{
  v5 = 0;
  sub_297E4E1B4(2, a1, 4, 5u, "phLibNfc_SeSvddCtrlCmd");
  if (a1)
  {
    if (*(a1 + 2984) == 1 || *(a1 + 2985) == 1 || *(a1 + 2986) == 1 || *(a1 + 2992) == 1)
    {
      LOBYTE(v5) = *(a1 + 371);
      v2 = 1;
    }

    else
    {
      v2 = 0;
    }

    *(&v5 | v2) = *(a1 + 528);
    v3 = sub_297EBBDF0(*(a1 + 3088), &v5, v2 + 1, sub_297E5BA84, a1);
  }

  else
  {
    v3 = 1;
    sub_297E4E0B0(2, 0, 4, 1u, "Invalid Libnc context !!");
  }

  sub_297E4DFAC(2, a1, 4, 5u, "phLibNfc_SeSvddCtrlCmd");
  return v3;
}

uint64_t sub_297EEBD8C(uint64_t a1, uint64_t a2)
{
  sub_297E4E1B4(2, a1, 4, 5u, "phLibNfc_SeSvddCtrlResp");
  if (a2)
  {
    sub_297E4E0B0(2, a1, 4, 1u, "SVDD Config Failed");
  }

  else
  {
    sub_297E4E0B0(2, a1, 4, 4u, "SVDD Config Success");
  }

  sub_297E4DFAC(2, a1, 4, 5u, "phLibNfc_SeSvddCtrlResp");
  return a2;
}

uint64_t sub_297EEBE2C(uint64_t a1, uint64_t a2)
{
  sub_297E4E1B4(2, a1, 4, 5u, "phLibNfc_SeSvddCtrlSeqComplete");
  if (a1)
  {
    if (a2)
    {
      sub_297E4E0B0(1, a1 + 9792, 4, 1u, "phLibNfc_SeSvddCtrlSeqComplete: Se SVDDD failed");
      v4 = 119;
    }

    else
    {
      sub_297E4E0B0(1, a1 + 9792, 4, 4u, "phLibNfc_SeSvddCtrlSeqComplete: Se SVDDD Success");
      v4 = 118;
    }

    v5 = sub_297E4F450(*(a1 + 9784), v4, a2, 0, 0);
  }

  else
  {
    v5 = 1;
  }

  sub_297E4DFAC(2, a1, 4, 5u, "phLibNfc_SeSvddCtrlSeqComplete");
  return v5;
}

uint64_t sub_297EEBEFC(uint64_t a1, uint64_t a2)
{
  sub_297E4E1B4(2, a1, 4, 5u, "phLibNfc_VirtualeSeRecoveryComp");
  if (a1)
  {
    if (a2)
    {
      v4 = 66;
    }

    else
    {
      if (*(a1 + 748) == 2)
      {
        v5 = 3;
      }

      else
      {
        v5 = 2;
      }

      *(a1 + 452) = 2 * (*(a1 + 748) == 2);
      sub_297EE196C(*(a1 + 9784), 1u, v5);
      *(a1 + 366) = 1;
      v4 = 65;
    }

    if (*(a1 + 6536) || *(a1 + 6344) || *(a1 + 6360))
    {
      sub_297EECB48(a1, v4);
    }

    else
    {
      v7 = *(a1 + 6696);
      if (v7)
      {
        v8 = *(a1 + 6704);
        sub_297E54734(1, a1 + 9792, 4, 4u, "phLibNfc_VirtualeSeRecoveryComp :EvtESERemoved");
        v7(*(a1 + 9784), v8, 16, *(a1 + 440), 0, v4);
      }
    }

    if (a2)
    {
      *(a1 + 452) = 4;
    }

    *(a1 + 555) = 0;
    sub_297EE1720(*(a1 + 9784), 0);
  }

  sub_297E4DFAC(2, a1, 4, 5u, "phLibNfc_VirtualeSeRecoveryComp");
  return a2;
}

uint64_t sub_297EEC03C(uint64_t a1)
{
  sub_297E4E1B4(2, a1, 4, 5u, "phLibNfc_SeGetRfCfg");
  if (a1)
  {
    v2 = sub_297E60AC0(*(a1 + 3088), a1 + 3608, sub_297E5BA84, a1);
  }

  else
  {
    v2 = 0;
  }

  sub_297E4DFAC(2, a1, 4, 5u, "phLibNfc_SeGetRfCfg");
  return v2;
}

uint64_t sub_297EEC0C8(uint64_t a1, uint64_t a2)
{
  sub_297E4E1B4(2, a1, 4, 5u, "phLibNfc_SeGetRfCfgProc");
  if (!a1)
  {
    sub_297E4E0B0(2, 0, 4, 1u, "phLibNfc_SeGetRfCfgProc: Invalid input parameter");
  }

  sub_297E4DFAC(2, a1, 4, 5u, "phLibNfc_SeGetRfCfgProc");
  return a2;
}

uint64_t sub_297EEC148(uint64_t a1, uint64_t a2, uint64_t a3)
{
  sub_297E4E1B4(2, a1, 4, 5u, "phLibNfc_SeGetRfCfgSeqComplete");
  if (!a1)
  {
    sub_297E4E0B0(2, 0, 4, 1u, "Invalid LibNfc context passed by lower layer");
    sub_297EFC3D8(255);
    phOsalNfc_RaiseException();
    goto LABEL_5;
  }

  v6 = a2;
  if (a2)
  {
    goto LABEL_3;
  }

  if (!a3)
  {
    v6 = 0;
    a2 = 255;
    goto LABEL_3;
  }

  if ((*(a3 + 5) & 0x20) == 0)
  {
LABEL_8:
    a2 = 0;
    v6 = 255;
LABEL_3:
    sub_297E4F450(*(a1 + 9784), 119, v6, 0, 0);
    goto LABEL_5;
  }

  if ((*(a3 + 1144) & 0x200) != 0)
  {
    v8 = (a3 + 1177);
  }

  else if ((*(a3 + 1144) & 0x400) != 0)
  {
    v8 = (a3 + 1246);
  }

  else
  {
    if ((*(a3 + 1144) & 0x100) == 0)
    {
      goto LABEL_8;
    }

    v8 = (a3 + 1315);
  }

  Memory_Typed = phOsalNfc_GetMemory_Typed();
  v10 = Memory_Typed;
  *Memory_Typed = *v8;
  Memory_Typed[1] = v8[1];
  Memory_Typed[2] = v8[2];
  for (i = 3; i != 13; ++i)
  {
    Memory_Typed[i] = v8[i];
  }

  Memory_Typed[13] = v8[13];
  Memory_Typed[14] = v8[14];
  Memory_Typed[15] = v8[15];
  Memory_Typed[16] = v8[16];
  for (j = 17; j != 32; ++j)
  {
    Memory_Typed[j] = v8[j];
  }

  Memory_Typed[32] = v8[32];
  Memory_Typed[33] = v8[33];
  Memory_Typed[34] = v8[34];
  Memory_Typed[35] = v8[35];
  Memory_Typed[36] = v8[36];
  Memory_Typed[37] = v8[37];
  Memory_Typed[38] = v8[38];
  Memory_Typed[39] = v8[39];
  Memory_Typed[40] = v8[40];
  for (k = 41; k != 45; ++k)
  {
    Memory_Typed[k] = v8[k];
  }

  Memory_Typed[45] = v8[45];
  for (m = 46; m != 50; ++m)
  {
    Memory_Typed[m] = v8[m];
  }

  Memory_Typed[50] = v8[50];
  for (n = 51; n != 66; ++n)
  {
    Memory_Typed[n] = v8[n];
  }

  Memory_Typed[66] = v8[66];
  Memory_Typed[67] = v8[67];
  Memory_Typed[68] = v8[68];
  v19 = *(a1 + 9784);
  sub_297E4E1B4(0, &v19, 4, 5u, "phLibNfc_DisplaySeRFParameters");
  sub_297E4E0B0(0, &v19, 4, 4u, "RF Technology A parameters");
  sub_297E50DB0(0, &v19, 4, 4u, "PipeStatusCeA ");
  sub_297E50DB0(0, &v19, 4, 4u, "bModeCeA ");
  sub_297E50DB0(0, &v19, 4, 4u, "bUidRegSizeCeA ");
  for (ii = 3; ii != 13; ++ii)
  {
    sub_297E50DB0(0, &v19, 4, 4u, "aUidRegCeA ");
  }

  sub_297E50DB0(0, &v19, 4, 4u, "bSakCeA ");
  sub_297E50DB0(0, &v19, 4, 4u, "aATQACeA[0] ");
  sub_297E50DB0(0, &v19, 4, 4u, "aATQACeA[1] ");
  sub_297E50DB0(0, &v19, 4, 4u, "bApplicationDataSizeCeA ");
  for (jj = 17; jj != 32; ++jj)
  {
    sub_297E50DB0(0, &v19, 4, 4u, "aApplicationDataCeA ");
  }

  sub_297E50DB0(0, &v19, 4, 4u, "bFWI_SFGICeA ");
  sub_297E50DB0(0, &v19, 4, 4u, "bCidSupportCeA ");
  sub_297E50DB0(0, &v19, 4, 4u, "bCltSupportCeA ");
  sub_297E50DB0(0, &v19, 4, 4u, "aDataRateMaxCeA[0] ");
  sub_297E50DB0(0, &v19, 4, 4u, "aDataRateMaxCeA[1] ");
  sub_297E50DB0(0, &v19, 4, 4u, "aDataRateMaxCeA[2] ");
  sub_297E4E0B0(0, &v19, 4, 4u, "RF Technology B parameters");
  sub_297E50DB0(0, &v19, 4, 4u, "bPipeStatusCeB ");
  sub_297E50DB0(0, &v19, 4, 4u, "bModeCeB ");
  sub_297E50DB0(0, &v19, 4, 4u, "aPupiRegCeB[0] ");
  sub_297E50DB0(0, &v19, 4, 4u, "aPupiRegCeB[1] ");
  sub_297E50DB0(0, &v19, 4, 4u, "aPupiRegCeB[2] ");
  sub_297E50DB0(0, &v19, 4, 4u, "aPupiRegCeB[3] ");
  sub_297E50DB0(0, &v19, 4, 4u, "bAfiCeB ");
  sub_297E50DB0(0, &v19, 4, 4u, "aATQBCeB[0] ");
  sub_297E50DB0(0, &v19, 4, 4u, "aATQBCeB[1] ");
  sub_297E50DB0(0, &v19, 4, 4u, "aATQBCeB[2] ");
  sub_297E50DB0(0, &v19, 4, 4u, "aATQBCeB[3] ");
  sub_297E50DB0(0, &v19, 4, 4u, "bHighLayerRspSizeCeB ");
  for (kk = 51; kk != 66; ++kk)
  {
    sub_297E50DB0(0, &v19, 4, 4u, "aHighLayerRspCeB ");
  }

  sub_297E50DB0(0, &v19, 4, 4u, "aDataRateMaxCeB[0] ");
  sub_297E50DB0(0, &v19, 4, 4u, "aDataRateMaxCeB[1] ");
  sub_297E50DB0(0, &v19, 4, 4u, "aDataRateMaxCeB[2] ");
  sub_297E4DFAC(0, &v19, 4, 5u, "phLibNfc_DisplaySeRFParameters");
  sub_297E4F450(*(a1 + 9784), 118, 0, v10, 0);
  phOsalNfc_FreeMemory();
  a2 = 0;
LABEL_5:
  sub_297E4DFAC(2, a1, 4, 5u, "phLibNfc_SeGetRfCfgSeqComplete");
  return a2;
}

uint64_t sub_297EEC87C(uint64_t a1, unsigned __int8 *a2)
{
  sub_297E4E1B4(2, a1, 4, 5u, "phLibNfc_UpdateNfceeDiscTechnType");
  if (a2)
  {
    v4 = *a2;
    if (*a2)
    {
      v5 = 0;
      for (i = 0; i < v4; ++i)
      {
        v7 = *(a2 + 1);
        if (*(v7 + v5) <= 1u)
        {
          v8 = *(v7 + v5 + 4);
          if (v8 <= 127)
          {
            if (!v8)
            {
              v9 = 1;
              v10 = "phLibNfc_UpdateNfceeDiscTechnType: poll Nfc-A tech supported";
              goto LABEL_16;
            }

            if (v8 == 1)
            {
              v9 = 2;
              v10 = "phLibNfc_UpdateNfceeDiscTechnType: poll Nfc-B tech supported";
              goto LABEL_16;
            }
          }

          else
          {
            switch(v8)
            {
              case 128:
                v9 = 1;
                v10 = "phLibNfc_UpdateNfceeDiscTechnType: Listen Nfc-A tech supported";
                goto LABEL_16;
              case 130:
                v9 = 4;
                v10 = "phLibNfc_UpdateNfceeDiscTechnType: Listen Nfc-F tech supported";
                goto LABEL_16;
              case 129:
                v9 = 2;
                v10 = "phLibNfc_UpdateNfceeDiscTechnType: Listen Nfc-B tech supported";
LABEL_16:
                *(a1 + 361) |= v9;
                sub_297E4E0B0(1, a1 + 9792, 4, 4u, v10);
                v4 = *a2;
                break;
            }
          }
        }

        v5 += 12;
      }
    }
  }

  return sub_297E4DFAC(2, a1, 4, 5u, "phLibNfc_UpdateNfceeDiscTechnType");
}

uint64_t sub_297EEC9F4(void *a1)
{
  sub_297E4E1B4(2, a1, 4, 5u, "phLibNfc_MuxCheckAbortTrans");
  if (a1[841] || a1[843])
  {
    sub_297F08EEC(a1[386], 3);
    v2 = a1[841];
    if (v2)
    {
      v3 = a1[842];
      a1[841] = 0;
      a1[842] = 0;
      sub_297E4D930(1, (a1 + 1224), 4, 31, "phLibNfc_MuxCheckAbortTrans");
      v2(a1[1223], v3, 255);
    }

    else
    {
      v4 = a1[843];
      if (v4)
      {
        v5 = a1[844];
        a1[843] = 0;
        a1[844] = 0;
        sub_297E4D930(1, (a1 + 1224), 4, 30, "phLibNfc_MuxCheckAbortTrans");
        v4(a1[1223], v5, 0, 255);
      }
    }
  }

  if (a1[793] || a1[817] || a1[795])
  {
    sub_297F08EEC(a1[386], 3);
  }

  return sub_297E4DFAC(2, a1, 4, 5u, "phLibNfc_MuxCheckAbortTrans");
}

uint64_t sub_297EECB48(void *a1, uint64_t a2)
{
  sub_297E4E1B4(2, a1, 4, 5u, "phHciNfc_ProcessSERemovedNtf");
  if (a1[817])
  {
    sub_297EED6C0(a1, a2, 0);
    if (a2 != 65)
    {
      goto LABEL_10;
    }

    v4 = "Rxd eSE Removed Ntf, eSE Get ATR CB Invoked";
  }

  else if (a1[793] || a1[795])
  {
    sub_297EE9744(a1, a2, 0);
    if (a2 != 65)
    {
      goto LABEL_10;
    }

    v4 = "phLibNfc_UpdateSeInfo:Rxd eSE Removed Ntf, eSE Transceive CB Invoked";
  }

  else
  {
    v4 = "phLibNfc_UpdateSeInfo:No Upper layer Invoked";
  }

  sub_297E4E0B0(1, (a1 + 1224), 4, 4u, v4);
LABEL_10:

  return sub_297E4DFAC(2, a1, 4, 5u, "phHciNfc_ProcessSERemovedNtf");
}

uint64_t sub_297EECC30(uint64_t a1, unsigned int a2)
{
  sub_297E4E1B4(2, a1, 4, 5u, "phLibNfc_LaunchChildDeviceSequence");
  if (a1 && a2)
  {
    if (*(a1 + a2 + 363) == 2)
    {
      goto LABEL_10;
    }

    v4 = a1 + 16 * a2;
    if (!*(v4 + 392))
    {
      goto LABEL_10;
    }

    *(a1 + 592) = 100;
    *(a1 + 2929) = 10;
    *(a1 + 370) = 1;
    *(a1 + 560) = v4 + 392;
    v5 = *(v4 + 400);
    if (v5 == 2)
    {
      v6 = off_2A1A932E0;
      v7 = "UICC Sequence";
    }

    else if (v5 == 7)
    {
      v6 = off_2A1A93320;
      v7 = "SE2 Sequence";
    }

    else
    {
      v6 = off_2A1A93360;
      v7 = "eSE Sequence";
    }

    sub_297E4E0B0(1, a1 + 9792, 4, 4u, v7);
    *(a1 + 2960) = v6;
    *(a1 + 2952) = 0;
    *(a1 + 2954) = 0;
    v13 = *v6;
    if (*v6)
    {
      LOBYTE(v13) = 0;
      v14 = (v6 + 2);
      do
      {
        LOBYTE(v13) = v13 + 1;
        v15 = *v14;
        v14 += 2;
      }

      while (v15);
    }

    *(a1 + 2953) = v13;
    if (sub_297E5588C(a1, 0, 0) == 13)
    {
      sub_297E50DB0(1, a1 + 9792, 4, 4u, "phLibNfc_LaunchChildDeviceSequence:Started for SE Type");
      v11 = 13;
      goto LABEL_11;
    }

    v8 = "phLibNfc_LaunchChildDeviceSequence:Could not start!";
    v10 = a1 + 9792;
    v9 = 1;
  }

  else
  {
    v8 = "phLibNfc_LaunchChildDeviceSequence:Invalid LibContext or HCI Network ID Passed";
    v9 = 2;
    v10 = a1;
  }

  sub_297E4E0B0(v9, v10, 4, 1u, v8);
LABEL_10:
  v11 = 255;
LABEL_11:
  sub_297E4DFAC(2, a1, 4, 5u, "phLibNfc_LaunchChildDeviceSequence");
  return v11;
}

uint64_t sub_297EECDE4(uint64_t a1, uint64_t a2)
{
  v10 = 0;
  memset(v9, 0, sizeof(v9));
  result = sub_297E687D8(2, a2, a1, 4, 4u, "phLibNfc_eSEVasNtfTimeOutCb");
  if (a2)
  {
    v4 = 0;
    v5 = 0;
    do
    {
      v6 = *(&unk_2A18BDDC0 + 14 * v5 + 2);
      if (v4)
      {
        break;
      }

      v4 = 1;
      v5 = 1;
    }

    while (v6 != a2);
    if (v6 == a2)
    {
      phOsalNfc_SetMemory();
      v7 = *(a2 + 768);
      if (v7 && v7 != 0xFFFFFFFFFFFFLL)
      {
        phOsalNfc_Timer_Delete();
        *(a2 + 768) = 0xFFFFFFFFFFFFLL;
      }

      LODWORD(v9[0]) = *(a2 + 1408);
      *(a2 + 1408) = 6;
      phOsalNfc_SetMemory();
      result = phOsalNfc_SetMemory();
      *(a2 + 1449) = 0;
      v8 = *(a2 + 6696);
      if (v8)
      {
        return v8(*(a2 + 9784), *(a2 + 6704), 24, *(a2 + 440), v9, 0);
      }
    }
  }

  return result;
}

uint64_t sub_297EECF10(uint64_t a1, uint64_t a2, uint64_t a3)
{
  sub_297E4E1B4(2, a1, 4, 5u, "phLibNfc_GetSeRmvdReasonCode");
  if (a2)
  {
    v6 = *(a3 + 24);
    if (*(a3 + 24))
    {
      v7 = (a3 + 52);
      while (*(v7 - 5) != 160 || *(v7 - 4) != 1)
      {
        v7 += 24;
        if (!--v6)
        {
          goto LABEL_9;
        }
      }

      *a2 = *(v7 - 1);
      *(a2 + 4) = *v7;
    }
  }

LABEL_9:

  return sub_297E4DFAC(2, a1, 4, 5u, "phLibNfc_GetSeRmvdReasonCode");
}

uint64_t sub_297EECFCC(uint64_t a1, int a2, int a3, int *a4)
{
  sub_297E4E1B4(2, a1, 4, 5u, "phLibNfc_FindSetModeTransEvent");
  if (!a4)
  {
    goto LABEL_24;
  }

  if (a3 > 1)
  {
    if (a3 == 2)
    {
      if (a2 == 1)
      {
        v10 = 141;
      }

      else
      {
        if (a2 != 7)
        {
          goto LABEL_24;
        }

        v10 = 156;
      }

      goto LABEL_23;
    }

    if (a3 == 4)
    {
      if (a2 != 1)
      {
        goto LABEL_24;
      }

      v10 = 138;
      goto LABEL_23;
    }

    goto LABEL_12;
  }

  if (a3)
  {
    if (a3 == 1)
    {
      v8 = a2 - 1;
      if (a2 - 1) < 7 && ((0x53u >> v8))
      {
        v9 = &unk_297F13828;
LABEL_18:
        v10 = v9[v8];
        goto LABEL_23;
      }

      goto LABEL_24;
    }

LABEL_12:
    if (a2 == 1 && a3 == 3)
    {
      v10 = 139;
LABEL_23:
      *a4 = v10;
      goto LABEL_24;
    }

    goto LABEL_24;
  }

  v8 = a2 - 1;
  if (a2 - 1) < 7 && ((0x53u >> v8))
  {
    v9 = &unk_297F13844;
    goto LABEL_18;
  }

LABEL_24:

  return sub_297E4DFAC(2, a1, 4, 5u, "phLibNfc_FindSetModeTransEvent");
}

uint64_t sub_297EED100(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v18 = -1;
  v17 = 0;
  memset(v16, 0, sizeof(v16));
  sub_297E4E1B4(2, a1, 7, 5u, "phLibNfc_OsResetRcvd_AdminPipe");
  if (!a1)
  {
    return sub_297E4DFAC(2, a1, 7, 5u, "phLibNfc_OsResetRcvd_AdminPipe");
  }

  v5 = *(a1 + 960);
  if (!v5)
  {
    return sub_297E4DFAC(2, a1, 7, 5u, "phLibNfc_OsResetRcvd_AdminPipe");
  }

  if (!a3)
  {
    v7 = "phLibNfc_OsResetRcvd_AdminPipe: pReceivedParams Invalid";
    goto LABEL_12;
  }

  if (!*(a3 + 8) || !*(a3 + 4))
  {
    v7 = "phLibNfc_OsResetRcvd_AdminPipe: SE OS Reset, Pipe Info error";
LABEL_12:
    sub_297E4E0B0(1, v5 + 9792, 4, 1u, v7);
    return sub_297E4DFAC(2, a1, 7, 5u, "phLibNfc_OsResetRcvd_AdminPipe");
  }

  if (*(v5 + 2992) != 1)
  {
    sub_297E50DB0(1, v5 + 9792, 4, 2u, "phLibNfc_OsResetRcvd_AdminPipe: Ignoring eSE OS Reset, PipeID on Admin Pipe");
    return sub_297E4DFAC(2, a1, 7, 5u, "phLibNfc_OsResetRcvd_AdminPipe");
  }

  v6 = *(a1 + 1235) == 1;
  if (*(v5 + 6360))
  {
    sub_297E9F088(a1, *(v5 + 696), &v18);
    if (v18 == 255)
    {
      v18 = *(v5 + 656);
    }

    goto LABEL_20;
  }

  if (*(v5 + 6344))
  {
    v9 = *(v5 + 644);
    v10 = a1;
LABEL_19:
    sub_297E9F088(v10, v9, &v18);
    goto LABEL_20;
  }

  if (*(v5 + 6536))
  {
    v10 = a1;
    v9 = 0;
    goto LABEL_19;
  }

LABEL_20:
  v11 = v18;
  *(a1 + 1232) = v18;
  v12 = **(a3 + 8);
  v13 = a1 + v6;
  *(v13 + 1233) = v12;
  if (*(a3 + 4) < 2u)
  {
    v14 = -1;
  }

  else
  {
    v14 = *(*(a3 + 8) + 1);
  }

  *(a1 + 1236) = v14;
  if (v12 == v11 && (*(v5 + 6344) || *(v5 + 6360) || *(v5 + 6536)))
  {
    sub_297E4E0B0(1, v5 + 9792, 4, 4u, "Aborting HCI Data");
    sub_297F08EEC(*(v5 + 3088), 1);
    v12 = *(v13 + 1233);
    v15 = v18;
  }

  else
  {
    v15 = 255;
    v18 = -1;
  }

  if (v12 != v15)
  {
    if (*(v5 + 6696))
    {
      phOsalNfc_SetMemory();
      LODWORD(v16[0]) = sub_297E9EFAC(*(v5 + 9792), *(v13 + 1233));
      BYTE4(v16[0]) = *(a1 + 1236);
      sub_297E50DB0(1, v5 + 9792, 4, 4u, "phLibNfc_OsResetRcvd_AdminPipe:Invoke SE-listener Notification callback with OS Reset, Pipe ID");
      sub_297E54734(1, v5 + 9792, 4, 4u, "OsResetRcvd_AdminPipe:pSeListenerNtfCb[OS Reset Ntf]");
      (*(v5 + 6696))(*(v5 + 9784), *(v5 + 6704), 27, *(v5 + 440), v16, 217);
    }

    else if (*(v5 + 6104) && *(v5 + 6568))
    {
      LODWORD(v16[0]) = sub_297E9EFAC(*(v5 + 9792), v12);
      BYTE4(v16[0]) = *(a1 + 1236);
      sub_297E50DB0(1, v5 + 9792, 4, 4u, "Invoke General Ntf CB with Os Reset (during Init), PipeID");
      sub_297E54734(1, v5 + 9792, 4, 4u, "OsResetRcvd_AdminPipe:pGenericNtfCb[OS Reset Ntf During Init]");
      (*(v5 + 6568))(*(v5 + 9784), *(v5 + 6576), 217, v16);
    }
  }

  sub_297E50DB0(1, v5 + 9792, 4, 4u, "Sending through admin pipe, os_reset_Acknowledgement for OS with pipeid");
  sub_297E966F4(1, v5 + 9792, 4, 4u, "Sending through admin pipe, os_reset_Acknowledgement for OS @");
  if (sub_297EE95D0(a1, *a3, 12, 1, 1, v13 + 1233, sub_297E5BA84) == 13)
  {
    *(a1 + 1235) = 1;
    *(a1 + 184) = sub_297EED56C;
    *(a1 + 192) = v5;
  }

  else
  {
    sub_297E50DB0(1, v5 + 9792, 4, 2u, "Sending os_reset_Acknowledgement failed for OS with pipeid");
    if (*(a1 + 1232) == *(v13 + 1233))
    {
      if (*(v5 + 6344) || *(v5 + 6360))
      {
        sub_297E4E0B0(1, v5 + 9792, 4, 4u, "phLibNfc_OsResetRcvd_AdminPipe:Invoke Transceive Response callback");
        sub_297EE9744(v5, 217, 0);
      }

      else if (*(v5 + 6536))
      {
        sub_297E4E0B0(1, v5 + 9792, 4, 4u, "phLibNfc_OsResetRcvd_AdminPipe:Invoke Get Atr Response callback");
        sub_297EED6C0(v5, 217, 0);
      }
    }
  }

  return sub_297E4DFAC(2, a1, 7, 5u, "phLibNfc_OsResetRcvd_AdminPipe");
}

uint64_t sub_297EED56C(void *a1, int a2)
{
  sub_297E4E1B4(2, a1, 4, 5u, "phLibNfc_SeOsResetRsp_SendCb");
  if (a1)
  {
    v4 = a1[64];
    if (v4)
    {
      sub_297E966F4(1, (a1 + 1224), 4, 4u, "phLibNfc_SeOsResetRsp_SendCb rcvd pdata @");
      *(v4 + 1235) = 0;
      if (a2)
      {
        sub_297E4E0B0(1, (a1 + 1224), 4, 1u, "phLibNfc_SeOsResetRsp_SendCb: Call back received with status != success");
      }

      else
      {
        v6 = *(v4 + 16);
        if (v6 && *(v4 + 1232) == *v6)
        {
          if (a1[793] || a1[795])
          {
            sub_297E4E0B0(1, (a1 + 1224), 4, 4u, "phLibNfc_SeOsResetRsp_SendCb:Invoke Transceive Response Callback");
            sub_297EE9744(a1, 217, 0);
          }

          else if (a1[817])
          {
            sub_297E4E0B0(1, (a1 + 1224), 4, 4u, "phLibNfc_SeOsResetRsp_SendCb:Invoke Get Atr Response callback");
            sub_297EED6C0(a1, 217, 0);
          }
        }
      }
    }
  }

  return sub_297E4DFAC(2, a1, 4, 5u, "phLibNfc_SeOsResetRsp_SendCb");
}

uint64_t sub_297EED6C0(void *a1, uint64_t a2, uint64_t a3)
{
  sub_297E4E1B4(2, a1, 4, 5u, "phLibNfc_eSE_GetAtrProc");
  if (!a1)
  {
    sub_297E4E0B0(2, 0, 4, 1u, "phLibNfc_eSE_GetAtrProc: LibNfc context invalid");
    goto LABEL_42;
  }

  v6 = a1[64];
  if (!v6)
  {
    goto LABEL_13;
  }

  v7 = *(v6 + 856);
  if (v7)
  {
    v8 = v7 == 0xFFFFFFFFFFFFLL;
  }

  else
  {
    v8 = 1;
  }

  if (!v8)
  {
    phOsalNfc_Timer_Stop();
    phOsalNfc_Timer_Delete();
    *(v6 + 856) = 0xFFFFFFFFFFFFLL;
    sub_297E4E0B0(1, (a1 + 1224), 4, 4u, "phLibNfc_HciDataSendProc:SE Get Atr Timer Deleted");
  }

  v9 = *(v6 + 872);
  if (!v9 || v9 == 0xFFFFFFFFFFFFLL)
  {
LABEL_13:
    if (a2)
    {
      goto LABEL_22;
    }
  }

  else
  {
    phOsalNfc_Timer_Stop();
    phOsalNfc_Timer_Delete();
    sub_297E4E0B0(1, (a1 + 1224), 4, 4u, "phHciNfc_HciCmdRspCb : HCI Command Response timer deleted successfully");
    *(v6 + 884) = 2000;
    *(v6 + 872) = 0xFFFFFFFFFFFFLL;
    if (a2)
    {
      goto LABEL_22;
    }
  }

  if (a3)
  {
    if (a1[64])
    {
      v11 = sub_297EE9B6C(a1);
      if (v11 == 111)
      {
        v12 = a1[75];
        if (v12 && (v13 = *(a3 + 4), *(v12 + 8) >= v13))
        {
          *(v12 + 8) = v13;
          phOsalNfc_MemCopy();
          sub_297E4E0B0(1, (a1 + 1224), 4, 4u, "phLibNfc_eSE_GetAtrProc: Successful");
          a2 = 0;
          v14 = 165;
        }

        else
        {
          sub_297E4E0B0(1, (a1 + 1224), 4, 1u, "phLibNfc_eSE_GetAtrProc: Invalid Input Buffer Length");
          v14 = 166;
          a2 = 3;
        }
      }

      else
      {
        a2 = v11;
        sub_297E4E0B0(1, (a1 + 1224), 4, 1u, "phLibNfc_eSE_GetAtrProc:eSE Get Atr received data after Timeout!!!");
        v14 = 166;
      }

      goto LABEL_41;
    }

    v17 = "phLibNfc_eSE_GetAtrProc: Invalid Hci context received!";
    goto LABEL_36;
  }

LABEL_22:
  v15 = a1[75];
  if (v15)
  {
    *(v15 + 8) = 0;
  }

  v14 = 166;
  if (a2 <= 216)
  {
    if ((a2 - 65) < 2 || a2 == 214)
    {
      goto LABEL_41;
    }

    goto LABEL_35;
  }

  if (a2 != 218)
  {
    if (a2 == 217)
    {
      if (v15)
      {
        if (v6)
        {
          v16 = *(v6 + 1236);
        }

        else
        {
          v16 = -1;
        }

        *(v15 + 12) = v16;
      }

      a2 = 217;
      goto LABEL_41;
    }

LABEL_35:
    v17 = "phLibNfc_eSE_GetAtrProc: Received FAILED status or pInfo Invalid";
LABEL_36:
    sub_297E4E0B0(1, (a1 + 1224), 4, 1u, v17);
    v14 = 166;
    a2 = 255;
  }

LABEL_41:
  sub_297E4F450(a1[1223], v14, a2, 0, 0);
LABEL_42:

  return sub_297E4DFAC(2, a1, 4, 5u, "phLibNfc_eSE_GetAtrProc");
}

uint64_t sub_297EED988(uint64_t a1)
{
  sub_297E4E1B4(2, a1, 4, 5u, "phLibNfc_HciEvtEndofOptRcvd");
  if (a1)
  {
    sub_297E4E0B0(1, a1 + 9792, 4, 4u, "HciEvtEndofOptRcvd: Evt End Of Operation received");
    *(a1 + 552) = 1;
    v2 = *(a1 + 584);
    if (v2 && v2 != 0xFFFFFFFFFFFFLL && *(a1 + 592) == 4000)
    {
      phOsalNfc_Timer_Stop();
      sub_297E687D8(1, a1 + 9792, v2, 4, 4u, "phLibNfc_HciEvtEndofOptRcvd");
      phOsalNfc_Timer_Delete();
      *(a1 + 584) = 0xFFFFFFFFFFFFLL;
      *(a1 + 592) = 0;
      *(a1 + 2929) = 0;
      sub_297E4E0B0(1, a1 + 9792, 4, 4u, "HciEvtEndofOptRcvd: SE Mode Set timer, stopping the timer");
      sub_297E5588C(a1, 0, 0);
    }

    else
    {
      sub_297E4E0B0(1, a1 + 9792, 4, 2u, "HciEvtEndofOptRcvd: Fast ntf received and dropped");
    }
  }

  return sub_297E4DFAC(2, a1, 4, 5u, "phLibNfc_HciEvtEndofOptRcvd");
}

uint64_t sub_297EEDAE0(uint64_t a1, uint64_t a2, uint64_t a3, int a4, uint64_t a5)
{
  sub_297E4E1B4(2, a1, 7, 5u, "phLibNfc_InvokeSeNtfCallback");
  if (!a1)
  {
    goto LABEL_15;
  }

  v10 = *(a1 + 960);
  if (!v10)
  {
    goto LABEL_15;
  }

  v11 = 0;
  v12 = 0;
  v13 = 5;
  v14 = v10 + 392;
  do
  {
    if (*(a1 + 832) == a4 && *(v14 + 8) == 2)
    {
      v15 = (v10 + 392 + 16 * v11);
LABEL_10:
      v12 = *v15;
      goto LABEL_11;
    }

    if (*(a1 + 816) == a4 || *(a1 + 818) == a4)
    {
      v15 = v14;
      if (*(v14 + 8) == 1)
      {
        goto LABEL_10;
      }
    }

LABEL_11:
    ++v11;
    v14 += 16;
    --v13;
  }

  while (v13);
  if (a2 && *(v10 + 6696))
  {
    sub_297E54734(1, v10 + 9792, 4, 4u, "InvokeSeNtfCallback :HCI Events");
    (*(v10 + 6696))(*(v10 + 9784), *(v10 + 6704), a5, v12, a2, a3);
  }

LABEL_15:

  return sub_297E4DFAC(2, a1, 7, 5u, "phLibNfc_InvokeSeNtfCallback");
}

uint64_t sub_297EEDC34(uint64_t a1, int a2, unsigned __int8 *a3)
{
  sub_297E4E1B4(2, a1, 4, 5u, "phLibNfc_VerifyRxdRtngTable");
  if (a1 && !a2 && a3)
  {
    if (*a3 != *(a1 + 360))
    {
      goto LABEL_28;
    }

    v6 = *(a1 + 376);
    sub_297E4E1B4(2, a1, 4, 5u, "VerifyRoutingTable");
    if (!v6)
    {
      goto LABEL_24;
    }

    v7 = 0;
    LODWORD(v8) = *a3;
LABEL_7:
    if (v8)
    {
      v9 = 0;
      v10 = v6;
      do
      {
        v11 = *(a3 + 1) + 32 * v7;
        v12 = *v11;
        if (*v11 == *v10)
        {
          if (v12 == 2)
          {
            if (*(v11 + 28) == *(v10 + 28) && !phOsalNfc_MemCompare())
            {
              v13 = *(a3 + 1) + 32 * v7;
              if (*(v13 + 4) == *(v10 + 4) && ((*(v10 + 8) ^ *(v13 + 8)) & 7) == 0)
              {
                LODWORD(v8) = *a3;
LABEL_23:
                if (++v7 >= v8)
                {
LABEL_24:
                  sub_297E4DFAC(2, a1, 4, 5u, "VerifyRoutingTable");
                  sub_297E4E0B0(1, a1 + 9792, 4, 4u, "phLibNfc_VerifyRxdRtngTable: Routing Table configuration Success");
                  goto LABEL_26;
                }

                goto LABEL_7;
              }
            }
          }

          else if (v12 <= 1 && *(v11 + 12) == *(v10 + 12) && *(v11 + 4) == *(v10 + 4) && ((*(v10 + 8) ^ *(v11 + 8)) & 7) == 0)
          {
            goto LABEL_23;
          }
        }

        ++v9;
        v8 = *a3;
        v10 += 32;
      }

      while (v9 < v8);
    }

    sub_297E4DFAC(2, a1, 4, 5u, "VerifyRoutingTable");
    sub_297E4E0B0(1, a1 + 9792, 4, 1u, "phLibNfc_VerifyRxdRtngTable: Routing Table configuration failed");
LABEL_28:
    v14 = 255;
  }

  else
  {
    sub_297E4E0B0(2, 0, 4, 1u, "phLibNfc_VerifyRxdRtngTable: Routing Table configuration failed");
LABEL_26:
    v14 = 0;
  }

  sub_297E4DFAC(2, a1, 4, 5u, "phLibNfc_VerifyRxdRtngTable");
  return v14;
}

uint64_t sub_297EEDE84(uint64_t a1, int a2, int a3, int *a4)
{
  sub_297E4E1B4(2, a1, 4, 5u, "phLibNfc_FindSetModeIntEvent");
  if (a4)
  {
    *a4 = 208;
    if (a2 > 4)
    {
      if (a2 == 5)
      {
        v8 = a3 == 0;
        v9 = 161;
      }

      else
      {
        if (a2 != 7)
        {
          goto LABEL_14;
        }

        v8 = a3 == 0;
        v9 = 173;
      }
    }

    else if (a2 == 1)
    {
      v8 = a3 == 0;
      v9 = 165;
    }

    else
    {
      if (a2 != 2)
      {
        goto LABEL_14;
      }

      v8 = a3 == 0;
      v9 = 169;
    }

    if (!v8)
    {
      ++v9;
    }

    *a4 = v9;
  }

LABEL_14:

  return sub_297E4DFAC(2, a1, 4, 5u, "phLibNfc_FindSetModeIntEvent");
}

uint64_t sub_297EEDF64(uint64_t a1, uint64_t a2, uint64_t a3)
{
  sub_297E4E1B4(2, a1, 4, 5u, "phLibNfc_InitCompleteWdTimer");
  if (!a1)
  {
    goto LABEL_6;
  }

  v4 = 0;
  v5 = 0;
  do
  {
    v6 = *(&unk_2A18BDDC0 + 14 * v5 + 2);
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
    v7 = 1;
    sub_297E4E0B0(2, a1, 4, 1u, "Invalid LibNfc context passed");
    goto LABEL_16;
  }

  v8 = phOsalNfc_Timer_Create();
  if (v8)
  {
    v9 = v8 == 0xFFFFFFFFFFFFLL;
  }

  else
  {
    v9 = 1;
  }

  if (v9)
  {
    sub_297E4E0B0(1, a1 + 9792, 4, 1u, "Failed to create Timer!");
LABEL_15:
    v7 = 255;
    goto LABEL_16;
  }

  v10 = v8;
  if (phOsalNfc_Timer_Start())
  {
    phOsalNfc_Timer_Delete();
    *(a1 + 2936) = 0;
    goto LABEL_15;
  }

  sub_297E687D8(1, a1 + 9792, v10, 4, 4u, "phLibNfc_InitCompleteWdTimer");
  v7 = 0;
  if (*(a1 + 9792))
  {
    v13 = &gphNfc_DebugInfo_Sec;
  }

  else
  {
    v13 = &gphNfc_DebugInfo_Prim;
  }

  v13[1] &= ~0x2000000u;
  *(a1 + 2936) = v10;
  *(a1 + 2928) = 8;
LABEL_16:
  sub_297E4DFAC(2, a1, 4, 5u, "phLibNfc_InitCompleteWdTimer");
  return v7;
}

uint64_t sub_297EEE110(uint64_t a1, uint64_t a2)
{
  v2 = a2;
  sub_297E687D8(2, a2, a1, 4, 4u, "phLibNfc_InitCompleteWdTimerCb");
  sub_297E4E1B4(2, v2, 4, 5u, "phLibNfc_InitCompleteWdTimerCb");
  if (v2)
  {
    v4 = 0;
    v5 = 0;
    do
    {
      v6 = *(&unk_2A18BDDC0 + 14 * v5 + 2);
      if (v4)
      {
        break;
      }

      v4 = 1;
      v5 = 1;
    }

    while (v6 != v2);
    if (v6 == v2)
    {
      if (*(v2 + 2928))
      {
        sub_297E4E0B0(1, v2 + 9792, 4, 4u, "\n\nTimer expired: Restarting timer");
        sub_297EFD338(*(v2 + 9792), a1);
        if (phOsalNfc_Timer_Start())
        {
          sub_297E4E0B0(1, v2 + 9792, 4, 2u, "\n\nTimer expired: Failed to restarting timer");
          if (a1 && a1 != 0xFFFFFFFFFFFFLL)
          {
            phOsalNfc_Timer_Stop();
            phOsalNfc_Timer_Delete();
            *(v2 + 2936) = 0xFFFFFFFFFFFFLL;
          }
        }

        else
        {
          v13 = &gphNfc_DebugInfo_Sec;
          if (!*(v2 + 9792))
          {
            v13 = &gphNfc_DebugInfo_Prim;
          }

          v13[1] &= ~0x2000000u;
          sub_297E687D8(1, v2 + 9792, a1, 4, 4u, "phLibNfc_InitCompleteWdTimerCb");
          --*(v2 + 2928);
          sub_297E50EBC(1, v2 + 9792, 4, 4u, "\n\nTimer Count");
        }
      }

      else
      {
        v8 = sub_297E55EF8(v2, *(v2 + 2960));
        if (*(v2 + 9792))
        {
          v9 = &gphNfc_DebugInfo_Sec;
        }

        else
        {
          v9 = &gphNfc_DebugInfo_Prim;
        }

        v10 = v9[1] | 0x2000000;
        *v9 = *v9 & 0xFFFE003F | ((v8 & 0x3F) << 11) | ((*(v2 + 2952) & 0x1F) << 6);
        v9[1] = v10;
        sub_297E4E0B0(1, v2 + 9792, 4, 2u, "\n\nTimer expired: Timer restart count reached limit");
        if (a1 && a1 != 0xFFFFFFFFFFFFLL)
        {
          phOsalNfc_Timer_Stop();
          phOsalNfc_Timer_Delete();
          *(v2 + 2936) = 0xFFFFFFFFFFFFLL;
        }

        sub_297E99840(*(v2 + 512));
        v11 = *(v2 + 584);
        if (v11 && v11 != 0xFFFFFFFFFFFFLL)
        {
          sub_297E4E0B0(1, v2 + 9792, 4, 4u, "SeModeSet/DelayForSE Ntf timer is still active, stopping and deleting the same");
          phOsalNfc_Timer_Stop();
          phOsalNfc_Timer_Delete();
          *(v2 + 584) = 0xFFFFFFFFFFFFLL;
        }

        *(v2 + 2929) = 0;
        *(v2 + 592) = 0;
        if (*(v2 + 2931) == 1)
        {
          v12 = 137;
        }

        else
        {
          v12 = 255;
        }

        sub_297EA93C8(v2, v12);
        v2 = 0;
      }
    }
  }

  return sub_297E4DFAC(2, v2, 4, 5u, "phLibNfc_InitCompleteWdTimerCb");
}

uint64_t sub_297EEE420(uint64_t a1)
{
  v12 = *MEMORY[0x29EDCA608];
  bzero(v7, 0x6E8uLL);
  sub_297E4E1B4(2, a1, 4, 5u, "phLibNfc_SwpIntfControl");
  if (a1)
  {
    v7[1] = 0x2000;
    v2 = *(a1 + 2994) == 0;
    if (*(a1 + 2994))
    {
      v3 = 4;
    }

    else
    {
      v3 = 5;
    }

    v8 = v3;
    v4 = *(a1 + 488);
    v9 = v2 & v4;
    v11 = (v4 & 2) != 0;
    v10 = 0;
    v5 = sub_297E64020(*(a1 + 3088), v7, sub_297E5BA84, a1);
  }

  else
  {
    v5 = 1;
  }

  sub_297E4DFAC(2, a1, 4, 5u, "phLibNfc_SwpIntfControl");
  return v5;
}

uint64_t sub_297EEE52C(uint64_t a1)
{
  sub_297E4E1B4(2, a1, 4, 5u, "phLibNfc_SwpIntfControlProc");
  sub_297E4DFAC(2, a1, 4, 5u, "phLibNfc_SwpIntfControlProc");
  return 0;
}

uint64_t sub_297EEE588(uint64_t a1, uint64_t a2)
{
  sub_297E4E1B4(2, a1, 4, 5u, "phLibNfc_DelayForSeNtf");
  if (a1 && !a2)
  {
    if (*(a1 + 752) == 1 && (*(a1 + 488) & 0xB) == 2)
    {
      sub_297E4E0B0(1, a1 + 9792, 4, 4u, "phLibNfc_DelayForSeNtf: Do not start the Init Mode Set Timer, returning SUCCESS\n");
      a2 = 0;
      *(a1 + 752) = 0;
    }

    else if (*(a1 + 592))
    {
      sub_297E50EBC(1, a1 + 9792, 4, 4u, "phLibNfc_DelayForSeNtf: Delay Timer(ms) ");
      sub_297E50EBC(1, a1 + 9792, 4, 4u, "phLibNfc_DelayForSeNtf: Timer Count");
      v4 = phOsalNfc_Timer_Create();
      a2 = 12;
      if (v4)
      {
        v5 = v4;
        if (v4 != 0xFFFFFFFFFFFFLL)
        {
          if (phOsalNfc_Timer_Start())
          {
            phOsalNfc_Timer_Delete();
            a2 = 255;
          }

          else
          {
            sub_297E687D8(1, a1 + 9792, v5, 4, 4u, "phLibNfc_DelayForSeNtf");
            sub_297E4E0B0(1, a1 + 9792, 4, 4u, "phLibNfc_DelayForSeNtf: Timer started");
            *(a1 + 584) = v5;
            *(a1 + 753) = 1;
            a2 = 13;
          }
        }
      }
    }

    else
    {
      a2 = 0;
    }
  }

  sub_297E4DFAC(2, a1, 4, 5u, "phLibNfc_DelayForSeNtf");
  return a2;
}

uint64_t sub_297EEE748(uint64_t a1, int a2)
{
  sub_297E4E1B4(2, a1, 4, 5u, "phLibNfc_DelayForSeNtfProc");
  v4 = 0;
  if (a1 && !a2)
  {
    *(a1 + 753) = 0;
    if (*(a1 + 2929))
    {
      sub_297E79810(a1, *(a1 + 2960), 2u);
    }

    else
    {
      sub_297E50EBC(1, a1 + 9792, 4, 4u, "phLibNfc_DelayForSeNtfProc:HCI NETWORK Delay Timer(ms) Expired");
      sub_297E50EBC(1, a1 + 9792, 4, 4u, "Timer Count");
    }

    if (*(a1 + 556) == 1)
    {
      sub_297E4E0B0(1, a1 + 9792, 4, 1u, "Session Id is not retrieved in 10 tries ");
      *(a1 + 556) = 0;
      v4 = 255;
    }

    else
    {
      v4 = 0;
    }
  }

  sub_297E4DFAC(2, a1, 4, 5u, "phLibNfc_DelayForSeNtfProc");
  return v4;
}

uint64_t sub_297EEE85C(uint64_t a1)
{
  sub_297E4E1B4(2, a1, 4, 5u, "phLibNfc_SetNfceeModeSeq");
  if (a1)
  {
    *(a1 + 592) = 0;
    *(a1 + 2929) = 0;
    v2 = *(a1 + 392);
    if (v2 && *(a1 + 404) != 1)
    {
      v3 = sub_297F058B8(*(a1 + 3088), v2, 0, sub_297E5BA84, a1);
      if (v3 != 13)
      {
        sub_297E4E0B0(1, a1 + 9792, 4, 4u, "Disable Nfcee mode failed!");
      }
    }

    else
    {
      v3 = 0;
    }
  }

  else
  {
    v3 = 1;
  }

  sub_297E4DFAC(2, a1, 4, 5u, "phLibNfc_SetNfceeModeSeq");
  return v3;
}

uint64_t sub_297EEE934(uint64_t a1, uint64_t a2)
{
  sub_297E4E1B4(2, a1, 4, 5u, "phLibNfc_SetNfceeModeSeqEnd");
  if (!a1)
  {
    goto LABEL_6;
  }

  v4 = 0;
  v5 = 0;
  do
  {
    v6 = *(&unk_2A18BDDC0 + 14 * v5 + 2);
    if (v4)
    {
      break;
    }

    v4 = 1;
    v5 = 1;
  }

  while (v6 != a1);
  if (v6 == a1)
  {
    if (a2 != 143 && a2 != 81)
    {
      if (a2)
      {
        sub_297E4E0B0(1, a1 + 9792, 4, 1u, "Set Nfcee mode Failed!");
      }

      else
      {
        sub_297E4E0B0(1, a1 + 9792, 4, 4u, "Set Nfcee mode success!");
        v8 = *(a1 + 568);
        if (v8 == 1)
        {
          a2 = 0;
          *(a1 + 404) = 0;
          goto LABEL_7;
        }

        if (!v8)
        {
          a2 = 0;
          *(a1 + 404) = 1;
          goto LABEL_7;
        }
      }

      a2 = 0;
    }
  }

  else
  {
LABEL_6:
    a2 = 255;
  }

LABEL_7:
  sub_297E4DFAC(2, a1, 4, 5u, "phLibNfc_SetNfceeModeSeqEnd");
  return a2;
}

uint64_t sub_297EEEA58(uint64_t a1, uint64_t a2)
{
  sub_297E4E1B4(2, a2, 4, 5u, "phHciNfc_eSEGetAtrTimeOutCb");
  sub_297E4E0B0(2, a2, 4, 1u, "******HCI SE Get Atr Timer Expired********");
  if (!a2)
  {
    goto LABEL_6;
  }

  v3 = 0;
  v4 = 0;
  do
  {
    v5 = *(&unk_2A18BDDC0 + 14 * v4 + 2);
    if (v3)
    {
      break;
    }

    v3 = 1;
    v4 = 1;
  }

  while (v5 != a2);
  if (v5 == a2)
  {
    v6 = *(a2 + 512);
    if (!v6)
    {
      goto LABEL_12;
    }

    v7 = 0;
    v8 = 0;
    do
    {
      v9 = *(&unk_2A18BDDC0 + 14 * v8 + 13);
      if (v7)
      {
        break;
      }

      v7 = 1;
      v8 = 1;
    }

    while (v9 != v6);
    if (v9 == v6)
    {
      phOsalNfc_Timer_Stop();
      phOsalNfc_Timer_Delete();
      *(v6 + 856) = 0xFFFFFFFFFFFFLL;
      if (*(v6 + 152))
      {
        sub_297E4E0B0(1, v6 + 956, 7, 4u, "phHciNfc_eSEGetAtrTimeOutCb: Releasing memory");
        if (*(*(v6 + 152) + 8))
        {
          phOsalNfc_FreeMemory();
          *(*(v6 + 152) + 8) = 0;
        }

        phOsalNfc_FreeMemory();
        *(v6 + 152) = 0;
      }
    }

    else
    {
LABEL_12:
      sub_297E4E0B0(2, a2, 4, 1u, "phHciNfc_eSEGetAtrTimeOutCb :Invalid or NULL pHciContext");
    }

    v10 = *(a2 + 600);
    if (v10)
    {
      *v10 = 0;
      *(v10 + 8) = 0;
    }

    if (*(a2 + 9792))
    {
      v11 = &gphNfc_DebugInfo_Sec;
    }

    else
    {
      v11 = &gphNfc_DebugInfo_Prim;
    }

    *v11 |= 8u;
    if (*(a2 + 754))
    {
      *(a2 + 754) = 0;
      v12 = a2;
      v13 = 218;
    }

    else
    {
      v12 = a2;
      v13 = 44;
    }

    sub_297EED6C0(v12, v13, 0);
  }

  else
  {
LABEL_6:
    sub_297E4E0B0(2, a2, 4, 1u, "phHciNfc_eSEGetAtrTimeOutCb:Invalid Context");
  }

  return sub_297E4DFAC(2, a2, 4, 5u, "phHciNfc_eSEGetAtrTimeOutCb");
}

uint64_t sub_297EEEC64(uint64_t a1)
{
  sub_297E4E1B4(2, a1, 7, 5u, "phHciNfc_CreateSEGetAtrTimer");
  v2 = phOsalNfc_Timer_Create();
  *(a1 + 856) = v2;
  if (v2 == 0xFFFFFFFFFFFFLL || v2 == 0)
  {
    sub_297E4E0B0(1, a1 + 956, 4, 1u, "HCI SE Get Atr Timer Create failed");
    v4 = 12;
  }

  else
  {
    sub_297E4E0B0(1, a1 + 956, 4, 4u, "HCI SE Get Atr Timer Created Successfully");
    v4 = 0;
  }

  sub_297E4DFAC(2, a1, 7, 5u, "phHciNfc_CreateSEGetAtrTimer");
  return v4;
}

uint64_t sub_297EEED20(uint64_t a1)
{
  sub_297E4E1B4(2, a1, 7, 5u, "phHciNfc_CreateSETranseiveTimer");
  v2 = phOsalNfc_Timer_Create();
  *(a1 + 840) = v2;
  if (v2 == 0xFFFFFFFFFFFFLL || v2 == 0)
  {
    sub_297E4E0B0(1, a1 + 956, 4, 1u, "HCI SE TxRx Timer Create failed");
    v4 = 12;
  }

  else
  {
    sub_297E4E0B0(1, a1 + 956, 4, 4u, "HCI SE TxRx Timer Created Successfully");
    v4 = 0;
  }

  sub_297E4DFAC(2, a1, 7, 5u, "phHciNfc_CreateSETranseiveTimer");
  return v4;
}

uint64_t sub_297EEEDDC(uint64_t a1, uint64_t a2)
{
  sub_297E4E1B4(2, a2, 4, 5u, "phHciNfc_eSETranseiveTimeOutCb");
  sub_297E4E0B0(2, a2, 4, 2u, "******HCI SE TxRx Timer Expired********");
  if (!a2)
  {
    goto LABEL_6;
  }

  v3 = 0;
  v4 = 0;
  do
  {
    v5 = *(&unk_2A18BDDC0 + 14 * v4 + 2);
    if (v3)
    {
      break;
    }

    v3 = 1;
    v4 = 1;
  }

  while (v5 != a2);
  if (v5 == a2)
  {
    v6 = *(a2 + 512);
    if (!v6)
    {
      goto LABEL_12;
    }

    v7 = 0;
    v8 = 0;
    do
    {
      v9 = *(&unk_2A18BDDC0 + 14 * v8 + 13);
      if (v7)
      {
        break;
      }

      v7 = 1;
      v8 = 1;
    }

    while (v9 != v6);
    if (v9 == v6)
    {
      phOsalNfc_Timer_Stop();
      phOsalNfc_Timer_Delete();
      *(v6 + 852) = 10000;
      *(v6 + 840) = 0xFFFFFFFFFFFFLL;
      if (*(v6 + 956))
      {
        v10 = &gphNfc_DebugInfo_Sec;
      }

      else
      {
        v10 = &gphNfc_DebugInfo_Prim;
      }

      *v10 |= 8u;
    }

    else
    {
LABEL_12:
      sub_297E4E0B0(2, a2, 4, 1u, "phHciNfc_eSETranseiveTimeOutCb :Invalid or NULL pHciContext");
    }

    sub_297E96818(*(a2 + 9784), 44);
    sub_297F08EEC(*(a2 + 3088), 1);
    if (*(a2 + 754) == 1)
    {
      *(a2 + 754) = 0;
      v11 = a2;
      v12 = 218;
    }

    else
    {
      sub_297E8CBD4(*(a2 + 3088), 0);
      v11 = a2;
      v12 = 44;
    }

    sub_297EE9744(v11, v12, 0);
  }

  else
  {
LABEL_6:
    sub_297E4E0B0(2, a2, 4, 1u, "phHciNfc_eSETranseiveTimeOutCb:Invalid Context");
  }

  return sub_297E4DFAC(2, a2, 4, 5u, "phHciNfc_eSETranseiveTimeOutCb");
}

uint64_t sub_297EEEFB8(uint64_t a1, int a2)
{
  v6 = 0;
  v7 = 0;
  sub_297E4E1B4(2, a1, 4, 5u, "phLibNfc_SeSendCb");
  if (a1)
  {
    if (a2)
    {
      v4 = *(a1 + 512);
      if (v4)
      {
        BYTE2(v6) = *(v4 + 10);
        LOWORD(v6) = *(v4 + 8);
        v7 = 0;
        WORD2(v6) = 0;
        sub_297E4E0B0(1, a1 + 9792, 4, 1u, "phLibNfc_SeSendCb: Call back received with status != success");
        sub_297EEB1EC(v4, &v6, 0);
      }
    }
  }

  return sub_297E4DFAC(2, a1, 4, 5u, "phLibNfc_SeSendCb");
}

uint64_t sub_297EEF078(uint64_t a1, uint64_t a2)
{
  v6 = 0;
  v7 = 0;
  sub_297E4E1B4(2, a1, 4, 5u, "phLibNfc_SeRawSendCb");
  if (a1)
  {
    if (a2)
    {
      v4 = *(a1 + 512);
      if (v4)
      {
        if (*(a1 + 672))
        {
          sub_297EE9C34(a1, a2, 0);
        }

        else
        {
          *(&v6 + 1) = 274;
          LOBYTE(v6) = *(a1 + 656);
          v7 = 0;
          WORD2(v6) = 0;
          sub_297EEB1EC(v4, &v6, 0);
        }
      }
    }
  }

  return sub_297E4DFAC(2, a1, 4, 5u, "phLibNfc_SeRawSendCb");
}

uint64_t sub_297EEF130(uint64_t a1)
{
  sub_297E4E1B4(3, a1, 8, 5u, "phFriNfc_MfUL_Reset");
  *(a1 + 158) = 0;
  phOsalNfc_MemCopy();
  *(a1 + 126) = 0;
  return sub_297E4DFAC(3, a1, 8, 5u, "phFriNfc_MfUL_Reset");
}

uint64_t sub_297EEF1B8(uint64_t a1)
{
  sub_297E4E1B4(3, a1, 8, 5u, "phFriNfc_MfUL_Format");
  *(a1 + 158) = 0;
  phOsalNfc_MemCopy();
  *(a1 + 25) = 1;
  *(a1 + 158) = 2;
  v2 = sub_297EEF264(a1);
  sub_297E4DFAC(3, a1, 8, 5u, "phFriNfc_MfUL_Format");
  return v2;
}

uint64_t sub_297EEF264(uint64_t a1)
{
  sub_297E4E1B4(3, a1, 8, 5u, "phFriNfc_MfUL_H_WrRd");
  sub_297EF02B8(a1, *(a1 + 158));
  v2 = sub_297EF0630(a1);
  sub_297E4DFAC(3, a1, 8, 5u, "phFriNfc_MfUL_H_WrRd");
  return v2;
}

uint64_t sub_297EEF2E0(uint64_t a1, uint64_t a2)
{
  sub_297E4E1B4(3, a1, 8, 5u, "phFriNfc_MfUL_Process");
  if (a2)
  {
LABEL_2:
    if (a2 == 13)
    {
      goto LABEL_4;
    }

    goto LABEL_3;
  }

  v5 = *(a1 + 25);
  if (v5 <= 5)
  {
    if (*(a1 + 25) > 2u)
    {
      if (v5 == 3)
      {
        if (*(a1 + 24) != 10)
        {
          a2 = 0;
          goto LABEL_3;
        }

        *(a1 + 158) = 5;
        v12 = 4;
        goto LABEL_56;
      }

      if (v5 == 4)
      {
        goto LABEL_3;
      }

      if (v5 != 5)
      {
        goto LABEL_36;
      }

      if (**(a1 + 88) != 16)
      {
        goto LABEL_40;
      }

      phOsalNfc_MemCopy();
      *(a1 + 128) |= 0xF8u;
      *(a1 + 129) = -1;
      phOsalNfc_MemCopy();
      *(a1 + 125) = 15;
      v6 = *(a1 + 124);
      if (v6 == 18)
      {
        *(a1 + 25) = 12;
        *(a1 + 158) = 4;
        goto LABEL_57;
      }

      if (v6 != 6)
      {
        goto LABEL_36;
      }

      goto LABEL_47;
    }

    if (v5 != 1)
    {
      if (v5 != 2)
      {
        goto LABEL_36;
      }

      sub_297E4E1B4(3, a1, 8, 5u, "phFriNfc_MfUL_H_ProWrOTPBytes");
      *(a1 + 25) = 3;
      *(a1 + 158) = 4;
      a2 = sub_297EEF264(a1);
      v7 = a1;
      v8 = "phFriNfc_MfUL_H_ProWrOTPBytes";
LABEL_93:
      sub_297E4DFAC(3, v7, 8, 5u, v8);
      goto LABEL_2;
    }

    sub_297E4E1B4(3, a1, 8, 5u, "phFriNfc_MfUL_H_ProRd16Bytes");
    v9 = *(a1 + 96);
    if (v9[3])
    {
      goto LABEL_32;
    }

    v15 = v9[8];
    if (v15 == 255)
    {
      if (v9[9] == 255)
      {
        *(a1 + 24) = 1;
        goto LABEL_72;
      }
    }

    else if (v15 == 2 && !v9[9])
    {
      *(a1 + 24) = 10;
LABEL_72:
      phOsalNfc_MemCopy();
      goto LABEL_79;
    }

    sub_297E4E1B4(3, a1, 8, 5u, "phFriNfc_MfUL_H_ChkOtpFindTagType");
    if (phOsalNfc_MemCompare())
    {
      if (!phOsalNfc_MemCompare())
      {
        *(a1 + 24) = 11;
        goto LABEL_77;
      }

      if (!phOsalNfc_MemCompare())
      {
        *(a1 + 24) = 11;
        goto LABEL_77;
      }

      if (!phOsalNfc_MemCompare())
      {
        *(a1 + 24) = 11;
        goto LABEL_77;
      }

      if (!phOsalNfc_MemCompare())
      {
        *(a1 + 24) = 11;
        goto LABEL_77;
      }

      if (!phOsalNfc_MemCompare())
      {
        *(a1 + 24) = 11;
        goto LABEL_77;
      }

      if (!phOsalNfc_MemCompare())
      {
        *(a1 + 24) = 11;
LABEL_77:
        phOsalNfc_MemCopy();
      }
    }

    else
    {
      *(a1 + 24) = 11;
    }

    sub_297E4DFAC(3, a1, 8, 5u, "phFriNfc_MfUL_H_ChkOtpFindTagType");
LABEL_79:
    v16 = 4;
    if (phOsalNfc_MemCompare())
    {
      if (phOsalNfc_MemCompare())
      {
LABEL_32:
        v10 = *(a1 + 25);
        goto LABEL_87;
      }

      v17 = *(a1 + 24);
      v10 = 2;
      v16 = 3;
      if (v17 != 10 && v17 != 1)
      {
        v10 = 13;
LABEL_86:
        *(a1 + 25) = v10;
LABEL_87:
        a2 = 35;
        if (v10 <= 0xD && ((1 << v10) & 0x200C) != 0)
        {
          v18 = *(a1 + 24);
          if (v18 <= 0xB && ((1 << v18) & 0xC02) != 0)
          {
            a2 = sub_297EEF264(a1);
          }
        }

        v8 = "phFriNfc_MfUL_H_ProRd16Bytes";
        v7 = a1;
        goto LABEL_93;
      }
    }

    else
    {
      v10 = 3;
    }

    *(a1 + 158) = v16;
    goto LABEL_86;
  }

  if (*(a1 + 25) > 8u)
  {
    if (v5 != 9)
    {
      if (v5 != 12)
      {
        if (v5 != 13)
        {
          goto LABEL_36;
        }

        *(a1 + 146) = 0;
        if (**(a1 + 88) == 8)
        {
          phOsalNfc_MemCopy();
          if (!sub_297EF01A4(a1))
          {
            v12 = 14;
            goto LABEL_56;
          }

          a2 = 1;
          goto LABEL_3;
        }

LABEL_40:
        a2 = 27;
        goto LABEL_3;
      }

      if (**(a1 + 88) != 16)
      {
        goto LABEL_40;
      }

      a2 = sub_297EEF938(a1, *(a1 + 96));
      if (a2)
      {
        goto LABEL_2;
      }

      v13 = *(a1 + 154);
LABEL_50:
      *(a1 + 158) = v13;
      v14 = sub_297EEFEA8(a1);
      goto LABEL_58;
    }

    *(a1 + 146) += 4;
    if (sub_297EF0134(a1))
    {
      if (*(a1 + 146) <= 0xFu && sub_297EF0134(a1))
      {
        goto LABEL_46;
      }

      v13 = *(a1 + 158) + 4;
      goto LABEL_50;
    }

LABEL_47:
    v12 = 7;
    goto LABEL_56;
  }

  if (v5 != 6)
  {
    if (v5 != 7)
    {
      if (v5 == 8)
      {
        if (**(a1 + 88) == 16)
        {
          phOsalNfc_MemCopy();
          *(a1 + 146) = 0;
LABEL_46:
          v14 = sub_297EEFF7C(a1);
LABEL_58:
          a2 = v14;
          goto LABEL_2;
        }

        goto LABEL_40;
      }

      goto LABEL_36;
    }

    v11 = *(a1 + 124);
    if (v11 == 18 || v11 == 6)
    {
      v12 = 6;
LABEL_56:
      *(a1 + 25) = v12;
LABEL_57:
      v14 = sub_297EEF264(a1);
      goto LABEL_58;
    }

LABEL_36:
    a2 = 245;
  }

LABEL_3:
  sub_297EA0EA0(a1, a2);
LABEL_4:

  return sub_297E4DFAC(3, a1, 8, 5u, "phFriNfc_MfUL_Process");
}

uint64_t sub_297EEF938(_BYTE *a1, uint64_t a2)
{
  sub_297E4E1B4(3, a1, 8, 5u, "phFriNfc_MfUL_ParseTLVs");
  v3 = &unk_2A18BE000;
  v4 = HIWORD(dword_2A18BE718);
  if (HIWORD(dword_2A18BE718))
  {
    v5 = 1;
  }

  else
  {
    v5 = a1[124] != 0;
    v4 = 8 * a1[124];
    HIWORD(dword_2A18BE718) = 8 * a1[124];
  }

  v6 = dword_2A18BE720;
  v7 = dword_2A18BE720 == 5 || !v5;
  if (v7)
  {
    v8 = 0;
    goto LABEL_10;
  }

  v10 = 0;
  v11 = 0;
  while (1)
  {
    v12 = BYTE1(dword_2A18BE718);
    if (BYTE1(dword_2A18BE718))
    {
      goto LABEL_16;
    }

    v15 = v3;
    v16 = a1[158];
    sub_297E4E1B4(3, a1, 8, 5u, "phFriNfc_MfUL_GetSkipSize");
    if (a1[156] || a1[154] != v16 || a1[153] != v11)
    {
      sub_297E4DFAC(3, a1, 8, 5u, "phFriNfc_MfUL_GetSkipSize");
      BYTE1(dword_2A18BE718) = 0;
LABEL_27:
      v3 = v15;
      if (dword_2A18BE720 <= 1)
      {
        if (dword_2A18BE720)
        {
          if (dword_2A18BE720 == 1 && *(a2 + v11) == 3)
          {
            v8 = 0;
            v19 = 2;
LABEL_50:
            dword_2A18BE720 = v19;
            goto LABEL_58;
          }

LABEL_53:
          BYTE1(dword_2A18BE718) = 0;
          dword_2A18BE720 = 0;
LABEL_54:
          v8 = 22;
          goto LABEL_58;
        }

        v19 = *(a2 + v11);
        if (!*(a2 + v11))
        {
LABEL_57:
          v8 = 0;
          goto LABEL_58;
        }

        if (v19 != 3)
        {
          if (v19 != 1)
          {
            dword_2A18BE720 = 0;
            goto LABEL_54;
          }

          v8 = 0;
          goto LABEL_50;
        }

        dword_2A18BE720 = 4;
        a1[156] = 1;
        v21 = "phFriNfc_MfUL_GetDefaultLockBytesInfo";
        sub_297E4E1B4(3, a1, 8, 5u, "phFriNfc_MfUL_GetDefaultLockBytesInfo");
        v25 = a1[124];
        a1[154] = (8 * v25 + 16) >> 2;
        a1[153] = 0;
        a1[155] = v25 - 6;
      }

      else
      {
        if (dword_2A18BE720 != 2)
        {
          if (dword_2A18BE720 != 3)
          {
            if (dword_2A18BE720 == 4)
            {
              if (dword_2A18BE718 == 2)
              {
                v8 = 0;
                word_2A18BE71C |= *(a2 + v11);
                dword_2A18BE720 = 5;
                LOBYTE(dword_2A18BE718) = 0;
                goto LABEL_58;
              }

              if (dword_2A18BE718 == 1)
              {
                v8 = 0;
                word_2A18BE71C = *(a2 + v11) << 8;
                goto LABEL_58;
              }

              if (!dword_2A18BE718)
              {
                v8 = 0;
                if (*(a2 + v11) == 255)
                {
                  LOBYTE(dword_2A18BE718) = 1;
                }

                else
                {
                  word_2A18BE71C = *(a2 + v11);
                  dword_2A18BE720 = 5;
                  LOBYTE(dword_2A18BE718) = 0;
                }

                goto LABEL_58;
              }

              goto LABEL_57;
            }

            goto LABEL_53;
          }

          if (*(a2 + v11))
          {
            if (*(a2 + v11) == 3)
            {
              v8 = 0;
              v19 = 4;
              goto LABEL_50;
            }

            goto LABEL_53;
          }

          goto LABEL_57;
        }

        v20 = dword_2A18BE718;
        if (dword_2A18BE718 < 2u)
        {
          v8 = 0;
          a1[156] = 0;
          a1[v20 + 147] = *(a2 + v11);
          LOBYTE(dword_2A18BE718) = v20 + 1;
LABEL_58:
          v14 = v3[909];
          goto LABEL_59;
        }

        if (dword_2A18BE718 != 2)
        {
          goto LABEL_53;
        }

        a1[149] = *(a2 + v11);
        dword_2A18BE720 = 3;
        LOBYTE(dword_2A18BE718) = 0;
        v21 = "phFriNfc_MfUL_GetLockBytesInfo";
        sub_297E4E1B4(3, a1, 8, 5u, "phFriNfc_MfUL_GetLockBytesInfo");
        v22 = a1[147];
        a1[155] = a1[148];
        v23 = a1[149];
        a1[152] = v23 & 0xF;
        a1[151] = v23 >> 4;
        v24 = (v22 & 0xF) + (v22 >> 4 << (v23 & 0xF));
        a1[154] = v24 >> 2;
        a1[153] = v24 & 3;
      }

      sub_297E4DFAC(3, a1, 8, 5u, v21);
      v3 = v15;
      goto LABEL_57;
    }

    v17 = a1[155];
    v7 = (v17 & 7) == 0;
    v18 = v17 >> 3;
    if (v7)
    {
      v12 = v18;
    }

    else
    {
      v12 = v18 + 1;
    }

    sub_297E4DFAC(3, a1, 8, 5u, "phFriNfc_MfUL_GetSkipSize");
    BYTE1(dword_2A18BE718) = v12;
    if (!v12)
    {
      goto LABEL_27;
    }

    v3 = v15;
    v4 = v15[909];
LABEL_16:
    v13 = 16 - v10;
    v8 = 0;
    if (16 - v10 <= v12)
    {
      v14 = v4 - v13;
      HIWORD(dword_2A18BE718) = v4 - v13;
      BYTE1(dword_2A18BE718) = v12 - v13;
      v11 = 16;
    }

    else
    {
      v14 = v4 - v12;
      HIWORD(dword_2A18BE718) = v4 - v12;
      v11 += v12;
      BYTE1(dword_2A18BE718) = 0;
    }

LABEL_59:
    if (!v14)
    {
      v6 = 0;
      BYTE1(dword_2A18BE718) = 0;
      dword_2A18BE720 = 0;
      v8 = 22;
      goto LABEL_10;
    }

    v6 = dword_2A18BE720;
    if (dword_2A18BE720 == 5)
    {
      break;
    }

    ++v11;
    v4 = v14 - 1;
    v3[909] = v14 - 1;
    if (v14 != 1 && v6 != 5 && v11 <= 0xFu)
    {
      v10 = v11;
      if (!v8)
      {
        continue;
      }
    }

    goto LABEL_10;
  }

  if (a1[124] <= 0x1Fu)
  {
    v26 = -1;
  }

  else
  {
    v26 = -3;
  }

  if (v26 + v14 >= word_2A18BE71C)
  {
    v8 = v8;
  }

  else
  {
    v8 = 22;
  }

  dword_2A18BE718 = 0;
  v6 = 5;
LABEL_10:
  if (v6 != 5 && v8 == 0)
  {
    a1[25] = 12;
    a1[158] += 4;
    v8 = sub_297EEF264(a1);
  }

  else
  {
    dword_2A18BE720 = 0;
  }

  if (v8 != 13)
  {
    dword_2A18BE718 = 0;
  }

  sub_297E4DFAC(3, a1, 8, 5u, "phFriNfc_MfUL_ParseTLVs");
  return v8;
}

uint64_t sub_297EEFEA8(_BYTE *a1)
{
  sub_297E4E1B4(3, a1, 8, 5u, "phFriNfc_MfUL_ReadWriteLockBytes");
  if ((a1[153] || a1[158] != a1[154] || sub_297EF0134(a1) <= 0x1F) && (a1[158] == a1[154] || sub_297EF0134(a1) < 0x20))
  {
    v2 = 8;
  }

  else
  {
    phOsalNfc_SetMemory();
    v2 = 9;
  }

  a1[25] = v2;
  v3 = sub_297EEF264(a1);
  sub_297E4DFAC(3, a1, 8, 5u, "phFriNfc_MfUL_ReadWriteLockBytes");
  return v3;
}

uint64_t sub_297EEFF7C(_BYTE *a1)
{
  v10 = 0;
  sub_297E4E1B4(3, a1, 8, 5u, "phFriNfc_MfUL_UpdateAndWriteLockBits");
  phOsalNfc_MemCopy();
  v2 = sub_297EF0134(a1);
  v3 = 0;
  if (a1[158] == a1[154])
  {
    v3 = a1[153];
  }

  v4 = 32 - 8 * v3;
  if ((v4 & 0xF8u) >= v2)
  {
    if ((v2 & 7) != 0)
    {
      if (v2 < 9)
      {
        LOBYTE(v10) = v10 & (-1 << (v2 & 7)) | 1;
      }

      else
      {
        v5 = v2 >> 3;
        do
        {
          *(&v10 + v3) = -1;
          LOBYTE(v3) = v3 + 1;
          --v5;
        }

        while (v5);
        *(&v10 + v3) = 1;
      }
    }

    else if (v2)
    {
      v7 = v2 >> 3;
      do
      {
        *(&v10 + v3++) = -1;
        --v7;
      }

      while (v7);
    }
  }

  else if ((8 * v3) == 32)
  {
    LOBYTE(v2) = 0;
  }

  else
  {
    v6 = v4 >> 3;
    if (v6 <= 1)
    {
      v6 = 1;
    }

    do
    {
      *(&v10 + v3++) = -1;
      --v6;
    }

    while (v6);
    LOBYTE(v2) = v4;
  }

  a1[157] += v2;
  phOsalNfc_MemCopy();
  a1[25] = 9;
  v8 = sub_297EEF264(a1);
  sub_297E4DFAC(3, a1, 8, 5u, "phFriNfc_MfUL_UpdateAndWriteLockBits");
  return v8;
}

uint64_t sub_297EF0134(uint64_t a1)
{
  sub_297E4E1B4(3, a1, 8, 5u, "phFriNfc_MfUL_CalcRemainingLockBits");
  v2 = *(a1 + 155) - *(a1 + 157);
  sub_297E4DFAC(3, a1, 8, 5u, "phFriNfc_MfUL_CalcRemainingLockBits");
  return v2;
}

uint64_t sub_297EF01A4(uint64_t a1)
{
  sub_297E4E1B4(3, a1, 8, 5u, "phFriNfc_MfUL_H_FindNtagSize");
  v2 = 1;
  if (a1)
  {
    v3 = 1 << (*(a1 + 165) >> 1);
    if (*(a1 + 165))
    {
      sub_297E4E1B4(3, a1, 8, 5u, "phFriNfc_MfUL_H_MapNtagSize");
      if (v3 <= 0xFFu)
      {
        if (v3 == 32)
        {
          LOWORD(v3) = 48;
        }

        else if (v3 == 128)
        {
          LOWORD(v3) = 144;
        }
      }

      else
      {
        switch(v3)
        {
          case 0x100u:
            LOWORD(v3) = 504;
            break;
          case 0x200u:
            LOWORD(v3) = 888;
            break;
          case 0x400u:
            LOWORD(v3) = 1904;
            break;
        }
      }

      sub_297E4DFAC(3, a1, 8, 5u, "phFriNfc_MfUL_H_MapNtagSize");
    }

    v2 = 0;
    *(a1 + 168) = v3;
  }

  sub_297E4DFAC(3, a1, 8, 5u, "phFriNfc_MfUL_H_FindNtagSize");
  return v2;
}

uint64_t sub_297EF02B8(uint64_t a1, char a2)
{
  sub_297E4E1B4(3, a1, 8, 5u, "phFriNfc_MfUL_H_fillSendBuf");
  **(a1 + 96) = a2;
  v4 = *(a1 + 25);
  if (v4 > 6)
  {
    if (*(a1 + 25) <= 0xBu)
    {
      if (v4 == 7)
      {
        *(a1 + 80) = 162;
        *(a1 + 104) = 5;
        **(a1 + 96) = 3;
        goto LABEL_33;
      }

      if (v4 != 8)
      {
        if (v4 != 9)
        {
          return sub_297E4DFAC(3, a1, 8, 5u, "phFriNfc_MfUL_H_fillSendBuf");
        }

        *(a1 + 80) = 162;
        *(a1 + 104) = 5;
        **(a1 + 96) = *(a1 + 158);
        goto LABEL_33;
      }

LABEL_27:
      *(a1 + 80) = 48;
      **(a1 + 96) = *(a1 + 158);
LABEL_35:
      *(a1 + 104) = 1;
      return sub_297E4DFAC(3, a1, 8, 5u, "phFriNfc_MfUL_H_fillSendBuf");
    }

    if (v4 == 12)
    {
      goto LABEL_27;
    }

    if (v4 == 13)
    {
      *(a1 + 80) = 96;
      *(a1 + 104) = 0;
      return sub_297E4DFAC(3, a1, 8, 5u, "phFriNfc_MfUL_H_fillSendBuf");
    }

    if (v4 != 14)
    {
      return sub_297E4DFAC(3, a1, 8, 5u, "phFriNfc_MfUL_H_fillSendBuf");
    }

    *(a1 + 104) = 5;
    *(a1 + 80) = 162;
    *(a1 + 158) = 3;
    v6 = *(a1 + 168);
    if (v6 > 0x1F7)
    {
      if (v6 != 504 && v6 != 888 && v6 != 1904)
      {
        goto LABEL_43;
      }
    }

    else if (v6 != 48 && v6 != 128 && v6 != 144)
    {
      goto LABEL_43;
    }

    phOsalNfc_MemCopy();
LABEL_43:
    phOsalNfc_MemCopy();
    *(a1 + 25) = 2;
    return sub_297E4DFAC(3, a1, 8, 5u, "phFriNfc_MfUL_H_fillSendBuf");
  }

  if (*(a1 + 25) > 3u)
  {
    switch(v4)
    {
      case 4u:
        if (*(a1 + 24) != 10)
        {
          return sub_297E4DFAC(3, a1, 8, 5u, "phFriNfc_MfUL_H_fillSendBuf");
        }

        *(a1 + 104) = 5;
        *(a1 + 80) = 162;
        break;
      case 5u:
        *(a1 + 80) = 48;
        **(a1 + 96) = 2;
        goto LABEL_35;
      case 6u:
        *(a1 + 80) = 162;
        *(a1 + 104) = 5;
        **(a1 + 96) = 2;
        break;
      default:
        return sub_297E4DFAC(3, a1, 8, 5u, "phFriNfc_MfUL_H_fillSendBuf");
    }

LABEL_33:
    phOsalNfc_MemCopy();
    return sub_297E4DFAC(3, a1, 8, 5u, "phFriNfc_MfUL_H_fillSendBuf");
  }

  switch(v4)
  {
    case 1u:
      *(a1 + 80) = 48;
      goto LABEL_35;
    case 2u:
      *(a1 + 104) = 5;
      *(a1 + 80) = 162;
      goto LABEL_33;
    case 3u:
      *(a1 + 104) = 5;
      *(a1 + 80) = 162;
      v5 = *(a1 + 24);
      if (v5 == 1 || v5 == 11 || v5 == 10)
      {
        goto LABEL_33;
      }

      break;
  }

  return sub_297E4DFAC(3, a1, 8, 5u, "phFriNfc_MfUL_H_fillSendBuf");
}

uint64_t sub_297EF0630(uint64_t a1)
{
  sub_297E4E1B4(3, a1, 8, 5u, "phFriNfc_MfUL_H_Transceive");
  *(a1 + 8) &= 0xFCu;
  *(a1 + 12) = 0;
  *(a1 + 64) = sub_297EA1230;
  *(a1 + 72) = a1;
  v3 = *(a1 + 88);
  v2 = *(a1 + 96);
  *v3 = 252;
  v4 = sub_297ECA38C(*a1, (a1 + 64), *(a1 + 16), *(a1 + 80), a1 + 8, v2, *(a1 + 104), v2, v3);
  sub_297E4DFAC(3, a1, 8, 5u, "phFriNfc_MfUL_H_Transceive");
  return v4;
}

uint64_t sub_297EF06F4(uint64_t a1)
{
  sub_297E4E1B4(2, a1, 4, 5u, "phLibNfc_GetEepromSettings");
  if (a1)
  {
    Memory_Typed = phOsalNfc_GetMemory_Typed();
    *(a1 + 3280) = Memory_Typed;
    if (Memory_Typed)
    {
      phOsalNfc_SetMemory();
      if ((*(a1 + 3204) | 2) == 2)
      {
        *(*(a1 + 3280) + 4) |= 0x10u;
        *(*(a1 + 3280) + 88) |= 1u;
        *(*(a1 + 3280) + 4) |= 0x100u;
        *(*(a1 + 3280) + 380) |= 8u;
        *(*(a1 + 3280) + 4) |= 0x20u;
        *(*(a1 + 3280) + 148) |= 4u;
      }

      if (*(a1 + 2985) != 1 && *(a1 + 2986) != 1 && *(a1 + 2992) != 1)
      {
        *(*(a1 + 3280) + 4) |= 0x1000u;
        *(*(a1 + 3280) + 580) |= 0x4000u;
        *(*(a1 + 3280) + 580) |= 0x8000u;
        *(*(a1 + 3280) + 580) |= 2u;
        *(*(a1 + 3280) + 580) |= 8u;
        *(*(a1 + 3280) + 580) |= 0x40u;
        *(*(a1 + 3280) + 580) |= 0x10000u;
      }

      if (*(a1 + 2984) != 1 && *(a1 + 2985) != 1 && *(a1 + 2986) != 1 && *(a1 + 2992) != 1)
      {
        *(*(a1 + 3280) + 580) |= 0x20u;
      }

      *(*(a1 + 3280) + 4) |= 0x400u;
      if ((*(a1 + 3204) | 2) == 2)
      {
        *(*(a1 + 3280) + 544) |= 4u;
        *(*(a1 + 3280) + 544) |= 8u;
      }

      *(*(a1 + 3280) + 4) |= 0x2000u;
      if (*(a1 + 2994) != 1)
      {
        *(*(a1 + 3280) + 1132) |= 1u;
      }

      *(*(a1 + 3280) + 1132) |= 4u;
      if (*(a1 + 2984) == 1)
      {
        *(*(a1 + 3280) + 1132) &= ~2u;
        *(*(a1 + 3280) + 1132) |= 8u;
      }

      if ((*(a1 + 3204) | 2) == 2)
      {
        *(*(a1 + 3280) + 4) |= 0x8000u;
        *(*(a1 + 3280) + 1408) |= 0x10u;
      }

      v3 = sub_297E60AC0(*(a1 + 3088), *(a1 + 3280), sub_297E5BA84, a1);
      if (v3 != 13)
      {
        phOsalNfc_FreeMemory();
        *(a1 + 3280) = 0;
      }
    }

    else
    {
      sub_297E4E0B0(1, a1 + 9792, 4, 1u, "Failed to allocate memory, Insufficient Resources");
      v3 = 12;
    }
  }

  else
  {
    v3 = 1;
    sub_297E4E0B0(2, 0, 4, 1u, "Invalid parameter, Libnfc Context is Invalid");
  }

  sub_297E4DFAC(2, a1, 4, 5u, "phLibNfc_GetEepromSettings");
  return v3;
}

uint64_t sub_297EF0A30(uint64_t a1, int a2, uint64_t a3)
{
  sub_297E4E1B4(2, a1, 4, 5u, "phLibNfc_GetEepromSettingsProc");
  v6 = 0;
  if (a1 && !a2 && a3)
  {
    sub_297E4E1B4(2, a1, 4, 5u, "phLibNfc_VldtEepromCheckPollParams");
    if (*(a3 + 92) == 1)
    {
      *(a3 + 88) &= ~1u;
    }

    else
    {
      *(a3 + 92) = 1;
    }

    sub_297E4DFAC(2, a1, 4, 5u, "phLibNfc_VldtEepromCheckPollParams");
    sub_297E4E1B4(2, a1, 4, 5u, "phLibNfc_VldtEepromCheckListenParams");
    v7 = *(a3 + 156);
    if ((v7 & 7) == 1)
    {
      v8 = *(a3 + 148) & 0xFB;
    }

    else
    {
      *(a3 + 156) = v7 & 0xFC | 1;
      v8 = *(a3 + 148) | 4;
    }

    *(a3 + 148) = v8;
    if (*(a3 + 204))
    {
      *(a3 + 204) &= ~1u;
    }

    else
    {
      *(a3 + 196) &= ~2u;
    }

    v9 = *(a3 + 380);
    if (*(a3 + 483))
    {
      v10 = v9 | 8;
      *(a3 + 483) = 0;
    }

    else
    {
      v10 = v9 & 0xF7;
    }

    *(a3 + 380) = v10;
    sub_297E4DFAC(2, a1, 4, 5u, "phLibNfc_VldtEepromCheckListenParams");
    sub_297E4E1B4(2, a1, 4, 5u, "phLibNfc_VldtEepromCheckSysConfigParams");
    v11 = *(a3 + 580);
    v12 = *(a3 + 1132);
    *(a3 + 1132) = v12 & 0xF7;
    v13 = v11 & 0xFFFE3F91;
    *(a3 + 580) = v13;
    if (*(a1 + 2985) != 1 && *(a1 + 2986) != 1 && *(a1 + 2992) != 1 && *(a3 + 932) != 2)
    {
      *(a3 + 932) = 2;
      v13 |= 0x4000u;
      *(a3 + 580) = v13;
    }

    if (*(a1 + 2984))
    {
      if (*(a1 + 2984) != 1 || *(a3 + 936) == 10)
      {
        goto LABEL_30;
      }

      v13 |= 0x8000u;
      *(a3 + 580) = v13;
      v14 = 10;
    }

    else
    {
      v15 = *(a1 + 2985);
      if (*(a1 + 2985))
      {
LABEL_31:
        if (v15 != 1 && *(a1 + 2986) != 1 && *(a1 + 2992) != 1 && *(a3 + 586) != 1)
        {
          *(a3 + 586) = 1;
          v13 |= 2u;
          *(a3 + 580) = v13;
        }

        if (*(a1 + 2984) == 1 && *(a3 + 587) != 12)
        {
          *(a3 + 587) = 12;
          v13 |= 8u;
          *(a3 + 580) = v13;
        }

        v16 = *(a1 + 2985);
        if (v16 != 1)
        {
          if (*(a1 + 2986) != 1 && *(a1 + 2992) != 1 && (*(a3 + 604) || *(a3 + 608) != 1))
          {
            *(a3 + 604) = 0x100000000;
            v13 |= 0x40u;
            *(a3 + 580) = v13;
            v16 = *(a1 + 2985);
          }

          if (!v16 && !*(a1 + 2986) && !*(a1 + 2992) && *(a3 + 940) != 238)
          {
            *(a3 + 940) = -18;
            v13 |= 0x10000u;
            *(a3 + 580) = v13;
          }
        }

        if (*(a1 + 2984) != 1 || *(a3 + 1173) != 1 && (*(a3 + 1173) = 1, *(a3 + 1132) = v12 | 8, *(a1 + 2984) != 1))
        {
          if (*(a3 + 601))
          {
            *(a3 + 601) = 0;
            *(a3 + 580) = v13 | 0x20;
          }
        }

        sub_297E4DFAC(2, a1, 4, 5u, "phLibNfc_VldtEepromCheckSysConfigParams");
        sub_297E4E1B4(2, a1, 4, 5u, "phLibNfc_VldtEepromCheckComDiscParams");
        if (*(a3 + 551) == 1)
        {
          *(a3 + 544) &= ~4u;
        }

        else
        {
          *(a3 + 551) = 1;
        }

        if (*(a3 + 552) == 1)
        {
          *(a3 + 544) &= ~8u;
        }

        else
        {
          *(a3 + 552) = 1;
        }

        sub_297E4DFAC(2, a1, 4, 5u, "phLibNfc_VldtEepromCheckComDiscParams");
        sub_297E4E1B4(2, a1, 4, 5u, "phLibNfc_VldtEepromCheckSwpConfigParams");
        v17 = *(a1 + 488);
        if (v17)
        {
          if (*(a3 + 1170) != 1)
          {
            *(a3 + 1170) = 1;
            goto LABEL_67;
          }
        }

        else if (*(a3 + 1170))
        {
          *(a3 + 1170) = 0;
LABEL_67:
          v18 = *(a3 + 1132) | 1;
LABEL_68:
          if ((v17 & 2) != 0)
          {
            if (*(a3 + 1172) != 1)
            {
              *(a3 + 1172) = 1;
              goto LABEL_74;
            }
          }

          else if (*(a3 + 1172))
          {
            *(a3 + 1172) = 0;
LABEL_74:
            v19 = v18 | 4;
LABEL_75:
            *(a3 + 1132) = v19;
            sub_297E4DFAC(2, a1, 4, 5u, "phLibNfc_VldtEepromCheckSwpConfigParams");
            sub_297E4E1B4(2, a1, 4, 5u, "phLibNfc_VldtEepromCheckNxpExtnRfDiscParams");
            if (*(a3 + 1421))
            {
              *(a3 + 1421) = 0;
              v20 = *(a3 + 1408) | 0x10;
            }

            else
            {
              v20 = *(a3 + 1408) & 0xFFEF;
            }

            *(a3 + 1408) = v20;
            sub_297E4DFAC(2, a1, 4, 5u, "phLibNfc_VldtEepromCheckNxpExtnRfDiscParams");
            sub_297E4E1B4(2, a1, 4, 5u, "phLibNfc_VldtEepromCheckDisableConfigBit");
            if (!*(a3 + 88))
            {
              *(a3 + 4) &= ~0x10u;
            }

            if (!*(a3 + 148))
            {
              *(a3 + 4) &= ~0x20u;
            }

            if (!*(a3 + 196))
            {
              *(a3 + 4) &= ~0x80u;
            }

            if (!*(a3 + 380))
            {
              *(a3 + 4) &= ~0x100u;
            }

            if (!*(a3 + 580))
            {
              *(a3 + 4) &= ~0x1000u;
            }

            if (!*(a3 + 544))
            {
              *(a3 + 4) &= ~0x400u;
            }

            if (!*(a3 + 1132))
            {
              *(a3 + 4) &= ~0x2000u;
            }

            if (!*(a3 + 1408))
            {
              *(a3 + 4) &= ~0x8000u;
            }

            sub_297E4DFAC(2, a1, 4, 5u, "phLibNfc_VldtEepromCheckDisableConfigBit");
            if ((*(a3 + 4) & 0x1B5B0) != 0)
            {
              v21 = *(a1 + 3273);
              *(a1 + 5440) = a3;
              if (v21 >= 2)
              {
                sub_297E4E0B0(1, a1 + 9792, 4, 1u, "phLibNfc_GetEepromSettingsProc-Retry Failed to Configure Entries");
                v6 = 255;
                goto LABEL_102;
              }
            }

            else
            {
              phOsalNfc_FreeMemory();
              sub_297E79734(a1, off_2A1A935C0, 1);
              if (*(a1 + 5440))
              {
                *(a1 + 5440) = 0;
              }

              if (*(a1 + 3280))
              {
                v6 = 0;
                *(a1 + 3280) = 0;
                goto LABEL_102;
              }
            }

            v6 = 0;
            goto LABEL_102;
          }

          v19 = v18 & 0xFB;
          goto LABEL_75;
        }

        v18 = *(a3 + 1132) & 0xFE;
        goto LABEL_68;
      }

      if (*(a1 + 2986) || *(a1 + 2992) || *(a3 + 936) == 4)
      {
LABEL_30:
        v15 = *(a1 + 2985);
        goto LABEL_31;
      }

      v13 |= 0x8000u;
      *(a3 + 580) = v13;
      v14 = 4;
    }

    *(a3 + 936) = v14;
    goto LABEL_30;
  }

LABEL_102:
  sub_297E4DFAC(2, a1, 4, 5u, "phLibNfc_GetEepromSettingsProc");
  return v6;
}

uint64_t sub_297EF10CC(uint64_t a1, uint64_t a2)
{
  sub_297E4E1B4(2, a1, 4, 5u, "phLibNfc_SetEepromStngs");
  if (a1)
  {
    v4 = *(a1 + 5440);
    if (v4)
    {
      a2 = sub_297E64020(*(a1 + 3088), v4, sub_297E5BA84, a1);
    }
  }

  else
  {
    a2 = 1;
    sub_297E4E0B0(2, 0, 4, 1u, "phLibNfc_SetEepromStngs :Invalid LibNfc Ctx ");
  }

  sub_297E4DFAC(2, a1, 4, 5u, "phLibNfc_SetEepromStngs");
  return a2;
}

uint64_t sub_297EF117C(uint64_t a1, uint64_t a2)
{
  sub_297E4E1B4(2, a1, 4, 5u, "phLibNfc_SetEepromStngsProc");
  if (a1)
  {
    if (*(a1 + 3280))
    {
      phOsalNfc_FreeMemory();
      *(a1 + 3280) = 0;
    }

    *(a1 + 5440) = 0;
    ++*(a1 + 3273);
    sub_297E79810(a1, off_2A1A935C0, 2u);
  }

  else
  {
    a2 = 1;
    sub_297E4E0B0(2, 0, 4, 1u, "phLibNfc_SetEepromStngsProc :Invalid LibNfc Ctx");
  }

  sub_297E4DFAC(2, a1, 4, 5u, "phLibNfc_SetEepromStngsProc");
  return a2;
}

uint64_t sub_297EF123C(uint64_t a1)
{
  sub_297E4E1B4(2, a1, 4, 5u, "phLibNfc_GetRtngTable");
  if (a1)
  {
    if (*(a1 + 3204) == 1 && *(a1 + 6664))
    {
      v2 = 0;
    }

    else
    {
      v2 = sub_297F06DE4(*(a1 + 3088), sub_297E5BA84, a1);
    }
  }

  else
  {
    v2 = 1;
    sub_297E4E0B0(2, 0, 4, 1u, "Invalid parameter, Libnfc Context is Invalid");
  }

  sub_297E4DFAC(2, a1, 4, 5u, "phLibNfc_GetRtngTable");
  return v2;
}

uint64_t sub_297EF12FC(uint64_t a1, uint64_t a2, _BYTE *a3)
{
  sub_297E4E1B4(2, a1, 4, 5u, "phLibNfc_GetRtngTableProc");
  if (!a1)
  {
    a2 = 1;
    sub_297E4E0B0(2, 0, 4, 1u, "Invalid parameter, Libnfc Context is Invalid");
    goto LABEL_9;
  }

  if (!a2)
  {
    if (a3 && *a3 && *a3 != 255)
    {
      if (sub_297E8D274(a1, a3) != 1)
      {
        sub_297E79734(a1, off_2A1A935C0, 1);
        goto LABEL_7;
      }

      if (*(a1 + 3274) >= 2u)
      {
        sub_297E4E0B0(1, a1 + 9792, 4, 1u, "phLibNfc_GetRtngTableProc-Retry Failed to Restore Routing Entries");
        a2 = 255;
        goto LABEL_9;
      }
    }

    sub_297E4E0B0(1, a1 + 9792, 4, 4u, "phLibNfc_GetRtngTableProc:Continue sequence which will perform basic routing entries");
LABEL_7:
    a2 = 0;
  }

LABEL_9:
  sub_297E4DFAC(2, a1, 4, 5u, "phLibNfc_GetRtngTableProc");
  return a2;
}

uint64_t sub_297EF142C(uint64_t a1)
{
  sub_297E4E1B4(2, a1, 4, 5u, "phLibNfc_ValSetLstnModeRtngProc");
  if (a1)
  {
    ++*(a1 + 3274);
    sub_297E79810(a1, off_2A1A935C0, 2u);
    v2 = 0;
  }

  else
  {
    v2 = 1;
    sub_297E4E0B0(2, 0, 4, 1u, "Invalid parameter, Libnfc Context is Invalid");
  }

  sub_297E4DFAC(2, a1, 4, 5u, "phLibNfc_ValSetLstnModeRtngProc");
  return v2;
}

uint64_t sub_297EF14D4(_BYTE *a1, uint64_t a2)
{
  sub_297E4E1B4(2, a1, 4, 5u, "phLibNfc_RfDiscMapping");
  if (a1)
  {
    if (a1[2985] == 1 || a1[2986] == 1 || a1[2992] == 1)
    {
      a2 = sub_297E5C1C4(a1);
    }

    else
    {
      sub_297E4E0B0(1, (a1 + 9792), 4, 4u, "phLibNfc_RfDiscMapping : skip RF_DISCOVER_MAP_CMD ");
      a2 = 0;
    }
  }

  sub_297E4DFAC(2, a1, 4, 5u, "phLibNfc_RfDiscMapping");
  return a2;
}

uint64_t sub_297EF15A4(void *a1, uint64_t a2)
{
  sub_297E4E1B4(2, a1, 4, 5u, "phLibNfc_VldteEepromStngsComp");
  if (!a1)
  {
    sub_297E4E0B0(2, 0, 4, 1u, "phLibNfc_VldteEepromStngsComp :Invalid LibNfc Ctx received from NCI");
    v4 = 49;
    goto LABEL_14;
  }

  if (a1[680])
  {
    phOsalNfc_FreeMemory();
    a1[680] = 0;
LABEL_7:
    a1[410] = 0;
    goto LABEL_8;
  }

  if (a1[410])
  {
    phOsalNfc_FreeMemory();
    goto LABEL_7;
  }

LABEL_8:
  if (a2)
  {
    if (a2 != 143)
    {
      sub_297E50DB0(1, (a1 + 1224), 4, 1u, "phLibNfc_VldteEepromStngsComp: Internal LibNfc status = ");
      a2 = 255;
    }

    v5 = 119;
  }

  else
  {
    v5 = 118;
  }

  v4 = sub_297E4F450(a1[1223], v5, a2, 0, 0);
LABEL_14:
  sub_297E4DFAC(2, a1, 4, 5u, "phLibNfc_VldteEepromStngsComp");
  return v4;
}

uint64_t sub_297EF16B0(uint64_t a1)
{
  sub_297E4E1B4(2, a1, 4, 5u, "phLibNfc_SetRfSettingsCmd");
  if (!a1)
  {
    goto LABEL_18;
  }

  if (!*(a1 + 3296))
  {
    sub_297E4E0B0(1, a1 + 9792, 4, 1u, "phLibNfc_SetRfSettingsCmd: Number of configurations to be set is 0");
LABEL_18:
    v15 = 0;
    goto LABEL_22;
  }

  *(a1 + 3297) = 0;
  phOsalNfc_SetMemory();
  v2 = 0;
  v3 = 0;
  if (*(a1 + 3296) >= 0xAu)
  {
    v4 = 10;
  }

  else
  {
    v4 = *(a1 + 3296);
  }

  if (v4 <= 1)
  {
    v5 = 1;
  }

  else
  {
    v5 = v4;
  }

  v6 = 1;
  while (1)
  {
    v7 = *(a1 + 3288);
    v8 = *(v7 + v2 + 2);
    v9 = v8 <= 0xFD;
    v10 = 253 - v8;
    if (!v9)
    {
      v10 = 0;
    }

    v11 = -v10;
    v12 = v2 + v11;
    if (v12 > 0xFE)
    {
      break;
    }

    v13 = v11;
    phOsalNfc_MemCopy();
    v2 = v12;
    v14 = v13 + v6;
    if (v14 >= 0x100)
    {
      LOBYTE(v14) = 0;
    }

    v6 = v14;
    if (v4 <= ++v3)
    {
      v7 = *(a1 + 3288);
      v3 = v5;
      goto LABEL_20;
    }
  }

  v12 = v2;
LABEL_20:
  *(a1 + 3296) -= v3;
  *(a1 + 3288) = v7 + v12;
  *(a1 + 3298) = v3;
  v16 = v2 + 1;
  *(a1 + 3297) = v16;
  v15 = sub_297E5DD98(*(a1 + 3088), a1 + 3298, v16, sub_297E5BA84, a1);
  if (v15 == 111)
  {
    *(a1 + 3296) += v3;
    *(a1 + 3288) -= v12;
  }

LABEL_22:
  sub_297E4DFAC(2, a1, 4, 5u, "phLibNfc_SetRfSettingsCmd");
  return v15;
}

uint64_t sub_297EF1878(uint64_t a1, uint64_t a2)
{
  sub_297E4E1B4(2, a1, 4, 5u, "phLibNfc_SetRfSettingsProc");
  if (a1)
  {
    if (*(a1 + 2985) == 1 || *(a1 + 2986) == 1)
    {
      if (!a2)
      {
        goto LABEL_9;
      }
    }

    else if (!a2 && *(a1 + 2992) == 1)
    {
LABEL_9:
      if (*(a1 + 3560) >= *(a1 + 3556) || !*(a1 + 3296))
      {
        sub_297E4E0B0(1, a1 + 9792, 4, 4u, "All Rf configs are set");
        a2 = 0;
        goto LABEL_13;
      }
    }

    sub_297E79734(a1, *(a1 + 2960), 1);
    goto LABEL_13;
  }

  a2 = 1;
  sub_297E4E0B0(2, 0, 4, 1u, "phLibNfc_SetRfSettingsProc : Invalid Param");
LABEL_13:
  sub_297E4DFAC(2, a1, 4, 5u, "phLibNfc_SetRfSettingsProc");
  return a2;
}

uint64_t sub_297EF1980(uint64_t a1, uint64_t a2)
{
  v19 = 0;
  sub_297E4E1B4(2, a1, 4, 5u, "phLibNfc_SetRfSettingsSeqComplete");
  if (!a1)
  {
    sub_297E4E0B0(2, 0, 4, 1u, "phLibNfc_SetRfSettingsSeqComplete: Invalid input parameter");
    goto LABEL_15;
  }

  phOsalNfc_SetMemory();
  if (a2)
  {
    v4 = *(a1 + 3196) == 2;
    v5 = a2 == 147;
    if (a2 == 143)
    {
      v6 = 143;
    }

    else
    {
      v6 = 255;
    }

    if (v5 && v4)
    {
      v7 = 118;
    }

    else
    {
      v7 = 119;
    }

    if (v5 && v4)
    {
      v8 = 0;
    }

    else
    {
      v8 = v6;
    }

    v19 = 1;
    goto LABEL_13;
  }

  if (!*(a1 + 3296))
  {
    sub_297E4E0B0(1, a1 + 9792, 4, 4u, "All Rf configs are set");
    sub_297E4E0B0(1, a1 + 9792, 4, 4u, "NFCC Hard reset success, verifying TML baud rate");
    if (*(a1 + 2987) == 1 || *(a1 + 2992) == 1 || *(a1 + 3104) == 2)
    {
      v13 = "Configuring of baud rate is not necessary.";
    }

    else
    {
      sub_297E4E0B0(1, a1 + 9792, 4, 4u, "HSU baud rate different, changing it to the default baud rate (115200)");
      if (phTmlNfc_ConfigHsuBaudRate())
      {
        v19 = 1;
        sub_297E50EBC(1, a1 + 9792, 4, 1u, "phLibNfc_SetRfSettingsSeqComplete : Config Hsu Baud Rate failed Status ");
        goto LABEL_35;
      }

      v13 = "phLibNfc_SetRfSettingsSeqComplete: TML HSU Baudrate Set to default baud rate";
    }

    sub_297E4E0B0(1, a1 + 9792, 4, 4u, v13);
    if (*(a1 + 3224) == 1)
    {
      if (phTmlNfc_IoCtl())
      {
LABEL_34:
        sub_297E4E0B0(1, a1 + 9792, 4, 1u, "Failed to Hard reset the controller, return failed");
        v19 = 1;
LABEL_35:
        v7 = 119;
        v8 = 255;
LABEL_13:
        a2 = sub_297E4F450(*(a1 + 9784), v7, v8, 0, &v19);
        goto LABEL_15;
      }

      v14 = sub_297EA76A4(*(a1 + 9792), *(a1 + 3000));
    }

    else
    {
      v14 = phTmlNfc_IoCtl();
    }

    if (!v14)
    {
      sub_297E4E0B0(1, a1 + 9792, 4, 4u, "phLibNfc_SetRfSettingsSeqComplete:NFCC hard reset happened, performing Re-Init");
      *(a1 + 2930) = 0;
      phOsalNfc_SetMemory();
      *(a1 + 2931) = 1;
      if (*(a1 + 2984) == 1 || *(a1 + 2985) == 1 || *(a1 + 2986) == 1 || *(a1 + 2992) == 1)
      {
        sub_297F09BB4(*(a1 + 3088), 0);
        sub_297F09B18(*(a1 + 3088), 0);
      }

      *(a1 + 2932) = 1;
      *(a1 + 2960) = off_2A1A90DB8;
      *(a1 + 2952) = 0;
      *(a1 + 2954) = 0;
      v15 = off_2A1A90DB8[0];
      if (off_2A1A90DB8[0])
      {
        v15 = 0;
        v16 = off_2A1A90DC8;
        do
        {
          ++v15;
          v17 = *v16;
          v16 += 2;
        }

        while (v17);
      }

      *(a1 + 2953) = v15;
      a2 = sub_297E5588C(a1, 0, 0);
      if (a2 != 13)
      {
        sub_297E4E0B0(1, a1 + 9792, 4, 1u, "NFCC Re-Init failed, return failed");
        sub_297E8D804(a1);
        v19 = 1;
        if (a2 == 143)
        {
          v18 = 143;
        }

        else
        {
          v18 = 137;
        }

        if (a2 == 179)
        {
          v8 = 180;
        }

        else
        {
          v8 = v18;
        }

        v7 = 119;
        goto LABEL_13;
      }

      goto LABEL_15;
    }

    goto LABEL_34;
  }

  sub_297E4E0B0(1, a1 + 9792, 4, 4u, "Re-Initialize the sequence to perform set config");
  *(a1 + 2960) = off_2A1A93750;
  *(a1 + 2952) = 0;
  *(a1 + 2954) = 0;
  v10 = off_2A1A93750[0];
  if (off_2A1A93750[0])
  {
    v10 = 0;
    v11 = off_2A1A93760;
    do
    {
      ++v10;
      v12 = *v11;
      v11 += 2;
    }

    while (v12);
  }

  *(a1 + 2953) = v10;
  a2 = sub_297E5588C(a1, 0, 0);
  if (a2 != 13)
  {
    sub_297E50EBC(1, a1 + 9792, 4, 1u, "Set Rf Settings sequence failed to Set remaining configurations, failed with status=");
    v19 = 1;
    if (a2 == 143)
    {
      v8 = 143;
    }

    else
    {
      v8 = 255;
    }

    v7 = 119;
    goto LABEL_13;
  }

LABEL_15:
  sub_297E4DFAC(2, a1, 4, 5u, "phLibNfc_SetRfSettingsSeqComplete");
  return a2;
}

uint64_t sub_297EF1DB0(uint64_t a1, uint64_t a2)
{
  sub_297E4E1B4(2, a1, 4, 5u, "phLibNfc_SetCfgSignedCmd");
  if (!a1)
  {
    v18 = "Invalid parameter, Libnfc Context is Invalid";
    a2 = 1;
    v19 = 2;
    v20 = 0;
LABEL_23:
    sub_297E4E0B0(v19, v20, 4, 1u, v18);
    goto LABEL_24;
  }

  if (*(a1 + 3560) >= *(a1 + 3556))
  {
    v18 = "phLibNfc_SetRfSignedCmd: Number of configurations to be set is 0";
    v20 = a1 + 9792;
    v19 = 1;
    goto LABEL_23;
  }

  *(a1 + 3297) = 0;
  phOsalNfc_SetMemory();
  v4 = *(a1 + 3288);
  v5 = *(a1 + 3560);
  v6 = *(a1 + 3556) - v5;
  sub_297E4E1B4(2, a1, 4, 5u, "phLibNfc_BuildSetCfgSignedCmdPayload");
  if (v4)
  {
    v7 = v6 > 0xF;
  }

  else
  {
    v7 = 0;
  }

  v8 = v7;
  if (v8 == 1)
  {
    v9 = 0;
    v10 = 0;
    v11 = v4 + v5;
    while (1)
    {
      v12 = (v11 + v10);
      v13 = *(v11 + v10) & 0xFE;
      v14 = v13 == 160;
      if (v13 == 160)
      {
        v15 = 2;
      }

      else
      {
        v15 = 3;
      }

      if (v14)
      {
        v16 = 3;
      }

      else
      {
        v16 = 4;
      }

      v17 = (v16 + v12[v15]) + v10;
      if (v17 >= 0xFF)
      {
        sub_297E4E0B0(1, a1 + 9792, 4, 1u, "phLibNfc_BuildSetCfgSignedCmdPayload:data payload size exceeded, signature not copied");
        goto LABEL_28;
      }

      phOsalNfc_MemCopy();
      if (*v12 == 240)
      {
        break;
      }

      ++v9;
      v10 = v17;
      if (v17 == 254)
      {
        LOBYTE(v10) = -2;
        goto LABEL_28;
      }
    }

    LOBYTE(v10) = v17;
LABEL_28:
    sub_297E4DFAC(2, a1, 4, 5u, "phLibNfc_BuildSetCfgSignedCmdPayload");
    if (v9 != 0)
    {
      *(a1 + 3298) = v9;
      a2 = sub_297F08C18(*(a1 + 3088), a1 + 3298, v10 + 1, sub_297E5BA84, a1);
      if (a2 == 13)
      {
        *(a1 + 3560) += v10;
      }

      else
      {
        *(a1 + 3560) = 0;
      }
    }

    else
    {
      a2 = 0;
    }
  }

  else
  {
    sub_297E4DFAC(2, a1, 4, 5u, "phLibNfc_BuildSetCfgSignedCmdPayload");
    a2 = 1;
  }

LABEL_24:
  sub_297E4DFAC(2, a1, 4, 5u, "phLibNfc_SetCfgSignedCmd");
  return a2;
}

uint64_t sub_297EF2030(uint64_t a1, uint64_t a2)
{
  v17 = 0;
  sub_297E4E1B4(2, a1, 4, 5u, "phLibNfc_SetRfSignedSeqComplete");
  if (!a1)
  {
    sub_297E4E0B0(2, 0, 4, 1u, "phLibNfc_SetRfSignedSeqComplete: Invalid input parameter");
    goto LABEL_14;
  }

  phOsalNfc_SetMemory();
  if (a2)
  {
    v4 = 118;
    if (a2 != 130 && a2 != 143)
    {
      v5 = *(a1 + 3196) == 2;
      v6 = a2 == 147;
      if (v6 && v5)
      {
        v4 = 118;
      }

      else
      {
        v4 = 119;
      }

      if (v6 && v5)
      {
        a2 = 0;
      }

      else
      {
        a2 = 255;
      }
    }

    v17 = 1;
    goto LABEL_12;
  }

  if (*(a1 + 3560) < *(a1 + 3556))
  {
    sub_297E4E0B0(1, a1 + 9792, 4, 4u, "Re-Initialize the sequence to perform set signed config");
    *(a1 + 2960) = off_2A1A93780;
    *(a1 + 2952) = 0;
    *(a1 + 2954) = 0;
    v8 = off_2A1A93780[0];
    if (off_2A1A93780[0])
    {
      v8 = 0;
      v9 = off_2A1A93790;
      do
      {
        ++v8;
        v10 = *v9;
        v9 += 2;
      }

      while (v10);
    }

    *(a1 + 2953) = v8;
    if (sub_297E5588C(a1, 0, 0) == 13)
    {
      a2 = 13;
      goto LABEL_14;
    }

    v13 = "Set Rf signed config sequence failed to Set remaining configurations, return failed";
    goto LABEL_32;
  }

  sub_297E4E0B0(1, a1 + 9792, 4, 4u, "All Rf configs are set");
  sub_297E4E0B0(1, a1 + 9792, 4, 4u, "NFCC Hard reset success, verifying TML baud rate");
  if (*(a1 + 2987) == 1 || *(a1 + 2992) == 1 || *(a1 + 3104) == 2)
  {
    v11 = "TML HSU baud rate is set to default, perform LibNfc Re-Init";
  }

  else
  {
    sub_297E4E0B0(1, a1 + 9792, 4, 4u, "HSU baud rate different, changing it to the default baud rate (115200)");
    if (phTmlNfc_ConfigHsuBaudRate())
    {
      v17 = 1;
      sub_297E50EBC(1, a1 + 9792, 4, 1u, "phLibNfc_SetRfSignedSeqComplete : Config Hsu Baud Rate failed ");
      goto LABEL_33;
    }

    v11 = "phLibNfc_SetRfSignedSeqComplete: TML HSU Baud rate Set to default baud rate";
  }

  sub_297E4E0B0(1, a1 + 9792, 4, 4u, v11);
  if (*(a1 + 3224) == 1)
  {
    if (phTmlNfc_IoCtl())
    {
LABEL_31:
      v13 = "Failed to Hard reset the controller, return failed";
LABEL_32:
      sub_297E4E0B0(1, a1 + 9792, 4, 1u, v13);
      v17 = 1;
LABEL_33:
      v4 = 119;
      a2 = 255;
LABEL_12:
      a2 = sub_297E4F450(*(a1 + 9784), v4, a2, 0, &v17);
      goto LABEL_14;
    }

    v12 = sub_297EA76A4(*(a1 + 9792), *(a1 + 3000));
  }

  else
  {
    v12 = phTmlNfc_IoCtl();
  }

  if (v12)
  {
    goto LABEL_31;
  }

  sub_297E4E0B0(1, a1 + 9792, 4, 4u, "phLibNfc_SetRfSignedSeqComplete:NFCC hard reset happened, performing Re-Init");
  *(a1 + 2930) = 0;
  phOsalNfc_SetMemory();
  *(a1 + 2931) = 1;
  if (*(a1 + 2984) == 1 || *(a1 + 2985) == 1 || *(a1 + 2986) == 1 || *(a1 + 2992) == 1)
  {
    sub_297F09BB4(*(a1 + 3088), 0);
    sub_297F09B18(*(a1 + 3088), 0);
  }

  *(a1 + 2932) = 1;
  *(a1 + 2960) = off_2A1A90DB8;
  *(a1 + 2952) = 0;
  *(a1 + 2954) = 0;
  v14 = off_2A1A90DB8[0];
  if (off_2A1A90DB8[0])
  {
    v14 = 0;
    v15 = off_2A1A90DC8;
    do
    {
      ++v14;
      v16 = *v15;
      v15 += 2;
    }

    while (v16);
  }

  *(a1 + 2953) = v14;
  a2 = sub_297E5588C(a1, 0, 0);
  if (a2 != 13)
  {
    sub_297E4E0B0(1, a1 + 9792, 4, 1u, "NFCC Re-Init failed, return failed");
    sub_297E8D804(a1);
    v17 = 1;
    if (a2 == 179)
    {
      a2 = 180;
    }

    else
    {
      a2 = 137;
    }

    v4 = 119;
    goto LABEL_12;
  }

LABEL_14:
  sub_297E4DFAC(2, a1, 4, 5u, "phLibNfc_SetRfSignedSeqComplete");
  return a2;
}

uint64_t sub_297EF243C(uint64_t a1)
{
  sub_297E4E1B4(2, a1, 4, 5u, "phLibNfc_ConfigHsuBrCmd");
  if (!a1 || *(a1 + 2987) == 1 || *(a1 + 2992) == 1)
  {
    HsuMaxBaudRate = 0;
  }

  else
  {
    if (!*(a1 + 6104) || *(a1 + 3204) > 1u)
    {
      goto LABEL_18;
    }

    if (!sub_297E7F0C8(*(a1 + 9784), *(a1 + 3036), *(a1 + 3136)))
    {
      sub_297E4E0B0(1, a1 + 9792, 4, 1u, "phLibNfc_ConfigHsuBrCmd: Invalid platform type");
    }

    HsuMaxBaudRate = phTmlNfc_GetHsuMaxBaudRate();
    if (!HsuMaxBaudRate)
    {
LABEL_18:
      if (phTmlNfc_ConfigHsuBaudRate())
      {
        sub_297E50EBC(1, a1 + 9792, 4, 1u, "phLibNfc_ConfigHsuBrCmd : Check Hsu Baud Rate failed status");
        HsuMaxBaudRate = 51;
      }

      else
      {
        sub_297E50EBC(1, a1 + 9792, 4, 4u, "phLibNfc_ConfigHsuBrCmd: Check succeeded with baudrate");
        phOsalNfc_Delay();
        v4 = phTmlNfc_ConfigHsuBaudRate();
        if (v4)
        {
          HsuMaxBaudRate = v4;
          sub_297E50EBC(1, a1 + 9792, 4, 1u, "phLibNfc_ConfigHsuBrCmd : Re-Config to existing Baud Rate failed status");
        }

        else
        {
          sub_297E50EBC(1, a1 + 9792, 4, 4u, "phLibNfc_ConfigHsuBrCmd: Re-Config to existing Baud Rate succeeded");
          phOsalNfc_Delay();
          HsuMaxBaudRate = sub_297F05D1C(*(a1 + 3088), *(a1 + 2996), sub_297E5BA84, a1);
        }
      }
    }
  }

  sub_297E4DFAC(2, a1, 4, 5u, "phLibNfc_ConfigHsuBrCmd");
  return HsuMaxBaudRate;
}

uint64_t sub_297EF2620(uint64_t a1, uint64_t a2, _WORD *a3)
{
  sub_297E4E1B4(2, a1, 4, 5u, "phLibNfc_ConfigHsuBrResp");
  if (!a1 || !a3)
  {
    v6 = "phLibNfc_ConfigHsuBrResp : Libnfc Context or pInfo is Invalid";
    v7 = 2;
    v8 = a1;
LABEL_6:
    sub_297E4E0B0(v7, v8, 4, 1u, v6);
LABEL_7:
    a2 = 255;
    goto LABEL_8;
  }

  if (a2)
  {
    sub_297E50EBC(2, 0, 4, 1u, "phLibNfc_ConfigHsuBrResp: Failed to configure NFCC HSU baud rate");
    goto LABEL_8;
  }

  a2 = *a3;
  if (!*a3)
  {
    if (*(a1 + 3209))
    {
      *(a1 + 3209) = 0;
      *(a1 + 3104) = *(a1 + 2996);
      sub_297E50EBC(1, a1 + 9792, 4, 4u, "NFCC Configure HSU baud rate success after bBrRetryCnt");
      a2 = 0;
    }

    else
    {
      sub_297E79734(a1, *(a1 + 2960), 1);
      sub_297E4E0B0(1, a1 + 9792, 4, 4u, "NFCC Configure HSU baud rate success");
      a2 = phTmlNfc_ConfigHsuBaudRate();
      if (a2)
      {
        sub_297E4E0B0(1, a1 + 9792, 4, 1u, "phLibNfc_ConfigHsuBrResp: Failed to updated TML HSU baud rate");
      }

      else
      {
        *(a1 + 3104) = *(a1 + 2996);
        sub_297E50EBC(1, a1 + 9792, 4, 4u, "phLibNfc_ConfigHsuBrResp: TML HSU Baud rate Set to");
        phOsalNfc_Delay();
      }
    }

    goto LABEL_8;
  }

  if (a2 != 44)
  {
    sub_297E50EBC(1, a1 + 9792, 4, 1u, "NFCC Configure HSU baud rate Failed after bBrRetryCnt");
    *(a1 + 3209) = 0;
    goto LABEL_8;
  }

  v10 = *(a1 + 3088);
  sub_297E50EBC(1, a1 + 9792, 4, 2u, "New HSU BR request failed, bBrRetryCnt");
  if (*(a1 + 3209) > 2u)
  {
    sub_297E50EBC(1, a1 + 9792, 4, 1u, "Baudrate retry reached max count, bBrRetryCnt");
    *(a1 + 3209) = 0;
    goto LABEL_7;
  }

  phTmlNfc_ReadAbort();
  phTmlNfc_FlushTxRxBuffers();
  v11 = phTmlNfc_ConfigHsuBaudRate();
  if (!v10 || v11)
  {
    *(a1 + 3209) = 0;
    v6 = "phLibNfc_ConfigHsuBrResp: Cfg TML to new Baud rate Failed";
    v8 = a1 + 9792;
    v7 = 1;
    goto LABEL_6;
  }

  phOsalNfc_Delay();
  if (sub_297E4EE00(v10 + 936, 0, 3) == 13)
  {
    if (*(a1 + 3209))
    {
      sub_297E79810(a1, *(a1 + 2960), 1u);
      a2 = 0;
      v12 = *(a1 + 3209) + 1;
    }

    else
    {
      a2 = 0;
      v12 = 1;
    }
  }

  else
  {
    v12 = 1;
    sub_297E4E0B0(1, a1 + 9792, 4, 1u, "phLibNfc_ConfigHsuBrResp: Nci Read request failed");
    sub_297E50EBC(1, a1 + 9792, 4, 1u, "pLibContext->tPlatformInfo.bBrRetryCnt");
    a2 = 255;
  }

  *(a1 + 3209) = v12;
LABEL_8:
  sub_297E4DFAC(2, a1, 4, 5u, "phLibNfc_ConfigHsuBrResp");
  return a2;
}

uint64_t sub_297EF2928(uint64_t a1)
{
  sub_297E4E1B4(2, a1, 4, 5u, "phLibNfc_ReApplyHsuBrCmd");
  if (a1)
  {
    if (*(a1 + 2987) == 1 || *(a1 + 2992) == 1)
    {
      v2 = 0;
    }

    else
    {
      v4 = sub_297E55EF8(a1, *(a1 + 2960));
      if (*(a1 + 3104) == 2 && v4 == 5)
      {
        v2 = 0;
        *(a1 + 3209) = 0;
      }

      else
      {
        v2 = sub_297F05D1C(*(a1 + 3088), *(a1 + 2996), sub_297E5BA84, a1);
      }
    }
  }

  else
  {
    sub_297E4E0B0(2, 0, 4, 1u, "phLibNfc_ReApplyHsuBrCmd: Invalid LIBNFC context!!");
    v2 = 255;
  }

  sub_297E4DFAC(2, a1, 4, 5u, "phLibNfc_ReApplyHsuBrCmd");
  return v2;
}

uint64_t sub_297EF2A1C(uint64_t a1, uint64_t a2)
{
  sub_297E4E1B4(2, a1, 4, 5u, "phLibNfc_ConfigHsuBrSeqComplete");
  if (a1)
  {
    if (a2)
    {
      *(a1 + 3104) = 2;
      sub_297E4E0B0(1, a1 + 9792, 4, 1u, "phLibNfc_ConfigHsuBrSeqComplete: NFCC Config Baudrate failed");
      v4 = 119;
    }

    else
    {
      v4 = 118;
    }

    a2 = sub_297E4F450(*(a1 + 9784), v4, a2, 0, 0);
  }

  else
  {
    sub_297E4E0B0(2, 0, 4, 1u, "phLibNfc_ConfigHsuBrSeqComplete:Invalid LibNfc Ctx received from NCI");
  }

  sub_297E4DFAC(2, a1, 4, 5u, "phLibNfc_ConfigHsuBrSeqComplete");
  return a2;
}

uint64_t sub_297EF2AF0(uint64_t a1)
{
  sub_297E4E1B4(2, a1, 4, 5u, "phLibNfc_StartRfFieldOn");
  if (a1)
  {
    *(a1 + 6052) = 1;
    v2 = sub_297F08690(*(a1 + 3088), 1, sub_297E5BA84, a1);
    if (v2 != 13)
    {
      *(a1 + 6052) = 0;
    }
  }

  else
  {
    sub_297E4E0B0(2, 0, 4, 1u, "phLibNfc_AntennaTestCmd:Invalid Context");
    v2 = 255;
  }

  sub_297E4DFAC(2, a1, 4, 5u, "phLibNfc_StartRfFieldOn");
  return v2;
}

uint64_t sub_297EF2BB8(uint64_t a1)
{
  v4 = 0;
  sub_297E4E1B4(2, a1, 4, 5u, "phLibNfc_AntennaTestCmd");
  if (a1)
  {
    phOsalNfc_SetMemory();
    sub_297E4E1B4(2, a1, 4, 5u, "phLibNfc_SetAntennaTestParams");
    LOBYTE(v4) = v4 & 0xFE | *(a1 + 6036) & 1;
    sub_297E4DFAC(2, a1, 4, 5u, "phLibNfc_SetAntennaTestParams");
    phOsalNfc_Delay();
    v2 = sub_297F08538(*(a1 + 3088), &v4, sub_297E5BA84, a1);
  }

  else
  {
    v2 = 255;
    phOsalNfc_SetMemory();
    sub_297E4E0B0(2, 0, 4, 1u, "phLibNfc_AntennaTestCmd:Invalid Context");
  }

  sub_297E4DFAC(2, a1, 4, 5u, "phLibNfc_AntennaTestCmd");
  return v2;
}

uint64_t sub_297EF2CEC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  sub_297E4E1B4(2, a1, 4, 5u, "phLibNfc_AntennaTestResp");
  if (a1)
  {
    phOsalNfc_SetMemory();
    if (!a2 && a3 && (v6 = *a3) != 0 && *(a3 + 8) == 3)
    {
      if (*v6)
      {
        v7 = "phLibNfc_AntennaTestResp: received failed status";
      }

      else
      {
        if (*(a1 + 6036))
        {
          a2 = 0;
          v9 = v6[1];
          *(a1 + 6048) = v9;
          *(a1 + 6048) = v9 | (v6[2] << 8);
          *(a1 + 6044) |= 1u;
          goto LABEL_10;
        }

        v7 = "phLibNfc_AntennaTestResp: no of configs none";
      }
    }

    else
    {
      v7 = "phLibNfc_AntennaTestResp: Antenna Self Test failed";
    }

    sub_297E4E0B0(1, a1 + 9792, 4, 1u, v7);
    a2 = 255;
  }

LABEL_10:
  sub_297E4DFAC(2, a1, 4, 5u, "phLibNfc_AntennaTestResp");
  return a2;
}

uint64_t sub_297EF2E0C(uint64_t a1)
{
  sub_297E4E1B4(2, a1, 4, 5u, "phLibNfc_StopRfFieldOn");
  if (a1)
  {
    v2 = sub_297F08690(*(a1 + 3088), 0, sub_297E5BA84, a1);
    if (v2 == 13)
    {
      *(a1 + 6052) = 0;
    }
  }

  else
  {
    sub_297E4E0B0(2, 0, 4, 1u, "phLibNfc_AntennaTestCmd:Invalid Context");
    v2 = 255;
  }

  sub_297E4DFAC(2, a1, 4, 5u, "phLibNfc_StopRfFieldOn");
  return v2;
}

uint64_t sub_297EF2EC4(uint64_t a1, int a2)
{
  sub_297E4E1B4(2, a1, 4, 5u, "phLibNfc_AntennaTestSeqComplete");
  if (a1)
  {
    if (a2 == 143)
    {
      v4 = 143;
LABEL_21:
      v5 = sub_297E4F450(*(a1 + 9784), 118, v4, 0, 0);
      goto LABEL_22;
    }

    if (!*(a1 + 6052) || *(a1 + 2960) == &qword_2A1A936C0)
    {
      if (a2)
      {
        v9 = "phLibNfc_AntennaTestSeqComplete: Failed status received from NFCC";
      }

      else
      {
        if (*(a1 + 6036) & 1) == 0 || (*(a1 + 6044))
        {
          v4 = 0;
          goto LABEL_21;
        }

        v9 = "phLibNfc_AntennaTestSeqComplete:TxLDO Current requested,same is not received";
      }

      sub_297E4E0B0(1, a1 + 9792, 4, 2u, v9);
    }

    else
    {
      *(a1 + 2960) = &qword_2A1A936C0;
      *(a1 + 2952) = 0;
      *(a1 + 2954) = 0;
      v6 = qword_2A1A936C0;
      if (qword_2A1A936C0)
      {
        v6 = 0;
        v7 = &qword_2A1A936D0;
        do
        {
          ++v6;
          v8 = *v7;
          v7 += 2;
        }

        while (v8);
      }

      *(a1 + 2953) = v6;
      if (sub_297E5588C(a1, 0, 0) == 13)
      {
        v5 = 13;
        goto LABEL_22;
      }

      sub_297E4E0B0(1, a1 + 9792, 4, 1u, "phLibNfc_AntennaTestSeqComplete: could not start RF Off sequence");
    }

    v4 = 255;
    goto LABEL_21;
  }

  sub_297E4E0B0(2, 0, 4, 1u, "phLibNfc_AntennaTestSeqComplete: Invalid LibNfc Ctx received from NCI");
  v5 = 255;
LABEL_22:
  sub_297E4DFAC(2, a1, 4, 5u, "phLibNfc_AntennaTestSeqComplete");
  return v5;
}

uint64_t sub_297EF305C(uint64_t a1, uint64_t a2)
{
  v18 = *MEMORY[0x29EDCA608];
  bzero(v14, 0x6E8uLL);
  sub_297E4E1B4(2, a1, 4, 5u, "phLibNfc_ConfigLoggingCmd");
  if (a1)
  {
    v4 = *(a1 + 104);
    v14[1] = 0x10000;
    v15 = 16;
    v17 = 0;
    v5 = v4 >> 4;
    if ((v4 & 0x5E7F) != 0x5E7F)
    {
      if ((v4 & 0x5E7F) != 0)
      {
        v9 = *(a1 + 2992);
        v7 = *(a1 + 2985);
        v10 = vand_s8(vand_s8(vdup_n_s16(v4 >> 3), 0x200010000400080), vshl_u16(vdup_n_s16((*(a1 + 2986) | v7 | v9)), 0x9000800060007));
        v6 = v10.i32[0] | v10.i32[1] | (v4 >> 1) & 0x3C | ((*&v10 | HIDWORD(*&v10)) >> 16) | v5 & (v9 << 10) & 0x400 | v4 & 3;
      }

      else
      {
        LOWORD(v6) = 0;
        v7 = *(a1 + 2985);
      }

LABEL_12:
      v16 = v6;
      if (*(a1 + 2984) == 1)
      {
        v15 = 1040;
        v17 = BYTE1(v4) & 1;
        if (v7 == 1)
        {
          goto LABEL_22;
        }

        v12 = *(a1 + 2986);
      }

      else
      {
        if (v7 == 1)
        {
          v15 = 1040;
          v17 = BYTE1(v4) & 1;
          goto LABEL_22;
        }

        v12 = *(a1 + 2986);
        if (v12 != 1 && *(a1 + 2992) != 1)
        {
          goto LABEL_21;
        }

        v15 = 1040;
        v17 = BYTE1(v4) & 1;
      }

      if (v12 == 1)
      {
        goto LABEL_22;
      }

LABEL_21:
      if (*(a1 + 2992) != 1)
      {
LABEL_23:
        a2 = sub_297E64020(*(a1 + 3088), v14, sub_297E5BA84, a1);
        goto LABEL_24;
      }

LABEL_22:
      v16 = v6 & 0xF7FF | v5 & 0x800;
      goto LABEL_23;
    }

    v7 = *(a1 + 2985);
    v8 = *(a1 + 2985);
    if (*(a1 + 2984) != 1)
    {
      if (v7 == 1)
      {
        v8 = 1;
      }

      else
      {
        v8 = *(a1 + 2985);
        if (*(a1 + 2986) != 1)
        {
          v8 = *(a1 + 2985);
          if (*(a1 + 2992) != 1)
          {
            LOWORD(v6) = 3;
            goto LABEL_12;
          }
        }
      }
    }

    v11 = *(a1 + 2986) | v8 | *(a1 + 2992);
    LOWORD(v6) = (v11 << 7) | 0x1F | ((*(a1 + 2992) & 1) << 10) | ((v11 & 1) << 6) | ((v11 & 1) << 8) | (32 * (v11 & 1)) | ((v11 & 1) << 9);
    goto LABEL_12;
  }

LABEL_24:
  sub_297E4DFAC(2, a1, 4, 5u, "phLibNfc_ConfigLoggingCmd");
  return a2;
}

uint64_t sub_297EF32FC(uint64_t a1, uint64_t a2)
{
  sub_297E4E1B4(2, a1, 4, 5u, "phLibNfc_GetMeasuredFsRssiCfgCmd");
  if (a1)
  {
    if ((*(a1 + 2985) == 1 || *(a1 + 2986) == 1 || *(a1 + 2992) == 1) && (*(a1 + 104) & 3) != 0)
    {
      phOsalNfc_SetMemory();
      *(a1 + 3612) |= 0x10000u;
      *(a1 + 5144) |= 0x40000u;
      a2 = sub_297E60AC0(*(a1 + 3088), a1 + 3608, sub_297E5BA84, a1);
    }
  }

  else
  {
    a2 = 255;
  }

  sub_297E4DFAC(2, a1, 4, 5u, "phLibNfc_GetMeasuredFsRssiCfgCmd");
  return a2;
}

uint64_t sub_297EF33E8(uint64_t a1, int a2)
{
  sub_297E4E1B4(2, a1, 4, 5u, "phLibNfc_GetMeasuredFsRssiCfgProc");
  if (!a1)
  {
    v4 = "phLibNfc_GetMeasuredFsRssiCfgProc:Context is Null";
    v5 = 2;
    v6 = 0;
LABEL_14:
    sub_297E4E0B0(v5, v6, 4, 1u, v4);
    v7 = 255;
    goto LABEL_15;
  }

  if (a2)
  {
    v4 = "phLibNfc_GetMeasuredFsRssiCfgProc: Status Failed!";
LABEL_13:
    v6 = a1 + 9792;
    v5 = 1;
    goto LABEL_14;
  }

  if ((*(a1 + 2985) != 1 || *(a1 + 5343) != 4) && (*(a1 + 2986) != 1 || *(a1 + 5343) != 5) && (*(a1 + 2992) != 1 || *(a1 + 5343) != 8))
  {
    v4 = "phLibNfc_GetMeasuredFsRssiCfgProc: Invalid length received!";
    goto LABEL_13;
  }

  v7 = 0;
  *(a1 + 354) = *(a1 + 5331);
  *(a1 + 352) = *(a1 + 5329);
LABEL_15:
  sub_297E4DFAC(2, a1, 4, 5u, "phLibNfc_GetMeasuredFsRssiCfgProc");
  return v7;
}

uint64_t sub_297EF3500(uint64_t a1, uint64_t a2)
{
  sub_297E4E1B4(2, a1, 4, 5u, "phLibNfc_ConfigLoggingSeqComp");
  if (a1)
  {
    if (a2)
    {
      sub_297E4E0B0(1, a1 + 9792, 4, 1u, "phLibNfc_ConfigLoggingSeqComp: Failed");
      v4 = 119;
    }

    else
    {
      v4 = 118;
    }

    a2 = sub_297E4F450(*(a1 + 9784), v4, a2, 0, 0);
  }

  sub_297E4DFAC(2, a1, 4, 5u, "phLibNfc_ConfigLoggingSeqComp");
  return a2;
}

uint64_t sub_297EF35AC(uint64_t a1)
{
  v7 = *MEMORY[0x29EDCA608];
  bzero(v5, 0x6E8uLL);
  sub_297E4E1B4(2, a1, 4, 5u, "phLibNfc_ConfigAssertLoggingCmd");
  if (a1)
  {
    v2 = *(a1 + 32);
    v5[1] = 0x10000;
    v5[384] = 32;
    v6 = v2;
    v3 = sub_297E64020(*(a1 + 3088), v5, sub_297E5BA84, a1);
  }

  else
  {
    v3 = 1;
    sub_297E4E0B0(2, 0, 4, 1u, "Invalid parameter, Libnfc Context is Invalid");
  }

  sub_297E4DFAC(2, a1, 4, 5u, "phLibNfc_ConfigAssertLoggingCmd");
  return v3;
}

uint64_t sub_297EF36B4(uint64_t a1, uint64_t a2)
{
  sub_297E4E1B4(2, a1, 4, 5u, "phLibNfc_ConfigAssertLoggingSeqComp");
  if (a1)
  {
    if (a2)
    {
      sub_297E4E0B0(1, a1 + 9792, 4, 1u, "phLibNfc_ConfigAssertLoggingSeqComp: Failed");
      v4 = 119;
    }

    else
    {
      v4 = 118;
    }

    a2 = sub_297E4F450(*(a1 + 9784), v4, a2, 0, 0);
  }

  sub_297E4DFAC(2, a1, 4, 5u, "phLibNfc_ConfigAssertLoggingSeqComp");
  return a2;
}

uint64_t sub_297EF3760(uint64_t a1)
{
  sub_297E4E1B4(2, a1, 4, 5u, "phLibNfc_TriggerRfOnNtf");
  if (a1)
  {
    v2 = sub_297F0888C(*(a1 + 3088), *(a1 + 766), sub_297E5BA84, a1);
  }

  else
  {
    v2 = 1;
    sub_297E4E0B0(2, 0, 4, 1u, "phLibNfc_TriggerRfOnNtf:Invalid Context");
  }

  sub_297E4DFAC(2, a1, 4, 5u, "phLibNfc_TriggerRfOnNtf");
  return v2;
}

uint64_t sub_297EF3808(uint64_t a1, uint64_t a2)
{
  sub_297E4E1B4(2, a1, 4, 5u, "phLibNfc_TriggerRfOnNtfProcess");
  sub_297E4DFAC(2, a1, 4, 5u, "phLibNfc_TriggerRfOnNtfProcess");
  return a2;
}

uint64_t sub_297EF3870(uint64_t a1, uint64_t a2)
{
  sub_297E4E1B4(2, a1, 4, 5u, "phLibNfc_TriggerRfSeqComplete");
  if (a1)
  {
    a2 = sub_297E4F450(*(a1 + 9784), 118, a2, 0, 0);
  }

  else
  {
    sub_297E4E0B0(2, 0, 4, 1u, "phLibNfc_TriggerRfSeqComplete: Invalid LibNfc Ctx received from NCI");
  }

  sub_297E4DFAC(2, a1, 4, 5u, "phLibNfc_TriggerRfSeqComplete");
  return a2;
}

uint64_t sub_297EF3910(uint64_t a1)
{
  v5 = 0;
  v4 = 0;
  sub_297E4E1B4(2, a1, 4, 5u, "phLibNfc_GetPageCountCmd");
  if (a1)
  {
    phOsalNfc_SetMemory();
    LOBYTE(v4) = 0;
    v2 = sub_297F098C8(*(a1 + 3088), &v4, sub_297E5BA84, a1);
  }

  else
  {
    v2 = 1;
    sub_297E4E0B0(2, 0, 4, 1u, "Invalid parameter, Libnfc Context is Invalid");
  }

  sub_297E4DFAC(2, a1, 4, 5u, "phLibNfc_GetPageCountCmd");
  return v2;
}

uint64_t sub_297EF39E0(uint64_t a1, int a2, uint64_t a3)
{
  sub_297E4E1B4(2, a1, 4, 5u, "phLibNfc_GetPageCountProc");
  if (a1)
  {
    if (!a2)
    {
      if (a3)
      {
        v6 = *a3;
        if (*a3)
        {
          if (*v6 || *(a3 + 8) != 5)
          {
            v9 = "phLibNfc_GetPageCountProc: received failed status or invalid response length";
          }

          else
          {
            v7 = v6[3];
            *(a1 + 5880) = v7;
            v8 = v7 | (v6[4] << 8);
            *(a1 + 5880) = v8;
            if ((v8 - 65) >= 0xFFFFFFC0)
            {
              if (!*(a1 + 5888))
              {
                Memory_Typed = phOsalNfc_GetMemory_Typed();
                *(a1 + 5888) = Memory_Typed;
                if (!Memory_Typed)
                {
                  v9 = "phLibNfc_GetPageCountProc: Failed to allocate memory";
                  goto LABEL_11;
                }

                phOsalNfc_SetMemory();
              }

              v12 = 0;
              goto LABEL_13;
            }

            v9 = "phLibNfc_GetPageCountProc: Total page count is zero or exceeded maximum number of flash page count ";
          }

LABEL_11:
          v11 = a1 + 9792;
          v10 = 1;
          goto LABEL_12;
        }
      }
    }
  }

  v9 = "phLibNfc_GetPageCountProc: Get page count operation failed";
  v10 = 2;
  v11 = a1;
LABEL_12:
  sub_297E4E0B0(v10, v11, 4, 1u, v9);
  v12 = 255;
LABEL_13:
  sub_297E4DFAC(2, a1, 4, 5u, "phLibNfc_GetPageCountProc");
  return v12;
}

uint64_t sub_297EF3B30(uint64_t a1)
{
  v5 = 0;
  v4 = 0;
  sub_297E4E1B4(2, a1, 4, 5u, "phLibNfc_GetEraseCounterCmd");
  if (a1)
  {
    phOsalNfc_SetMemory();
    LOBYTE(v4) = 1;
    HIWORD(v4) = *(a1 + 5882);
    v5 = 32;
    if (*(a1 + 5880) - HIWORD(v4) <= 31)
    {
      v5 = *(a1 + 5880) - HIWORD(v4);
    }

    v2 = sub_297F098C8(*(a1 + 3088), &v4, sub_297E5BA84, a1);
  }

  else
  {
    v2 = 1;
    sub_297E4E0B0(2, 0, 4, 1u, "Invalid parameter, Libnfc Context is Invalid");
  }

  sub_297E4DFAC(2, a1, 4, 5u, "phLibNfc_GetEraseCounterCmd");
  return v2;
}

uint64_t sub_297EF3C28(uint64_t a1, int a2, uint64_t *a3)
{
  sub_297E4E1B4(2, a1, 4, 5u, "phLibNfc_GetEraseCounterProc");
  if (!a1 || a2 || !a3 || (v6 = *a3) == 0)
  {
    v12 = "phLibNfc_GetEraseCounterProc: Get erase counter operation failed";
    v13 = 2;
    v14 = a1;
LABEL_17:
    sub_297E4E0B0(v13, v14, 4, 1u, v12);
    v11 = 255;
    goto LABEL_18;
  }

  if (*v6 || (v7 = *(a3 + 2), (v7 - 9) > 0x7D))
  {
    v12 = "phLibNfc_GetEraseCounterProc: received failed status or invalid response length";
LABEL_16:
    v14 = a1 + 9792;
    v13 = 1;
    goto LABEL_17;
  }

  v8 = *(v6 + 1);
  if (v8 != *(a1 + 5882) || (v9 = *(v6 + 3), v9 > *(a1 + 5880) - v8) || v7 - 5 != 4 * v9)
  {
    v12 = "phLibNfc_GetEraseCounterProc: Invalid data received from NFCC";
    goto LABEL_16;
  }

  if (!*(a1 + 5888))
  {
    v12 = "phLibNfc_GetEraseCounterProc: Invalid memory";
    goto LABEL_16;
  }

  phOsalNfc_MemCopy();
  v10 = *(a1 + 5882) + v9;
  *(a1 + 5882) = v10;
  if (*(a1 + 5880) > v10)
  {
    sub_297E79810(a1, *(a1 + 2960), 1u);
  }

  v11 = 0;
LABEL_18:
  sub_297E4DFAC(2, a1, 4, 5u, "phLibNfc_GetEraseCounterProc");
  return v11;
}

uint64_t sub_297EF3D94(uint64_t a1, uint64_t a2)
{
  v21 = *MEMORY[0x29EDCA608];
  memset(v20, 0, sizeof(v20));
  sub_297E4E1B4(2, a1, 4, 5u, "phLibNfc_GetEraseCounterSeqComplete");
  if (a1)
  {
    phOsalNfc_SetMemory();
    if (a2)
    {
      sub_297E4E0B0(1, a1 + 9792, 4, 1u, "phLibNfc_GetEraseCounterSeqComplete: Failed");
      v4 = 0;
      v5 = 119;
    }

    else
    {
      LODWORD(v20[0]) = 10;
      WORD4(v20[0]) = *(a1 + 5882);
      v7 = WORD4(v20[0]);
      if (WORD4(v20[0]))
      {
        v8 = 0;
        v9 = *(a1 + 5888);
        v10 = 12;
        do
        {
          if (v8 >= 0xFFFEu)
          {
            v11 = v8;
          }

          else
          {
            v11 = v8 + 1;
          }

          if (v8 >= 0xFFFEu)
          {
            LOWORD(v8) = 0;
          }

          v12 = *(v9 + v8);
          v4 = v20;
          *(v20 + v10) = v12;
          if (v11 >= 0xFFFEu)
          {
            v13 = v11;
          }

          else
          {
            v13 = v11 + 1;
          }

          if (v11 >= 0xFFFEu)
          {
            LOWORD(v11) = 0;
          }

          v14 = v12 | (*(v9 + v11) << 8);
          *(v20 + v10) = v14;
          if (v13 >= 0xFFFEu)
          {
            v15 = v13;
          }

          else
          {
            v15 = v13 + 1;
          }

          if (v13 >= 0xFFFEu)
          {
            LOWORD(v13) = 0;
          }

          v16 = v14 | (*(v9 + v13) << 16);
          *(v20 + v10) = v16;
          if (v15 >= 0xFFFEu)
          {
            v17 = 0;
          }

          else
          {
            v17 = v15;
          }

          v18 = *(v9 + v17);
          if (v15 >= 0xFFFEu)
          {
            v8 = v15;
          }

          else
          {
            v8 = v15 + 1;
          }

          *(v20 + v10) = v16 | (v18 << 24);
          v10 += 4;
          --v7;
        }

        while (v7);
      }

      else
      {
        v4 = v20;
      }

      v5 = 118;
    }

    v6 = sub_297E4F450(*(a1 + 9784), v5, a2, v4, 0);
    if (*(a1 + 5888))
    {
      phOsalNfc_FreeMemory();
      *(a1 + 5888) = 0;
    }

    phOsalNfc_SetMemory();
  }

  else
  {
    v6 = 1;
    sub_297E4E0B0(2, 0, 4, 1u, "phLibNfc_GetEraseCounterSeqComplete:  Invalid LibNfc Ctx received from NCI");
  }

  sub_297E4DFAC(2, a1, 4, 5u, "phLibNfc_GetEraseCounterSeqComplete");
  return v6;
}

uint64_t sub_297EF3FC8(uint64_t a1)
{
  sub_297E4E1B4(2, a1, 4, 5u, "phLibNfc_GetProhibitTimerStsCmd");
  if (a1)
  {
    v2 = sub_297F099F4(*(a1 + 3088), 3, sub_297E5BA84, a1);
  }

  else
  {
    v2 = 1;
    sub_297E4E0B0(2, 0, 4, 1u, "phLibNfc_GetProhibitTimerStsCmd: Invalid parameter, Libnfc Context is Invalid");
  }

  sub_297E4DFAC(2, a1, 4, 5u, "phLibNfc_GetProhibitTimerStsCmd");
  return v2;
}

uint64_t sub_297EF4070(uint64_t a1, uint64_t a2, unsigned __int8 *a3)
{
  v12 = *MEMORY[0x29EDCA608];
  memset(v11, 0, sizeof(v11));
  sub_297E4E1B4(2, a1, 4, 5u, "phLibNfc_GetProhibitTimerStsSeqComplete");
  if (a1 && a3)
  {
    if (a2)
    {
      sub_297E4E0B0(1, a1 + 9792, 4, 1u, "phLibNfc_GetProhibitTimerStsSeqComplete: Failed");
      v6 = 0;
      v7 = 119;
    }

    else
    {
      phOsalNfc_SetMemory();
      v9 = *a3;
      if (v9 <= 0xB && ((1 << v9) & 0xC01) != 0 || v9 == 255)
      {
        a2 = 0;
        LODWORD(v11[0]) = 11;
        DWORD2(v11[0]) = v9;
        HIDWORD(v11[0]) = *(a3 + 2);
        v6 = v11;
        v7 = 118;
      }

      else
      {
        sub_297E4E0B0(1, a1 + 9792, 4, 1u, "phLibNfc_GetProhibitTimerStsSeqComplete: Failed, Received unknown Timer ID");
        v6 = 0;
        v7 = 119;
        a2 = 255;
      }
    }

    v8 = sub_297E4F450(*(a1 + 9784), v7, a2, v6, 0);
  }

  else
  {
    v8 = 1;
    sub_297E4E0B0(2, a1, 4, 1u, "phLibNfc_GetProhibitTimerStsSeqComplete: Invalid LibNfc Ctx received from NCI");
  }

  sub_297E4DFAC(2, a1, 4, 5u, "phLibNfc_GetProhibitTimerStsSeqComplete");
  return v8;
}

uint64_t sub_297EF4238(uint64_t a1)
{
  sub_297E4E1B4(2, a1, 4, 5u, "phLibNfc_StartProhibitTimerCmd");
  if (a1)
  {
    v2 = sub_297F099F4(*(a1 + 3088), 1, sub_297E5BA84, a1);
  }

  else
  {
    v2 = 1;
    sub_297E4E0B0(2, 0, 4, 1u, "phLibNfc_StartProhibitTimerCmd: Invalid parameter, Libnfc Context is Invalid");
  }

  sub_297E4DFAC(2, a1, 4, 5u, "phLibNfc_StartProhibitTimerCmd");
  return v2;
}

uint64_t sub_297EF42E0(uint64_t a1)
{
  sub_297E4E1B4(2, a1, 4, 5u, "phLibNfc_StopProhibitTimerCmd");
  if (a1)
  {
    v2 = sub_297F099F4(*(a1 + 3088), 2, sub_297E5BA84, a1);
  }

  else
  {
    v2 = 1;
    sub_297E4E0B0(2, 0, 4, 1u, "phLibNfc_StopProhibitTimerCmd: Invalid parameter, Libnfc Context is Invalid");
  }

  sub_297E4DFAC(2, a1, 4, 5u, "phLibNfc_StopProhibitTimerCmd");
  return v2;
}

uint64_t sub_297EF4388(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v28 = *MEMORY[0x29EDCA608];
  v26 = 0u;
  v27 = 0u;
  v24 = 0u;
  v25 = 0u;
  v22 = 0u;
  v23 = 0u;
  v20 = 0u;
  v21 = 0u;
  v18 = 0u;
  v19 = 0u;
  v16 = 0u;
  v17 = 0u;
  v14 = 0u;
  v15 = 0u;
  v12 = 0u;
  v13 = 0u;
  v11 = 0u;
  sub_297E4E1B4(2, a1, 4, 5u, "phLibNfc_GetPowerTrackDataSeqComplete");
  if (a1 && a3)
  {
    if (a2)
    {
      sub_297E4E0B0(1, a1 + 9792, 4, 1u, "phLibNfc_GetPowerTrackDataSeqComplete: Failed");
      v6 = 0;
      v7 = 119;
    }

    else
    {
      v6 = &v11;
      phOsalNfc_SetMemory();
      LODWORD(v11) = 0;
      *(&v11 + 1) = *a3;
      LODWORD(v12) = *(a3 + 8);
      BYTE4(v12) = *(a3 + 12);
      *(&v12 + 5) = *(a3 + 13);
      *(&v12 + 1) = *(a3 + 16);
      v9 = *(a3 + 24);
      DWORD2(v13) = 0;
      v7 = 118;
      *&v13 = v9;
    }

    v8 = sub_297E4F450(*(a1 + 9784), v7, a2, v6, 0);
  }

  else
  {
    v8 = 1;
    sub_297E4E0B0(2, a1, 4, 1u, "phLibNfc_GetPowerTrackDataSeqComplete: Invalid LibNfc Ctx received from NCI");
  }

  sub_297E4DFAC(2, a1, 4, 5u, "phLibNfc_GetPowerTrackDataSeqComplete");
  return v8;
}

uint64_t sub_297EF4520(uint64_t a1)
{
  sub_297E4E1B4(2, a1, 4, 5u, "phLibNfc_GetSwio1VoltageCmd");
  if (a1)
  {
    *(a1 + 6077) = 1;
    v2 = sub_297F0969C(*(a1 + 3088), 1, sub_297E5BA84, a1);
  }

  else
  {
    v2 = 1;
    sub_297E4E0B0(2, 0, 4, 1u, "phLibNfc_GetSwio1VoltageCmd: Invalid parameter, Libnfc Context is Invalid");
  }

  sub_297E4DFAC(2, a1, 4, 5u, "phLibNfc_GetSwio1VoltageCmd");
  return v2;
}

uint64_t sub_297EF45D4(uint64_t a1, int a2, _BYTE **a3)
{
  sub_297E4E1B4(2, a1, 4, 5u, "phLibNfc_GetSwioPadVoltageProc");
  if (!a1)
  {
    v7 = "phLibNfc_GetSwioPadVoltageProc: Invalid parameter, Libnfc Context is Invalid";
    v9 = 2;
    v8 = 0;
    goto LABEL_10;
  }

  if (a2 || !a3 || (v6 = *a3) == 0)
  {
    v7 = "phLibNfc_GetSwioPadVoltageProc: read voltage of SWIO operation failed";
    goto LABEL_8;
  }

  if (*v6)
  {
    v7 = "phLibNfc_GetSwioPadVoltageProc: received failed status";
LABEL_8:
    v8 = a1 + 9792;
    v9 = 1;
LABEL_10:
    sub_297E4E0B0(v9, v8, 4, 1u, v7);
    goto LABEL_11;
  }

  v12 = *(a1 + 6077);
  if (v12 == 2)
  {
    v10 = 0;
    v14 = v6[1];
    *(a1 + 5618) = v14;
    *(a1 + 5618) = v14 | (v6[2] << 8);
    goto LABEL_12;
  }

  if (v12 == 1)
  {
    v10 = 0;
    v13 = v6[1];
    *(a1 + 5616) = v13;
    *(a1 + 5616) = v13 | (v6[2] << 8);
    goto LABEL_12;
  }

  sub_297E50EBC(1, a1 + 9792, 4, 1u, "phLibNfc_GetSwioPadVoltageProc: Unknown SWIO pad no");
LABEL_11:
  v10 = 255;
LABEL_12:
  sub_297E4DFAC(2, a1, 4, 5u, "phLibNfc_GetSwioPadVoltageProc");
  return v10;
}

uint64_t sub_297EF4718(uint64_t a1)
{
  sub_297E4E1B4(2, a1, 4, 5u, "phLibNfc_GetSwio2VoltageCmd");
  if (a1)
  {
    *(a1 + 6077) = 2;
    v2 = sub_297F0969C(*(a1 + 3088), 2, sub_297E5BA84, a1);
  }

  else
  {
    v2 = 1;
    sub_297E4E0B0(2, 0, 4, 1u, "phLibNfc_GetSwio2VoltageCmd: Invalid parameter, Libnfc Context is Invalid");
  }

  sub_297E4DFAC(2, a1, 4, 5u, "phLibNfc_GetSwio2VoltageCmd");
  return v2;
}

uint64_t sub_297EF47CC(uint64_t a1, uint64_t a2)
{
  v8 = *MEMORY[0x29EDCA608];
  memset(v7, 0, sizeof(v7));
  sub_297E4E1B4(2, a1, 4, 5u, "phLibNfc_GetSwioPadVoltageSeqComplete");
  if (a1)
  {
    phOsalNfc_SetMemory();
    if (a2)
    {
      sub_297E4E0B0(1, a1 + 9792, 4, 1u, "phLibNfc_GetSwioPadVoltageSeqComplete: Failed");
      v4 = 119;
    }

    else
    {
      LODWORD(v7[0]) = 8;
      phOsalNfc_MemCopy();
      v4 = 118;
    }

    v5 = sub_297E4F450(*(a1 + 9784), v4, a2, v7, 0);
    *(a1 + 6077) = 0;
  }

  else
  {
    v5 = 1;
    sub_297E4E0B0(2, 0, 4, 1u, "phLibNfc_GetSwioPadVoltageSeqComplete: Invalid LibNfc Ctx received from NCI");
  }

  sub_297E4DFAC(2, a1, 4, 5u, "phLibNfc_GetSwioPadVoltageSeqComplete");
  return v5;
}

uint64_t sub_297EF4940(uint64_t a1)
{
  sub_297E4E1B4(2, a1, 4, 5u, "phLibNfc_GetTrimVerCmd");
  if (a1)
  {
    v2 = sub_297F097B8(*(a1 + 3088), sub_297E5BA84, a1);
  }

  else
  {
    v2 = 1;
    sub_297E4E0B0(2, 0, 4, 1u, "phLibNfc_GetSwio1VoltageCmd: Invalid parameter, Libnfc Context is Invalid");
  }

  sub_297E4DFAC(2, a1, 4, 5u, "phLibNfc_GetTrimVerCmd");
  return v2;
}

uint64_t sub_297EF49E4(uint64_t a1, int a2, _BYTE **a3)
{
  sub_297E4E1B4(2, a1, 4, 5u, "phLibNfc_GetTrimVerProc");
  if (a1)
  {
    if (!a2 && a3 && (v6 = *a3) != 0)
    {
      if (!*v6)
      {
        v10 = 0;
        v12 = v6[1];
        *(a1 + 5616) = v12;
        *(a1 + 5616) = v12 | (v6[2] << 8);
        goto LABEL_11;
      }

      v7 = "phLibNfc_GetTrimVerProc: received failed status";
    }

    else
    {
      v7 = "phLibNfc_GetTrimVerProc: Get Trim version operation failed";
    }

    v8 = a1 + 9792;
    v9 = 1;
  }

  else
  {
    v7 = "phLibNfc_GetTrimVerProc: Invalid parameter, Libnfc Context is Invalid";
    v9 = 2;
    v8 = 0;
  }

  sub_297E4E0B0(v9, v8, 4, 1u, v7);
  v10 = 255;
LABEL_11:
  sub_297E4DFAC(2, a1, 4, 5u, "phLibNfc_GetTrimVerProc");
  return v10;
}

uint64_t sub_297EF4AD0(uint64_t a1, uint64_t a2)
{
  v8 = *MEMORY[0x29EDCA608];
  memset(v7, 0, sizeof(v7));
  sub_297E4E1B4(2, a1, 4, 5u, "phLibNfc_GetTrimVerSeqComplete");
  if (a1)
  {
    phOsalNfc_SetMemory();
    if (a2)
    {
      sub_297E4E0B0(1, a1 + 9792, 4, 1u, "phLibNfc_GetTrimVerSeqComplete: Failed");
      v4 = 119;
    }

    else
    {
      LODWORD(v7[0]) = 9;
      WORD4(v7[0]) = *(a1 + 5616);
      v4 = 118;
    }

    v5 = sub_297E4F450(*(a1 + 9784), v4, a2, v7, 0);
  }

  else
  {
    v5 = 1;
    sub_297E4E0B0(2, 0, 4, 1u, "phLibNfc_GetTrimVerSeqComplete: Invalid LibNfc Ctx received from NCI");
  }

  sub_297E4DFAC(2, a1, 4, 5u, "phLibNfc_GetTrimVerSeqComplete");
  return v5;
}

uint64_t sub_297EF4C28(uint64_t a1)
{
  sub_297E4E1B4(2, a1, 4, 5u, "phLibNfc_GetSmbLogCmd");
  if (a1)
  {
    v2 = sub_297F09DD8(*(a1 + 3088), sub_297E5BA84, a1);
  }

  else
  {
    v2 = 1;
    sub_297E4E0B0(2, 0, 4, 1u, "Invalid parameter, Libnfc Context is Invalid");
  }

  sub_297E4DFAC(2, a1, 4, 5u, "phLibNfc_GetSmbLogCmd");
  return v2;
}

uint64_t sub_297EF4CCC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v26 = *MEMORY[0x29EDCA608];
  v24 = 0u;
  v25 = 0u;
  v22 = 0u;
  v23 = 0u;
  v20 = 0u;
  v21 = 0u;
  v18 = 0u;
  v19 = 0u;
  v16 = 0u;
  v17 = 0u;
  v14 = 0u;
  v15 = 0u;
  v12 = 0u;
  v13 = 0u;
  v10 = 0u;
  v11 = 0u;
  v9 = 0u;
  sub_297E4E1B4(2, a1, 4, 5u, "phLibNfc_GetSmbLogProcComplete");
  if (a1)
  {
    if (a2)
    {
      sub_297E4E0B0(1, a1 + 9792, 4, 1u, "phLibNfc_GetSmbLogProcComplete: Failed");
      v6 = 119;
    }

    else
    {
      phOsalNfc_SetMemory();
      LODWORD(v9) = 1;
      if (a3 && *(a3 + 8) && *a3)
      {
        LODWORD(v10) = *(a3 + 8);
        *(&v9 + 1) = phOsalNfc_GetMemory_Typed();
        if (*(&v9 + 1))
        {
          phOsalNfc_MemCopy();
        }
      }

      else
      {
        LODWORD(v10) = 0;
        *(&v9 + 1) = 0;
      }

      v6 = 118;
    }

    v7 = sub_297E4F450(*(a1 + 9784), v6, a2, &v9, 0);
    if (*(&v9 + 1))
    {
      phOsalNfc_FreeMemory();
      *(&v9 + 1) = 0;
    }
  }

  else
  {
    v7 = 1;
    sub_297E4E0B0(2, 0, 4, 1u, "phLibNfc_GetSmbLogProcComplete: Invalid LibNfc Ctx");
  }

  sub_297E4DFAC(2, a1, 4, 5u, "phLibNfc_GetSmbLogProcComplete");
  return v7;
}

uint64_t sub_297EF4E8C(uint64_t a1, uint64_t a2)
{
  sub_297E4E1B4(2, a1, 4, 5u, "phLibNfc_GetDbgLogCmd");
  if (a1)
  {
    v4 = *(a1 + 5608);
    switch(v4)
    {
      case 5:
        v5 = *(a1 + 3088);
        v6 = 0;
        goto LABEL_9;
      case 13:
        v5 = *(a1 + 3088);
        v6 = 2;
        goto LABEL_9;
      case 12:
        v5 = *(a1 + 3088);
        v6 = 1;
LABEL_9:
        a2 = sub_297F09FF8(v5, v6, sub_297E5BA84, a1);
        break;
    }
  }

  else
  {
    a2 = 1;
    sub_297E4E0B0(2, 0, 4, 1u, "phLibNfc_GetDbgLogCmd : Invalid parameter, Libnfc Context is Invalid");
  }

  sub_297E4DFAC(2, a1, 4, 5u, "phLibNfc_GetDbgLogCmd");
  return a2;
}

uint64_t sub_297EF4F8C(uint64_t a1, unsigned int a2, uint64_t a3)
{
  v13 = 0;
  v14 = 0;
  v15 = 0;
  sub_297E4E1B4(2, a1, 4, 5u, "phLibNfc_GetHlmDbgLogProcComplete");
  if (!a1)
  {
    v6 = 1;
    sub_297E4E0B0(2, 0, 4, 1u, "phLibNfc_GetSmbLogProcComplete: Invalid LibNfc Ctx");
    goto LABEL_13;
  }

  phOsalNfc_SetMemory();
  *(a1 + 5608) = 5;
  if (a2 || !a3)
  {
    if (a3)
    {
      v7 = a2;
    }

    else
    {
      v7 = 255;
    }

    sub_297E4E0B0(1, a1 + 9792, 4, 1u, "phLibNfc_GetHlmDbgLogProcComplete: Failed");
    *(a1 + 5624) = 0;
    v8 = *(a1 + 9784);
    v9 = a1 + 5608;
    v10 = 119;
    v11 = v7;
    goto LABEL_12;
  }

  *(a1 + 5616) = *a3;
  *(a1 + 5617) = *(a3 + 1);
  v13 = *(a3 + 8);
  LODWORD(v14) = *(a3 + 4);
  if (!v14)
  {
    v8 = *(a1 + 9784);
    v9 = a1 + 5608;
    v10 = 118;
    v11 = 0;
LABEL_12:
    v6 = sub_297E4F450(v8, v10, v11, v9, 0);
    goto LABEL_13;
  }

  sub_297EF8D5C(a1, 9, &v13);
  v6 = 0;
LABEL_13:
  sub_297E4DFAC(2, a1, 4, 5u, "phLibNfc_GetHlmDbgLogProcComplete");
  return v6;
}

uint64_t sub_297EF5104(uint64_t a1)
{
  sub_297E4E1B4(2, a1, 4, 5u, "phLibNfc_GetLpcdFalseDetCntCmd");
  if (a1)
  {
    v2 = sub_297F09EE8(*(a1 + 3088), sub_297E5BA84, a1);
  }

  else
  {
    v2 = 1;
    sub_297E4E0B0(2, 0, 4, 1u, "Invalid parameter, Libnfc Context is Invalid");
  }

  sub_297E4DFAC(2, a1, 4, 5u, "phLibNfc_GetLpcdFalseDetCntCmd");
  return v2;
}

uint64_t sub_297EF51A8(uint64_t a1, int a2, uint64_t a3)
{
  sub_297E4E1B4(2, a1, 4, 5u, "phLibNfc_GetLpcdFalseDetCntProc");
  if (!a1)
  {
    sub_297E4E0B0(2, 0, 4, 1u, "phLibNfc_GetLpcdFalseDetCntProc: Libnfc Context is Invalid");
LABEL_7:
    v6 = 255;
    goto LABEL_8;
  }

  if (a2 || !a3)
  {
    sub_297E4E0B0(1, a1 + 9792, 4, 2u, "phLibNfc_GetLpcdFalseDetCntProc: operation failed");
    goto LABEL_7;
  }

  sub_297E4E0B0(1, a1 + 9792, 4, 4u, "phLibNfc_GetLpcdFalseDetCntProc: operation success");
  v6 = 0;
LABEL_8:
  sub_297E4DFAC(2, a1, 4, 5u, "phLibNfc_GetLpcdFalseDetCntProc");
  return v6;
}

uint64_t sub_297EF5288(uint64_t a1, int a2, uint64_t a3)
{
  v11 = *MEMORY[0x29EDCA608];
  memset(v10, 0, sizeof(v10));
  sub_297E4E1B4(2, a1, 4, 5u, "phLibNfc_GetLpcdFalseDetCntComplete");
  if (a1)
  {
    if (a2 || !a3)
    {
      sub_297E4E0B0(1, a1 + 9792, 4, 2u, "phLibNfc_GetLpcdFalseDetCntComplete: Failed");
      v6 = 255;
      v7 = 119;
    }

    else
    {
      phOsalNfc_SetMemory();
      LODWORD(v10[0]) = 3;
      phOsalNfc_MemCopy();
      phOsalNfc_MemCopy();
      phOsalNfc_MemCopy();
      v6 = 0;
      v7 = 118;
    }

    v8 = sub_297E4F450(*(a1 + 9784), v7, v6, v10, 0);
  }

  else
  {
    v8 = 1;
    sub_297E4E0B0(2, 0, 4, 1u, "phLibNfc_GetLpcdFalseDetCntComplete: Invalid LibNfc Ctx");
  }

  sub_297E4DFAC(2, a1, 4, 5u, "phLibNfc_GetLpcdFalseDetCntComplete");
  return v8;
}

uint64_t sub_297EF542C(uint64_t a1)
{
  sub_297E4E1B4(2, a1, 4, 5u, "phLibNfc_GetVasCodeCfgCmd");
  if (a1)
  {
    v2 = sub_297F0A54C(*(a1 + 3088), 4, sub_297E5BA84, a1);
  }

  else
  {
    sub_297E4E0B0(2, 0, 4, 1u, "phLibNfc_GetVasCodeCfgCmd : Libnfc Context is Invalid");
    v2 = 255;
  }

  sub_297E4DFAC(2, a1, 4, 5u, "phLibNfc_GetVasCodeCfgCmd");
  return v2;
}

uint64_t sub_297EF54D4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  sub_297E4E1B4(2, a1, 4, 5u, "phLibNfc_GetVasCodeCfgComplete");
  if (a1)
  {
    if (a2 || !a3)
    {
      sub_297E4E0B0(1, a1 + 9792, 4, 1u, "phLibNfc_GetVasCodeCfgComplete: Failed");
      a3 = 0;
      v6 = 119;
    }

    else
    {
      v6 = 118;
    }

    v7 = sub_297E4F450(*(a1 + 9784), v6, a2, a3, 0);
  }

  else
  {
    sub_297E4E0B0(2, 0, 4, 1u, "phLibNfc_GetSetRfTransRegCfgComplete: Invalid LibNfc Ctx");
    v7 = 255;
  }

  sub_297E4DFAC(2, a1, 4, 5u, "phLibNfc_GetVasCodeCfgComplete");
  return v7;
}

uint64_t sub_297EF55B8(uint64_t a1)
{
  sub_297E4E1B4(2, a1, 4, 5u, "phLibNfc_GetSuicaSysCodeCmd");
  if (a1)
  {
    phOsalNfc_SetMemory();
    *(a1 + 3612) |= 0x10000u;
    *(a1 + 5144) |= 0x8000u;
    v2 = sub_297E60AC0(*(a1 + 3088), a1 + 3608, sub_297E5BA84, a1);
  }

  else
  {
    sub_297E4E0B0(2, 0, 4, 1u, "phLibNfc_GetSuicaSysCodeCmd : Libnfc Context is Invalid");
    v2 = 255;
  }

  sub_297E4DFAC(2, a1, 4, 5u, "phLibNfc_GetSuicaSysCodeCmd");
  return v2;
}

uint64_t sub_297EF568C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  sub_297E4E1B4(2, a1, 4, 5u, "phLibNfc_GetSuicaSysCodeComplete");
  if (a1)
  {
    if (a2 || !a3)
    {
      sub_297E4E0B0(1, a1 + 9792, 4, 1u, "phLibNfc_GetSuicaSysCodeComplete: Failed");
      v6 = 119;
    }

    else
    {
      phOsalNfc_SetMemory();
      *(a1 + 5608) = 6;
      *(a1 + 5616) = *(a3 + 1662);
      *(a1 + 5617) = *(a3 + 1663);
      *(a1 + 5618) = *(a3 + 1664);
      *(a1 + 5620) = *(a3 + 1666);
      v6 = 118;
    }

    v7 = sub_297E4F450(*(a1 + 9784), v6, a2, a1 + 5608, 0);
  }

  else
  {
    sub_297E4E0B0(2, 0, 4, 1u, "phLibNfc_GetSetRfTransRegCfgComplete: Invalid LibNfc Ctx");
    v7 = 255;
  }

  sub_297E4DFAC(2, a1, 4, 5u, "phLibNfc_GetSuicaSysCodeComplete");
  return v7;
}

uint64_t sub_297EF57B4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  sub_297E4E1B4(2, a1, 4, 5u, "phLibNfc_GetSpmiDbgProcComplete");
  if (a1)
  {
    phOsalNfc_SetMemory();
    if (a2 || !a3)
    {
      sub_297E4E0B0(1, a1 + 9792, 4, 1u, "phLibNfc_GetSpmiDbgProcComplete: Failed");
      v6 = *(a1 + 9784);
      v7 = a1 + 5608;
      v8 = 119;
      v9 = a2;
    }

    else
    {
      *(a1 + 5616) = *(a3 + 8);
      *(a1 + 5624) = *(a3 + 4);
      v6 = *(a1 + 9784);
      v7 = a1 + 5608;
      v8 = 118;
      v9 = 0;
    }

    v10 = sub_297E4F450(v6, v8, v9, v7, 0);
  }

  else
  {
    v10 = 1;
    sub_297E4E0B0(2, 0, 4, 1u, "phLibNfc_GetSpmiDbgProcComplete: Invalid LibNfc Ctx");
  }

  sub_297E4DFAC(2, a1, 4, 5u, "phLibNfc_GetSpmiDbgProcComplete");
  return v10;
}

uint64_t sub_297EF58CC(uint64_t a1)
{
  v9 = *MEMORY[0x29EDCA608];
  bzero(v4, 0x6E8uLL);
  sub_297E4E1B4(2, a1, 4, 5u, "phLibNfc_SetSmbCfgCmd");
  if (a1)
  {
    v5 = 0x4000;
    v6 = 1;
    phOsalNfc_MemCopy();
    if (*(a1 + 5472) == 1)
    {
      v8 = 0;
      v6 |= 6u;
      phOsalNfc_MemCopy();
      v6 |= 8u;
      phOsalNfc_MemCopy();
    }

    else
    {
      v7 = 0;
    }

    v2 = sub_297E64020(*(a1 + 3088), v4, sub_297E5BA84, a1);
  }

  else
  {
    v2 = 1;
    sub_297E4E0B0(2, 0, 4, 1u, "phLibNfc_SetSmbCfgCmd : Libnfc Context is Invalid");
  }

  sub_297E4DFAC(2, a1, 4, 5u, "phLibNfc_SetSmbCfgCmd");
  return v2;
}

uint64_t sub_297EF5A64(uint64_t a1, uint64_t a2)
{
  sub_297E4E1B4(2, a1, 4, 5u, "phLibNfc_SetSmbCfgComplete");
  if (a1)
  {
    if (a2)
    {
      sub_297E4E0B0(1, a1 + 9792, 4, 1u, "phLibNfc_SetSmbCfgComplete: Failed");
      v4 = 119;
    }

    else
    {
      v4 = 118;
    }

    v5 = sub_297E4F450(*(a1 + 9784), v4, a2, 0, 0);
  }

  else
  {
    v5 = 1;
    sub_297E4E0B0(2, 0, 4, 1u, "phLibNfc_SetSmbCfgComplete: Invalid LibNfc Ctx");
  }

  sub_297E4DFAC(2, a1, 4, 5u, "phLibNfc_SetSmbCfgComplete");
  return v5;
}

uint64_t sub_297EF5B34(uint64_t a1)
{
  v6 = *MEMORY[0x29EDCA608];
  bzero(v4, 0x6E8uLL);
  sub_297E4E1B4(2, a1, 4, 5u, "phLibNfc_SetHLMCfgCmd");
  if (a1)
  {
    v4[1] = 0x10000;
    v4[384] = 4096;
    v5 = *(a1 + 5472);
    v2 = sub_297E64020(*(a1 + 3088), v4, sub_297E5BA84, a1);
  }

  else
  {
    v2 = 1;
    sub_297E4E0B0(2, 0, 4, 1u, "phLibNfc_SetHLMCfgCmd : Libnfc Context is Invalid");
  }

  sub_297E4DFAC(2, a1, 4, 5u, "phLibNfc_SetHLMCfgCmd");
  return v2;
}

uint64_t sub_297EF5C3C(uint64_t a1, uint64_t a2)
{
  sub_297E4E1B4(2, a1, 4, 5u, "phLibNfc_HLMCfgComplete");
  if (a1)
  {
    if (a2)
    {
      sub_297E4E0B0(1, a1 + 9792, 4, 1u, "phLibNfc_HLMCfgComplete: Failed");
      v4 = 119;
    }

    else
    {
      v4 = 118;
    }

    v5 = sub_297E4F450(*(a1 + 9784), v4, a2, 0, 0);
  }

  else
  {
    v5 = 1;
    sub_297E4E0B0(2, 0, 4, 1u, "phLibNfc_HLMCfgComplete: Invalid LibNfc Ctx");
  }

  sub_297E4DFAC(2, a1, 4, 5u, "phLibNfc_HLMCfgComplete");
  return v5;
}

uint64_t sub_297EF5D0C(uint64_t a1)
{
  v13 = *MEMORY[0x29EDCA608];
  bzero(v6, 0x6E8uLL);
  sub_297E4E1B4(2, a1, 4, 5u, "phLibNfc_SetMultiTagCfgCmd");
  if (!a1)
  {
    v4 = 1;
    sub_297E4E0B0(2, 0, 4, 1u, "phLibNfc_SetMultiTagCfgCmd : Libnfc Context is Invalid");
    goto LABEL_17;
  }

  v6[1] = 0x10000;
  v6[384] = 0x20000;
  phOsalNfc_SetMemory();
  v2 = *(a1 + 5472);
  if ((v2 & 8) != 0)
  {
    v7 |= 1u;
    if ((v2 & 1) == 0)
    {
LABEL_4:
      if ((v2 & 2) == 0)
      {
        goto LABEL_5;
      }

      goto LABEL_20;
    }
  }

  else if ((*(a1 + 5472) & 1) == 0)
  {
    goto LABEL_4;
  }

  v7 |= 2u;
  if ((v2 & 2) == 0)
  {
LABEL_5:
    if ((v2 & 4) == 0)
    {
      goto LABEL_6;
    }

    goto LABEL_21;
  }

LABEL_20:
  v7 |= 4u;
  if ((v2 & 4) == 0)
  {
LABEL_6:
    if ((v2 & 0x10) == 0)
    {
      goto LABEL_7;
    }

    goto LABEL_22;
  }

LABEL_21:
  v7 |= 8u;
  if ((v2 & 0x10) == 0)
  {
LABEL_7:
    if ((v2 & 0x20) == 0)
    {
      goto LABEL_8;
    }

    goto LABEL_23;
  }

LABEL_22:
  v7 |= 0x10u;
  if ((v2 & 0x20) == 0)
  {
LABEL_8:
    if ((v2 & 0x40) == 0)
    {
      goto LABEL_9;
    }

LABEL_24:
    v7 |= 0x40u;
    if ((v2 & 0x80) == 0)
    {
      goto LABEL_10;
    }

LABEL_25:
    v7 |= 0x80u;
    goto LABEL_10;
  }

LABEL_23:
  v7 |= 0x20u;
  if ((v2 & 0x40) != 0)
  {
    goto LABEL_24;
  }

LABEL_9:
  if (v2 < 0)
  {
    goto LABEL_25;
  }

LABEL_10:
  v8 = *(a1 + 5476);
  if (*(a1 + 5483) == 1)
  {
    v9 |= 1u;
  }

  v10 = *(a1 + 5484);
  if (*(a1 + 5486) <= 0x9F6u)
  {
    v3 = *(a1 + 5486) / 0xAu;
  }

  else
  {
    v3 = -1;
  }

  v11 = v3;
  v12 = 8;
  v4 = sub_297E64020(*(a1 + 3088), v6, sub_297E5BA84, a1);
LABEL_17:
  sub_297E4DFAC(2, a1, 4, 5u, "phLibNfc_SetMultiTagCfgCmd");
  return v4;
}

uint64_t sub_297EF5F20(uint64_t a1, uint64_t a2)
{
  sub_297E4E1B4(2, a1, 4, 5u, "phLibNfc_SetClearMultiTagCfgComp");
  if (a1)
  {
    if (a2)
    {
      sub_297E4E0B0(1, a1 + 9792, 4, 1u, "phLibNfc_SetClearMultiTagCfgComp: Failed");
      v4 = 119;
    }

    else
    {
      v4 = 118;
    }

    v5 = sub_297E4F450(*(a1 + 9784), v4, a2, 0, 0);
  }

  else
  {
    v5 = 1;
    sub_297E4E0B0(2, 0, 4, 1u, "phLibNfc_SetClearMultiTagCfgComp: Invalid LibNfc Ctx");
  }

  sub_297E4DFAC(2, a1, 4, 5u, "phLibNfc_SetClearMultiTagCfgComp");
  return v5;
}

uint64_t sub_297EF5FF0(uint64_t a1)
{
  sub_297E4E1B4(2, a1, 4, 5u, "phLibNfc_GetMultiTagInfoCmd");
  if (a1)
  {
    v2 = sub_297F05F30(*(a1 + 3088), sub_297E5BA84, a1);
  }

  else
  {
    v2 = 1;
    sub_297E4E0B0(2, 0, 4, 1u, "phLibNfc_GetMultiTagInfoCmd : Libnfc Context is Invalid");
  }

  sub_297E4DFAC(2, a1, 4, 5u, "phLibNfc_GetMultiTagInfoCmd");
  return v2;
}

uint64_t sub_297EF6094(uint64_t a1, int a2, uint64_t a3)
{
  sub_297E4E1B4(2, a1, 4, 5u, "phLibNfc_GetMultiTagInfoProc");
  if (!a1)
  {
    v7 = "phLibNfc_GetMultiTagInfoProc : Libnfc Context is Invalid";
    v9 = 2;
    v8 = 0;
    goto LABEL_11;
  }

  if (a2 || !a3 || (v6 = *a3) == 0 || !*(a3 + 8))
  {
    v7 = "phLibNfc_GetMultiTagInfoProc: operation failed";
    v8 = a1 + 9792;
    goto LABEL_9;
  }

  if (*v6)
  {
    v7 = "phLibNfc_GetMultiTagInfoProc: received failed status";
    v8 = a1 + 9792;
LABEL_9:
    v9 = 1;
LABEL_11:
    sub_297E4E0B0(v9, v8, 4, 1u, v7);
    goto LABEL_12;
  }

  sub_297E4E0B0(1, a1 + 9792, 4, 4u, "phLibNfc_GetMultiTagInfoProc: Get Multi-tag info response received with success");
  phOsalNfc_SetMemory();
  *(a1 + 5608) = 7;
  *(a1 + 5616) = v6[1];
  v16 = 3;
  v12 = v6[2];
  *(a1 + 5617) = v12;
  v13 = 5 * v12 + 4;
  if (v12)
  {
    if (*(a3 + 8) >= v13)
    {
      *(a1 + 5624) = phOsalNfc_GetMemory_Typed();
      phOsalNfc_SetMemory();
      sub_297EFA3B0(a1, &v16, *(a1 + 5617), 0, *(a1 + 5624), a3);
      v10 = 0;
      v14 = v16;
      goto LABEL_20;
    }

    *(a1 + 5624) = 0;
    sub_297E4E0B0(1, a1 + 9792, 4, 1u, "phLibNfc_GetMultiTagInfoProc: Tag of interest detected but partial info received");
    sub_297E50EBC(1, a1 + 9792, 4, 1u, "bNumTags");
    v10 = 255;
  }

  else
  {
    v10 = 0;
    *(a1 + 5624) = 0;
  }

  v14 = 3;
LABEL_20:
  v16 = v14 + 1;
  v15 = v6[v14];
  *(a1 + 5632) = v15;
  if (!v15)
  {
    *(a1 + 5640) = 0;
    goto LABEL_13;
  }

  if (*(a3 + 8) >= (v15 + v13))
  {
    *(a1 + 5640) = phOsalNfc_GetMemory_Typed();
    phOsalNfc_SetMemory();
    sub_297EFA3B0(a1, &v16, *(a1 + 5632), 1, *(a1 + 5640), a3);
    goto LABEL_13;
  }

  *(a1 + 5640) = 0;
  sub_297E4E0B0(1, a1 + 9792, 4, 1u, "phLibNfc_GetMultiTagInfoProc: Tag of Not interest detected but partial info received");
  sub_297E50EBC(1, a1 + 9792, 4, 1u, "bNumTags");
LABEL_12:
  v10 = 255;
LABEL_13:
  sub_297E4DFAC(2, a1, 4, 5u, "phLibNfc_GetMultiTagInfoProc");
  return v10;
}

uint64_t sub_297EF6370(void *a1, uint64_t a2)
{
  sub_297E4E1B4(2, a1, 4, 5u, "phLibNfc_GetMultiTagInfoComp");
  if (a1)
  {
    if (a2)
    {
      sub_297E4E0B0(1, (a1 + 1224), 4, 1u, "phLibNfc_GetMultiTagInfoComp: Failed");
      v4 = 119;
    }

    else
    {
      v4 = 118;
    }

    v5 = sub_297E4F450(a1[1223], v4, a2, (a1 + 701), 0);
    if (a1[703])
    {
      phOsalNfc_FreeMemory();
      a1[703] = 0;
    }

    if (a1[705])
    {
      phOsalNfc_FreeMemory();
      a1[705] = 0;
    }
  }

  else
  {
    v5 = 1;
    sub_297E4E0B0(2, 0, 4, 1u, "phLibNfc_GetMultiTagInfoComp: Invalid LibNfc Ctx");
  }

  sub_297E4DFAC(2, a1, 4, 5u, "phLibNfc_GetMultiTagInfoComp");
  return v5;
}

uint64_t sub_297EF6474(uint64_t a1)
{
  sub_297E4E1B4(2, a1, 4, 5u, "phLibNfc_ClearMultiTagInfoCmd");
  if (a1)
  {
    v2 = sub_297F06050(*(a1 + 3088), sub_297E5BA84, a1);
  }

  else
  {
    v2 = 1;
    sub_297E4E0B0(2, 0, 4, 1u, "phLibNfc_ClearMultiTagInfoCmd : Libnfc Context is Invalid");
  }

  sub_297E4DFAC(2, a1, 4, 5u, "phLibNfc_ClearMultiTagInfoCmd");
  return v2;
}