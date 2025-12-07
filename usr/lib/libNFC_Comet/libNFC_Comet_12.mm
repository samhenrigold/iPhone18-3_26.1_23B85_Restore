uint64_t sub_297EF6518(uint64_t a1)
{
  v4 = 0;
  sub_297E4E1B4(2, a1, 4, 5u, "phLibNfc_ConfigTestMode");
  if (a1)
  {
    v2 = sub_297F04A7C(*(a1 + 3000), &v4, sub_297E5588C, a1, 0, 0);
  }

  else
  {
    v2 = 1;
    sub_297E4E0B0(2, 0, 4, 1u, "Invalid parameter, Libnfc Context is Invalid");
  }

  sub_297E4DFAC(2, a1, 4, 5u, "phLibNfc_ConfigTestMode");
  return v2;
}

uint64_t sub_297EF65D4(uint64_t a1, uint64_t a2, uint64_t *a3)
{
  sub_297E4E1B4(2, a1, 4, 5u, "phLibNfc_ConfigTestModeRspCb");
  if (a1 && a3)
  {
    v6 = a3[1];
    v7 = a2;
    if (v6 && (v7 = *v6, v7 == 44))
    {
      sub_297E79810(a1, &qword_2A1A93920, 1u);
    }

    else if (!v7)
    {
      v8 = *a3;
      *(a1 + 3088) = *a3;
      if (sub_297EA79F8(a1, v8) || !sub_297E7F0C8(*(a1 + 9784), *(a1 + 3036), *(a1 + 3136)))
      {
        a2 = 255;
      }

      else if (*(a1 + 9752) == 1)
      {
        sub_297E79734(a1, *(a1 + 2960), 1);
      }
    }
  }

  sub_297E4DFAC(2, a1, 4, 5u, "phLibNfc_ConfigTestModeRspCb");
  return a2;
}

uint64_t sub_297EF66C8(uint64_t a1, uint64_t a2)
{
  sub_297E4E1B4(2, a1, 4, 5u, "phLibNfc_ConfigTestModeComplete");
  if (a1)
  {
    if (a2)
    {
      v4 = 119;
    }

    else
    {
      a2 = sub_297F06170(*(a1 + 3088), 38, sub_297EFCAB8, a1);
      if (a2)
      {
        sub_297E4E0B0(1, a1 + 9792, 4, 1u, "Failed to Register phLibNfc_PropMfwRawCtrlMsgNtfHandler");
      }

      v4 = 118;
    }

    sub_297E4F450(*(a1 + 3000), v4, a2, 0, 0);
  }

  sub_297E4DFAC(2, a1, 4, 5u, "phLibNfc_ConfigTestModeComplete");
  return a2;
}

uint64_t sub_297EF6798(uint64_t a1)
{
  sub_297E4E1B4(2, a1, 4, 5u, "phLibNfc_SetVasCodeCfgCmd");
  if (a1)
  {
    v2 = sub_297F0A3C0(*(a1 + 3088), (a1 + 5464), sub_297E5BA84, a1);
  }

  else
  {
    sub_297E4E0B0(2, 0, 4, 1u, "phLibNfc_SetVasCodeCfgCmd : Libnfc Context is Invalid");
    v2 = 255;
  }

  sub_297E4DFAC(2, a1, 4, 5u, "phLibNfc_SetVasCodeCfgCmd");
  return v2;
}

uint64_t sub_297EF6844(uint64_t a1, uint64_t a2)
{
  sub_297E4E1B4(2, a1, 4, 5u, "phLibNfc_SetVasCodeCfgComplete");
  if (a1)
  {
    if (a2)
    {
      sub_297E4E0B0(1, a1 + 9792, 4, 1u, "phLibNfc_SetVasCodeCfgComplete: Failed");
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
    sub_297E4E0B0(2, 0, 4, 1u, "phLibNfc_SetVasCodeCfgComplete: Invalid LibNfc Ctx");
    v5 = 255;
  }

  sub_297E4DFAC(2, a1, 4, 5u, "phLibNfc_SetVasCodeCfgComplete");
  return v5;
}

uint64_t sub_297EF6914(uint64_t a1)
{
  sub_297E4E1B4(2, a1, 4, 5u, "phLibNfc_RFParaUpdateCmd");
  if (a1)
  {
    v2 = sub_297F0A3C0(*(a1 + 3088), (a1 + 5464), sub_297E5BA84, a1);
  }

  else
  {
    sub_297E4E0B0(2, 0, 4, 1u, "phLibNfc_RFParaUpdateCmd : Libnfc Context is Invalid");
    v2 = 255;
  }

  sub_297E4DFAC(2, a1, 4, 5u, "phLibNfc_RFParaUpdateCmd");
  return v2;
}

uint64_t sub_297EF69C0(uint64_t a1, uint64_t a2)
{
  sub_297E4E1B4(2, a1, 4, 5u, "phLibNfc_RFParaUpdateComplete");
  if (a1)
  {
    if (a2)
    {
      sub_297E4E0B0(1, a1 + 9792, 4, 1u, "phLibNfc_RFParaUpdateComplete: Failed");
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
    sub_297E4E0B0(2, 0, 4, 1u, "phLibNfc_RFParaUpdateComplete: Invalid LibNfc Ctx");
    v5 = 255;
  }

  sub_297E4DFAC(2, a1, 4, 5u, "phLibNfc_RFParaUpdateComplete");
  return v5;
}

uint64_t sub_297EF6A90(uint64_t a1)
{
  sub_297E4E1B4(2, a1, 4, 5u, "phLibNfc_SetSuicaEntrySysCodeCmd");
  if (a1)
  {
    phOsalNfc_SetMemory();
    *(a1 + 3612) |= 0x10000u;
    *(a1 + 5144) |= 0x8000u;
    *(a1 + 5270) = *(a1 + 5472);
    *(a1 + 5272) = *(a1 + 5474);
    v2 = sub_297E64020(*(a1 + 3088), a1 + 3608, sub_297E5BA84, a1);
  }

  else
  {
    sub_297E4E0B0(2, 0, 4, 1u, "phLibNfc_SetSuicaEntrySysCodeCmd : Libnfc Context is Invalid");
    v2 = 255;
  }

  sub_297E4DFAC(2, a1, 4, 5u, "phLibNfc_SetSuicaEntrySysCodeCmd");
  return v2;
}

uint64_t sub_297EF6B78(uint64_t a1, uint64_t a2)
{
  sub_297E4E1B4(2, a1, 4, 5u, "phLibNfc_SetSuicaEntrySysCodeComplete");
  if (a1)
  {
    if (a2)
    {
      sub_297E4E0B0(1, a1 + 9792, 4, 1u, "phLibNfc_SetSuicaEntrySysCodeComplete: Failed");
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
    sub_297E4E0B0(2, 0, 4, 1u, "phLibNfc_SetSuicaEntrySysCodeComplete: Invalid LibNfc Ctx");
    v5 = 255;
  }

  sub_297E4DFAC(2, a1, 4, 5u, "phLibNfc_SetSuicaEntrySysCodeComplete");
  return v5;
}

uint64_t sub_297EF6C48(uint64_t a1)
{
  sub_297E4E1B4(2, a1, 4, 5u, "phLibNfc_ConfigTestModeOff");
  if (a1)
  {
    v2 = sub_297F080D4(*(a1 + 3088), 0, sub_297E5588C, a1);
  }

  else
  {
    v2 = 1;
    sub_297E4E0B0(2, 0, 4, 1u, "Invalid parameter, Libnfc Context is Invalid");
  }

  sub_297E4DFAC(2, a1, 4, 5u, "phLibNfc_ConfigTestModeOff");
  return v2;
}

uint64_t sub_297EF6CF0(uint64_t a1, uint64_t a2)
{
  sub_297E4E1B4(2, a1, 4, 5u, "phLibNfc_ConfigTestModeOffRspCb");
  if (a2)
  {
    sub_297E4E0B0(2, a1, 4, 1u, "phLibNfc_ConfigTestModeOffRspCb: Failed");
  }

  sub_297E4DFAC(2, a1, 4, 5u, "phLibNfc_ConfigTestModeOffRspCb");
  return a2;
}

uint64_t sub_297EF6D70(uint64_t a1, uint64_t a2)
{
  sub_297E4E1B4(2, a1, 4, 5u, "phLibNfc_ConfigTestModeOffComplete");
  if (a1)
  {
    sub_297E4F450(*(a1 + 3000), 118, a2, 0, 0);
  }

  sub_297E4DFAC(2, a1, 4, 5u, "phLibNfc_ConfigTestModeOffComplete");
  return a2;
}

uint64_t sub_297EF6DEC(uint64_t a1)
{
  sub_297E4E1B4(2, a1, 4, 5u, "phLibNfc_SetChipScopeLogCfgCmd");
  if (a1)
  {
    v2 = sub_297F0A3C0(*(a1 + 3088), (a1 + 5464), sub_297E5BA84, a1);
  }

  else
  {
    sub_297E4E0B0(2, 0, 4, 1u, "phLibNfc_SetChipScopeLogCfgCmd : Libnfc Context is Invalid");
    v2 = 255;
  }

  sub_297E4DFAC(2, a1, 4, 5u, "phLibNfc_SetChipScopeLogCfgCmd");
  return v2;
}

uint64_t sub_297EF6E98(uint64_t a1, uint64_t a2)
{
  sub_297E4E1B4(2, a1, 4, 5u, "phLibNfc_SetChipScopeLogCfgComplete");
  if (a1)
  {
    if (a2)
    {
      sub_297E4E0B0(1, a1 + 9792, 4, 1u, "phLibNfc_SetChipScopeLogCfgComplete: Failed");
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
    sub_297E4E0B0(2, 0, 4, 1u, "phLibNfc_SetChipScopeLogCfgComplete: Invalid LibNfc Ctx");
    v5 = 255;
  }

  sub_297E4DFAC(2, a1, 4, 5u, "phLibNfc_SetChipScopeLogCfgComplete");
  return v5;
}

uint64_t sub_297EF6F68(uint64_t a1, uint64_t a2, uint64_t a3)
{
  sub_297E4E1B4(2, a1, 4, 5u, "phLibNfc_RawCtrlMsgTrnscvCmd");
  if (a1)
  {
    v5 = sub_297F0A68C(*(a1 + 3088), *(a1 + 6072), sub_297E5BA84, a3, a1);
    if (v5 != 13)
    {
      sub_297E4E0B0(2, a1, 4, 1u, "phLibNfc_RawCtrlMsgTrnscvCmd: Sending command failed");
    }
  }

  else
  {
    sub_297E4E0B0(2, 0, 4, 1u, "phLibNfc_RawCtrlMsgTrnscvCmd: Libnfc Context is Invalid");
    v5 = 255;
  }

  sub_297E4DFAC(2, a1, 4, 5u, "phLibNfc_RawCtrlMsgTrnscvCmd");
  return v5;
}

uint64_t sub_297EF703C(uint64_t a1, uint64_t a2, uint64_t *a3)
{
  v9 = 0;
  v10 = 0;
  sub_297E4E1B4(2, a1, 4, 5u, "phLibNfc_RawCtrlMsgTrnscvComplete");
  if (a1)
  {
    phOsalNfc_SetMemory();
    if (a2)
    {
      sub_297E4E0B0(1, a1 + 9792, 4, 1u, "phLibNfc_RawCtrlMsgTrnscvComplete: Failed");
      v6 = 119;
    }

    else
    {
      if (a3)
      {
        LODWORD(v10) = *(a3 + 2);
        if (v10)
        {
          v9 = *a3;
        }

        else
        {
          v9 = 0;
        }
      }

      v6 = 118;
    }

    v7 = sub_297E4F450(*(a1 + 9784), v6, a2, &v9, 0);
  }

  else
  {
    sub_297E4E0B0(2, 0, 4, 1u, "phLibNfc_RawCtrlMsgTrnscvComplete: Invalid LibNfc Ctx");
    v7 = 255;
  }

  sub_297E4DFAC(2, a1, 4, 5u, "phLibNfc_RawCtrlMsgTrnscvComplete");
  return v7;
}

uint64_t sub_297EF7158(uint64_t a1)
{
  sub_297E4E1B4(2, a1, 4, 5u, "phLibNfc_SetCWRFCfgCmd");
  if (!a1)
  {
    v4 = "phLibNfc_SetCWRFCfgCmd:Invalid Context";
    v5 = 2;
    v6 = 0;
LABEL_11:
    sub_297E4E0B0(v5, v6, 4, 1u, v4);
    v7 = 255;
    goto LABEL_12;
  }

  if (*(a1 + 5472) == 1)
  {
    v2 = *(a1 + 5476);
    if (v2 == 1)
    {
      v3 = 1;
    }

    else
    {
      v3 = 2 * (v2 == 2);
    }
  }

  else
  {
    v3 = 0;
  }

  if (sub_297F08690(*(a1 + 3088), v3, sub_297E5BA84, a1) != 13)
  {
    v4 = "phLibNfc_SetCWRFCfgCmd:Sending command failed";
    v6 = a1 + 9792;
    v5 = 1;
    goto LABEL_11;
  }

  v7 = 13;
LABEL_12:
  sub_297E4DFAC(2, a1, 4, 5u, "phLibNfc_SetCWRFCfgCmd");
  return v7;
}

uint64_t sub_297EF7250(uint64_t a1, int a2)
{
  sub_297E4E1B4(2, a1, 4, 5u, "phLibNfc_SetCWRFCfgComplete");
  if (a1)
  {
    if (a2)
    {
      sub_297E4E0B0(1, a1 + 9792, 4, 2u, "phLibNfc_SetCWRFCfgComplete: Failed status received from NFCC");
      v4 = 255;
    }

    else
    {
      v4 = 0;
    }

    v5 = sub_297E4F450(*(a1 + 9784), 118, v4, 0, 0);
  }

  else
  {
    sub_297E4E0B0(2, 0, 4, 1u, "phLibNfc_SetCWRFCfgComplete: Invalid LibNfc Ctx received from NCI");
    v5 = 255;
  }

  sub_297E4DFAC(2, a1, 4, 5u, "phLibNfc_SetCWRFCfgComplete");
  return v5;
}

uint64_t sub_297EF7320(uint64_t a1, unsigned int a2, unsigned int *a3)
{
  sub_297E4E1B4(2, a1, 4, 5u, "phLibNfc_CalcFieldStrength");
  if (a3)
  {
    v7 = *(a1 + 352);
    if (*(a1 + 352))
    {
      LOBYTE(v6) = *(a1 + 354);
      v7 = ((((v6 * 1000.0) * 0.0625) * a2) / v7);
    }

    *a3 = v7;
  }

  return sub_297E4DFAC(2, a1, 4, 5u, "phLibNfc_CalcFieldStrength");
}

uint64_t sub_297EF73D8(_BYTE *a1, unsigned int a2, float *a3, float *a4)
{
  sub_297E4E1B4(2, a1, 4, 5u, "phLibNfc_ApcCalculation3_0");
  v8 = 0;
  if (a3 && a4)
  {
    if (a1[2985] == 1 || a1[2986] == 1 || a1[2992] == 1)
    {
      v8 = 0;
      *a4 = vcvts_n_f32_u32(HIWORD(a2) & 0x7FF, 2uLL);
      v9 = BYTE1(a2) / 255.0;
      v10 = (((a2 >> 2) / 10.0) + 1.5) * v9;
      v11 = 1.0;
      if ((a2 & 2) == 0)
      {
        v11 = 2.0;
      }

      *a3 = (v11 * v10) * ((a2 & 1) + 1);
    }

    else
    {
      v8 = 255;
    }
  }

  sub_297E4DFAC(2, a1, 4, 5u, "phLibNfc_ApcCalculation3_0");
  return v8;
}

uint64_t sub_297EF74F4(uint64_t a1, int a2)
{
  sub_297E4E1B4(2, a1, 4, 5u, "phLibNfc_ComputeL1State");
  if ((a2 - 1) < 0xE)
  {
    v4 = (a2 - 1) + 1;
  }

  else
  {
    v4 = 255;
  }

  sub_297E4DFAC(2, a1, 4, 5u, "phLibNfc_ComputeL1State");
  return v4;
}

uint64_t sub_297EF7570(uint64_t a1, char a2)
{
  sub_297E4E1B4(2, a1, 4, 5u, "phLibNfc_ComputeL1FelicaState");
  if (((a2 - 1) & 0xF8) != 0)
  {
    v4 = 255;
  }

  else
  {
    v4 = (a2 - 1) + 1;
  }

  sub_297E4DFAC(2, a1, 4, 5u, "phLibNfc_ComputeL1FelicaState");
  return v4;
}

uint64_t sub_297EF75EC(uint64_t a1, int a2)
{
  sub_297E4E1B4(2, a1, 4, 5u, "phLibNfc_ComputeL2ClifState");
  if ((a2 - 1) < 0xF)
  {
    v4 = (a2 - 1) + 1;
  }

  else
  {
    v4 = 255;
  }

  sub_297E4DFAC(2, a1, 4, 5u, "phLibNfc_ComputeL2ClifState");
  return v4;
}

uint64_t sub_297EF7668(uint64_t a1, int a2)
{
  sub_297E4E1B4(2, a1, 4, 5u, "phLibNfc_ComputeL2Iso15693ClifState");
  if ((a2 - 1) < 0xA)
  {
    v4 = (a2 - 1) + 1;
  }

  else
  {
    v4 = 255;
  }

  sub_297E4DFAC(2, a1, 4, 5u, "phLibNfc_ComputeL2Iso15693ClifState");
  return v4;
}

uint64_t sub_297EF76E4(_BYTE *a1, uint64_t a2)
{
  sub_297E4E1B4(2, a1, 4, 5u, "phLibNfc_ComputeLxClifTech");
  switch(a2)
  {
    case 1:
      break;
    case 2:
      a2 = 2;
      break;
    case 3:
      a2 = 3;
      break;
    case 4:
      a2 = 4;
      break;
    case 5:
      a2 = 5;
      break;
    case 6:
      a2 = 6;
      break;
    case 7:
      a2 = 7;
      break;
    case 8:
      a2 = 8;
      break;
    case 9:
      a2 = 9;
      break;
    case 10:
      a2 = 10;
      break;
    case 11:
      a2 = 11;
      break;
    case 12:
      a2 = 12;
      break;
    case 13:
      a2 = 13;
      break;
    case 14:
      a2 = 14;
      break;
    case 15:
      if (a1[2984] == 1 || a1[2985] == 1)
      {
        a2 = 15;
      }

      else
      {
        a2 = 15;
        if (a1[2986] != 1)
        {
          if (a1[2992] == 1)
          {
            a2 = 15;
          }

          else
          {
            a2 = 255;
          }
        }
      }

      break;
    default:
      a2 = 255;
      break;
  }

  sub_297E4DFAC(2, a1, 4, 5u, "phLibNfc_ComputeLxClifTech");
  return a2;
}

uint64_t sub_297EF7820(uint64_t a1, int a2)
{
  sub_297E4E1B4(2, a1, 4, 5u, "phLibNfc_ComputeDataRxFailure");
  sub_297E4E1B4(2, a1, 4, 5u, "phLibNfc_ParseLogNtfDatRxFailure");
  sub_297E4DFAC(2, a1, 4, 5u, "phLibNfc_ParseLogNtfDatRxFailure");
  if ((a2 & 0xFFFFFFBF) == 0x84)
  {
    v4 = *(a1 + 64);
    sub_297E4E1B4(2, a1, 4, 5u, "phLibNfc_CheckDpllLock");
    if ((v4 - 8) >= 6)
    {
      v5 = -1;
    }

    else
    {
      v5 = 0x848484FF8484uLL >> (8 * (v4 - 8));
    }

    sub_297E4DFAC(2, a1, 4, 5u, "phLibNfc_CheckDpllLock");
  }

  else
  {
    v6 = *(a1 + 64);
    if (v6 == 5)
    {
      v7 = a2 & 0xBF;
    }

    else
    {
      v7 = -1;
    }

    if (v6 == 7)
    {
      v8 = a2 & 0xBF;
    }

    else
    {
      v8 = -1;
    }

    if (((a2 & 0xBF) + 123) <= 4u)
    {
      v5 = v8;
    }

    else
    {
      v5 = v7;
    }
  }

  sub_297E4DFAC(2, a1, 4, 5u, "phLibNfc_ComputeDataRxFailure");
  return v5;
}

uint64_t sub_297EF7950(uint64_t a1, int a2, int a3, int a4, int a5)
{
  sub_297E4E1B4(2, a1, 4, 5u, "phLibNfc_ExtractAPCInfo");
  sub_297E4DFAC(2, a1, 4, 5u, "phLibNfc_ExtractAPCInfo");
  return a2 | (a3 << 8) | (a4 << 16) | (a5 << 24);
}

_DWORD *sub_297EF79D8(_DWORD *a1, unsigned __int8 **a2)
{
  sub_297E4E1B4(2, a1, 4, 5u, "phLibNfc_ProcSysL1LogStandbyNtf");
  phOsalNfc_SetMemory();
  a1[12] = 1;
  a1[14] = **a2;
  v4 = a1[15] | (*a2)[1];
  a1[15] = v4;
  v5 = v4 | ((*a2)[2] << 8);
  a1[15] = v5;
  v6 = v5 | ((*a2)[3] << 16);
  a1[15] = v6;
  a1[15] = v6 | ((*a2)[4] << 24);
  sub_297E50DB0(1, (a1 + 2448), 4, 4u, "phLibNfc_ProcSysL1LogStandbyNtf: L1-phNfc_SysL1LogEntry.StandbyEvent");
  sub_297E50DB0(1, (a1 + 2448), 4, 4u, "phLibNfc_ProcSysL1LogStandbyNtf: L1-pSysL1StdbyDbgInfoEntry.eStandByDebgInfoTye");
  sub_297E50DB0(1, (a1 + 2448), 4, 4u, "\n\nphLibNfc_ProcSysL1LogStandbyNtf: L1-phNfc_sSysL1LoggingEventEntry_t.dwStandbyPrvntnHwRegValue");
  sub_297E4DFAC(2, a1, 4, 5u, "phLibNfc_ProcSysL1LogStandbyNtf");
  return a1 + 10;
}

uint64_t sub_297EF7B14(uint64_t a1, _BYTE **a2)
{
  sub_297E4E1B4(2, a1, 4, 5u, "phLibNfc_ProcSysL1LogDpcEventNtf");
  phOsalNfc_SetMemory();
  *(a1 + 52) = 1;
  *(a1 + 56) = **a2;
  *(a1 + 57) = (*a2)[1];
  *(a1 + 58) = *(*a2 + 1);
  *(a1 + 60) = (*a2)[4];
  sub_297E50DB0(1, a1 + 9792, 4, 4u, "\n\nphLibNfc_ProcSysL1LogDpcEventNtf: L1-phNfc_sSysL1LoggingEventEntry_t.pSysL1DpcDbgInfoEntry.bDpcVddPaLutIdx");
  sub_297E50DB0(1, a1 + 9792, 4, 4u, "\n\nphLibNfc_ProcSysL1LogDpcEventNtf: L1-phNfc_sSysL1LoggingEventEntry_t.pSysL1DpcDbgInfoEntry.wDpcVddPaCurrent");
  sub_297E4DFAC(2, a1, 4, 5u, "phLibNfc_ProcSysL1LogDpcEventNtf");
  return a1 + 40;
}

uint64_t sub_297EF7C08(_BYTE *a1, uint64_t *a2, unsigned __int8 *a3)
{
  v3 = a3;
  v5 = a1;
  v122 = 0;
  *a3 = 0;
  a3[4] = 0;
  sub_297E4E1B4(2, a1, 4, 5u, "phLibNfc_Sn100AndAboveProcSysL2LogNtf");
  if (*(a2 + 2))
  {
    v6 = 0;
    v118 = v3;
    v119 = v5;
    while (1)
    {
      v7 = *a2;
      v8 = *(*a2 + v6);
      v9 = v8 >> 4;
      v10 = v8 & 0xF;
      v11 = v6 + 1;
      if (v8 >> 4 > 4)
      {
        break;
      }

      if (v8 >> 4 <= 2)
      {
        if (v9 == 1)
        {
          v40 = *(v3 + 2);
          v41 = *v3;
          v123 = 0;
          sub_297E4E1B4(2, v5, 4, 5u, "phLibNfc_L2EventProc");
          if (v40)
          {
            v42 = (v7 + v11);
            v43 = v40 + 52 * v41;
            *(v43 + 44) = 0;
            *(v43 + 32) = 0;
            v44 = *v42;
            *v43 = v44;
            *v43 = v44 | (v42[1] << 8);
            v45 = v42[2];
            *(v43 + 2) = v45;
            *(v43 + 2) = v45 | (v42[3] << 8);
            if (v5[2985] == 1 || v5[2986] == 1)
            {
              if ((v10 - 9) > 1)
              {
                v46 = 0;
                v47 = 0;
                v48 = 6;
                goto LABEL_79;
              }

LABEL_78:
              v46 = v42[6];
              v47 = v42[7];
              v48 = 8;
            }

            else
            {
              v46 = 0;
              if ((v10 - 9) > 1)
              {
                v48 = 6;
                v47 = 0;
              }

              else
              {
                v48 = 6;
                v47 = 0;
                if (v5[2992] == 1)
                {
                  goto LABEL_78;
                }
              }
            }

LABEL_79:
            v120 = v47;
            v121 = v46;
            v86 = v42[4];
            v87 = v42[5];
            *(v43 + 12) = 255;
            v88 = v42[v48] >> 4;
            v5 = v119;
            *(v43 + 16) = sub_297EF76E4(v119, v88);
            v89 = v42[v48];
            *(v43 + 4) = 0xFF000000FFLL;
            v90 = v89 & 0xF;
            if (v88 == 15)
            {
              *(v43 + 8) = sub_297EF7668(v119, v90);
            }

            else
            {
              *(v43 + 4) = sub_297EF75EC(v119, v90);
            }

            v91 = v86;
            v92 = v87 | (v86 << 8);
            if (v119[2984] == 1 || v119[2985] == 1 || v119[2986] == 1 || v119[2992] == 1)
            {
              v3 = v118;
              if ((v10 - 9) <= 1 && (*(v43 + 16) & 0xFFFFFFF8) == 8 && (v119[2986] == 1 || v119[2992] == 1) && !v119[2994])
              {
                *(v43 + 48) = sub_297EF7950(v119, v91, v87, v121, v120);
              }

              else
              {
                v93 = *(v43 + 4);
                if (v93 == 10 || v93 == 7)
                {
                  if (v119[2985] == 1 || v119[2986] == 1 || (v94 = 0, v95 = 0, v119[2992] == 1))
                  {
                    v96 = sub_297EF7950(v119, v91, v87, v121, v120);
                    if (sub_297EF73D8(v119, v96, &v123 + 1, &v123))
                    {
                      sub_297E4E0B0(1, (v119 + 9792), 4, 1u, " Vpp Calculation Failed!!!");
                      goto LABEL_124;
                    }

                    v95 = HIDWORD(v123);
                    v94 = v123;
                  }

                  *(v43 + 40) = v95;
                  *(v43 + 44) = v94;
                  *(v43 + 24) = -1;
LABEL_104:
                  *(v43 + 28) = 0;
                }

                else
                {
                  *(v43 + 40) = 0;
                  *(v43 + 24) = v92;
                  if (v119[2985] != 1 && v119[2986] != 1 && v119[2992] != 1)
                  {
                    goto LABEL_104;
                  }

                  sub_297EF7320(v119, v92, (v43 + 28));
                }
              }
            }

            else
            {
              *(v43 + 24) = v92;
              *(v43 + 28) = 0;
              v3 = v118;
            }

LABEL_124:
            if ((v10 | 2) == 0xA)
            {
              v112 = v42[v48 | 1];
              if (v10 != 10 || (*(v43 + 16) & 0xFFFFFFF8) != 8 || v119[2986] != 1 && v119[2992] != 1 || v119[2994])
              {
                v113 = *(v43 + 4);
                if (v113 <= 12)
                {
                  if (v113 == 5)
                  {
                    sub_297E4E1B4(2, v119, 4, 5u, "phLibNfc_ParseLogNtfDatRxFailure");
                    sub_297E4DFAC(2, v119, 4, 5u, "phLibNfc_ParseLogNtfDatRxFailure");
                  }

                  else if (v113 == 11)
                  {
                    sub_297E4E1B4(2, v119, 4, 5u, "phLibNfc_ParseWupIotReconfigStage");
                    if (v112 >= 6)
                    {
                      v115 = -1;
                    }

                    else
                    {
                      v115 = 0x504030201FFuLL >> (8 * v112);
                    }

                    sub_297E4DFAC(2, v119, 4, 5u, "phLibNfc_ParseWupIotReconfigStage");
                    *(v43 + 36) = v115;
                    goto LABEL_152;
                  }
                }

                else
                {
                  if ((v113 - 13) < 3)
                  {
                    *(v43 + 36) = v112;
                    if ((v119[2985] == 1 || v119[2986] == 1 || v119[2992] == 1) && (v113 == 15 && (v112 & 0xFE) == 6 || v113 == 14 && v112 == 8))
                    {
                      v114 = *(v43 + 24);
                      *(v43 + 28) = 0;
                      *(v43 + 32) = v114;
                      *(v43 + 24) = 0;
                      *(v43 + 40) = 0;
                    }

                    goto LABEL_152;
                  }

                  if (v113 == 255)
                  {
                    v116 = *(v43 + 8);
                    if (v116 != 10 && v116 != 6)
                    {
                      goto LABEL_152;
                    }
                  }
                }
              }

              *(v43 + 36) = v112;
            }

LABEL_152:
            sub_297E50DB0(1, (v119 + 9792), 4, 4u, "phLibNfc_L2EventProc: L2-wTimeStampMillisec");
            sub_297E50DB0(1, (v119 + 9792), 4, 4u, "phLibNfc_L2EventProc: L2-wAmsAgcRegValue");
            sub_297E50DB0(1, (v119 + 9792), 4, 4u, "phLibNfc_L2EventProc: L2-bADCRegValue");
            sub_297E50DB0(1, (v119 + 9792), 4, 4u, "phLibNfc_L2EventProc: L2-wTimeStampMicrosec");
            sub_297E50DB0(1, (v119 + 9792), 4, 4u, "phLibNfc_L2EventProc: L2-wRssiInterpolatedinfo");
            sub_297E50DB0(1, (v119 + 9792), 4, 4u, "phLibNfc_L2EventProc: L2-dwFieldStrength");
            sub_297E50DB0(1, (v119 + 9792), 4, 4u, "phLibNfc_L2EventProc: L2-eDebMgmtL2Tech");
            sub_297E50DB0(1, (v119 + 9792), 4, 4u, "phLibNfc_L2EventProc: L2-eDebMgmtL2State");
            sub_297E50DB0(1, (v119 + 9792), 4, 4u, "phLibNfc_L2EventProc: L2-bExtraInfo");
          }

          sub_297E4DFAC(2, v5, 4, 5u, "phLibNfc_L2EventProc");
          ++*v3;
          LODWORD(v11) = v11 + v10;
          goto LABEL_154;
        }

        if (v9 == 2)
        {
          v12 = *(v3 + 3);
          if (v12)
          {
            v13 = *(v7 + v11);
            v14 = v3[1];
            v15 = v12 + 16 * v14;
            *v15 = v13;
            *v15 = v13 | (*(*a2 + v6 + 2) << 8);
            v16 = *(*a2 + v6 + 3);
            *(v15 + 2) = v16;
            *(v15 + 2) = v16 | (*(*a2 + v6 + 4) << 8);
            v17 = *(*a2 + v6 + 5);
            *(v15 + 4) = v17 << 8;
            v18 = *(*a2 + v6 + 6) | (v17 << 8);
            *(v15 + 4) = v18;
            if (v5[2985] == 1 || v5[2986] == 1 || v5[2992] == 1)
            {
              sub_297EF7320(v5, v18, (v15 + 8));
              v12 = *(v3 + 3);
              v14 = v3[1];
            }

            else
            {
              *(v15 + 8) = 0;
            }

            LODWORD(v11) = v6 + 8;
            v19 = v12 + 16 * v14;
            *(v19 + 12) = *(*a2 + v6 + 7);
            if (v10 == 8)
            {
              v20 = *(*a2 + v11);
              LODWORD(v11) = v6 + 9;
            }

            else
            {
              v20 = -1;
            }

            *(v19 + 13) = v20;
            v3[1] = v14 + 1;
            goto LABEL_154;
          }

          v67 = (v5 + 9792);
          v68 = " FelicaCmdEvent NULL!!!";
          goto LABEL_56;
        }

        goto LABEL_45;
      }

      if (v9 != 3)
      {
        if (v9 == 4)
        {
          v30 = *(v3 + 4);
          if (v30)
          {
            v31 = v30 + 20 * v3[3];
            *(v31 + 16) = 0;
            v32 = *(*a2 + v11);
            *v31 = v32;
            *v31 = v32 | (*(*a2 + v6 + 2) << 8);
            v33 = *(*a2 + v6 + 3);
            *(v31 + 2) = v33;
            *(v31 + 2) = v33 | (*(*a2 + v6 + 4) << 8);
            v34 = sub_297EF7950(v5, *(*a2 + v6 + 5), *(*a2 + v6 + 6), *(*a2 + v6 + 7), *(*a2 + v6 + 8));
            if (sub_297EF73D8(v5, v34, &v122 + 1, &v122))
            {
              sub_297E4E0B0(1, (v5 + 9792), 4, 1u, " Vpp Calculation Failed!!!");
              v35 = *(v3 + 4);
              v36 = v3[3];
            }

            else
            {
              v35 = *(v3 + 4);
              v36 = v3[3];
              v81 = v35 + 20 * v3[3];
              *(v81 + 12) = HIDWORD(v122);
              *(v81 + 16) = v122;
            }

            v82 = v35 + 20 * v36;
            *(v82 + 4) = *(*a2 + v6 + 9);
            LODWORD(v11) = v6 + 12;
            *(v82 + 6) = *(*a2 + v6 + 11) | (*(*a2 + v6 + 10) << 8);
            if (v10 != 10)
            {
              if (v5[2985] == 1 || v5[2986] == 1)
              {
                if (v10 != 12)
                {
                  v83 = -1;
LABEL_117:
                  *(v35 + 20 * v36 + 8) = v83;
                  v3[3] = v36 + 1;
                  goto LABEL_154;
                }
              }

              else
              {
                v83 = -1;
                if (v10 != 12 || v5[2992] != 1)
                {
                  goto LABEL_117;
                }
              }
            }

            v83 = *(*a2 + v11);
            LODWORD(v11) = v6 + 13;
            goto LABEL_117;
          }

          v67 = (v5 + 9792);
          v68 = "phLibNfc_Sn100AndAboveProcSysL2LogNtf:pFelicaRspEvent NULL!!!";
          goto LABEL_56;
        }

        goto LABEL_45;
      }

      v55 = *(v3 + 5);
      if (!v55)
      {
        v67 = (v5 + 9792);
        v68 = " FelicaSysCode NULL!!!";
LABEL_56:
        sub_297E4E0B0(1, v67, 4, 2u, v68);
        goto LABEL_154;
      }

      v56 = *(v7 + v11);
      v57 = v3[2];
      v58 = (v55 + 6 * v57);
      *v58 = v56;
      *v58 = v56 | (*(*a2 + v6 + 2) << 8);
      v59 = *(*a2 + v6 + 3);
      v58[1] = v59;
      v58[1] = v59 | (*(*a2 + v6 + 4) << 8);
      v60 = *(*a2 + v6 + 5);
      v58[2] = v60 << 8;
      LODWORD(v11) = v6 + 7;
      v58[2] = *(*a2 + v6 + 6) | (v60 << 8);
      v3[2] = v57 + 1;
LABEL_154:
      v6 = v11;
      if (v11 >= *(a2 + 2))
      {
        return sub_297E4DFAC(2, v5, 4, 5u, "phLibNfc_Sn100AndAboveProcSysL2LogNtf");
      }
    }

    if (v8 >> 4 > 7)
    {
      if (v9 == 8)
      {
        if (v10 == 8 && (v61 = *(v3 + 10)) != 0)
        {
          v62 = *(v7 + v11);
          v63 = v3[8];
          v64 = v61 + 8 * v63;
          *v64 = v62;
          *v64 = v62 | (*(*a2 + v6 + 2) << 8);
          v65 = *(*a2 + v6 + 3);
          *(v64 + 2) = v65;
          *(v64 + 2) = v65 | (*(*a2 + v6 + 4) << 8);
          v66 = *(*a2 + v6 + 5);
          *(v64 + 4) = v66;
          *(v64 + 4) = v66 | (*(*a2 + v6 + 6) << 8);
          *(v64 + 6) = *(*a2 + v6 + 7);
          LODWORD(v11) = v6 + 9;
          *(v64 + 7) = *(*a2 + v6 + 8);
          v3[8] = v63 + 1;
        }

        else
        {
          v69 = *(v3 + 9);
          if (v69)
          {
            v70 = *(v7 + v11);
            v71 = (v69 + 20 * v3[7]);
            *v71 = v70;
            *v71 = v70 | (*(*a2 + v6 + 2) << 8);
            v72 = *(*a2 + v6 + 3);
            v71[1] = v72;
            v71[1] = v72 | (*(*a2 + v6 + 4) << 8);
            v73 = *(*a2 + v6 + 5) >> 4;
            v74 = sub_297EF76E4(v5, v73);
            v75 = *(v3 + 9) + 20 * v3[7];
            *(v75 + 12) = v74;
            v76 = *(*a2 + v6 + 5);
            *(v75 + 4) = 0xFF000000FFLL;
            v77 = v76 & 0xF;
            if (v73 == 15)
            {
              v78 = sub_297EF7668(v5, v77);
              v79 = *(v3 + 9);
              v80 = v3[7];
              *(v79 + 20 * v3[7] + 8) = v78;
            }

            else
            {
              v84 = sub_297EF75EC(v5, v77);
              v79 = *(v3 + 9);
              v80 = v3[7];
              *(v79 + 20 * v3[7] + 4) = v84;
            }

            v85 = v79 + 20 * v80;
            *(v85 + 16) = *(*a2 + v6 + 6);
            LODWORD(v11) = v6 + 8;
            *(v85 + 17) = *(*a2 + v6 + 7);
            v3[7] = v80 + 1;
          }
        }

        goto LABEL_154;
      }

      if (v9 == 12)
      {
        v37 = *(v3 + 8);
        if (v37)
        {
          v38 = v3[6];
          v39 = (v37 + 16 * v38);
          *v39 = *(v7 + v11);
          v39[1] = *(*a2 + v6 + 2);
          v39[2] = *(*a2 + v6 + 3);
          LODWORD(v11) = v6 + 5;
          v39[3] = *(*a2 + v6 + 4);
          v3[6] = v38 + 1;
        }

        goto LABEL_154;
      }
    }

    else
    {
      if (v9 == 5)
      {
        v49 = *(v3 + 6);
        if (v49)
        {
          v50 = *(v7 + v11);
          v51 = v3[4];
          v52 = v49 + 12 * v3[4];
          *v52 = v50;
          *v52 = v50 | (*(*a2 + v6 + 2) << 8);
          v53 = *(*a2 + v6 + 3);
          *(v52 + 2) = v53;
          *(v52 + 2) = v53 | (*(*a2 + v6 + 4) << 8);
          LODWORD(v11) = v6 + 6;
          *(v52 + 4) = *(*a2 + v6 + 5);
          if (v10 == 6)
          {
            v54 = *(*a2 + v11);
            LODWORD(v11) = v6 + 7;
          }

          else
          {
            v54 = -1;
          }

          *(v49 + 12 * v51 + 8) = v54;
          v3[4] = v51 + 1;
        }

        goto LABEL_154;
      }

      if (v9 == 6)
      {
        v21 = *(v3 + 7);
        if (v21)
        {
          v22 = *(v7 + v11);
          v23 = v3[5];
          v24 = v21 + 28 * v3[5];
          *(v24 + 4) = v22;
          *(v24 + 4) = v22 | (*(*a2 + v6 + 2) << 8);
          v25 = *(*a2 + v6 + 3);
          *(v24 + 6) = v25;
          v26 = v6 + 5;
          *(v24 + 6) = v25 | (*(*a2 + v6 + 4) << 8);
          v27 = *(*a2 + v6 + 7);
          if (v27 <= 3)
          {
            if (v27 == 1)
            {
              v97 = v21 + 28 * v23;
              *v97 = 1;
              v98 = *(*a2 + v26);
              *(v97 + 16) = *(v97 + 16) & 0xFFFE | v98 & 1;
              v99 = *(v3 + 7) + 28 * v3[5];
              *(v99 + 16) = *(v99 + 16) & 0xFFFD | v98 & 2;
              v100 = *(v3 + 7) + 28 * v3[5];
              *(v100 + 16) = *(v100 + 16) & 0xFFFB | v98 & 4;
              v101 = *(v3 + 7) + 28 * v3[5];
              *(v101 + 16) = *(v101 + 16) & 0xFFF7 | v98 & 8;
              v102 = *(v3 + 7) + 28 * v3[5];
              *(v102 + 16) = *(v102 + 16) & 0xFFEF | v98 & 0x10;
              v103 = *(v3 + 7) + 28 * v3[5];
              *(v103 + 16) = *(v103 + 16) & 0xFFDF | v98 & 0x20;
              v104 = *(v3 + 7) + 28 * v3[5];
              *(v104 + 16) = *(v104 + 16) & 0xFFBF | v98 & 0x40;
              v105 = *(v3 + 7) + 28 * v3[5];
              *(v105 + 16) = *(v105 + 16) & 0xFF7F | v98 & 0x80;
              v106 = *(*a2 + v6 + 6);
              v107 = *(v3 + 7) + 28 * v3[5];
              *(v107 + 16) = *(v107 + 16) & 0xFEFF | ((v106 & 1) << 8);
              v108 = *(v3 + 7) + 28 * v3[5];
              *(v108 + 16) = *(v108 + 16) & 0xFDFF | (((v106 >> 1) & 1) << 9);
              goto LABEL_111;
            }

            if (v27 == 2)
            {
              v110 = v21 + 28 * v23;
              *v110 = 2;
              *(v110 + 20) = *(*a2 + v26);
              v111 = *(*a2 + v6 + 6);
              if (v111 > 1)
              {
                if (v111 != 2 && v111 != 3)
                {
                  v111 = 255;
                }
              }

              else if (!*(*a2 + v6 + 6))
              {
                *(v110 + 24) = 0;
                goto LABEL_111;
              }

              *(v110 + 24) = v111;
LABEL_111:
              LODWORD(v11) = v6 + 8;
              ++v3[5];
              goto LABEL_154;
            }

            if (v27 != 3)
            {
              goto LABEL_107;
            }

            v28 = 28 * v23;
            v29 = 3;
          }

          else if (*(*a2 + v6 + 7) > 5u)
          {
            if (v27 == 6)
            {
              *(v21 + 28 * v23) = 6;
              goto LABEL_111;
            }

            if (v27 != 7)
            {
              goto LABEL_107;
            }

            v28 = 28 * v23;
            v29 = 7;
          }

          else
          {
            if (v27 != 4)
            {
              if (v27 == 5)
              {
                v28 = 28 * v23;
                v29 = 5;
                goto LABEL_110;
              }

LABEL_107:
              v109 = (v21 + 28 * v23);
              if ((~v27 & 0xE) != 0)
              {
                *v109 = 8;
                sub_297E50EBC(1, (v5 + 9792), 4, 2u, " HLM Invalid Event received");
              }

              else
              {
                *v109 = 0;
                *(v21 + 28 * v23 + 8) = (*(*a2 + v26) | (*(*a2 + v6 + 6) << 8)) / 142.2;
                *(*(v3 + 7) + 28 * v3[5] + 12) = sub_297EF76E4(v5, *(*a2 + v6 + 7) >> 4);
              }

              goto LABEL_111;
            }

            v28 = 28 * v23;
            v29 = 4;
          }

LABEL_110:
          *(v21 + v28) = v29;
          goto LABEL_111;
        }

        v67 = (v5 + 9792);
        v68 = " HLM Event NULL!!!";
        goto LABEL_56;
      }
    }

LABEL_45:
    if (v6 >= ~v10)
    {
      LODWORD(v11) = 0;
    }

    else
    {
      LODWORD(v11) = v11 + v10;
    }

    v67 = (v5 + 9792);
    v68 = " phLibNfc_Sn100AndAboveProcSysL2LogNtf : Invalid tag ID !!!";
    goto LABEL_56;
  }

  return sub_297E4DFAC(2, v5, 4, 5u, "phLibNfc_Sn100AndAboveProcSysL2LogNtf");
}

uint64_t sub_297EF8C70(void *a1, uint64_t a2)
{
  sub_297E4E1B4(2, a1, 4, 5u, "phLibNfc_SetRfSettingsInitCb");
  if (a1)
  {
    v4 = a1[769];
    v5 = a1[770];
    *(a1 + 769) = 0u;
    if (v4)
    {
      sub_297E50EBC(1, (a1 + 1224), 4, 4u, "phLibNfc_SetRfSettingsInitCb:Invoking callback function, wStatus = ");
      sub_297E4D930(1, (a1 + 1224), 4, 40, "phLibNfc_SetRfSettingsInitCb");
      v4(a1[1223], v5, a2);
    }
  }

  return sub_297E4DFAC(2, a1, 4, 5u, "phLibNfc_SetRfSettingsInitCb");
}

uint64_t sub_297EF8D5C(uint64_t a1, int a2, uint64_t *a3)
{
  Memory_Typed = 0;
  v70 = 0u;
  v71 = 0u;
  v68 = 0u;
  v69 = 0u;
  v67 = 0u;
  v65 = 0;
  v66 = 0;
  sub_297E4E1B4(2, a1, 4, 5u, "phLibNfc_LoggingNtfHandler");
  if (!a1)
  {
    return sub_297E4DFAC(2, a1, 4, 5u, "phLibNfc_LoggingNtfHandler");
  }

  if (!a3)
  {
    return sub_297E4DFAC(2, a1, 4, 5u, "phLibNfc_LoggingNtfHandler");
  }

  sub_297E4E0B0(1, a1 + 9792, 4, 4u, "phLibNfc_LoggingNtfHandler: Received Lx debug logging Ntf from NFCC");
  v6 = *a3;
  if (!*a3)
  {
    return sub_297E4DFAC(2, a1, 4, 5u, "phLibNfc_LoggingNtfHandler");
  }

  v7 = *(a3 + 2);
  if (!v7)
  {
    return sub_297E4DFAC(2, a1, 4, 5u, "phLibNfc_LoggingNtfHandler");
  }

  if (a2 == 8 && v7 >= 7)
  {
    v73[0] = 0;
    sub_297E4E1B4(2, a1, 4, 5u, "phLibNfc_549ProcSysL1LogNtf");
    v8 = *(a3 + 2);
    v9 = (a1 + 40);
    phOsalNfc_SetMemory();
    *(a1 + 96) = 0;
    if (v8 - 7 > 1)
    {
      if (v8 - 9 <= 1)
      {
        v10 = *(a1 + 2985);
        if (v10 == 1 || *(a1 + 2986) == 1 || *(a1 + 2992) == 1)
        {
LABEL_26:
          *(a1 + 40) = *(a1 + 40) & 0xFC | 1;
          v13 = **a3;
          *(a1 + 56) = v13;
          *(a1 + 56) = v13 | (*(*a3 + 1) << 8);
          v14 = *(*a3 + 2);
          *(a1 + 58) = v14;
          *(a1 + 58) = v14 | (*(*a3 + 3) << 8);
          v15 = *(*a3 + 4);
          v16 = *(*a3 + 5);
          *(a1 + 80) = 0;
          *(a1 + 76) = v16 | (v15 << 8);
          v61 = v8 - 9;
          if (v8 >= 9 && (v10 == 1 || *(a1 + 2986) == 1 || *(a1 + 2992) == 1))
          {
            v59 = *(*a3 + 7);
            v60 = *(*a3 + 6);
            v17 = 8;
          }

          else
          {
            v59 = 0;
            v60 = 0;
            v17 = 6;
          }

          *(a1 + 60) = -1;
          v23 = *(*a3 + v17) >> 4;
          v62 = sub_297EF76E4(a1, v23);
          *(a1 + 68) = v62;
          v24 = *(*a3 + v17) & 0xF;
          v25 = *(a1 + 2984);
          if (v25 == 1 || *(a1 + 2985) == 1 || *(a1 + 2986) == 1)
          {
            if (v23 == 10 || v23 == 3)
            {
              goto LABEL_44;
            }

            v27 = v23 == 15;
            if (v23 == 15 && v25 == 1)
            {
              *(a1 + 64) = sub_297EF74F4(a1, v24);
              goto LABEL_45;
            }

            v41 = (a1 + 2985);
            if (*(a1 + 2985) == 1 || *(a1 + 2986) == 1)
            {
              if (v23 == 15)
              {
                goto LABEL_214;
              }

              goto LABEL_217;
            }

            v43 = *(a1 + 2992);
          }

          else
          {
            v43 = *(a1 + 2992);
            if (v23 == 3 && v43 == 1 || v23 == 3)
            {
              goto LABEL_44;
            }

            v41 = (a1 + 2985);
            if (v23 != 15)
            {
              if (v23 == 10)
              {
LABEL_44:
                *(a1 + 84) = sub_297EF7570(a1, v24);
                goto LABEL_45;
              }

              goto LABEL_217;
            }

            v27 = 1;
          }

          if (v27 && v43 == 1)
          {
LABEL_214:
            if (v24 == 8)
            {
              v51 = 8;
            }

            else if (v24 == 2)
            {
              v51 = 2;
            }

            else
            {
              v51 = 255;
            }

            *(a1 + 64) = v51;
            goto LABEL_45;
          }

LABEL_217:
          v58 = v16 | (v15 << 8);
          v52 = v41;
          v53 = sub_297EF74F4(a1, v24);
          *(a1 + 64) = v53;
          if (*(a1 + 2984) != 1 && *v52 != 1 && *(a1 + 2986) != 1 && *(a1 + 2992) != 1)
          {
            goto LABEL_45;
          }

          if (v53 - 8 >= 6 && v53 != 1)
          {
            *(a1 + 76) = v58;
            if (*(a1 + 2985) == 1 || *(a1 + 2986) == 1 || *(a1 + 2992) == 1)
            {
              sub_297EF7320(a1, v58, (a1 + 80));
              if (*(a1 + 2985) == 1 || *(a1 + 2986) == 1 || *(a1 + 2992) == 1)
              {
                *(a1 + 44) = 1;
                v55 = (v58 * 1000.0) * 0.00048828;
LABEL_260:
                *(a1 + 92) = v55;
                goto LABEL_45;
              }
            }

            else
            {
              *(a1 + 80) = 0;
            }

            *(a1 + 44) = 1;
            v55 = vcvts_n_f32_u32(v58, 8uLL);
            goto LABEL_260;
          }

          if (*v52 == 1 || *(a1 + 2986) == 1)
          {
            if (v61 > 1)
            {
              goto LABEL_225;
            }
          }

          else
          {
            v54 = 1;
            if (*(a1 + 2992) != 1 || v61 >= 2)
            {
              goto LABEL_244;
            }
          }

          v56 = sub_297EF7950(a1, v15, v16, v60, v59);
          if ((v62 & 0xF8) != 8 || *(a1 + 2986) != 1 && *(a1 + 2992) != 1 || *(a1 + 2994))
          {
            v54 = sub_297EF73D8(a1, v56, v73 + 1, v73) == 0;
LABEL_244:
            if ((v62 & 0xF8) == 8 && (*(a1 + 2986) == 1 || *(a1 + 2992) == 1) && !*(a1 + 2994))
            {
              sub_297E4E0B0(1, a1 + 9792, 4, 4u, "phLibNfc_549ProcSysL1LogNtf:In case of Reader Mode Robustness Info, Vpp/APC info should not be assigned");
            }

            else if (v54)
            {
              *(a1 + 44) = 1;
              v57 = v73[0];
              *(a1 + 76) = -1;
              *(a1 + 92) = HIDWORD(v57);
              *(a1 + 96) = v57;
            }

            else
            {
              sub_297E4E0B0(1, a1 + 9792, 4, 1u, " APC Calculation Failed!!!");
            }

LABEL_45:
            if ((v8 | 2) != 0xA)
            {
              *(a1 + 72) = 255;
              v9 = (a1 + 40);
              goto LABEL_100;
            }

            v26 = *(*a3 + v17 + 1);
            v9 = (a1 + 40);
            if (v8 == 10 && (v62 & 0xF8) == 8 && (*(a1 + 2986) == 1 || *(a1 + 2992) == 1) && !*(a1 + 2994))
            {
              goto LABEL_99;
            }

            if (v23 != 3)
            {
              if (v23 == 15)
              {
                if (*(a1 + 64) == 8)
                {
LABEL_99:
                  *(a1 + 88) = v26;
LABEL_100:
                  if (*(a1 + 2984) != 1 && *(a1 + 2985) != 1 && *(a1 + 2986) != 1 && *(a1 + 2992) != 1)
                  {
                    v9 = (a1 + 56);
                  }

                  sub_297E50DB0(1, a1 + 9792, 4, 4u, "\n\nphLibNfc_549ProcSysL1LogNtf: L1-wTimeStampMillisec");
                  sub_297E50DB0(1, a1 + 9792, 4, 4u, "phLibNfc_549ProcSysL1LogNtf: L1-wTimeStampMicrosec");
                  sub_297E50DB0(1, a1 + 9792, 4, 4u, "\n\nphLibNfc_549ProcSysL1LogNtf: L1-RSSI wRssiInterpolatedinfo");
                  sub_297E50DB0(1, a1 + 9792, 4, 4u, "\n\nphLibNfc_549ProcSysL1LogNtf: L1- Calculated Field Strength");
                  sub_297E50DB0(1, a1 + 9792, 4, 4u, "phLibNfc_549ProcSysL1LogNtf: L1-eDebMgmtL1Tech");
                  sub_297E50DB0(1, a1 + 9792, 4, 4u, "phLibNfc_549ProcSysL1LogNtf: L1-eDebMgmtL1State");
                  if (*(a1 + 64) == 5)
                  {
                    sub_297E50DB0(1, a1 + 9792, 4, 4u, "phLibNfc_549ProcSysL1LogNtf: L1-eDebMgmtL1DataRxFailure");
                  }

                  goto LABEL_184;
                }

LABEL_96:
                *(a1 + 72) = sub_297EF7820(a1, v26);
                goto LABEL_100;
              }

              if (v23 != 10)
              {
                v42 = *(a1 + 64);
                if (v42 <= 0xA && ((1 << v42) & 0x5D2) != 0)
                {
                  goto LABEL_99;
                }

                goto LABEL_96;
              }
            }

            if ((*(a1 + 84) - 6) <= 2)
            {
              goto LABEL_99;
            }

            goto LABEL_96;
          }

          *(a1 + 100) = v56;
LABEL_225:
          v54 = 1;
          goto LABEL_244;
        }
      }
    }

    else
    {
      v10 = *(a1 + 2985);
      if (!*(a1 + 2985) || !*(a1 + 2986) || !*(a1 + 2992))
      {
        goto LABEL_26;
      }
    }

    if (v8 != 12 && v8 != 10)
    {
      v9 = 0;
LABEL_184:
      sub_297E4DFAC(2, a1, 4, 5u, "phLibNfc_549ProcSysL1LogNtf");
      goto LABEL_185;
    }

    *(a1 + 40) = *(a1 + 40) & 0xFC | 2;
    v18 = **a3;
    *(a1 + 56) = v18;
    *(a1 + 56) = v18 | (*(*a3 + 1) << 8);
    v19 = *(*a3 + 2);
    *(a1 + 58) = v19;
    *(a1 + 58) = v19 | (*(*a3 + 3) << 8);
    if (*(a1 + 2985) == 1 || *(a1 + 2986) == 1)
    {
      if (v8 != 12)
      {
        v20 = 0;
        v21 = 6;
LABEL_37:
        v22 = 0;
        goto LABEL_122;
      }
    }

    else
    {
      v20 = 0;
      v21 = 6;
      if (v8 != 12)
      {
        goto LABEL_37;
      }

      v22 = 0;
      if (*(a1 + 2992) != 1)
      {
        goto LABEL_122;
      }
    }

    v44 = sub_297EF7950(a1, *(*a3 + 4), *(*a3 + 5), *(*a3 + 6), *(*a3 + 7));
    if (sub_297EF73D8(a1, v44, v73 + 1, v73))
    {
      *(a1 + 44) = 0;
      sub_297E4E0B0(1, a1 + 9792, 4, 1u, " APC Calculation Failed!!!");
      v21 = 8;
LABEL_123:
      v45 = *(*a3 + v21) >> 4;
      sub_297E4E1B4(2, a1, 4, 5u, "phLibNfc_Compute7816ClifTech");
      switch(v45)
      {
        case 1:
          break;
        case 2:
          LODWORD(v45) = 2;
          break;
        case 3:
          LODWORD(v45) = 3;
          break;
        case 4:
          LODWORD(v45) = 4;
          break;
        case 5:
          LODWORD(v45) = 5;
          break;
        case 6:
          LODWORD(v45) = 6;
          break;
        case 7:
          LODWORD(v45) = 7;
          break;
        case 8:
          LODWORD(v45) = 8;
          break;
        case 9:
          LODWORD(v45) = 9;
          break;
        case 10:
          LODWORD(v45) = 10;
          break;
        case 11:
          LODWORD(v45) = 11;
          break;
        case 12:
          LODWORD(v45) = 12;
          break;
        case 13:
          LODWORD(v45) = 13;
          break;
        case 14:
          LODWORD(v45) = 14;
          break;
        case 15:
          if (*(a1 + 2984) == 1 || *(a1 + 2985) == 1)
          {
            LODWORD(v45) = 15;
          }

          else
          {
            LODWORD(v45) = 15;
            if (*(a1 + 2986) != 1)
            {
              if (*(a1 + 2992) == 1)
              {
                LODWORD(v45) = 15;
              }

              else
              {
                LODWORD(v45) = 255;
              }
            }
          }

          break;
        default:
          LODWORD(v45) = 255;
          break;
      }

      sub_297E4DFAC(2, a1, 4, 5u, "phLibNfc_Compute7816ClifTech");
      *(a1 + 64) = v45;
      v47 = *(*a3 + v21 + 2);
      *(a1 + 68) = v47 << 8;
      *(a1 + 68) = *(*a3 + v21 + 3) | (v47 << 8);
      goto LABEL_184;
    }

    v22 = HIDWORD(v73[0]);
    v20 = v73[0];
    v21 = 8;
LABEL_122:
    *(a1 + 44) = 1;
    *(a1 + 92) = v22;
    *(a1 + 96) = v20;
    goto LABEL_123;
  }

  if (a2 != 8)
  {
    if (a2 != 9)
    {
      goto LABEL_191;
    }

    if (*(a1 + 2984) != 1)
    {
      if (*(a1 + 2985) == 1)
      {
        if (v7 < 5)
        {
          goto LABEL_191;
        }

        goto LABEL_63;
      }

      if (*(a1 + 2986) != 1 && *(a1 + 2992) != 1)
      {
        if ((v7 & 7) != 0)
        {
          goto LABEL_191;
        }

LABEL_160:
        if (*(a1 + 2984) == 1 || *(a1 + 2985) == 1 || *(a1 + 2986) == 1 || *(a1 + 2992) == 1)
        {
          v9 = &v67;
          sub_297EF7C08(a1, a3, &v67);
        }

        else
        {
          v9 = 0;
        }

        v46 = 63;
LABEL_186:
        LODWORD(v65) = sub_297E7F0C8(*(a1 + 9784), *(a1 + 3036), *(a1 + 3136));
        v66 = v9;
        if (*(a1 + 6760) && *(a1 + 5608) == 5)
        {
          *(a1 + 5624) = &v65;
          sub_297E4F450(*(a1 + 9784), 118, v46, a1 + 5608, 0);
        }

        else
        {
          v48 = *(a1 + 6568);
          if (v48)
          {
            v49 = *(a1 + 6576);
            sub_297E54734(1, a1 + 9792, 4, 4u, "phLibNfc_LoggingNtfHandler :pGenericNtfCb[LxDebug Ntf]");
            v48(*(a1 + 9784), v49, v46, &v65);
          }
        }

        goto LABEL_191;
      }
    }

    if (v7 <= 4)
    {
      goto LABEL_191;
    }

LABEL_63:
    v28 = 0;
    v29 = 0;
    v30 = 0;
    v31 = 0;
    v32 = 0;
    v33 = 0;
    v34 = 0;
    v35 = 0;
    v36 = 0;
    v37 = 0;
    do
    {
      v38 = v6[v28];
      v39 = v38 >> 4;
      v40 = v38 & 0xF;
      if (v39 > 4)
      {
        if (v39 > 7)
        {
          if (v39 == 8)
          {
            if (v40 == 8)
            {
              ++v29;
            }

            else
            {
              ++v30;
            }
          }

          else
          {
            if (v39 != 12)
            {
LABEL_210:
              sub_297E4E0B0(1, a1 + 9792, 4, 2u, " phLibNfc_LoggingNtfHandler : Invalid Type !!!");
              sub_297E4E0B0(1, a1 + 9792, 4, 1u, " phLibNfc_LoggingNtfHandler : Unknown L2 Message!!!");
              goto LABEL_191;
            }

            ++v31;
          }
        }

        else if (v39 == 5)
        {
          ++v33;
        }

        else
        {
          if (v39 != 6)
          {
            goto LABEL_210;
          }

          ++v32;
        }
      }

      else if (v39 > 2)
      {
        if (v39 == 3)
        {
          ++v35;
        }

        else
        {
          ++v34;
        }
      }

      else if (v39 == 1)
      {
        ++v37;
      }

      else
      {
        if (v39 != 2)
        {
          goto LABEL_210;
        }

        ++v36;
      }

      v28 += v40 + 1;
    }

    while (v28 < v7);
    v63 = v30;
    v64 = v29;
    if (v37)
    {
      *&v68 = phOsalNfc_GetMemory_Typed();
      if (v68)
      {
        phOsalNfc_SetMemory();
      }

      else
      {
        sub_297E4E0B0(1, a1 + 9792, 4, 1u, "Failed to allocate memory for L2 debug events");
      }
    }

    if (v36)
    {
      *(&v68 + 1) = phOsalNfc_GetMemory_Typed();
      if (*(&v68 + 1))
      {
        phOsalNfc_SetMemory();
      }

      else
      {
        sub_297E4E0B0(1, a1 + 9792, 4, 1u, "phLibNfc_LoggingNtfHandler:Failed to allocate memory for Felica command events");
      }
    }

    if (v35)
    {
      *(&v69 + 1) = phOsalNfc_GetMemory_Typed();
      if (*(&v69 + 1))
      {
        phOsalNfc_SetMemory();
      }

      else
      {
        sub_297E4E0B0(1, a1 + 9792, 4, 1u, "phLibNfc_LoggingNtfHandler : Failed to allocate memory for Felica SysCode events");
      }
    }

    if (v34)
    {
      *&v69 = phOsalNfc_GetMemory_Typed();
      if (v69)
      {
        phOsalNfc_SetMemory();
      }

      else
      {
        sub_297E4E0B0(1, a1 + 9792, 4, 1u, "phLibNfc_LoggingNtfHandler:Failed to allocate memory for Felica Response events");
      }
    }

    if (v33)
    {
      *&v70 = phOsalNfc_GetMemory_Typed();
      if (v70)
      {
        phOsalNfc_SetMemory();
      }

      else
      {
        sub_297E4E0B0(1, a1 + 9792, 4, 1u, "phLibNfc_LoggingNtfHandler:Failed to allocate memory for Felica Miscellaneous events");
      }
    }

    if (v32)
    {
      *(&v70 + 1) = phOsalNfc_GetMemory_Typed();
      if (*(&v70 + 1))
      {
        phOsalNfc_SetMemory();
      }

      else
      {
        sub_297E4E0B0(1, a1 + 9792, 4, 1u, "Failed to allocate memory for HLM events");
      }
    }

    if (v31)
    {
      *&v71 = phOsalNfc_GetMemory_Typed();
      if (v71)
      {
        phOsalNfc_SetMemory();
      }

      else
      {
        sub_297E4E0B0(1, a1 + 9792, 4, 1u, "Failed to allocate memory for LPCD Assist events");
      }
    }

    if (v63)
    {
      *(&v71 + 1) = phOsalNfc_GetMemory_Typed();
      if (*(&v71 + 1))
      {
        phOsalNfc_SetMemory();
      }

      else
      {
        sub_297E4E0B0(1, a1 + 9792, 4, 1u, "Failed to allocate memory for Reader Mode events");
      }
    }

    if (v64)
    {
      Memory_Typed = phOsalNfc_GetMemory_Typed();
      if (Memory_Typed)
      {
        phOsalNfc_SetMemory();
      }

      else
      {
        sub_297E4E0B0(1, a1 + 9792, 4, 1u, "phLibNfc_LoggingNtfHandler:Failed to allocate memory for Dynamic BBA Info events");
      }
    }

    goto LABEL_160;
  }

  if (v7 == 5)
  {
    v11 = *(a1 + 2992);
    if (v11 == 1 && *v6 == 255)
    {
      v12 = sub_297EF7B14(a1, a3);
      goto LABEL_126;
    }

    if (*(a1 + 2985) == 1 || v11 == 1 || *(a1 + 2986) == 1)
    {
      v12 = sub_297EF79D8(a1, a3);
LABEL_126:
      v9 = v12;
LABEL_185:
      v46 = 62;
      goto LABEL_186;
    }
  }

LABEL_191:
  if (v68)
  {
    phOsalNfc_FreeMemory();
  }

  if (v69)
  {
    phOsalNfc_FreeMemory();
  }

  if (*(&v68 + 1))
  {
    phOsalNfc_FreeMemory();
  }

  if (*(&v69 + 1))
  {
    phOsalNfc_FreeMemory();
  }

  if (v70)
  {
    phOsalNfc_FreeMemory();
  }

  if (*(&v70 + 1))
  {
    phOsalNfc_FreeMemory();
  }

  if (v71)
  {
    phOsalNfc_FreeMemory();
  }

  if (*(&v71 + 1))
  {
    phOsalNfc_FreeMemory();
  }

  if (Memory_Typed)
  {
    phOsalNfc_FreeMemory();
  }

  return sub_297E4DFAC(2, a1, 4, 5u, "phLibNfc_LoggingNtfHandler");
}

uint64_t sub_297EF9EA8(uint64_t a1, int a2, uint64_t a3, int a4)
{
  v43 = 0u;
  v44 = 0u;
  v41 = 0u;
  v42 = 0u;
  sub_297E4E1B4(2, a1, 4, 5u, "phLibNfc_PropMultiTagStatNtfHandler");
  if (!a1)
  {
    sub_297E4E0B0(2, 0, 4, 1u, "phLibNfc_PropMultiTagStatNtfHandler- Rxd Failed Status");
LABEL_27:
    sub_297E4E0B0(2, a1, 4, 1u, "phLibNfc_PropMultiTagStatNtfHandler-Corrutped MultiTag NTF received, Reset/Boot MW");
    goto LABEL_28;
  }

  if (a2 != 35 || a4 == 255)
  {
    v14 = "phLibNfc_PropMultiTagStatNtfHandler- Rxd Failed Status";
    v15 = 1;
    v16 = 2;
    v17 = a1;
LABEL_12:
    sub_297E4E0B0(v16, v17, 4, 1u, v14);
    v18 = 0;
    goto LABEL_13;
  }

  if (!*(a3 + 8) || (v8 = *a3) == 0)
  {
    v14 = "phLibNfc_PropMultiTagStatNtfHandler- Length Error or Null buffer received";
    v15 = 1;
    v17 = a1 + 9792;
    v16 = 1;
    goto LABEL_12;
  }

  v9 = 1;
  v45 = 1;
  LOBYTE(v41) = *v8;
  if (v41)
  {
    Memory_Typed = phOsalNfc_GetMemory_Typed();
    *(&v41 + 1) = Memory_Typed;
    if (Memory_Typed)
    {
      v11 = Memory_Typed;
      phOsalNfc_SetMemory();
      sub_297EFA3B0(a1, &v45, v41, 0, v11, a3);
      v12 = 0;
      v13 = 1;
      v9 = v45;
    }

    else
    {
      v13 = 0;
      v12 = 255;
      v9 = 1;
    }
  }

  else
  {
    v12 = 0;
    v13 = 1;
  }

  v27 = *a3;
  v28 = v9 + 1;
  v45 = v9 + 1;
  v29 = *(v27 + v9);
  LOBYTE(v42) = *(v27 + v9);
  if (v13 && v29)
  {
    v30 = phOsalNfc_GetMemory_Typed();
    *(&v42 + 1) = v30;
    if (v30)
    {
      v31 = v30;
      phOsalNfc_SetMemory();
      sub_297EFA3B0(a1, &v45, v29, 0, v31, a3);
      v28 = v45;
    }

    else
    {
      v12 = 255;
    }
  }

  v32 = *a3;
  v33 = v28 + 1;
  v45 = v28 + 1;
  v34 = *(v32 + v28);
  LOBYTE(v43) = *(v32 + v28);
  if (!v12 && v34)
  {
    v35 = phOsalNfc_GetMemory_Typed();
    *(&v43 + 1) = v35;
    if (v35)
    {
      v36 = v35;
      phOsalNfc_SetMemory();
      sub_297EFA3B0(a1, &v45, v34, 0, v36, a3);
      v12 = 0;
      v33 = v45;
    }

    else
    {
      v12 = 255;
    }
  }

  v37 = *a3;
  v45 = v33 + 1;
  v38 = *(v37 + v33);
  LOBYTE(v44) = *(v37 + v33);
  if (!v12 && v38)
  {
    v39 = phOsalNfc_GetMemory_Typed();
    *(&v44 + 1) = v39;
    if (v39)
    {
      v40 = v39;
      phOsalNfc_SetMemory();
      sub_297EFA3B0(a1, &v45, v38, 1, v40, a3);
      v12 = 0;
    }

    else
    {
      v12 = 255;
    }
  }

  v15 = v12 == 0;
  v18 = 1;
LABEL_13:
  v19 = 0;
  v20 = *(a1 + 3240);
  if (v20 && v20 != 0xFFFFFFFFFFFFLL)
  {
    phOsalNfc_Timer_Stop();
    *(a1 + 6084) = 0;
    v19 = 1;
    sub_297E687D8(1, a1 + 9792, *(a1 + 3240), 4, 4u, "phLibNfc_PropMultiTagStatNtfHandler");
    phOsalNfc_Timer_Delete();
    *(a1 + 3240) = 0xFFFFFFFFFFFFLL;
  }

  if ((v15 & v18) != 1)
  {
    goto LABEL_27;
  }

  v21 = *(a1 + 6568);
  if (v21)
  {
    v22 = *(a1 + 6576);
    sub_297E54734(1, a1 + 9792, 4, 4u, "phLibNfc_PropMultiTagStatNtfHandler :pGenericNtfCb[Multi-tag Status]");
    v21(*(a1 + 9784), v22, 155, &v41);
  }

  if (*(a1 + 6104))
  {
    if (v19 && !*(a1 + 3264))
    {
      *(a1 + 3264) = 1;
      *(a1 + 2960) = off_2A1A90E88;
      *(a1 + 2952) = 0;
      *(a1 + 2954) = 0;
      v23 = off_2A1A90E88[0];
      if (off_2A1A90E88[0])
      {
        v23 = 0;
        v24 = &qword_2A1A90E98;
        do
        {
          ++v23;
          v25 = *v24;
          v24 += 2;
        }

        while (v25);
      }

      *(a1 + 2953) = v23;
      if (sub_297E5588C(a1, 0, 0) != 13)
      {
        sub_297EFA54C(a1, 255);
      }
    }
  }

  else
  {
    *(a1 + 3264) = 0;
    sub_297E4E0B0(1, a1 + 9792, 4, 4u, "phLibNfc_PropMultiTagStatNtfHandler- independent Prop Tag Detect NTF Rxd");
  }

LABEL_28:
  if (*(&v41 + 1))
  {
    phOsalNfc_FreeMemory();
    *(&v41 + 1) = 0;
  }

  if (*(&v42 + 1))
  {
    phOsalNfc_FreeMemory();
    *(&v42 + 1) = 0;
  }

  if (*(&v43 + 1))
  {
    phOsalNfc_FreeMemory();
    *(&v43 + 1) = 0;
  }

  if (*(&v44 + 1))
  {
    phOsalNfc_FreeMemory();
    *(&v44 + 1) = 0;
  }

  return sub_297E4DFAC(2, a1, 4, 5u, "phLibNfc_PropMultiTagStatNtfHandler");
}

uint64_t sub_297EFA3B0(uint64_t a1, _BYTE *a2, unsigned int a3, int a4, _BYTE *a5, uint64_t *a6)
{
  v21 = 28;
  sub_297E4E1B4(2, a1, 4, 5u, "phLibNfc_PopulateRxdTagInfo");
  if (a4 == 1)
  {
    if (a3)
    {
      v12 = 0;
      v13 = *a2;
      v14 = a5 + 2;
      do
      {
        v15 = *a6;
        v16 = *(*a6 + v13);
        *(v14 - 1) = (v16 & 0x10) != 0;
        *v14 = *(v15 + *a2) >> 5;
        sub_297EFA674(a1, v16 & 0xF, &v21);
        *(v14 - 2) = v21;
        v13 = *a2;
        if (v13 <= 0xFD)
        {
          *a2 = ++v13;
        }

        ++v12;
        v14 += 3;
      }

      while (v12 < a3);
    }
  }

  else if (a3)
  {
    v17 = 0;
    LOBYTE(v18) = *a2;
    do
    {
      v19 = *a6;
      if (v18 > 0xFDu)
      {
        v18 = 0;
      }

      else
      {
        *a2 = v18 + 1;
        v18 = v18;
      }

      sub_297EFA674(a1, *(v19 + v18), &v21);
      *a5 = v21;
      phOsalNfc_MemCopy();
      LOBYTE(v18) = *a2 + 4;
      *a2 = v18;
      ++v17;
      a5 += 5;
    }

    while (v17 < a3);
  }

  return sub_297E4DFAC(2, a1, 4, 5u, "phLibNfc_PopulateRxdTagInfo");
}

uint64_t sub_297EFA54C(uint64_t a1, uint64_t a2)
{
  v3 = a1;
  sub_297E4E1B4(2, a1, 4, 5u, "phLibNfc_MultiTagCompleteInit");
  if (!v3 || a2)
  {
    sub_297E4E0B0(2, v3, 4, 1u, "phLibNfc_MultiTagCompleteInit- GetFwInfoCmd failed");
    sub_297EA3DD8(v3, a2);
    v3 = 0;
    goto LABEL_11;
  }

  v4 = sub_297F052B0(*(v3 + 3000));
  *(v3 + 3088) = v4;
  if (sub_297EA79F8(v3, v4))
  {
    v5 = "phLibNfc_MultiTagCompleteInit- GetNfccFeatures failed";
  }

  else if (sub_297EA3DD8(v3, 0))
  {
    v5 = "phLibNfc_MultiTagCompleteInit- INIT Complete failed";
  }

  else
  {
    if (!sub_297EA5B80(v3, 0))
    {
      goto LABEL_11;
    }

    v5 = "phLibNfc_MultiTagCompleteInit- Static Sequence failed";
  }

  sub_297E4E0B0(1, v3 + 9792, 4, 1u, v5);
LABEL_11:

  return sub_297E4DFAC(2, v3, 4, 5u, "phLibNfc_MultiTagCompleteInit");
}

uint64_t sub_297EFA674(uint64_t a1, int a2, int *a3)
{
  sub_297E4E1B4(2, a1, 4, 5u, "phLibNfc_ConvertToRemDevType");
  if (a2 <= 9)
  {
    v6 = 10;
    if (a2 <= 2)
    {
      if (!a2)
      {
        goto LABEL_24;
      }

      if (a2 == 1)
      {
        v6 = 17;
        goto LABEL_24;
      }

      if (a2 != 2)
      {
        goto LABEL_22;
      }

LABEL_18:
      v6 = 21;
      goto LABEL_24;
    }

    switch(a2)
    {
      case 3:
        goto LABEL_24;
      case 5:
        goto LABEL_18;
      case 6:
        v6 = 23;
        goto LABEL_24;
    }

LABEL_22:
    v7 = "phLibNfc_ConvertToRemDevType- RF tech Unknown";
    goto LABEL_23;
  }

  if (a2 <= 111)
  {
    switch(a2)
    {
      case 10:
        v6 = 13;
        goto LABEL_24;
      case 11:
        v6 = 14;
        goto LABEL_24;
      case 12:
        v6 = 15;
        goto LABEL_24;
    }

    goto LABEL_22;
  }

  if ((a2 - 112) >= 3)
  {
    goto LABEL_22;
  }

  v7 = "phLibNfc_ConvertToRemDevType- RF tech Not supported";
LABEL_23:
  sub_297E4E0B0(2, a1, 4, 2u, v7);
  v6 = 0;
LABEL_24:
  *a3 = v6;

  return sub_297E4DFAC(2, a1, 4, 5u, "phLibNfc_ConvertToRemDevType");
}

uint64_t sub_297EFA7B8(void *a1, int a2, uint64_t a3, int a4)
{
  sub_297E4E1B4(2, a1, 4, 5u, "phLibNfc_LongVasCwDetNtfHandler");
  if (a2 == 43)
  {
    if (a1)
    {
      if (a4 != 255)
      {
        v7 = a1[821];
        if (v7)
        {
          v8 = a1[822];
          sub_297E54734(1, (a1 + 1224), 4, 4u, "phLibNfc_LongVasCwDetNtfHandler :pGenericNtfCb[Prop Vas Long CW Ntf]");
          v7(a1[1223], v8, 78, 0);
        }
      }
    }
  }

  return sub_297E4DFAC(2, a1, 4, 5u, "phLibNfc_LongVasCwDetNtfHandler");
}

uint64_t sub_297EFA880(uint64_t a1, int a2, _DWORD *a3, int a4)
{
  v25 = 0u;
  v26 = 0u;
  v24 = 0;
  memset(v23, 0, sizeof(v23));
  sub_297E4E1B4(2, a1, 4, 5u, "phLibNfc_PropRdrNtfHandler");
  if (a2 != 10 || !a1 || a4 == 255)
  {
    return sub_297E4DFAC(2, a1, 4, 5u, "phLibNfc_PropRdrNtfHandler");
  }

  *(a1 + 1449) = 1;
  phOsalNfc_SetMemory();
  v8 = *a3;
  if (*a3 && (a3[2] - 5) <= 0x14)
  {
    v9 = *v8;
    v10 = v8[1];
    WORD2(v25) = v9 | (v10 << 8);
    v11 = v25 & 0xFE40 | v9 & 0x3F | (v9 >> 6 << 7);
    LOWORD(v25) = v11;
    if ((v9 & 9) != 0)
    {
      if (*(a1 + 2985) == 1 || *(a1 + 2986) == 1 || *(a1 + 2992) == 1 || *(a1 + 2984) == 1 && (*(a1 + 3028) & 0xFEu) >= 0x32)
      {
        LOWORD(v25) = v11 & 0xFFBF | (32 * v10) & 0x40;
        phOsalNfc_MemCopy();
        v12 = *a3;
        LODWORD(v26) = *(*a3 + 4);
        if ((v26 - 1) > 0x13)
        {
          *(&v25 + 1) = 0;
          LODWORD(v26) = 0;
        }

        else
        {
          *(&v25 + 1) = v12 + 5;
        }
      }

      else
      {
        if (v9)
        {
          LODWORD(v26) = 5;
          *v8 = 106;
          v20 = *a3;
        }

        else
        {
          v20 = 0;
          LODWORD(v26) = 0;
        }

        *(&v25 + 1) = v20;
        phOsalNfc_MemCopy();
      }
    }

    else
    {
      *(&v25 + 1) = 0;
      LODWORD(v26) = 0;
      sub_297E4E0B0(1, a1 + 9792, 4, 4u, "phLibNfc_PropRdrNtfHandler- Not a Prop Reader");
    }
  }

  if ((*(a1 + 1060) & 7) == 0)
  {
    goto LABEL_25;
  }

  v13 = *(a1 + 1408);
  if ((*(a1 + 1060) & 0x38) == 0 && v13 != 6)
  {
    phOsalNfc_SetMemory();
    v14 = *(a1 + 768);
    if (v14 && v14 != 0xFFFFFFFFFFFFLL)
    {
      phOsalNfc_Timer_Delete();
      *(a1 + 768) = 0xFFFFFFFFFFFFLL;
    }

    LODWORD(v23[0]) = *(a1 + 1408);
    *(a1 + 1408) = 6;
    *(a1 + 1449) = 0;
    phOsalNfc_MemCopy();
    v15 = *(a1 + 6696);
    if (v15)
    {
      v15(*(a1 + 9784), *(a1 + 6704), 24, *(a1 + 440), v23, 0);
    }

    return sub_297E4DFAC(2, a1, 4, 5u, "phLibNfc_PropRdrNtfHandler");
  }

  if ((*(a1 + 1060) & 0x38) == 0 && v13 == 6 && !*(a1 + 1448) && (*(a1 + 2985) == 1 || *(a1 + 2986) == 1 || *(a1 + 2987) == 1 || *(a1 + 2992) == 1 || *(a1 + 2984) == 1))
  {
    v19 = *(a1 + 768);
    if (v19 && v19 != 0xFFFFFFFFFFFFLL)
    {
      phOsalNfc_Timer_Delete();
      *(a1 + 768) = 0xFFFFFFFFFFFFLL;
    }

    phOsalNfc_MemCopy();
    if (v26)
    {
      if (v26 > 0x14)
      {
        LODWORD(v26) = 0;
        sub_297E50EBC(1, a1 + 9792, 4, 1u, "Received VasUpPayload size exceeded Max vas code length. Hence resetting length");
      }

      else
      {
        phOsalNfc_MemCopy();
        *(a1 + 1424) = a1 + 1450;
      }
    }

    v21 = *(a1 + 768);
    if (v21 != 0xFFFFFFFFFFFFLL && v21)
    {
      phOsalNfc_Timer_Stop();
      v22 = *(a1 + 768);
    }

    else
    {
      v22 = phOsalNfc_Timer_Create();
      *(a1 + 768) = v22;
    }

    if (v22 && v22 != 0xFFFFFFFFFFFFLL)
    {
      if (!phOsalNfc_Timer_Start())
      {
        sub_297E687D8(1, a1 + 9792, *(a1 + 768), 4, 4u, "phLibNfc_PropRdrNtfHandler");
        sub_297E4E0B0(1, a1 + 9792, 4, 2u, "Vas Inversion Timer started:Waiting for Express Started NTF after reception of VAS");
        return sub_297E4DFAC(2, a1, 4, 5u, "phLibNfc_PropRdrNtfHandler");
      }

      sub_297E4E0B0(1, a1 + 9792, 4, 1u, "Timer Start Failed for VAS NTF timer");
      phOsalNfc_Timer_Delete();
    }

    else
    {
      sub_297E4E0B0(1, a1 + 9792, 4, 1u, "Timer Create Failed for VAS NTF timer");
    }

    *(a1 + 768) = 0xFFFFFFFFFFFFLL;
  }

  else
  {
LABEL_25:
    if ((*(a1 + 1060) & 0x10) != 0)
    {
      phOsalNfc_MemCopy();
      if (v26)
      {
        if (v26 > 0x14)
        {
          sub_297E4E0B0(1, a1 + 9792, 4, 1u, "Received VasUpPayload size exceeded Max vas code length");
          LODWORD(v26) = 0;
        }

        else
        {
          phOsalNfc_MemCopy();
          *(a1 + 1424) = a1 + 1450;
        }
      }
    }

    else
    {
      sub_297E4E0B0(1, a1 + 9792, 4, 4u, "phLibNfc_PropRdrNtfHandler:RF_ON followed by VAS (Exp Non Entry) received hence propagate VAS NTF to upper");
      *(a1 + 1449) = 0;
    }

    v16 = *(a1 + 6568);
    if (v16)
    {
      v17 = *(a1 + 6576);
      sub_297E54734(1, a1 + 9792, 4, 4u, "phLibNfc_PropRdrNtfHandler :pGenericNtfCb[Prop Reader Ntf]");
      v16(*(a1 + 9784), v17, 69, &v25);
    }
  }

  return sub_297E4DFAC(2, a1, 4, 5u, "phLibNfc_PropRdrNtfHandler");
}

uint64_t sub_297EFADD8(uint64_t a1, uint64_t a2)
{
  result = sub_297E687D8(2, a2, a1, 4, 4u, "phLibNfc_eSEExpNtfTimeOutCb");
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
      v7 = *(a2 + 768);
      if (v7 && v7 != 0xFFFFFFFFFFFFLL)
      {
        phOsalNfc_Timer_Delete();
        *(a2 + 768) = 0xFFFFFFFFFFFFLL;
      }

      sub_297E4E0B0(1, a2 + 9792, 4, 4u, "Timer STOPPED phLibNfc_eSEExpNtfTimeOutCb");
      *(a2 + 1448) = 0;
      v8 = *(a2 + 6568);
      if (v8)
      {
        v9 = *(a2 + 6576);
        sub_297E54734(1, a2 + 9792, 4, 4u, "phLibNfc_eSEExpNtfTimeOutCb :pGenericNtfCb[exp ntf timeout]");
        v8(*(a2 + 9784), v9, 69, a2 + 1416);
      }

      *(a2 + 1408) = 6;
      phOsalNfc_SetMemory();
      result = phOsalNfc_SetMemory();
      *(a2 + 1449) = 0;
    }
  }

  return result;
}

uint64_t sub_297EFAF18(uint64_t a1, int a2)
{
  sub_297E4E1B4(2, a1, 4, 5u, "phLibNfc_PllNtfHandler");
  if (a1)
  {
    v4 = *(a1 + 6568);
    v5 = *(a1 + 6576);
    if (a2 == 12)
    {
      if (*(a1 + 6104))
      {
        *(a1 + 3201) = 1;
        goto LABEL_15;
      }

      if (v4)
      {
        if (*(a1 + 2992) == 1)
        {
          sub_297E54734(1, a1 + 9792, 4, 4u, "phLibNfc_PllNtfHandler :pGenericNtfCb[PLL lost lock]");
          v6 = *(a1 + 9784);
          v7 = v5;
          v8 = 77;
          goto LABEL_13;
        }

        sub_297E4E0B0(1, a1 + 9792, 4, 1u, "Unknown ntf is received, and dropped ");
      }
    }

    else
    {
      if (a2 != 11)
      {
        goto LABEL_15;
      }

      if (*(a1 + 6104))
      {
        *(a1 + 3200) = 1;
        goto LABEL_15;
      }

      if (v4)
      {
        sub_297E54734(1, a1 + 9792, 4, 4u, "phLibNfc_PllNtfHandler :pGenericNtfCb[PLL UNLOCK]");
        v6 = *(a1 + 9784);
        v7 = v5;
        v8 = 70;
LABEL_13:
        v4(v6, v7, v8, 0);
      }
    }
  }

LABEL_15:

  return sub_297E4DFAC(2, a1, 4, 5u, "phLibNfc_PllNtfHandler");
}

uint64_t sub_297EFB064(void *a1, int a2, uint64_t *a3)
{
  v13 = 0;
  v14 = 0;
  sub_297E4E1B4(2, a1, 4, 5u, "phLibNfc_RfTxLdoErrorNtfHandler");
  if (a1)
  {
    if (a2 == 13)
    {
      v6 = a1[821];
      if (v6)
      {
        v7 = a1[822];
        if (a3 && *a3 && (v8 = *(a3 + 2)) != 0)
        {
          v13 = *a3;
          LODWORD(v14) = v8;
          sub_297E54734(1, (a1 + 1224), 4, 4u, "phLibNfc_RfTxLdoErrorNtfHandler :pGenericNtfCb[TXLDO ERROR]");
          v9 = a1[1223];
          v10 = &v13;
          v11 = v7;
        }

        else
        {
          sub_297E54734(1, (a1 + 1224), 4, 4u, "phLibNfc_RfTxLdoErrorNtfHandler :pGenericNtfCb[TXLDO ERROR]");
          v9 = a1[1223];
          v11 = v7;
          v10 = 0;
        }

        v6(v9, v11, 87, v10);
      }
    }
  }

  return sub_297E4DFAC(2, a1, 4, 5u, "phLibNfc_RfTxLdoErrorNtfHandler");
}

uint64_t sub_297EFB174(void *a1, int a2)
{
  sub_297E4E1B4(2, a1, 4, 5u, "phLibNfc_ExtTempNormalNtfHandler");
  if (a1)
  {
    if (a2 == 14)
    {
      v4 = a1[821];
      if (v4)
      {
        v5 = a1[822];
        sub_297E54734(1, (a1 + 1224), 4, 4u, "phLibNfc_ExtTempNormalNtfHandler :pGenericNtfCb[GPADC Temperature back To Normal Notification]");
        v4(a1[1223], v5, 88, 0);
      }
    }
  }

  return sub_297E4DFAC(2, a1, 4, 5u, "phLibNfc_ExtTempNormalNtfHandler");
}

uint64_t sub_297EFB230(uint64_t a1, int a2)
{
  sub_297E4E1B4(2, a1, 4, 5u, "phLibNfc_RfXtalErrNtfHandler");
  if (a1 && a2 == 16)
  {
    if (*(a1 + 6104))
    {
      *(a1 + 3202) = 1;
    }

    else
    {
      v4 = *(a1 + 6568);
      if (v4)
      {
        v5 = *(a1 + 6576);
        sub_297E54734(1, a1 + 9792, 4, 4u, "phLibNfc_RfXtalErrNtfHandler :pGenericNtfCb[XTAL Start Error]");
        v4(*(a1 + 9784), v5, 90, 0);
      }
    }
  }

  return sub_297E4DFAC(2, a1, 4, 5u, "phLibNfc_RfXtalErrNtfHandler");
}

uint64_t sub_297EFB300(void *a1, int a2, uint64_t a3, int a4)
{
  sub_297E4E1B4(2, a1, 4, 5u, "phLibNfc_TotalPollDurationNtfHandler");
  if (a3)
  {
    if (a1)
    {
      if (!a4 && a2 == 17)
      {
        v8 = a1[821];
        if (v8)
        {
          v9 = a1[822];
          sub_297E54734(1, (a1 + 1224), 4, 4u, "phLibNfc_TotalPollDurationNtfHandler :pGenericNtfCb[Total POLL Duration]");
          v8(a1[1223], v9, 122, a3);
        }
      }
    }
  }

  return sub_297E4DFAC(2, a1, 4, 5u, "phLibNfc_TotalPollDurationNtfHandler");
}

uint64_t sub_297EFB3CC(void *a1, int a2, uint64_t a3, int a4)
{
  sub_297E4E1B4(2, a1, 4, 5u, "phLibNfc_EmvcoRfCollisionDetNtfHandler");
  if (a1)
  {
    if (!a4 && a2 == 18)
    {
      v7 = a1[821];
      if (v7)
      {
        v8 = a1[822];
        sub_297E54734(1, (a1 + 1224), 4, 4u, "phLibNfc_EmvcoRfCollisionDetNtfHandler :pGenericNtfCb[EMVCO RF Collision Detected]");
        v7(a1[1223], v8, 123, 0);
      }
    }
  }

  return sub_297E4DFAC(2, a1, 4, 5u, "phLibNfc_EmvcoRfCollisionDetNtfHandler");
}

uint64_t sub_297EFB490(void *a1, int a2, uint64_t a3, uint64_t a4)
{
  sub_297E4E1B4(2, a1, 4, 5u, "phLibNfc_CrcErrorNtfHandler");
  if (a1 && a2 == 27)
  {
    v7 = a1[821];
    if (v7)
    {
      v8 = a1[822];
      sub_297E54734(1, (a1 + 1224), 4, 4u, "phLibNfc_CrcErrorNtfHandler :pGenericNtfCb[CRC Err ntf]");
      v7(a1[1223], v8, a4, 0);
    }

    if (a1[763])
    {
      sub_297EA3DD8(a1, 137);
    }
  }

  else
  {
    sub_297E4E0B0(2, a1, 4, 4u, "phLibNfc_CrcErrorNtfHandler: Can not process Crc error - Invalid input parameters");
  }

  return sub_297E4DFAC(2, a1, 4, 5u, "phLibNfc_CrcErrorNtfHandler");
}

uint64_t sub_297EFB588(void *a1, int a2, uint64_t *a3, int a4)
{
  v12 = 0;
  v13 = 0;
  sub_297E4E1B4(2, a1, 4, 5u, "phLibNfc_GpadcDebugHandler");
  if (!a1 || a2 != 41 || !a3 || a4)
  {
    v10 = "phLibNfc_GpadcDebugHandler: Can not process Gpadc debug Ntf - Invalid input parameters";
LABEL_9:
    sub_297E4E0B0(2, a1, 4, 4u, v10);
    return sub_297E4DFAC(2, a1, 4, 5u, "phLibNfc_GpadcDebugHandler");
  }

  v8 = a1[821];
  if (!v8)
  {
    v10 = "phLibNfc_GpadcDebugHandler: Dropping Ntf as there is no registration";
    goto LABEL_9;
  }

  v9 = a1[822];
  v12 = *a3;
  LODWORD(v13) = *(a3 + 2);
  sub_297E54734(2, a1, 4, 4u, "phLibNfc_GpadcDebugHandler :pGenericNtfCb[Gpadc debug ntf]");
  v8(a1[1223], v9, 85, &v12);
  return sub_297E4DFAC(2, a1, 4, 5u, "phLibNfc_GpadcDebugHandler");
}

uint64_t sub_297EFB68C(void *a1, int a2, uint64_t *a3, int a4)
{
  v11 = 0;
  v12 = 0;
  sub_297E4E1B4(2, a1, 4, 5u, "phLibNfc_EraseCounterNtfHandler");
  if (a1 && a2 == 42 && a3 && !a4)
  {
    phOsalNfc_SetMemory();
    v8 = a1[821];
    if (v8)
    {
      v9 = a1[822];
      v11 = *a3;
      LODWORD(v12) = *(a3 + 2);
      sub_297E54734(2, a1, 4, 4u, "phLibNfc_EraseCounterNtfHandler :pGenericNtfCb[erase counter exceed limit ntf]");
      v8(a1[1223], v9, 86, &v11);
    }

    else
    {
      sub_297E4E0B0(2, a1, 4, 4u, "phLibNfc_EraseCounterNtfHandler: Dropping Ntf as there is no registration");
    }
  }

  else
  {
    sub_297E4E0B0(2, a1, 4, 1u, "phLibNfc_EraseCounterNtfHandler: Can not process Erase counter exceed limit Ntf - Invalid input parameters");
  }

  return sub_297E4DFAC(2, a1, 4, 5u, "phLibNfc_EraseCounterNtfHandler");
}

uint64_t sub_297EFB7B8(uint64_t a1, int a2, uint64_t a3, uint64_t a4)
{
  sub_297E4E1B4(2, a1, 4, 5u, "phLibNfc_CustTrimErrorNtfHandler");
  if (a1 && a2 == 30)
  {
    v7 = *(a1 + 6568);
    if (v7)
    {
      v8 = *(a1 + 6576);
      sub_297E54734(1, a1 + 9792, 4, 4u, "phLibNfc_CustTrimErrorNtfHandler :pGenericNtfCb[Trim Err ntf]");
      v7(*(a1 + 9784), v8, a4, 0);
    }

    if (*(a1 + 6296))
    {
      sub_297F08DBC(*(a1 + 3088), 0);
      *(a1 + 2960) = 0;
      *(a1 + 2952) = 0;
      *(a1 + 2954) = 0;
      v9 = *(a1 + 6296);
      v10 = *(a1 + 6304);
      *(a1 + 6296) = 0;
      *(a1 + 6304) = 0;
      v9(*(a1 + 9784), v10, 136);
    }

    if (*(a1 + 6104))
    {
      sub_297EA3DD8(a1, 136);
    }
  }

  else
  {
    sub_297E4E0B0(2, a1, 4, 4u, "phLibNfc_CustTrimErrorNtfHandler: Can not process Customer Trim error Ntf - Invalid input parameters");
  }

  return sub_297E4DFAC(2, a1, 4, 5u, "phLibNfc_CustTrimErrorNtfHandler");
}

uint64_t sub_297EFB8F0(void *a1, int a2, uint64_t *a3)
{
  v11 = 0;
  v12 = 0;
  sub_297E4E1B4(2, a1, 4, 5u, "phLibNfc_TrimmingErrorNtfHandler");
  if (a2 == 46 && a1 && a3)
  {
    v6 = a1[821];
    if (v6 && (v7 = *a3) != 0 && (v8 = *(a3 + 2)) != 0)
    {
      v9 = a1[822];
      v11 = v7;
      LODWORD(v12) = v8;
      sub_297E54734(1, (a1 + 1224), 4, 4u, "phLibNfc_TrimmingErrorNtfHandler :pGenericNtfCb[Trimming Failure ntf]");
      v6(a1[1223], v9, 89, &v11);
    }

    else
    {
      sub_297E4E0B0(2, a1, 4, 2u, "phLibNfc_TrimmingErrorNtfHandler: Dropping - Trimming Failure Info Ntf");
    }
  }

  return sub_297E4DFAC(2, a1, 4, 5u, "phLibNfc_TrimmingErrorNtfHandler");
}

uint64_t sub_297EFB9EC(void *a1, int a2, uint64_t a3)
{
  sub_297E4E1B4(2, a1, 4, 5u, "phLibNfc_SpmiStsRegInfoNtfHandler");
  if (a1 && a2 == 47)
  {
    v6 = a1[821];
    if (v6)
    {
      v7 = a1[822];
      sub_297E54734(1, (a1 + 1224), 4, 4u, "phLibNfc_SpmiStsRegInfoNtfHandler :pGenericNtfCb[Spmi Status RegInfo ntf]");
      if (a3)
      {
        v8 = a1[1223];
        v9 = v7;
        v10 = a3;
      }

      else
      {
        sub_297E4E0B0(2, a1, 4, 1u, "phLibNfc_SpmiStsRegInfoNtfHandler: Read Spmi Status Failed - pInfo set to NULL");
        v8 = a1[1223];
        v9 = v7;
        v10 = 0;
      }

      v6(v8, v9, 91, v10);
    }

    else
    {
      sub_297E4E0B0(2, a1, 4, 2u, "phLibNfc_SpmiStsRegInfoNtfHandler: Dropping - Spmi Status Register Info Ntf");
    }
  }

  return sub_297E4DFAC(2, a1, 4, 5u, "phLibNfc_SpmiStsRegInfoNtfHandler");
}

uint64_t sub_297EFBB00(void *a1, int a2, uint64_t a3)
{
  v11 = 0;
  v12 = 0;
  sub_297E4E1B4(2, a1, 4, 5u, "phLibNfc_DebugLogInfoNtfHandler");
  if (a2 == 48 && a1 && a3)
  {
    v6 = a1[821];
    if (v6)
    {
      v7 = a1[822];
      v11 = *(a3 + 8);
      LODWORD(v12) = *(a3 + 16);
      v8 = *(a3 + 2);
      if ((v8 - 3) >= 2)
      {
        if (v8 != 1)
        {
          sub_297E4E0B0(2, a1, 4, 1u, "phLibNfc_DebugLogInfoNtfHandler: Received unexpected Generic Debug Info Type");
          return sub_297E4DFAC(2, a1, 4, 5u, "phLibNfc_DebugLogInfoNtfHandler");
        }

        v9 = 93;
      }

      else
      {
        v9 = 92;
      }

      sub_297E54734(1, (a1 + 1224), 4, 4u, "phLibNfc_DebugLogInfoNtfHandler :pGenericNtfCb[Generic Debug Info ntf]");
      v6(a1[1223], v7, v9, &v11);
    }

    else
    {
      sub_297E4E0B0(2, a1, 4, 2u, "phLibNfc_DebugLogInfoNtfHandler: Dropping - Generic Debug Log Ntf Info");
    }
  }

  return sub_297E4DFAC(2, a1, 4, 5u, "phLibNfc_DebugLogInfoNtfHandler");
}

uint64_t sub_297EFBC38(void *a1, uint64_t a2, uint64_t a3, int a4)
{
  sub_297E4E1B4(2, a1, 4, 5u, "phLibNfc_RssiStatsHandler");
  if (a3 && a1 && !a4)
  {
    v7 = a1[821];
    if (v7)
    {
      v8 = a1[822];
      sub_297E54734(1, (a1 + 1224), 4, 4u, "phLibNfc_RssiStatsHandler :pGenericNtfCb[RSSI STATS ntf]");
      v7(a1[1223], v8, 83, a3);
    }
  }

  else
  {
    sub_297E4E0B0(2, a1, 4, 4u, "phLibNfc_RssiStatsHandler: Can not process RSSI Stats NTF - Invalid input parameters");
  }

  return sub_297E4DFAC(2, a1, 4, 5u, "phLibNfc_RssiStatsHandler");
}

uint64_t sub_297EFBD18(void *a1, uint64_t a2, uint64_t a3, int a4)
{
  sub_297E4E1B4(2, a1, 4, 5u, "phLibNfc_UartCommnErrorHandler");
  if (a1 && a4 == 80)
  {
    if (a3 && (v7 = a1[821]) != 0)
    {
      v8 = a1[822];
      sub_297E54734(1, (a1 + 1224), 4, 4u, "phLibNfc_UartCommnErrorHandler :pGenericNtfCb[COMM ERR]");
      v7(a1[1223], v8, 80, a3);
    }

    else
    {
      sub_297E4E0B0(1, (a1 + 1224), 4, 4u, "phLibNfc_UartCommnErrorHandler: Dropping as no Registrations Exist");
    }
  }

  return sub_297E4DFAC(2, a1, 4, 5u, "phLibNfc_UartCommnErrorHandler");
}

uint64_t sub_297EFBE00(uint64_t a1, uint64_t a2, int *a3, uint64_t a4)
{
  v27 = 0;
  memset(v26, 0, sizeof(v26));
  sub_297E4E1B4(2, a1, 4, 5u, "phLibNfc_GenericErrorHandler");
  if (!a1)
  {
    goto LABEL_13;
  }

  v7 = 0;
  v8 = 0;
  do
  {
    v9 = *(&unk_2A18BDDC0 + 14 * v8 + 2);
    if (v7)
    {
      break;
    }

    v7 = 1;
    v8 = 1;
  }

  while (v9 != a1);
  if (!a3 || v9 != a1)
  {
LABEL_13:
    v11 = "Invalid Params received!!";
    v12 = 2;
    v13 = a1;
LABEL_53:
    sub_297E4E0B0(v12, v13, 4, 1u, v11);
    return sub_297E4DFAC(2, a1, 4, 5u, "phLibNfc_GenericErrorHandler");
  }

  v10 = *a3;
  if (*a3 <= 6)
  {
    if (v10 > 3)
    {
      switch(v10)
      {
        case 4:
          v11 = "Generic error received: phNciNfc_e_NotInitiatlized";
          goto LABEL_52;
        case 5:
          v11 = "Generic error received: phNciNfc_e_SyntaxErr";
          goto LABEL_52;
        case 6:
          v11 = "Generic error received: phNciNfc_e_SemanticErr";
          goto LABEL_52;
      }
    }

    else
    {
      switch(v10)
      {
        case 1:
          v11 = "Generic error received: phNciNfc_e_Rejected";
          goto LABEL_52;
        case 2:
          v11 = "Generic error received: phNciNfc_e_RfFrameCorrupted";
          goto LABEL_52;
        case 3:
          v11 = "Generic error received: phNciNfc_e_Failed";
          goto LABEL_52;
      }
    }
  }

  else if (v10 <= 9)
  {
    switch(v10)
    {
      case 7:
        v11 = "Generic error received: phNciNfc_e_InvalidParam";
        goto LABEL_52;
      case 8:
        v11 = "Generic error received: phNciNfc_e_MsgSizeExceeded";
        goto LABEL_52;
      case 9:
        v11 = "Generic error received: phNciNfc_e_DiscAlreadyStarted";
        goto LABEL_52;
    }
  }

  else if (v10 > 236)
  {
    if (v10 == 237)
    {
      sub_297E4E0B0(1, a1 + 9792, 4, 1u, "Generic error received: phNciNfc_e_CustTrimAreaAssert");
      sub_297EFB7B8(a1, 30, v14, a4);
      return sub_297E4DFAC(2, a1, 4, 5u, "phLibNfc_GenericErrorHandler");
    }

    if (v10 == 247)
    {
      sub_297E4E0B0(1, a1 + 9792, 4, 2u, "Generic error received: phNciNfc_e_SmbTxBlocked");
      if (*(a1 + 6344) || *(a1 + 6360) || *(a1 + 6536))
      {
        *(a1 + 754) = 1;
      }

      if (*(a1 + 6696))
      {
        sub_297E4E0B0(1, a1 + 9792, 4, 2u, "phLibNfc_GenericErrorHandler: Independent SMB TX Blocked Received");
        phOsalNfc_SetMemory();
        LODWORD(v27) = 255;
        sub_297E54734(1, a1 + 9792, 4, 4u, "phLibNfc_GenericErrorHandler:pSeListenerNtfCb[SMB TX BLOCKED]");
        (*(a1 + 6696))(*(a1 + 9784), *(a1 + 6704), 28, *(a1 + 440), v26, 0);
      }

      return sub_297E4DFAC(2, a1, 4, 5u, "phLibNfc_GenericErrorHandler");
    }
  }

  else
  {
    if (v10 == 10)
    {
      v11 = "Generic error received: phNciNfc_e_DiscTgtActvnFailed";
      goto LABEL_52;
    }

    if (v10 == 11)
    {
      v11 = "Generic error received: phNciNfc_e_DiscTearDown";
LABEL_52:
      v13 = a1 + 9792;
      v12 = 1;
      goto LABEL_53;
    }
  }

  if (a4 != 133)
  {
    v11 = "Generic error received: phNciNfc_e_ErrorNotDefined -Unknown error code";
    goto LABEL_52;
  }

  if (*(a1 + 6568))
  {
    sub_297E54734(1, a1 + 9792, 4, 4u, "phLibNfc_GenericErrorHandler :pGenericNtfCb[GENERIC ERR Ntf]");
    (*(a1 + 6568))(*(a1 + 9784), *(a1 + 6576), 133, a3 + 1);
  }

  v15 = *(a1 + 6104);
  v16 = a3[1];
  if (v15 && (v16 - 229) <= 0x11)
  {
    v17 = 1 << (v16 + 27);
    if ((v17 & 0x43) != 0)
    {
LABEL_62:
      v18 = a1;
      v19 = 137;
      goto LABEL_63;
    }

    if ((v17 & 0x20024) != 0)
    {
      v18 = a1;
      v19 = 136;
LABEL_63:
      sub_297EA3DD8(v18, v19);
      return sub_297E4DFAC(2, a1, 4, 5u, "phLibNfc_GenericErrorHandler");
    }
  }

  if ((v16 - 251) > 3)
  {
    return sub_297E4DFAC(2, a1, 4, 5u, "phLibNfc_GenericErrorHandler");
  }

  v21 = 0;
  v22 = *(a1 + 3240);
  if (v22 && v22 != 0xFFFFFFFFFFFFLL)
  {
    phOsalNfc_Timer_Stop();
    *(a1 + 6084) = 0;
    v21 = 1;
    sub_297E687D8(1, a1 + 9792, *(a1 + 3240), 4, 4u, "phLibNfc_GenericErrorHandler");
    phOsalNfc_Timer_Delete();
    *(a1 + 3240) = 0xFFFFFFFFFFFFLL;
    v15 = *(a1 + 6104);
  }

  if (!v15)
  {
    *(a1 + 3264) = 0;
    sub_297E4E0B0(1, a1 + 9792, 4, 4u, "phLibNfc_PropMultiTagStatNtfHandler- Independent Prop Tag Detect NTF Rxd");
    return sub_297E4DFAC(2, a1, 4, 5u, "phLibNfc_GenericErrorHandler");
  }

  if (a3[1] == 253)
  {
    sub_297E4E0B0(1, a1 + 9792, 4, 1u, "Generic error received: UNEXPECTED MULTI TAG DETECTION ERROR");
    goto LABEL_62;
  }

  sub_297E4E0B0(1, a1 + 9792, 4, 2u, "Generic error received: MULTI_TAG ERROR");
  if (v21 && !*(a1 + 3264))
  {
    *(a1 + 3264) = 1;
    *(a1 + 2960) = off_2A1A90E88;
    *(a1 + 2952) = 0;
    *(a1 + 2954) = 0;
    v23 = off_2A1A90E88[0];
    if (off_2A1A90E88[0])
    {
      v23 = 0;
      v24 = &qword_2A1A90E98;
      do
      {
        ++v23;
        v25 = *v24;
        v24 += 2;
      }

      while (v25);
    }

    *(a1 + 2953) = v23;
    if (sub_297E5588C(a1, 0, 0) != 13)
    {
      sub_297EFA54C(a1, 255);
    }
  }

  return sub_297E4DFAC(2, a1, 4, 5u, "phLibNfc_GenericErrorHandler");
}

uint64_t sub_297EFC328(uint64_t a1, uint64_t a2)
{
  sub_297E4E1B4(2, a1, 4, 5u, "phLibNfc_TriggerAssertCb");
  if (a1)
  {
    if (a2)
    {
      sub_297E4E0B0(1, a1 + 9792, 4, 1u, "phLibNfc_TriggerAssertCb: Failed");
      v4 = 119;
    }

    else
    {
      v4 = 118;
    }

    sub_297E4F450(*(a1 + 9784), v4, a2, 0, 0);
  }

  return sub_297E4DFAC(2, a1, 4, 5u, "phLibNfc_TriggerAssertCb");
}

unint64_t sub_297EFC3D8(int a1)
{
  v13 = a1;
  sub_297E4E1B4(1, &v13, 4, 5u, "phLibNfc_FrameDebugParam");
  if (v13)
  {
    if (v13 != 1)
    {
      sub_297E4E0B0(1, &v13, 4, 1u, "phLibNfc_FrameDebugParam: passed controller type is unknown");
      v11 = 0;
      goto LABEL_7;
    }

    v1 = &gphNfc_DebugInfo_Sec;
  }

  else
  {
    v1 = &gphNfc_DebugInfo_Prim;
  }

  v3 = *v1;
  v2 = v1[1];
  v4 = vandq_s8(vshlq_u32(vdupq_n_s32(v3), xmmword_297F13880), xmmword_297F13890);
  v5.i64[0] = v4.u32[0];
  v5.i64[1] = v4.u32[1];
  v6 = v5;
  v5.i64[0] = v4.u32[2];
  v5.i64[1] = v4.u32[3];
  v7 = vdupq_n_s32(v2);
  v8 = vshlq_u32(v7, xmmword_297F138C0);
  v8.i32[3] = vshlq_u32(v7, xmmword_297F138E0).i32[3];
  v9 = vorrq_s8(vandq_s8(v8, xmmword_297F138F0), vorrq_s8(vandq_s8(vshlq_u32(v7, xmmword_297F138D0), xmmword_297F13900), vandq_s8(vshlq_u32(v7, xmmword_297F13910), xmmword_297F13920)));
  *v9.i8 = vorr_s8(*v9.i8, *&vextq_s8(v9, v9, 8uLL));
  v10 = vorrq_s8(vshlq_u64(v6, xmmword_297F138B0), vshlq_u64(v5, xmmword_297F138A0));
  v11 = *&vorr_s8(*v10.i8, *&vextq_s8(v10, v10, 8uLL)) | (16 * v3) & 0xF00000000 | (((v3 >> 18) & 0x1F) << 41) | (((v3 >> 17) & 1) << 46) | (v2 << 31) | (((v3 >> 23) & 0x1F) << 36) | (v2 << 29) & 0x40000000 | (v2 >> 31) | (v2 << 25) & 0x10000000 | (((v2 >> 2) & 1) << 29) | v9.i32[0] | (v2 >> 29) & 2 | v9.i32[1];
LABEL_7:
  sub_297E4DFAC(1, &v13, 4, 5u, "phLibNfc_FrameDebugParam");
  return v11;
}

uint64_t sub_297EFC5B0(uint64_t a1)
{
  sub_297E4E1B4(2, a1, 4, 5u, "phLibNfc_ConfigTestModeEnd");
  if (a1)
  {
    v2 = *(a1 + 3000);
    if (*(a1 + 3224) != 1)
    {
      phOsalNfc_SetMemory();
      phTmlNfc_IoCtl();
    }

    sub_297ECAE1C(a1);
    phOsalNfc_FreeMemory();
    sub_297E9F3BC(v2, 0);
  }

  return sub_297E4DFAC(2, 0, 4, 5u, "phLibNfc_ConfigTestModeEnd");
}

uint64_t sub_297EFC66C(uint64_t *a1, uint64_t a2)
{
  v23 = 0;
  v21 = 0;
  v22 = 0;
  v20 = 8;
  sub_297E4E1B4(2, a1, 4, 5u, "phLibNfc_ConfigNciMode");
  if (!a1)
  {
    v10 = "FAILURE, Libnfc or Download Context is Invalid";
    v11 = 2;
    v12 = 0;
LABEL_15:
    sub_297E4E0B0(v11, v12, 4, 1u, v10);
    a2 = 255;
    goto LABEL_31;
  }

  v4 = a1[375];
  sub_297E67F6C(v4, &v21);
  sub_297E5F164(v4, &v20);
  sub_297E5D114(v4, &v22);
  v5 = 0;
  v6 = 1;
  while (1)
  {
    v7 = v6;
    v8 = &unk_2A18BDDC0 + 112 * v5;
    if (*v8 == v4)
    {
      break;
    }

    v6 = 0;
    v9 = 0;
    v5 = 1;
    if ((v7 & 1) == 0)
    {
      goto LABEL_8;
    }
  }

  v9 = *(v8 + 2) == 1;
LABEL_8:
  if (!v22 || !v21)
  {
    v10 = "FAILURE, IOCTL/DNLD Context is Invalid";
    v12 = (a1 + 1224);
    v11 = 1;
    goto LABEL_15;
  }

  phOsalNfc_SetMemory();
  v13 = sub_297E7F0C8(*(v22 + 8), *(v22 + 116), *(v22 + 118));
  if ((v20 & 0xFFFFFFFD) != 4)
  {
    goto LABEL_30;
  }

  if (v13 == 6)
  {
    if (!v9)
    {
      goto LABEL_30;
    }
  }

  else
  {
    if (v13 == 3)
    {
      v14 = *(v22 + 118) == 1;
    }

    else
    {
      v14 = v13 == 7;
    }

    v15 = v14;
    if ((v15 & v9 & 1) == 0)
    {
      goto LABEL_30;
    }
  }

  phTmlNfc_IoCtl();
  v16 = phTmlNfc_IoCtl();
  if (v16 != 179 || (sub_297E96914(1, (a1 + 1224), 4, 3u, "phLibNfc_ConfigNciMode: Assert Wakeup Status="), sub_297E4E0B0(1, (a1 + 1224), 4, 4u, "phLibNfc_ConfigNciMode: NFCSTATUS_SPMI_NACK1"), phOsalNfc_Delay(), v16 = phTmlNfc_IoCtl(), v16 != 179))
  {
    a2 = v16;
    sub_297E96914(1, (a1 + 1224), 4, 3u, "phLibNfc_ConfigNciMode: Assert Wakeup Status=");
    if (a2)
    {
      v18 = "phLibNfc_ConfigNciMode Unexpected Driver Error";
      goto LABEL_29;
    }

LABEL_30:
    sub_297E79734(a1, a1[370], 1);
    goto LABEL_31;
  }

  sub_297E96914(1, (a1 + 1224), 4, 3u, "phLibNfc_ConfigNciMode: Assert Wakeup Status=");
  sub_297E4E0B0(1, (a1 + 1224), 4, 4u, "phLibNfc_ConfigNciMode: NFCSTATUS_SPMI_NACK2");
  sub_297E4E0B0(1, (a1 + 1224), 4, 4u, "phLibNfc_ConfigNciMode: NFCSTATUS_SPMI_NACK2");
  sub_297E4E0B0(1, (a1 + 1224), 4, 4u, "phLibNfc_ConfigNciMode: Update client-ID to Secondary client ID(0x0B)");
  v17 = phTmlNfc_ConfigureSpmi();
  if (v17)
  {
    a2 = v17;
    v18 = "phLibNfc_ConfigNciMode - client ID update failed";
LABEL_29:
    sub_297E50EBC(1, (a1 + 1224), 4, 1u, v18);
    goto LABEL_31;
  }

  phTmlNfc_ReadAbort();
  phTmlNfc_FlushTxRxBuffers();
  if (!sub_297E56AFC(v4))
  {
    phTmlNfc_WriteAbort();
  }

  a1[375] = v4;
  a1[1223] = v4;
  if (sub_297F04A7C(v4, &v23, sub_297E5588C, a1, 1, 0) == 13)
  {
    a2 = 13;
  }

  else
  {
    a2 = 255;
  }

LABEL_31:
  sub_297E4DFAC(2, a1, 4, 5u, "phLibNfc_ConfigNciMode");
  return a2;
}

uint64_t sub_297EFCA00(uint64_t a1, uint64_t a2, uint64_t *a3)
{
  sub_297E4E1B4(2, a1, 4, 5u, "phLibNfc_SysConfigInitRspCb");
  if (a1 && a3)
  {
    v6 = a3[1];
    v7 = a2;
    if (v6)
    {
      v7 = *v6;
    }

    if (!v7)
    {
      v8 = *a3;
      *(a1 + 3088) = *a3;
      if (sub_297EA79F8(a1, v8) || !sub_297E7F0C8(*(a1 + 9784), *(a1 + 3036), *(a1 + 3136)))
      {
        a2 = 255;
      }
    }
  }

  sub_297E4DFAC(2, a1, 4, 5u, "phLibNfc_SysConfigInitRspCb");
  return a2;
}

uint64_t sub_297EFCAB8(void *a1, int a2, uint64_t a3, uint64_t a4)
{
  sub_297E4E1B4(2, a1, 4, 5u, "phLibNfc_PropMfwRawCtrlMsgNtfHandler");
  if (!a1)
  {
    goto LABEL_6;
  }

  v8 = 0;
  v9 = 0;
  do
  {
    v10 = *(&unk_2A18BDDC0 + 14 * v9 + 2);
    if (v8)
    {
      break;
    }

    v8 = 1;
    v9 = 1;
  }

  while (v10 != a1);
  if (v10 == a1)
  {
    if (a2 == 34 && a3)
    {
      v12 = a1[821];
      if (v12)
      {
        v13 = a1[822];
        sub_297E54734(1, (a1 + 1224), 4, 4u, "phLibNfc_PropMfwRawCtrlMsgNtfHandler :pGenericNtfCb[MFW Raw Control message Ntf]");
        v12(a1[1223], v13, a4, a3);
      }
    }

    else
    {
      sub_297E4E0B0(1, (a1 + 1224), 4, 2u, "phLibNfc_PropMfwRawCtrlMsgNtfHandler: Failed Invalid Message");
    }
  }

  else
  {
LABEL_6:
    sub_297E4E0B0(2, a1, 4, 1u, "phLibNfc_PropMfwRawCtrlMsgNtfHandler: Invalid context");
  }

  return sub_297E4DFAC(2, a1, 4, 5u, "phLibNfc_PropMfwRawCtrlMsgNtfHandler");
}

uint64_t sub_297EFCC04(uint64_t a1, uint64_t a2, unsigned int a3, _BYTE *a4)
{
  sub_297E4E1B4(2, a1, 4, 5u, "phLibNfc_ParseRfConfigSignedInputBuffer");
  if (!a2 || !a3 || !a4)
  {
    if (a4)
    {
      *a4 = 0;
    }

    v19 = 1;
    sub_297E4E0B0(2, a1, 4, 1u, "Invalid input parameter");
    goto LABEL_30;
  }

  v8 = 0;
  v9 = 0;
  v10 = 0;
  while (1)
  {
    v11 = *(a2 + v10);
    if ((v11 - 160) < 2)
    {
      v12 = 0;
      v13 = *(a2 + v10 + 2);
      v14 = v13 + v8 + 3;
      v8 += v13 + 3;
      if (v14 >= 0x10000)
      {
        v8 = 0;
      }

      ++v9;
      goto LABEL_18;
    }

    if (v11 != 240)
    {
      goto LABEL_26;
    }

    if (*(a2 + v10 + 1) != 2)
    {
      goto LABEL_26;
    }

    if (*(a2 + v10 + 2))
    {
      goto LABEL_26;
    }

    v15 = v10 + 3;
    if (*(a2 + v15) != 8)
    {
      goto LABEL_26;
    }

    if (v10 >= 0xFFFFFFFD)
    {
      v15 = 0;
    }

    v16 = *(a2 + v15);
    if ((v16 + v8 + 4) >> 16 || (v8 + v16 + 4) - 13 >= 0xF2)
    {
      break;
    }

    v8 = 0;
    v12 = 1;
LABEL_18:
    if (v10 <= (v12 ^ 0xFFFFFFFD))
    {
      v17 = v10 + v12;
      v18 = *(a2 + v17 + 2);
      if (v10 <= -4 - v17 - v18)
      {
        v10 = v17 + v18 + 3;
        if (v10 < a3)
        {
          continue;
        }
      }
    }

    goto LABEL_26;
  }

  sub_297E4E0B0(2, a1, 4, 2u, "phLibNfc_ParseRfConfigSignedInputBuffer: Payload Len issue");
LABEL_26:
  if (v10 == a3 && v9)
  {
    v19 = 0;
    *a4 = v9;
  }

  else
  {
    *a4 = 0;
    sub_297E4E0B0(2, a1, 4, 1u, "Inconsistent input buffer!");
    v19 = 255;
  }

LABEL_30:
  sub_297E4DFAC(2, a1, 4, 5u, "phLibNfc_ParseRfConfigSignedInputBuffer");
  return v19;
}

uint64_t sub_297EFCE08(uint64_t a1)
{
  sub_297E4E1B4(2, a1, 4, 5u, "phLibNfc_ReConfigHsuBrCmd");
  if (a1)
  {
    if (*(a1 + 2987) == 1 || *(a1 + 2992) == 1 || (v2 = *(a1 + 3104), v2 == 2))
    {
      v3 = 0;
    }

    else
    {
      v3 = sub_297F05D1C(*(a1 + 3088), v2, sub_297E5BA84, a1);
    }
  }

  else
  {
    v3 = 255;
  }

  sub_297E4DFAC(2, a1, 4, 5u, "phLibNfc_ReConfigHsuBrCmd");
  return v3;
}

uint64_t sub_297EFCEBC(uint64_t a1, uint64_t a2)
{
  sub_297E4E1B4(2, a1, 4, 5u, "phLibNfc_ClrRetAssertDataCb");
  if (a1)
  {
    if (a2)
    {
      v4 = 119;
    }

    else
    {
      v4 = 118;
    }

    sub_297E4F450(*(a1 + 9784), v4, a2, a1 + 8, 0);
  }

  else
  {
    sub_297E4E0B0(2, 0, 4, 1u, "phLibNfc_ClrRetAssertDataCb:Context is Null");
  }

  return sub_297E4DFAC(2, a1, 4, 5u, "phLibNfc_ClrRetAssertDataCb");
}

uint64_t sub_297EFCF68(unsigned __int8 *a1, unsigned __int8 *a2, int *a3, _DWORD *a4, int *a5, _DWORD *a6)
{
  sub_297E4E1B4(2, a1, 4, 5u, "phLibNfc_ParseAssertionData");
  if (!a1)
  {
    goto LABEL_22;
  }

  if (a2[1])
  {
    v12 = "phLibNfc_ParseAssertionData:Failed Status Received From Lower Layer";
LABEL_21:
    sub_297E4E0B0(1, (a1 + 9792), 4, 1u, v12);
LABEL_22:
    v19 = 255;
    goto LABEL_23;
  }

  v13 = a1[2984];
  if (v13 == 1)
  {
    v14 = 146;
  }

  else if (a1[2986] == 1)
  {
    v14 = 186;
  }

  else if (a1[2994] == 1)
  {
    v14 = 126;
  }

  else
  {
    v14 = 166;
  }

  v15 = *a2;
  if (v14 != v15)
  {
    v12 = "phLibNfc_ParseAssertionData:INvalid Length Received from Lower Layer";
    goto LABEL_21;
  }

  if (v15 >= 3)
  {
    v16 = v14 - 2;
    v17 = a2 + 5;
    v18 = 6;
    while (*(v17 - 2) != 160 || *(v17 - 1) != 26 || *v17 != 4)
    {
      ++v18;
      ++v17;
      if (!--v16)
      {
        goto LABEL_18;
      }
    }

    v19 = 0;
    *a3 = v18;
    if (!v13)
    {
      goto LABEL_25;
    }

LABEL_19:
    v20 = 64;
    goto LABEL_28;
  }

LABEL_18:
  v19 = 255;
  if (a1[2984])
  {
    goto LABEL_19;
  }

LABEL_25:
  if (a1[2986] == 1)
  {
    v20 = 96;
  }

  else
  {
    v20 = 80;
  }

LABEL_28:
  v22 = *a2;
  if (v22 >= 3)
  {
    v24 = 2;
    while (a2[v24 + 1] != 160 || a2[v24 + 2] != 27 || v20 != a2[v24 + 3])
    {
      if (v22 == ++v24)
      {
        goto LABEL_37;
      }
    }

    v19 = 0;
    *a4 = v24 + 4;
    LODWORD(v22) = *a2;
LABEL_37:
    v23 = v22;
    if (v22 <= 2)
    {
      goto LABEL_43;
    }

    v25 = 2;
    while (a2[v25 + 1] != 160 || a2[v25 + 2] != 28 || a2[v25 + 3] != 44)
    {
      if (v22 == ++v25)
      {
        goto LABEL_43;
      }
    }

    v19 = 0;
    *a6 = v25 + 4;
    LODWORD(v22) = *a2;
  }

  v23 = v22;
LABEL_43:
  if (v13 == 1)
  {
    v26 = 20;
  }

  else
  {
    v26 = 24;
  }

  if (a1[2986] == 1)
  {
    v26 += 4;
  }

  if (a1[2994] == 1)
  {
    v26 -= 8;
  }

  if (v23 >= 3)
  {
    v27 = v22 - 2;
    v28 = a2 + 5;
    v29 = 6;
    while (*(v28 - 2) != 160 || *(v28 - 1) != 39 || *v28 != v26)
    {
      ++v29;
      ++v28;
      if (!--v27)
      {
        goto LABEL_23;
      }
    }

    v19 = 0;
    *a5 = v29;
  }

LABEL_23:
  sub_297E4DFAC(2, a1, 4, 5u, "phLibNfc_ParseAssertionData");
  return v19;
}

uint64_t sub_297EFD244(void *a1, uint64_t a2, uint64_t a3)
{
  sub_297E4E1B4(2, a1, 4, 5u, "phLibNfc_GetNfccParamsCallback");
  if (a1)
  {
    v6 = a1[845];
    v7 = a1[846];
    *(a1 + 845) = 0u;
    if (v6)
    {
      sub_297E50EBC(1, (a1 + 1224), 4, 4u, "phLibNfc_SM_eGetNfcParams: Invoking callback, wStatus = ");
      sub_297E4D930(1, (a1 + 1224), 4, 131, "phLibNfc_GetNfccParamsCallback");
      v6(a1[1223], v7, a2, a3);
    }
  }

  return sub_297E4DFAC(2, a1, 4, 5u, "phLibNfc_GetNfccParamsCallback");
}

uint64_t sub_297EFD338(unsigned int a1, uint64_t a2)
{
  v4 = a1;
  sub_297E4E1B4(1, &v4, 4, 5u, "phLibNfc_StopTimer");
  if (a2 && a2 != 0xFFFFFFFFFFFFLL && phOsalNfc_Timer_Stop())
  {
    sub_297E50EBC(1, &v4, 4, 4u, "LibNfc Timer_Stop failed,Stat=");
  }

  return sub_297E4DFAC(1, &v4, 4, 5u, "phLibNfc_StopTimer");
}

uint64_t sub_297EFD3DC(uint64_t a1)
{
  sub_297E4E1B4(2, a1, 4, 5u, "phLibNfc_GetFwTypeCmd");
  if (a1)
  {
    if (*(a1 + 3264) == 1 || ((v2 = *(a1 + 3028), v3 = *(a1 + 2985), v3 == 1) ? (v4 = v2 > 0xA) : (v4 = 0), v4 || *(a1 + 2986) == 1 || *(a1 + 2992) == 1))
    {
      v5 = sub_297F0A1A0(*(a1 + 3088), sub_297E5BA84, a1);
    }

    else
    {
      if ((v2 & 0xFFFFFFFD) != 0xFC && (v3 == 1 || *(a1 + 2984) == 1))
      {
        v5 = 0;
        if (v2 - 160 > 0x3F)
        {
          v7 = 1;
        }

        else
        {
          v7 = 2;
        }
      }

      else
      {
        v5 = 0;
        v7 = 3;
      }

      *(a1 + 3196) = v7;
    }
  }

  else
  {
    sub_297E4E0B0(2, 0, 4, 1u, "Invalid parameter, Libnfc Context is Invalid");
    v5 = 255;
  }

  sub_297E4DFAC(2, a1, 4, 5u, "phLibNfc_GetFwTypeCmd");
  return v5;
}

uint64_t sub_297EFD50C(uint64_t a1, uint64_t a2, unsigned __int8 **a3)
{
  sub_297E4E1B4(2, a1, 4, 5u, "phLibNfc_GetFwTypeProc");
  if (a1 && a3)
  {
    if (!a2 && *a3 && *(a3 + 2))
    {
      sub_297E4E0B0(1, a1 + 9792, 4, 4u, "phLibNfc_GetFwTypeProc: operation success");
      v6 = **a3;
      if ((v6 - 1) >= 2)
      {
        **a3 = 3;
        v6 = **a3;
      }

      a2 = 0;
    }

    else
    {
      sub_297E4E0B0(1, a1 + 9792, 4, 1u, "phLibNfc_GetFwTypeProc: operation failed");
      v6 = 3;
    }

    *(a1 + 3196) = v6;
  }

  else
  {
    sub_297E4E0B0(2, a1, 4, 1u, "phLibNfc_GetFwTypeProc: Libnfc Context is Invalid");
    a2 = 255;
  }

  sub_297E4DFAC(2, a1, 4, 5u, "phLibNfc_GetFwTypeProc");
  return a2;
}

uint64_t sub_297EFD62C(uint64_t a1, uint64_t a2, unsigned __int8 **a3)
{
  sub_297E4E1B4(2, a1, 4, 5u, "phLibNfc_MultiTagGetFwTypeProc");
  if (a1 && a3)
  {
    if (!a2 && *a3 && *(a3 + 2))
    {
      sub_297E4E0B0(1, a1 + 9792, 4, 4u, "phLibNfc_MultiTagGetFwTypeProc: operation success");
      v7 = *a3;
      v8 = **a3;
      if ((v8 - 1) >= 2)
      {
        *v7 = 3;
        v7 = *a3;
        v8 = **a3;
      }

      a2 = 0;
      *(a1 + 3196) = v8;
      v9 = *(a1 + 3032) | (v7[1] << 24);
      *(a1 + 3032) = v9;
      v10 = v9 | (v7[2] << 16);
      *(a1 + 3032) = v10;
      v11 = v10 | (v7[3] << 8);
      *(a1 + 3032) = v11;
      *(a1 + 3032) = v11 | v7[4];
    }

    else
    {
      sub_297E4E0B0(1, a1 + 9792, 4, 1u, "phLibNfc_MultiTagGetFwTypeProc: operation failed");
      *(a1 + 3196) = 3;
      *(a1 + 3032) = 0;
    }
  }

  else
  {
    sub_297E4E0B0(2, a1, 4, 1u, "phLibNfc_MultiTagGetFwTypeProc: Libnfc Context is Invalid");
    a2 = 255;
  }

  sub_297E4DFAC(2, a1, 4, 5u, "phLibNfc_MultiTagGetFwTypeProc");
  return a2;
}

uint64_t sub_297EFD788(uint64_t a1, uint64_t a2)
{
  sub_297E4E1B4(2, a1, 4, 5u, "phLibNfc_MultiTagGetFwInfoComplete");
  if (a1)
  {
    sub_297EFA54C(a1, a2);
  }

  else
  {
    sub_297E4E0B0(2, 0, 4, 1u, "phLibNfc_MultiTagGetFwInfoComplete: Libnfc Context is Invalid");
    a2 = 255;
  }

  sub_297E4DFAC(2, 0, 4, 5u, "phLibNfc_MultiTagGetFwInfoComplete");
  return a2;
}

uint64_t sub_297EFD81C(uint64_t a1, int a2, uint64_t a3, uint64_t a4)
{
  sub_297E4E1B4(2, a1, 4, 5u, "phLibNfc_PropTagRemDetNtfHandler");
  if (a1 && a2 == 31)
  {
    *(a1 + 1475) = 0;
    if (a4 == 120)
    {
      sub_297F0AF34(*(a1 + 3088));
      v7 = sub_297EE1404(*(a1 + 9784));
      v8 = sub_297EE14CC(*(a1 + 9784));
      if ((v7 - 5) > 1)
      {
        sub_297E4F450(*(a1 + 9784), 125, 0, 0, 0);
      }

      else
      {
        *(a1 + 1475) = 1;
        sub_297E4F450(*(a1 + 9784), 125, 0, 0, 0);
        sub_297EE18A8(*(a1 + 9784), 4);
      }

      if (*(a1 + 1475))
      {
        *(a1 + 1475) = 0;
      }

      else
      {
        if (v8 == 2)
        {
          sub_297E4E0B0(1, a1 + 9792, 4, 4u, "phLibNfc_PropTagRemDetNtfHandler: Transition status is invalid");
        }

        sub_297EE1720(*(a1 + 9784), v8);
      }
    }

    v9 = *(a1 + 6280);
    if (v9)
    {
      v10 = *(a1 + 6288);
      sub_297E54734(1, a1 + 9792, 4, 4u, "phLibNfc_PropTagRemDetNtfHandler :RemDevNtfCB[TagRemDetNtf]");
      v9(*(a1 + 9784), v10, 0, 0, a4);
    }
  }

  return sub_297E4DFAC(2, a1, 4, 5u, "phLibNfc_PropTagRemDetNtfHandler");
}

uint64_t sub_297EFD9A4(uint64_t a1, int a2, uint64_t a3, int a4)
{
  sub_297E4E1B4(2, a1, 4, 5u, "phLibNfc_PropLpcdDebugNtfHandler");
  if (a3 && a2 == 32 && a1 && !a4 && *(a1 + 6568))
  {
    sub_297E54734(1, a1 + 9792, 4, 4u, "phLibNfc_PropLpcdDebugNtfHandler :pGenericNtfCb[Lpcd Debug Ntf]");
    (*(a1 + 6568))(*(a1 + 9784), *(a1 + 6576), 75, a3);
  }

  return sub_297E4DFAC(2, a1, 4, 5u, "phLibNfc_PropLpcdDebugNtfHandler");
}

uint64_t sub_297EFDA70(uint64_t a1, int a2, uint64_t a3, int a4)
{
  sub_297E4E1B4(2, a1, 4, 5u, "phLibNfc_RfLpcdAssistExitNtfHandler");
  if (a2 == 45 && a1 && !a4 && *(a1 + 6568))
  {
    sub_297E54734(1, a1 + 9792, 4, 4u, "phLibNfc_RfLpcdAssistExitNtfHandler :pGenericNtfCb[Lpcd Assistance Exit Ntf]");
    (*(a1 + 6568))(*(a1 + 9784), *(a1 + 6576), 79, 0);
  }

  return sub_297E4DFAC(2, a1, 4, 5u, "phLibNfc_RfLpcdAssistExitNtfHandler");
}

uint64_t sub_297EFDB34(uint64_t a1, int a2, unsigned __int8 **a3, int a4)
{
  v16 = 0;
  v15 = 0;
  sub_297E4E1B4(2, a1, 4, 5u, "phLibNfc_RelaydetectionNtfHandler");
  if (a1)
  {
    v8 = 0;
    v9 = 0;
    do
    {
      v10 = *(&unk_2A18BDDC0 + 14 * v9 + 2);
      if (v8)
      {
        break;
      }

      v8 = 1;
      v9 = 1;
    }

    while (v10 != a1);
    if (v10 == a1)
    {
      if (a3 && a2 == 36 && !a4)
      {
        if (*(a3 + 2) == 11 && *a3)
        {
          phOsalNfc_SetMemory();
          v11 = *a3;
          LODWORD(v15) = v15 | **a3 | ((*a3)[1] << 8) | ((*a3)[2] << 16);
          v12 = HIDWORD(v15) | v11[4];
          LODWORD(v15) = v15 | (v11[3] << 24);
          HIDWORD(v15) = v12;
          HIDWORD(v15) = v12 | (v11[5] << 8) | (v11[6] << 16);
          v13 = v16 | v11[8];
          HIDWORD(v15) |= v11[7] << 24;
          v16 = v13;
          v16 = v13 | (v11[9] << 8) | (v11[10] << 16);
          if (*(a1 + 6568))
          {
            sub_297E54734(1, a1 + 9792, 4, 4u, "phLibNfc_RelaydetectionNtfHandler :pGenericNtfCb[Relay Attack Detection Ntf]");
            (*(a1 + 6568))(*(a1 + 9784), *(a1 + 6576), 159, &v15);
          }

          else
          {
            sub_297E4E0B0(2, a1, 4, 1u, "phLibNfc_RelaydetectionNtfHandler: pGenericNtfCb is NULL");
          }
        }

        else
        {
          sub_297E4E0B0(2, a1, 4, 2u, "phLibNfc_RelaydetectionNtfHandler: Received Length is zero");
        }
      }

      else
      {
        sub_297E50DB0(2, a1, 4, 1u, "phLibNfc_RelaydetectionNtfHandler: Failed status");
      }
    }
  }

  return sub_297E4DFAC(2, a1, 4, 5u, "phLibNfc_RelaydetectionNtfHandler");
}

uint64_t sub_297EFDD50(uint64_t a1)
{
  sub_297E4E1B4(2, a1, 4, 5u, "phLibNfc_SetChipScopeLogCfgValReInit");
  if (a1)
  {
    if ((*(a1 + 6076) & 0xFE) == 2 && *(a1 + 6056) && *(a1 + 6064))
    {
      *(a1 + 5464) = 5;
      *(a1 + 5472) = 2;
      *(a1 + 5480) = a1 + 6056;
      v2 = sub_297F0A3C0(*(a1 + 3088), (a1 + 5464), sub_297E5BA84, a1);
    }

    else
    {
      v2 = 0;
    }
  }

  else
  {
    sub_297E4E0B0(2, 0, 4, 1u, "phLibNfc_SetChipScopeLogCfgCmd : Libnfc Context is Invalid");
    v2 = 255;
  }

  sub_297E4DFAC(2, a1, 4, 5u, "phLibNfc_SetChipScopeLogCfgValReInit");
  return v2;
}

uint64_t sub_297EFDE44(uint64_t a1)
{
  sub_297E4E1B4(2, a1, 4, 5u, "phLibNfc_SetChipScopeLogCfgStartReInit");
  if (a1)
  {
    if (*(a1 + 6076) == 3 && *(a1 + 6056) && *(a1 + 6064))
    {
      *(a1 + 5464) = 5;
      *(a1 + 5472) = 1;
      v2 = sub_297F0A3C0(*(a1 + 3088), (a1 + 5464), sub_297E5BA84, a1);
    }

    else
    {
      v2 = 0;
    }
  }

  else
  {
    sub_297E4E0B0(2, 0, 4, 1u, "phLibNfc_SetChipScopeLogCfgCmd : Libnfc Context is Invalid");
    v2 = 255;
  }

  sub_297E4DFAC(2, a1, 4, 5u, "phLibNfc_SetChipScopeLogCfgStartReInit");
  return v2;
}

uint64_t sub_297EFDF28(void *a1, int a2, uint64_t a3, int a4)
{
  sub_297E4E1B4(2, a1, 4, 5u, "phLibNfc_PropChipScopeLoggingNtfHandler");
  if (a1)
  {
    if (a3 && a2 == 33 && !a4)
    {
      v8 = a1[821];
      if (v8)
      {
        v9 = a1[822];
        sub_297E54734(1, (a1 + 1224), 4, 4u, "phLibNfc_PropChipScopeLoggingNtfHandler :pGenericNtfCb[Chip Scope Debug Ntf]");
        v8(a1[1223], v9, 134, a3);
      }
    }

    else
    {
      sub_297E50DB0(1, (a1 + 1224), 4, 1u, "phLibNfc_PropChipScopeLoggingNtfHandler: Failed status");
    }
  }

  return sub_297E4DFAC(2, a1, 4, 5u, "phLibNfc_PropChipScopeLoggingNtfHandler");
}

uint64_t sub_297EFE01C(void *a1, int a2, uint64_t a3, int a4)
{
  sub_297E4E1B4(2, a1, 4, 5u, "phLibNfc_PropSmbLoggingNtfHandler");
  if (a1)
  {
    v8 = 0;
    v9 = 0;
    do
    {
      v10 = *(&unk_2A18BDDC0 + 14 * v9 + 2);
      if (v8)
      {
        break;
      }

      v8 = 1;
      v9 = 1;
    }

    while (v10 != a1);
    if (v10 == a1)
    {
      if (a3 && a2 == 44 && !a4)
      {
        if (*(a3 + 8) && *a3)
        {
          v11 = a1[821];
          if (v11)
          {
            v12 = a1[822];
            sub_297E54734(1, (a1 + 1224), 4, 4u, "phLibNfc_PropSmbLoggingNtfHandler :pGenericNtfCb[Smb Logging Ntf]");
            v11(a1[1223], v12, 142, a3);
          }
        }

        else
        {
          sub_297E4E0B0(1, (a1 + 1224), 4, 2u, "phLibNfc_PropSmbLoggingNtfHandler: Received Length is zero");
        }
      }

      else
      {
        sub_297E50DB0(1, (a1 + 1224), 4, 1u, "phLibNfc_PropSmbLoggingNtfHandler: Failed status");
      }
    }
  }

  return sub_297E4DFAC(2, a1, 4, 5u, "phLibNfc_PropSmbLoggingNtfHandler");
}

uint64_t sub_297EFE17C(uint64_t a1)
{
  v6 = *MEMORY[0x29EDCA608];
  v5 = 0;
  memset(v4, 0, sizeof(v4));
  sub_297E4E1B4(2, a1, 4, 5u, "phLibNfc_GetAssertRegCmd");
  if (a1)
  {
    BYTE8(v4[0]) = 39;
    *&v4[0] = 0xA01CA01BA01AA004;
    v2 = sub_297F067C4(*(a1 + 3088), v4, 9, sub_297E5BA84, a1);
  }

  else
  {
    v2 = 1;
    sub_297E4E0B0(2, 0, 4, 1u, "phLibNfc_GetAssertRegCmd: Invalid Libnfc Context");
  }

  sub_297E4DFAC(2, a1, 4, 5u, "phLibNfc_GetAssertRegCmd");
  return v2;
}

uint64_t sub_297EFE28C(uint64_t a1, uint64_t a2, unsigned __int8 *a3)
{
  v13 = *MEMORY[0x29EDCA608];
  v10 = 0;
  v11 = 0;
  memset(v12, 0, sizeof(v12));
  sub_297E4E1B4(2, a1, 4, 5u, "phLibNfc_GetAssertRegRsp");
  if (!a1)
  {
    v6 = "phLibNfc_ClrRetAssertDataCb:Context is Null";
    v7 = 2;
    v8 = 0;
LABEL_10:
    sub_297E4E0B0(v7, v8, 4, 1u, v6);
    a2 = 255;
    goto LABEL_11;
  }

  if (!a2)
  {
    if (!a3 || !*(a1 + 8))
    {
      v6 = "phLibNfc_ClrRetAssertDataCb:User Buffer is Null";
      goto LABEL_9;
    }

    if (sub_297EFCF68(a1, a3, &v11 + 1, &v11, &v10 + 1, &v10))
    {
      v6 = "phLibNfc_ClrRetAssertDataCb:Parsing Assertion Data Failed";
LABEL_9:
      v8 = a1 + 9792;
      v7 = 1;
      goto LABEL_10;
    }

    if (HIDWORD(v11))
    {
      phOsalNfc_MemCopy();
      sub_297E50DB0(1, a1 + 9792, 4, 4u, "Assert Reg Program Counter");
    }

    if (v11)
    {
      phOsalNfc_SetMemory();
      phOsalNfc_MemCopy();
      sub_297E8DC98(a1, *(a1 + 8) + 4, v12);
    }

    if (HIDWORD(v10))
    {
      phOsalNfc_SetMemory();
      phOsalNfc_MemCopy();
      sub_297E8E560(a1, *(a1 + 8) + 144, v12);
    }

    a2 = v10;
    if (v10)
    {
      phOsalNfc_SetMemory();
      phOsalNfc_MemCopy();
      sub_297E8E29C(*(a1 + 9792), *(a1 + 8) + 100, v12);
      a2 = 0;
    }
  }

LABEL_11:
  sub_297E4DFAC(2, a1, 4, 5u, "phLibNfc_GetAssertRegRsp");
  return a2;
}

uint64_t sub_297EFE520(uint64_t a1, int a2)
{
  sub_297E4E1B4(2, a1, 4, 5u, "phLibNfc_GetAssertDbgLogCmd");
  if (!a1 || a2)
  {
    v5 = 1;
    sub_297E4E0B0(2, a1, 4, 1u, "Invalid parameter, Libnfc Context is Invalid");
  }

  else if (*(a1 + 2984) == 1)
  {
    v4 = *(a1 + 8);
    if (v4)
    {
      *(v4 + 208) = 0;
      *(v4 + 216) = 0;
    }

    v5 = 0;
    *(a1 + 320) = 0;
    *(a1 + 328) = 0;
  }

  else
  {
    *(a1 + 357) = 3;
    v5 = sub_297F09FF8(*(a1 + 3088), 3, sub_297E5BA84, a1);
  }

  sub_297E4DFAC(2, a1, 4, 5u, "phLibNfc_GetAssertDbgLogCmd");
  return v5;
}

uint64_t sub_297EFE604(uint64_t a1, int a2)
{
  sub_297E4E1B4(2, a1, 4, 5u, "phLibNfc_GetSpmiDebugInfoRamCmd");
  if (!a1 || a2)
  {
    v4 = 1;
    sub_297E4E0B0(2, a1, 4, 1u, "phLibNfc_GetCoreDumpLogCmd: Invalid parameter, Libnfc Context is Invalid");
  }

  else if (*(a1 + 2992) == 1)
  {
    *(a1 + 357) = 1;
    v4 = sub_297F09FF8(*(a1 + 3088), 1, sub_297E5BA84, a1);
  }

  else
  {
    v4 = 0;
  }

  sub_297E4DFAC(2, a1, 4, 5u, "phLibNfc_GetSpmiDebugInfoRamCmd");
  return v4;
}

uint64_t sub_297EFE6CC(uint64_t a1, int a2)
{
  sub_297E4E1B4(2, a1, 4, 5u, "phLibNfc_GetSpmiDebugInfoFlashCmd");
  if (!a1 || a2)
  {
    v4 = 1;
    sub_297E4E0B0(2, a1, 4, 1u, "phLibNfc_GetCoreDumpLogCmd: Invalid parameter, Libnfc Context is Invalid");
  }

  else if (*(a1 + 2992) == 1)
  {
    *(a1 + 357) = 2;
    v4 = sub_297F09FF8(*(a1 + 3088), 2, sub_297E5BA84, a1);
  }

  else
  {
    v4 = 0;
  }

  sub_297E4DFAC(2, a1, 4, 5u, "phLibNfc_GetSpmiDebugInfoFlashCmd");
  return v4;
}

uint64_t sub_297EFE798(uint64_t a1, int a2)
{
  sub_297E4E1B4(2, a1, 4, 5u, "phLibNfc_GetCoreDumpLogCmd");
  if (!a1 || a2)
  {
    v4 = 1;
    sub_297E4E0B0(2, a1, 4, 1u, "phLibNfc_GetCoreDumpLogCmd: Invalid parameter, Libnfc Context is Invalid");
  }

  else if (*(a1 + 2992) == 1)
  {
    *(a1 + 357) = 4;
    v4 = sub_297F09FF8(*(a1 + 3088), 4, sub_297E5BA84, a1);
  }

  else
  {
    v4 = 0;
  }

  sub_297E4DFAC(2, a1, 4, 5u, "phLibNfc_GetCoreDumpLogCmd");
  return v4;
}

uint64_t sub_297EFE864(uint64_t a1, uint64_t a2, uint64_t a3)
{
  sub_297E4E1B4(2, a1, 4, 5u, "phLibNfc_GetGenericDbgLogProc");
  if (!a1 || !a3)
  {
    sub_297E4E0B0(2, a1, 4, 1u, "phLibNfc_GetGenericDbgLogProc: Libnfc Context or pDbgInfo is Invalid");
    goto LABEL_6;
  }

  if (a2)
  {
    sub_297E4E0B0(1, a1 + 9792, 4, 1u, "phLibNfc_GetGenericDbgLogProc: operation failed");
    goto LABEL_7;
  }

  v7 = *(a3 + 2);
  if ((v7 - 1) > 3u)
  {
LABEL_19:
    a2 = 0;
    goto LABEL_7;
  }

  v8 = *(a1 + 8);
  v9 = a1 + 16 * ((v7 - 1) & 0xF);
  *(v9 + 288) = 0;
  *(v9 + 296) = 0;
  if (*(a3 + 8) && *(a3 + 4))
  {
    if (*(a1 + 357) == v7)
    {
      Memory_Typed = phOsalNfc_GetMemory_Typed();
      *(v9 + 288) = Memory_Typed;
      if (!Memory_Typed)
      {
        sub_297E4E0B0(1, a1 + 9792, 4, 1u, "phLibNfc_GetGenericDbgLogProc: Failed to allocate memory");
        a2 = 12;
        goto LABEL_7;
      }

      phOsalNfc_SetMemory();
      phOsalNfc_MemCopy();
      *(v9 + 296) = *(a3 + 4);
      sub_297E4E0B0(1, a1 + 9792, 4, 4u, "phLibNfc_GetGenericDbgLogProc: Operation success");
      goto LABEL_14;
    }

    sub_297E50EBC(1, a1 + 9792, 4, 1u, "phLibNfc_GetGenericDbgLogProc: Mismatch in Log type Received, pDbgInfo->bGenericDbgInfoType");
LABEL_6:
    a2 = 255;
    goto LABEL_7;
  }

LABEL_14:
  a2 = 0;
  if (*(a1 + 6088) && v8)
  {
    v11 = *(a3 + 2);
    if (v11 == 1)
    {
      a2 = 0;
      *(v8 + 176) = *(v9 + 288);
      *(v8 + 184) = *(v9 + 296);
      goto LABEL_7;
    }

    if (v11 == 2)
    {
      a2 = 0;
      *(v8 + 192) = *(v9 + 288);
      *(v8 + 200) = *(v9 + 296);
      goto LABEL_7;
    }

    goto LABEL_19;
  }

LABEL_7:
  sub_297E4DFAC(2, a1, 4, 5u, "phLibNfc_GetGenericDbgLogProc");
  return a2;
}

uint64_t sub_297EFEA78(uint64_t a1, uint64_t a2, uint64_t a3)
{
  sub_297E4E1B4(2, a1, 4, 5u, "phLibNfc_GetAssertDbgLogApiProc");
  if (a1)
  {
    v6 = *(a1 + 8);
    if (v6 && (*(v6 + 208) = 0, *(v6 + 216) = 0, !a2) && a3)
    {
      if (*(a3 + 8) && *(a3 + 4))
      {
        Memory_Typed = phOsalNfc_GetMemory_Typed();
        *(a1 + 320) = Memory_Typed;
        if (!Memory_Typed)
        {
          sub_297E4E0B0(1, a1 + 9792, 4, 1u, "phLibNfc_GetAssertDbgLogApiProc: Failed to allocate memory");
          a2 = 12;
          goto LABEL_12;
        }

        phOsalNfc_SetMemory();
        phOsalNfc_MemCopy();
        v8 = *(a3 + 4);
        *(a1 + 328) = v8;
        *(v6 + 208) = *(a1 + 320);
        *(v6 + 216) = v8;
        sub_297E4E0B0(1, a1 + 9792, 4, 4u, "phLibNfc_GetAssertDbgLogApiProc: Operation success");
      }

      a2 = 0;
    }

    else
    {
      sub_297E4E0B0(1, a1 + 9792, 4, 1u, "phLibNfc_GetAssertDbgLogApiProc: operation failed");
    }
  }

  else
  {
    sub_297E4E0B0(2, 0, 4, 1u, "phLibNfc_GetAssertDbgLogApiProc: Libnfc Context is Invalid");
    a2 = 255;
  }

LABEL_12:
  sub_297E4DFAC(2, a1, 4, 5u, "phLibNfc_GetAssertDbgLogApiProc");
  return a2;
}

uint64_t sub_297EFEBF4(uint64_t a1, uint64_t a2)
{
  sub_297E4E1B4(2, a1, 4, 5u, "phLibNfc_GetClrAssertComplete");
  if (a1)
  {
    if (a2)
    {
      sub_297E4E0B0(1, a1 + 9792, 4, 1u, "phLibNfc_GetClrAssertComplete: Failed");
      v4 = 119;
    }

    else
    {
      v4 = 118;
    }

    v5 = sub_297E4F450(*(a1 + 9784), v4, a2, a1 + 8, 0);
    if (*(a1 + 320))
    {
      phOsalNfc_FreeMemory();
      *(a1 + 320) = 0;
      *(a1 + 328) = 0;
    }

    if (*(a1 + 288))
    {
      phOsalNfc_FreeMemory();
      *(a1 + 288) = 0;
      *(a1 + 296) = 0;
    }

    if (*(a1 + 304))
    {
      phOsalNfc_FreeMemory();
      *(a1 + 304) = 0;
      *(a1 + 312) = 0;
    }
  }

  else
  {
    sub_297E4E0B0(2, 0, 4, 1u, "phLibNfc_GetClrAssertComplete: Invalid LibNfc Ctx");
    v5 = 255;
  }

  sub_297E4DFAC(2, a1, 4, 5u, "phLibNfc_GetClrAssertComplete");
  return v5;
}

uint64_t sub_297EFED0C(uint64_t a1, uint64_t a2, _BYTE *a3, uint64_t a4)
{
  v4 = a4;
  sub_297E4E1B4(2, a1, 3, 5u, "phNciNfc_RdrMgmtInit");
  if (!a2 || !a1 || !a3)
  {
    sub_297E4E0B0(2, a1, 3, 4u, " Invalid Param(s)..");
    v9 = 1;
    goto LABEL_15;
  }

  if (v4 > 0xA)
  {
    if (*(a1 + 4800) || (Memory_Typed = phOsalNfc_GetMemory_Typed(), (*(a1 + 4800) = Memory_Typed) != 0))
    {
      phOsalNfc_SetMemory();
      if (!sub_297EFEEA0(a1, a2, a3, v4))
      {
        *(a1 + 4552) = a2;
        if (!sub_297E6E69C(a1))
        {
          v9 = 0;
          goto LABEL_15;
        }
      }

      goto LABEL_12;
    }

    v8 = "phNciNfc_RdrMgmtInit:pRdrDataXchgSequence pointer MemAlloc Failed..";
  }

  else
  {
    v8 = "phNciNfc_RdrMgmtInit:Intf Activated Payload Incomplete..";
  }

  sub_297E4E0B0(1, a1 + 6524, 3, 4u, v8);
LABEL_12:
  if (*(a1 + 4800))
  {
    sub_297E4E0B0(1, a1 + 6524, 3, 4u, "phNciNfc_RdrMgmtInit:Freeing pRdrDataXchgSequence Memory..");
    phOsalNfc_FreeMemory();
    *(a1 + 4800) = 0;
  }

  v9 = 188;
LABEL_15:
  sub_297E934F4(a1, a2);
  sub_297E4DFAC(2, a1, 3, 5u, "phNciNfc_RdrMgmtInit");
  return v9;
}

uint64_t sub_297EFEEA0(uint64_t a1, uint64_t a2, _BYTE *a3, int a4)
{
  sub_297E4E1B4(2, a1, 3, 5u, "phNciNfc_UpdateRemDevInfo");
  if (a1 && a2 && a3 && a4)
  {
    *(a2 + 8) = *a3;
    v8 = a3[1];
    *(a2 + 12) = v8;
    if (v8)
    {
      *(a2 + 16) = a3[2];
      v9 = a3[3];
      *(a2 + 20) = v9;
      *(a2 + 24) = a3[4];
      *(a2 + 25) = a3[5];
      v10 = a3[6];
      *(a2 + 26) = v10;
      v11 = &a3[v10];
      *(a2 + 28) = v11[7];
      *(a2 + 32) = v11[8];
      *(a2 + 33) = v11[9];
      if (v9 > 1)
      {
        if (v9 <= 0xC)
        {
          if (((1 << v9) & 0x1C08) != 0)
          {
LABEL_9:
            v12 = sub_297E76E28(a1, a2, a3, a4);
LABEL_20:
            v13 = v12;
            goto LABEL_21;
          }

          if (((1 << v9) & 0x24) != 0)
          {
            v12 = sub_297E9ABE8(a1, a2, a3, a4);
            goto LABEL_20;
          }

          if (v9 == 6)
          {
            v12 = sub_297E9FC28(a1, a2, a3, a4);
            goto LABEL_20;
          }
        }

        if (v9 != 112)
        {
          sub_297E4E0B0(1, a1 + 6524, 3, 1u, "Rf Technology and mode not supported");
          v13 = 255;
          goto LABEL_21;
        }

        v12 = sub_297E77344(a1, a2, a3, a4);
        goto LABEL_20;
      }

      if (v9)
      {
        v12 = sub_297E9618C(a1, a2, a3, a4);
        goto LABEL_20;
      }

      goto LABEL_9;
    }

    sub_297E4E0B0(1, a1 + 6524, 3, 2u, "Interface is NFCEE Direct RF,subsequent payload contents ignored..");
    v13 = 0;
  }

  else
  {
    v13 = 1;
    sub_297E4E0B0(2, a1, 3, 1u, " Invalid Param(s)..");
  }

LABEL_21:
  sub_297E4DFAC(2, a1, 3, 5u, "phNciNfc_UpdateRemDevInfo");
  return v13;
}

uint64_t sub_297EFF0B0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  sub_297E4E1B4(2, a1, 3, 5u, "phNciNfc_RdrMgmtXchgData");
  if (a1)
  {
    if (!a2)
    {
      v10 = " Invalid Device Handle Param..";
      goto LABEL_17;
    }

    if (*(a3 + 16) && *(a3 + 24))
    {
      if (*(a3 + 32) && *(a3 + 40) || *a3 == 4)
      {
        if (a4 && a5)
        {
          if (*(a1 + 4552) != a2)
          {
            v10 = " Device Handle not Valid..";
LABEL_17:
            sub_297E4E0B0(1, a1 + 6524, 3, 4u, v10);
            v11 = 6;
            goto LABEL_18;
          }

          v15 = *(a1 + 4800);
          if (!v15)
          {
            v11 = 255;
            goto LABEL_18;
          }

          *(a1 + 4560) = *a3;
          *(a1 + 4564) = *(a3 + 4);
          *(a1 + 4576) = *(a3 + 16);
          *(a1 + 4592) = *(a3 + 32);
          *(a1 + 4566) = *(a3 + 6);
          *(a1 + 4608) = *(a3 + 48);
          *(a1 + 4616) = a4;
          *(a1 + 4624) = a5;
          *(a1 + 3776) = v15;
          *(a1 + 3976) = 0;
          *(a1 + 3977) = sub_297E577AC(a1, v15);
          v11 = sub_297EFF2DC(a1, 0, 0);
          sub_297E50DB0(1, a1 + 6524, 3, 4u, "RdrDataXchgSeq status received is..");
          if (v11 == 13)
          {
            *(a1 + 6483) = 1;
            goto LABEL_18;
          }

          v12 = "Data Exchange Request Failed..";
          v13 = a1 + 6524;
          goto LABEL_15;
        }

        v12 = "Invalid Upper layer inputs..";
      }

      else
      {
        v12 = "phNciNfc_RdrMgmtXchgData:Invalid Receive Buff Params..";
      }
    }

    else
    {
      v12 = " Invalid Send Buff Params..";
    }

    v11 = 1;
    v13 = a1 + 6524;
LABEL_15:
    sub_297E4E0B0(1, v13, 3, 4u, v12);
    goto LABEL_18;
  }

  sub_297E4E0B0(2, 0, 3, 4u, " Invalid Context Param..");
  v11 = 1;
LABEL_18:
  sub_297E4DFAC(2, a1, 3, 5u, "phNciNfc_RdrMgmtXchgData");
  return v11;
}

uint64_t sub_297EFF2DC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  sub_297E4E1B4(2, a1, 3, 5u, "phNciNfc_RdrDataXchgSequence");
  if (a1 && a2)
  {
    *(a1 + 3800) = *(a2 + 8);
    *(a1 + 3808) = *(a2 + 16);
  }

  v6 = sub_297E5783C(a1, a3);
  sub_297E4DFAC(2, a1, 3, 5u, "phNciNfc_RdrDataXchgSequence");
  return v6;
}

uint64_t sub_297EFF370(uint64_t a1)
{
  sub_297E4E1B4(2, a1, 3, 5u, "phNciNfc_RdrMgmtRelease");
  if (a1)
  {
    if (*(a1 + 4800))
    {
      sub_297E4E0B0(1, a1 + 6524, 3, 4u, "phNciNfc_RdrMgmtRelease:Freeing phNciNfc_RdrMgmtXchgData Memory..");
      phOsalNfc_FreeMemory();
      v2 = 0;
      *(a1 + 4800) = 0;
    }

    else
    {
      v2 = 0;
    }
  }

  else
  {
    sub_297E4E0B0(2, 0, 3, 4u, " Invalid Context Param..");
    v2 = 1;
  }

  sub_297E4DFAC(2, a1, 3, 5u, "phNciNfc_RdrMgmtRelease");
  return v2;
}

uint64_t sub_297EFF438(uint64_t a1, uint64_t a2)
{
  sub_297E4E1B4(2, a1, 3, 5u, "phNciNfc_CompleteDataXchgSequence");
  if (a1)
  {
    *(a1 + 6676) = 0;
    *(a1 + 6672) = 0;
    *(a1 + 4776) = 0;
    if (*(a1 + 4616))
    {
      sub_297E50DB0(1, a1 + 6524, 3, 4u, "Status received is...");
      if (!a2)
      {
        goto LABEL_7;
      }

      if (*(a1 + 4640))
      {
        phOsalNfc_FreeMemory();
        *(a1 + 4640) = 0;
        *(a1 + 4648) = 0;
      }

      if (a2 != 185)
      {
        sub_297E4E0B0(1, a1 + 6524, 3, 4u, "Resetting received length to 0 for this Failed Scenario!!");
        *(a1 + 4600) = 0;
        sub_297E4E0B0(1, a1 + 6524, 3, 4u, "Invoking upper layer call back function");
        if (a2 == 44 && *(a1 + 4608) == 1)
        {
          *(a1 + 6497) = 1;
        }
      }

      else
      {
LABEL_7:
        sub_297E4E0B0(1, a1 + 6524, 3, 4u, "Invoking upper layer call back function");
      }

      (*(a1 + 4616))(*(a1 + 4624), a2, a1 + 4592);
    }

    else
    {
      sub_297E4E0B0(1, a1 + 6524, 3, 4u, " Invalid Caller Param(s)..");
      a2 = 255;
    }
  }

  else
  {
    sub_297E4E0B0(2, 0, 3, 4u, " Invalid Context Param..");
    a2 = 1;
  }

  sub_297E4DFAC(2, a1, 3, 5u, "phNciNfc_CompleteDataXchgSequence");
  return a2;
}

uint64_t sub_297EFF5D8(uint64_t a1, _WORD *a2)
{
  sub_297E4E1B4(2, a1, 3, 5u, "phNciNfc_ChkDataRetransmission");
  if (a1 && a2)
  {
    if (*(a1 + 6672) == 1 && *a2 == 181 && *(a1 + 6676) <= 3u && (sub_297E50EBC(1, a1 + 6524, 3, 2u, "phNciNfc_ChkDataRetransmission: Re-transmitting Data pkt Attempt.."), (v4 = *(a1 + 3976)) != 0))
    {
      v5 = 0;
      *a2 = 0;
      *(a1 + 4566) = *(a1 + 6680);
      *(a1 + 3976) = v4 - 1;
      ++*(a1 + 6676);
    }

    else
    {
      v5 = 0;
    }
  }

  else
  {
    v5 = 1;
    sub_297E4E0B0(2, a1, 3, 1u, " phNciNfc_ChkDataRetransmission: Invalid Nci Context or status param");
  }

  sub_297E4DFAC(2, a1, 3, 5u, "phNciNfc_ChkDataRetransmission");
  return v5;
}

uint64_t sub_297EFF6EC(uint64_t a1)
{
  v4 = 0u;
  v5 = 0u;
  sub_297E4E1B4(2, a1, 3, 5u, "phNciNfc_TrigRfOnPropCmd");
  if (a1)
  {
    phOsalNfc_SetMemory();
    *&v4 = 0xF00000001;
    DWORD2(v4) = 40;
    *&v5 = *(a1 + 896);
    DWORD2(v5) = 1;
    v2 = sub_297E57BA8(a1 + 936, &v4, a1 + 3800, 2000, sub_297E5E830, a1);
  }

  else
  {
    v2 = 1;
    sub_297E4E0B0(2, 0, 3, 1u, "Invalid input parameter");
  }

  sub_297E4DFAC(2, a1, 3, 5u, "phNciNfc_TrigRfOnPropCmd");
  return v2;
}

uint64_t sub_297EFF7E4(uint64_t a1, uint64_t a2)
{
  sub_297E4E1B4(2, a1, 3, 5u, "phNciNfc_TrigRfOnPropCmdRsp");
  if (!a1)
  {
    v4 = "phNciNfc_TrigRfOnPropCmdRsp:Trigger RF Field On Ntf Invalid Parameter";
    a2 = 1;
    v6 = 2;
    v5 = 0;
    goto LABEL_5;
  }

  if (!a2)
  {
    if (*(a1 + 3808) == 1)
    {
      v8 = **(a1 + 3800);
      if (v8 <= 2)
      {
        if (!**(a1 + 3800))
        {
          sub_297E4E0B0(1, a1 + 6524, 3, 4u, "phNciNfc_TrigRfOnPropCmdRsp:Trigger RF Field On Ntf command accepted by NFCC");
          a2 = 0;
          goto LABEL_6;
        }

        if (v8 == 1)
        {
          sub_297E4E0B0(1, a1 + 6524, 3, 1u, "phNciNfc_TrigRfOnPropCmdRsp:Trigger RF Field On Ntf command rejected by NFCC");
LABEL_17:
          a2 = 147;
          goto LABEL_6;
        }

LABEL_14:
        a2 = 255;
        goto LABEL_6;
      }

      if (v8 != 3)
      {
        if (v8 == 6)
        {
          goto LABEL_17;
        }

        goto LABEL_14;
      }

      v9 = "phNciNfc_TrigRfOnPropCmdRsp:Trigger RF Field On Ntf command failed by NFCC";
    }

    else
    {
      v9 = "phNciNfc_TrigRfOnPropCmdRsp:Trigger RF Field On Ntf response received with invalid payload length";
    }

    sub_297E4E0B0(1, a1 + 6524, 3, 1u, v9);
    goto LABEL_14;
  }

  v4 = "phNciNfc_TrigRfOnPropCmdRsp:Trigger RF Field On Ntf response received with failure status";
  v5 = a1 + 6524;
  v6 = 1;
LABEL_5:
  sub_297E4E0B0(v6, v5, 3, 1u, v4);
LABEL_6:
  sub_297E4DFAC(2, a1, 3, 5u, "phNciNfc_TrigRfOnPropCmdRsp");
  return a2;
}

uint64_t sub_297EFF948(uint64_t a1)
{
  v4 = 0u;
  v5 = 0u;
  sub_297E4E1B4(2, a1, 3, 5u, "phNciNfc_TurnRfOnOffPropCmd");
  if (a1)
  {
    phOsalNfc_SetMemory();
    *&v4 = 0xF00000001;
    DWORD2(v4) = 51;
    *&v5 = *(a1 + 896);
    DWORD2(v5) = *(a1 + 904);
    v2 = sub_297E57BA8(a1 + 936, &v4, a1 + 3800, 2000, sub_297E5E830, a1);
  }

  else
  {
    v2 = 1;
    sub_297E4E0B0(2, 0, 3, 1u, "Invalid input parameter");
  }

  sub_297E4DFAC(2, a1, 3, 5u, "phNciNfc_TurnRfOnOffPropCmd");
  return v2;
}

uint64_t sub_297EFFA40(uint64_t a1, uint64_t a2)
{
  sub_297E4E1B4(2, a1, 3, 5u, "phNciNfc_TurnRfOnOffPropCmdRsp");
  if (!a1)
  {
    v4 = "Turn RF ON or OFF command Invalid Parameter";
    v5 = 2;
    v6 = 0;
    goto LABEL_11;
  }

  if (!a2)
  {
    if (*(a1 + 3808) == 1)
    {
      v7 = **(a1 + 3800);
      if (v7 == 6)
      {
        v9 = "phNciNfc_TurnRfOnOffPropCmdRsp:Turn RF ON or OFF command Semantic Error";
      }

      else
      {
        if (v7 != 1)
        {
          if (!**(a1 + 3800))
          {
            sub_297E4E0B0(1, a1 + 6524, 3, 4u, "Turn RF ON or OFF command accepted by NFCC");
            a2 = 0;
            goto LABEL_13;
          }

LABEL_12:
          a2 = 255;
          goto LABEL_13;
        }

        v9 = "Turn RF ON or OFF command rejected by NFCC";
      }

      sub_297E4E0B0(1, a1 + 6524, 3, 1u, v9);
      a2 = 147;
      goto LABEL_13;
    }

    v4 = "Turn RF ON or OFF response received with invalid payload length";
    v6 = a1 + 6524;
    v5 = 1;
LABEL_11:
    sub_297E4E0B0(v5, v6, 3, 1u, v4);
    goto LABEL_12;
  }

  sub_297E4E0B0(1, a1 + 6524, 3, 1u, "phNciNfc_TurnRfOnOffPropCmdRsp:Turn RF ON or OFF response received with failure status");
LABEL_13:
  sub_297E4DFAC(2, a1, 3, 5u, "phNciNfc_TurnRfOnOffPropCmdRsp");
  return a2;
}

uint64_t sub_297EFFB8C(uint64_t a1)
{
  v4 = 0u;
  v5 = 0u;
  sub_297E4E1B4(2, a1, 3, 5u, "phNciNfc_AntennaSelfTestPropCmd");
  if (a1)
  {
    phOsalNfc_SetMemory();
    *&v4 = 0xF00000001;
    DWORD2(v4) = 50;
    *&v5 = a1 + 3728;
    DWORD2(v5) = *(a1 + 3738);
    v2 = sub_297E57BA8(a1 + 936, &v4, a1 + 3800, 2000, sub_297E5E830, a1);
  }

  else
  {
    v2 = 1;
    sub_297E4E0B0(2, 0, 3, 1u, "Invalid input parameter");
  }

  sub_297E4DFAC(2, a1, 3, 5u, "phNciNfc_AntennaSelfTestPropCmd");
  return v2;
}

uint64_t sub_297EFFC84(uint64_t a1, uint64_t a2)
{
  sub_297E4E1B4(2, a1, 3, 5u, "phNciNfc_AntennaSelfTestPropRsp");
  sub_297E4DFAC(2, a1, 3, 5u, "phNciNfc_AntennaSelfTestPropRsp");
  return a2;
}

uint64_t sub_297EFFCEC(uint64_t a1, uint64_t a2)
{
  sub_297E4E1B4(2, a1, 3, 5u, "phNciNfc_AntennaSelfTestPropSeqComplete");
  if (a1)
  {
    *(a1 + 3738) = 0;
    sub_297E5B994(a1, a2, a1 + 3800);
  }

  sub_297E4DFAC(2, a1, 3, 5u, "phNciNfc_AntennaSelfTestPropSeqComplete");
  return a2;
}

uint64_t sub_297EFFD64(uint64_t a1)
{
  v4 = 0u;
  v5 = 0u;
  sub_297E4E1B4(2, a1, 3, 5u, "phNciNfc_ChkPresExtnCmd");
  if (a1)
  {
    phOsalNfc_SetMemory();
    *&v4 = 0xF00000001;
    DWORD2(v4) = 17;
    *&v5 = 0;
    DWORD2(v5) = 0;
    v2 = sub_297E57BA8(a1 + 936, &v4, a1 + 3800, 2000, sub_297F00660, a1);
  }

  else
  {
    sub_297E4E0B0(2, 0, 3, 2u, "Invalid input parameter");
    v2 = 1;
  }

  sub_297E4DFAC(2, a1, 3, 5u, "phNciNfc_ChkPresExtnCmd");
  return v2;
}

uint64_t sub_297EFFE54(uint64_t a1, uint64_t a2)
{
  sub_297E4E1B4(2, a1, 3, 5u, "phNciNfc_ChkPresExtnRsp");
  if (!a1)
  {
    a2 = 1;
    goto LABEL_13;
  }

  if (!a2)
  {
    if (*(a1 + 3808) == 1)
    {
      v4 = **(a1 + 3800);
      if (v4 != 6)
      {
        if (v4 == 1)
        {
          sub_297E4E0B0(1, a1 + 6524, 3, 2u, "Presence check extension command rejected by NFCC");
          a2 = 147;
          goto LABEL_13;
        }

        if (!**(a1 + 3800))
        {
          sub_297E4E0B0(1, a1 + 6524, 3, 4u, "Presence check extension command accepted by NFCC");
          a2 = 0;
          goto LABEL_13;
        }

LABEL_12:
        a2 = 255;
        goto LABEL_13;
      }

      v5 = "Presence check extension semantic error received";
    }

    else
    {
      v5 = "Presence check extension response received with invalid payload length";
    }

    sub_297E4E0B0(1, a1 + 6524, 3, 2u, v5);
    goto LABEL_12;
  }

  sub_297E4E0B0(1, a1 + 6524, 3, 2u, "Presence check extension response received with failure status");
LABEL_13:
  sub_297E4DFAC(2, a1, 3, 5u, "phNciNfc_ChkPresExtnRsp");
  return a2;
}

uint64_t sub_297EFFF94(uint64_t a1, uint64_t a2)
{
  v16 = 0;
  v17 = 0;
  sub_297E4E1B4(2, a1, 3, 5u, "phNciNfc_CompleteChkPresExtnSeq");
  if (a1)
  {
    if (!a2)
    {
      v16 = 0xF00000003;
      LODWORD(v17) = 17;
      v4 = sub_297E59AEC(a1 + 936, &v16, sub_297F006F4, a1);
      switch(v4)
      {
        case 255:
          v6 = "Check presence extension notification registration failed!";
          break;
        case 53:
          v6 = "Check presence extension notification already registered";
          break;
        case 0:
          sub_297E4E0B0(1, a1 + 6524, 3, 4u, "Check presence extension notification registered");
          v5 = *(a1 + 4696);
          if (v5 == 0xFFFFFFFFFFFFLL)
          {
            sub_297E4E0B0(1, a1 + 6524, 3, 1u, "Timer Create had failed\n#\n");
LABEL_28:
            sub_297E4E0B0(1, a1 + 6524, 3, 4u, "Waiting for Check presence extension notification...");
            a2 = 0;
            goto LABEL_13;
          }

          v8 = *(a1 + 4552);
          if (v8)
          {
            v9 = *(v8 + 4);
            if ((v9 - 5) < 3)
            {
              goto LABEL_18;
            }

            if (v9 == 16)
            {
              v14 = (1 << (*(v8 + 109) >> 4)) * 302.064897 / 1000.0;
              if (v14 >= 0x54)
              {
                LOWORD(v15) = 19796;
              }

              else
              {
                v15 = 236 * v14;
              }

              if ((v15 & 0xFFFCu) > 0x7CF)
              {
                goto LABEL_25;
              }

LABEL_22:
              v12 = "FWT timeout is less than default, hence using default timeout: ";
LABEL_24:
              sub_297E50EBC(1, a1 + 6524, 3, 4u, v12);
              v5 = *(a1 + 4696);
LABEL_25:
              sub_297E5A304(*(a1 + 6524), v5);
              *(a1 + 6512) = 0;
              v13 = phOsalNfc_Timer_Start();
              if (!v13)
              {
                sub_297E687D8(1, a1 + 6524, *(a1 + 4696), 3, 4u, "phNciNfc_CompleteChkPresExtnSeq");
                *(a1 + 864) = *(a1 + 3424);
                *(a1 + 872) = *(a1 + 3752);
                *(a1 + 3424) = 0;
                sub_297E4E0B0(1, a1 + 6524, 3, 4u, "Chk Pres ntf timer started\n");
                goto LABEL_28;
              }

              a2 = v13;
              sub_297E4E0B0(1, a1 + 6524, 3, 1u, "Chk Pres ntf timer start FAILED\n\n");
              goto LABEL_12;
            }

            if (v9 == 3)
            {
LABEL_18:
              v10 = (1 << (*(v8 + 108) >> 4)) * 302.064897 / 1000.0;
              if (v10 >= 0x54)
              {
                LOWORD(v11) = 19796;
              }

              else
              {
                v11 = 236 * v10;
              }

              if ((v11 & 0xFFFCu) >= 0x7D0)
              {
                goto LABEL_25;
              }

              goto LABEL_22;
            }
          }

          v12 = "Using default timeout: ";
          goto LABEL_24;
        default:
          v6 = "Invalid parameter sent";
          break;
      }

      sub_297E4E0B0(1, a1 + 6524, 3, 4u, v6);
      a2 = 255;
    }

LABEL_12:
    sub_297E5B994(a1, a2, 0);
  }

LABEL_13:
  sub_297E4DFAC(2, a1, 3, 5u, "phNciNfc_CompleteChkPresExtnSeq");
  return a2;
}

uint64_t sub_297F002D0(uint64_t a1)
{
  v4 = 0u;
  v5 = 0u;
  sub_297E4E1B4(2, a1, 3, 5u, "phNciNfc_EnableExtnCmd");
  if (a1)
  {
    phOsalNfc_SetMemory();
    *&v4 = 0xF00000001;
    DWORD2(v4) = 2;
    *&v5 = 0;
    DWORD2(v5) = 0;
    v2 = sub_297E57BA8(a1 + 936, &v4, a1 + 3800, 2000, sub_297E5E830, a1);
  }

  else
  {
    sub_297E4E0B0(2, 0, 3, 2u, "Invalid input parameter");
    v2 = 1;
  }

  sub_297E4DFAC(2, a1, 3, 5u, "phNciNfc_EnableExtnCmd");
  return v2;
}

uint64_t sub_297F003C0(uint64_t a1, uint64_t a2)
{
  sub_297E4E1B4(2, a1, 3, 5u, "phNciNfc_EnableExtnRsp");
  if (!a1)
  {
    a2 = 1;
    goto LABEL_30;
  }

  if (!a2)
  {
    v6 = *(a1 + 3808);
    if (v6 != 1)
    {
      if (v6 == 5)
      {
        v7 = **(a1 + 3800);
        if (v7 <= 2)
        {
          if (!**(a1 + 3800))
          {
            sub_297E4E0B0(1, a1 + 6524, 3, 4u, "Enabling extension command accepted by NFCC");
            a2 = 0;
            goto LABEL_30;
          }

          if (v7 == 1)
          {
            v8 = "Enabling extension command rejected by NFCC";
            v9 = a1 + 6524;
LABEL_27:
            sub_297E4E0B0(1, v9, 3, 2u, v8);
            goto LABEL_28;
          }

LABEL_19:
          a2 = 255;
          goto LABEL_30;
        }

        if (v7 != 3)
        {
          if (v7 == 6)
          {
LABEL_28:
            a2 = 147;
            goto LABEL_30;
          }

          goto LABEL_19;
        }

        v11 = "Enabling extension command failed by NFCC";
      }

      else
      {
        v11 = "Enabling extension response received with invalid payload length";
      }

      sub_297E4E0B0(1, a1 + 6524, 3, 2u, v11);
      goto LABEL_19;
    }

    sub_297E4E0B0(1, a1 + 6524, 3, 2u, "Enabling extension failed!");
    v10 = **(a1 + 3800);
    a2 = 255;
    if (v10 <= 2)
    {
      if (**(a1 + 3800))
      {
        if (v10 != 1)
        {
          goto LABEL_30;
        }

        v8 = "Enabling extension command rejected by NFCC";
LABEL_26:
        v9 = a1 + 6524;
        goto LABEL_27;
      }

      v4 = "Information field missing in Response Payload field";
    }

    else
    {
      switch(v10)
      {
        case 3u:
          v4 = "Enabling extension command failed by NFCC";
          break;
        case 5u:
          v4 = "Enabling extension command Syntax error received";
          break;
        case 6u:
          v8 = "Enabling extension command Semantic error received";
          goto LABEL_26;
        default:
          goto LABEL_30;
      }
    }

    v5 = a1 + 6524;
    goto LABEL_4;
  }

  v4 = "phNciNfc_EnableExtnRsp:Iso-Dep presence check response received with failure status";
  v5 = a1 + 6524;
LABEL_4:
  sub_297E4E0B0(1, v5, 3, 2u, v4);
LABEL_30:
  sub_297E4DFAC(2, a1, 3, 5u, "phNciNfc_EnableExtnRsp");
  return a2;
}

uint64_t sub_297F005C0(uint64_t a1, uint64_t a2)
{
  sub_297E4E1B4(2, a1, 3, 5u, "phNciNfc_CompleteEnableExtnSeq");
  if (a1)
  {
    *(a1 + 6728) = -1;
    if (a2 == 44)
    {
      *(a1 + 6728) = 44;
      v4 = a1 + 6728;
      v5 = a1;
      v6 = 0;
    }

    else
    {
      v4 = *(a1 + 3800);
      v5 = a1;
      v6 = a2;
    }

    sub_297E5B994(v5, v6, v4);
  }

  sub_297E4DFAC(2, a1, 3, 5u, "phNciNfc_CompleteEnableExtnSeq");
  return a2;
}

uint64_t sub_297F00660(uint64_t a1, uint64_t a2, uint64_t a3)
{
  sub_297E4E1B4(2, a1, 3, 5u, "phNciNfc_IsoDepPresChkSequence");
  if (a1 && a2)
  {
    *(a1 + 3800) = *(a2 + 8);
    *(a1 + 3808) = *(a2 + 16);
  }

  v6 = sub_297E5783C(a1, a3);
  sub_297E4DFAC(2, a1, 3, 5u, "phNciNfc_IsoDepPresChkSequence");
  return v6;
}

uint64_t sub_297F006F4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v11 = 0;
  v12 = 0;
  v13 = 0;
  sub_297E4E1B4(2, a1, 3, 5u, "phNciNfc_ChkPresExtnNtfCb");
  if (!a1 || !a2)
  {
    sub_297E4E0B0(2, a1, 3, 1u, "Proc pres chk : Invalid input parameters");
    goto LABEL_24;
  }

  if (a3)
  {
    v6 = "phNciNfc_ChkPresExtnNtfCb:Proc Iso-Dep pres chk ntf: Reception failed";
  }

  else
  {
    phOsalNfc_Timer_Stop();
    *(a1 + 6512) = 0;
    sub_297E687D8(1, a1 + 6524, *(a1 + 4696), 3, 4u, "phNciNfc_ChkPresExtnNtfCb");
    if (*(a2 + 16) == 1)
    {
      if (**(a2 + 8) == 1)
      {
        sub_297E4E0B0(1, a1 + 6524, 3, 4u, "phNciNfc_ChkPresExtnNtfCb:Target is still in the field");
        a3 = 0;
        goto LABEL_14;
      }

      if (!**(a2 + 8))
      {
        sub_297E4E0B0(1, a1 + 6524, 3, 4u, "phNciNfc_ChkPresExtnNtfCb:Target is not in the field: Target Lost!");
        a3 = 146;
        goto LABEL_14;
      }

      v6 = "ChkPresence Extn: invalid ntf";
    }

    else
    {
      v6 = "Proc Iso-Dep pres chk ntf: Invalid length of payload";
    }
  }

  sub_297E4E0B0(1, a1 + 6524, 3, 1u, v6);
  a3 = 255;
LABEL_14:
  *(&v11 + 1) = 4367;
  v12 = a1;
  v13 = sub_297F006F4;
  v7 = sub_297E75DFC(a1 + 936, &v11, 3);
  switch(v7)
  {
    case 255:
      v8 = "De-register pres chk extension ntf call back failed!";
      break;
    case 52:
      v8 = "Pres chk extension ntf call back not registered!";
      break;
    case 0:
      sub_297E4E0B0(1, a1 + 6524, 3, 4u, "De-register pres chk extension ntf call back success");
      goto LABEL_22;
    default:
      v8 = "Invalid parameter passed (phNciNfc_ChkPresExtnNtfCb)!";
      break;
  }

  sub_297E4E0B0(1, a1 + 6524, 3, 1u, v8);
LABEL_22:
  v9 = *(a1 + 864);
  if (v9)
  {
    *(a1 + 864) = 0;
    v9(*(a1 + 872), a3, 0);
  }

LABEL_24:
  sub_297E4DFAC(2, a1, 3, 5u, "phNciNfc_ChkPresExtnNtfCb");
  return a3;
}

uint64_t sub_297F0092C(uint64_t a1, uint64_t a2)
{
  memset(v8, 0, sizeof(v8));
  result = sub_297E4E1B4(2, a2, 3, 5u, "phNciNfc_ChkPresExtnNtfTimeoutHandler");
  if (a2)
  {
    v5 = 0;
    v6 = 0;
    do
    {
      v7 = *(&unk_2A18BDDC0 + 14 * v6 + 4);
      if (v5)
      {
        break;
      }

      v5 = 1;
      v6 = 1;
    }

    while (v7 != a2);
    if (v7 == a2)
    {
      if (!*(a2 + 6512))
      {
        sub_297E5A304(*(a2 + 6524), *(a2 + 4696));
        if (!phOsalNfc_Timer_Start())
        {
          result = sub_297E4E0B0(1, a2 + 6524, 3, 4u, "Chk Pres ntf timer restarted for extended time\n");
          *(a2 + 6512) = 1;
          return result;
        }

        sub_297E4E0B0(1, a2 + 6524, 3, 1u, "Chk Pres ntf timer failed to start for extended time\n\n");
      }

      sub_297E687D8(2, a2, a1, 3, 4u, "phNciNfc_ChkPresExtnNtfTimeoutHandler");
      phOsalNfc_Timer_Stop();
      *(a2 + 6512) = 0;
      sub_297F006F4(a2, v8, 255);
      return sub_297E4DFAC(2, a2, 3, 5u, "phNciNfc_ChkPresExtnNtfTimeoutHandler");
    }
  }

  return result;
}

uint64_t sub_297F00AB4(uint64_t a1, _DWORD *a2, uint64_t a3, uint64_t a4)
{
  v16 = 0;
  v15 = 0u;
  memset(v14, 0, sizeof(v14));
  sub_297E4E1B4(3, a1, 3, 5u, "phNciNfc_CoreIfTxOnly");
  if (!a1)
  {
    goto LABEL_6;
  }

  v8 = 0;
  v9 = 0;
  do
  {
    v10 = *(&unk_2A18BDDC0 + 14 * v9 + 5);
    if (v8)
    {
      break;
    }

    v8 = 1;
    v9 = 1;
  }

  while (v10 != a1);
  if (v10 == a1)
  {
    v11 = 1;
    if (a3)
    {
      if (a2)
      {
        v13 = *a1;
        if (*a1)
        {
          BYTE14(v15) = 1;
          phOsalNfc_MemCopy();
          *(a1 + 616) = 0;
          if (*a2 == 1)
          {
            v11 = sub_297E57CC8(v13, 2, v14, a3, a4);
            *(v13 + 5430) = 1;
          }

          else
          {
            *(v14 + 4) = 0;
            v11 = sub_297E57CC8(v13, 0, v14, a3, a4);
          }
        }
      }
    }
  }

  else
  {
LABEL_6:
    v11 = 1;
  }

  sub_297E4DFAC(3, a1, 3, 5u, "phNciNfc_CoreIfTxOnly");
  return v11;
}

uint64_t sub_297F00C28(uint64_t a1, unsigned int *a2, uint64_t a3)
{
  v10[0] = 0;
  v10[1] = 0;
  v11 = 0;
  sub_297E4E1B4(3, a1, 3, 5u, "phNciNfc_CoreIfUnRegRspNtf");
  v6 = 1;
  if (a1 && a2)
  {
    v11 = a3;
    v7 = *a2;
    if (v7 == 3 || v7 == 2)
    {
      v8 = a2[2];
      BYTE1(v10[0]) = a2[1];
      BYTE2(v10[0]) = v8;
      goto LABEL_8;
    }

    if (!v7)
    {
      BYTE3(v10[0]) = *(a2 + 12);
LABEL_8:
      v6 = sub_297E75DFC(a1, v10, v7);
    }
  }

  sub_297E4DFAC(3, a1, 3, 5u, "phNciNfc_CoreIfUnRegRspNtf");
  return v6;
}

uint64_t sub_297F00CF4(uint64_t a1, char a2, char a3)
{
  sub_297E4E1B4(3, a1, 3, 5u, "phNciNfc_CoreIfSetInitialCredit");
  if (a1)
  {
    v6 = 0;
    *(a1 + 961) = a2;
    *(a1 + 960) = a3;
  }

  else
  {
    v6 = 1;
  }

  sub_297E4DFAC(3, a1, 3, 5u, "phNciNfc_CoreIfSetInitialCredit");
  return v6;
}

uint64_t sub_297F00D78(uint64_t a1, char a2)
{
  sub_297E4E1B4(3, a1, 3, 5u, "phNciNfc_CoreIfSetMaxCtrlPacketSize");
  if (a1)
  {
    v4 = 0;
    *(a1 + 624) = a2;
  }

  else
  {
    v4 = 1;
  }

  sub_297E4DFAC(3, a1, 3, 5u, "phNciNfc_CoreIfSetMaxCtrlPacketSize");
  return v4;
}

uint64_t sub_297F00DF4(uint64_t a1, int a2, int a3)
{
  sub_297E4E1B4(3, a1, 3, 5u, "phNciNfc_CoreIfSetMaxDataPacketSize");
  v6 = 1;
  if (a1 && a3)
  {
    if (*(a1 + 961) == a2)
    {
      v6 = 0;
      *(a1 + 962) = a3;
    }

    else
    {
      v6 = 3;
    }
  }

  sub_297E4DFAC(3, a1, 3, 5u, "phNciNfc_CoreIfSetMaxDataPacketSize");
  return v6;
}

uint64_t sub_297F00E88(uint64_t a1)
{
  sub_297E4E1B4(3, a1, 3, 5u, "phNciNfc_CoreIfFlushDataOnLogChnlZero");
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
      sub_297E4E0B0(1, a1 + 2460, 3, 4u, "Flushing data on ConnID Zero if already present");
      if (sub_297E52660(a1) != 1)
      {
        v5 = 0;
        v6 = a1 + 928;
        while (1)
        {
          v7 = *(v6 + v5);
          if (v7)
          {
            if ((*v7 & 0xEF) == 0)
            {
              break;
            }
          }

          v5 += 8;
          if (v5 == 24)
          {
            goto LABEL_18;
          }
        }

        if (v7 == a1 + 640)
        {
          *(v6 + v5) = 0;
          *(a1 + 904) = 0;
          *(a1 + 900) = 0;
        }

        else
        {
          for (i = *(v7 + 264); i; i = *(v9 + 264))
          {
            v9 = i;
            phOsalNfc_FreeMemory();
          }

          phOsalNfc_FreeMemory();
          *(v6 + v5) = 0;
        }
      }
    }
  }

LABEL_18:

  return sub_297E4DFAC(3, a1, 3, 5u, "phNciNfc_CoreIfFlushDataOnLogChnlZero");
}

uint64_t sub_297F00FE8(uint64_t a1)
{
  v4 = 0u;
  v5 = 0u;
  sub_297E4E1B4(2, a1, 3, 5u, "phNciNfc_SetConfigSigned");
  if (a1)
  {
    phOsalNfc_SetMemory();
    *&v4 = 0xF00000001;
    DWORD2(v4) = 44;
    *&v5 = *(a1 + 896);
    DWORD2(v5) = *(a1 + 904);
    v2 = sub_297E57BA8(a1 + 936, &v4, a1 + 3800, 2000, sub_297E5DF3C, a1);
  }

  else
  {
    sub_297E4E0B0(2, 0, 3, 2u, "Invalid input parameter");
    v2 = 255;
  }

  sub_297E4DFAC(2, a1, 3, 5u, "phNciNfc_SetConfigSigned");
  return v2;
}

uint64_t sub_297F010E0(uint64_t a1)
{
  sub_297E4E1B4(2, a1, 3, 5u, "phNciNfc_SetConfSignedRsp");
  if (!a1 || (v2 = *(a1 + 3800)) == 0)
  {
    v5 = 1;
    goto LABEL_21;
  }

  if (*(a1 + 3808) < 2u)
  {
LABEL_20:
    v5 = 255;
    goto LABEL_21;
  }

  v3 = *v2;
  if (v3 <= 4)
  {
    if (!v3)
    {
      sub_297E4E0B0(1, a1 + 6524, 3, 4u, "Rf Signed Config response success");
      v5 = 0;
      goto LABEL_21;
    }

    if (v3 != 1)
    {
LABEL_19:
      sub_297E4E0B0(1, a1 + 6524, 3, 2u, "Rf Signed Config response failed!");
      goto LABEL_20;
    }
  }

  else if (v3 != 5 && v3 != 9)
  {
    if (v3 == 242)
    {
      sub_297E4E0B0(1, a1 + 6524, 3, 2u, "Rf Signed Config response signature error");
      v5 = 130;
      goto LABEL_21;
    }

    goto LABEL_19;
  }

  v6 = *(a1 + 896);
  if (v6)
  {
    v7 = *(a1 + 904);
    if (v7 >= 2)
    {
      sub_297E4E880(1, a1 + 6524, 3, 2u, "Rf Signed Config error, Tag ID (All):", v6 + 1, v7 - 1);
    }
  }

  v5 = 147;
LABEL_21:
  sub_297E4DFAC(2, a1, 3, 5u, "phNciNfc_SetConfSignedRsp");
  return v5;
}

uint64_t sub_297F01240(uint64_t a1)
{
  v4 = 0u;
  v5 = 0u;
  sub_297E4E1B4(2, a1, 3, 5u, "phNciNfc_GetRtngConfig");
  if (a1)
  {
    phOsalNfc_SetMemory();
    *&v4 = 0x100000001;
    DWORD2(v4) = 2;
    *&v5 = 0;
    DWORD2(v5) = 0;
    v2 = sub_297E57BA8(a1 + 936, &v4, a1 + 3800, 2000, sub_297F01AB0, a1);
  }

  else
  {
    sub_297E4E0B0(2, 0, 3, 2u, "Invalid input parameter");
    v2 = 1;
  }

  sub_297E4DFAC(2, a1, 3, 5u, "phNciNfc_GetRtngConfig");
  return v2;
}

uint64_t sub_297F0132C(uint64_t a1, uint64_t a2)
{
  v9 = 0;
  v10 = 0;
  sub_297E4E1B4(2, a1, 3, 5u, "phNciNfc_CompleteGetRtngConfig");
  if (a1)
  {
    if (!a2)
    {
      v9 = 0x100000003;
      LODWORD(v10) = 2;
      v4 = sub_297E59AEC(a1 + 936, &v9, sub_297F03B88, a1);
      switch(v4)
      {
        case 255:
          v7 = "Get Listen mode routing notification registration failed!";
          break;
        case 53:
          v7 = "Get Listen mode routing notification already registered";
          break;
        case 0:
          sub_297E4E0B0(1, a1 + 6524, 3, 4u, "Get Listen mode routing notification registered");
          *(a1 + 912) = 0;
          *(a1 + 914) = 0;
          *(a1 + 920) = 0;
          *(a1 + 928) = 0;
          v5 = *(a1 + 4696);
          if (v5 == 0xFFFFFFFFFFFFLL)
          {
            a2 = 255;
            v6 = "Timer Create had failed\n#\n";
          }

          else
          {
            sub_297E5A304(*(a1 + 6524), v5);
            *(a1 + 6512) = 0;
            a2 = phOsalNfc_Timer_Start();
            if (!a2)
            {
              sub_297E687D8(1, a1 + 6524, *(a1 + 4696), 3, 4u, "phNciNfc_CompleteGetRtngConfig");
              sub_297E4E0B0(1, a1 + 6524, 3, 4u, "Get Listen Mode Ntf Handler timer started\n");
              sub_297E4E0B0(1, a1 + 6524, 3, 4u, "Waiting for Get listen mode routing notification...");
              goto LABEL_16;
            }

            v6 = "Get Listen Mode Ntf Handler timer start FAILED\n\n";
          }

          sub_297E4E0B0(1, a1 + 6524, 3, 1u, v6);
          sub_297F00C28(a1 + 936, &v9, sub_297F03B88);
          goto LABEL_15;
        default:
          v7 = "Invalid parameter sent";
          break;
      }

      sub_297E4E0B0(1, a1 + 6524, 3, 1u, v7);
      a2 = 255;
    }

LABEL_15:
    sub_297E5B994(a1, a2, 0);
  }

LABEL_16:
  sub_297E4DFAC(2, a1, 3, 5u, "phNciNfc_CompleteGetRtngConfig");
  return a2;
}

uint64_t sub_297F01568(uint64_t a1)
{
  v4 = 0u;
  v5 = 0u;
  sub_297E4E1B4(2, a1, 3, 5u, "phNciNfc_SetRtngConfig");
  if (a1)
  {
    phOsalNfc_SetMemory();
    *&v4 = 0x100000001;
    DWORD2(v4) = 1;
    *&v5 = *(a1 + 896);
    DWORD2(v5) = *(a1 + 904);
    v2 = sub_297E57BA8(a1 + 936, &v4, a1 + 3800, 2000, sub_297F01A1C, a1);
  }

  else
  {
    sub_297E4E0B0(2, 0, 3, 2u, "Invalid input parameter");
    v2 = 1;
  }

  sub_297E4DFAC(2, a1, 3, 5u, "phNciNfc_SetRtngConfig");
  return v2;
}

uint64_t sub_297F0165C(uint64_t a1, uint64_t a2)
{
  sub_297E4E1B4(2, a1, 3, 5u, "phNciNfc_CompleteSetRtngConfig");
  if (a1)
  {
    if (*(a1 + 896))
    {
      phOsalNfc_FreeMemory();
      *(a1 + 896) = 0;
      *(a1 + 904) = 0;
    }

    if (!*(a1 + 912))
    {
      *(a1 + 913) = 0;
      *(a1 + 928) = 0;
    }

    sub_297E5B994(a1, a2, 0);
  }

  sub_297E4DFAC(2, a1, 3, 5u, "phNciNfc_CompleteSetRtngConfig");
  return a2;
}

uint64_t sub_297F016FC(uint64_t a1, uint64_t a2)
{
  sub_297E4E1B4(2, a1, 3, 5u, "phNciNfc_GetConfigRawRsp");
  sub_297E4DFAC(2, a1, 3, 5u, "phNciNfc_GetConfigRawRsp");
  return a2;
}

uint64_t sub_297F01764(uint64_t a1, uint64_t a2)
{
  sub_297E4E1B4(2, a1, 3, 5u, "phNciNfc_CompleteGetConfigRaw");
  if (a1)
  {
    phOsalNfc_SetMemory();
    if (*(a1 + 896))
    {
      phOsalNfc_FreeMemory();
      *(a1 + 896) = 0;
      *(a1 + 904) = 0;
    }

    if (!a2)
    {
      v4 = *(a1 + 3808);
      *(a1 + 6732) = v4;
      if (v4)
      {
        phOsalNfc_MemCopy();
      }
    }

    sub_297E5B994(a1, a2, a1 + 6732);
  }

  sub_297E4DFAC(2, a1, 3, 5u, "phNciNfc_CompleteGetConfigRaw");
  return a2;
}

uint64_t sub_297F01838(uint64_t a1)
{
  v4 = 0u;
  v5 = 0u;
  sub_297E4E1B4(2, a1, 3, 5u, "phNciNfc_GetTxValue");
  if (a1)
  {
    phOsalNfc_SetMemory();
    *&v4 = 0xF00000001;
    DWORD2(v4) = 20;
    *&v5 = *(a1 + 896);
    DWORD2(v5) = *(a1 + 904);
    v2 = sub_297E57BA8(a1 + 936, &v4, a1 + 3800, 2000, sub_297E6147C, a1);
  }

  else
  {
    sub_297E4E0B0(2, 0, 3, 1u, "Invalid input parameter (phNciNfc_SetConfig)\n");
    v2 = 255;
  }

  sub_297E4DFAC(2, a1, 3, 5u, "phNciNfc_GetTxValue");
  return v2;
}

uint64_t sub_297F01930(uint64_t a1, int a2)
{
  LODWORD(v2) = a2;
  sub_297E4E1B4(2, a1, 3, 5u, "phNciNfc_GetTxValRsp");
  if (a1)
  {
    if (!v2)
    {
      v4 = *(a1 + 3800);
      if (v4)
      {
        v5 = *v4;
        LOWORD(v2) = 255;
        if (v5 > 4)
        {
          if (v5 == 5 || v5 == 9)
          {
LABEL_13:
            sub_297E4E0B0(1, a1 + 6524, 3, 2u, "GetTransition reg resp failed");
            LOWORD(v2) = 147;
          }
        }

        else
        {
          if (*v4)
          {
            if (v5 != 1)
            {
              goto LABEL_14;
            }

            goto LABEL_13;
          }

          v8 = v4[1] - 1;
          if (v8 >= 4u)
          {
            LOWORD(v2) = 255;
          }

          else
          {
            v2 = 0xFF00000000uLL >> (16 * (v8 & 0xFu));
          }
        }
      }
    }
  }

LABEL_14:
  sub_297E4DFAC(2, a1, 3, 5u, "phNciNfc_GetTxValRsp");
  return v2;
}

uint64_t sub_297F01A1C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  sub_297E4E1B4(2, a1, 3, 5u, "phNciNfc_SetRtngConfigSequence");
  if (a1 && a2)
  {
    *(a1 + 3800) = *(a2 + 8);
    *(a1 + 3808) = *(a2 + 16);
  }

  v6 = sub_297E5783C(a1, a3);
  sub_297E4DFAC(2, a1, 3, 5u, "phNciNfc_SetRtngConfigSequence");
  return v6;
}

uint64_t sub_297F01AB0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  sub_297E4E1B4(2, a1, 3, 5u, "phNciNfc_GetRtngConfigSequence");
  if (a1 && a2)
  {
    *(a1 + 3800) = *(a2 + 8);
    *(a1 + 3808) = *(a2 + 16);
  }

  v6 = sub_297E5783C(a1, a3);
  sub_297E4DFAC(2, a1, 3, 5u, "phNciNfc_GetRtngConfigSequence");
  return v6;
}

uint64_t sub_297F01B44(uint64_t a1, uint64_t a2, _WORD *a3, _BYTE *a4)
{
  sub_297E4E1B4(2, a1, 3, 5u, "phNciNfc_ValidateLstnIsoDepParams");
  v8 = *a2;
  if (!*a2)
  {
    goto LABEL_17;
  }

  if (v8)
  {
    ++*a4;
    ++*a3;
    LOBYTE(v8) = *a2;
    if ((*a2 & 2) == 0)
    {
      goto LABEL_9;
    }
  }

  else if ((v8 & 2) == 0)
  {
    goto LABEL_9;
  }

  ++*a4;
  v8 = *(a2 + 53) + *a3;
  if (v8 >= 0x10000)
  {
    LOWORD(v8) = 0;
  }

  *a3 = v8;
  LOBYTE(v8) = *a2;
LABEL_9:
  if ((v8 & 4) != 0)
  {
    ++*a4;
    v10 = *(a2 + 102) + *a3;
    if (v10 >= 0x10000)
    {
      LOWORD(v10) = 0;
    }

    *a3 = v10;
    if ((*a2 & 8) == 0)
    {
      goto LABEL_11;
    }

    goto LABEL_15;
  }

  if ((v8 & 8) != 0)
  {
LABEL_15:
    ++*a4;
    if (*(a2 + 103) <= 6u)
    {
      v9 = 0;
      ++*a3;
      goto LABEL_18;
    }

LABEL_17:
    v9 = 1;
    goto LABEL_18;
  }

LABEL_11:
  v9 = 0;
LABEL_18:
  sub_297E4DFAC(2, a1, 3, 5u, "phNciNfc_ValidateLstnIsoDepParams");
  return v9;
}

uint64_t sub_297F01C80(uint64_t a1, unsigned __int8 *a2, _WORD *a3, _BYTE *a4)
{
  sub_297E4E1B4(2, a1, 3, 5u, "phNciNfc_ValidateSysConfigParams");
  if (!*a2)
  {
    goto LABEL_61;
  }

  sub_297F04710(a1, *a2 & 1, 3, a3, a4);
  sub_297E4E1B4(2, a1, 3, 5u, "phNciNfc_ParseSysClkParams");
  v8 = *a2;
  if ((*a2 & 2) != 0)
  {
    ++*a4;
    if (a2[6] >= 3u)
    {
      sub_297F04710(a1, a2[8], 5, a3, a4);
      goto LABEL_57;
    }

    v9 = -2 - *a3;
    if (*a3 == 0xFFFF)
    {
      v9 = 0;
    }

    *a3 = -v9;
    sub_297F04710(a1, a2[8], 5, a3, a4);
    v8 = *a2;
  }

  sub_297F04710(a1, (v8 >> 3) & 1, 2, a3, a4);
  if ((*a2 & 4) == 0)
  {
    goto LABEL_13;
  }

  ++*a4;
  if (!*(a2 + 2) || *(a2 + 3) > 7u)
  {
LABEL_57:
    v20 = "phNciNfc_ParseSysClkParams";
LABEL_60:
    sub_297E4DFAC(2, a1, 3, 5u, v20);
    goto LABEL_61;
  }

  v10 = -2 - *a3;
  if (*a3 == 0xFFFF)
  {
    v10 = 0;
  }

  *a3 = -v10;
LABEL_13:
  sub_297E4DFAC(2, a1, 3, 5u, "phNciNfc_ParseSysClkParams");
  v11 = *a2;
  if ((*a2 & 0x10) != 0)
  {
    ++*a4;
    if (a2[20] > 1u)
    {
      goto LABEL_61;
    }

    v12 = -2 - *a3;
    if (*a3 == 0xFFFF)
    {
      v12 = 0;
    }

    *a3 = -v12;
    v11 = *a2;
  }

  if ((v11 & 0x20) == 0)
  {
    goto LABEL_23;
  }

  ++*a4;
  if (a2[21] > 1u)
  {
LABEL_61:
    v19 = 1;
    goto LABEL_62;
  }

  v13 = -2 - *a3;
  if (*a3 == 0xFFFF)
  {
    v13 = 0;
  }

  *a3 = -v13;
  v11 = *a2;
LABEL_23:
  sub_297F04710(a1, (v11 >> 6) & 1, 2, a3, a4);
  sub_297F04710(a1, *a2 >> 7, 65, a3, a4);
  sub_297F04710(a1, (*a2 >> 8) & 1, 3, a3, a4);
  sub_297F04710(a1, (*a2 >> 9) & 1, 3, a3, a4);
  sub_297F04710(a1, (*a2 >> 10) & 1, 2, a3, a4);
  sub_297F04710(a1, (*a2 >> 11) & 1, 2, a3, a4);
  sub_297E4E1B4(2, a1, 3, 5u, "phNciNfc_ParseSysParams");
  v14 = *a2;
  if ((*a2 & 0x1000) != 0)
  {
    if (a2[102] > 0x1Fu)
    {
      goto LABEL_59;
    }

    ++*a4;
    *a3 += a2[102] + 1;
    v14 = *a2;
  }

  if ((v14 & 0x2000) != 0)
  {
    if (a2[134] > 0xD6u)
    {
      goto LABEL_59;
    }

    ++*a4;
    *a3 += a2[134] + 1;
    v14 = *a2;
  }

  if ((v14 & 0x4000) != 0)
  {
    if ((*(a2 + 88) | 2) != 2)
    {
      goto LABEL_59;
    }

    ++*a4;
    v15 = -2 - *a3;
    if (*a3 == 0xFFFF)
    {
      v15 = 0;
    }

    *a3 = -v15;
    v14 = *a2;
  }

  if ((v14 & 0x8000) == 0)
  {
    goto LABEL_39;
  }

  if (*(a2 + 89) > 0xAu)
  {
LABEL_59:
    v20 = "phNciNfc_ParseSysParams";
    goto LABEL_60;
  }

  ++*a4;
  v16 = -2 - *a3;
  if (*a3 == 0xFFFF)
  {
    v16 = 0;
  }

  *a3 = -v16;
  v14 = *a2;
LABEL_39:
  if ((v14 & 0x10000) != 0)
  {
    ++*a4;
    v17 = -2 - *a3;
    if (*a3 == 0xFFFF)
    {
      v17 = 0;
    }

    *a3 = -v17;
  }

  sub_297E4E1B4(2, a1, 3, 5u, "phNciNfc_ParseSysAssertParams");
  v18 = *a2;
  if ((*a2 & 0x20000) != 0)
  {
    if (a2[365] - 1 > 3)
    {
      goto LABEL_58;
    }

    ++*a4;
    *a3 += a2[365] + 1;
    v18 = *a2;
  }

  if ((v18 & 0x40000) != 0)
  {
    if (a2[462] - 1 > 0x5F)
    {
      goto LABEL_58;
    }

    ++*a4;
    *a3 += a2[462] + 1;
    v18 = *a2;
  }

  if ((v18 & 0x80000) == 0)
  {
    goto LABEL_52;
  }

  if (a2[491] - 1 > 0x1B)
  {
LABEL_58:
    sub_297E4DFAC(2, a1, 3, 5u, "phNciNfc_ParseSysAssertParams");
    goto LABEL_59;
  }

  ++*a4;
  *a3 += a2[491] + 1;
  v18 = *a2;
LABEL_52:
  if ((v18 & 0x100000) != 0)
  {
    if (a2[536] - 1 <= 0x2B)
    {
      ++*a4;
      *a3 += a2[536] + 1;
      goto LABEL_55;
    }

    goto LABEL_58;
  }

LABEL_55:
  sub_297E4DFAC(2, a1, 3, 5u, "phNciNfc_ParseSysAssertParams");
  sub_297E4DFAC(2, a1, 3, 5u, "phNciNfc_ParseSysParams");
  sub_297F04710(a1, (*a2 >> 21) & 1, 2, a3, a4);
  sub_297F04710(a1, (*a2 >> 22) & 1, 7, a3, a4);
  v19 = 0;
LABEL_62:
  sub_297E4DFAC(2, a1, 3, 5u, "phNciNfc_ValidateSysConfigParams");
  return v19;
}

uint64_t sub_297F02204(uint64_t a1, int *a2, _WORD *a3, _BYTE *a4)
{
  sub_297E4E1B4(2, a1, 3, 5u, "phNciNfc_ValidateSwpConfigParams");
  if (*a2)
  {
    if (*a2)
    {
      ++*a4;
      if (*(a2 + 8) - 8 >= 0xFFFFFFF9)
      {
        v8 = 0;
        v9 = -2 - *a3;
        if (*a3 == 0xFFFF)
        {
          v9 = 0;
        }

        *a3 = -v9;
      }

      else
      {
        v8 = 1;
      }

LABEL_10:
      if ((*a2 & 2) != 0)
      {
        ++*a4;
        if (*(a2 + 9) - 8 >= 0xFFFFFFF9)
        {
          v10 = -2 - *a3;
          if (*a3 == 0xFFFF)
          {
            v10 = 0;
          }

          *a3 = -v10;
        }

        else
        {
          v8 = 1;
        }
      }

      if ((*(a2 + 1) & 0x10) != 0)
      {
        ++*a4;
        if (*(a2 + 28) - 101 >= 0xFFFFFF9C)
        {
          v11 = -2 - *a3;
          if (*a3 == 0xFFFF)
          {
            v11 = 0;
          }

          *a3 = -v11;
        }

        else
        {
          v8 = 1;
        }
      }

      if ((*(a2 + 1) & 0x20) != 0)
      {
        ++*a4;
        if (*(a2 + 29) - 104 < 0xFFFFFF99)
        {
LABEL_28:
          v13 = 1;
          goto LABEL_29;
        }

        v12 = -2 - *a3;
        if (*a3 == 0xFFFF)
        {
          v12 = 0;
        }

        *a3 = -v12;
      }

      if (v8 == 1)
      {
        goto LABEL_28;
      }

      v15 = *a2;
      if ((*a2 & 4) != 0)
      {
        ++*a4;
        v18 = -2 - *a3;
        if (*a3 == 0xFFFF)
        {
          v18 = 0;
        }

        *a3 = -v18;
        v15 = *a2;
        if ((*a2 & 8) == 0)
        {
LABEL_32:
          if ((v15 & 0x10) == 0)
          {
            goto LABEL_33;
          }

          goto LABEL_52;
        }
      }

      else if ((v15 & 8) == 0)
      {
        goto LABEL_32;
      }

      ++*a4;
      v19 = -2 - *a3;
      if (*a3 == 0xFFFF)
      {
        v19 = 0;
      }

      *a3 = -v19;
      v15 = *a2;
      if ((*a2 & 0x10) == 0)
      {
LABEL_33:
        if ((v15 & 0x20) == 0)
        {
          goto LABEL_37;
        }

        goto LABEL_34;
      }

LABEL_52:
      ++*a4;
      if (*(a2 + 20) - 2 > 2)
      {
        goto LABEL_28;
      }

      v20 = -2 - *a3;
      if (*a3 == 0xFFFF)
      {
        v20 = 0;
      }

      *a3 = -v20;
      v15 = *a2;
      if ((*a2 & 0x20) == 0)
      {
LABEL_37:
        if ((v15 & 0x40) != 0)
        {
          ++*a4;
          if (*(a2 + 22) > 3u)
          {
            goto LABEL_28;
          }

          v17 = -2 - *a3;
          if (*a3 == 0xFFFF)
          {
            v17 = 0;
          }

          *a3 = -v17;
          v15 = *a2;
        }

        if ((v15 & 0x80) != 0)
        {
          ++*a4;
          v23 = -2 - *a3;
          if (*a3 == 0xFFFF)
          {
            v23 = 0;
          }

          *a3 = -v23;
          v15 = *a2;
          if ((*a2 & 0x100) == 0)
          {
LABEL_44:
            if ((v15 & 0x800000) == 0)
            {
              goto LABEL_69;
            }

LABEL_65:
            ++*a4;
            if (*(a2 + 40) > 2u)
            {
              goto LABEL_28;
            }

            v25 = -2 - *a3;
            if (*a3 == 0xFFFF)
            {
              v25 = 0;
            }

            *a3 = -v25;
LABEL_69:
            v26 = *(a2 + 4);
            if (v26)
            {
              ++*a4;
              v28 = -2 - *a3;
              if (*a3 == 0xFFFF)
              {
                v28 = 0;
              }

              *a3 = -v28;
              v26 = *(a2 + 4);
              if ((v26 & 2) == 0)
              {
LABEL_71:
                if ((v26 & 4) == 0)
                {
                  goto LABEL_72;
                }

                goto LABEL_86;
              }
            }

            else if ((a2[1] & 2) == 0)
            {
              goto LABEL_71;
            }

            ++*a4;
            v29 = -2 - *a3;
            if (*a3 == 0xFFFF)
            {
              v29 = 0;
            }

            *a3 = -v29;
            v26 = *(a2 + 4);
            if ((v26 & 4) == 0)
            {
LABEL_72:
              if ((v26 & 8) == 0)
              {
                goto LABEL_73;
              }

              goto LABEL_89;
            }

LABEL_86:
            ++*a4;
            v30 = -2 - *a3;
            if (*a3 == 0xFFFF)
            {
              v30 = 0;
            }

            *a3 = -v30;
            v26 = *(a2 + 4);
            if ((v26 & 8) == 0)
            {
LABEL_73:
              if ((v26 & 0x10) == 0)
              {
                goto LABEL_74;
              }

              goto LABEL_92;
            }

LABEL_89:
            ++*a4;
            v31 = -2 - *a3;
            if (*a3 == 0xFFFF)
            {
              v31 = 0;
            }

            *a3 = -v31;
            v26 = *(a2 + 4);
            if ((v26 & 0x10) == 0)
            {
LABEL_74:
              if ((v26 & 0x20) == 0)
              {
LABEL_78:
                if ((*(a2 + 3) & 1) == 0)
                {
                  v13 = 0;
                  goto LABEL_29;
                }

                ++*a4;
                v21 = *a3;
                v22 = 65534;
                goto LABEL_97;
              }

LABEL_75:
              ++*a4;
              v27 = -2 - *a3;
              if (*a3 == 0xFFFF)
              {
                v27 = 0;
              }

              *a3 = -v27;
              goto LABEL_78;
            }

LABEL_92:
            ++*a4;
            v32 = -2 - *a3;
            if (*a3 == 0xFFFF)
            {
              v32 = 0;
            }

            *a3 = -v32;
            if ((a2[1] & 0x20) == 0)
            {
              goto LABEL_78;
            }

            goto LABEL_75;
          }
        }

        else if ((v15 & 0x100) == 0)
        {
          goto LABEL_44;
        }

        ++*a4;
        v24 = -2 - *a3;
        if (*a3 == 0xFFFF)
        {
          v24 = 0;
        }

        *a3 = -v24;
        if ((*a2 & 0x800000) == 0)
        {
          goto LABEL_69;
        }

        goto LABEL_65;
      }

LABEL_34:
      ++*a4;
      v16 = -2 - *a3;
      if (*a3 == 0xFFFF)
      {
        v16 = 0;
      }

      *a3 = -v16;
      v15 = *a2;
      goto LABEL_37;
    }

LABEL_6:
    v8 = 0;
    goto LABEL_10;
  }

  if (a2[1])
  {
    goto LABEL_6;
  }

  if ((a2[4] & 0x80) == 0)
  {
    goto LABEL_28;
  }

  ++*a4;
  v21 = *a3;
  v22 = 65527;
LABEL_97:
  v33 = v22 >= v21;
  v34 = v22 - v21;
  if (!v33)
  {
    v34 = 0;
  }

  v13 = 0;
  *a3 = -v34;
LABEL_29:
  sub_297E4DFAC(2, a1, 3, 5u, "phNciNfc_ValidateSwpConfigParams");
  return v13;
}

uint64_t sub_297F026C0(uint64_t a1, unsigned int *a2, _WORD *a3, _BYTE *a4)
{
  sub_297E4E1B4(2, a1, 3, 5u, "phNciNfc_ValidateSmbCfgParams");
  if (!a2 || (v8 = *a2) == 0)
  {
    v9 = 1;
    goto LABEL_21;
  }

  if (v8)
  {
    ++*a4;
    v8 = *a3;
    v10 = v8 <= 0xFFFC;
    LOWORD(v8) = -4 - v8;
    if (!v10)
    {
      LOWORD(v8) = 0;
    }

    *a3 = -v8;
    LOBYTE(v8) = *a2;
    if ((*a2 & 2) == 0)
    {
      goto LABEL_13;
    }

    goto LABEL_10;
  }

  if ((v8 & 2) != 0)
  {
LABEL_10:
    ++*a4;
    LOWORD(v8) = -2 - *a3;
    if (*a3 == 0xFFFF)
    {
      LOWORD(v8) = 0;
    }

    *a3 = -v8;
    LOBYTE(v8) = *a2;
  }

LABEL_13:
  if ((v8 & 4) != 0)
  {
    ++*a4;
    v8 = *a3;
    v10 = v8 <= 0xFFFD;
    LOWORD(v8) = -3 - v8;
    if (!v10)
    {
      LOWORD(v8) = 0;
    }

    *a3 = -v8;
    LOBYTE(v8) = *a2;
  }

  v9 = 0;
  if ((v8 & 8) != 0)
  {
    ++*a4;
    v11 = *a3;
    v10 = v11 <= 0xFFEF;
    v12 = -17 - v11;
    if (!v10)
    {
      v12 = 0;
    }

    *a3 = -v12;
  }

LABEL_21:
  sub_297E4DFAC(2, a1, 3, 5u, "phNciNfc_ValidateSmbCfgParams");
  return v9;
}

uint64_t sub_297F02800(uint64_t a1, int *a2, _WORD *a3, _BYTE *a4)
{
  sub_297E4E1B4(2, a1, 3, 5u, "phNciNfc_ValidateNxpExtnRfDiscConfigParams");
  v8 = *a2;
  if (!*a2)
  {
    if (a2[1])
    {
      goto LABEL_45;
    }

    goto LABEL_80;
  }

  if (v8)
  {
    ++*a4;
    if (*(a2 + 8) > 0x83u)
    {
      goto LABEL_80;
    }

    v25 = -2 - *a3;
    if (*a3 == 0xFFFF)
    {
      v25 = 0;
    }

    *a3 = -v25;
    LOWORD(v8) = *a2;
    if ((*a2 & 2) == 0)
    {
LABEL_4:
      if ((v8 & 4) == 0)
      {
        goto LABEL_5;
      }

      goto LABEL_75;
    }
  }

  else if ((v8 & 2) == 0)
  {
    goto LABEL_4;
  }

  ++*a4;
  if (*(a2 + 9) > 0xFu)
  {
    goto LABEL_80;
  }

  v26 = -2 - *a3;
  if (*a3 == 0xFFFF)
  {
    v26 = 0;
  }

  *a3 = -v26;
  LOWORD(v8) = *a2;
  if ((*a2 & 4) == 0)
  {
LABEL_5:
    if ((v8 & 8) == 0)
    {
      goto LABEL_9;
    }

    goto LABEL_6;
  }

LABEL_75:
  ++*a4;
  if (*(a2 + 5) - 32 > 0x7B0)
  {
    goto LABEL_80;
  }

  v27 = *a3;
  v16 = v27 <= 0xFFFD;
  v28 = -3 - v27;
  if (!v16)
  {
    v28 = 0;
  }

  *a3 = -v28;
  LOWORD(v8) = *a2;
  if ((*a2 & 8) != 0)
  {
LABEL_6:
    ++*a4;
    v9 = -2 - *a3;
    if (*a3 == 0xFFFF)
    {
      v9 = 0;
    }

    *a3 = -v9;
    LOWORD(v8) = *a2;
  }

LABEL_9:
  if ((v8 & 0x10) != 0)
  {
    ++*a4;
    if (*(a2 + 13) > 1u)
    {
      goto LABEL_80;
    }

    v10 = -2 - *a3;
    if (*a3 == 0xFFFF)
    {
      v10 = 0;
    }

    *a3 = -v10;
    LOWORD(v8) = *a2;
  }

  if ((v8 & 0x20) != 0)
  {
    ++*a4;
    if (*(a2 + 14) > 1u)
    {
      goto LABEL_80;
    }

    v11 = -2 - *a3;
    if (*a3 == 0xFFFF)
    {
      v11 = 0;
    }

    *a3 = -v11;
    LOWORD(v8) = *a2;
  }

  if ((v8 & 0x40) != 0)
  {
    ++*a4;
    if (*(a2 + 15) > 1u)
    {
      goto LABEL_80;
    }

    v12 = -2 - *a3;
    if (*a3 == 0xFFFF)
    {
      v12 = 0;
    }

    *a3 = -v12;
    LOWORD(v8) = *a2;
  }

  if ((v8 & 0x80) != 0)
  {
    ++*a4;
    if (*(a2 + 16) > 1u)
    {
      goto LABEL_80;
    }

    v13 = -2 - *a3;
    if (*a3 == 0xFFFF)
    {
      v13 = 0;
    }

    *a3 = -v13;
    LOWORD(v8) = *a2;
  }

  if ((v8 & 0x100) != 0)
  {
    ++*a4;
    if (*(a2 + 17) > 1u)
    {
      goto LABEL_80;
    }

    v14 = -2 - *a3;
    if (*a3 == 0xFFFF)
    {
      v14 = 0;
    }

    *a3 = -v14;
    LOWORD(v8) = *a2;
  }

  if ((v8 & 0x200) != 0)
  {
    ++*a4;
    if (!*(a2 + 9))
    {
      goto LABEL_80;
    }

    v15 = *a3;
    v16 = v15 <= 0xFFFD;
    v17 = -3 - v15;
    if (!v16)
    {
      v17 = 0;
    }

    *a3 = -v17;
    LOWORD(v8) = *a2;
  }

  if ((v8 & 0x2000) == 0)
  {
    goto LABEL_45;
  }

  ++*a4;
  if (!*(a2 + 13))
  {
LABEL_80:
    v22 = 1;
    goto LABEL_81;
  }

  v18 = -2 - *a3;
  if (*a3 == 0xFFFF)
  {
    v18 = 0;
  }

  *a3 = -v18;
LABEL_45:
  v19 = *(a2 + 2);
  if (v19)
  {
    ++*a4;
    v30 = *a3;
    v16 = v30 <= 0xFFF9;
    v31 = -7 - v30;
    if (!v16)
    {
      v31 = 0;
    }

    *a3 = -v31;
    v19 = *(a2 + 2);
    if ((v19 & 2) == 0)
    {
LABEL_47:
      if ((v19 & 4) == 0)
      {
        goto LABEL_48;
      }

      goto LABEL_88;
    }
  }

  else if ((v19 & 2) == 0)
  {
    goto LABEL_47;
  }

  ++*a4;
  v32 = *a3;
  v16 = v32 <= 0xFFF9;
  v33 = -7 - v32;
  if (!v16)
  {
    v33 = 0;
  }

  *a3 = -v33;
  v19 = *(a2 + 2);
  if ((v19 & 4) == 0)
  {
LABEL_48:
    if ((v19 & 8) == 0)
    {
      goto LABEL_49;
    }

    goto LABEL_91;
  }

LABEL_88:
  ++*a4;
  v34 = *a3;
  v16 = v34 <= 0xFFF9;
  v35 = -7 - v34;
  if (!v16)
  {
    v35 = 0;
  }

  *a3 = -v35;
  v19 = *(a2 + 2);
  if ((v19 & 8) == 0)
  {
LABEL_49:
    if ((v19 & 0x10) == 0)
    {
      goto LABEL_50;
    }

    goto LABEL_94;
  }

LABEL_91:
  ++*a4;
  v36 = *a3;
  v16 = v36 <= 0xFFF9;
  v37 = -7 - v36;
  if (!v16)
  {
    v37 = 0;
  }

  *a3 = -v37;
  v19 = *(a2 + 2);
  if ((v19 & 0x10) == 0)
  {
LABEL_50:
    if ((v19 & 0x20) == 0)
    {
      goto LABEL_51;
    }

    goto LABEL_97;
  }

LABEL_94:
  ++*a4;
  v38 = *a3;
  v16 = v38 <= 0xFFF9;
  v39 = -7 - v38;
  if (!v16)
  {
    v39 = 0;
  }

  *a3 = -v39;
  v19 = *(a2 + 2);
  if ((v19 & 0x20) == 0)
  {
LABEL_51:
    if ((v19 & 0x40) == 0)
    {
      goto LABEL_52;
    }

    goto LABEL_100;
  }

LABEL_97:
  ++*a4;
  v40 = *a3;
  v16 = v40 <= 0xFFF9;
  v41 = -7 - v40;
  if (!v16)
  {
    v41 = 0;
  }

  *a3 = -v41;
  v19 = *(a2 + 2);
  if ((v19 & 0x40) == 0)
  {
LABEL_52:
    if ((v19 & 0x80) == 0)
    {
      goto LABEL_53;
    }

    goto LABEL_103;
  }

LABEL_100:
  ++*a4;
  v42 = *a3;
  v16 = v42 <= 0xFFF9;
  v43 = -7 - v42;
  if (!v16)
  {
    v43 = 0;
  }

  *a3 = -v43;
  v19 = *(a2 + 2);
  if ((v19 & 0x80) == 0)
  {
LABEL_53:
    if ((v19 & 0x100) == 0)
    {
      goto LABEL_54;
    }

    goto LABEL_106;
  }

LABEL_103:
  ++*a4;
  v44 = *a3;
  v16 = v44 <= 0xFFF9;
  v45 = -7 - v44;
  if (!v16)
  {
    v45 = 0;
  }

  *a3 = -v45;
  v19 = *(a2 + 2);
  if ((v19 & 0x100) == 0)
  {
LABEL_54:
    if ((v19 & 0x200) == 0)
    {
      goto LABEL_55;
    }

    goto LABEL_109;
  }

LABEL_106:
  ++*a4;
  v46 = *a3;
  v16 = v46 <= 0xFFF9;
  v47 = -7 - v46;
  if (!v16)
  {
    v47 = 0;
  }

  *a3 = -v47;
  v19 = *(a2 + 2);
  if ((v19 & 0x200) == 0)
  {
LABEL_55:
    if ((v19 & 0x400) == 0)
    {
      goto LABEL_56;
    }

    goto LABEL_112;
  }

LABEL_109:
  ++*a4;
  v48 = *a3;
  v16 = v48 <= 0xFFF9;
  v49 = -7 - v48;
  if (!v16)
  {
    v49 = 0;
  }

  *a3 = -v49;
  v19 = *(a2 + 2);
  if ((v19 & 0x400) == 0)
  {
LABEL_56:
    if ((v19 & 0x800) == 0)
    {
      goto LABEL_57;
    }

    goto LABEL_115;
  }

LABEL_112:
  ++*a4;
  v50 = *a3;
  v16 = v50 <= 0xFFF9;
  v51 = -7 - v50;
  if (!v16)
  {
    v51 = 0;
  }

  *a3 = -v51;
  v19 = *(a2 + 2);
  if ((v19 & 0x800) == 0)
  {
LABEL_57:
    if ((v19 & 0x1000) == 0)
    {
      goto LABEL_58;
    }

    goto LABEL_118;
  }

LABEL_115:
  ++*a4;
  v52 = *a3;
  v16 = v52 <= 0xFFF9;
  v53 = -7 - v52;
  if (!v16)
  {
    v53 = 0;
  }

  *a3 = -v53;
  v19 = *(a2 + 2);
  if ((v19 & 0x1000) == 0)
  {
LABEL_58:
    if ((v19 & 0x2000) == 0)
    {
      goto LABEL_59;
    }

LABEL_121:
    ++*a4;
    v56 = *a3;
    v16 = v56 <= 0xFFF9;
    v57 = -7 - v56;
    if (!v16)
    {
      v57 = 0;
    }

    *a3 = -v57;
    v19 = *(a2 + 2);
    if ((v19 & 0x4000) == 0)
    {
      goto LABEL_63;
    }

    goto LABEL_60;
  }

LABEL_118:
  ++*a4;
  v54 = *a3;
  v16 = v54 <= 0xFFF9;
  v55 = -7 - v54;
  if (!v16)
  {
    v55 = 0;
  }

  *a3 = -v55;
  v19 = *(a2 + 2);
  if ((v19 & 0x2000) != 0)
  {
    goto LABEL_121;
  }

LABEL_59:
  if ((v19 & 0x4000) != 0)
  {
LABEL_60:
    ++*a4;
    v20 = *a3;
    v16 = v20 <= 0xFFF9;
    v21 = -7 - v20;
    if (!v16)
    {
      v21 = 0;
    }

    *a3 = -v21;
    v19 = *(a2 + 2);
  }

LABEL_63:
  v22 = 0;
  if (v19 < 0)
  {
    ++*a4;
    v23 = *a3;
    v16 = v23 <= 0xFFF9;
    v24 = -7 - v23;
    if (!v16)
    {
      v24 = 0;
    }

    *a3 = -v24;
  }

LABEL_81:
  sub_297E4DFAC(2, a1, 3, 5u, "phNciNfc_ValidateNxpExtnRfDiscConfigParams");
  return v22;
}

uint64_t sub_297F02DF4(uint64_t a1, unsigned int a2, int *a3, _WORD *a4)
{
  sub_297E4E1B4(2, a1, 3, 5u, "phNciNfc_ValidateSetRtngParams");
  v8 = 1;
  if (!a2 || !a3 || !a4)
  {
    goto LABEL_17;
  }

  v8 = a2;
  while (1)
  {
    v9 = *a3;
    if (*a3 != 2)
    {
      break;
    }

    if (sub_297F0302C(a1, a3, a4))
    {
      goto LABEL_16;
    }

LABEL_13:
    a3 += 8;
    if (!--v8)
    {
      goto LABEL_17;
    }
  }

  if (v9 == 1)
  {
    if (sub_297F02F9C(a1, a3, a4))
    {
      goto LABEL_16;
    }

    goto LABEL_13;
  }

  if (!v9)
  {
    if (sub_297F02F0C(a1, a3, a4))
    {
      goto LABEL_16;
    }

    goto LABEL_13;
  }

  sub_297E4E0B0(2, a1, 3, 2u, "Invalid routing type");
LABEL_16:
  v8 = 1;
LABEL_17:
  sub_297E4DFAC(2, a1, 3, 5u, "phNciNfc_ValidateSetRtngParams");
  return v8;
}

uint64_t sub_297F02F0C(uint64_t a1, uint64_t a2, _WORD *a3)
{
  sub_297E4E1B4(2, a1, 3, 5u, "phNciNfc_ValidateTechBasedParams");
  if (*(a2 + 4) == 255)
  {
    v6 = 1;
  }

  else
  {
    v6 = 0;
    *a3 += 5;
  }

  sub_297E4DFAC(2, a1, 3, 5u, "phNciNfc_ValidateTechBasedParams");
  return v6;
}

uint64_t sub_297F02F9C(uint64_t a1, uint64_t a2, _WORD *a3)
{
  sub_297E4E1B4(2, a1, 3, 5u, "phNciNfc_ValidateProtoBasedParams");
  if (*(a2 + 4) == 255)
  {
    v6 = 1;
  }

  else
  {
    v6 = 0;
    *a3 += 5;
  }

  sub_297E4DFAC(2, a1, 3, 5u, "phNciNfc_ValidateProtoBasedParams");
  return v6;
}

uint64_t sub_297F0302C(uint64_t a1, uint64_t a2, _WORD *a3)
{
  sub_297E4E1B4(2, a1, 3, 5u, "phNciNfc_ValidateAidBasedParams");
  if (*(a2 + 4) == 255 || (v6 = *(a2 + 28), (v6 - 5) > 0xB))
  {
    v7 = 1;
  }

  else
  {
    v7 = 0;
    *a3 += (v6 + 4);
  }

  sub_297E4DFAC(2, a1, 3, 5u, "phNciNfc_ValidateAidBasedParams");
  return v7;
}

uint64_t sub_297F030D0(uint64_t a1, uint64_t a2, unsigned __int8 *a3, uint64_t a4)
{
  v15 = 0;
  v14 = 0;
  sub_297E4E1B4(2, a1, 3, 5u, "phNciNfc_SetRtngCmdHandler");
  if (a1)
  {
    v8 = sub_297F0325C(a1, &v15, &v14);
    v9 = (v14 + 2);
    Memory_Typed = phOsalNfc_GetMemory_Typed();
    v11 = v15;
    sub_297F03380(a1, Memory_Typed, v8, (*(a1 + 4688) + 32 * *(a1 + 913)), v15);
    *a3 = v11;
    *(a1 + 913) += v8;
    *(a1 + 912) = v11;
    *(a1 + 3776) = off_2A1A93CA0;
    *(a1 + 3976) = 0;
    *(a1 + 3977) = sub_297E577AC(a1, off_2A1A93CA0);
    *(a1 + 896) = Memory_Typed;
    *(a1 + 904) = v9;
    *(a1 + 3424) = a2;
    *(a1 + 3752) = a4;
    v12 = sub_297F01A1C(a1, 0, 0);
    if (v12 != 13)
    {
      phOsalNfc_FreeMemory();
      *(a1 + 896) = 0;
      *(a1 + 904) = 0;
      *(a1 + 912) = 0;
      sub_297E4E0B0(1, a1 + 6524, 3, 2u, "Set Rtng table Sequence failed!");
    }
  }

  else
  {
    v12 = 255;
  }

  sub_297E4DFAC(2, a1, 3, 5u, "phNciNfc_SetRtngCmdHandler");
  return v12;
}

uint64_t sub_297F0325C(uint64_t a1, _BYTE *a2, _WORD *a3)
{
  v6 = *(a1 + 914);
  v7 = *(a1 + 913);
  sub_297E4E1B4(2, a1, 3, 5u, "phNciNfc_CalNumEntries");
  *a2 = 1;
  if (v6 <= v7)
  {
    LOWORD(v13) = 0;
LABEL_9:
    *a3 += v13;
    v9 = 1;
    goto LABEL_10;
  }

  v8 = 0;
  v9 = 0;
  v10 = v6 - v7;
  v11 = v6 - v7;
  v12 = (*(a1 + 4688) + 32 * v7);
  while (1)
  {
    v13 = sub_297F03904(a1, v12);
    v8 += v13;
    if (*(a1 + 16) <= v8)
    {
      break;
    }

    *a3 += v13;
    ++v9;
    v12 += 8;
    if (!--v11)
    {
      v9 = v10;
      break;
    }
  }

  if (!v9)
  {
    goto LABEL_9;
  }

LABEL_10:
  if (*(a1 + 913) + v9 >= v6)
  {
    *a2 = 0;
  }

  sub_297E4DFAC(2, a1, 3, 5u, "phNciNfc_CalNumEntries");
  return v9;
}

uint64_t sub_297F03380(uint64_t a1, _BYTE *a2, unsigned int a3, int *a4, char a5)
{
  sub_297E4E1B4(2, a1, 3, 5u, "phNciNfc_BuildSetLstnRtngCmdPayload");
  *a2 = a5;
  a2[1] = a3;
  if (a3)
  {
    v10 = a3;
    LOBYTE(v11) = 2;
    do
    {
      v12 = *a4;
      if (*a4 == 2)
      {
        v14 = sub_297F03818(a1, &a2[v11], a4) + v11;
        if (v14 >= 0x100)
        {
          LOBYTE(v11) = 0;
        }

        else
        {
          LOBYTE(v11) = v14;
        }
      }

      else
      {
        if (v12 == 1)
        {
          sub_297F03754(a1, &a2[v11], a4);
          goto LABEL_8;
        }

        if (!v12)
        {
          sub_297F03690(a1, &a2[v11], a4);
LABEL_8:
          v13 = 251 - v11;
          if (v11 > 0xFBu)
          {
            v13 = 0;
          }

          v11 = -v13;
          goto LABEL_15;
        }

        sub_297E4E0B0(2, a1, 3, 2u, "Unknown routing type");
      }

LABEL_15:
      a4 += 8;
      --v10;
    }

    while (v10);
  }

  return sub_297E4DFAC(2, a1, 3, 5u, "phNciNfc_BuildSetLstnRtngCmdPayload");
}

uint64_t sub_297F034C0(uint64_t a1, uint64_t a2, unsigned int a3, uint64_t a4)
{
  sub_297E4E1B4(2, a1, 3, 5u, "phNciNfc_VerifySupportedRouting");
  LOWORD(v8) = 1;
  if (!a2 || !a4)
  {
    goto LABEL_30;
  }

  if (!a3)
  {
    LOWORD(v8) = 0;
    goto LABEL_30;
  }

  v9 = 0;
  v10 = 0;
  v8 = 0;
  v11 = a3;
  v12 = (a4 + 8);
  v13 = "Techn based routing request but not supported by NFCC";
  while (1)
  {
    v14 = *(v12 - 2);
    switch(v14)
    {
      case 2:
        v10 = v12;
        if ((*(a2 + 4) & 1) == 0)
        {
          v13 = "Aid based routing request but not supported by NFCC";
          goto LABEL_28;
        }

        break;
      case 1:
        if ((*(a2 + 4) & 2) == 0)
        {
          v13 = "Protocol based routing request but not supported by NFCC";
          goto LABEL_28;
        }

        goto LABEL_11;
      case 0:
        if ((*(a2 + 4) & 4) == 0)
        {
          goto LABEL_28;
        }

LABEL_11:
        v10 = (a4 + 32 * v9 + 8);
        break;
    }

    if (v8 || !v10)
    {
      goto LABEL_22;
    }

    if ((*v10 & 4) == 0 || (*(a2 + 8) & 2) != 0)
    {
      break;
    }

    sub_297E4E0B0(2, a1, 3, 2u, "Battery off pow state requested but not supported");
    v8 = 255;
    v15 = 1;
    if ((*v10 & 2) != 0)
    {
      goto LABEL_20;
    }

LABEL_21:
    if (v15)
    {
      goto LABEL_29;
    }

LABEL_22:
    ++v9;
    v12 += 32;
    if (!--v11)
    {
      goto LABEL_30;
    }
  }

  v15 = 0;
  v8 = 0;
  if ((*v10 & 2) == 0)
  {
    goto LABEL_21;
  }

LABEL_20:
  if (*(a2 + 8))
  {
    goto LABEL_21;
  }

  v13 = "Switched off pow state requested but not supported";
LABEL_28:
  sub_297E4E0B0(2, a1, 3, 2u, v13);
LABEL_29:
  sub_297E4E0B0(2, a1, 3, 2u, "Input Routing type not supported by NFCC");
  LOWORD(v8) = 255;
LABEL_30:
  sub_297E4DFAC(2, a1, 3, 5u, "phNciNfc_VerifySupportedRouting");
  return v8;
}

uint64_t sub_297F03690(uint64_t a1, _BYTE *a2, uint64_t a3)
{
  sub_297E4E1B4(2, a1, 3, 5u, "phNciNfc_UpdateTechRtngParams");
  *a2 = *a3;
  a2[1] = 3;
  a2[2] = *(a3 + 4);
  a2[3] = 0;
  v6 = *(a3 + 8);
  a2[3] = v6 & 1;
  v7 = *(a3 + 8) & 2 | v6 & 1;
  a2[3] = v7;
  a2[3] = *(a3 + 8) & 4 | v7;
  a2[4] = *(a3 + 12);
  sub_297E4DFAC(2, a1, 3, 5u, "phNciNfc_UpdateTechRtngParams");
  return 5;
}

uint64_t sub_297F03754(uint64_t a1, _BYTE *a2, uint64_t a3)
{
  sub_297E4E1B4(2, a1, 3, 5u, "phNciNfc_UpdateProtoRtngParams");
  *a2 = *a3;
  a2[1] = 3;
  a2[2] = *(a3 + 4);
  a2[3] = 0;
  v6 = *(a3 + 8);
  a2[3] = v6 & 1;
  v7 = *(a3 + 8) & 2 | v6 & 1;
  a2[3] = v7;
  a2[3] = *(a3 + 8) & 4 | v7;
  a2[4] = *(a3 + 12);
  sub_297E4DFAC(2, a1, 3, 5u, "phNciNfc_UpdateProtoRtngParams");
  return 5;
}

uint64_t sub_297F03818(uint64_t a1, _BYTE *a2, uint64_t a3)
{
  sub_297E4E1B4(2, a1, 3, 5u, "phNciNfc_UpdateAidRtngParams");
  *a2 = *a3;
  a2[1] = *(a3 + 28) + 2;
  a2[2] = *(a3 + 4);
  a2[3] = 0;
  v6 = *(a3 + 8);
  a2[3] = v6 & 1;
  v7 = *(a3 + 8) & 2 | v6 & 1;
  a2[3] = v7;
  a2[3] = *(a3 + 8) & 4 | v7;
  phOsalNfc_MemCopy();
  v8 = *(a3 + 28);
  v9 = v8 <= 0xFC;
  v10 = 252 - v8;
  if (!v9)
  {
    v10 = 0;
  }

  v11 = -v10;
  sub_297E4DFAC(2, a1, 3, 5u, "phNciNfc_UpdateAidRtngParams");
  return v11;
}

uint64_t sub_297F03904(uint64_t a1, int *a2)
{
  sub_297E4E1B4(2, a1, 3, 5u, "phNciNfc_EntrySize");
  v4 = *a2;
  if (*a2 == 2)
  {
    v6 = *(a2 + 28) + 4;
  }

  else
  {
    if (v4)
    {
      v5 = 0;
    }

    else
    {
      v5 = 5;
    }

    if (v4 == 1)
    {
      v6 = 5;
    }

    else
    {
      v6 = v5;
    }
  }

  sub_297E4DFAC(2, a1, 3, 5u, "phNciNfc_EntrySize");
  return v6;
}

uint64_t sub_297F03994(uint64_t a1, uint64_t a2)
{
  v8 = 0;
  v9 = 0;
  sub_297E4E1B4(2, a2, 3, 5u, "phNciNfc_GetLstnNtfTimeoutHandler");
  if (!a2)
  {
    goto LABEL_6;
  }

  v4 = 0;
  v5 = 0;
  do
  {
    v6 = *(&unk_2A18BDDC0 + 14 * v5 + 4);
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
    if (!*(a2 + 6512))
    {
      sub_297E5A304(*(a2 + 6524), *(a2 + 4696));
      if (!phOsalNfc_Timer_Start())
      {
        sub_297E4E0B0(1, a2 + 6524, 3, 4u, "Get Listen Mode Ntf Handler timer restarted for extended time\n");
        *(a2 + 6512) = 1;
        return sub_297E4DFAC(2, a2, 3, 5u, "phNciNfc_GetLstnNtfTimeoutHandler");
      }

      sub_297E4E0B0(1, a2 + 6524, 3, 1u, "Get Listen Mode Ntf Handler timer failed to start for extended time\n\n");
    }

    sub_297E687D8(2, a2, a1, 3, 4u, "phNciNfc_GetLstnNtfTimeoutHandler");
    sub_297E4E0B0(1, a2 + 6524, 3, 4u, "#######Get Listen Mode routing notification TIMEOUT########\n");
    phOsalNfc_Timer_Stop();
    *(a2 + 6512) = 0;
    v8 = 0x100000003;
    LODWORD(v9) = 2;
    sub_297F00C28(a2 + 936, &v8, sub_297F03B88);
    sub_297E5B994(a2, 255, 0);
  }

  else
  {
LABEL_6:
    sub_297E4E0B0(2, a2, 3, 1u, "Nci context null (phNciNfc_GetLstnNtfTimeoutHandler)\n");
  }

  return sub_297E4DFAC(2, a2, 3, 5u, "phNciNfc_GetLstnNtfTimeoutHandler");
}

uint64_t sub_297F03B88(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v42 = 0;
  v43 = 0;
  v40 = 0;
  v41 = 0;
  sub_297E4E1B4(2, a1, 3, 5u, "phNciNfc_GetRtngConfigNtfCb");
  if (!a1 || !a2)
  {
    goto LABEL_75;
  }

  phOsalNfc_Timer_Stop();
  *(a1 + 6512) = 0;
  sub_297E687D8(1, a1 + 6524, *(a1 + 4696), 3, 4u, "phNciNfc_GetRtngConfigNtfCb");
  phOsalNfc_SetMemory();
  if (a3 || (v6 = *(a2 + 16), v7 = v6 - 2, v6 < 2))
  {
    sub_297E4E0B0(1, a1 + 6524, 3, 1u, "Invalid notification payload length!");
    goto LABEL_9;
  }

  v8 = *(a2 + 8);
  v9 = *v8;
  v10 = v8[1];
  v11 = *(a1 + 912);
  v12 = (v11 | v9) == 0;
  if (v11 | v9)
  {
    if (*(a1 + 912) || v9 != 1)
    {
      if (v11 == 1 && v9 == 1)
      {
        sub_297E4E0B0(1, a1 + 6524, 3, 4u, "Received next Rtng ntf with more set to '1'");
        v15 = 0;
        v16 = *(a1 + 920);
        *(a1 + 912) = 1;
        if (!v16)
        {
          goto LABEL_51;
        }
      }

      else
      {
        v15 = 1;
        sub_297E4E0B0(1, a1 + 6524, 3, 4u, "Received last Rtng ntf with more set to '0'");
        *(a1 + 912) = v9;
        if (!*(a1 + 920))
        {
          goto LABEL_23;
        }
      }

LABEL_22:
      sub_297E4E0B0(1, a1 + 6524, 3, 4u, "Copying received Rtng ntf payload to ntf buffer");
      phOsalNfc_MemCopy();
      *(a1 + 928) += v7;
      *(a1 + 914) += v10;
      if (v15)
      {
        goto LABEL_23;
      }

LABEL_51:
      a3 = 0;
      goto LABEL_75;
    }

    sub_297E4E0B0(1, a1 + 6524, 3, 4u, "Received first Rtng ntf with more set to '1'");
    if (*(a1 + 920))
    {
      phOsalNfc_FreeMemory();
      *(a1 + 920) = 0;
    }

    Memory_Typed = phOsalNfc_GetMemory_Typed();
    *(a1 + 920) = Memory_Typed;
    if (Memory_Typed)
    {
      v15 = 0;
      *(a1 + 912) = 1;
      goto LABEL_22;
    }

    sub_297E4E0B0(1, a1 + 6524, 3, 1u, "Failed to allocate memory for storing notification payload");
    *(a1 + 912) = 1;
LABEL_9:
    LOBYTE(v42) = 0;
    v13 = 1;
    goto LABEL_61;
  }

  sub_297E4E0B0(1, a1 + 6524, 3, 4u, "Only one notification is received to read listen mode routing table");
  *(a1 + 912) = 0;
  *(a1 + 914) = v10;
  if (v10)
  {
    *(a1 + 920) = *(a2 + 8) + 2;
    *(a1 + 928) = v7;
  }

  else
  {
    sub_297E4E0B0(1, a1 + 6524, 3, 4u, "Listen mode routing table is empty. No of entries: 0");
  }

LABEL_23:
  v13 = !v12;
  sub_297E4E0B0(1, a1 + 6524, 3, 4u, "Processing Rtng ntf...");
  v46 = 0;
  v47 = 0;
  v17 = *(a1 + 914);
  v45 = 0;
  v44 = 0;
  sub_297E4E1B4(2, a1, 3, 5u, "phNciNfc_ProcessGetRtngNtf");
  LOBYTE(v42) = 0;
  if (v17)
  {
    v18 = sub_297EC2C48(a1, *(a1 + 920), *(a1 + 928));
    if (v18 == 255)
    {
      v36 = "Inconsistent TLVs received!";
    }

    else if (v18)
    {
      v36 = "Invalid input parameter sent!";
    }

    else
    {
      if (v43)
      {
        phOsalNfc_FreeMemory();
        v43 = 0;
      }

      v43 = phOsalNfc_GetMemory_Typed();
      if (v43)
      {
        v19 = 0;
        LOBYTE(v42) = v17;
        v46 = *(a1 + 920);
        v20 = *(a1 + 928);
        LODWORD(v47) = 0;
        HIDWORD(v47) = v20;
        while (1)
        {
          v21 = sub_297EC2D1C(a1, &v46, &v45 + 1, &v45, &v44);
          if (v21)
          {
            break;
          }

          v22 = HIBYTE(v45);
          v23 = v45;
          v24 = v43;
          v25 = v44;
          sub_297E4E1B4(2, a1, 3, 5u, "phNciNfc_ProcessRtngEntry");
          if (v22 == 2)
          {
            v31 = v43 + v19;
            *v31 = 2;
            *(v31 + 4) = *v25;
            v32 = v25[1];
            if (v32 > 0xF)
            {
              v28 = 255;
            }

            else
            {
              v28 = 0;
              v33 = *(v31 + 8) & 0xFE | v32 & 1;
              *(v31 + 8) = v33;
              v34 = v33 & 0xFD | v25[1] & 2;
              *(v31 + 8) = v34;
              *(v31 + 8) = v34 & 0xFB | v25[1] & 4;
            }

            if (v23 <= 1)
            {
              v35 = 0;
            }

            else
            {
              v35 = v23 - 2;
            }

            if (v35 >= 0x11u)
            {
              sub_297E4E0B0(2, a1, 3, 1u, "Received AID length exceeded Max AID Length");
LABEL_78:
              sub_297E4DFAC(2, a1, 3, 5u, "phNciNfc_ProcessRtngEntry");
              goto LABEL_60;
            }

            phOsalNfc_MemCopy();
            *(v24 + v19 + 28) = v35;
          }

          else
          {
            if (v22 == 1)
            {
              v26 = v43 + v19;
              *(v43 + v19) = 1;
            }

            else
            {
              if (v22)
              {
                goto LABEL_78;
              }

              v26 = v43 + v19;
              *(v43 + v19) = 0;
            }

            *(v26 + 4) = *v25;
            v27 = v25[1];
            if (v27 > 0xF)
            {
              v28 = 255;
            }

            else
            {
              v28 = 0;
              v29 = *(v26 + 8) & 0xFE | v27 & 1;
              *(v26 + 8) = v29;
              v30 = v29 & 0xFD | v25[1] & 2;
              *(v26 + 8) = v30;
              *(v26 + 8) = v30 & 0xFB | v25[1] & 4;
            }

            *(v26 + 12) = v25[2];
          }

          sub_297E4DFAC(2, a1, 3, 5u, "phNciNfc_ProcessRtngEntry");
          if (v28)
          {
            goto LABEL_60;
          }

          v19 += 32;
          if (!--v17)
          {
            goto LABEL_50;
          }
        }

        if (v21 == 255)
        {
          v36 = "Get Tlv failed!";
        }

        else
        {
          v36 = "Invalid parameter passed";
        }
      }

      else
      {
        v36 = "Failed to allocate trans info buffer!";
      }
    }

    sub_297E4E0B0(2, a1, 3, 1u, v36);
LABEL_60:
    sub_297E4DFAC(2, a1, 3, 5u, "phNciNfc_ProcessGetRtngNtf");
    sub_297E4E0B0(1, a1 + 6524, 3, 2u, "Rxd Routing Entries Validation Failed!");
    LOBYTE(v42) = 0;
  }

  else
  {
LABEL_50:
    sub_297E4DFAC(2, a1, 3, 5u, "phNciNfc_ProcessGetRtngNtf");
  }

LABEL_61:
  v40 = 0x100000003;
  LODWORD(v41) = 2;
  v37 = sub_297F00C28(a1 + 936, &v40, sub_297F03B88);
  a3 = v37;
  if (v37 == 255)
  {
    v38 = "phNciNfc_GetRtngConfigNtfCb:De-register Rtng Notification call back failed!";
    goto LABEL_68;
  }

  if (v37 == 52)
  {
    v38 = "phNciNfc_GetRtngConfigNtfCb:Rtng Notification call back not registered!";
LABEL_68:
    sub_297E4E0B0(1, a1 + 6524, 3, 1u, v38);
    goto LABEL_69;
  }

  if (v37)
  {
    v38 = "Invalid parameter passed!";
    goto LABEL_68;
  }

  sub_297E4E0B0(1, a1 + 6524, 3, 4u, "De-register Rtng ntf call back success");
LABEL_69:
  if (*(a1 + 920))
  {
    if (v13)
    {
      phOsalNfc_FreeMemory();
    }

    *(a1 + 920) = 0;
    *(a1 + 928) = 0;
    *(a1 + 914) = 0;
    *(a1 + 912) = 0;
  }

  sub_297E91EA8(a1, &v42, a3);
  sub_297E4E0B0(1, a1 + 6524, 3, 4u, "Notifying upper layer...");
  phOsalNfc_MemCopy();
  sub_297E5B994(a1, a3, a1 + 6992);
  if (v43)
  {
    phOsalNfc_FreeMemory();
  }

LABEL_75:
  sub_297E4DFAC(2, a1, 3, 5u, "phNciNfc_GetRtngConfigNtfCb");
  return a3;
}

uint64_t sub_297F04328(uint64_t a1, uint64_t *a2, _WORD *a3)
{
  sub_297E4E1B4(2, a1, 3, 5u, "phNciNfc_BuildNxpRfDiscConfigParams");
  if ((*a3 & 0x10) != 0 && sub_297E65D5C(a1, a2, 0xA044u, 2, a3 + 13))
  {
    goto LABEL_51;
  }

  v6 = a3[2];
  if (v6)
  {
    if (sub_297E65D5C(a1, a2, 0xA04Du, 7, a3 + 29))
    {
      goto LABEL_51;
    }

    v6 = a3[2];
  }

  if ((v6 & 2) != 0)
  {
    if (sub_297E65D5C(a1, a2, 0xA04Eu, 7, a3 + 35))
    {
      goto LABEL_51;
    }

    v6 = a3[2];
  }

  if ((v6 & 4) != 0)
  {
    if (sub_297E65D5C(a1, a2, 0xA04Fu, 7, a3 + 41))
    {
      goto LABEL_51;
    }

    v6 = a3[2];
  }

  if ((v6 & 8) != 0)
  {
    if (sub_297E65D5C(a1, a2, 0xA050u, 7, a3 + 47))
    {
      goto LABEL_51;
    }

    v6 = a3[2];
  }

  if ((v6 & 0x10) != 0)
  {
    if (sub_297E65D5C(a1, a2, 0xA051u, 7, a3 + 53))
    {
      goto LABEL_51;
    }

    v6 = a3[2];
  }

  if ((v6 & 0x20) != 0)
  {
    if (sub_297E65D5C(a1, a2, 0xA052u, 7, a3 + 59))
    {
      goto LABEL_51;
    }

    v6 = a3[2];
  }

  if ((v6 & 0x40) != 0)
  {
    if (sub_297E65D5C(a1, a2, 0xA053u, 7, a3 + 65))
    {
      goto LABEL_51;
    }

    v6 = a3[2];
  }

  if ((v6 & 0x80) != 0)
  {
    if (sub_297E65D5C(a1, a2, 0xA054u, 7, a3 + 71))
    {
      goto LABEL_51;
    }

    v6 = a3[2];
  }

  if ((v6 & 0x100) != 0)
  {
    if (sub_297E65D5C(a1, a2, 0xA055u, 7, a3 + 77))
    {
      goto LABEL_51;
    }

    v6 = a3[2];
  }

  if ((v6 & 0x200) != 0)
  {
    if (sub_297E65D5C(a1, a2, 0xA056u, 7, a3 + 83))
    {
      goto LABEL_51;
    }

    v6 = a3[2];
  }

  if ((v6 & 0x400) != 0)
  {
    if (sub_297E65D5C(a1, a2, 0xA057u, 7, a3 + 89))
    {
      goto LABEL_51;
    }

    v6 = a3[2];
  }

  if ((v6 & 0x800) != 0)
  {
    if (sub_297E65D5C(a1, a2, 0xA058u, 7, a3 + 95))
    {
      goto LABEL_51;
    }

    v6 = a3[2];
  }

  if ((v6 & 0x1000) != 0)
  {
    if (sub_297E65D5C(a1, a2, 0xA059u, 7, a3 + 101))
    {
      goto LABEL_51;
    }

    v6 = a3[2];
  }

  if ((v6 & 0x2000) != 0)
  {
    if (sub_297E65D5C(a1, a2, 0xA05Au, 7, a3 + 107))
    {
      goto LABEL_51;
    }

    v6 = a3[2];
  }

  if ((v6 & 0x4000) != 0)
  {
    if (!sub_297E65D5C(a1, a2, 0xA05Bu, 7, a3 + 113))
    {
      v6 = a3[2];
      goto LABEL_48;
    }

LABEL_51:
    v7 = 1;
    goto LABEL_52;
  }

LABEL_48:
  if (v6 < 0 && sub_297E65D5C(a1, a2, 0xA05Cu, 7, a3 + 119))
  {
    goto LABEL_51;
  }

  v7 = 0;
LABEL_52:
  sub_297E4DFAC(2, a1, 3, 5u, "phNciNfc_BuildNxpRfDiscConfigParams");
  return v7;
}

uint64_t sub_297F04604(uint64_t a1, uint64_t *a2, char *a3)
{
  sub_297E4E1B4(2, a1, 3, 5u, "phNciNfc_BuildSmbConfigParams");
  if (!a3)
  {
    goto LABEL_13;
  }

  v6 = *a3;
  if (*a3)
  {
    if (sub_297E65D5C(a1, a2, 0xA070u, 4, (a3 + 4)))
    {
      goto LABEL_13;
    }

    v6 = *a3;
  }

  if ((v6 & 2) != 0)
  {
    if (sub_297E65D5C(a1, a2, 0xA071u, 2, (a3 + 7)))
    {
      goto LABEL_13;
    }

    v6 = *a3;
  }

  if ((v6 & 4) != 0)
  {
    if (sub_297E65D5C(a1, a2, 0xA077u, 3, (a3 + 8)))
    {
      goto LABEL_13;
    }

    v6 = *a3;
  }

  if ((v6 & 8) == 0 || !sub_297E65D5C(a1, a2, 0xA07Au, 17, (a3 + 10)))
  {
    v7 = 0;
    goto LABEL_14;
  }

LABEL_13:
  v7 = 1;
LABEL_14:
  sub_297E4DFAC(2, a1, 3, 5u, "phNciNfc_BuildSmbConfigParams");
  return v7;
}

uint64_t sub_297F04710(uint64_t a1, int a2, int a3, _WORD *a4, _BYTE *a5)
{
  sub_297E4E1B4(2, a1, 3, 5u, "phNciNfc_ParseSysConfigParams");
  if (a2 == 1)
  {
    ++*a5;
    v10 = *a4 + a3;
    if (v10 >= 0x10000)
    {
      LOWORD(v10) = 0;
    }

    *a4 = v10;
  }

  return sub_297E4DFAC(2, a1, 3, 5u, "phNciNfc_ParseSysConfigParams");
}

uint64_t sub_297F047BC(uint64_t a1)
{
  sub_297E4E1B4(2, a1, 3, 5u, "phNciNfc_NciCtxInitialize");
  if (a1)
  {
    *(a1 + 160) = 0;
    *(a1 + 3424) = 0;
    *(a1 + 3752) = 0;
    *(a1 + 3776) = 0;
    *(a1 + 3800) = 0;
    *(a1 + 4552) = 0;
    *(a1 + 4640) = 0;
    *(a1 + 4656) = 0;
    *(a1 + 4800) = 0;
    *(a1 + 4536) = 0;
    *(a1 + 4688) = 0;
    *(a1 + 184) = 0u;
    *(a1 + 208) = 0u;
    *(a1 + 224) = 0u;
    *(a1 + 240) = 0u;
    *(a1 + 888) = 0u;
    *(a1 + 288) = 0u;
    *(a1 + 4616) = 0u;
  }

  return sub_297E4DFAC(2, a1, 3, 5u, "phNciNfc_NciCtxInitialize");
}

uint64_t sub_297F04874(uint64_t a1)
{
  v4 = 0u;
  v5 = 0u;
  sub_297E4E1B4(2, a1, 3, 5u, "phNciNfc_SendTxData");
  if (a1)
  {
    phOsalNfc_SetMemory();
    LODWORD(v4) = 0;
    BYTE12(v4) = *(a1 + 3968);
    *&v5 = *(a1 + 896);
    DWORD2(v5) = *(a1 + 904);
    v2 = sub_297E57BA8(a1 + 936, &v4, a1 + 3800, *(a1 + 4566), sub_297E5E830, a1);
  }

  else
  {
    v2 = 1;
  }

  sub_297E4DFAC(2, a1, 3, 5u, "phNciNfc_SendTxData");
  return v2;
}

uint64_t sub_297F04948(uint64_t a1, uint64_t a2)
{
  sub_297E4E1B4(2, a1, 3, 5u, "phNciNfc_ProcessDataRsp");
  if (a1)
  {
    if (!a2)
    {
      *(a1 + 4592) = *(a1 + 3800);
      *(a1 + 4600) = *(a1 + 3808);
    }
  }

  else
  {
    a2 = 1;
  }

  sub_297E4DFAC(2, a1, 3, 5u, "phNciNfc_ProcessDataRsp");
  return a2;
}

uint64_t sub_297F049C8(uint64_t a1, uint64_t a2)
{
  sub_297E4E1B4(2, a1, 3, 5u, "phNciNfc_CompleteDataSequence");
  if (a1)
  {
    v4 = *(a1 + 4616);
    *(a1 + 4616) = 0;
    *(a1 + 6483) = 0;
    if (v4)
    {
      v4(*(a1 + 4624), a2, a1 + 4592);
    }

    else
    {
      sub_297E4E0B0(1, a1 + 6524, 3, 2u, "No CB registered");
    }

    *(a1 + 896) = 0;
  }

  sub_297E4DFAC(2, a1, 3, 5u, "phNciNfc_CompleteDataSequence");
  return a2;
}

uint64_t sub_297F04A7C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, int a5, int a6)
{
  v35 = 0;
  v36 = a1;
  v33 = 0;
  v34 = 0;
  sub_297E4E1B4(0, &v36, 3, 5u, "phNciNfc_Initialise");
  sub_297E9F51C(v36, &v35);
  v11 = 0;
  v12 = 1;
  v13 = v36;
  do
  {
    v14 = v12;
    v15 = &unk_2A18BDDC0 + 112 * v11;
    if (*v15 == v36)
    {
      v16 = *(v15 + 2);
      if (a3)
      {
        goto LABEL_7;
      }

      goto LABEL_12;
    }

    v12 = 0;
    v11 = 1;
  }

  while ((v14 & 1) != 0);
  v16 = 255;
  if (!a3)
  {
    goto LABEL_12;
  }

LABEL_7:
  if (!a2 || !v36)
  {
LABEL_12:
    v20 = 1;
    sub_297E4E0B0(0, &v36, 3, 1u, "Invalid input parameter");
    v18 = v35;
    v19 = v35 != 0;
    if (a5 != 1 || !v35)
    {
LABEL_14:
      if (a5 || !v19)
      {
        goto LABEL_32;
      }
    }

    *(v18 + 428) = a3;
    *(v18 + 469) = a4;
    *(v18 + 472) = off_2A1A90AA8;
    v18[3976] = 0;
    v21 = sub_297E577AC(v18, off_2A1A90AA8);
    v22 = v35;
    v35[3977] = v21;
    v20 = sub_297E5E830(v22, 0, 0);
    goto LABEL_32;
  }

  v17 = v35;
  if (v35)
  {
    if (a5 != 1)
    {
      sub_297E4E0B0(0, &v36, 3, 4u, "Stack already initialized");
      v18 = v35;
      v19 = v35 != 0;
      v20 = 50;
      goto LABEL_14;
    }

LABEL_19:
    *(v17 + 428) = a3;
    *(v17 + 469) = a4;
    v17[6522] = a5;
    *(v17 + 946) = 0;
    *(v17 + 1631) = v16;
    *(v17 + 816) = v13;
    *(v17 + 472) = off_2A1A90AA8;
    v17[3976] = 0;
    v24 = sub_297E577AC(v17, off_2A1A90AA8);
    v25 = v35;
    v26 = v36;
    v35[3977] = v24;
    *(v25 + 196) = v26;
    *(v25 + 186) = 0xFFFFFFFFFFFFLL;
    *(v25 + 117) = v25;
    *(v25 + 849) = v16;
    v27 = sub_297EBDBC4(v25 + 117);
    v28 = v35;
    if (v27)
    {
      sub_297E4E0B0(1, (v35 + 6524), 3, 1u, "phNciNfc_CoreInitialise failed!");
      phOsalNfc_FreeMemory();
      v35 = 0;
      sub_297E9F5D8(v36, 0);
      sub_297E9F688(v36, 0);
      v20 = 255;
      goto LABEL_32;
    }

    *(v35 + 474) = 0x300000003;
    *(v28 + 9) = a6;
    *(v28 + 20) = 0;
    v28[6616] = 0;
    v28[6656] = 0;
    *(v28 + 3330) = 0;
    *(v28 + 3141) = 0;
    *(v28 + 609) = 0xFFFFFFFFFFFFLL;
    if (a5 == 2)
    {
      BYTE5(v34) = 2;
      v33 = 0xF00000003;
      LODWORD(v34) = 58;
      sub_297E59AEC((v28 + 936), &v33, sub_297E70720, v28);
      BYTE5(v34) = 2;
      v33 = 3;
      LODWORD(v34) = 0;
      sub_297E59AEC((v35 + 936), &v33, sub_297E95BC8, v35);
      BYTE5(v34) = 2;
      v33 = 0x100000003;
      LODWORD(v34) = 33;
      sub_297E59AEC((v35 + 936), &v33, sub_297E70800, v35);
      BYTE5(v34) = 2;
      v33 = 0x100000003;
      LODWORD(v34) = 40;
      sub_297E59AEC((v35 + 936), &v33, sub_297E708A4, v35);
      BYTE5(v34) = 2;
      v33 = 0x100000003;
      LODWORD(v34) = 35;
      sub_297E59AEC((v35 + 936), &v33, sub_297E70948, v35);
      BYTE5(v34) = 2;
      v33 = 0x100000003;
      LODWORD(v34) = 44;
      sub_297E59AEC((v35 + 936), &v33, sub_297E70A38, v35);
      BYTE5(v34) = 2;
      v33 = 0x100000003;
      LODWORD(v34) = 36;
      sub_297E59AEC((v35 + 936), &v33, sub_297E70ADC, v35);
      BYTE5(v34) = 2;
      v33 = 0x100000003;
      LODWORD(v34) = 50;
      sub_297E59AEC((v35 + 936), &v33, sub_297E6F4F4, v35);
      BYTE5(v34) = 2;
      v33 = 0xF00000003;
      LODWORD(v34) = 50;
      sub_297E59AEC((v35 + 936), &v33, sub_297E50184, v35);
      BYTE5(v34) = 2;
      v33 = 0xF00000003;
      LODWORD(v34) = 3;
      sub_297E59AEC((v35 + 936), &v33, sub_297E71AC8, v35);
      v20 = sub_297E94FB0(v35);
      if (!v20)
      {
        v29 = phOsalNfc_Timer_Create();
        v30 = v35;
        *(v35 + 587) = v29;
        v20 = 12;
        v31 = "Notification Timer Create failed!!";
        if (v29 && v29 != 0xFFFFFFFFFFFFLL)
        {
          sub_297E4E0B0(1, (v30 + 6524), 3, 4u, "Notification Timer Created Successfully");
          if (!sub_297F00D78((v35 + 936), 255))
          {
            v20 = 13;
            goto LABEL_32;
          }

          v20 = 1;
          v31 = "phNciNfc_Initialise:Failed to Update Control Packet size";
          v30 = v35;
        }

        sub_297E4E0B0(1, (v30 + 6524), 3, 1u, v31);
        goto LABEL_31;
      }
    }

    else
    {
      v20 = sub_297E5E830(v28, 0, 0);
    }

    if (v20 == 13)
    {
      goto LABEL_32;
    }

LABEL_31:
    sub_297E4E0B0(1, (v35 + 6524), 3, 2u, "Init Sequence failed!");
    sub_297F0522C(v35);
    sub_297EBDFC0(v35);
    v35 = 0;
    goto LABEL_32;
  }

  v23 = sub_297F05010(v36);
  v35 = v23;
  if (v23)
  {
    v17 = v23;
    v13 = v36;
    goto LABEL_19;
  }

  v20 = 0;
LABEL_32:
  sub_297E4DFAC(0, &v36, 3, 5u, "phNciNfc_Initialise");
  return v20;
}

void *sub_297F05010(uint64_t a1)
{
  v16 = a1;
  v15 = 0;
  sub_297E4E1B4(0, &v16, 3, 5u, "phNciNfc_InitContext");
  v1 = sub_297E9F51C(v16, &v15);
  v2 = 0;
  v14 = 255;
  v3 = 1;
  while (1)
  {
    v4 = v3;
    v5 = &unk_2A18BDDC0 + 112 * v2;
    if (*v5 == v16)
    {
      break;
    }

    v3 = 0;
    v2 = 1;
    if ((v4 & 1) == 0)
    {
      goto LABEL_6;
    }
  }

  v14 = *(v5 + 2);
LABEL_6:
  if (!v1 && v15)
  {
    goto LABEL_19;
  }

  if (v1 || v15)
  {
    v7 = "Failed to retrieve NCI Context";
    v8 = &v16;
    Memory_Typed = 0;
LABEL_18:
    sub_297E4E0B0(Memory_Typed, v8, 3, 1u, v7);
    goto LABEL_19;
  }

  Memory_Typed = phOsalNfc_GetMemory_Typed();
  v15 = Memory_Typed;
  if (!Memory_Typed)
  {
    v7 = "phNciNfc_InitContext:Failed to allocate memory, insufficient resources";
    v8 = &v16;
    goto LABEL_18;
  }

  sub_297E966F4(1, &v14, 3, 4u, "####DriverHandle");
  sub_297E966F4(1, &v14, 3, 4u, "####NCI context");
  sub_297E966F4(1, &v14, 3, 4u, "####NCI CORE Context");
  if (sub_297E9F5D8(v16, v15))
  {
    v7 = "Failed to assign NCI context to INFRA layer";
    v8 = (v15 + 6524);
LABEL_17:
    Memory_Typed = 1;
    goto LABEL_18;
  }

  phOsalNfc_SetMemory();
  v9 = v15;
  *(v15 + 1631) = v14;
  sub_297F047BC(v9);
  v10 = v16;
  v11 = v15;
  v15[816] = v16;
  *(v11 + 936) = v11;
  if (sub_297E9F688(v10, v11 + 936))
  {
    v7 = "Failed to assign NCI CORE context to INFRA layer";
    v8 = &v14;
    goto LABEL_17;
  }

  if (v16)
  {
    v13 = v15;
    v15[196] = v16;
    *(v13 + 3396) = v14;
  }

LABEL_19:
  sub_297E4DFAC(0, &v16, 3, 5u, "phNciNfc_InitContext");
  return v15;
}

uint64_t sub_297F0522C(uint64_t a1)
{
  sub_297E4E1B4(2, a1, 3, 5u, "phNciNfc_FreeSendPayloadBuff");
  if (*(a1 + 896))
  {
    phOsalNfc_FreeMemory();
    *(a1 + 904) = 0;
    *(a1 + 888) = 0u;
  }

  return sub_297E4DFAC(2, a1, 3, 5u, "phNciNfc_FreeSendPayloadBuff");
}

uint64_t sub_297F052B0(uint64_t a1)
{
  v5 = 0;
  v1 = sub_297E9F51C(a1, &v5);
  v2 = v5;
  if (v5)
  {
    v3 = v1 == 0;
  }

  else
  {
    v3 = 0;
  }

  if (!v3)
  {
    sub_297E4E0B0(2, v5, 3, 1u, "phNciNfc_GetNciContext:Failed to allocate memory, insufficient resources");
    return v5;
  }

  return v2;
}

uint64_t sub_297F05308(uint64_t a1, uint64_t a2, uint64_t a3)
{
  sub_297E4E1B4(2, a1, 3, 5u, "phNciNfc_ReInitialise");
  if (a1)
  {
    if (a2)
    {
      *(a1 + 3424) = a2;
      *(a1 + 3752) = a3;
      *(a1 + 36) = 0;
      *(a1 + 40) = 256;
      *(a1 + 1488) = 0xFFFFFFFFFFFFLL;
      sub_297ED755C(a1);
      *(a1 + 6284) = 0;
      *(a1 + 4808) = 0;
      *(a1 + 3776) = off_2A1A90AA8;
      *(a1 + 3976) = 0;
      *(a1 + 3977) = sub_297E577AC(a1, off_2A1A90AA8);
      v6 = sub_297E5E830(a1, 0, 0);
      if (v6 != 13)
      {
        sub_297E4E0B0(1, a1 + 6524, 3, 2u, "Re-Initialize Sequence failed!");
      }
    }

    else
    {
      v6 = 1;
      sub_297E4E0B0(1, a1 + 6524, 3, 1u, "Stack not initialized");
    }
  }

  else
  {
    sub_297E4E0B0(2, 0, 3, 1u, "Stack not initialized");
    v6 = 49;
  }

  sub_297E4DFAC(2, a1, 3, 5u, "phNciNfc_ReInitialise");
  return v6;
}