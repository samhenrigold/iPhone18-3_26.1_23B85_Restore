uint64_t sub_297F05450(uint64_t a1, uint64_t a2, uint64_t a3)
{
  sub_297E4E1B4(2, a1, 3, 5u, "phNciNfc_GetFwInterfaceVersion");
  if (a1)
  {
    if (a2)
    {
      *(a1 + 896) = 0;
      *(a1 + 904) = 0;
      *(a1 + 3424) = a2;
      *(a1 + 3752) = a3;
      *(a1 + 3776) = off_2A1A90AD8;
      *(a1 + 3976) = 0;
      *(a1 + 3977) = sub_297E577AC(a1, off_2A1A90AD8);
      v6 = sub_297E5E830(a1, 0, 0);
      if (v6 != 13)
      {
        sub_297E4E0B0(1, a1 + 6524, 3, 4u, "Get FW interface version Sequence failed!");
        *(a1 + 896) = 0;
        *(a1 + 904) = 0;
      }
    }

    else
    {
      v6 = 1;
      sub_297E4E0B0(1, a1 + 6524, 3, 1u, "Invalid parameter passed(phNciNfc_GetFwInterfaceVersion)\n");
    }
  }

  else
  {
    sub_297E4E0B0(2, 0, 3, 1u, "Stack not initialized (phNciNfc_GetFwInterfaceVersion)\n");
    v6 = 49;
  }

  sub_297E4DFAC(2, a1, 3, 5u, "phNciNfc_GetFwInterfaceVersion");
  return v6;
}

uint64_t sub_297F05580(uint64_t a1, uint64_t a2, uint64_t a3)
{
  sub_297E4E1B4(2, a1, 3, 5u, "phNciNfc_Nfcee_StartDiscovery");
  if (a1)
  {
    if (a2)
    {
      Memory_Typed = phOsalNfc_GetMemory_Typed();
      if (Memory_Typed)
      {
        v7 = Memory_Typed;
        sub_297EBDF1C(a1);
        *(a1 + 4528) = 1;
        *v7 = 1;
        *(a1 + 896) = v7;
        *(a1 + 904) = 1;
        *(a1 + 3424) = a2;
        *(a1 + 3752) = a3;
        *(a1 + 3776) = off_2A1A92838;
        *(a1 + 3976) = 0;
        *(a1 + 3977) = sub_297E577AC(a1, off_2A1A92838);
        v8 = sub_297EBA944(a1, 0, 0);
        if (v8 != 13)
        {
          sub_297E4E0B0(1, a1 + 6524, 3, 2u, "Nfcee Discover Sequence failed!");
          phOsalNfc_FreeMemory();
          *(a1 + 896) = 0;
          *(a1 + 904) = 0;
        }
      }

      else
      {
        sub_297E4E0B0(1, a1 + 6524, 3, 1u, "Memory not available(phNciNfc_Nfcee_StartDiscovery)\n");
        v8 = 12;
      }
    }

    else
    {
      v8 = 1;
      sub_297E4E0B0(1, a1 + 6524, 3, 1u, "Invalid upper call back function (phNciNfc_Nfcee_StartDiscovery)\n");
    }
  }

  else
  {
    sub_297E4E0B0(2, 0, 3, 1u, "Stack not initialized (phNciNfc_Nfcee_StartDiscovery)\n");
    v8 = 49;
  }

  sub_297E4DFAC(2, a1, 3, 5u, "phNciNfc_Nfcee_StartDiscovery");
  return v8;
}

uint64_t sub_297F05720(uint64_t a1, uint64_t a2, uint64_t a3)
{
  sub_297E4E1B4(2, a1, 3, 5u, "phNciNfc_Nfcee_StopDiscovery");
  if (a1)
  {
    if (a2)
    {
      Memory_Typed = phOsalNfc_GetMemory_Typed();
      if (Memory_Typed)
      {
        *(a1 + 4528) = 0;
        *Memory_Typed = 0;
        *(a1 + 896) = Memory_Typed;
        *(a1 + 904) = 1;
        *(a1 + 3424) = a2;
        *(a1 + 3752) = a3;
        *(a1 + 3776) = off_2A1A92838;
        *(a1 + 3976) = 0;
        *(a1 + 3977) = sub_297E577AC(a1, off_2A1A92838);
        v7 = sub_297EBA944(a1, 0, 0);
        if (v7 != 13)
        {
          sub_297E4E0B0(1, a1 + 6524, 3, 2u, "Nfcee Discover Sequence failed!");
          phOsalNfc_FreeMemory();
          *(a1 + 896) = 0;
          *(a1 + 904) = 0;
        }
      }

      else
      {
        sub_297E4E0B0(1, a1 + 6524, 3, 1u, "Memory not available(phNciNfc_Nfcee_StopDiscovery)\n");
        v7 = 12;
      }
    }

    else
    {
      v7 = 1;
      sub_297E4E0B0(1, a1 + 6524, 3, 1u, "Invalid upper call back function (phNciNfc_Nfcee_StopDiscovery)\n");
    }
  }

  else
  {
    sub_297E4E0B0(2, 0, 3, 1u, "Stack not initialized (phNciNfc_Nfcee_StopDiscovery)\n");
    v7 = 49;
  }

  sub_297E4DFAC(2, a1, 3, 5u, "phNciNfc_Nfcee_StopDiscovery");
  return v7;
}

uint64_t sub_297F058B8(uint64_t a1, uint64_t a2, unsigned int a3, uint64_t a4, uint64_t a5)
{
  sub_297E4E1B4(2, a1, 3, 5u, "phNciNfc_Nfcee_ModeSet");
  if (!a1)
  {
    sub_297E4E0B0(2, 0, 3, 1u, "Stack not initialized (phNciNfc_Nfcee_ModeSet)\n");
    v10 = 49;
    goto LABEL_14;
  }

  if (a3 > 1 || !a4)
  {
    v10 = 1;
    sub_297E4E0B0(1, a1 + 6524, 3, 1u, "Invalid parameter passed(phNciNfc_Nfcee_ModeSet)\n");
    goto LABEL_14;
  }

  if (!a2)
  {
    Memory_Typed = phOsalNfc_GetMemory_Typed();
    if (Memory_Typed)
    {
      *(a1 + 3988) = a3;
      *(a1 + 3992) = 0;
      *Memory_Typed = 0;
      Memory_Typed[1] = a3;
      *(a1 + 896) = Memory_Typed;
      *(a1 + 904) = 2;
      *(a1 + 3424) = a4;
      *(a1 + 3752) = a5;
      *(a1 + 3776) = off_2A1A92818;
      *(a1 + 3976) = 0;
      *(a1 + 3977) = sub_297E577AC(a1, off_2A1A92818);
      v10 = sub_297EBAFC4(a1, 0, 0);
      if (v10 == 13)
      {
        goto LABEL_14;
      }

      sub_297E4E0B0(1, a1 + 6524, 3, 2u, "Nfcee ModeSet Sequence failed!");
LABEL_22:
      phOsalNfc_FreeMemory();
      *(a1 + 896) = 0;
      goto LABEL_14;
    }

    v15 = a1 + 6524;
LABEL_20:
    sub_297E4E0B0(1, v15, 3, 1u, "Memory not available(phNciNfc_Nfcee_ModeSet)\n");
    v10 = 12;
    goto LABEL_14;
  }

  v10 = 1;
  if (!*(a2 + 1) || *(a2 + 1) == 255)
  {
    goto LABEL_14;
  }

  v11 = phOsalNfc_GetMemory_Typed();
  if (!v11)
  {
    v15 = a1 + 6524;
    goto LABEL_20;
  }

  *(a1 + 3988) = a3;
  *(a1 + 3992) = a2;
  *v11 = *(a2 + 1);
  v11[1] = a3;
  *(a1 + 896) = v11;
  *(a1 + 904) = 2;
  *(a1 + 6480) = 0;
  *(a1 + 3776) = off_2A1A92818;
  *(a1 + 3976) = 0;
  *(a1 + 3977) = sub_297E577AC(a1, off_2A1A92818);
  v12 = sub_297EBAFC4(a1, 0, 0);
  if (v12 != 13)
  {
    v10 = v12;
    sub_297E4E0B0(1, a1 + 6524, 3, 2u, "Nfcee ModeSet Sequence failed!");
    goto LABEL_22;
  }

  *(a1 + 3424) = a4;
  *(a1 + 3752) = a5;
  if (a3 == 1 && *(a2 + 1) == 1)
  {
    *(a1 + 816) = 0;
    *(a1 + 824) = 0;
  }

  else
  {
    *(a1 + 816) = a4;
    *(a1 + 824) = a5;
  }

  v10 = 13;
LABEL_14:
  sub_297E4DFAC(2, a1, 3, 5u, "phNciNfc_Nfcee_ModeSet");
  return v10;
}

uint64_t sub_297F05B7C(uint64_t a1, int a2, uint64_t a3, uint64_t a4)
{
  sub_297E4E1B4(2, a1, 3, 5u, "phNciNfc_SetPowerMode");
  if (a1)
  {
    if (a3)
    {
      Memory_Typed = phOsalNfc_GetMemory_Typed();
      if (Memory_Typed)
      {
        *(a1 + 3404) = a2;
        *Memory_Typed = a2;
        *(a1 + 896) = Memory_Typed;
        *(a1 + 904) = 1;
        *(a1 + 3424) = a3;
        *(a1 + 3752) = a4;
        *(a1 + 3776) = off_2A1A90B38;
        *(a1 + 3976) = 0;
        *(a1 + 3977) = sub_297E577AC(a1, off_2A1A90B38);
        v9 = sub_297E94F1C(a1, 0, 0);
        if (v9 != 13)
        {
          sub_297E4E0B0(1, a1 + 6524, 3, 4u, "Set/Reset Standby mode Sequence failed!");
          phOsalNfc_FreeMemory();
          *(a1 + 896) = 0;
          *(a1 + 904) = 0;
        }
      }

      else
      {
        sub_297E4E0B0(1, a1 + 6524, 3, 1u, "Memory not available(phNciNfc_SetPowerMode)\n");
        v9 = 12;
      }
    }

    else
    {
      v9 = 1;
      sub_297E4E0B0(1, a1 + 6524, 3, 1u, "Invalid parameter passed(phNciNfc_SetPowerMode)\n");
    }
  }

  else
  {
    sub_297E4E0B0(2, 0, 3, 1u, "Stack not initialized (phNciNfc_SetPowerMode)\n");
    v9 = 49;
  }

  sub_297E4DFAC(2, a1, 3, 5u, "phNciNfc_SetPowerMode");
  return v9;
}

uint64_t sub_297F05D1C(uint64_t a1, unsigned int a2, uint64_t a3, uint64_t a4)
{
  sub_297E4E1B4(2, a1, 3, 5u, "phNciNfc_PropConfigHsuBr");
  if (!a1)
  {
    sub_297E4E0B0(2, 0, 3, 1u, "Stack not initialized (phNciNfc_SetPowerMode)\n");
    v9 = 49;
    goto LABEL_11;
  }

  if (!a3)
  {
    v10 = "Invalid parameter passed(phNciNfc_SetPowerMode)\n";
    v9 = 1;
    v11 = 2;
    v12 = a1;
LABEL_10:
    sub_297E4E0B0(v11, v12, 3, 1u, v10);
    goto LABEL_11;
  }

  Memory_Typed = phOsalNfc_GetMemory_Typed();
  *(a1 + 4816) = Memory_Typed;
  if (!Memory_Typed)
  {
    sub_297E4E0B0(1, a1 + 6524, 3, 1u, "Memory not available(Config HSU Br)\n");
    v9 = 12;
    goto LABEL_11;
  }

  if (a2 > 9)
  {
    v10 = "Invalid Baud rate";
    v9 = 1;
    v12 = a1 + 6524;
    v11 = 1;
    goto LABEL_10;
  }

  phOsalNfc_MemCopy();
  *(a1 + 896) = *(a1 + 4816);
  *(a1 + 904) = 8;
  *(a1 + 3424) = a3;
  *(a1 + 3752) = a4;
  *(a1 + 3776) = off_2A1A90B58;
  *(a1 + 3976) = 0;
  *(a1 + 3977) = sub_297E577AC(a1, off_2A1A90B58);
  v9 = sub_297E5E830(a1, 0, 0);
  if (v9 != 13)
  {
    sub_297E4E0B0(1, a1 + 6524, 3, 2u, "Configure HSU BR Sequence failed!");
    phOsalNfc_FreeMemory();
    *(a1 + 896) = 0;
  }

LABEL_11:
  sub_297E4DFAC(2, a1, 3, 5u, "phNciNfc_PropConfigHsuBr");
  return v9;
}

uint64_t sub_297F05F30(uint64_t a1, uint64_t a2, uint64_t a3)
{
  sub_297E4E1B4(2, a1, 3, 5u, "phNciNfc_GetMultiTagInfo");
  if (a1)
  {
    if (a2)
    {
      *(a1 + 3424) = a2;
      *(a1 + 3752) = a3;
      *(a1 + 3776) = off_2A1A90B78;
      *(a1 + 3976) = 0;
      *(a1 + 3977) = sub_297E577AC(a1, off_2A1A90B78);
      v6 = sub_297E5E830(a1, 0, 0);
      if (v6 != 13)
      {
        sub_297E4E0B0(1, a1 + 6524, 3, 2u, "Get Multi tag Info Sequence failed!");
      }
    }

    else
    {
      v6 = 1;
      sub_297E4E0B0(1, a1 + 6524, 3, 1u, "Invalid parameter passed(phNciNfc_GetMultiTagInfo)\n");
    }
  }

  else
  {
    sub_297E4E0B0(2, 0, 3, 1u, "Stack not initialized (phNciNfc_GetMultiTagInfo)\n");
    v6 = 49;
  }

  sub_297E4DFAC(2, a1, 3, 5u, "phNciNfc_GetMultiTagInfo");
  return v6;
}

uint64_t sub_297F06050(uint64_t a1, uint64_t a2, uint64_t a3)
{
  sub_297E4E1B4(2, a1, 3, 5u, "phNciNfc_ClrMultiTagInfo");
  if (a1)
  {
    if (a2)
    {
      *(a1 + 3424) = a2;
      *(a1 + 3752) = a3;
      *(a1 + 3776) = off_2A1A90B98;
      *(a1 + 3976) = 0;
      *(a1 + 3977) = sub_297E577AC(a1, off_2A1A90B98);
      v6 = sub_297E5E830(a1, 0, 0);
      if (v6 != 13)
      {
        sub_297E4E0B0(1, a1 + 6524, 3, 2u, "Clear Multi tag List Sequence failed!");
      }
    }

    else
    {
      v6 = 1;
      sub_297E4E0B0(1, a1 + 6524, 3, 1u, "Invalid parameter passed(phNciNfc_PropConfigClrMultiTag)\n");
    }
  }

  else
  {
    sub_297E4E0B0(2, 0, 3, 1u, "Stack not initialized (phNciNfc_PropConfigClrMultiTag)\n");
    v6 = 49;
  }

  sub_297E4DFAC(2, a1, 3, 5u, "phNciNfc_ClrMultiTagInfo");
  return v6;
}

uint64_t sub_297F06170(void *a1, int a2, uint64_t a3, uint64_t a4)
{
  sub_297E4E1B4(2, a1, 3, 5u, "phNciNfc_RegisterNotification");
  if (a1)
  {
    if (a3)
    {
      v8 = 0;
      switch(a2)
      {
        case 1:
          v8 = 0;
          a1[26] = a4;
          a1[27] = a3;
          break;
        case 2:
          v8 = 0;
          a1[28] = a4;
          a1[29] = a3;
          break;
        case 3:
          v8 = 0;
          a1[23] = a4;
          a1[24] = a3;
          break;
        case 4:
          v8 = 0;
          a1[30] = a4;
          a1[31] = a3;
          break;
        case 5:
          v8 = 0;
          a1[34] = a4;
          a1[35] = a3;
          break;
        case 7:
          v8 = 0;
          a1[36] = a4;
          a1[37] = a3;
          break;
        case 8:
          v8 = 0;
          a1[38] = a4;
          a1[39] = a3;
          break;
        case 9:
          v8 = 0;
          a1[40] = a4;
          a1[41] = a3;
          break;
        case 10:
          v8 = 0;
          a1[48] = a4;
          a1[49] = a3;
          break;
        case 11:
          v8 = 0;
          a1[32] = a4;
          a1[33] = a3;
          break;
        case 13:
          v8 = 0;
          a1[50] = a4;
          a1[51] = a3;
          break;
        case 14:
          v8 = 0;
          a1[52] = a4;
          a1[53] = a3;
          break;
        case 16:
          v8 = 0;
          a1[56] = a4;
          a1[57] = a3;
          break;
        case 17:
          v8 = 0;
          a1[58] = a4;
          a1[59] = a3;
          break;
        case 18:
          v8 = 0;
          a1[62] = a4;
          a1[63] = a3;
          break;
        case 19:
          v8 = 0;
          a1[69] = a3;
          a1[68] = a4;
          break;
        case 20:
          v8 = 0;
          a1[71] = a3;
          a1[70] = a4;
          break;
        case 21:
          v8 = 0;
          a1[73] = a3;
          a1[72] = a4;
          break;
        case 23:
          v8 = 0;
          a1[42] = a4;
          a1[43] = a3;
          break;
        case 24:
          v8 = 0;
          a1[46] = a4;
          a1[47] = a3;
          break;
        case 26:
          v8 = 0;
          a1[67] = a3;
          a1[66] = a4;
          break;
        case 27:
          v8 = 0;
          a1[60] = a4;
          a1[61] = a3;
          break;
        case 28:
          v8 = 0;
          a1[79] = a3;
          a1[78] = a4;
          break;
        case 29:
          v8 = 0;
          a1[44] = a4;
          a1[45] = a3;
          break;
        case 30:
          v8 = 0;
          a1[81] = a3;
          a1[80] = a4;
          break;
        case 31:
          v8 = 0;
          a1[91] = a3;
          a1[90] = a4;
          break;
        case 32:
          v8 = 0;
          a1[83] = a3;
          a1[82] = a4;
          break;
        case 33:
          v8 = 0;
          a1[93] = a3;
          a1[92] = a4;
          break;
        case 34:
          v8 = 0;
          a1[84] = a3;
          a1[85] = a4;
          break;
        case 35:
          v8 = 0;
          a1[87] = a3;
          a1[86] = a4;
          break;
        case 36:
          v8 = 0;
          a1[89] = a3;
          a1[88] = a4;
          break;
        case 37:
          v8 = 0;
          a1[95] = a3;
          a1[94] = a4;
          break;
        case 38:
          v8 = 0;
          a1[65] = a3;
          a1[64] = a4;
          break;
        default:
          break;
      }
    }

    else
    {
      v8 = 1;
      sub_297E4E0B0(1, a1 + 6524, 3, 1u, "Invalid input parameter");
    }
  }

  else
  {
    sub_297E4E0B0(2, 0, 3, 1u, "Nci stack not initialized");
    v8 = 49;
  }

  sub_297E4DFAC(2, a1, 3, 5u, "phNciNfc_RegisterNotification");
  return v8;
}

uint64_t sub_297F0642C(void *a1, int a2, uint64_t a3, uint64_t a4)
{
  sub_297E4E1B4(2, a1, 3, 5u, "phNciNfc_NfccRegNtfBeforeNciResetCmd");
  if (a1)
  {
    if (a3)
    {
      v8 = 1;
      switch(a2)
      {
        case 4:
          v8 = 0;
          a1[30] = a4;
          a1[31] = a3;
          break;
        case 5:
          v8 = 0;
          a1[34] = a4;
          a1[35] = a3;
          break;
        case 9:
          v8 = 0;
          a1[40] = a4;
          a1[41] = a3;
          break;
        case 14:
          v8 = 0;
          a1[52] = a4;
          a1[53] = a3;
          break;
        case 15:
          v8 = 0;
          a1[54] = a4;
          a1[55] = a3;
          break;
        case 19:
          v8 = 0;
          a1[69] = a3;
          a1[68] = a4;
          break;
        case 20:
          v8 = 0;
          a1[71] = a3;
          a1[70] = a4;
          break;
        case 22:
          v8 = 0;
          a1[75] = a3;
          a1[74] = a4;
          break;
        case 23:
          v8 = 0;
          a1[42] = a4;
          a1[43] = a3;
          break;
        case 25:
          v8 = 0;
          a1[77] = a3;
          a1[76] = a4;
          break;
        case 29:
          v8 = 0;
          a1[44] = a4;
          a1[45] = a3;
          break;
        case 30:
          v8 = 0;
          a1[81] = a3;
          a1[80] = a4;
          break;
        case 31:
          v8 = 0;
          a1[91] = a3;
          a1[90] = a4;
          break;
        case 32:
          v8 = 0;
          a1[83] = a3;
          a1[82] = a4;
          break;
        case 33:
          v8 = 0;
          a1[93] = a3;
          a1[92] = a4;
          break;
        default:
          break;
      }
    }

    else
    {
      v8 = 1;
      sub_297E4E0B0(1, a1 + 6524, 3, 1u, "Invalid input parameter");
    }
  }

  else
  {
    sub_297E4E0B0(2, 0, 3, 1u, "Nci stack not initialized");
    v8 = 49;
  }

  sub_297E4DFAC(2, a1, 3, 5u, "phNciNfc_NfccRegNtfBeforeNciResetCmd");
  return v8;
}

uint64_t sub_297F065F8(uint64_t a1, uint64_t a2, char a3, uint64_t a4, uint64_t a5)
{
  sub_297E4E1B4(2, a1, 3, 5u, "phNciNfc_Connect");
  if (a1)
  {
    if (a2 && a4 && *(a2 + 8) && *(a2 + 8) != 255)
    {
      Memory_Typed = phOsalNfc_GetMemory_Typed();
      if (Memory_Typed)
      {
        *Memory_Typed = *(a2 + 8);
        Memory_Typed[1] = *(a2 + 16);
        Memory_Typed[2] = a3;
        *(a1 + 160) = Memory_Typed;
        *(a1 + 168) = 3;
        *(a1 + 3424) = a4;
        *(a1 + 3752) = a5;
        *(a1 + 3776) = off_2A1A907D8;
        *(a1 + 3976) = 0;
        *(a1 + 3977) = sub_297E577AC(a1, off_2A1A907D8);
        v10 = sub_297E779EC(a1, 0, 0);
        if (v10 != 13)
        {
          sub_297E4E0B0(1, a1 + 6524, 3, 2u, "Connect Sequence failed!");
          phOsalNfc_FreeMemory();
          *(a1 + 160) = 0;
          *(a1 + 3424) = 0;
          *(a1 + 3752) = 0;
        }
      }

      else
      {
        sub_297E4E0B0(1, a1 + 6524, 3, 1u, "Memory not available(phNciNfc_Connect)\n");
        v10 = 12;
      }
    }

    else
    {
      v10 = 1;
      sub_297E4E0B0(1, a1 + 6524, 3, 1u, "Invalid parameter passed(phNciNfc_Connect)\n");
    }
  }

  else
  {
    sub_297E4E0B0(2, 0, 3, 1u, "Stack not initialized (phNciNfc_Connect)\n");
    v10 = 49;
  }

  sub_297E4DFAC(2, a1, 3, 5u, "phNciNfc_Connect");
  return v10;
}

uint64_t sub_297F067C4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v7 = a3;
  sub_297E4E1B4(2, a1, 3, 5u, "phNciNfc_GetConfigRaw");
  if (a1)
  {
    if (a2 && v7)
    {
      Memory_Typed = phOsalNfc_GetMemory_Typed();
      *(a1 + 896) = Memory_Typed;
      if (Memory_Typed)
      {
        phOsalNfc_MemCopy();
        *(a1 + 3424) = a4;
        *(a1 + 3752) = a5;
        *(a1 + 3776) = off_2A1A93C20;
        *(a1 + 3976) = 0;
        *(a1 + 3977) = sub_297E577AC(a1, off_2A1A93C20);
        *(a1 + 904) = v7;
        v11 = sub_297E5DF3C(a1, 0, 0);
        if (v11 != 13)
        {
          sub_297E4E0B0(1, a1 + 6524, 3, 2u, "Get Config Raw Sequence failed!");
          phOsalNfc_FreeMemory();
          *(a1 + 896) = 0;
          *(a1 + 904) = 0;
        }
      }

      else
      {
        sub_297E4E0B0(1, a1 + 6524, 3, 2u, "Get Config Raw - memory allocation failed");
        v11 = 31;
      }
    }

    else
    {
      v11 = 1;
      sub_297E4E0B0(1, a1 + 6524, 3, 1u, "Invalid parameters");
    }
  }

  else
  {
    sub_297E4E0B0(2, 0, 3, 1u, "Stack not initialized");
    v11 = 49;
  }

  sub_297E4DFAC(2, a1, 3, 5u, "phNciNfc_GetConfigRaw");
  return v11;
}

uint64_t sub_297F06968(uint64_t a1, uint64_t a2, int a3, uint64_t a4, uint64_t a5)
{
  sub_297E4E1B4(2, a1, 3, 5u, "phNciNfc_GetTransitionValue");
  if (a1)
  {
    if (a2 && a3 == 2)
    {
      *(a1 + 896) = phOsalNfc_GetMemory_Typed();
      phOsalNfc_MemCopy();
      *(a1 + 3424) = a4;
      *(a1 + 3752) = a5;
      *(a1 + 3776) = off_2A1A93CC0;
      *(a1 + 3976) = 0;
      *(a1 + 3977) = sub_297E577AC(a1, off_2A1A93CC0);
      *(a1 + 904) = 2;
      v10 = sub_297E5DF3C(a1, 0, 0);
      if (v10 != 13)
      {
        sub_297E4E0B0(1, a1 + 6524, 3, 1u, "Get transition Sequence failed!");
        phOsalNfc_FreeMemory();
        *(a1 + 904) = 0;
        *(a1 + 896) = 0;
      }
    }

    else
    {
      v10 = 1;
      sub_297E4E0B0(1, a1 + 6524, 3, 1u, "Invalid parameters");
    }
  }

  else
  {
    sub_297E4E0B0(2, 0, 3, 1u, "Stack not initialized");
    v10 = 49;
  }

  sub_297E4DFAC(2, a1, 3, 5u, "phNciNfc_GetTransitionValue");
  return v10;
}

uint64_t sub_297F06AE8(uint64_t a1, unsigned int a2, int *a3)
{
  memset(v11, 0, sizeof(v11));
  v10 = 0;
  sub_297E4E1B4(2, a1, 3, 5u, "phNciNfc_VerifyRtngTableConfig");
  if (a1)
  {
    if (!a3)
    {
      v6 = "Invalid parameters";
      goto LABEL_8;
    }

    if (!a2)
    {
      sub_297E4E0B0(1, a1 + 6524, 3, 1u, "No entries");
      v7 = 255;
      goto LABEL_13;
    }

    if (sub_297F02DF4(a1, a2, a3, &v10))
    {
      v6 = "Input parameter validation failed";
LABEL_8:
      v7 = 1;
LABEL_9:
      sub_297E4E0B0(1, a1 + 6524, 3, 1u, v6);
      goto LABEL_13;
    }

    if (v10 > *(a1 + 14))
    {
      sub_297E4E0B0(1, a1 + 6524, 3, 1u, "Input Routing config size exceeds Max routing table size                                     supported by NFCC");
      v7 = 139;
      goto LABEL_13;
    }

    v9 = sub_297F06C90(a1, v11);
    if (v9)
    {
      v7 = v9;
      v6 = "Failed to get NFCC features!";
      goto LABEL_9;
    }

    v7 = sub_297F034C0(a1, v11, a2, a3);
    if (!v7)
    {
      *(a1 + 914) = a2;
      *(a1 + 4688) = a3;
    }
  }

  else
  {
    sub_297E4E0B0(2, 0, 3, 1u, "Stack not initialized");
    v7 = 49;
  }

LABEL_13:
  sub_297E4DFAC(2, a1, 3, 5u, "phNciNfc_VerifyRtngTableConfig");
  return v7;
}

uint64_t sub_297F06C90(uint64_t a1, uint64_t a2)
{
  sub_297E4E1B4(2, a1, 3, 5u, "phNciNfc_GetNfccFeatures");
  if (a1)
  {
    if (a2)
    {
      v4 = 0;
      v5 = *a2 & 0xFB | (4 * (*a1 & 1));
      *a2 = v5;
      *a2 = v5 & 0xFC | (*a1 >> 1) & 3;
      v6 = *(a2 + 4) & 0xFB | (4 * ((*(a1 + 1) >> 1) & 1));
      *(a2 + 4) = v6;
      v7 = v6 & 0xFFFFFFFD | (2 * ((*(a1 + 1) >> 2) & 1));
      *(a2 + 4) = v7;
      *(a2 + 4) = v7 & 0xFE | ((*(a1 + 1) & 8) != 0);
      LOBYTE(v7) = *(a2 + 8) & 0xFD | (2 * (*(a1 + 2) & 1));
      *(a2 + 8) = v7;
      *(a2 + 8) = v7 & 0xFE | ((*(a1 + 2) & 2) != 0);
      *(a2 + 12) = *(a1 + 21);
      *(a2 + 16) = *(a1 + 25);
      *(a2 + 17) = *(a1 + 28);
      *(a2 + 18) = *(a1 + 3);
      *(a2 + 20) = *(a1 + 14) - 5;
    }

    else
    {
      v4 = 1;
      sub_297E4E0B0(1, a1 + 6524, 3, 1u, "Invalid input parameters!");
    }
  }

  else
  {
    sub_297E4E0B0(2, 0, 3, 1u, "Stack not initialized");
    v4 = 49;
  }

  sub_297E4DFAC(2, a1, 3, 5u, "phNciNfc_GetNfccFeatures");
  return v4;
}

uint64_t sub_297F06DE4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  sub_297E4E1B4(2, a1, 3, 5u, "phNciNfc_GetRtngTableConfig");
  if (a1)
  {
    if (a2)
    {
      if (*(a1 + 14))
      {
        *(a1 + 3424) = a2;
        *(a1 + 3752) = a3;
        *(a1 + 3776) = off_2A1A93C60;
        *(a1 + 3976) = 0;
        *(a1 + 3977) = sub_297E577AC(a1, off_2A1A93C60);
        v6 = sub_297F01AB0(a1, 0, 0);
        if (v6 != 13)
        {
          sub_297E4E0B0(1, a1 + 6524, 3, 2u, "Get Rtng Config Sequence failed!");
          sub_297F0522C(a1);
        }
      }

      else
      {
        sub_297E4E0B0(1, a1 + 6524, 3, 1u, "Max Rtng table size is '0', can not read Rtng table!");
        v6 = 255;
      }
    }

    else
    {
      v6 = 1;
      sub_297E4E0B0(1, a1 + 6524, 3, 1u, "Invalid parameters");
    }
  }

  else
  {
    sub_297E4E0B0(2, 0, 3, 1u, "Stack not initialized");
    v6 = 49;
  }

  sub_297E4DFAC(2, a1, 3, 5u, "phNciNfc_GetRtngTableConfig");
  return v6;
}

uint64_t sub_297F06F3C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v21 = 0;
  sub_297E4E1B4(2, a1, 3, 5u, "phNciNfc_Transceive");
  if (!a1)
  {
    sub_297E4E0B0(2, 0, 3, 1u, "Stack not initialized (phNciNfc_Transceive)\n");
    v15 = 49;
    goto LABEL_28;
  }

  if (!a2 || !a3 || !a4)
  {
    v15 = 1;
    sub_297E4E0B0(1, a1 + 6524, 3, 1u, "Invalid parameters (phNciNfc_Transceive)\n");
    goto LABEL_28;
  }

  if (!*(a3 + 16) || !*(a3 + 24))
  {
    v16 = " Invalid Send Buff Params. (phNciNfc_Transceive)\n";
LABEL_27:
    v15 = 1;
    sub_297E4E0B0(1, a1 + 6524, 3, 4u, v16);
    goto LABEL_28;
  }

  if ((!*(a3 + 32) || !*(a3 + 40)) && *a3 != 4)
  {
    v16 = "phNciNfc_Transceive:Invalid Receive Buff Params";
    goto LABEL_27;
  }

  if (*(a3 + 6) <= 0x12Bu)
  {
    *(a3 + 6) = 300;
    sub_297E50EBC(1, a1 + 6524, 3, 4u, "Input timeout is less than default, hence using default timeout: ");
  }

  v10 = *(a1 + 4552);
  if (!v10)
  {
    goto LABEL_42;
  }

  if (*(v10 + 12) != 1 || *(v10 + 16))
  {
    v11 = *(v10 + 4);
    if (v11 > 15)
    {
      if (v11 != 16)
      {
        if (v11 != 18)
        {
          goto LABEL_35;
        }

        v14 = sub_297E9B8A8(a1, a3);
        goto LABEL_33;
      }

      v12 = *(v10 + 109);
    }

    else
    {
      if ((v11 - 5) >= 3 && v11 != 3)
      {
        goto LABEL_35;
      }

      v12 = *(v10 + 108);
    }

    v13 = (1 << (v12 >> 4)) * 302.064897 / 1000.0;
    if (v13 >= 0x54)
    {
      v14 = 19896;
    }

    else
    {
      v14 = 236 * v13 + 100;
    }

    if ((v14 & 0xFFFCu) <= 0x7CF)
    {
      sub_297E50EBC(1, a1 + 6524, 3, 4u, "FWT timeout is less than default, hence using default timeout: ");
      v14 = 2000;
    }

LABEL_33:
    if (*(a3 + 6) < v14)
    {
      *(a3 + 6) = v14;
      sub_297E50EBC(1, a1 + 6524, 3, 4u, "Transceive timeout is greater then default, value ");
    }
  }

LABEL_35:
  sub_297E50EBC(1, a1 + 6524, 3, 4u, "Transceive timeout value  ");
  if (*(*(a1 + 4552) + 4) == 20 && *a3 == 1)
  {
    sub_297E5A304(*(a1 + 6524), *(a1 + 4696));
    *(a1 + 6512) = 0;
    sub_297E687D8(1, a1 + 6524, *(a1 + 4696), 3, 4u, "phNciNfc_Transceive");
    v18 = *(a3 + 8);
    if (v18 >= 0xA)
    {
      if (v18 < 0x33)
      {
        goto LABEL_42;
      }

      v19 = 50;
    }

    else
    {
      v19 = 20;
    }

    *(a3 + 8) = v19;
  }

LABEL_42:
  v15 = sub_297E8BB50(a1, a2, &v21);
  if (!v15)
  {
    v20 = v21;
    if (v21)
    {
      *(a1 + 4560) = *a3;
      *(a1 + 4564) = *(a3 + 4);
      *(a1 + 4576) = *(a3 + 16);
      *(a1 + 4592) = *(a3 + 32);
      *(a1 + 4566) = *(a3 + 6);
      *(a1 + 3968) = v20;
      *(a1 + 896) = *(a3 + 16);
      *(a1 + 904) = *(a3 + 24);
      *(a1 + 3776) = off_2A1A93CE0;
      *(a1 + 3976) = 0;
      *(a1 + 3977) = sub_297E577AC(a1, off_2A1A93CE0);
      v15 = sub_297E5E830(a1, 0, 0);
      if (v15 == 13)
      {
        *(a1 + 4616) = a4;
        *(a1 + 4624) = a5;
      }

      else
      {
        *(a1 + 896) = 0;
      }
    }

    else
    {
      *(a1 + 6672) = 1;
      *(a1 + 6676) = 0;
      *(a1 + 6680) = *(a3 + 6);
      v15 = sub_297EFF0B0(a1, a2, a3, a4, a5);
      if (v15 != 13)
      {
        *(a1 + 6672) = 0;
        *(a1 + 6676) = 0;
      }
    }
  }

LABEL_28:
  sub_297E4DFAC(2, a1, 3, 5u, "phNciNfc_Transceive");
  return v15;
}

uint64_t sub_297F07378(uint64_t a1, uint64_t a2, int a3, uint64_t a4, uint64_t a5)
{
  v26 = 0;
  v24 = 0;
  v25 = 0;
  sub_297E4E1B4(2, a1, 3, 5u, "phNciNfc_RegUnRegSeEvent");
  if (!a1)
  {
    goto LABEL_6;
  }

  v10 = 0;
  v11 = 0;
  do
  {
    v12 = *(&unk_2A18BDDC0 + 14 * v11 + 4);
    if (v10)
    {
      break;
    }

    v10 = 1;
    v11 = 1;
  }

  while (v12 != a1);
  if (v12 != a1)
  {
LABEL_6:
    sub_297E4E0B0(2, a1, 3, 1u, "Stack not initialized (phNciNfc_RegUnRegSeEvent)");
    v13 = 49;
    goto LABEL_7;
  }

  if (!a2 || !a4)
  {
    v13 = 1;
    sub_297E4E0B0(1, a1 + 6524, 3, 1u, "Invalid parameters (phNciNfc_RegUnRegSeEvent)");
    goto LABEL_7;
  }

  v13 = sub_297E8BB50(a1, a2, &v26);
  if (!v13)
  {
    v15 = (a1 + 4712);
    if (a3)
    {
      v27 = *(a1 + 6528);
      sub_297E4E1B4(0, &v27, 3, 5u, "phLibNfc_GetRegisteredSlotIndex");
      v16 = 0;
      v17 = 1;
      while (1)
      {
        v18 = v17;
        v19 = &v15[32 * v16];
        if (*v19 == 1 && *(v19 + 1) == a2)
        {
          break;
        }

        v17 = 0;
        v16 = 1;
        if ((v18 & 1) == 0)
        {
          sub_297E4E0B0(0, &v27, 3, 4u, "phLibNfc_GetAvailableSlotIndex: Registration not found");
          sub_297E4DFAC(0, &v27, 3, 5u, "phLibNfc_GetRegisteredSlotIndex");
          sub_297E4E0B0(1, a1 + 6524, 3, 4u, "phNciNfc_RegUnRegSeEvent: No registration found!");
          goto LABEL_28;
        }
      }

      sub_297E4DFAC(0, &v27, 3, 5u, "phLibNfc_GetRegisteredSlotIndex");
      sub_297E4E0B0(1, a1 + 6524, 3, 4u, "phNciNfc_RegUnRegSeEvent: Un-registering SE event");
      BYTE4(v25) = v26;
      LODWORD(v24) = 0;
      if (!sub_297F00C28(a1 + 936, &v24, a4))
      {
        v13 = 0;
        *v19 = 0;
        *(v19 + 2) = 0;
        *(v19 + 3) = 0;
        *(v19 + 1) = 0;
        goto LABEL_7;
      }

      v20 = "phNciNfc_RegUnRegSeEvent: Failed to unregister with Nci core";
      v21 = a1 + 6524;
      goto LABEL_27;
    }

    v27 = *(a1 + 6528);
    sub_297E4E1B4(0, &v27, 3, 5u, "phLibNfc_GetAvailableSlotIndex");
    if (*v15)
    {
      if (*(a1 + 4744))
      {
        sub_297E4E0B0(0, &v27, 3, 1u, "phLibNfc_GetAvailableSlotIndex: No Free slot available");
        sub_297E4DFAC(0, &v27, 3, 5u, "phLibNfc_GetAvailableSlotIndex");
        v20 = "phNciNfc_RegUnRegSeEvent: No free slots available, registration failed!";
        v21 = a1 + 6524;
LABEL_27:
        sub_297E4E0B0(1, v21, 3, 1u, v20);
LABEL_28:
        v13 = 255;
        goto LABEL_7;
      }

      v22 = 1;
    }

    else
    {
      v22 = 0;
    }

    sub_297E4DFAC(0, &v27, 3, 5u, "phLibNfc_GetAvailableSlotIndex");
    *(a1 + 6648) = a2;
    sub_297E4E0B0(1, a1 + 6524, 3, 4u, "phNciNfc_RegUnRegSeEvent: Registering SE event with NCI Core");
    BYTE5(v25) = 2;
    BYTE4(v25) = v26;
    LODWORD(v24) = 0;
    if (!sub_297E59AEC(a1 + 936, &v24, sub_297F07730, a1))
    {
      v13 = 0;
      v23 = &v15[32 * v22];
      *(v23 + 2) = a5;
      *(v23 + 3) = a4;
      *(v23 + 1) = a2;
      *v23 = 1;
      goto LABEL_7;
    }

    v20 = "phNciNfc_RegUnRegSeEvent: Failed to register with Nci core";
    v21 = a1 + 6524;
    goto LABEL_27;
  }

LABEL_7:
  sub_297E4DFAC(2, a1, 3, 5u, "phNciNfc_RegUnRegSeEvent");
  return v13;
}

uint64_t sub_297F07730(uint64_t a1, uint64_t *a2, uint64_t a3)
{
  v16 = 0;
  v17 = 0;
  v18 = 0;
  sub_297E4E1B4(2, a1, 3, 5u, "phNciNfc_SeEventCb");
  if (a1)
  {
    if (!a2)
    {
      v17 = 0;
      LODWORD(v18) = 0;
      a2 = &v16;
    }

    v6 = 0;
    v7 = 1;
    do
    {
      v8 = 0;
      v9 = 0;
      v10 = v7;
      do
      {
        v11 = *(&unk_2A18BDDC0 + 14 * v9 + 4);
        if (v8)
        {
          break;
        }

        v8 = 1;
        v9 = 1;
      }

      while (v11 != a1);
      if (v11 == a1)
      {
        v12 = a1 + 4712 + 32 * v6;
        if (*v12 == 1 && *(a1 + 6648) == *(v12 + 8))
        {
          v13 = *(v12 + 24);
          if (v13)
          {
            v14 = *(v12 + 16);
            *a2 = a1;
            v13(v14, a2, a3);
          }
        }
      }

      v7 = 0;
      v6 = 1;
    }

    while ((v10 & 1) != 0);
  }

  sub_297E4DFAC(2, a1, 3, 5u, "phNciNfc_SeEventCb");
  return 255;
}

uint64_t sub_297F07864(void *a1, uint64_t a2, uint64_t a3)
{
  sub_297E4E1B4(2, a1, 3, 5u, "phNciNfc_CreateLogicalConn");
  if (a1)
  {
    if (a2)
    {
      Memory_Typed = phOsalNfc_GetMemory_Typed();
      if (Memory_Typed)
      {
        *Memory_Typed = 1;
        *(Memory_Typed + 4) = 0;
        a1[413] = Memory_Typed;
        a1[428] = a2;
        a1[469] = a3;
        v7 = sub_297E8B5FC(a1, Memory_Typed, sub_297F079B4, a1);
        if (v7 != 13)
        {
          a1[428] = 0;
          a1[469] = 0;
        }
      }

      else
      {
        sub_297E4E0B0(1, a1 + 6524, 3, 1u, "Failed to Open logical connection in loopback mode");
        v7 = 255;
      }
    }

    else
    {
      v7 = 1;
      sub_297E4E0B0(1, a1 + 6524, 3, 1u, "Invalid input parameters!");
    }
  }

  else
  {
    sub_297E4E0B0(2, 0, 3, 1u, "Stack not initialized");
    v7 = 49;
  }

  sub_297E4DFAC(2, a1, 3, 5u, "phNciNfc_CreateLogicalConn");
  return v7;
}

uint64_t sub_297F079B4(uint64_t a1, _BYTE *a2, uint64_t a3)
{
  v15 = 0;
  v14 = 0;
  sub_297E4E1B4(2, a1, 3, 5u, "phNciNfc_LogicalConnOpen_CB");
  if (!a1)
  {
    sub_297E4E0B0(2, 0, 3, 1u, "Invalid Nci handle passed!");
    a3 = 255;
    goto LABEL_26;
  }

  if (a3 == 81)
  {
    v6 = 0;
  }

  else
  {
    if (a3)
    {
      sub_297E4E0B0(1, a1 + 6524, 3, 1u, "Log conn in loop back mode creation failed!");
      v6 = 0;
    }

    else
    {
      *(a1 + 3296) = 1;
      *(a1 + 3297) = *a2;
      if (*(a1 + 3304))
      {
        phOsalNfc_FreeMemory();
        *(a1 + 3304) = 0;
      }

      v6 = a1 + 7008;
      if (!sub_297E8B9D0(a1, 1, 254, a1 + 7008) && !sub_297E8BD64(a1, a1 + 7008, &v15 + 1) && !sub_297E8BE80(a1, a1 + 7008, &v15) && !sub_297E8BB50(a1, a1 + 7008, &v14))
      {
        sub_297E4E0B0(1, a1 + 6524, 3, 4u, "phNciNfc_LogicalConnOpen_CB:Available number of credits and Max payload size updated in remote device structure");
        v13 = v14;
        sub_297F00CF4(a1 + 936, v14, SHIBYTE(v15));
        sub_297F00DF4(a1 + 936, v13, v15);
        a3 = 0;
        goto LABEL_16;
      }

      sub_297E4E0B0(1, a1 + 6524, 3, 1u, "Failed due to logical conn or unavailable memory");
      if (*(a1 + 4552))
      {
        phOsalNfc_FreeMemory();
        v6 = 0;
        *(a1 + 4552) = 0;
      }
    }

    a3 = 255;
  }

LABEL_16:
  v7 = *(a1 + 3424);
  if (v7)
  {
    if (v6)
    {
      v8 = v6;
    }

    else
    {
      v8 = 0;
    }

    v7(*(a1 + 3752), a3, v8);
  }

  v9 = 0;
  v10 = 0;
  do
  {
    v11 = *(&unk_2A18BDDC0 + 14 * v10 + 4);
    if (v9)
    {
      break;
    }

    v9 = 1;
    v10 = 1;
  }

  while (v11 != a1);
  if (v11 == a1)
  {
    *(a1 + 3424) = 0;
    *(a1 + 3752) = 0;
  }

LABEL_26:
  sub_297E4DFAC(2, a1, 3, 5u, "phNciNfc_LogicalConnOpen_CB");
  return a3;
}

uint64_t sub_297F07C00(uint64_t a1, uint64_t a2, uint64_t a3)
{
  sub_297E4E1B4(2, a1, 3, 5u, "phNciNfc_CloseLogicalConn");
  if (a1)
  {
    if (a2)
    {
      if (*(a1 + 3296) == 1)
      {
        *(a1 + 3424) = a2;
        *(a1 + 3752) = a3;
        v6 = sub_297E8B8A4(a1, 254, sub_297F07D30, a1);
        if (v6 != 13)
        {
          *(a1 + 3424) = 0;
          *(a1 + 3752) = 0;
        }
      }

      else
      {
        sub_297E4E0B0(1, a1 + 6524, 3, 1u, "No Log conn in loop back mode exists");
        v6 = 255;
      }
    }

    else
    {
      v6 = 1;
      sub_297E4E0B0(1, a1 + 6524, 3, 1u, "Invalid input parameters!");
    }
  }

  else
  {
    sub_297E4E0B0(2, 0, 3, 1u, "Stack not initialized");
    v6 = 49;
  }

  sub_297E4DFAC(2, a1, 3, 5u, "phNciNfc_CloseLogicalConn");
  return v6;
}

uint64_t sub_297F07D30(uint64_t a1, uint64_t a2, uint64_t a3)
{
  sub_297E4E1B4(2, a1, 3, 5u, "phNciNfc_LogicalConnClose_CB");
  if (a1)
  {
    if (a3 != 81)
    {
      if (a3)
      {
        a3 = 255;
      }

      else
      {
        *(a1 + 3296) = -256;
      }
    }

    v5 = *(a1 + 3424);
    if (v5)
    {
      v6 = *(a1 + 3752);
      *(a1 + 3424) = 0;
      *(a1 + 3752) = 0;
      v5(v6, a3, 0);
    }
  }

  else
  {
    sub_297E4E0B0(2, 0, 3, 1u, "Invalid Nci handle passed!");
    a3 = 255;
  }

  sub_297E4DFAC(2, a1, 3, 5u, "phNciNfc_LogicalConnClose_CB");
  return a3;
}

uint64_t sub_297F07DF4(uint64_t a1, char a2, uint64_t a3, uint64_t a4)
{
  sub_297E4E1B4(2, a1, 3, 5u, "phNciNfc_SwpSelfTest");
  if (a1)
  {
    if (a3)
    {
      *(a1 + 3424) = a3;
      *(a1 + 3752) = a4;
      *(a1 + 3312) = a2;
      *(a1 + 3776) = off_2A1A90818;
      *(a1 + 3976) = 0;
      *(a1 + 3977) = sub_297E577AC(a1, off_2A1A90818);
      v8 = sub_297E5E830(a1, 0, 0);
      if (v8 != 13)
      {
        sub_297E4E0B0(1, a1 + 6524, 3, 2u, "SwpSelfTest: Swp self test sequence failed!");
      }
    }

    else
    {
      v8 = 1;
      sub_297E4E0B0(1, a1 + 6524, 3, 1u, "SwpSelfTest: Invalid parameters");
    }
  }

  else
  {
    sub_297E4E0B0(2, 0, 3, 1u, "SwpSelfTest: Stack not initialized");
    v8 = 49;
  }

  sub_297E4DFAC(2, a1, 3, 5u, "phNciNfc_SwpSelfTest");
  return v8;
}

uint64_t sub_297F07F1C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  sub_297E4E1B4(2, a1, 3, 5u, "phNciNfc_PrbsTest");
  if (a1)
  {
    if (a3 && *a2 && *(a2 + 8) == 6)
    {
      Memory_Typed = phOsalNfc_GetMemory_Typed();
      *(a1 + 896) = Memory_Typed;
      if (Memory_Typed)
      {
        *(a1 + 3424) = a3;
        *(a1 + 3752) = a4;
        phOsalNfc_MemCopy();
        *(a1 + 904) = *(a2 + 8);
        *(a1 + 3776) = off_2A1A90848;
        *(a1 + 3976) = 0;
        *(a1 + 3977) = sub_297E577AC(a1, off_2A1A90848);
        v9 = sub_297E5E830(a1, 0, 0);
        if (v9 != 13)
        {
          sub_297E4E0B0(1, a1 + 6524, 3, 2u, "phNciNfc_PrbsTest: Prbs test sequence failed!");
          if (*(a1 + 896))
          {
            phOsalNfc_FreeMemory();
            *(a1 + 896) = 0;
          }

          *(a1 + 904) = 0;
        }
      }

      else
      {
        sub_297E4E0B0(1, a1 + 6524, 3, 2u, "phNciNfc_PrbsTest: Memory allocation for payload buffer Failed!");
        v9 = 12;
      }
    }

    else
    {
      v9 = 1;
      sub_297E4E0B0(2, a1, 3, 1u, "phNciNfc_PrbsTest: Invalid parameters");
    }
  }

  else
  {
    sub_297E4E0B0(2, 0, 3, 1u, "phNciNfc_PrbsTest: Stack not initialized");
    v9 = 49;
  }

  sub_297E4DFAC(2, a1, 3, 5u, "phNciNfc_PrbsTest");
  return v9;
}

uint64_t sub_297F080D4(uint64_t a1, int a2, uint64_t a3, uint64_t a4)
{
  v7 = a1;
  sub_297E4E1B4(2, a1, 3, 5u, "phNciNfc_Reset");
  if (!v7)
  {
    goto LABEL_6;
  }

  v8 = 0;
  v9 = 0;
  do
  {
    v10 = *(&unk_2A18BDDC0 + 14 * v9 + 4);
    if (v8)
    {
      break;
    }

    v8 = 1;
    v9 = 1;
  }

  while (v10 != v7);
  if (v10 == v7)
  {
    if (a2 == 2)
    {
      sub_297E4E0B0(1, v7 + 6524, 3, 4u, "Nci Reset - phNciNfc_NciReset_Mgt_Reset");
      sub_297E5B294(v7, 6u);
      phTmlNfc_WriteAbort();
      sub_297E5A3A8(*(v7 + 1568), 0);
      phTmlNfc_ReadAbort();
      v11 = sub_297EBDFC0(v7);
      v7 = 0;
    }

    else
    {
      if (a2 == 1)
      {
        sub_297E4E0B0(1, v7 + 6524, 3, 4u, "Nci Reset - phNciNfc_NciReset_DeInit_ResetConfig");
        sub_297E75D54(v7 + 936);
        sub_297E5B294(v7, 6u);
        phTmlNfc_WriteAbort();
        sub_297E5A3A8(*(v7 + 1568), 0);
        v13 = v7;
        v14 = a3;
        v15 = a4;
        v16 = 1;
      }

      else
      {
        if (a2)
        {
          v11 = 1;
          sub_297E4E0B0(1, v7 + 6524, 3, 2u, "Invalid Nci Reset type");
          goto LABEL_7;
        }

        sub_297E4E0B0(1, v7 + 6524, 3, 4u, "Nci Reset - phNciNfc_NciReset_DeInit_KeepConfig");
        sub_297E75D54(v7 + 936);
        sub_297E5B294(v7, 6u);
        phTmlNfc_WriteAbort();
        sub_297E5A3A8(*(v7 + 1568), 0);
        v13 = v7;
        v14 = a3;
        v15 = a4;
        v16 = 0;
      }

      v11 = sub_297F082EC(v13, v14, v15, v16);
    }
  }

  else
  {
LABEL_6:
    v11 = 1;
    sub_297E4E0B0(2, v7, 3, 1u, "phNciNfc_Reset: Invalid NCINFC context!!");
  }

LABEL_7:
  sub_297E4DFAC(2, v7, 3, 5u, "phNciNfc_Reset");
  return v11;
}

uint64_t sub_297F082EC(uint64_t a1, uint64_t a2, uint64_t a3, int a4)
{
  sub_297E4E1B4(2, a1, 3, 5u, "phNciNfc_Release");
  v8 = 1;
  if (a1 && a2)
  {
    *(a1 + 3424) = a2;
    *(a1 + 3752) = a3;
    *(a1 + 3776) = off_2A1A90BB8;
    *(a1 + 3976) = 0;
    *(a1 + 3977) = sub_297E577AC(a1, off_2A1A90BB8);
    *(a1 + 36) = a4;
    v8 = sub_297E5E830(a1, 0, 0);
    if (v8 == 13)
    {
      sub_297F090D8(a1);
    }

    else
    {
      sub_297E4E0B0(1, a1 + 6524, 3, 2u, "Failed to Reset!");
    }
  }

  sub_297E4DFAC(2, a1, 3, 5u, "phNciNfc_Release");
  return v8;
}

uint64_t sub_297F083E0(uint64_t a1)
{
  sub_297E4E1B4(2, a1, 3, 5u, "phNciNfc_EnterNciRecoveryMode");
  if (a1)
  {
    sub_297E5B294(a1, 6u);
    phOsalNfc_Timer_Stop();
    *(a1 + 6512) = 0;
  }

  return sub_297E4DFAC(2, a1, 3, 5u, "phNciNfc_EnterNciRecoveryMode");
}

uint64_t sub_297F08468(uint64_t a1, _BYTE *a2)
{
  sub_297E4E1B4(2, a1, 3, 5u, "phNciNfc_UpdateAntennaConfigParams");
  if (a1 && a2)
  {
    phOsalNfc_MemCopy();
    if (*a2)
    {
      v5 = 0;
      *(a1 + 3728) = 8;
      v4 = 1;
    }

    else
    {
      v4 = 0;
      v5 = 255;
    }

    *(a1 + 3738) = v4;
  }

  else
  {
    sub_297E4E0B0(2, a1, 3, 1u, "phNciNfc_UpdateAntennaConfigParams: Failed!");
    v5 = 255;
  }

  sub_297E4DFAC(2, a1, 3, 5u, "phNciNfc_UpdateAntennaConfigParams");
  return v5;
}

uint64_t sub_297F08538(uint64_t a1, _BYTE *a2, uint64_t a3, uint64_t a4)
{
  sub_297E4E1B4(2, a1, 3, 5u, "phNciNfc_AntennaSelfTestCmd");
  if (!a1)
  {
    goto LABEL_6;
  }

  v8 = 0;
  v9 = 0;
  do
  {
    v10 = *(&unk_2A18BDDC0 + 14 * v9 + 4);
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
    if (a2)
    {
      if (a3)
      {
        v11 = sub_297F08468(a1, a2);
        if (!v11)
        {
          *(a1 + 3424) = a3;
          *(a1 + 3752) = a4;
          *(a1 + 3776) = off_2A1A93B60;
          *(a1 + 3976) = 0;
          *(a1 + 3977) = sub_297E577AC(a1, off_2A1A93B60);
          v11 = sub_297E5E830(a1, 0, 0);
          if (v11 != 13)
          {
            sub_297E4E0B0(1, a1 + 6524, 3, 2u, "Antenna Self Test command failed!");
          }
        }
      }
    }
  }

  else
  {
LABEL_6:
    sub_297E4E0B0(2, a1, 3, 1u, "Stack not initialized");
    v11 = 49;
  }

  sub_297E4DFAC(2, a1, 3, 5u, "phNciNfc_AntennaSelfTestCmd");
  return v11;
}

uint64_t sub_297F08690(uint64_t a1, int a2, uint64_t a3, uint64_t a4)
{
  sub_297E4E1B4(2, a1, 3, 5u, "phNciNfc_SendRfOnOffCmd");
  if (!a1)
  {
    goto LABEL_6;
  }

  v8 = 0;
  v9 = 0;
  do
  {
    v10 = *(&unk_2A18BDDC0 + 14 * v9 + 4);
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
    if (a3)
    {
      Memory_Typed = phOsalNfc_GetMemory_Typed();
      *(a1 + 896) = Memory_Typed;
      if (Memory_Typed)
      {
        if (a2 == 2 || a2 == 1)
        {
          v14 = 3;
        }

        else
        {
          v14 = 1;
        }

        *(a1 + 904) = v14;
        phOsalNfc_MemCopy();
        *(a1 + 3424) = a3;
        *(a1 + 3752) = a4;
        *(a1 + 3776) = off_2A1A93B40;
        *(a1 + 3976) = 0;
        *(a1 + 3977) = sub_297E577AC(a1, off_2A1A93B40);
        v11 = sub_297E5E830(a1, 0, 0);
        if (v11 != 13)
        {
          sub_297E4E0B0(1, a1 + 6524, 3, 2u, "Send RF On or Off command failed!");
          phOsalNfc_FreeMemory();
          *(a1 + 896) = 0;
          *(a1 + 904) = 0;
        }
      }

      else
      {
        sub_297E4E0B0(1, a1 + 6524, 3, 1u, "phNciNfc_SendRfOnOffCmd:Failed to allocate memory, insufficient resources");
        v11 = 12;
      }
    }

    else
    {
      v11 = 1;
    }
  }

  else
  {
LABEL_6:
    sub_297E4E0B0(2, a1, 3, 1u, "Stack not initialized");
    v11 = 49;
  }

  sub_297E4DFAC(2, a1, 3, 5u, "phNciNfc_SendRfOnOffCmd");
  return v11;
}

uint64_t sub_297F0888C(uint64_t a1, char a2, uint64_t a3, uint64_t a4)
{
  sub_297E4E1B4(2, a1, 3, 5u, "phNciNfc_TriggerRfOnNtf");
  if (a1)
  {
    if (a3)
    {
      Memory_Typed = phOsalNfc_GetMemory_Typed();
      *(a1 + 896) = Memory_Typed;
      if (Memory_Typed)
      {
        *(a1 + 3424) = a3;
        *(a1 + 3752) = a4;
        phOsalNfc_MemCopy();
        *(a1 + 904) = 1;
        *(a1 + 3776) = off_2A1A93B20;
        *(a1 + 3976) = 0;
        *(a1 + 3977) = sub_297E577AC(a1, off_2A1A93B20);
        v8 = sub_297E5E830(a1, 0, 0);
        if (v8 != 13)
        {
          sub_297E4E0B0(1, a1 + 6524, 3, 2u, "Trigger RF On command failed!");
          phOsalNfc_FreeMemory();
          *(a1 + 896) = 0;
          *(a1 + 904) = 0;
        }
      }

      else
      {
        sub_297E4E0B0(1, a1 + 6524, 3, 1u, "phNciNfc_TriggerRfOnNtf:Failed to allocate memory, insufficient resources");
        v8 = 12;
      }
    }

    else
    {
      v8 = 1;
    }
  }

  else
  {
    sub_297E4E0B0(2, 0, 3, 1u, "Stack not initialized");
    v8 = 49;
  }

  sub_297E4DFAC(2, a1, 3, 5u, "phNciNfc_TriggerRfOnNtf");
  return v8;
}

uint64_t sub_297F08A18(uint64_t a1, uint64_t a2, uint64_t a3)
{
  sub_297E4E1B4(2, a1, 3, 5u, "phNciNfc_EnablePropExtn");
  if (a1)
  {
    if (a2)
    {
      *(a1 + 3424) = a2;
      *(a1 + 3752) = a3;
      *(a1 + 3776) = off_2A1A93BA0;
      *(a1 + 3976) = 0;
      *(a1 + 3977) = sub_297E577AC(a1, off_2A1A93BA0);
      v6 = sub_297E5E830(a1, 0, 0);
      if (v6 != 13)
      {
        sub_297E4E0B0(1, a1 + 6524, 3, 2u, "Extension Enable command failed!");
      }
    }

    else
    {
      v6 = 1;
    }
  }

  else
  {
    sub_297E4E0B0(2, 0, 3, 1u, "Stack not initialized");
    v6 = 49;
  }

  sub_297E4DFAC(2, a1, 3, 5u, "phNciNfc_EnablePropExtn");
  return v6;
}

uint64_t sub_297F08B18(uint64_t a1, uint64_t a2, uint64_t a3)
{
  sub_297E4E1B4(2, a1, 3, 5u, "phNciNfc_PresenceChk");
  if (a1)
  {
    if (a2)
    {
      *(a1 + 3424) = a2;
      *(a1 + 3752) = a3;
      *(a1 + 3776) = off_2A1A93B80;
      *(a1 + 3976) = 0;
      *(a1 + 3977) = sub_297E577AC(a1, off_2A1A93B80);
      v6 = sub_297F00660(a1, 0, 0);
      if (v6 != 13)
      {
        sub_297E4E0B0(1, a1 + 6524, 3, 2u, "Presence check (extension command) failed!");
      }
    }

    else
    {
      v6 = 1;
    }
  }

  else
  {
    sub_297E4E0B0(2, 0, 3, 1u, "Stack not initialized");
    v6 = 49;
  }

  sub_297E4DFAC(2, a1, 3, 5u, "phNciNfc_PresenceChk");
  return v6;
}

uint64_t sub_297F08C18(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v7 = a3;
  sub_297E4E1B4(2, a1, 3, 5u, "phNciNfc_SetConfigSignedRaw");
  if (a1)
  {
    if (a2 && v7)
    {
      Memory_Typed = phOsalNfc_GetMemory_Typed();
      *(a1 + 896) = Memory_Typed;
      if (Memory_Typed)
      {
        phOsalNfc_MemCopy();
        *(a1 + 3424) = a4;
        *(a1 + 3752) = a5;
        *(a1 + 3776) = off_2A1A93C00;
        *(a1 + 3976) = 0;
        *(a1 + 3977) = sub_297E577AC(a1, off_2A1A93C00);
        *(a1 + 904) = v7;
        v11 = sub_297E5DF3C(a1, 0, 0);
        if (v11 != 13)
        {
          sub_297E4E0B0(1, a1 + 6524, 3, 2u, "Set Config Raw Sequence failed!");
          phOsalNfc_FreeMemory();
          *(a1 + 896) = 0;
          *(a1 + 904) = 0;
        }
      }

      else
      {
        sub_297E4E0B0(1, a1 + 6524, 3, 1u, "phNciNfc_SetConfigSignedRaw:Failed to allocate memory, insufficient resources");
        v11 = 12;
      }
    }

    else
    {
      v11 = 1;
      sub_297E4E0B0(1, a1 + 6524, 3, 1u, "Invalid parameters");
    }
  }

  else
  {
    sub_297E4E0B0(2, 0, 3, 1u, "Stack not initialized");
    v11 = 49;
  }

  sub_297E4DFAC(2, a1, 3, 5u, "phNciNfc_SetConfigSignedRaw");
  return v11;
}

uint64_t sub_297F08DBC(uint64_t a1, char a2)
{
  sub_297E4E1B4(2, a1, 3, 5u, "phNciNfc_AbortNciCtrPacket");
  if (a1)
  {
    sub_297E5B294(a1, 6u);
    sub_297E57090(a1);
    sub_297E76150(a1 + 936);
    *(a1 + 4776) = 0;
    sub_297E5A304(*(a1 + 6524), *(a1 + 4696));
    *(a1 + 6512) = 0;
    sub_297E687D8(1, a1 + 6524, *(a1 + 4696), 3, 4u, "phNciNfc_AbortNciCtrPacket");
    phOsalNfc_SetMemory();
    *(a1 + 6521) = a2;
    if (*(a1 + 4640))
    {
      sub_297E4E0B0(1, a1 + 6524, 3, 4u, "De-allocating Send Request Payload Buffer...");
      phOsalNfc_FreeMemory();
      *(a1 + 4640) = 0;
      *(a1 + 4648) = 0;
    }

    sub_297F0522C(a1);
  }

  return sub_297E4DFAC(2, a1, 3, 5u, "phNciNfc_AbortNciCtrPacket");
}

uint64_t sub_297F08EEC(uint64_t a1, int a2)
{
  v15 = 0;
  v12 = 0;
  v13 = 0;
  v14 = 0;
  sub_297E4E1B4(2, a1, 3, 5u, "phNciNfc_AbortDataTransfer");
  if (a1)
  {
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

    while (v6 != a1);
    if (v6 == a1)
    {
      if (a2 > 1)
      {
        if (a2 == 2)
        {
          v7 = a1;
          v8 = 3;
          goto LABEL_24;
        }

        if (a2 == 3)
        {
          *(a1 + 6672) = 0;
          v7 = a1;
          v8 = 6;
          goto LABEL_24;
        }
      }

      else if (a2)
      {
        if (a2 == 1)
        {
          *(a1 + 6616) = 0;
          v7 = a1;
          v8 = 1;
LABEL_24:
          sub_297E5B294(v7, v8);
        }
      }

      else
      {
        sub_297E5B294(a1, 0);
        *(a1 + 6483) = 0;
        *(a1 + 4616) = 0u;
        if (*(a1 + 3328) == 1)
        {
          *(a1 + 3328) = 0;
          if (*(a1 + 3336))
          {
            phOsalNfc_FreeMemory();
            *(a1 + 3336) = 0;
          }

          *(a1 + 3344) = 16711680;
        }

        v9 = *(a1 + 3352);
        if (v9 && v9 != 0xFFFFFFFFFFFFLL)
        {
          phOsalNfc_Timer_Stop();
          phOsalNfc_Timer_Delete();
          *(a1 + 3352) = 0xFFFFFFFFFFFFLL;
        }

        if (!sub_297E8BB50(a1, *(a1 + 4552), &v15))
        {
          LOBYTE(v12) = 1;
          v10 = v15;
          BYTE3(v12) = v15;
          v13 = a1;
          v14 = sub_297E76760;
          sub_297E75DFC(a1 + 936, &v12, 0);
          BYTE3(v12) = v10;
          v13 = a1;
          v14 = sub_297E70190;
          sub_297E75DFC(a1 + 936, &v12, 0);
        }

        *(a1 + 6672) = 0;
      }
    }
  }

  return sub_297E4DFAC(2, a1, 3, 5u, "phNciNfc_AbortDataTransfer");
}

uint64_t sub_297F090D8(uint64_t a1)
{
  sub_297E4E1B4(2, a1, 3, 5u, "phLibNfc_ClearSeEvents");
  if (a1)
  {
    *(a1 + 4712) = 0;
    *(a1 + 4744) = 0;
  }

  return sub_297E4DFAC(2, a1, 3, 5u, "phLibNfc_ClearSeEvents");
}

uint64_t sub_297F0914C(void *a1, uint64_t a2, uint64_t a3)
{
  sub_297E4E1B4(2, a1, 3, 5u, "phNciNfc_TriggerAssertCb");
  if (a1)
  {
    if (a1[112])
    {
      phOsalNfc_FreeMemory();
      a1[112] = 0;
    }

    v5 = a1[428];
    if (v5)
    {
      v5(a1[469], a3, 0);
    }
  }

  sub_297E4DFAC(2, a1, 3, 5u, "phNciNfc_TriggerAssertCb");
  return a3;
}

uint64_t sub_297F091DC(uint64_t a1, char a2, int *a3, uint64_t a4, uint64_t a5)
{
  v16 = 0u;
  v17 = 0u;
  sub_297E4E1B4(2, a1, 3, 5u, "phNciNfc_TriggerNfccAssert");
  if (a1)
  {
    if (a4)
    {
      Memory_Typed = phOsalNfc_GetMemory_Typed();
      if (Memory_Typed)
      {
        v11 = Memory_Typed;
        if (a3)
        {
          v12 = *a3;
          *Memory_Typed = 5;
          *(Memory_Typed + 1) = v12;
          sub_297E4E0B0(1, a1 + 6524, 3, 4u, "Configuring NFCC Assert Timeout for MFW");
          *(a1 + 896) = v11;
          *(a1 + 904) = 3;
          *(a1 + 3776) = off_2A1A90698;
          *(a1 + 3976) = 0;
          *(a1 + 3977) = sub_297E577AC(a1, off_2A1A90698);
          v13 = sub_297E5E830(a1, 0, 0);
        }

        else
        {
          *Memory_Typed = a2;
          *(a1 + 896) = Memory_Typed;
          *(a1 + 904) = 1;
          phOsalNfc_SetMemory();
          *&v16 = 0xF00000001;
          DWORD2(v16) = 59;
          *&v17 = *(a1 + 896);
          DWORD2(v17) = *(a1 + 904);
          v13 = sub_297F00AB4(a1 + 936, &v16, sub_297F0914C, a1);
        }

        v14 = v13;
        if (v13 == 13)
        {
          *(a1 + 3424) = a4;
          *(a1 + 3752) = a5;
        }

        else
        {
          sub_297E4E0B0(1, a1 + 6524, 3, 2u, "phNciNfc_TriggerNfccAssert: Sequence failed!");
          if (*(a1 + 896))
          {
            phOsalNfc_FreeMemory();
          }

          *(a1 + 896) = 0;
          *(a1 + 904) = 0;
        }
      }

      else
      {
        sub_297E4E0B0(1, a1 + 6524, 3, 1u, "phNciNfc_TriggerNfccAssert: Insufficient Memory ");
        v14 = 12;
      }
    }

    else
    {
      v14 = 1;
      sub_297E4E0B0(1, a1 + 6524, 3, 1u, "Invalid input parameter!");
    }
  }

  else
  {
    sub_297E4E0B0(2, 0, 3, 1u, "Stack not initialized");
    v14 = 49;
  }

  sub_297E4DFAC(2, a1, 3, 5u, "phNciNfc_TriggerNfccAssert");
  return v14;
}

uint64_t sub_297F09440(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  sub_297E4E1B4(2, a1, 3, 5u, "phNciNfc_SetRfCalSignedData");
  if (a1)
  {
    if (a2 && *a2 && a3 && *(a2 + 8))
    {
      *(a1 + 3424) = a3;
      *(a1 + 3752) = a4;
      *(a1 + 3320) = a2;
      *(a1 + 3776) = off_2A1A90878;
      *(a1 + 3976) = 0;
      *(a1 + 3977) = sub_297E577AC(a1, off_2A1A90878);
      v8 = sub_297E5E830(a1, 0, 0);
      if (v8 != 13)
      {
        sub_297E4E0B0(1, a1 + 6524, 3, 2u, "SetRfCalSignedData: Sequence failed!");
      }
    }

    else
    {
      v8 = 1;
      sub_297E4E0B0(1, a1 + 6524, 3, 1u, "SetRfCalSignedData: Invalid parameters");
    }
  }

  else
  {
    sub_297E4E0B0(2, 0, 3, 1u, "SetRfCalSignedData: Stack not initialized");
    v8 = 49;
  }

  sub_297E4DFAC(2, a1, 3, 5u, "phNciNfc_SetRfCalSignedData");
  return v8;
}

uint64_t sub_297F0957C(uint64_t a1, void *a2, uint64_t a3, uint64_t a4)
{
  sub_297E4E1B4(2, a1, 3, 5u, "phNciNfc_GetRfCalSignedData");
  if (!a1)
  {
    sub_297E4E0B0(2, 0, 3, 2u, "GetRfCalSignedData: Stack not initialized");
    v8 = 49;
    goto LABEL_10;
  }

  if (!a2 || !a3 || !*a2)
  {
    v9 = "GetRfCalSignedData: Invalid parameters";
    v8 = 1;
    goto LABEL_8;
  }

  *(a1 + 3424) = a3;
  *(a1 + 3752) = a4;
  *(a1 + 3320) = a2;
  *(a1 + 3776) = off_2A1A90898;
  *(a1 + 3976) = 0;
  *(a1 + 3977) = sub_297E577AC(a1, off_2A1A90898);
  v8 = sub_297E5E830(a1, 0, 0);
  if (v8 != 13)
  {
    v9 = "GetRfCalSignedData: Sequence failed!";
LABEL_8:
    sub_297E4E0B0(1, a1 + 6524, 3, 2u, v9);
  }

LABEL_10:
  sub_297E4DFAC(2, a1, 3, 5u, "phNciNfc_GetRfCalSignedData");
  return v8;
}

uint64_t sub_297F0969C(uint64_t a1, char a2, uint64_t a3, uint64_t a4)
{
  sub_297E4E1B4(2, a1, 3, 5u, "phNciNfc_GetSwioPadVoltage");
  if (!a1)
  {
    sub_297E4E0B0(2, 0, 3, 1u, "phNciNfc_GetSwioPadVoltage: Stack not initialized");
    v8 = 49;
    goto LABEL_9;
  }

  if (!a3)
  {
    v9 = "phNciNfc_GetSwioPadVoltage: Invalid parameters";
    v8 = 1;
LABEL_8:
    sub_297E4E0B0(1, a1 + 6524, 3, 1u, v9);
    goto LABEL_9;
  }

  *(a1 + 4881) = a2;
  *(a1 + 3776) = off_2A1A905B8;
  *(a1 + 3976) = 0;
  *(a1 + 3977) = sub_297E577AC(a1, off_2A1A905B8);
  v8 = sub_297E5E830(a1, 0, 0);
  if (v8 != 13)
  {
    v9 = "phNciNfc_GetSwioPadVoltage: Sequence failed!";
    goto LABEL_8;
  }

  *(a1 + 3424) = a3;
  *(a1 + 3752) = a4;
LABEL_9:
  sub_297E4DFAC(2, a1, 3, 5u, "phNciNfc_GetSwioPadVoltage");
  return v8;
}

uint64_t sub_297F097B8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  sub_297E4E1B4(2, a1, 3, 5u, "phNciNfc_GetAteTrimVersion");
  if (!a1)
  {
    sub_297E4E0B0(2, 0, 3, 1u, "phNciNfc_GetAteTrimVersion: Stack not initialized");
    v6 = 49;
    goto LABEL_9;
  }

  if (!a2)
  {
    v7 = "phNciNfc_GetAteTrimVersion: Invalid parameters";
    v6 = 1;
LABEL_8:
    sub_297E4E0B0(1, a1 + 6524, 3, 1u, v7);
    goto LABEL_9;
  }

  *(a1 + 3776) = off_2A1A905D8;
  *(a1 + 3976) = 0;
  *(a1 + 3977) = sub_297E577AC(a1, off_2A1A905D8);
  v6 = sub_297E5E830(a1, 0, 0);
  if (v6 != 13)
  {
    v7 = "phNciNfc_GetAteTrimVersion: Sequence failed!";
    goto LABEL_8;
  }

  *(a1 + 3424) = a2;
  *(a1 + 3752) = a3;
LABEL_9:
  sub_297E4DFAC(2, a1, 3, 5u, "phNciNfc_GetAteTrimVersion");
  return v6;
}

uint64_t sub_297F098C8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  sub_297E4E1B4(2, a1, 3, 5u, "phNciNfc_GetEraseCounterInfo");
  if (!a1)
  {
    sub_297E4E0B0(2, 0, 3, 2u, "phNciNfc_GetEraseCounterInfo: Stack not initialized");
    v7 = 49;
    goto LABEL_9;
  }

  if (!a3)
  {
    v8 = "phNciNfc_GetEraseCounterInfo: Invalid parameters";
    v7 = 1;
LABEL_8:
    sub_297E4E0B0(1, a1 + 6524, 3, 2u, v8);
    goto LABEL_9;
  }

  phOsalNfc_MemCopy();
  *(a1 + 3776) = off_2A1A905F8;
  *(a1 + 3976) = 0;
  *(a1 + 3977) = sub_297E577AC(a1, off_2A1A905F8);
  v7 = sub_297E5E830(a1, 0, 0);
  if (v7 != 13)
  {
    v8 = "phNciNfc_GetEraseCounterInfo: Sequence failed!";
    goto LABEL_8;
  }

  *(a1 + 3424) = a3;
  *(a1 + 3752) = a4;
LABEL_9:
  sub_297E4DFAC(2, a1, 3, 5u, "phNciNfc_GetEraseCounterInfo");
  return v7;
}

uint64_t sub_297F099F4(uint64_t a1, char a2, uint64_t a3, uint64_t a4)
{
  sub_297E4E1B4(2, a1, 3, 5u, "phNciNfc_GetProhibitTimerStatus");
  if (!a1)
  {
    sub_297E4E0B0(2, 0, 3, 2u, "phNciNfc_GetProhibitTimerStatus: Stack not initialized");
    v8 = 49;
    goto LABEL_9;
  }

  if (!a3)
  {
    v9 = "phNciNfc_GetProhibitTimerStatus: Invalid parameters";
    v8 = 1;
LABEL_8:
    sub_297E4E0B0(1, a1 + 6524, 3, 2u, v9);
    goto LABEL_9;
  }

  *(a1 + 4880) = a2;
  *(a1 + 3776) = off_2A1A90618;
  *(a1 + 3976) = 0;
  *(a1 + 3977) = sub_297E577AC(a1, off_2A1A90618);
  v8 = sub_297E5E830(a1, 0, 0);
  if (v8 != 13)
  {
    v9 = "phNciNfc_GetProhibitTimerStatus: Sequence failed!";
    goto LABEL_8;
  }

  *(a1 + 3424) = a3;
  *(a1 + 3752) = a4;
  *(a1 + 848) = a3;
  *(a1 + 856) = a4;
LABEL_9:
  sub_297E4DFAC(2, a1, 3, 5u, "phNciNfc_GetProhibitTimerStatus");
  return v8;
}

uint64_t sub_297F09B18(uint64_t a1, char a2)
{
  sub_297E4E1B4(2, a1, 3, 5u, "phNciNfc_UpdateCrcChkFlag");
  if (a1)
  {
    v4 = 0;
    *(a1 + 6281) = a2;
  }

  else
  {
    sub_297E4E0B0(2, 0, 3, 1u, "Stack not initialized");
    v4 = 49;
  }

  sub_297E4DFAC(2, a1, 3, 5u, "phNciNfc_UpdateCrcChkFlag");
  return v4;
}

uint64_t sub_297F09BB4(uint64_t a1, char a2)
{
  sub_297E4E1B4(2, a1, 3, 5u, "phNciNfc_UpdateCrcAppendFlag");
  if (a1)
  {
    *(a1 + 6280) = a2;
  }

  sub_297E4DFAC(2, a1, 3, 5u, "phNciNfc_UpdateCrcAppendFlag");
  return 0;
}

uint64_t sub_297F09C20(uint64_t a1, char a2)
{
  sub_297E4E1B4(2, a1, 3, 5u, "phNciNfc_UpdateCrcSkpFlag");
  if (a1)
  {
    v4 = 0;
    *(a1 + 6282) = a2;
  }

  else
  {
    sub_297E4E0B0(2, 0, 3, 1u, "UpdateCrcSkpFlag: Stack not initialized");
    v4 = 49;
  }

  sub_297E4DFAC(2, a1, 3, 5u, "phNciNfc_UpdateCrcSkpFlag");
  return v4;
}

uint64_t sub_297F09CBC(uint64_t a1, char a2)
{
  sub_297E4E1B4(2, a1, 3, 5u, "phNciNfc_StoreReqCrcCfg");
  if (a1)
  {
    v4 = 0;
    *(a1 + 6283) = a2;
  }

  else
  {
    sub_297E4E0B0(2, 0, 3, 1u, "StoreReqCrcCfg: Stack not initialized");
    v4 = 49;
  }

  sub_297E4DFAC(2, a1, 3, 5u, "phNciNfc_StoreReqCrcCfg");
  return v4;
}

uint64_t sub_297F09D58(uint64_t a1, char a2)
{
  sub_297E4E1B4(2, a1, 3, 5u, "phNciNfc_UpdateDtaStatusFlag");
  if (a1)
  {
    v4 = 0;
    *(a1 + 4777) = a2;
  }

  else
  {
    v4 = 255;
  }

  sub_297E4DFAC(2, a1, 3, 5u, "phNciNfc_UpdateDtaStatusFlag");
  return v4;
}

uint64_t sub_297F09DD8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  sub_297E4E1B4(2, a1, 3, 5u, "phNciNfc_GetSmbLogInfo");
  if (!a1)
  {
    sub_297E4E0B0(2, 0, 3, 2u, "phNciNfc_GetSmbLogInfo: Stack not initialized");
    v6 = 49;
    goto LABEL_9;
  }

  if (!a2)
  {
    v7 = "phNciNfc_GetSmbLogInfo: Invalid parameters";
    v6 = 1;
LABEL_8:
    sub_297E4E0B0(1, a1 + 6524, 3, 2u, v7);
    goto LABEL_9;
  }

  *(a1 + 3776) = off_2A1A90658;
  *(a1 + 3976) = 0;
  *(a1 + 3977) = sub_297E577AC(a1, off_2A1A90658);
  v6 = sub_297E5E830(a1, 0, 0);
  if (v6 != 13)
  {
    v7 = "phNciNfc_GetSmbLogInfo: Sequence failed!";
    goto LABEL_8;
  }

  *(a1 + 3424) = a2;
  *(a1 + 3752) = a3;
LABEL_9:
  sub_297E4DFAC(2, a1, 3, 5u, "phNciNfc_GetSmbLogInfo");
  return v6;
}

uint64_t sub_297F09EE8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  sub_297E4E1B4(2, a1, 3, 5u, "phNciNfc_GetLpcdCount");
  if (!a1)
  {
    sub_297E4E0B0(2, 0, 3, 2u, "phNciNfc_GetLpcdCount: Stack not initialized");
    v6 = 49;
    goto LABEL_9;
  }

  if (!a2)
  {
    v7 = "phNciNfc_GetLpcdCount: Invalid parameters";
    v6 = 1;
LABEL_8:
    sub_297E4E0B0(1, a1 + 6524, 3, 2u, v7);
    goto LABEL_9;
  }

  *(a1 + 3776) = off_2A1A906B8;
  *(a1 + 3976) = 0;
  *(a1 + 3977) = sub_297E577AC(a1, off_2A1A906B8);
  v6 = sub_297E5E830(a1, 0, 0);
  if (v6 != 13)
  {
    v7 = "phNciNfc_GetLpcdCount: Sequence failed!";
    goto LABEL_8;
  }

  *(a1 + 3424) = a2;
  *(a1 + 3752) = a3;
LABEL_9:
  sub_297E4DFAC(2, a1, 3, 5u, "phNciNfc_GetLpcdCount");
  return v6;
}

uint64_t sub_297F09FF8(uint64_t a1, char a2, uint64_t a3, uint64_t a4)
{
  sub_297E4E1B4(2, a1, 3, 5u, "phNciNfc_GetGenericDbgLogInfo");
  if (a1)
  {
    if (a3)
    {
      Memory_Typed = phOsalNfc_GetMemory_Typed();
      if (Memory_Typed)
      {
        *Memory_Typed = a2;
        *(a1 + 896) = Memory_Typed;
        *(a1 + 904) = 1;
        *(a1 + 6464) = 0;
        *(a1 + 3776) = off_2A1A90678;
        *(a1 + 3976) = 0;
        *(a1 + 3977) = sub_297E577AC(a1, off_2A1A90678);
        v9 = sub_297E5E830(a1, 0, 0);
        if (v9 == 13)
        {
          *(a1 + 3424) = a3;
          *(a1 + 3752) = a4;
        }

        else
        {
          sub_297E4E0B0(1, a1 + 6524, 3, 2u, "phNciNfc_GetGenericDbgLogInfo: Sequence failed!");
          phOsalNfc_FreeMemory();
          *(a1 + 896) = 0;
          *(a1 + 904) = 0;
        }
      }

      else
      {
        sub_297E4E0B0(1, a1 + 6524, 3, 1u, "phNciNfc_GetGenericDbgLogInfo: Insufficient Memory ");
        v9 = 12;
      }
    }

    else
    {
      v9 = 1;
      sub_297E4E0B0(1, a1 + 6524, 3, 2u, "phNciNfc_GetGenericDbgLogInfo: Invalid parameters");
    }
  }

  else
  {
    sub_297E4E0B0(2, 0, 3, 2u, "phNciNfc_GetGenericDbgLogInfo: Stack not initialized");
    v9 = 49;
  }

  sub_297E4DFAC(2, a1, 3, 5u, "phNciNfc_GetGenericDbgLogInfo");
  return v9;
}

uint64_t sub_297F0A1A0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  sub_297E4E1B4(2, a1, 3, 5u, "phNciNfc_GetFwType");
  if (!a1)
  {
    sub_297E4E0B0(2, 0, 3, 2u, "phNciNfc_GetFwType: Stack not initialized");
    v6 = 49;
    goto LABEL_9;
  }

  if (!a2)
  {
    v7 = "phNciNfc_GetFwType: Invalid parameters";
    v6 = 1;
LABEL_8:
    sub_297E4E0B0(1, a1 + 6524, 3, 2u, v7);
    goto LABEL_9;
  }

  *(a1 + 3776) = off_2A1A906D8;
  *(a1 + 3976) = 0;
  *(a1 + 3977) = sub_297E577AC(a1, off_2A1A906D8);
  v6 = sub_297E5E830(a1, 0, 0);
  if (v6 != 13)
  {
    v7 = "phNciNfc_GetFwType: Sequence failed!";
    goto LABEL_8;
  }

  *(a1 + 3424) = a2;
  *(a1 + 3752) = a3;
LABEL_9:
  sub_297E4DFAC(2, a1, 3, 5u, "phNciNfc_GetFwType");
  return v6;
}

uint64_t sub_297F0A2B0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  sub_297E4E1B4(2, a1, 3, 5u, "phNciNfc_DetectTagRemoval");
  if (!a1)
  {
    sub_297E4E0B0(2, 0, 3, 2u, "phNciNfc_DetectTagRemoval: Stack not initialized");
    v6 = 49;
    goto LABEL_9;
  }

  if (!a2)
  {
    v7 = "phNciNfc_DetectTagRemoval: Invalid parameters";
    v6 = 1;
LABEL_8:
    sub_297E4E0B0(1, a1 + 6524, 3, 2u, v7);
    goto LABEL_9;
  }

  *(a1 + 3776) = off_2A1A906F8;
  *(a1 + 3976) = 0;
  *(a1 + 3977) = sub_297E577AC(a1, off_2A1A906F8);
  v6 = sub_297E5E830(a1, 0, 0);
  if (v6 != 13)
  {
    v7 = "phNciNfc_DetectTagRemoval: Sequence failed!";
    goto LABEL_8;
  }

  *(a1 + 3424) = a2;
  *(a1 + 3752) = a3;
LABEL_9:
  sub_297E4DFAC(2, a1, 3, 5u, "phNciNfc_DetectTagRemoval");
  return v6;
}

uint64_t sub_297F0A3C0(uint64_t a1, int *a2, uint64_t a3, uint64_t a4)
{
  sub_297E4E1B4(2, a1, 3, 5u, "phNciNfc_SetNfccParams");
  if (a1)
  {
    if (a2 && a3)
    {
      *(a1 + 3432) = a2;
      v8 = *a2;
      if (*a2 == 3)
      {
        v9 = off_2A1A90718;
      }

      else if (v8 == 8)
      {
        v9 = off_2A1A90738;
      }

      else
      {
        if (v8 != 5)
        {
          v10 = 1;
          sub_297E4E0B0(1, a1 + 6524, 3, 1u, "phNciNfc_SetNfccParams: Invalid eNfccParam");
          *(a1 + 3432) = 0;
          goto LABEL_15;
        }

        v9 = off_2A1A90778;
      }

      *(a1 + 3776) = v9;
      *(a1 + 3976) = 0;
      *(a1 + 3977) = sub_297E577AC(a1, v9);
      v10 = sub_297E5E830(a1, 0, 0);
      if (v10 == 13)
      {
        *(a1 + 3424) = a3;
        *(a1 + 3752) = a4;
        goto LABEL_16;
      }

LABEL_15:
      sub_297E4E0B0(1, a1 + 6524, 3, 2u, "phNciNfc_SetNfccParams: Sequence failed!");
      goto LABEL_16;
    }

    v10 = 1;
    sub_297E4E0B0(1, a1 + 6524, 3, 1u, "phNciNfc_SetNfccParams: Invalid parameters");
  }

  else
  {
    sub_297E4E0B0(2, 0, 3, 1u, "phNciNfc_SetNfccParams: Stack not initialized");
    v10 = 49;
  }

LABEL_16:
  sub_297E4DFAC(2, a1, 3, 5u, "phNciNfc_SetNfccParams");
  return v10;
}

uint64_t sub_297F0A54C(uint64_t a1, int a2, uint64_t a3, uint64_t a4)
{
  sub_297E4E1B4(2, a1, 3, 5u, "phNciNfc_GetNfccParams");
  if (!a1)
  {
    sub_297E4E0B0(2, 0, 3, 1u, "phNciNfc_GetNfccParams: Stack not initialized");
    v8 = 49;
    goto LABEL_11;
  }

  if (!a3)
  {
    v9 = "phNciNfc_GetNfccParams: Invalid parameters";
    v8 = 1;
LABEL_10:
    sub_297E4E0B0(1, a1 + 6524, 3, 1u, v9);
    goto LABEL_11;
  }

  if (a2 != 4)
  {
    v8 = 1;
    sub_297E4E0B0(1, a1 + 6524, 3, 1u, "phNciNfc_GetNfccParams: Invalid eGetNfccParams");
    goto LABEL_9;
  }

  *(a1 + 3776) = off_2A1A90758;
  *(a1 + 3976) = 0;
  *(a1 + 3977) = sub_297E577AC(a1, off_2A1A90758);
  v8 = sub_297E5E830(a1, 0, 0);
  if (v8 != 13)
  {
LABEL_9:
    v9 = "phNciNfc_GetNfccParams: Sequence failed!";
    goto LABEL_10;
  }

  *(a1 + 3424) = a3;
  *(a1 + 3752) = a4;
LABEL_11:
  sub_297E4DFAC(2, a1, 3, 5u, "phNciNfc_GetNfccParams");
  return v8;
}

uint64_t sub_297F0A68C(uint64_t a1, int a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  sub_297E4E1B4(2, a1, 3, 5u, "phNciNfc_RawCtrlMsgTransceive");
  if (a1)
  {
    v10 = 0;
    v11 = 0;
    do
    {
      v12 = *(&unk_2A18BDDC0 + 14 * v11 + 4);
      if (v10)
      {
        break;
      }

      v10 = 1;
      v11 = 1;
    }

    while (v12 != a1);
    if (v12 == a1)
    {
      if (a4)
      {
        if (*(a4 + 8))
        {
          Memory_Typed = phOsalNfc_GetMemory_Typed();
          if (!Memory_Typed)
          {
            sub_297E4E0B0(1, a1 + 6524, 3, 1u, "Memory not available\n");
            if (*(a4 + 8))
            {
              v13 = 12;
              goto LABEL_18;
            }
          }
        }

        else
        {
          Memory_Typed = 0;
        }

        *(a1 + 7016) = a2;
        phOsalNfc_MemCopy();
        *(a1 + 896) = Memory_Typed;
        *(a1 + 904) = *(a4 + 8);
        *(a1 + 3776) = off_2A1A90798;
        *(a1 + 3976) = 0;
        *(a1 + 3977) = sub_297E577AC(a1, off_2A1A90798);
        v13 = sub_297E5E830(a1, 0, 0);
        if (v13 == 13)
        {
          *(a1 + 3424) = a3;
          *(a1 + 3752) = a5;
          goto LABEL_7;
        }
      }

      else
      {
        v13 = 1;
      }

LABEL_18:
      sub_297E4E0B0(1, a1 + 6524, 3, 2u, "phNciNfc_RawCtrlMsgTransceive: Sequence failed!");
      phOsalNfc_FreeMemory();
      *(a1 + 896) = 0;
      *(a1 + 904) = 0;
      goto LABEL_7;
    }
  }

  sub_297E4E0B0(2, a1, 3, 1u, "phNciNfc_RawCtrlMsgTransceive: Stack not initialized");
  v13 = 49;
LABEL_7:
  sub_297E4DFAC(2, a1, 3, 5u, "phNciNfc_RawCtrlMsgTransceive");
  return v13;
}

uint64_t sub_297F0A87C(uint64_t a1, uint64_t a2)
{
  v5 = a1;
  sub_297E4E1B4(0, &v5, 3, 5u, "phNciNfc_ChkFelicaTag");
  if (a2)
  {
    v3 = 255;
    if (*(a2 + 20) == 2)
    {
      if (*(a2 + 16) == 3)
      {
        v3 = 0;
      }

      else
      {
        v3 = 255;
      }
    }
  }

  else
  {
    v3 = 255;
  }

  sub_297E4DFAC(0, &v5, 3, 5u, "phNciNfc_ChkFelicaTag");
  return v3;
}

uint64_t sub_297F0A90C(uint64_t a1)
{
  sub_297E4E1B4(2, a1, 3, 5u, "phNciNfc_GetRfErrorStatus");
  if (a1)
  {
    v2 = *(a1 + 6618);
    *(a1 + 6618) = 0;
  }

  else
  {
    v2 = 1;
  }

  sub_297E4DFAC(2, a1, 3, 5u, "phNciNfc_GetRfErrorStatus");
  return v2;
}

uint64_t sub_297F0A97C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  sub_297E4E1B4(2, a1, 3, 5u, "phNciNfc_CoreReset");
  if (a1)
  {
    if (a2)
    {
      *(a1 + 896) = 0;
      *(a1 + 904) = 0;
      *(a1 + 3424) = a2;
      *(a1 + 3752) = a3;
      *(a1 + 36) = 0;
      *(a1 + 3776) = off_2A1A90AF8;
      *(a1 + 3976) = 0;
      *(a1 + 3977) = sub_297E577AC(a1, off_2A1A90AF8);
      v6 = sub_297E5E830(a1, 0, 0);
      if (v6 != 13)
      {
        sub_297E4E0B0(1, a1 + 6524, 3, 4u, "phNciNfc_CoreReset:gphNciNfc_CoreResetSequence failed");
        *(a1 + 896) = 0;
        *(a1 + 904) = 0;
      }
    }

    else
    {
      v6 = 1;
      sub_297E4E0B0(1, a1 + 6524, 3, 1u, "phNciNfc_CoreReset:Invalid parameter passed");
    }
  }

  else
  {
    sub_297E4E0B0(2, 0, 3, 1u, "phNciNfc_CoreReset:Stack not initialized");
    v6 = 49;
  }

  sub_297E4DFAC(2, a1, 3, 5u, "phNciNfc_CoreReset");
  return v6;
}

uint64_t sub_297F0AAB0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  sub_297E4E1B4(2, a1, 3, 5u, "phNciNfc_CoreInit");
  if (a1)
  {
    if (a2)
    {
      *(a1 + 896) = 0;
      *(a1 + 904) = 0;
      *(a1 + 3424) = a2;
      *(a1 + 3752) = a3;
      *(a1 + 40) = 256;
      *(a1 + 3776) = off_2A1A90B18;
      *(a1 + 3976) = 0;
      *(a1 + 3977) = sub_297E577AC(a1, off_2A1A90B18);
      v6 = sub_297E5E830(a1, 0, 0);
      if (v6 != 13)
      {
        sub_297E4E0B0(1, a1 + 6524, 3, 4u, "phNciNfc_CoreInit:gphNciNfc_CoreResetSequence failed");
        *(a1 + 896) = 0;
        *(a1 + 904) = 0;
      }
    }

    else
    {
      v6 = 1;
      sub_297E4E0B0(1, a1 + 6524, 3, 1u, "phNciNfc_CoreInit:Invalid parameter passed");
    }
  }

  else
  {
    sub_297E4E0B0(2, 0, 3, 1u, "phNciNfc_CoreInit:Stack not initialized");
    v6 = 49;
  }

  sub_297E4DFAC(2, a1, 3, 5u, "phNciNfc_CoreInit");
  return v6;
}

uint64_t sub_297F0ABE8(uint64_t a1, uint64_t a2)
{
  sub_297E4E1B4(2, a1, 3, 5u, "phNciNfc_SetDnldCoreContext");
  if (a1)
  {
    v4 = 0;
    *(a1 + 6624) = a2;
  }

  else
  {
    v4 = 255;
  }

  sub_297E4DFAC(2, a1, 3, 5u, "phNciNfc_SetDnldCoreContext");
  return v4;
}

uint64_t sub_297F0AC64(uint64_t a1, uint64_t a2)
{
  sub_297E4E1B4(2, a1, 3, 5u, "phNciNfc_SetDnldEseCoreContext");
  if (a1)
  {
    v4 = 0;
    *(a1 + 6632) = a2;
  }

  else
  {
    v4 = 255;
  }

  sub_297E4DFAC(2, a1, 3, 5u, "phNciNfc_SetDnldEseCoreContext");
  return v4;
}

uint64_t sub_297F0ACE0(uint64_t a1, char a2)
{
  sub_297E4E1B4(2, a1, 3, 5u, "phNciNfc_SeDataPktDelayCfg");
  if (!a1)
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

  while (v6 != a1);
  if (v6 == a1)
  {
    if (*(a1 + 4828) == 1)
    {
      v8 = a2;
    }

    else
    {
      v8 = 0;
    }

    *(a1 + 6656) = v8;
    sub_297E50EBC(1, a1 + 6524, 3, 4u, "phNciNfc_SeDataPktDelayCfg: pNciCtx->bSeTxDelay");
    v7 = 0;
  }

  else
  {
LABEL_6:
    v7 = 255;
  }

  sub_297E4DFAC(2, a1, 3, 5u, "phNciNfc_SeDataPktDelayCfg");
  return v7;
}

uint64_t sub_297F0ADBC(uint64_t a1, char a2)
{
  sub_297E4E1B4(2, a1, 3, 5u, "phNciNfc_SeEUiccSelectCfg");
  if (!a1)
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

  while (v6 != a1);
  if (v6 == a1)
  {
    *(a1 + 6657) = a2;
    sub_297E50EBC(1, a1 + 6524, 3, 4u, "phNciNfc_SeEUiccSelectCfg: pNciCtx->bSeEUiccCfg");
    v7 = 0;
  }

  else
  {
LABEL_6:
    v7 = 255;
  }

  sub_297E4DFAC(2, a1, 3, 5u, "phNciNfc_SeEUiccSelectCfg");
  return v7;
}

uint64_t sub_297F0AE90(uint64_t a1)
{
  sub_297E4E1B4(2, a1, 3, 5u, "phNciNfc_GetSeCreditToStatus");
  if (!a1)
  {
    goto LABEL_6;
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

  while (v4 != a1);
  if (v4 == a1)
  {
    v5 = *(a1 + 6660);
  }

  else
  {
LABEL_6:
    v5 = 255;
  }

  sub_297E4DFAC(2, a1, 3, 5u, "phNciNfc_GetSeCreditToStatus");
  return v5;
}

uint64_t sub_297F0AF34(uint64_t a1)
{
  sub_297E4E1B4(2, a1, 3, 5u, "phNciNfc_TagRemNtfClearRemDevInfo");
  if (a1)
  {
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

    while (v4 != a1);
    if (v4 == a1)
    {
      *(a1 + 172) = 3;
      sub_297E5B554(a1);
      sub_297F00E88(a1 + 936);
      sub_297E56EF8(a1 + 936, 0);
    }
  }

  return sub_297E4DFAC(2, a1, 3, 5u, "phNciNfc_TagRemNtfClearRemDevInfo");
}

uint64_t sub_297F0AFF8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v9 = 0;
  v10 = a1;
  sub_297E4E1B4(0, &v10, 8, 5u, "phFriNfc_TopazDynamicMap_ChkNdef");
  sub_297E57170(v10, &v9);
  v5 = 1;
  if (a3)
  {
    if (a2)
    {
      v6 = v9;
      if (v9)
      {
        *(v9 + 8) = a2;
        *(v6 + 40) = a3;
        *(v6 + 540) = 1;
        *(v6 + 547) = 1;
        *(v6 + 644) = 0;
        *(v6 + 656) = 0;
        *(v6 + 660) = 0;
        *(v6 + 918) = 0;
        *(v6 + 545) = 3;
        *(v6 + 642) = 0;
        phOsalNfc_SetMemory();
        phOsalNfc_SetMemory();
        v7 = v9;
        *(v9 + 544) = 5;
        *v7 = 1;
        v7[646] = 9;
        v7[266] = 16;
        v5 = sub_297F0B114(v7);
      }
    }
  }

  sub_297E4DFAC(0, &v10, 8, 5u, "phFriNfc_TopazDynamicMap_ChkNdef");
  return v5;
}

uint64_t sub_297F0B114(uint64_t a1)
{
  sub_297E4E1B4(2, a1, 8, 5u, "phFriNfc_Tpz_H_NxpRead");
  *(a1 + 208) &= 0xFCu;
  *(a1 + 212) = 0;
  *(a1 + 48) = sub_297F0BAA0;
  *(a1 + 56) = a1;
  *(a1 + 264) = 260;
  *(a1 + 232) = 0;
  v2 = *(a1 + 266);
  if (v2 == 120)
  {
    phOsalNfc_MemCopy();
    v4 = 7;
    if (*(a1 + 266) == 120)
    {
      goto LABEL_8;
    }
  }

  else
  {
    if (v2 == 16)
    {
      v3 = 16 * *(a1 + 660);
    }

    else
    {
      if (v2 != 2)
      {
        v5 = 245;
        goto LABEL_12;
      }

      v3 = *(a1 + 642);
    }

    *(a1 + 267) = v3;
    v4 = 2;
  }

  phOsalNfc_MemCopy();
  phOsalNfc_MemCopy();
  v4 += 12;
LABEL_8:
  *(a1 + 526) = v4;
  v5 = sub_297E98D38(a1, sub_297F0DC00);
LABEL_12:
  sub_297E4DFAC(2, a1, 8, 5u, "phFriNfc_Tpz_H_NxpRead");
  return v5;
}

uint64_t sub_297F0B298(uint64_t a1, uint64_t a2, _DWORD *a3, unsigned int a4, uint64_t a5, uint64_t a6)
{
  v30[33] = *MEMORY[0x29EDCA608];
  v29 = 0;
  v30[0] = a1;
  sub_297E4E1B4(0, v30, 8, 5u, "phFriNfc_TopazDynamicMap_RdNdef");
  sub_297E57170(v30[0], &v29);
  v11 = 1;
  if (a4 <= 1)
  {
    if (a3)
    {
      if (a2)
      {
        if (a5)
        {
          v12 = v29;
          if (v29)
          {
            if (a4 == 1 || *(v29 + 540) != 3)
            {
              *(v29 + 16) = a5;
              *(v12 + 40) = a6;
              *(v12 + 547) = 2;
              *(v12 + 240) = a2;
              *(v12 + 248) = *a3;
              *(v12 + 552) = a3;
              *a3 = 0;
              *(v12 + 252) = 0;
              *(v12 + 560) = a4;
              *(v12 + 644) = 1;
              *(v12 + 647) = 0;
              *(v12 + 540) = 2;
              if (a4 || *(v12 + 645) != 1)
              {
                if (*(v12 + 545) && *(v12 + 922))
                {
                  if (a4 == 1)
                  {
                    *(v12 + 560) = 1;
                    *(v12 + 656) = 0;
                    *(v12 + 926) = 0;
                    *(v12 + 917) = 0;
                    *(v12 + 645) = 0;
                    *(v12 + 642) = 0;
                    *(v12 + 921) = 0;
                    v13 = sub_297F0B5FC(v12) >> 7;
                    v14 = v29;
                    *(v29 + 660) = v13;
                    v15 = v14[65] == 0;
                    if (v14[65])
                    {
                      v16 = 1;
                    }

                    else
                    {
                      v16 = 4;
                    }

                    *v14 = v16;
                    v14[645] = 0;
                    if (v15)
                    {
                      v17 = 120;
                    }

                    else
                    {
                      v17 = 16;
                    }

                    v14[266] = v17;
                    v11 = sub_297F0B114(v14);
                  }

                  else
                  {
                    *v12 = 1;
                    sub_297E4E1B4(2, v12, 8, 5u, "phFriNfc_Tpz_H_RemainingReadDataCopy");
                    v18 = *(v12 + 917);
                    v19 = *(v12 + 252);
                    if (*(v12 + 917))
                    {
                      v20 = *(v12 + 248);
                      if (v20 >= v19)
                      {
                        v21 = v20 - v19;
                      }

                      else
                      {
                        v21 = 0;
                      }

                      if (v21 >= v18)
                      {
                        phOsalNfc_MemCopy();
                      }

                      else
                      {
                        if (v20 >= v19)
                        {
                          v22 = v20 - v19;
                        }

                        else
                        {
                          v22 = 0;
                        }

                        phOsalNfc_MemCopy();
                        phOsalNfc_SetMemory();
                        phOsalNfc_MemCopy();
                        phOsalNfc_MemCopy();
                        LOWORD(v18) = v22;
                      }

                      LOWORD(v19) = *(v12 + 252) + v18;
                      *(v12 + 252) = v19;
                      v24 = *(v12 + 917);
                      if (v18 <= v24)
                      {
                        v25 = v24 - v18;
                      }

                      else
                      {
                        v25 = 0;
                      }

                      *(v12 + 917) = v25;
                      v26 = *(v12 + 926);
                      v27 = v26 >= v18;
                      v23 = v26 - v18;
                      if (!v27)
                      {
                        v23 = 0;
                      }

                      *(v12 + 926) = v23;
                    }

                    else
                    {
                      v23 = *(v12 + 926);
                    }

                    if (v23)
                    {
                      if (*(v12 + 248) == v19)
                      {
                        v11 = 0;
                        **(v12 + 552) = v19;
                      }

                      else
                      {
                        ++*(v12 + 660);
                        *(v12 + 266) = 16;
                        v11 = sub_297F0B114(v12);
                      }
                    }

                    else
                    {
                      v11 = 0;
                      **(v12 + 552) = v19;
                      *(v12 + 917) = 0;
                      *(v12 + 645) = 1;
                    }

                    sub_297E4DFAC(2, v12, 8, 5u, "phFriNfc_Tpz_H_RemainingReadDataCopy");
                  }
                }

                else
                {
                  v11 = 20;
                }
              }

              else
              {
                v11 = 26;
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

  sub_297E4DFAC(0, v30, 8, 5u, "phFriNfc_TopazDynamicMap_RdNdef");
  return v11;
}

uint64_t sub_297F0B5FC(uint64_t a1)
{
  sub_297E4E1B4(2, a1, 8, 5u, "phFriNfc_Tpz_H_GetNDEFValueFieldAddrForRead");
  v2 = 0;
  v3 = *(a1 + 918);
  do
  {
    if ((v3 + 1) == 104)
    {
      v4 = 128;
    }

    else
    {
      v4 = v3 + 1;
    }

    v3 = v4 + sub_297F0DC98(a1, v4);
  }

  while (*(a1 + 922) >= 0xFFu && v2++ < 2);
  if ((v3 + 1) == 104)
  {
    v6 = 128;
  }

  else
  {
    v6 = v3 + 1;
  }

  v7 = sub_297F0DC98(a1, v6) + v6;
  sub_297E4DFAC(2, a1, 8, 5u, "phFriNfc_Tpz_H_GetNDEFValueFieldAddrForRead");
  return v7;
}

uint64_t sub_297F0B6C4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v9 = 0;
  v10 = a1;
  sub_297E4E1B4(0, &v10, 8, 5u, "phFriNfc_TopazDynamicMap_ConvertToReadOnly");
  sub_297E57170(v10, &v9);
  v5 = 1;
  if (a2)
  {
    v6 = v9;
    if (v9)
    {
      *(v9 + 32) = a2;
      *(v6 + 40) = a3;
      *(v6 + 547) = 6;
      *v6 = 17;
      *(v6 + 642) = 769;
      *(v6 + 266) = 83;
      if (sub_297E8EA44(*(v6 + 2712)) == 1)
      {
        v7 = 0;
      }

      else
      {
        v7 = 15;
      }

      byte_2A13A5C90 = v7;
      v5 = sub_297F0B7B8(v9, &byte_2A13A5C90, 1);
      if (v5 == 13)
      {
        *(v9 + 928) = 0;
      }
    }
  }

  sub_297E4DFAC(0, &v10, 8, 5u, "phFriNfc_TopazDynamicMap_ConvertToReadOnly");
  return v5;
}

uint64_t sub_297F0B7B8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = a3;
  sub_297E4E1B4(2, a1, 8, 5u, "phFriNfc_Tpz_H_NxpWrite");
  *(a1 + 208) &= 0xFCu;
  *(a1 + 212) = 0;
  *(a1 + 48) = sub_297F0BAA0;
  *(a1 + 56) = a1;
  *(a1 + 264) = 260;
  *(a1 + 232) = 0;
  v5 = *(a1 + 266);
  if (v5 == 84)
  {
    v6 = *(a1 + 642);
  }

  else
  {
    if (v5 != 83)
    {
      v7 = 245;
      goto LABEL_7;
    }

    v6 = *(a1 + 643) | (8 * *(a1 + 642));
  }

  *(a1 + 267) = v6;
  phOsalNfc_MemCopy();
  phOsalNfc_MemCopy();
  *(a1 + 526) = (v3 + 6);
  v7 = sub_297E98D38(a1, sub_297F0DC00);
LABEL_7:
  sub_297E4DFAC(2, a1, 8, 5u, "phFriNfc_Tpz_H_NxpWrite");
  return v7;
}

uint64_t sub_297F0B8E0(uint64_t a1, uint64_t a2, _DWORD *a3, int a4, uint64_t a5, uint64_t a6)
{
  v17 = 0;
  v18 = a1;
  sub_297E4E1B4(0, &v18, 8, 5u, "phFriNfc_TopazDynamicMap_WrNdef");
  sub_297E57170(v18, &v17);
  v11 = 1;
  if (a3 && a5 && v17)
  {
    phOsalNfc_MemCopy();
    v12 = v17;
    *(v17 + 2740) = 3;
    *(v12 + 24) = a5;
    *(v12 + 40) = a6;
    *(v12 + 547) = 3;
    *(v12 + 252) = 0;
    **(v12 + 528) = 0;
    v13 = v17;
    v14 = v17 + 2736;
    if (*a3)
    {
      v15 = a3;
    }

    else
    {
      v15 = (v17 + 2740);
    }

    if (*a3)
    {
      v14 = a2;
    }

    *(v17 + 240) = v14;
    *(v13 + 248) = *v15;
    *(v13 + 252) = 0;
    *(v13 + 256) = v15;
    *v15 = 0;
    *(v13 + 644) = 2;
    *(v13 + 560) = a4;
    *(v13 + 540) = 3;
    if (*(v13 + 545) == 1)
    {
      v11 = 21;
    }

    else if (a4)
    {
      if (*(v13 + 918))
      {
        if (a4 == 1)
        {
          *(v13 + 560) = 1;
          *(v13 + 656) = 0;
          *v13 = 1;
          *(v13 + 645) = 0;
          *(v13 + 660) = 0;
          *(v13 + 642) = 1;
          *(v13 + 921) = 0;
          *(v13 + 266) = 2;
          v11 = sub_297F0B114(v13);
        }

        else
        {
          v11 = 0;
        }
      }

      else
      {
        v11 = 22;
      }
    }

    else if (*(v13 + 645) == 1)
    {
      v11 = 26;
    }

    else if (*(v13 + 918))
    {
      v11 = 0;
    }

    else
    {
      v11 = 22;
    }
  }

  sub_297E4DFAC(0, &v18, 8, 5u, "phFriNfc_TopazDynamicMap_WrNdef");
  return v11;
}

uint64_t sub_297F0BAA0(uint64_t a1, unsigned __int8 *a2, uint64_t a3)
{
  v160[1] = *MEMORY[0x29EDCA608];
  v159 = a1;
  sub_297E4E1B4(0, &v159, 8, 5u, "phFriNfc_TopazDynamicMap_Process");
  if (a3)
  {
    goto LABEL_470;
  }

  v5 = *a2;
  a3 = 245;
  if (v5 > 3)
  {
    if (v5 == 4)
    {
      sub_297E4E1B4(2, a2, 8, 5u, "phFriNfc_Tpz_H_ChkReadID");
      if (*(a2 + 132) == 6)
      {
        if (a2[266] == 18)
        {
          if (phOsalNfc_MemCompare())
          {
            a3 = 22;
          }

          else
          {
            *a2 = 1;
            a2[266] = 16;
            a3 = sub_297F0B114(a2);
          }
        }

        else
        {
          a3 = 0;
        }
      }

      else
      {
        a3 = 27;
      }

      v44 = "phFriNfc_Tpz_H_ChkReadID";
      goto LABEL_469;
    }

    if (v5 != 16)
    {
      if (v5 != 17)
      {
        goto LABEL_471;
      }

      sub_297E4E1B4(2, a2, 8, 5u, "phFriNfc_Tpz_H_ProcessReadOnly");
      v6 = a2[928];
      a3 = 27;
      if (v6 <= 2)
      {
        if (!a2[928])
        {
          if (*(a2 + 132) == 1)
          {
            a3 = 0;
            LOBYTE(v6) = 0;
            a2[642] = a2[148];
          }

          else
          {
            LOBYTE(v6) = 0;
          }

          goto LABEL_304;
        }

        if (v6 == 1)
        {
          if (*(a2 + 132) == 8)
          {
            v160[0] = 0;
            sub_297E4E1B4(2, a2, 8, 5u, "phFriNfc_Tpz_H_UpdateAndWriteLockBits");
            phOsalNfc_MemCopy();
            LOBYTE(v35) = a2[140];
            if (*(a2 + 74) == a2[642])
            {
              v36 = *(a2 + 75);
              LODWORD(v37) = v36;
              if (v36 > 8u || (v38 = 64 - 8 * (v36 & 0xF), v38 > 0xFF))
              {
                v38 = 0;
              }
            }

            else
            {
              LODWORD(v37) = 0;
              LOBYTE(v35) = v35 - a2[929];
              v38 = 64;
            }

            if (v38 >= v35)
            {
              if ((v35 & 7) != 0)
              {
                LOBYTE(v160[0]) = LOBYTE(v160[0]) & (255 << (v35 & 7)) | 1;
              }

              else if (v35 && v37 <= 7)
              {
                LOBYTE(v150) = 0;
                v37 = v37;
                do
                {
                  *(v160 + v37) = -1;
                  if (v37 > 6)
                  {
                    break;
                  }

                  v150 = (v150 + 1);
                  ++v37;
                }

                while (v150 < v35 >> 3);
              }
            }

            else
            {
              v35 = v38 >> 3;
              if (v37 <= 7 && v38 >= 8)
              {
                LOBYTE(v107) = 0;
                v37 = v37;
                do
                {
                  *(v160 + v37) = -1;
                  if (v37 > 6)
                  {
                    break;
                  }

                  v107 = (v107 + 1);
                  ++v37;
                }

                while (v107 < v35);
              }
            }

            a2[929] = v35;
            a2[266] = 84;
            a3 = sub_297F0B7B8(a2, v160, 8);
            sub_297E4DFAC(2, a2, 8, 5u, "phFriNfc_Tpz_H_UpdateAndWriteLockBits");
            if (a3 == 13)
            {
              LOBYTE(v6) = 2;
            }

            else
            {
              LOBYTE(v6) = 1;
            }

            goto LABEL_304;
          }

          goto LABEL_290;
        }

        if (v6 == 2)
        {
          if (*(a2 + 132) != 8)
          {
            LOBYTE(v6) = 2;
            goto LABEL_304;
          }

          ++a2[642];
          if (a2[140] == a2[929])
          {
            *(a2 + 321) = 14;
            a2[266] = 2;
            a3 = sub_297F0B114(a2);
            LOBYTE(v6) = 3;
            goto LABEL_304;
          }

          a2[266] = 2;
          a3 = sub_297F0B114(a2);
LABEL_290:
          LOBYTE(v6) = 1;
        }

LABEL_304:
        a2[928] = v6;
        v44 = "phFriNfc_Tpz_H_ProcessReadOnly";
        goto LABEL_469;
      }

      if (v6 == 3)
      {
        if (*(a2 + 132) != 8)
        {
          goto LABEL_304;
        }

        phOsalNfc_MemCopy();
        LOBYTE(v160[0]) = -1;
      }

      else
      {
        if (v6 != 4)
        {
          if (v6 == 5)
          {
            if (*(a2 + 132) == 1)
            {
              a3 = 0;
            }

            else
            {
              a3 = 27;
            }
          }

          goto LABEL_304;
        }

        if (*(a2 + 132) != 1)
        {
          goto LABEL_304;
        }

        LOBYTE(v160[0]) = byte_2A18BE726 | 0x7F;
        *(a2 + 321) = 270;
      }

      a2[266] = 83;
      a3 = sub_297F0B7B8(a2, v160, 1);
      if (a3 == 13)
      {
        LOBYTE(v6) = v6 + 1;
      }

      goto LABEL_304;
    }

    sub_297E4E1B4(2, a2, 8, 5u, "phFriNfc_Tpz_H_ProRdForWrResp");
    *a2 = 2;
    if (*(a2 + 132) != 8)
    {
      a3 = 27;
      goto LABEL_439;
    }

    v12 = a2[921];
    if (v12 > 9)
    {
LABEL_133:
      if (!a2[921])
      {
        sub_297E4E1B4(2, a2, 8, 5u, "phFriNfc_Tpz_H_UpdateNdefTypeField");
        phOsalNfc_MemCopy();
        *(v160 + a2[643]) = 3;
        *a2 = 2;
        a2[266] = 84;
        a3 = sub_297F0B7B8(a2, v160, 8);
        v42 = a2;
        v43 = "phFriNfc_Tpz_H_UpdateNdefTypeField";
LABEL_438:
        sub_297E4DFAC(2, v42, 8, 5u, v43);
        goto LABEL_439;
      }

      a3 = 0;
LABEL_439:
      v44 = "phFriNfc_Tpz_H_ProRdForWrResp";
      goto LABEL_469;
    }

    if (((1 << v12) & 0x1C) == 0)
    {
      if (((1 << v12) & 0x380) != 0)
      {
        sub_297E4E1B4(2, a2, 8, 5u, "phFriNfc_Tpz_H_UpdateLenFieldValuesAfterRead");
        if (*(a2 + 62) >= *(a2 + 462))
        {
          v13 = *(a2 + 462);
        }

        else
        {
          v13 = *(a2 + 62);
        }

        *a2 = 2;
        phOsalNfc_MemCopy();
        v14 = a2[921];
        if (v14 == 7)
        {
          v15 = 0;
          word_2A18BE730 = 0;
        }

        else
        {
          v15 = word_2A18BE730;
        }

        v49 = a2[643];
        v50 = v15 + v49;
        if ((v15 + v49) <= 7u)
        {
          while (1)
          {
            word_2A18BE730 = 0;
            v51 = sub_297F0DC98(a2, 8 * a2[642] + v49);
            word_2A18BE730 = v51;
            if (!v51)
            {
              break;
            }

            if (v51 >= (8 - v50))
            {
              word_2A18BE730 = v51 - (8 - v50);
              goto LABEL_402;
            }

            LOBYTE(v49) = a2[643] + v51;
            a2[643] = v49;
            v50 += v51;
            word_2A18BE730 = 0;
            v52 = 1;
LABEL_180:
            if (v50 > 7u || (v52 & 1) == 0)
            {
              goto LABEL_402;
            }
          }

          if (v14 != 9)
          {
            if (v14 == 8)
            {
              v53 = a2[253];
              v52 = 1;
              goto LABEL_170;
            }

            if (v14 != 7)
            {
              v52 = 1;
LABEL_171:
              if (++v50 != 8 && v14 != 9 && v13 > 0xFEu)
              {
                ++v14;
              }

              LOBYTE(v49) = a2[643] + 1;
              a2[643] = v49;
              goto LABEL_180;
            }

            if (v13 > 0xFEu)
            {
              v52 = 1;
              v53 = -1;
              goto LABEL_170;
            }
          }

          v52 = 0;
          v53 = a2[252];
LABEL_170:
          *(v160 + v50) = v53;
          goto LABEL_171;
        }

LABEL_402:
        a2[921] = v14;
        a2[266] = 84;
        a3 = sub_297F0B7B8(a2, v160, 8);
        v43 = "phFriNfc_Tpz_H_UpdateLenFieldValuesAfterRead";
        goto LABEL_437;
      }

      if (((1 << v12) & 0x60) != 0)
      {
        sub_297E4E1B4(2, a2, 8, 5u, "phFriNfc_Tpz_H_CopyReadDataAndWrite");
        if (*(a2 + 62) >= *(a2 + 462))
        {
          v39 = *(a2 + 462);
        }

        else
        {
          v39 = *(a2 + 62);
        }

        phOsalNfc_MemCopy();
        v40 = a2[642];
        if (v40 == sub_297F0D8A0(a2, v39) >> 3)
        {
          v41 = 0;
          word_2A18BE72E = 0;
        }

        else
        {
          v41 = word_2A18BE72E;
          if (word_2A18BE72E && word_2A18BE72E >= 8u)
          {
            word_2A18BE72E -= 8;
            v58 = a2 + 252;
            LOWORD(v41) = v41 - 8;
LABEL_192:
            if (*v58 == v39 || !v41)
            {
LABEL_435:
              v59 = 5;
            }

            else
            {
              v59 = 6;
            }

            a2[921] = v59;
            a2[266] = 84;
            a3 = sub_297F0B7B8(a2, v160, 8);
            v43 = "phFriNfc_Tpz_H_CopyReadDataAndWrite";
            goto LABEL_437;
          }
        }

        v58 = a2 + 252;
        if (*(a2 + 126) != v39)
        {
          v102 = a2[643];
          while (1)
          {
            word_2A18BE72E = 0;
            v103 = sub_297F0DC98(a2, 8 * a2[642] + v102);
            word_2A18BE72E = v103;
            if (v103)
            {
              v104 = 8 - v41;
              if (v103 >= (8 - v41))
              {
                LOWORD(v41) = v103 - v104;
                word_2A18BE72E = v103 - v104;
                a2[643] = 0;
                goto LABEL_192;
              }

              v102 = a2[643] + v103;
              a2[643] = v102;
              v41 += v103;
              word_2A18BE72E = 0;
              v105 = *(a2 + 126);
            }

            else
            {
              v106 = *(a2 + 126);
              *(v160 + v41++) = *(*(a2 + 30) + v106);
              v105 = v106 + 1;
              *(a2 + 126) = v105;
              v102 = a2[643] + 1;
              a2[643] = v102;
            }

            if (v41 >= 8u || v39 == v105)
            {
              goto LABEL_435;
            }
          }
        }

        goto LABEL_192;
      }

      goto LABEL_133;
    }

    sub_297E4E1B4(2, a2, 8, 5u, "phFriNfc_Tpz_H_UpdateLenFieldZeroAfterRead");
    if (*(a2 + 62) >= *(a2 + 462))
    {
      v26 = *(a2 + 462);
    }

    else
    {
      v26 = *(a2 + 62);
    }

    *a2 = 2;
    phOsalNfc_MemCopy();
    v27 = a2[921];
    if (v27 == 2)
    {
      word_2A18BE732 = 0;
    }

    v28 = *(a2 + 126);
    v29 = a2[643];
    if (a2[643])
    {
      a2[643] = 0;
    }

    v30 = word_2A18BE732 + v29;
    if ((word_2A18BE732 + v29) > 7u)
    {
      v56 = v28;
LABEL_427:
      if (v56 != v26)
      {
        if (v27 == 5 && v28 == v56)
        {
          if (v26 >= 0xFFu)
          {
            LOBYTE(v27) = 4;
          }

          else
          {
            LOBYTE(v27) = 2;
          }
        }

        goto LABEL_434;
      }
    }

    else
    {
      v31 = 0;
      while (*(a2 + 126) != v26)
      {
        word_2A18BE732 = 0;
        v32 = sub_297F0DC98(a2, 8 * a2[642] + v31);
        word_2A18BE732 = v32;
        if (v32)
        {
          if (v32 >= (8 - v30))
          {
            word_2A18BE732 = v32 - (8 - v30);
LABEL_426:
            v56 = *(a2 + 126);
            goto LABEL_427;
          }

          v31 = a2[643] + v32;
          a2[643] = v31;
          v30 += v32;
          word_2A18BE732 = 0;
        }

        else
        {
          if ((v27 - 3) >= 2)
          {
            if (v27 == 2)
            {
              *(v160 + v30++) = 0;
              if (v30 == 8)
              {
                v33 = 2;
              }

              else
              {
                v33 = 3;
              }

              if (v26 >= 0xFFu)
              {
                v27 = v33;
              }

              else
              {
                v27 = 5;
              }
            }

            else
            {
              v34 = *(a2 + 126);
              *(v160 + v30++) = *(*(a2 + 30) + v34);
              *(a2 + 126) = v34 + 1;
            }
          }

          else
          {
            *(v160 + v30++) = 0;
            if (v30 != 8)
            {
              ++v27;
            }
          }

          v31 = a2[643] + 1;
          a2[643] = v31;
        }

        if (v30 >= 8u)
        {
          goto LABEL_426;
        }
      }
    }

    LOBYTE(v27) = 5;
LABEL_434:
    a2[921] = v27;
    a2[643] = 0;
    a2[266] = 84;
    a3 = sub_297F0B7B8(a2, v160, 8);
    v43 = "phFriNfc_Tpz_H_UpdateLenFieldZeroAfterRead";
LABEL_437:
    v42 = a2;
    goto LABEL_438;
  }

  if (v5 != 1)
  {
    if (v5 != 2)
    {
      goto LABEL_471;
    }

    LOBYTE(v160[0]) = 0;
    sub_297E4E1B4(2, a2, 8, 5u, "phFriNfc_Tpz_H_ProWrResp");
    a3 = 0;
    v7 = a2[921];
    v8 = *(a2 + 62);
    if (v8 >= *(a2 + 462))
    {
      LOWORD(v8) = *(a2 + 462);
    }

    if (a2[921] > 4u)
    {
      if (a2[921] <= 7u)
      {
        if (v7 != 5)
        {
          if (v7 == 6)
          {
            if (*(a2 + 132) == 8)
            {
              a2[643] = 0;
              v45 = a2[642];
              if (v45 == 12)
              {
                v46 = 16;
              }

              else
              {
                v46 = v45 + 1;
              }

              a2[642] = v46;
              goto LABEL_84;
            }
          }

          else if (*(a2 + 132) == 8)
          {
            if (v8 > 0xFEu)
            {
              a2[643] = 0;
              v9 = a2[642];
              if (v9 == 12)
              {
                v10 = 16;
              }

              else
              {
                v10 = v9 + 1;
              }

              a2[642] = v10;
              v11 = 8;
              goto LABEL_83;
            }

            goto LABEL_145;
          }

          goto LABEL_156;
        }

        if (*(a2 + 132) == 8)
        {
          if (*(a2 + 126) == v8)
          {
            **(a2 + 32) = v8;
            v11 = 7;
            goto LABEL_83;
          }

          a2[643] = 0;
          v142 = a2[642];
          if (v142 == 12)
          {
            v143 = 16;
          }

          else
          {
            v143 = v142 + 1;
          }

          a2[642] = v143;
LABEL_407:
          v25 = sub_297F0D97C(a2);
          goto LABEL_408;
        }

LABEL_156:
        a3 = 27;
        goto LABEL_409;
      }

      if (v7 != 8)
      {
        if (v7 == 9)
        {
          if (*(a2 + 132) == 8)
          {
LABEL_145:
            a2[266] = 83;
            *a2 = 2;
            LOBYTE(v160[0]) = -31;
            *(a2 + 321) = 1;
            a2[921] = 10;
            goto LABEL_146;
          }

          goto LABEL_156;
        }

        if (v7 == 10)
        {
          if (*(a2 + 132) != 1)
          {
            goto LABEL_156;
          }

          a3 = 0;
          v21 = *(a2 + 126);
          **(a2 + 32) = v21;
          *(a2 + 461) = v21;
        }

LABEL_409:
        v44 = "phFriNfc_Tpz_H_ProWrResp";
        goto LABEL_469;
      }

LABEL_78:
      if (*(a2 + 132) == 8)
      {
        a2[643] = 0;
        v23 = a2[642];
        if (v23 == 12)
        {
          v24 = 16;
        }

        else
        {
          v24 = v23 + 1;
        }

        a2[642] = v24;
        v11 = v7 + 1;
        goto LABEL_83;
      }

      goto LABEL_156;
    }

    if (a2[921] <= 1u)
    {
      if (a2[921])
      {
        if (*(a2 + 132) == 1)
        {
          v11 = 2;
LABEL_83:
          a2[921] = v11;
LABEL_84:
          v25 = sub_297F0D764(a2);
LABEL_408:
          a3 = v25;
          goto LABEL_409;
        }
      }

      else if (*(a2 + 132) == 8)
      {
        *a2 = 2;
        a2[921] = 1;
        *(a2 + 321) = 1;
        a2[266] = 83;
LABEL_146:
        v25 = sub_297F0B7B8(a2, v160, 1);
        goto LABEL_408;
      }

      goto LABEL_156;
    }

    if (v7 == 2)
    {
      if (*(a2 + 132) != 8)
      {
        goto LABEL_156;
      }

      v20 = v8;
      if (v8 >= 0xFFu)
      {
        a2[643] = 0;
        v47 = a2[642];
        if (v47 == 12)
        {
          v48 = 16;
        }

        else
        {
          v48 = v47 + 1;
        }

        a2[642] = v48;
        v11 = 3;
        goto LABEL_83;
      }
    }

    else
    {
      if (v7 == 3)
      {
        goto LABEL_78;
      }

      if (*(a2 + 132) != 8)
      {
        goto LABEL_156;
      }

      v20 = v8;
    }

    v57 = sub_297F0D8A0(a2, v20);
    a2[642] = v57 >> 3;
    a2[921] = 5;
    a2[643] = v57 & 7;
    if ((v57 & 7) != 0)
    {
      goto LABEL_84;
    }

    goto LABEL_407;
  }

  LOBYTE(v160[0]) = 0;
  sub_297E4E1B4(2, a2, 8, 5u, "phFriNfc_Tpz_H_ProReadResp");
  v16 = a2[540];
  if (v16 == 3)
  {
    if (*(a2 + 132) == 8)
    {
      phOsalNfc_MemCopy();
      sub_297E4E1B4(2, a2, 8, 5u, "phFriNfc_Tpz_H_CheckCCBytesForWrite");
      if (a2[652] != 225 && a2[652] || a2[655])
      {
        sub_297E4DFAC(2, a2, 8, 5u, "phFriNfc_Tpz_H_CheckCCBytesForWrite");
        a3 = 22;
      }

      else
      {
        sub_297E4DFAC(2, a2, 8, 5u, "phFriNfc_Tpz_H_CheckCCBytesForWrite");
        if (a2[652] && a2[920] != 6)
        {
          a2[921] = 1;
          *(a2 + 321) = 1;
          *a2 = 2;
          a2[266] = 83;
          v109 = sub_297F0B7B8(a2, v160, 1);
        }

        else
        {
          *a2 = 16;
          a2[921] = 0;
          v108 = *(a2 + 459);
          a2[642] = v108 >> 3;
          a2[643] = v108 & 7;
          a2[266] = 2;
          v109 = sub_297F0B114(a2);
        }

        a3 = v109;
      }

      goto LABEL_468;
    }

    goto LABEL_74;
  }

  if (v16 == 2)
  {
    if (*(a2 + 132) == 128)
    {
      sub_297E4E1B4(2, a2, 8, 5u, "phFriNfc_Tpz_H_CopyReadData");
      if (a2[560])
      {
        v22 = *(a2 + 461);
      }

      else
      {
        v22 = *(a2 + 126) + *(a2 + 463);
      }

      v60 = *(a2 + 132);
      v61 = *(a2 + 62);
      if (v61 > v22)
      {
        LOWORD(v61) = v22;
      }

      v157 = v61;
      v62 = sub_297F0B5FC(a2);
      v63 = &unk_2A18BE000;
      if (a2[660] == v62 >> 7)
      {
        v64 = sub_297F0B5FC(a2);
        v63 = &unk_2A18BE000;
        v65 = v64 & 0x7F;
      }

      else
      {
        v65 = word_2A18BE728;
        if (!word_2A18BE728)
        {
LABEL_203:
          v66 = v157;
          v156 = v22;
          if (v65 >= v60)
          {
            goto LABEL_269;
          }

          v67 = 0;
          v68 = 0;
          v69 = 0;
LABEL_205:
          if (!v67 && !a2[660] || v65 <= 0x67u && !a2[660])
          {
            LOWORD(v71) = *(a2 + 132) - 24;
            v63[916] = 24;
            v67 = 1;
            goto LABEL_240;
          }

          v70 = a2[132];
          if (v70 == v69)
          {
            v71 = 0;
            goto LABEL_224;
          }

          v72 = a2[660];
          v71 = v72 << 7;
          v73 = v65 + (v72 << 7);
          while (1)
          {
            v74 = &a2[4 * v69 + 98];
            v75 = *v74;
            v76 = *(v74 + 1) + v75;
            if (v72 == v75 >> 7)
            {
              if (v73 <= v76)
              {
                v78 = sub_297F0DC98(a2, v75);
                v63 = &unk_2A18BE000;
                v66 = v157;
                word_2A18BE728 = v78;
                v71 = v75;
LABEL_223:
                ++v69;
LABEL_224:
                v79 = a2[186];
                if (v79 == v68)
                {
                  goto LABEL_240;
                }

                v80 = a2[660];
                v81 = v65 + (v80 << 7);
                while (1)
                {
                  v82 = &a2[4 * v68 + 152];
                  v83 = *v82;
                  v84 = *(v82 + 1) + v83;
                  if (v80 == v83 >> 7)
                  {
                    if (v81 <= v84)
                    {
                      v69 = (__PAIR64__(v69, v83) - v71) >> 32;
                      if (v83 <= (v71 - 1))
                      {
                        v71 = v83;
                      }

                      if (v71 == v83)
                      {
                        v86 = sub_297F0DC98(a2, v83);
                        v63 = &unk_2A18BE000;
                        v66 = v157;
                        word_2A18BE728 = v86;
                        ++v68;
                        LOWORD(v71) = v83;
                      }

LABEL_240:
                      v87 = v71;
                      v88 = v71 & 0x7F;
                      if (v71)
                      {
                        v89 = v71 & 0x7F;
                      }

                      else
                      {
                        v89 = v60;
                      }

                      if (v89 != v65)
                      {
                        v90 = v89 - v65;
                        v91 = *(a2 + 126);
                        if (v91 == v66)
                        {
                          v92 = v88 - v65;
                          if (v87)
                          {
                            v93 = v92;
                          }

                          else
                          {
                            v93 = v90;
                          }

                          if (a2[917] + v91 < v156)
                          {
                            v94 = v156 - v91;
                            if (v94 < v93)
                            {
                              v93 = v94;
                            }

                            phOsalNfc_MemCopy();
                            v63 = &unk_2A18BE000;
                            v66 = v157;
                            a2[917] += v93;
                          }

                          LOWORD(v65) = v93 + v65;
                        }

                        else
                        {
                          if (v157 - v91 >= v90)
                          {
                            v95 = v90;
                          }

                          else
                          {
                            v95 = v157 - v91;
                          }

                          phOsalNfc_MemCopy();
                          v63 = &unk_2A18BE000;
                          v66 = v157;
                          LOWORD(v65) = v95 + v65;
                          *(a2 + 126) += v95;
                          *(a2 + 463) -= v95;
                        }
                      }

                      if ((a2[660] << 7) + v65 == v87)
                      {
                        v96 = v65 + v63[916];
                        v97 = v96 > v60;
                        if (v63[916])
                        {
                          v98 = v60 - v65;
                          goto LABEL_262;
                        }
                      }

                      else
                      {
                        v97 = v65 > v60;
                        LOWORD(v96) = v65;
                      }

                      v98 = 0;
LABEL_262:
                      v99 = !v97;
                      if (v97)
                      {
                        v100 = v98;
                      }

                      else
                      {
                        v100 = 0;
                      }

                      if (v99)
                      {
                        LOWORD(v65) = v96;
                      }

                      else
                      {
                        LOWORD(v65) = v60;
                      }

                      v63[916] = v100;
                      if (v60 <= v65)
                      {
LABEL_269:
                        if (*(a2 + 126) == v66)
                        {
                          **(a2 + 69) = v66;
                          a3 = 0;
                          if (v66 == v156)
                          {
                            a2[917] = 0;
                            a2[645] = 1;
                          }

                          else
                          {
                            *(a2 + 463) = v156 - v66;
                          }
                        }

                        else
                        {
                          ++a2[660];
                          a2[266] = 16;
                          a3 = sub_297F0B114(a2);
                        }

                        v110 = "phFriNfc_Tpz_H_CopyReadData";
                        goto LABEL_467;
                      }

                      goto LABEL_205;
                    }
                  }

                  else if (v80 == v84 >> 7 && v81 <= v84)
                  {
                    ++v68;
                    LOWORD(v71) = v80 << 7;
                    goto LABEL_240;
                  }

                  if (v79 == ++v68)
                  {
                    v68 = a2[186];
                    goto LABEL_240;
                  }
                }
              }
            }

            else if (v72 == v76 >> 7 && v73 <= v76)
            {
              goto LABEL_223;
            }

            if (v70 == ++v69)
            {
              v71 = 0;
              v69 = a2[132];
              goto LABEL_224;
            }
          }
        }
      }

      v63[916] = 0;
      goto LABEL_203;
    }

LABEL_74:
    a3 = 27;
    goto LABEL_468;
  }

  if (v16 != 1)
  {
    goto LABEL_468;
  }

  if (*(a2 + 132) != 128)
  {
    goto LABEL_74;
  }

  if (!a2[660])
  {
    sub_297E4E1B4(2, a2, 8, 5u, "phFriNfc_Tpz_H_CheckCCBytes");
    phOsalNfc_MemCopy();
    if (a2[652] == 225 || !a2[652])
    {
      a3 = sub_297EE3220(a2, a2[653]);
      if (a3)
      {
LABEL_466:
        a2[545] = 3;
        v110 = "phFriNfc_Tpz_H_CheckCCBytes";
        goto LABEL_467;
      }

      if (a2[654] == 63)
      {
        *(a2 + 102) = 500;
        *(a2 + 320) = 512;
        sub_297E4E1B4(2, a2, 8, 5u, "phFriNfc_Tpz_Dynamic_H_ChkLockBits");
        v101 = a2[655];
        if (!a2[655])
        {
LABEL_280:
          a2[545] = v101;
          sub_297E4DFAC(2, a2, 8, 5u, "phFriNfc_Tpz_Dynamic_H_ChkLockBits");
          sub_297E4DFAC(2, a2, 8, 5u, "phFriNfc_Tpz_H_CheckCCBytes");
          goto LABEL_45;
        }

        if (v101 == 15)
        {
          LOBYTE(v101) = 1;
          goto LABEL_280;
        }

        a2[545] = 3;
        sub_297E4DFAC(2, a2, 8, 5u, "phFriNfc_Tpz_Dynamic_H_ChkLockBits");
      }
    }

    a3 = 22;
    goto LABEL_466;
  }

LABEL_45:
  v17 = a2[920];
  sub_297E4E1B4(2, a2, 8, 5u, "phFriNfc_Tpz_H_ParseTLVs");
  v18 = *(a2 + 132);
  if (a2[660])
  {
    v19 = 0;
  }

  else
  {
    byte_2A18BE724[0] = 0;
    *&word_2A18BE72A = 0;
    if (v18 <= 0x17)
    {
      LOWORD(v18) = 0;
    }

    else
    {
      LOWORD(v18) = v18 - 24;
    }

    v19 = 12;
  }

  a3 = 0;
  v111 = v17 != 8;
  v112 = 1;
  if (v19 >= v18 || v17 == 8)
  {
    goto LABEL_412;
  }

  v113 = a2 + 266;
  v158 = a2 + 98;
  while (1)
  {
    v114 = word_2A18BE72A;
    if (word_2A18BE72A || (v114 = sub_297F0DC98(a2, (v19 + (a2[660] << 7))), word_2A18BE72A = v114, v114))
    {
      if (v18 - v19 < v114)
      {
        a3 = 0;
        v112 = 1;
        goto LABEL_411;
      }

      a3 = 0;
      v19 += v114;
      word_2A18BE72A = 0;
      goto LABEL_321;
    }

    a3 = 0;
    if (v17 <= 3)
    {
      if (v17 > 1)
      {
        if (v17 == 2)
        {
          v130 = byte_2A18BE724[0];
          byte_2A18BE724[byte_2A18BE724[0] + 16] = v113[v19++];
          byte_2A18BE724[0] = v130 + 1;
          if ((v130 + 1) == 3)
          {
            phOsalNfc_MemCopy();
            sub_297E4E1B4(2, a2, 8, 5u, "phFriNfc_Tpz_H_GetLockBytesInfo");
            v131 = byte_2A18BE734 >> 4;
            v132 = byte_2A18BE734 & 0xF;
            if ((byte_2A18BE735 & 7) != 0)
            {
              v133 = (byte_2A18BE735 >> 3) + 1;
            }

            else
            {
              v133 = byte_2A18BE735 >> 3;
            }

            v134 = a2[132];
            v135 = &v158[4 * v134];
            *(v135 + 1) = v133;
            v136 = (v131 << (byte_2A18BE736 & 0xF)) + v132;
            *v135 = v136;
            if (v136 < 0x78u || v133 + v136 > 8 * (a2[654] + 1))
            {
              *v135 = 0;
              a3 = 22;
            }

            else
            {
              a3 = 0;
              *(a2 + 74) = v136 >> 3;
              *(a2 + 75) = v136 & 7;
            }

            a2[132] = v134 + 1;
            sub_297E4DFAC(2, a2, 8, 5u, "phFriNfc_Tpz_H_GetLockBytesInfo");
            byte_2A18BE724[0] = 0;
            v17 = 3;
            goto LABEL_321;
          }

          a3 = 0;
          goto LABEL_371;
        }

        sub_297E4E1B4(2, a2, 8, 5u, "phFriNfc_Tpz_H_ParseMemTLVType");
        v128 = v113[v19];
        if (v113[v19])
        {
          if (v128 == 2)
          {
            ++v19;
            v17 = 4;
          }

          else if (v128 == 1)
          {
            ++v19;
            v17 = 1;
          }

          else
          {
            v17 = 6;
          }
        }

        else
        {
          ++v19;
          v17 = 3;
        }

        v140 = a2;
        v141 = "phFriNfc_Tpz_H_ParseMemTLVType";
      }

      else
      {
        if (v17)
        {
          if (v113[v19] != 3)
          {
            v112 = 0;
            a3 = 22;
            v17 = 1;
            goto LABEL_477;
          }

          a3 = 0;
          ++v19;
LABEL_371:
          v17 = 2;
          goto LABEL_321;
        }

        sub_297E4E1B4(2, a2, 8, 5u, "phFriNfc_Tpz_H_ParseLockTLVType");
        if (v113[v19])
        {
          if (v113[v19] == 1)
          {
            ++v19;
            v17 = 1;
          }

          else
          {
            v17 = 3;
          }
        }

        else
        {
          v17 = 0;
          ++v19;
        }

        v140 = a2;
        v141 = "phFriNfc_Tpz_H_ParseLockTLVType";
      }

      sub_297E4DFAC(2, v140, 8, 5u, v141);
      a3 = 0;
      goto LABEL_321;
    }

    if (v17 <= 5)
    {
      if (v17 == 4)
      {
        if (v113[v19] != 3)
        {
          v112 = 0;
          a3 = 22;
          v17 = 4;
          goto LABEL_477;
        }

        a3 = 0;
        ++v19;
      }

      else
      {
        v117 = byte_2A18BE724[0];
        byte_2A18BE724[byte_2A18BE724[0] + 16] = v113[v19++];
        byte_2A18BE724[0] = v117 + 1;
        if ((v117 + 1) == 3)
        {
          word_2A18BE72C = v19 + (a2[660] << 7);
          sub_297E4E1B4(2, a2, 8, 5u, "phFriNfc_Tpz_H_GetMemBytesInfo");
          v118 = byte_2A18BE734 >> 4;
          v119 = byte_2A18BE734 & 0xF;
          v120 = byte_2A18BE735;
          v121 = a2[186];
          v122 = &a2[4 * v121 + 152];
          *(v122 + 1) = byte_2A18BE735;
          v123 = (v118 << (byte_2A18BE736 & 0xF)) + v119;
          *v122 = v123;
          v124 = &v158[4 * a2[132]];
          v125 = *v124;
          if (v125 <= v123 && *(v124 + 1) + v125 > v123)
          {
            goto LABEL_396;
          }

          v126 = v123 + v120;
          if (v126 <= v125)
          {
            if (v123 < 0x78u)
            {
              goto LABEL_396;
            }

            v127 = v125 + *(v124 + 1);
          }

          else
          {
            if (v123 < 0x78u)
            {
              goto LABEL_396;
            }

            v127 = v125 + *(v124 + 1);
            if (v126 <= v127)
            {
              goto LABEL_396;
            }
          }

          if (v127 <= 8 * a2[654])
          {
            a3 = 0;
            *(a2 + 100) = v123 >> 3;
            *(a2 + 101) = v123 & 7;
            goto LABEL_397;
          }

LABEL_396:
          *v122 = 0;
          a3 = 22;
LABEL_397:
          a2[186] = v121 + 1;
          sub_297E4DFAC(2, a2, 8, 5u, "phFriNfc_Tpz_H_GetMemBytesInfo");
          byte_2A18BE724[0] = 0;
          v17 = 6;
          goto LABEL_321;
        }

        a3 = 0;
      }

      v17 = 5;
      goto LABEL_321;
    }

    if (v17 == 6)
    {
      sub_297E4E1B4(2, a2, 8, 5u, "phFriNfc_Tpz_H_ParseNdefTLVType");
      v17 = 0;
      v137 = v113[v19];
      a3 = 22;
      if (v137 > 1)
      {
        if (v137 == 3)
        {
          a3 = 0;
          ++v19;
          v17 = 7;
        }

        else if (v137 == 2)
        {
          a3 = 0;
          ++v19;
          v17 = 4;
        }
      }

      else if (v113[v19])
      {
        if (v137 == 1)
        {
          a3 = 0;
          ++v19;
          v17 = 1;
        }
      }

      else
      {
        a3 = 0;
        ++v19;
        v17 = 6;
      }

      sub_297E4DFAC(2, a2, 8, 5u, "phFriNfc_Tpz_H_ParseNdefTLVType");
      goto LABEL_321;
    }

    if (v17 == 7)
    {
      break;
    }

LABEL_321:
    v112 = a3 == 0;
    v111 = v17 != 8;
    if (v19 >= v18 || a3 != 0 || v17 == 8)
    {
      goto LABEL_412;
    }
  }

  v129 = byte_2A18BE724[0];
  if (byte_2A18BE724[0])
  {
    byte_2A18BE724[byte_2A18BE724[0] + 16] = v113[v19++];
    byte_2A18BE724[0] = v129 + 1;
    if ((v129 + 1) == 3)
    {
      a3 = 0;
      byte_2A18BE724[0] = 0;
      *(a2 + 461) = bswap32(*&byte_2A18BE735) >> 16;
      v112 = 1;
      v17 = 8;
      goto LABEL_477;
    }

    a3 = 0;
    v17 = 7;
    goto LABEL_321;
  }

  *(a2 + 459) = v19 + (a2[660] << 7) - 1;
  v138 = v113[v19];
  if ((*(a2 + 320) + (~v19 | 0xFFFF0000)) >= v138)
  {
    if (v138 == 255)
    {
      byte_2A18BE734 = -1;
      v139 = 1;
      v17 = 7;
    }

    else
    {
      v139 = 0;
      *(a2 + 461) = v138;
      v17 = 8;
    }

    a3 = 0;
    byte_2A18BE724[0] = v139;
    ++v19;
    goto LABEL_321;
  }

  v112 = 0;
  byte_2A18BE724[0] = 0;
  a3 = 22;
  v17 = 7;
LABEL_477:
  LOWORD(v18) = v19;
LABEL_411:
  v111 = v17 != 8;
  LOWORD(v19) = v18;
LABEL_412:
  sub_297E9C28C(a2, (a2 + 98), a2[132]);
  sub_297E9C28C(a2, a2 + 38, a2[186]);
  a2[920] = v17;
  v144 = a2[660];
  v145 = *(a2 + 320);
  v146 = v145 - v19;
  if (v145 < v19)
  {
    v146 = 0;
  }

  v147 = v145 - v19 - 24;
  if (a2[660])
  {
    v147 = v146;
  }

  *(a2 + 320) = v147;
  v148 = !v112;
  if (v17 != 8)
  {
    v148 = 1;
  }

  if (v148)
  {
    if (a3 != 0 || !v111)
    {
      goto LABEL_448;
    }

    v149 = v144 + 1;
    a2[660] = v149;
    if (v149 != 4)
    {
      a2[266] = 16;
      a3 = sub_297F0B114(a2);
      goto LABEL_448;
    }

    a3 = 22;
LABEL_451:
    *(a2 + 459) = 0;
    *(a2 + 461) = 0;
LABEL_452:
    if (!a2[652] || v17 == 6 && a2[660] == 4)
    {
      *(a2 + 461) = 0;
      a2[545] = 0;
      v151 = word_2A18BE72C;
      if (word_2A18BE72C)
      {
        do
        {
          v152 = sub_297F0DC98(a2, v151);
          v151 = word_2A18BE72C + v152;
          word_2A18BE72C += v152;
        }

        while (v152);
        *(a2 + 459) = v151;
        v153 = v151 + 24;
        if (v153 <= (*(a2 + 102) + 12))
        {
          v154 = *(a2 + 102) + 12 - v153;
        }

        else
        {
          v154 = 0;
        }

        *(a2 + 320) = v154;
        sub_297F0DD5C(a2);
        a3 = 0;
        *(a2 + 462) -= 2;
        word_2A18BE72C = 0;
      }
    }
  }

  else
  {
    a3 = sub_297F0DD5C(a2);
    if (a2[545] != 1 && *(a2 + 461))
    {
      a2[545] = 2;
    }

LABEL_448:
    if (!a3)
    {
      goto LABEL_452;
    }

    if (a3 != 13)
    {
      if (a3 != 25)
      {
        goto LABEL_451;
      }

      goto LABEL_452;
    }
  }

  v110 = "phFriNfc_Tpz_H_ParseTLVs";
LABEL_467:
  sub_297E4DFAC(2, a2, 8, 5u, v110);
LABEL_468:
  v44 = "phFriNfc_Tpz_H_ProReadResp";
LABEL_469:
  sub_297E4DFAC(2, a2, 8, 5u, v44);
LABEL_470:
  if (a3 != 13)
  {
LABEL_471:
    sub_297EE2FD8(a2, a3);
  }

  return sub_297E4DFAC(0, &v159, 8, 5u, "phFriNfc_TopazDynamicMap_Process");
}

uint64_t sub_297F0D764(uint64_t a1)
{
  sub_297E4E1B4(2, a1, 8, 5u, "phFriNfc_Tpz_H_RdForWrite");
  LOBYTE(v2) = 0;
  v3 = *(a1 + 921);
  *(a1 + 266) = 2;
  *a1 = 16;
  if (v3 > 9)
  {
    LOBYTE(v8) = 0;
    goto LABEL_13;
  }

  if (((1 << v3) & 0x318) != 0)
  {
    v4 = *(a1 + 643) + 8 * *(a1 + 642);
    do
    {
      v2 = v4;
      v5 = sub_297F0DC98(a1, v4);
      v4 = v5 + v2;
    }

    while (v5);
LABEL_12:
    LOWORD(v8) = v2 >> 3;
    goto LABEL_13;
  }

  if (((1 << v3) & 0x84) != 0)
  {
    v6 = *(a1 + 918) + 1;
    do
    {
      if ((v6 & 0xFFF8) == 0x68)
      {
        v2 = v6 + 24;
      }

      else
      {
        v2 = v6;
      }

      v7 = sub_297F0DC98(a1, v2);
      v6 = v2 + v7;
    }

    while (v7);
    goto LABEL_12;
  }

  LOBYTE(v8) = 0;
  if (v3 == 6)
  {
    v2 = *(a1 + 643) + 8 * *(a1 + 642);
    v8 = v2 >> 3;
  }

LABEL_13:
  *(a1 + 642) = v8;
  *(a1 + 643) = v2 & 7;
  v9 = sub_297F0B114(a1);
  sub_297E4DFAC(2, a1, 8, 5u, "phFriNfc_Tpz_H_RdForWrite");
  return v9;
}

uint64_t sub_297F0D8A0(uint64_t a1, unsigned int a2)
{
  sub_297E4E1B4(2, a1, 8, 5u, "phFriNfc_Tpz_H_GetNDEFValueFieldAddrForWrite");
  LOBYTE(v4) = 0;
  v5 = *(a1 + 918);
  if (a2 <= 0xFE)
  {
    v6 = 1;
  }

  else
  {
    v6 = 3;
  }

  do
  {
    if ((v5 + 1) == 104)
    {
      v7 = 128;
    }

    else
    {
      v7 = v5 + 1;
    }

    v5 = v7 + sub_297F0DC98(a1, v7);
    v4 = (v4 + 1);
  }

  while (v4 < v6);
  if ((v5 + 1) == 104)
  {
    v8 = 128;
  }

  else
  {
    v8 = v5 + 1;
  }

  v9 = sub_297F0DC98(a1, v8) + v8;
  sub_297E4DFAC(2, a1, 8, 5u, "phFriNfc_Tpz_H_GetNDEFValueFieldAddrForWrite");
  return v9;
}

uint64_t sub_297F0D97C(uint64_t a1)
{
  v15[1] = *MEMORY[0x29EDCA608];
  sub_297E4E1B4(2, a1, 8, 5u, "phFriNfc_Tpz_H_CopySendWrData");
  if (*(a1 + 248) >= *(a1 + 924))
  {
    v2 = *(a1 + 924);
  }

  else
  {
    v2 = *(a1 + 248);
  }

  v3 = *(a1 + 642);
  sub_297E4E1B4(2, a1, 8, 5u, "phFriNfc_Tpz_H_CompareLockBlocks");
  v4 = *(a1 + 132);
  if (*(a1 + 132))
  {
    v5 = 98;
    while (1)
    {
      v6 = *(a1 + v5);
      if (v3 == v6 >> 3)
      {
        break;
      }

      v5 += 4;
      if (!--v4)
      {
        goto LABEL_8;
      }
    }

    sub_297E4DFAC(2, a1, 8, 5u, "phFriNfc_Tpz_H_CompareLockBlocks");
    if (v6)
    {
      goto LABEL_21;
    }
  }

  else
  {
LABEL_8:
    sub_297E4DFAC(2, a1, 8, 5u, "phFriNfc_Tpz_H_CompareLockBlocks");
  }

  v7 = *(a1 + 642);
  sub_297E4E1B4(2, a1, 8, 5u, "phFriNfc_Tpz_H_CompareMemBlocks");
  v8 = *(a1 + 186);
  if (*(a1 + 186))
  {
    v9 = 152;
    while (1)
    {
      v10 = *(a1 + v9);
      if (v7 == v10 >> 3)
      {
        break;
      }

      v9 += 4;
      if (!--v8)
      {
        goto LABEL_13;
      }
    }

    sub_297E4DFAC(2, a1, 8, 5u, "phFriNfc_Tpz_H_CompareMemBlocks");
    if (v10)
    {
LABEL_21:
      *(a1 + 921) = 6;
      *(a1 + 643) = 0;
      v12 = sub_297F0D764(a1);
      goto LABEL_22;
    }
  }

  else
  {
LABEL_13:
    sub_297E4DFAC(2, a1, 8, 5u, "phFriNfc_Tpz_H_CompareMemBlocks");
  }

  *(a1 + 266) = 84;
  *a1 = 2;
  phOsalNfc_SetMemory();
  v11 = v2 - *(a1 + 252);
  phOsalNfc_MemCopy();
  if (v11 < 8)
  {
    *(a1 + 252) += v11;
    phOsalNfc_SetMemory();
  }

  else
  {
    *(a1 + 252) += 8;
  }

  *(a1 + 266) = 84;
  v12 = sub_297F0B7B8(a1, v15, 8);
LABEL_22:
  v13 = v12;
  sub_297E4DFAC(2, a1, 8, 5u, "phFriNfc_Tpz_H_CopySendWrData");
  return v13;
}

uint64_t sub_297F0DC00(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v9 = 0;
  v10 = a1;
  sub_297E4E1B4(0, &v10, 8, 5u, "phFriNfc_TopazDynamic_CB_Transceive");
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

  return sub_297E4DFAC(0, &v10, 8, 5u, "phFriNfc_TopazDynamic_CB_Transceive");
}

uint64_t sub_297F0DC98(uint64_t a1, int a2)
{
  sub_297E4E1B4(2, a1, 8, 5u, "phFriNfc_Tpz_H_GetSkipSize");
  v4 = *(a1 + 132);
  if (*(a1 + 132))
  {
    v5 = 0;
    v6 = (a1 + 100);
    do
    {
      if (*(v6 - 1) == a2)
      {
        v5 = *v6;
      }

      v6 += 2;
      --v4;
    }

    while (v4);
  }

  else
  {
    v5 = 0;
  }

  v7 = *(a1 + 186);
  if (*(a1 + 186))
  {
    v8 = (a1 + 154);
    do
    {
      if (*(v8 - 1) == a2)
      {
        v5 = *v8;
      }

      v8 += 2;
      --v7;
    }

    while (v7);
  }

  sub_297E4DFAC(2, a1, 8, 5u, "phFriNfc_Tpz_H_GetSkipSize");
  return v5;
}

uint64_t sub_297F0DD5C(uint64_t a1)
{
  sub_297E4E1B4(2, a1, 8, 5u, "phFriNfc_Tpz_H_ActualCardSize");
  v2 = *(a1 + 640);
  v3 = sub_297F0B5FC(a1);
  v4 = *(a1 + 132);
  if (*(a1 + 132))
  {
    v5 = (a1 + 100);
    do
    {
      v6 = *(v5 - 1);
      if (v6 > v3 && (v6 & 0xFFF8) != 0x78)
      {
        v2 -= *v5;
      }

      v5 += 2;
      --v4;
    }

    while (v4);
  }

  v7 = *(a1 + 186);
  if (*(a1 + 186))
  {
    v8 = (a1 + 154);
    do
    {
      v9 = *(v8 - 1);
      if (v9 > v3 && (v9 & 0xFFF8) != 0x78)
      {
        v2 -= *v8;
      }

      v8 += 2;
      --v7;
    }

    while (v7);
  }

  v10 = *(a1 + 922);
  if (v10 <= v2)
  {
    if (v2 < 0x100u || v10 > 0xFE)
    {
      if (v2 != 255 || v10 > 0xFE)
      {
        v11 = 0;
        *(a1 + 924) = v2;
        goto LABEL_25;
      }

      v11 = 0;
      v12 = 254;
    }

    else
    {
      v11 = 0;
      v12 = v2 - 2;
    }

    *(a1 + 924) = v12;
  }

  else
  {
    sub_297E4E0B0(2, a1, 8, 2u, "phFriNfc_Tpz_H_ActualCardSize: Current NDEF message exceeds the Maximum Tag NDEF size");
    sub_297E50EBC(2, a1, 8, 2u, "phFriNfc_Tpz_H_ActualCardSize:Current Ndef Message size");
    sub_297E50EBC(2, a1, 8, 2u, "phFriNfc_Tpz_H_ActualCardSize:Maximum Ndef Message size");
    *(a1 + 922) = 0;
    if (v2 >= 0x100u)
    {
      *(a1 + 924) = v2;
    }

    *(a1 + 545) = 0;
    v11 = 25;
  }

LABEL_25:
  sub_297E4DFAC(2, a1, 8, 5u, "phFriNfc_Tpz_H_ActualCardSize");
  return v11;
}

uint64_t sub_297F0DF0C(uint64_t a1, char a2)
{
  v15 = 0;
  v16 = 0;
  sub_297E4E1B4(2, a1, 6, 5u, "phDnldNfc_CoreInit");
  if (a1)
  {
    sub_297E9F244(*(a1 + 16), &v16);
    v4 = v16;
    if (v16)
    {
      *(v16 + 48) = *(a1 + 16);
      *(a1 + 48) = v4;
      sub_297E966F4(1, a1 + 40, 6, 4u, "####Primary NFCC, DriverHandle");
      sub_297E966F4(1, a1 + 40, 6, 4u, "DOWNLOAD-CORE context");
      v5 = v16;
      *(v16 + 8492) = *(a1 + 40);
      *(v5 + 8504) = a2;
      sub_297E67EB0(*(v5 + 48), &v15);
      if (v15)
      {
        v6 = 4;
      }

      else
      {
        v6 = 6;
      }

      v7 = sub_297E5B294(*(a1 + 32), v6);
      *(a1 + 56) = 0;
      v8 = phOsalNfc_Timer_Create();
      if (v8 != 0xFFFFFFFFFFFFLL && (v9 = v8) != 0)
      {
        sub_297E50EBC(1, a1 + 40, 6, 4u, "phDnldNfc_CoreInit : Timer Create dwDnldRspTimerId!");
        *(v16 + 56) = v9;
      }

      else
      {
        sub_297E4E0B0(1, a1 + 40, 6, 1u, "phDnldNfc_CoreInit : Dnld Rsp Timer Create failed!!");
        v7 = 12;
      }

      v10 = phOsalNfc_Timer_Create();
      if (v10 != 0xFFFFFFFFFFFFLL && (v11 = v10) != 0)
      {
        sub_297E50EBC(1, a1 + 40, 6, 4u, "phDnldNfc_CoreInit : Timer Create dwDnldMuxTmlBusyTimerId!");
        *(v16 + 64) = v11;
      }

      else
      {
        sub_297E4E0B0(1, a1 + 40, 6, 1u, "phDnldNfc_CoreInit : Dnld Mux Tml Timer Create failed!!");
        v7 = 12;
      }

      v12 = phOsalNfc_Timer_Create();
      if (v12 != 0xFFFFFFFFFFFFLL && (v13 = v12) != 0)
      {
        sub_297E50EBC(1, a1 + 40, 6, 4u, "phDnldNfc_CoreInit : Timer Create dwDnldVenRstWaitTimerId!");
        *(v16 + 72) = v13;
      }

      else
      {
        sub_297E4E0B0(1, a1 + 40, 6, 1u, "phDnldNfc_CoreInit : Dnld Ven Reset wait Timer Create failed!!");
        v7 = 12;
      }
    }

    else
    {
      v7 = 255;
    }
  }

  else
  {
    v7 = 1;
  }

  sub_297E4DFAC(2, a1, 6, 5u, "phDnldNfc_CoreInit");
  return v7;
}

uint64_t sub_297F0E16C(uint64_t a1)
{
  sub_297E4E1B4(2, a1, 6, 5u, "phDnldNfc_CoreDeInit");
  if (a1)
  {
    v2 = *(a1 + 48);
    sub_297E5B294(*(a1 + 32), 6u);
    *(a1 + 56) = 0;
    v3 = *(v2 + 56);
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
      phOsalNfc_Timer_Stop();
      phOsalNfc_Timer_Delete();
      *(v2 + 56) = 0xFFFFFFFFFFFFLL;
    }

    v5 = *(v2 + 64);
    if (v5)
    {
      v6 = v5 == 0xFFFFFFFFFFFFLL;
    }

    else
    {
      v6 = 1;
    }

    if (!v6)
    {
      phOsalNfc_Timer_Stop();
      phOsalNfc_Timer_Delete();
      *(v2 + 64) = 0xFFFFFFFFFFFFLL;
    }

    v7 = *(v2 + 72);
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
      *(v2 + 72) = 0xFFFFFFFFFFFFLL;
    }

    phOsalNfc_SetMemory();
    v9 = 0;
    *(v2 + 8492) = 255;
    *(a1 + 48) = 0;
  }

  else
  {
    v9 = 1;
  }

  sub_297E4DFAC(2, a1, 6, 5u, "phDnldNfc_CoreDeInit");
  return v9;
}

uint64_t sub_297F0E294(uint64_t a1, int *a2)
{
  sub_297E4E1B4(3, a1, 6, 5u, "phDnldNfc_BuildHdllPkt");
  if (a1)
  {
    v4 = a1 + 126;
    phOsalNfc_SetMemory();
    *(a1 + 124) = 6;
    v5 = a2[4];
    if (v5 && *(a2 + 1))
    {
      LOWORD(v6) = v5 + 3;
      *(a1 + 124) = v5 + 3;
      if (*a2 != 192)
      {
        goto LABEL_46;
      }

      if (*(a1 + 117) == 1)
      {
        *(a1 + 104) = v5;
        if ((*(a1 + 8480) - 8) > 2)
        {
          v7 = 0;
          *(a1 + 100) = 0;
        }

        else if (*(a2 + 40))
        {
          v7 = a2[1];
          *(a1 + 100) = v7;
          *(a1 + 104) = v5 - v7 + 12;
        }

        else
        {
          v7 = 12;
          *(a1 + 100) = 12;
        }
      }

      else
      {
        v7 = *(a1 + 100);
      }

      sub_297E50DB0(1, a1 + 8492, 6, 4u, "Offset Address");
      sub_297E50EBC(1, a1 + 8492, 6, 4u, "phDnldNfc_BuildHdllPkt wRemBytes");
      if (*(a1 + 104) && !*(a1 + 116))
      {
        v14 = *(a2 + 1);
        v15 = *(v14 + v7);
        *(a1 + 110) = v15 << 8;
        *(a1 + 110) = *(v14 + v7 + 1) | (v15 << 8);
        sub_297E50EBC(1, a1 + 8492, 6, 4u, "Size Of DNLD PKT");
      }

      v16 = *(a1 + 8480);
      if (v16 == 8)
      {
        v6 = *(a1 + 110);
        v17 = 4134;
      }

      else
      {
        v6 = *(a1 + 110);
        if ((v16 - 9) > 1)
        {
          if (v6 >= 0x227)
          {
LABEL_31:
            if (*(a1 + 118))
            {
              v6 = *(a1 + 108);
            }

            else
            {
              *(a1 + 108) = v6;
              *(a1 + 100) += 2;
            }

            if ((v16 - 9) > 1)
            {
              if (v16 == 8)
              {
                if (v6 >= 0x1027)
                {
                  LOWORD(v6) = 4136;
                  goto LABEL_44;
                }
              }

              else if (v6 >= 0x227)
              {
                LOWORD(v6) = 552;
                goto LABEL_44;
              }
            }

            else if (v6 >= 0x102B)
            {
              LOWORD(v6) = 4140;
LABEL_44:
              *(a1 + 124) = v6;
              *(a1 + 116) = 1;
              goto LABEL_46;
            }

            *(a1 + 124) = v6;
            *(a1 + 116) = 0;
            goto LABEL_46;
          }

          goto LABEL_34;
        }

        v17 = 4138;
      }

      if (v6 > v17)
      {
        goto LABEL_31;
      }

LABEL_34:
      LOWORD(v6) = v6 + 2;
      *(a1 + 124) = v6;
      *(a1 + 110) = 0;
      goto LABEL_46;
    }

    if (a2[8] && *(a2 + 3))
    {
      v8 = *a2;
      if (*a2 == 162)
      {
        LOWORD(v6) = 10;
        *(a1 + 124) = 10;
LABEL_46:
        *(a1 + 112) = v6;
        v18 = (v4 + *(a1 + 8444));
        *v18 = (v6 - 2) >> 8;
        v18[1] = v6 - 2;
        sub_297E4E0B0(1, a1 + 8492, 6, 4u, "phDnldNfc_BuildHdllPkt : Inserting FrameId ..");
        *(*(a1 + 8444) + v4 + 2) = *a2;
        v19 = *a2;
        v20 = (*a2 - 162);
        if (v20 > 0x3E)
        {
          goto LABEL_53;
        }

        if (((1 << (*a2 + 94)) & 0x400000000000C020) != 0)
        {
          if (!a2[4] || !*(a2 + 1))
          {
            goto LABEL_56;
          }

          goto LABEL_55;
        }

        if (v19 == 162)
        {
          if (*(a1 + 116))
          {
            v25 = *(a1 + 104);
            v26 = *(a1 + 110);
          }

          else
          {
            sub_297E4E0B0(1, a1 + 8492, 6, 4u, "phDnldNfc_BuildHdllPkt : Verifying RspBuffInfo for Read Request..");
            v26 = 546;
            *(a1 + 110) = 546;
            v25 = a2[8];
            *(a1 + 104) = v25;
            *(a1 + 96) = a2[1];
            *(a1 + 100) = 0;
            *(a1 + 114) = 0;
            if (v25 - 547 <= 0xFFFFFDD8)
            {
              *(a1 + 116) = 1;
            }
          }

          if (v25 > v26)
          {
            LOWORD(v25) = v26;
          }

          *(a1 + 112) = v25;
          phOsalNfc_MemCopy();
          phOsalNfc_MemCopy();
          ++*(a1 + 4280);
          sub_297E50EBC(1, a1 + 8492, 6, 1u, "phDnldNfc_BuildHdllPkt:DNLD Read COUNT");
          sub_297E50DB0(1, a1 + 8492, 6, 1u, "phDnldNfc_BuildHdllPkt:DNLD Read Address");
          goto LABEL_56;
        }

        if (v20 != 30)
        {
LABEL_53:
          v21 = v19 - 241;
          if (v21 > 3 || v21 == 2)
          {
            v10 = 1;
            sub_297E4E0B0(1, a1 + 8492, 6, 1u, "phDnldNfc_BuildHdllPkt : Invalid Dnld Opcode!!");
            goto LABEL_57;
          }
        }

LABEL_55:
        phOsalNfc_MemCopy();
LABEL_56:
        v10 = 0;
LABEL_57:
        v22 = sub_297E50CEC(*(a1 + 48), (v4 + *(a1 + 8444)), *(a1 + 124));
        v23 = *(a1 + 124);
        *(v4 + *(a1 + 8444) + v23) = HIBYTE(v22);
        *(v23 + v4 + *(a1 + 8444) + 1) = v22;
        *(a1 + 124) = v23 + *(a1 + 8444) + 2;
        sub_297E4E0B0(1, a1 + 8492, 6, 4u, "phDnldNfc_BuildHdllPkt: Frame created successfully");
        goto LABEL_58;
      }
    }

    else
    {
      v8 = *a2;
    }

    LOWORD(v6) = 6;
    v13 = v8 - 167;
    if (v13 > 0x39 || ((1 << v13) & 0x200000002000001) == 0)
    {
      goto LABEL_46;
    }

    v9 = "phDnldNfc_BuildHdllPkt : Invalid Input Parameter(s)!!";
    v10 = 1;
    v12 = a1 + 8492;
    v11 = 1;
  }

  else
  {
    v9 = "Invalid Input Parameter!!";
    v10 = 1;
    v11 = 3;
    v12 = 0;
  }

  sub_297E4E0B0(v11, v12, 6, 1u, v9);
LABEL_58:
  sub_297E4DFAC(3, a1, 6, 5u, "phDnldNfc_BuildHdllPkt");
  return v10;
}

uint64_t sub_297F0E83C(uint64_t a1)
{
  sub_297E4E1B4(3, a1, 6, 5u, "phDnldNfc_ReqTmlRead");
  if (a1)
  {
    *(a1 + 8438) = 0;
    *(a1 + 8442) = 0;
    if (phTmlNfc_Read() == 13)
    {
      v2 = 13;
    }

    else
    {
      sub_297E4E0B0(1, a1 + 8492, 6, 1u, "Read Request Failure");
      sub_297E96818(*(a1 + 48), 195);
      v2 = 255;
    }
  }

  else
  {
    v2 = 1;
  }

  sub_297E4DFAC(3, a1, 6, 5u, "phDnldNfc_ReqTmlRead");
  return v2;
}

uint64_t sub_297F0E918(uint64_t a1, uint64_t a2)
{
  sub_297E4E1B4(3, a1, 6, 5u, "phDnldNfc_TmlReadCommonCb");
  if (!a1)
  {
    goto LABEL_6;
  }

  v4 = 0;
  v5 = 0;
  do
  {
    v6 = *(&unk_2A18BDDC0 + 14 * v5 + 12);
    if (v4)
    {
      break;
    }

    v4 = 1;
    v5 = 1;
  }

  while (v6 != a1);
  if (v6 == a1 && (v8 = *(a1 + 8496)) != 0 && a2 && *(v8 + 6632) && (v9 = *(a2 + 8)) != 0 && *(a2 + 16) && !*a2 && *v9 <= -127)
  {
    sub_297F12210(a1, a2);
  }

  else
  {
LABEL_6:
    sub_297F0F6AC(a1, a2);
  }

  return sub_297E4DFAC(3, a1, 6, 5u, "phDnldNfc_TmlReadCommonCb");
}

uint64_t sub_297F0EA10(uint64_t a1, uint64_t a2)
{
  sub_297E4E1B4(3, a1, 6, 5u, "phDnldNfc_DnldValidateRxdPkt");
  if (a1)
  {
    if (!*a2 && (v6 = *(a2 + 16), *(a2 + 16)) && (v7 = *(a2 + 8)) != 0)
    {
      v42 = *(a1 + 48);
      sub_297E4E1B4(0, &v42, 6, 5u, "phDnldNfc_DnldVldtCrcRcvd");
      v8 = sub_297E50CEC(v42, v7, (v6 - 2));
      v9 = *v7;
      if ((v7[v6 - 1] | (v7[v6 - 2] << 8)) != v8)
      {
        if (v9 == 96 && !v7[1] && v7[2] == 2 && v7[3] == 165)
        {
          sub_297E4E0B0(0, &v42, 6, 1u, "phDnldNfc_DnldVldtCrcRcvd:RESET NTF- NO UART message Received");
          v4 = 132;
        }

        else
        {
          sub_297E4E0B0(0, &v42, 6, 1u, "Invalid frame received");
          sub_297E50DB0(0, &v42, 6, 1u, "Received CRC: ");
          sub_297E50DB0(0, &v42, 6, 1u, "Calculated CRC: ");
          v4 = 255;
        }

        v15 = "phDnldNfc_DnldVldtCrcRcvd";
        v16 = &v42;
        v17 = 0;
        goto LABEL_144;
      }

      if ((v7[1] | (v9 << 8)) == (v6 - 4))
      {
        sub_297E4DFAC(0, &v42, 6, 5u, "phDnldNfc_DnldVldtCrcRcvd");
        if (!*(*(a2 + 8) + 2) && !*(a1 + 8445))
        {
          *(a1 + 8445) = 1;
        }

        v42 = 0;
        sub_297E4E1B4(3, a1, 6, 5u, "phDnldNfc_UpdateRsp");
        sub_297E67F6C(*(a1 + 48), &v42);
        v10 = *a1;
        v11 = v42;
        if (*a1 == 192 || !v42 || *(v42 + 56) == 2)
        {
LABEL_17:
          if (v10 > 223)
          {
            if ((v10 - 241) < 2)
            {
              goto LABEL_48;
            }

            if (v10 == 244)
            {
              if (*(a1 + 32) && *(a1 + 24))
              {
                phOsalNfc_MemCopy();
                v4 = 0;
                *(a1 + 32) = *(a2 + 16);
                goto LABEL_143;
              }

              sub_297E4E0B0(1, a1 + 8492, 6, 1u, "Cannot update Response buff with received data!!");
              goto LABEL_142;
            }

            if (v10 == 224)
            {
              goto LABEL_48;
            }

            goto LABEL_40;
          }

          if (v10 > 175)
          {
            if (v10 == 176)
            {
              if (!*(a1 + 32) || !*(a1 + 24))
              {
                goto LABEL_142;
              }

              v20 = (v6 - 5) + 1;
              goto LABEL_51;
            }

            if (v10 != 177)
            {
              if (v10 == 192)
              {
                v12 = *(*(a2 + 8) + 2);
                if (*(*(a2 + 8) + 2))
                {
                  if (*(a1 + 118) == 1)
                  {
                    if (v12 == 46 && *(a1 + 116) == 1)
                    {
                      v4 = 0;
                      v26 = *(a1 + 112);
                      *(a1 + 108) -= v26;
                      v27 = *(a1 + 104) - v26;
                      *(a1 + 100) += v26;
                      *(a1 + 104) = v27;
                      goto LABEL_143;
                    }
                  }

                  else if (!*(a1 + 118) && v12 == 45 && *(a1 + 116) == 1)
                  {
                    *(a1 + 118) = 1;
                    v13 = *(a1 + 112);
                    *(a1 + 108) -= v13;
                    v14 = *(a1 + 104) - v13 - 2;
                    *(a1 + 100) += v13;
                    *(a1 + 104) = v14;
                    if (*(a1 + 117) == 1)
                    {
                      sub_297E4E0B0(1, a1 + 8492, 6, 4u, "First Write Frame Success Status received!!");
                      v4 = 0;
                      *(a1 + 117) = 0;
LABEL_143:
                      v15 = "phDnldNfc_UpdateRsp";
                      v17 = 3;
                      v16 = a1;
LABEL_144:
                      sub_297E4DFAC(v17, v16, 6, 5u, v15);
                      goto LABEL_6;
                    }

LABEL_142:
                    v4 = 0;
                    goto LABEL_143;
                  }

                  if (*(*(a2 + 8) + 2) > 0x20u)
                  {
                    switch(v12)
                    {
                      case '!':
                        sub_297E4E0B0(1, a1 + 8492, 6, 1u, "Signature Mismatch Error received!!");
                        v40 = 33;
                        break;
                      case '1':
                        sub_297E4E0B0(1, a1 + 8492, 6, 1u, "phDnldNfc_UpdateRsp:EDL_CERT_ERROR:Error during Certificate frame processing");
                        v40 = 49;
                        break;
                      case '$':
                        sub_297E4E0B0(1, a1 + 8492, 6, 4u, "Firmware Already Up To Date!!");
                        v4 = 0;
                        *(a1 + 117) = 0;
                        *(a1 + 100) = 0;
                        *(a1 + 104) = 0;
                        goto LABEL_143;
                      default:
LABEL_132:
                        sub_297E4E0B0(1, a1 + 8492, 6, 1u, "Unsuccessful Status received!!");
                        v41 = *(*(a2 + 8) + 2);
                        if (v41 == 51)
                        {
                          v18 = "CHIPID_OR_MASK_ERROR:Wrong ChipId or ChipMask in First Frame";
                          goto LABEL_146;
                        }

                        if (v41 == 50)
                        {
                          v18 = "MISSING_CERTIFICATE:Missing certificate (missing 0xC1 frame)";
LABEL_146:
                          v24 = a1 + 8492;
                          goto LABEL_78;
                        }

                        v21 = a1 + 8492;
LABEL_55:
                        sub_297E50DB0(1, v21, 6, 1u, "phDnldNfc_UpdateRsp:Received DNLD Error, Status:");
LABEL_79:
                        v4 = 255;
                        goto LABEL_143;
                    }

                    *(a1 + 8448) = v40;
                    v4 = 147;
                    goto LABEL_143;
                  }

                  if (v12 == 13)
                  {
                    sub_297E4E0B0(1, a1 + 8492, 6, 1u, "PLL Error Status received!!");
                    *(a1 + 8448) = 13;
                    v4 = 21;
                    goto LABEL_143;
                  }

                  if (v12 == 32)
                  {
                    sub_297E4E0B0(1, a1 + 8492, 6, 1u, "phDnldNfc_UpdateRsp:Memory Busy Status received!!");
                    *(a1 + 8448) = 32;
                    goto LABEL_79;
                  }

                  goto LABEL_132;
                }

                if (*(a1 + 117) == 1)
                {
                  sub_297E4E0B0(1, a1 + 8492, 6, 4u, "First Write Frame Success Status received!!");
                  *(a1 + 117) = 0;
                }

                if (*(a1 + 118) == 1)
                {
                  if (*(a1 + 116))
                  {
                    v18 = "UnExpected Status received!!";
                    goto LABEL_77;
                  }

                  sub_297E4E0B0(1, a1 + 8492, 6, 4u, "Chunked Write Frame Success Status received!!");
                  v28 = *(a1 + 112);
                  *(a1 + 108) -= v28;
                  *(a1 + 118) = 0;
                }

                else
                {
                  v28 = *(a1 + 112);
                }

                v36 = *(a1 + 104);
                v37 = *(a1 + 100) + v28;
                *(a1 + 100) = v37;
                *(a1 + 104) = v36 - v28;
                v38 = *(a1 + 4);
                if (!*(a1 + 40) && v38 == v37)
                {
                  sub_297E50DB0(1, a1 + 8492, 6, 4u, "Regular FW Update Complete, Offset");
                  v4 = 0;
                  goto LABEL_125;
                }

                if (v38 != v37)
                {
                  if (v36 == v28)
                  {
                    sub_297E50DB0(1, a1 + 8492, 6, 4u, "Download Completed (Degraded FW)");
                    v4 = 0;
                    *(a1 + 40) = 0;
                    goto LABEL_143;
                  }

                  goto LABEL_142;
                }

                v30 = "Start of Degraded FW Update, Offset";
                v39 = a1 + 8492;
LABEL_141:
                sub_297E50DB0(1, v39, 6, 4u, v30);
                goto LABEL_142;
              }

              goto LABEL_40;
            }

LABEL_48:
            if (!*(a1 + 32) || !*(a1 + 24))
            {
              goto LABEL_142;
            }

            v20 = (v6 - 5);
LABEL_51:
            phOsalNfc_MemCopy();
            v4 = 0;
            *(a1 + 32) = v20;
            goto LABEL_143;
          }

          if (v10 != 162)
          {
            if (v10 == 167)
            {
              goto LABEL_48;
            }

LABEL_40:
            v18 = "phDnldNfc_UpdateRsp:Unknown command id passed, while receive!!";
LABEL_77:
            v24 = a1 + 8492;
LABEL_78:
            sub_297E4E0B0(1, v24, 6, 1u, v18);
            goto LABEL_79;
          }

          v22 = *(a2 + 8);
          if (*(v22 + 1) == 4 && *(v22 + 2) == 48)
          {
            *(a1 + 8508) = 0;
            if (v11 && *(v11 + 56) == 2)
            {
              sub_297E4E0B0(1, a1 + 8492, 6, 2u, "Memory Read PH_DL_STATUS_READFLASH_PROTECTED_ERROR !!");
              phOsalNfc_MemCopy();
              *(a1 + 32) = 1;
              *(a1 + 104) = 0;
              v4 = 48;
              goto LABEL_143;
            }

            v29 = *(a1 + 8484);
            if (v29 > 3)
            {
              if (v29 == 4)
              {
                *(a1 + 8484) = 5;
                sub_297E50DB0(1, a1 + 8492, 6, 4u, "M2 FAILED ADDRESS");
                ++*(a1 + 96);
                v30 = "M2 Fallback NEXT ADDRESS";
                goto LABEL_140;
              }

              if (v29 == 5)
              {
                sub_297E50DB0(1, a1 + 8492, 6, 4u, "phDnldNfc_UpdateRsp:Fallback Error Address");
                ++*(a1 + 96);
                v30 = "phDnldNfc_UpdateRsp:Fallback CONTINUED NEXT ADDRESS";
                goto LABEL_140;
              }
            }

            else
            {
              if (v29 == 2)
              {
                *(a1 + 8484) = 3;
                sub_297E50DB0(1, a1 + 8492, 6, 4u, "FIRST_SUCC FAILED ADDRESS");
                *(a1 + 96) = *(a1 + 4284) + 409;
                v30 = "FIRST_SUCC NEXT ADDRESS";
                goto LABEL_140;
              }

              if (v29 == 3)
              {
                *(a1 + 8484) = 5;
                sub_297E50DB0(1, a1 + 8492, 6, 4u, "M1 FAILED ADDRESS");
                ++*(a1 + 96);
                v30 = "M1 Fallback NEXT ADDRESS";
LABEL_140:
                v39 = a1 + 8492;
                goto LABEL_141;
              }
            }

            *(a1 + 96) += 546;
            sub_297E50DB0(1, a1 + 8492, 6, 4u, "phDnldNfc_UpdateRsp:CHUNK READ ERROR ADDRESS");
            v4 = 0;
            *(a1 + 8484) = 1;
            goto LABEL_143;
          }

          v23 = *(a1 + 8484);
          if (v23 <= 2)
          {
            if (v23 == 1)
            {
              *(a1 + 8484) = 2;
              v31 = *(a1 + 96) - 546;
              *(a1 + 96) = v31;
              *(a1 + 4284) = v31;
              sub_297E50DB0(1, a1 + 8492, 6, 4u, "phDnldNfc_UpdateRsp:First Success READ Address");
              *(a1 + 96) = *(a1 + 4284) + 273;
              v25 = "phDnldNfc_UpdateRsp:First Success READ, Midpoint0 read NEXT ADDRESS";
            }

            else
            {
              if (v23 != 2)
              {
                goto LABEL_108;
              }

              *(a1 + 8484) = 4;
              sub_297E50DB0(1, a1 + 8492, 6, 4u, "FIRST_SUCC,2nd SUCCESS ADDRESS");
              *(a1 + 96) = *(a1 + 4284) + 136;
              v25 = "FIRST_SUCC NEXT dwAddr";
            }
          }

          else if (v23 == 3)
          {
            sub_297E50DB0(1, a1 + 8492, 6, 4u, "phDnldNfc_UpdateRsp:M1 Success Address");
            *(a1 + 8484) = 5;
            *(a1 + 96) = *(a1 + 4284) + 273;
            v25 = "phDnldNfc_UpdateRsp:M1 NEXT Address";
          }

          else
          {
            if (v23 != 4)
            {
              if (v23 == 5)
              {
                if (!*(a1 + 8508))
                {
                  *(a1 + 8508) = *(a1 + 96);
                }

                sub_297E50DB0(1, a1 + 8492, 6, 4u, "phDnldNfc_UpdateRsp:FOUND START ADDRESS");
                *(a1 + 104) = *(a1 + 120) - *(a1 + 96) + 1;
                *(a1 + 8484) = 0;
              }

LABEL_108:
              if (v42)
              {
                v32 = *(a2 + 8);
                if (*(v42 + 56) == 2 && *(v32 + 2))
                {
                  sub_297E50DB0(1, a1 + 8492, 6, 2u, "Memory Read Error!!,status");
                  v4 = 48;
                  **(a1 + 24) = 48;
                  *(a1 + 32) = 1;
LABEL_125:
                  *(a1 + 104) = 0;
                  goto LABEL_143;
                }
              }

              else
              {
                v32 = *(a2 + 8);
              }

              v33 = *(v32 + 4);
              if (v33 == *(a1 + 112))
              {
                if (!*(a1 + 8484))
                {
                  phOsalNfc_MemCopy();
                  v4 = 0;
                  v34 = *(a1 + 114) + v33;
                  *(a1 + 114) = v34;
                  *(a1 + 32) = v34;
                  v35 = *(a1 + 112);
                  *(a1 + 104) -= v35;
                  *(a1 + 96) = vadd_s32(*(a1 + 96), vdup_n_s32(v35));
                  goto LABEL_143;
                }

                goto LABEL_142;
              }

              if (*(a1 + 8484))
              {
                goto LABEL_142;
              }

              v18 = "Desired Length bytes not received!!";
              goto LABEL_77;
            }

            *(a1 + 8484) = 5;
            sub_297E50DB0(1, a1 + 8492, 6, 4u, "phDnldNfc_UpdateRsp:M2 Success, 3rd SUCCESS Address");
            *(a1 + 96) = *(a1 + 4284);
            v25 = "M2 NEXT dwAddr";
          }

          sub_297E50DB0(1, a1 + 8492, 6, 4u, v25);
          *(a1 + 112) = 0;
          goto LABEL_108;
        }

        v19 = *(*(a2 + 8) + 2);
        if (v19 <= 0x30)
        {
          if (!*(*(a2 + 8) + 2) || v19 == 48)
          {
            goto LABEL_17;
          }
        }

        else
        {
          switch(v19)
          {
            case '3':
              v18 = "CHIPID_OR_MASK_ERROR:Wrong ChipId or ChipMask in First Frame";
              goto LABEL_77;
            case '2':
              v18 = "MISSING_CERTIFICATE:Missing certificate (missing 0xC1 frame)";
              goto LABEL_77;
            case '1':
              v18 = "EDL_CERT_ERROR:Error during Cert frame processing";
              goto LABEL_77;
          }
        }

        v21 = a1 + 8492;
        goto LABEL_55;
      }

      sub_297E4E0B0(0, &v42, 6, 1u, "Invalid frame payload length received");
      sub_297E4DFAC(0, &v42, 6, 5u, "phDnldNfc_DnldVldtCrcRcvd");
    }

    else
    {
      sub_297E4E0B0(1, a1 + 8492, 6, 1u, "phDnldNfc_DnldValidateRxdPkt:Download Command Request Failed!!");
    }

    v4 = 255;
  }

  else
  {
    v4 = 1;
    sub_297E4E0B0(3, 0, 6, 1u, "Invalid Input Parameters!!");
  }

LABEL_6:
  sub_297E4DFAC(3, a1, 6, 5u, "phDnldNfc_DnldValidateRxdPkt");
  return v4;
}

uint64_t sub_297F0F6AC(uint64_t a1, uint64_t a2)
{
  v35 = 0;
  sub_297E4E1B4(3, a1, 6, 5u, "phDnldNfc_RecvDnldPkt");
  if (!a1)
  {
    return sub_297E4DFAC(3, a1, 6, 5u, "phDnldNfc_RecvDnldPkt");
  }

  v4 = 0;
  v5 = 0;
  v6 = (a1 + 8438);
  v7 = (a1 + 4288);
  do
  {
    v8 = *(&unk_2A18BDDC0 + 14 * v5 + 12);
    if (v4)
    {
      break;
    }

    v4 = 1;
    v5 = 1;
  }

  while (v8 != a1);
  if (v8 != a1)
  {
    return sub_297E4DFAC(3, a1, 6, 5u, "phDnldNfc_RecvDnldPkt");
  }

  v10 = *(a1 + 8496);
  if (!v10)
  {
    return sub_297E4DFAC(3, a1, 6, 5u, "phDnldNfc_RecvDnldPkt");
  }

  if (!a2)
  {
    goto LABEL_11;
  }

  v11 = *(a2 + 8);
  if (!v11 || v11 != &v7[*v6] || !*(a2 + 16) || *a2)
  {
    goto LABEL_11;
  }

  sub_297E67EB0(*(a1 + 48), &v35);
  v18 = *v6 + *(a2 + 16);
  *v6 = v18;
  if (v18 <= 1u)
  {
    *(a1 + 8442) = 2 - v18;
LABEL_29:
    v19 = phTmlNfc_Read();
    if (v19 == 13)
    {
      return sub_297E4DFAC(3, a1, 6, 5u, "phDnldNfc_RecvDnldPkt");
    }

    v20 = v19;
    goto LABEL_51;
  }

  v21 = *v7;
  if (*a1 == 162)
  {
    if (v21 <= 3)
    {
      v22 = *(a1 + 4289);
      goto LABEL_56;
    }

LABEL_49:
    sub_297E4E880(1, a1 + 8492, 6, 2u, "phDnldNfc_RecvDnldPkt:corrupted dnld packet rxd and dropped", a1 + 4288, v18);
    phTmlNfc_ReadAbort();
    phTmlNfc_FlushTxRxBuffers();
    *v6 = 0;
    *(a1 + 8442) = 0;
    v26 = phTmlNfc_Read();
    if (v26 == 13)
    {
      return sub_297E4DFAC(3, a1, 6, 5u, "phDnldNfc_RecvDnldPkt");
    }

    v20 = v26;
    sub_297E4E0B0(1, a1 + 8492, 6, 1u, "phDnldNfc_RecvDnldPkt: dnld packet Read Request Failure");
LABEL_51:
    sub_297E96818(*(a1 + 48), 195);
    goto LABEL_52;
  }

  if (*v7)
  {
    goto LABEL_49;
  }

  v22 = *(a1 + 4289);
  if (!*(a1 + 4289))
  {
    goto LABEL_49;
  }

LABEL_56:
  v27 = (v22 | (v21 << 8)) + 4;
  v28 = v27 - v18;
  if (v27 < v18)
  {
    v28 = 0;
  }

  *(a1 + 8442) = v28;
  if (v28 > 0x22Au)
  {
    v32 = "Invalid length : Received size greater than maximum download frame size!!";
  }

  else
  {
    if (v27 == v18)
    {
      *(a2 + 8) = v7;
      *(a2 + 16) = v18;
      *(a1 + 8442) = 0;
      v20 = sub_297F0EA10(a1, a2);
      if (v20 != 48 && v20)
      {
LABEL_52:
        if (v20 <= 0x30 && ((1 << v20) & 0x1000000002001) != 0)
        {
          return sub_297E4DFAC(3, a1, 6, 5u, "phDnldNfc_RecvDnldPkt");
        }

        goto LABEL_11;
      }

      if (sub_297F0E83C(a1) != 13)
      {
        if (v20 == 48)
        {
          *a2 = 48;
          *(v10 + 5996) = 4;
          sub_297E57FC4();
          if (!v35)
          {
            return sub_297E4DFAC(3, a1, 6, 5u, "phDnldNfc_RecvDnldPkt");
          }

          v33 = 0;
          v34 = 0;
          do
          {
            v31 = *(&unk_2A18BDDC0 + 14 * v34 + 4);
            if (v33)
            {
              break;
            }

            v33 = 1;
            v34 = 1;
          }

          while (v31 != v10);
LABEL_69:
          if (v31 == v10 && !*(v10 + 5992) && !sub_297E56AFC(*(v10 + 6528)))
          {
            sub_297F0FCA0(v10);
          }

          return sub_297E4DFAC(3, a1, 6, 5u, "phDnldNfc_RecvDnldPkt");
        }

        if (v20)
        {
          goto LABEL_52;
        }
      }

      *(v10 + 5996) = 4;
      sub_297E57FC4();
      if (!v35)
      {
        return sub_297E4DFAC(3, a1, 6, 5u, "phDnldNfc_RecvDnldPkt");
      }

      v29 = 0;
      v30 = 0;
      do
      {
        v31 = *(&unk_2A18BDDC0 + 14 * v30 + 4);
        if (v29)
        {
          break;
        }

        v29 = 1;
        v30 = 1;
      }

      while (v31 != v10);
      goto LABEL_69;
    }

    if (v27 > v18)
    {
      goto LABEL_29;
    }

    v32 = "Critical failure in Download!!";
  }

  sub_297E4E0B0(1, a1 + 8492, 6, 1u, v32);
LABEL_11:
  v12 = 0;
  v13 = 0;
  do
  {
    v14 = *(&unk_2A18BDDC0 + 14 * v13 + 12);
    if (v12)
    {
      break;
    }

    v12 = 1;
    v13 = 1;
  }

  while (v14 != a1);
  if (v14 == a1)
  {
    v15 = a1;
  }

  else
  {
    v15 = 0;
  }

  if (a2)
  {
    if (v14 == a1)
    {
      v16 = *(a2 + 8);
      if (v16)
      {
        if (*(v15 + 8438) <= 2u)
        {
          v17 = *(a2 + 16);
          if ((v17 - 3) < 0xFFFFFFFE || *a2)
          {
LABEL_23:
            sub_297E4E880(1, v15 + 8492, 6, 2u, "phDnldNfc_RecvDnldPkt:corrupted packet rxd and dropped", v16, v17);
            phTmlNfc_ReadAbort();
            phTmlNfc_FlushTxRxBuffers();
            *(v15 + 8438) = 0;
            *(v15 + 8442) = 0;
            if (phTmlNfc_Read() != 13)
            {
              sub_297E4E0B0(1, v15 + 8492, 6, 1u, "phDnldNfc_RecvDnldPkt: Read Request Failure");
              sub_297E96818(*(v15 + 48), 195);
            }

            return sub_297E4DFAC(3, a1, 6, 5u, "phDnldNfc_RecvDnldPkt");
          }

          if (*v15 == 162)
          {
            if (*v16 >= 4u)
            {
              goto LABEL_23;
            }
          }

          else if (*v16 || v17 == 2 && !v16[1])
          {
            goto LABEL_23;
          }
        }
      }
    }
  }

  if (sub_297F0E83C(v15) != 13)
  {
    sub_297E4E0B0(1, v10 + 6524, 6, 1u, "phDnldNfc_RecvDnldPkt: Read Request Failure");
  }

  *(v10 + 5996) = 4;
  sub_297E57FC4();
  v23 = 0;
  v24 = 0;
  do
  {
    v25 = *(&unk_2A18BDDC0 + 14 * v24 + 4);
    if (v23)
    {
      break;
    }

    v23 = 1;
    v24 = 1;
  }

  while (v25 != v10);
  if (v25 == v10 && *(v10 + 5994) == 1)
  {
    *(v10 + 5994) = 0;
    *(v10 + 5996) = 5;
    sub_297E57FC4();
  }

  return sub_297E4DFAC(3, a1, 6, 5u, "phDnldNfc_RecvDnldPkt");
}

uint64_t sub_297F0FCA0(uint64_t a1)
{
  sub_297E4E1B4(2, a1, 3, 5u, "phNciMuxNfc_InitiateNextPkt");
  sub_297E57FC4();
  return sub_297E4DFAC(2, a1, 3, 5u, "phNciMuxNfc_InitiateNextPkt");
}

uint64_t sub_297F0FD1C(uint64_t result, uint64_t a2, uint64_t a3)
{
  if (result)
  {
    v4 = result;
    v5 = *(result + 56);
    if (v5)
    {
      v6 = v5 == 0xFFFFFFFFFFFFLL;
    }

    else
    {
      v6 = 1;
    }

    if (!v6)
    {
      result = sub_297E5A304(*(result + 8492), v5);
    }

    v7 = *(v4 + 8464);
    if (v7)
    {
      v8 = *(v4 + 8472);

      return v7(v8, a3, v4 + 24);
    }
  }

  return result;
}

uint64_t sub_297F0FD90(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v12 = 0;
  v11 = 0u;
  memset(v10, 0, sizeof(v10));
  sub_297E4E1B4(4, a1, 3, 5u, "phNciNfc_DnldCoreIfTxRx");
  v8 = 1;
  if (a1)
  {
    if (a2)
    {
      if (a3)
      {
        BYTE14(v11) = 1;
        phOsalNfc_MemCopy();
        phOsalNfc_MemCopy();
        *(a1 + 117) = 1;
        *(a1 + 4280) = 0;
        v8 = sub_297E57CC8(*(a1 + 8496), 4, v10, sub_297F0FD1C, a1);
        if (v8 == 13)
        {
          *(a1 + 8464) = a3;
          *(a1 + 8472) = a4;
        }
      }
    }
  }

  sub_297E4DFAC(4, a1, 3, 5u, "phNciNfc_DnldCoreIfTxRx");
  return v8;
}

uint64_t sub_297F0FEB0(uint64_t a1, unsigned __int8 *a2)
{
  sub_297E4E1B4(3, a1, 6, 5u, "phDnldNfc_CoreSendCb");
  if (a2)
  {
    v4 = *(a2 + 1);
    if (v4 <= 1)
    {
      sub_297E5A3A8(*(&unk_2A18BDDC0 + 14 * v4), 0);
    }

    if (a1)
    {
      if (*a2 == 179)
      {
        sub_297E4E0B0(1, a1 + 8492, 6, 2u, "SPMI Nack");
      }

      else if (*a2)
      {
        sub_297E4E0B0(1, a1 + 8492, 6, 1u, "Tml Write error!!");
      }

      else
      {
        sub_297E4E0B0(1, a1 + 8492, 6, 4u, "Send Success");
      }

      sub_297E57FC4();
      goto LABEL_14;
    }
  }

  else if (a1)
  {
    sub_297E4E0B0(1, a1 + 8492, 6, 1u, "Invalid pInfo received from TML!!");
    goto LABEL_14;
  }

  sub_297E4E0B0(3, 0, 6, 2u, "phDnldNfc_CoreSendCb:Nci context cleared, received send callback!!");
LABEL_14:

  return sub_297E4DFAC(3, a1, 6, 5u, "phDnldNfc_CoreSendCb");
}

uint64_t sub_297F10010(uint64_t a1, uint64_t *a2)
{
  v16 = 0;
  sub_297E4E1B4(3, a2, 6, 5u, "phDnldNfc_RspTimeOutCb");
  if (!a2)
  {
    goto LABEL_6;
  }

  v4 = 0;
  v5 = 0;
  do
  {
    v6 = *(&unk_2A18BDDC0 + 14 * v5 + 12);
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
    goto LABEL_6;
  }

  v8 = a2[1062];
  if (!v8)
  {
    goto LABEL_6;
  }

  v9 = 0;
  v10 = 0;
  do
  {
    v11 = *(&unk_2A18BDDC0 + 14 * v10 + 4);
    if (v9)
    {
      break;
    }

    v9 = 1;
    v10 = 1;
  }

  while (v11 != v8);
  if (v11 == v8)
  {
    sub_297E67EB0(a2[6], &v16);
    v12 = a2[1062];
    sub_297E5A304(*(v12 + 6524), a1);
    if (a2[7] == a1)
    {
      *(v12 + 5996) = 4;
      sub_297E57FC4();
      if (v16)
      {
        v13 = 0;
        v14 = 0;
        do
        {
          v15 = *(&unk_2A18BDDC0 + 14 * v14 + 4);
          if (v13)
          {
            break;
          }

          v13 = 1;
          v14 = 1;
        }

        while (v15 != v12);
        if (v15 == v12 && !*(v12 + 5992) && !sub_297E56AFC(*(v12 + 6528)))
        {
          sub_297F0FCA0(v12);
        }
      }
    }
  }

  else
  {
LABEL_6:
    sub_297E4E0B0(3, a2, 6, 1u, "phDnldNfc_RspTimeOutCb: Invalid or NULL pDnldCoreCtx or pNciHandle");
  }

  return sub_297E4DFAC(3, a2, 6, 5u, "phDnldNfc_RspTimeOutCb");
}

uint64_t sub_297F101A8(uint64_t a1)
{
  v16 = 0;
  v17 = a1;
  v15 = 0;
  sub_297E4E1B4(0, &v17, 6, 5u, "phDnldEseNfc_CoreInit");
  v1 = 0;
  v2 = 1;
  while (1)
  {
    v3 = v2;
    v4 = &unk_2A18BDDC0 + 112 * v1;
    if (*v4 == v17)
    {
      break;
    }

    v2 = 0;
    v1 = 1;
    if ((v3 & 1) == 0)
    {
      sub_297E9F51C(v17, &v15);
LABEL_11:
      v6 = 1;
      goto LABEL_12;
    }
  }

  v5 = *(v4 + 2);
  sub_297E9F51C(v17, &v15);
  if (v5 > 1)
  {
    goto LABEL_11;
  }

  sub_297E8FA74(v5, &v16);
  v6 = 1;
  if (v17)
  {
    v7 = v16;
    if (v16)
    {
      *v16 = v17;
      *(v7 + 1368) = v5;
      v8 = v15;
      *(v7 + 1376) = v15;
      *(v7 + 1384) = 1;
      sub_297F0AC64(v8, v7);
      sub_297E5B294(v15, 5u);
      sub_297E966F4(0, &v17, 6, 4u, "####Primary NFCC, DriverHandle");
      sub_297E966F4(0, &v17, 6, 4u, "####Primary NFCC, DOWNLOAD-ESE-CORE context");
      v9 = phOsalNfc_Timer_Create();
      if (v9 != 0xFFFFFFFFFFFFLL && (v10 = v9) != 0)
      {
        sub_297E50EBC(0, &v17, 6, 4u, "phDnldEseNfc_CoreInit : Timer Create dwRspTimerId!");
        v16[6] = v10;
        v13 = phOsalNfc_Timer_Create();
        if (v13 != 0xFFFFFFFFFFFFLL)
        {
          v14 = v13;
          if (v13)
          {
            sub_297E50EBC(0, &v17, 6, 4u, "phDnldEseNfc_CoreInit : Timer Create dwCrdtTimerId!");
            v6 = 0;
            v16[7] = v14;
            goto LABEL_12;
          }
        }

        v11 = "phDnldEseNfc_CoreInit : Dnld Ese Credit Timer Create failed!!";
      }

      else
      {
        v11 = "phDnldEseNfc_CoreInit : Dnld Ese Rsp Timer Create failed!!";
      }

      sub_297E4E0B0(0, &v17, 6, 1u, v11);
      v6 = 12;
    }
  }

LABEL_12:
  sub_297E4DFAC(0, &v17, 6, 5u, "phDnldEseNfc_CoreInit");
  return v6;
}

uint64_t sub_297F103BC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v14 = 0;
  v13 = 0;
  v12 = 0u;
  memset(v11, 0, sizeof(v11));
  sub_297E4E1B4(4, a1, 6, 5u, "phNciNfc_DnldEseCoreIfTxOnly");
  v8 = 1;
  if (a1)
  {
    if (a2)
    {
      if (a3)
      {
        sub_297E9F51C(*a1, &v14);
        BYTE14(v12) = 1;
        phOsalNfc_SetMemory();
        phOsalNfc_SetMemory();
        phOsalNfc_MemCopy();
        phOsalNfc_MemCopy();
        v8 = sub_297E57CC8(v14, 5, v11, sub_297F1053C, a1);
        if (v8 == 13)
        {
          *(a1 + 80) = a3;
          *(a1 + 88) = a4;
          v9 = *(a1 + 48);
          if (v9)
          {
            if (v9 != 0xFFFFFFFFFFFFLL)
            {
              if (*(a1 + 16) == 1)
              {
                sub_297E5A304(*(a1 + 1368), v9);
                *(a1 + 16) = 0;
              }

              v8 = 13;
            }
          }
        }
      }
    }
  }

  sub_297E4DFAC(4, a1, 6, 5u, "phNciNfc_DnldEseCoreIfTxOnly");
  return v8;
}

uint64_t sub_297F1053C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  sub_297E4E1B4(4, a1, 6, 5u, "phNciNfc_DnldEseCoreIfTxOnlyComplete");
  if (a1)
  {
    v5 = *(a1 + 48);
    if (v5)
    {
      v6 = v5 == 0xFFFFFFFFFFFFLL;
    }

    else
    {
      v6 = 1;
    }

    if (!v6)
    {
      sub_297E5A304(*(a1 + 1368), v5);
      *(a1 + 16) = 0;
    }

    v7 = *(a1 + 56);
    if (v7 && v7 != 0xFFFFFFFFFFFFLL)
    {
      sub_297E5A304(*(a1 + 1368), v7);
    }

    v8 = *(a1 + 80);
    if (v8)
    {
      v8(*(a1 + 88), a3, a1 + 768);
      v9 = 0;
      v10 = 0;
      do
      {
        v11 = *(&unk_2A18BDDC0 + 14 * v10 + 8);
        if (v9)
        {
          break;
        }

        v9 = 1;
        v10 = 1;
      }

      while (v11 != a1);
      if (v11 == a1 && !*(a1 + 264))
      {
        *(a1 + 80) = 0;
      }
    }
  }

  else
  {
    sub_297E4E0B0(4, 0, 6, 1u, "phNciNfc_DnldEseCoreIfTxOnlyComplete:Invalid Download Ese Context!!");
  }

  return sub_297E4DFAC(4, a1, 6, 5u, "phNciNfc_DnldEseCoreIfTxOnlyComplete");
}

uint64_t sub_297F10660(uint64_t a1, char a2)
{
  sub_297E4E1B4(4, a1, 6, 5u, "phDnldEseNfc_UpdateCredits");
  v4 = *(a1 + 1376);
  if (v4)
  {
    *(a1 + 29) += a2;
    if (*(a1 + 17) == 1)
    {
      sub_297E5A304(*(a1 + 1368), *(a1 + 56));
      *(a1 + 17) = 0;
      *(v4 + 5996) = 5;
      sub_297E57FC4();
    }
  }

  return sub_297E4DFAC(4, a1, 6, 5u, "phDnldEseNfc_UpdateCredits");
}

uint64_t sub_297F10718(uint64_t a1, unsigned int a2)
{
  sub_297E4E1B4(4, a1, 6, 5u, "phDnldEseNfc_HciDeleteList");
  if (a1)
  {
    *(a1 + 232 + 4 * a2) = 0;
    v4 = *(a1 + 152 + 8 * a2);
    v5 = a2;
    if (v4)
    {
      for (i = *(v4 + 296); i; i = *(v7 + 296))
      {
        v7 = i;
        phOsalNfc_FreeMemory();
      }

      phOsalNfc_FreeMemory();
      *(a1 + 152 + 8 * v5) = 0;
      *(a1 + 2 * v5 + 216) = 1;
    }

    else
    {
      sub_297E4E0B0(1, a1 + 1368, 6, 4u, "phDnldEseNfc_HciDeleteList:List is empty");
      *(a1 + 2 * a2 + 216) = 1;
    }

    *(a1 + 232 + 4 * v5) = 0;
  }

  else
  {
    sub_297E4E0B0(4, 0, 6, 1u, "phDnldEseNfc_HciDeleteList:Invalid Dnld Ese Core context!");
  }

  return sub_297E4DFAC(4, a1, 6, 5u, "phDnldEseNfc_HciDeleteList");
}

uint64_t sub_297F10840(void *a1, unsigned __int8 *a2)
{
  v19 = 0;
  memset(v18, 0, sizeof(v18));
  v17 = -1;
  sub_297E4E1B4(4, a1, 6, 5u, "phDnldEseNfc_ProcessApduPipeEvts");
  if (!a2)
  {
    goto LABEL_39;
  }

  v4 = a1[172];
  if (v4)
  {
    v5 = a2[1];
    if (v5 != 2)
    {
      if (v5 == 17)
      {
        sub_297E4E0B0(1, (a1 + 171), 6, 4u, "phDnldEseNfc_ProcessApduPipeEvts:EVENT_WTX_REQ received");
        v7 = a1[83];
        if (!v7)
        {
          sub_297E4E0B0(1, (a1 + 171), 6, 4u, "phDnldEseNfc_ProcessApduPipeEvts:WTX Call Back not defined by App");
          goto LABEL_39;
        }

        v8 = *(a2 + 1);
        if (v8)
        {
          v9 = sub_297EEAB9C(*(a1 + 342), *v8);
          if (v9 <= 0x7CF)
          {
            v10 = v9 + 400;
          }

          else
          {
            v10 = v9;
          }

          v7 = a1[83];
        }

        else
        {
          v10 = 2000;
        }

        *(a1 + 24) = v10;
        *(a1 + 8) = v10;
        v7(*a1, a1[84], a1[1], a1 + 12, 74);
        v12 = a1[6];
        if (v12 == 0xFFFFFFFFFFFFLL)
        {
          goto LABEL_39;
        }

        sub_297E5A304(*(a1 + 342), v12);
        *(a1 + 16) = 0;
        v4 = phOsalNfc_Timer_Start();
        if (!v4)
        {
          *(a1 + 16) = 1;
          goto LABEL_40;
        }

        v11 = "phDnldEseNfc_ProcessApduPipeEvts : Response Timer Start failed!!!";
      }

      else
      {
        if (v5 != 16)
        {
          goto LABEL_39;
        }

        if (a1[8])
        {
          v6 = *(a1 + 18);
          if (v6)
          {
            if (v6 < *(a2 + 8))
            {
              sub_297E4E0B0(1, (a1 + 171), 6, 1u, "phDnldEseNfc_ProcessApduPipeEvts:Could not copy entire received data");
              v4 = 8;
              goto LABEL_40;
            }

            phOsalNfc_MemCopy();
            *(a1 + 18) = *(a2 + 8);
            *(v4 + 5996) = 5;
            sub_297E57FC4();
            v13 = 0;
            v14 = 0;
            do
            {
              v15 = *(&unk_2A18BDDC0 + 14 * v14 + 4);
              if (v13)
              {
                break;
              }

              v13 = 1;
              v14 = 1;
            }

            while (v15 != v4);
            if (v15 == v4 && !*(v4 + 5992) && !sub_297E56AFC(*(v4 + 6528)))
            {
              sub_297F0FCA0(v4);
            }

LABEL_39:
            v4 = 0;
            goto LABEL_40;
          }
        }

        v11 = "phDnldEseNfc_ProcessApduPipeEvts:Invalid User response buffer or length";
        v4 = 1;
      }

      sub_297E4E0B0(1, (a1 + 171), 6, 1u, v11);
      goto LABEL_40;
    }

    if (sub_297F10D04(a1, *(a1 + 197), &v17))
    {
      v4 = 1;
      goto LABEL_40;
    }

    if (a1[81] && v17 == *a2)
    {
      sub_297E96818(*a1, 217);
      sub_297E5A304(*(a1 + 342), a1[6]);
      *(a1 + 16) = 0;
      sub_297E5A304(*(a1 + 342), a1[7]);
      *(a1 + 17) = 0;
      *(v4 + 5980) = 0;
      *(v4 + 5972) = 0;
      sub_297E4E0B0(1, (a1 + 171), 6, 1u, "phDnldEseNfc_ProcessApduPipeEvts: OS Reset Event received");
      phDnldEseNfc_ProcOsResetNtf(a1, 217, 0);
    }

    else if (a1[85])
    {
      phOsalNfc_SetMemory();
      LODWORD(v18[0]) = sub_297E9EFAC(*(a1 + 342), *a2);
      (a1[85])(*a1, a1[86], 27, a1[1], v18, 217);
    }

    else
    {
      sub_297E50DB0(1, (a1 + 171), 6, 2u, "phDnldEseNfc_ProcessApduPipeEvts: Ignoring SE OS Reset, PipeID");
    }

    goto LABEL_39;
  }

LABEL_40:
  sub_297E4DFAC(4, a1, 6, 5u, "phDnldEseNfc_ProcessApduPipeEvts");
  return v4;
}

uint64_t sub_297F10BCC(uint64_t a1, uint64_t a2)
{
  sub_297E4E1B4(4, a2, 6, 5u, "phDnldEseNfc_RspTimeOutCb");
  if (a2)
  {
    v4 = 0;
    v5 = 0;
    do
    {
      v6 = *(&unk_2A18BDDC0 + 14 * v5 + 8);
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
      v8 = *(a2 + 1376);
      if (v8)
      {
        if (*(a2 + 48) == a1)
        {
          sub_297E5A304(*(a2 + 1368), a1);
          *(a2 + 16) = 0;
          *(v8 + 5996) = 5;
          sub_297E57FC4();
          v9 = 0;
          v10 = 0;
          do
          {
            v11 = *(&unk_2A18BDDC0 + 14 * v10 + 4);
            if (v9)
            {
              break;
            }

            v9 = 1;
            v10 = 1;
          }

          while (v11 != v8);
          if (v11 == v8 && !*(v8 + 5992) && !sub_297E56AFC(*(v8 + 6528)))
          {
            sub_297F0FCA0(v8);
          }
        }
      }
    }
  }

  return sub_297E4DFAC(4, a2, 6, 5u, "phDnldEseNfc_RspTimeOutCb");
}

uint64_t sub_297F10D04(_BYTE *a1, uint64_t a2, _BYTE *a3)
{
  sub_297E4E1B4(4, a1, 6, 5u, "phDnldEseNfc_MultiOSGetPipeId");
  if (a3)
  {
    if (a2 > 1)
    {
      if (a2 == 2)
      {
        a2 = 0;
        v6 = a1[144];
        goto LABEL_13;
      }

      if (a2 == 3)
      {
        a2 = 0;
        v6 = a1[148];
        goto LABEL_13;
      }
    }

    else
    {
      if (!a2)
      {
        v6 = a1[136];
        goto LABEL_13;
      }

      if (a2 == 1)
      {
        a2 = 0;
        v6 = a1[140];
LABEL_13:
        *a3 = v6;
        goto LABEL_14;
      }
    }

    *a3 = -1;
    a2 = 1;
  }

  else
  {
    a2 = 1;
    sub_297E4E0B0(4, a1, 6, 1u, "phDnldEseNfc_MultiOSGetPipeId:Invalid Context or Pipe Id");
  }

LABEL_14:
  sub_297E4DFAC(4, a1, 6, 5u, "phDnldEseNfc_MultiOSGetPipeId");
  return a2;
}

uint64_t sub_297F10DF8(void *a1, unsigned __int8 *a2)
{
  v36 = 0;
  v34 = 0u;
  v35 = 0u;
  sub_297E4E1B4(4, a1, 6, 5u, "phDnldEseNfc_ProcessConnPipeEvts");
  if (!a2 || !*(a2 + 1))
  {
    goto LABEL_48;
  }

  LODWORD(v36) = sub_297E9EFAC(*(a1 + 342), *a2);
  v4 = a2[1];
  if (v4 <= 0x12)
  {
    if (v4 != 16)
    {
      if (v4 == 18)
      {
        v5 = *(a2 + 1);
        if (*v5 != 129)
        {
          sub_297E4E0B0(1, (a1 + 171), 6, 1u, "phDnldEseNfc_ProcessConnPipeEvts:Failed, error in packet");
          LOWORD(v15) = 0;
          LOBYTE(v14) = 0;
          v6 = 255;
          goto LABEL_70;
        }

        v6 = 0;
        v7 = v5[1];
        DWORD2(v34) = v7;
        *&v34 = v5 + 2;
        if (v7 <= 0xFE)
        {
          v8 = 254 - v7;
        }

        else
        {
          v8 = 0;
        }

        if (v7 - 17 <= 0xFFFFFFF3)
        {
          sub_297E4E0B0(1, (a1 + 171), 6, 1u, "phDnldEseNfc_ProcessConnPipeEvts:Failed AID Length Evaluation");
          v5 = *(a2 + 1);
          v6 = 255;
        }

        if (v5[-v8] != 130)
        {
          sub_297E4E0B0(1, (a1 + 171), 6, 1u, "phDnldEseNfc_ProcessConnPipeEvts:Failed, PARAMETER Field is not available");
          LOWORD(v15) = 0;
          v6 = 255;
          v14 = -v8;
          goto LABEL_70;
        }

        v9 = 1 - v8;
        v10 = (1 - v8);
        if ((v5[v10] & 0x80000000) == 0)
        {
          v11 = (1 - v8);
          v12 = 2;
LABEL_15:
          v13 = v12 - v8;
          if (v11 >= 0xFE)
          {
            LOBYTE(v14) = v9;
          }

          else
          {
            LOBYTE(v14) = v13;
          }

          if (v11 >= 0xFE)
          {
            v10 = 0;
          }

          v15 = v5[v10];
LABEL_21:
          DWORD2(v35) = v15;
LABEL_69:
          *&v35 = *(a2 + 1) + v14;
LABEL_70:
          if (*(a2 + 8) != (v15 + v14))
          {
            DWORD2(v35) = 0;
            DWORD2(v34) = 0;
            sub_297E4E0B0(1, (a1 + 171), 6, 1u, "phDnldEseNfc_ProcessConnPipeEvts:Failed,BER TLV parsing, Length Mismatch");
            v6 = 255;
          }

          v33 = a1[85];
          if (v33)
          {
            v33(*a1, a1[86], 2, a1[1], &v34, v6);
            goto LABEL_49;
          }

LABEL_74:
          sub_297E4E0B0(1, (a1 + 171), 6, 1u, "phDnldEseNfc_ProcessConnPipeEvts:Se notification callback is NULL");
          v6 = 255;
          goto LABEL_49;
        }

        if (v5[v10] == 130)
        {
          v28 = 2 - v8;
          v29 = (2 - v8);
          v30 = v29 >= 0xFE;
          if (v29 >= 0xFE)
          {
            v31 = 2 - v8;
          }

          else
          {
            v31 = 3 - v8;
          }

          if (v30)
          {
            v28 = 0;
          }

          v32 = v5[v28];
          if (v31 >= 0xFEu)
          {
            LOBYTE(v14) = v31;
          }

          else
          {
            LOBYTE(v14) = v31 + 1;
          }

          if (!v32)
          {
            sub_297E4E0B0(1, (a1 + 171), 6, 1u, "phDnldEseNfc_ProcessConnPipeEvts:Failed Parsing BER TLV Two BYTE");
            LOWORD(v15) = 0;
            v6 = 255;
            goto LABEL_69;
          }

          if (v31 >= 0xFEu)
          {
            v31 = 0;
          }

          v15 = v5[v31] | (v32 << 8);
          goto LABEL_21;
        }

        if (v5[v10] == 129)
        {
          v9 = 2 - v8;
          v10 = (2 - v8);
          if (v5[v10] < 0)
          {
            v11 = (2 - v8);
            v12 = 3;
            goto LABEL_15;
          }

          v27 = "phDnldEseNfc_ProcessConnPipeEvts:Failed Parsing BER TLV One BYTE";
        }

        else
        {
          v27 = "phDnldEseNfc_ProcessConnPipeEvts:Failed Parsing BER TLV";
        }

        sub_297E4E0B0(1, (a1 + 171), 6, 1u, v27);
        LOWORD(v15) = 0;
        v6 = 255;
        LOBYTE(v14) = v9;
        goto LABEL_69;
      }

      goto LABEL_29;
    }

    v19 = *(a2 + 8);
    if (*(a2 + 8))
    {
      v20 = *(a2 + 1);
    }

    else
    {
      v20 = 0;
    }

    *&v35 = v20;
    DWORD2(v35) = v19;
    DWORD2(v34) = 0;
    *&v34 = 0;
    v22 = a1[85];
    if (!v22)
    {
      goto LABEL_74;
    }

    v23 = a1[86];
    v24 = *a1;
    v25 = a1[1];
    v18 = 3;
    goto LABEL_47;
  }

  if (v4 != 19)
  {
    if (v4 != 32)
    {
LABEL_29:
      sub_297E50DB0(1, (a1 + 171), 6, 1u, "phDnldEseNfc_ProcessConnPipeEvts: Unknown HCI Event, Dropped Ins");
LABEL_48:
      v6 = 0;
      goto LABEL_49;
    }

    v16 = *(a2 + 8);
    if (*(a2 + 8) && (v17 = *(a2 + 1)) != 0)
    {
      if (*v17 == 1)
      {
        v18 = 23;
      }

      else if (*v17)
      {
        sub_297E4E0B0(1, (a1 + 171), 6, 1u, "phDnldEseNfc_ProcessConnPipeEvts:SE restricted mode Unknown Event\n");
        v17 = *(a2 + 1);
        v16 = *(a2 + 8);
        v18 = 255;
      }

      else
      {
        LODWORD(v36) = 255;
        v18 = 4;
      }

      *&v35 = v17;
      DWORD2(v35) = v16;
      DWORD2(v34) = 0;
      *&v34 = 0;
    }

    else
    {
      *&v34 = 0;
      DWORD2(v34) = 0;
      *&v35 = 0;
      v18 = 4;
      LODWORD(v36) = 255;
      DWORD2(v35) = 0;
    }

    v22 = a1[85];
    if (!v22)
    {
      goto LABEL_74;
    }

    v23 = a1[86];
    v24 = *a1;
    v25 = a1[1];
LABEL_47:
    v22(v24, v23, v18, v25, &v34, 0);
    goto LABEL_48;
  }

  *&v34 = 0;
  DWORD2(v34) = 0;
  *&v35 = 0;
  DWORD2(v35) = 0;
  v21 = a1[85];
  if (v21)
  {
    v21(*a1, a1[86], 17, a1[1], &v34, 0);
    v6 = 0;
  }

  else
  {
    sub_297E4E0B0(1, (a1 + 171), 6, 1u, "phDnldEseNfc_ProcessConnPipeEvts:Se notification callback is NULL");
    v6 = 255;
  }

  sub_297E50DB0(1, (a1 + 171), 6, 4u, "phDnldEseNfc_ProcessConnPipeEvts: phLibNfc_eSE_EvtEndOfOperation, Ins");
LABEL_49:
  sub_297E4DFAC(4, a1, 6, 5u, "phDnldEseNfc_ProcessConnPipeEvts");
  return v6;
}

uint64_t sub_297F112BC(void *a1, int a2)
{
  v9 = 0;
  memset(v8, 0, sizeof(v8));
  sub_297E4E1B4(4, a1, 6, 5u, "phDnldEseNfc_GenErrNtfHandler");
  sub_297E4E0B0(1, (a1 + 171), 6, 1u, "phDnldEseNfc_GenErrNtfHandler:Generic Error Notification received");
  v4 = a2 | 0x100;
  if ((a2 | 0x100) > 270)
  {
    if (v4 <= 272)
    {
      if (v4 == 271)
      {
        sub_297E4E0B0(1, (a1 + 171), 6, 1u, "phDnldEseNfc_GenErrNtfHandler: Error code 0x0F,SE connectivity Pipe deleted");
        v5 = 271;
        goto LABEL_25;
      }

      if (v4 == 272)
      {
        sub_297E4E0B0(1, (a1 + 171), 6, 1u, "phDnldEseNfc_GenErrNtfHandler: Error code 0x10,SE loopback Pipe deleted");
        v5 = 272;
        goto LABEL_25;
      }
    }

    else
    {
      switch(v4)
      {
        case 273:
          sub_297E4E0B0(1, (a1 + 171), 6, 1u, "phDnldEseNfc_GenErrNtfHandler: Error code 0x11,SE Identity Management Pipe deleted");
          v5 = 273;
          goto LABEL_25;
        case 274:
          sub_297E4E0B0(1, (a1 + 171), 6, 1u, "phDnldEseNfc_GenErrNtfHandler: Error code 0x12,SE APDU Pipe deleted");
          v5 = 274;
          goto LABEL_25;
        case 275:
          sub_297E4E0B0(1, (a1 + 171), 6, 1u, "phDnldEseNfc_GenErrNtfHandler: Error code 0x13,Temperature Error");
          v5 = 275;
          goto LABEL_25;
      }
    }
  }

  else if (v4 <= 267)
  {
    if (v4 == 266)
    {
      sub_297E4E0B0(1, (a1 + 171), 6, 1u, "phDnldEseNfc_GenErrNtfHandler: Error code 0x0A,Message size exceeded maximum size");
      v5 = 266;
      goto LABEL_25;
    }

    if (v4 == 267)
    {
      sub_297E4E0B0(1, (a1 + 171), 6, 1u, "phDnldEseNfc_GenErrNtfHandler: Error code 0x0B,SE is not enabled");
      v5 = 267;
      goto LABEL_25;
    }
  }

  else
  {
    switch(v4)
    {
      case 268:
        sub_297E4E0B0(1, (a1 + 171), 6, 1u, "phDnldEseNfc_GenErrNtfHandler: Error code 0x0C,Invalid Pipe");
        v5 = 268;
        goto LABEL_25;
      case 269:
        sub_297E4E0B0(1, (a1 + 171), 6, 1u, "phDnldEseNfc_GenErrNtfHandler: Error code 0x0D,Invalid HCP Packet");
        v5 = 269;
        goto LABEL_25;
      case 270:
        sub_297E4E0B0(1, (a1 + 171), 6, 1u, "phDnldEseNfc_GenErrNtfHandler: Error code 0x0E,SE cleared all Pipe");
        v5 = 270;
        goto LABEL_25;
    }
  }

  sub_297E50DB0(1, (a1 + 171), 6, 1u, "phDnldEseNfc_GenErrNtfHandler:Unknown Error Code: ");
  v5 = 256;
LABEL_25:
  v6 = a1[85];
  if (v6)
  {
    v6(*a1, a1[86], 26, a1[1], v8, v5);
  }

  return sub_297E4DFAC(4, a1, 6, 5u, "phDnldEseNfc_GenErrNtfHandler");
}

uint64_t sub_297F1155C(void *a1, uint64_t a2)
{
  sub_297E4E1B4(4, a1, 6, 5u, "phDnldNfc_DnldEseValidateRxdPkt");
  if (*a2 || (v6 = *(a2 + 16), !*(a2 + 16)) || (v7 = *(a2 + 8)) == 0)
  {
    sub_297E4E0B0(1, (a1 + 171), 6, 1u, "phDnldNfc_DnldEseValidateRxdPkt:Dnld eSE Cmd Request Failed!!");
LABEL_3:
    v4 = 255;
    goto LABEL_4;
  }

  *&v71[0] = *a1;
  sub_297E4E1B4(0, v71, 6, 5u, "phDnldNfc_DnldEseVldtCrcRcvd");
  if ((v7[v6 - 1] | (v7[v6 - 2] << 8)) != sub_297E50CEC(*&v71[0], v7, (v6 - 2)))
  {
    sub_297E4E0B0(0, v71, 6, 1u, "phDnldNfc_DnldEseVldtCrcRcvd:Invalid frame received");
    sub_297E50DB0(0, v71, 6, 1u, "Received CRC: ");
    sub_297E50DB0(0, v71, 6, 1u, "Calculated CRC: ");
LABEL_23:
    sub_297E4DFAC(0, v71, 6, 5u, "phDnldNfc_DnldEseVldtCrcRcvd");
    goto LABEL_3;
  }

  if ((v7[1] | ((*v7 & 0x1F) << 8)) != (v6 - 4))
  {
    sub_297E4E0B0(0, v71, 6, 1u, "phDnldNfc_DnldEseVldtCrcRcvd:Invalid frame payload length received");
    goto LABEL_23;
  }

  sub_297E4DFAC(0, v71, 6, 5u, "phDnldNfc_DnldEseVldtCrcRcvd");
  v72 = 0;
  memset(v71, 0, sizeof(v71));
  sub_297E4E1B4(4, a1, 6, 5u, "phDnldEseNfc_UpdateRsp");
  v8 = a1[172];
  if (!v8 || !*(v8 + 6624))
  {
    v16 = "phDnldEseNfc_UpdateRsp:Invalid Context!!";
    v17 = 4;
    v18 = a1;
LABEL_37:
    sub_297E4E0B0(v17, v18, 6, 1u, v16);
LABEL_38:
    v4 = 255;
    goto LABEL_39;
  }

  v9 = *(a1 + 186);
  if (v9 > 0x25 || ((1 << v9) & 0x3400000001) == 0)
  {
    v16 = "phDnldEseNfc_UpdateRsp:Unsuccessful Status received!!";
    goto LABEL_36;
  }

  v10 = *(a2 + 8);
  if (!v10)
  {
    v16 = "phDnldEseNfc_UpdateRsp:Invalid TML buffer received!!";
LABEL_36:
    v18 = a1 + 171;
    v17 = 1;
    goto LABEL_37;
  }

  v11 = v6 - 5;
  v12 = v8 + 4096;
  v13 = *(v10 + 2);
  v14 = v13 >> 5;
  if (!(v13 >> 5))
  {
    v73 = 0;
    v74 = 0;
    v75 = 0;
    sub_297E4E1B4(4, a1, 6, 5u, "phDnldEseNfc_HciRecvManager");
    v20 = *(v10 + 3);
    v21 = v11;
    v22 = *(v10 + 3) & 0x7F;
    sub_297E4E1B4(4, a1, 6, 5u, "phDnldEseNfc_GetPipeIndx");
    v23 = 0;
    v24 = 136;
    while (*(a1 + v24) != v22)
    {
      ++v23;
      v24 += 2;
      if (v23 == 8)
      {
        sub_297E4DFAC(4, a1, 6, 5u, "phDnldEseNfc_GetPipeIndx");
        LOBYTE(v23) = 0;
        goto LABEL_43;
      }
    }

    sub_297E4DFAC(4, a1, 6, 5u, "phDnldEseNfc_GetPipeIndx");
    if (v23 >= 8)
    {
      v25 = "phDnldEseNfc_HciRecvManager: Data from unknown Pipe ID";
LABEL_45:
      v26 = a1 + 171;
LABEL_46:
      sub_297E4E0B0(1, v26, 6, 1u, v25);
      v4 = 255;
LABEL_47:
      sub_297E4DFAC(4, a1, 6, 5u, "phDnldEseNfc_HciRecvManager");
      goto LABEL_39;
    }

LABEL_43:
    if (v11 >= 0x11Bu)
    {
      v25 = "phDnldEseNfc_HciRecvManager: Recvd HCP Pkt > PHDNLDNFC_ESE_HDLL_HCP_MAX_PACKET_SIZE";
      goto LABEL_45;
    }

    sub_297E4E1B4(4, a1, 6, 5u, "phDnldEseNfc_GetNewNode");
    v68 = a1 + 19;
    v27 = a1[v23 + 19];
    if (v27)
    {
      do
      {
        v28 = v27;
        v27 = *(v27 + 296);
      }

      while (v27);
      Memory_Typed = phOsalNfc_GetMemory_Typed();
      *(v28 + 296) = Memory_Typed;
      if (!Memory_Typed)
      {
        v36 = a1 + 171;
        sub_297E4E0B0(1, (a1 + 171), 6, 1u, "phDnldEseNfc_GetNewNode:Memory allocation failed while creating new node!");
        sub_297E4DFAC(4, a1, 6, 5u, "phDnldEseNfc_GetNewNode");
LABEL_73:
        sub_297E4E0B0(1, v36, 6, 1u, " phDnldEseNfc_HciRecvManager:Failed To Allocate Memory for Node");
LABEL_74:
        if ((v20 & 0x80) == 0)
        {
          sub_297E4E0B0(1, v36, 6, 4u, "phDnldEseNfc_HciRecvManager:Buffered Received Chained HCI packets");
          v12 = v8 + 4096;
          v14 = 0;
          if (a1[81] && *(a1 + 1384) == 1)
          {
            *(a1 + 1384) = 0;
            v43 = a1[6];
            if (v43 == 0xFFFFFFFFFFFFLL)
            {
              sub_297E4E0B0(1, v36, 6, 1u, "phDnldEseNfc_HciRecvManager: Invalid response timer");
            }

            else
            {
              v58 = *(a1 + 196);
              if (v58 <= 0x2710)
              {
                v58 = 10000;
              }

              *(a1 + 8) = v58;
              sub_297E5A304(*(a1 + 342), v43);
              *(a1 + 16) = 0;
              v59 = phOsalNfc_Timer_Start();
              if (v59)
              {
                v4 = v59;
                sub_297E4E0B0(1, v36, 6, 1u, "phDnldEseNfc_HciRecvManager : Response Timer Start failed!!!");
                goto LABEL_47;
              }

              *(a1 + 16) = 1;
              v12 = v8 + 4096;
              v14 = 0;
            }
          }

          sub_297E4DFAC(4, a1, 6, 5u, "phDnldEseNfc_HciRecvManager");
          goto LABEL_117;
        }

        *(a1 + 1384) = 1;
        v74 = 0;
        if (*(a1 + v23 + 58))
        {
          v44 = phOsalNfc_GetMemory_Typed();
          v26 = v36;
          v45 = v44;
          v74 = v44;
          if (!v44)
          {
            v25 = "phDnldEseNfc_HciRecvManager:Memory Allocation Failed";
            goto LABEL_46;
          }
        }

        else
        {
          v26 = v36;
          v45 = 0;
        }

        v70 = v26;
        sub_297E4E1B4(4, a1, 6, 5u, "phDnldEseNfc_ExtractHciData");
        v46 = v68[v23];
        v47 = *(a1 + v23 + 108);
        v66 = *v46 & 0x7F;
        LOBYTE(v73) = *v46 & 0x7F;
        v48 = *(v46 + 1);
        BYTE2(v73) = v48 >> 6;
        v67 = v48 & 0x3F;
        BYTE1(v73) = v48 & 0x3F;
        v49 = *(v46 + 288) - 2;
        phOsalNfc_MemCopy();
        v69 = v47;
        v65 = v45;
        if (v47 >= 2)
        {
          v50 = *(v46 + 296);
          v51 = v49;
          if (v45)
          {
            v52 = v45 + v49;
          }

          else
          {
            v52 = 0;
          }

          v53 = 1;
          while (1)
          {
            v54 = *(v50 + 288);
            v55 = v54 - 1;
            if (v54 == 1)
            {
              sub_297E4E0B0(1, v70, 6, 1u, "phDnldEseNfc_ExtractHciData: HCI Core Receive- Zero Payload Len");
            }

            else
            {
              phOsalNfc_MemCopy();
              v50 = *(v50 + 296);
              if (v51 <= -v54)
              {
                v51 += v55;
              }

              else
              {
                v51 = 0;
              }

              if (!v50)
              {
                goto LABEL_98;
              }

              v52 += v55;
            }

            if (++v53 >= v69)
            {
              goto LABEL_98;
            }
          }
        }

        v51 = v49;
LABEL_98:
        v56 = *(a1 + v23 + 58);
        LOWORD(v75) = v56;
        if (v51 != v56)
        {
          sub_297E4E0B0(1, v70, 6, 1u, "phDnldEseNfc_ExtractHciData:HCI Core Receive- Mismatch in Number of Payload Bytes                Processed and Stored");
          sub_297E4DFAC(4, a1, 6, 5u, "phDnldEseNfc_ExtractHciData");
          sub_297E4E0B0(1, v70, 6, 1u, " phDnldEseNfc_HciRecvManager: HCI Packet Extraction Failed");
          v4 = 255;
          goto LABEL_113;
        }

        sub_297E4DFAC(4, a1, 6, 5u, "phDnldEseNfc_ExtractHciData");
        sub_297F10718(a1, v23);
        sub_297E50DB0(1, v70, 6, 4u, "Rx HCP:PipeID");
        sub_297E50DB0(1, v70, 6, 4u, "Rx HCP:MsgType");
        sub_297E50DB0(1, v70, 6, 4u, "Rx HCP:Ins");
        sub_297E4E880(1, v70, 6, 4u, "Rx HCP:Data", v65, v51);
        if (v66 <= 0x2D)
        {
          if (((1 << v66) & 0x38002000000) != 0)
          {
            if (v67 == 2 || !*(a1 + 186))
            {
              v57 = sub_297F10840(a1, &v73);
              goto LABEL_112;
            }
          }

          else if (((1 << v66) & 0x380000400000) != 0)
          {
            v57 = sub_297F10DF8(a1, &v73);
LABEL_112:
            v4 = v57;
LABEL_113:
            v12 = v8 + 4096;
            v14 = 0;
            phOsalNfc_FreeMemory();
            sub_297E4DFAC(4, a1, 6, 5u, "phDnldEseNfc_HciRecvManager");
            if (!v4)
            {
              goto LABEL_117;
            }

            goto LABEL_39;
          }
        }

        sub_297E50DB0(1, v70, 6, 2u, "phDnldEseNfc_HciRecvManager: Invalid PipeID/response received, packet dropped PipeID");
        v4 = 0;
        goto LABEL_113;
      }

      ++*(a1 + v23 + 108);
      phOsalNfc_SetMemory();
      *(*(v28 + 296) + 296) = 0;
      v30 = *(v28 + 296);
      v31 = a1 + 4 * v23;
      v32 = *(v31 + 58);
      v33 = v21 - 1;
      if (!v21)
      {
        v33 = 0;
      }

      v34 = __CFADD__(v33, v32);
      v35 = v32 + v33;
      if (v34)
      {
        v35 = 0;
      }

      *(v31 + 58) = v35;
      sub_297E4DFAC(4, a1, 6, 5u, "phDnldEseNfc_GetNewNode");
      v36 = a1 + 171;
      if (!v30)
      {
        goto LABEL_73;
      }
    }

    else
    {
      v68[v23] = phOsalNfc_GetMemory_Typed();
      phOsalNfc_SetMemory();
      v42 = v68[v23];
      *(v42 + 288) = 0;
      *(v42 + 296) = 0;
      v30 = v68[v23];
      *(v30 + 296) = 0;
      v36 = a1 + 171;
      *(a1 + v23 + 58) = v21 - 2;
      sub_297E4DFAC(4, a1, 6, 5u, "phDnldEseNfc_GetNewNode");
    }

    phOsalNfc_MemCopy();
    *(v30 + 288) = v21;
    goto LABEL_74;
  }

  if (v14 != 3)
  {
    if (v14 == 2)
    {
      v15 = *(a1 + 194);
      if (v15 && v15 >= v11 && a1[96])
      {
        phOsalNfc_MemCopy();
        *(a1 + 194) = v11;
LABEL_117:
        *(a1 + 10) = 0;
        v60 = phTmlNfc_Read();
        v4 = 0;
        if (v60 != 13)
        {
          v61 = v60;
          sub_297E4E0B0(1, (a1 + 171), 6, 1u, "phDnldEseNfc_UpdateRsp: dnld packet Read Request Failure");
          sub_297E96818(*a1, 195);
          v4 = v61;
        }

        if (v14 == 2 && !v4)
        {
          *(v8 + 5996) = 5;
          sub_297E57FC4();
          v62 = 0;
          v63 = 0;
          do
          {
            v64 = *(&unk_2A18BDDC0 + 14 * v63 + 4);
            if (v62)
            {
              break;
            }

            v62 = 1;
            v63 = 1;
          }

          while (v64 != v8);
          if (v64 == v8 && !*(v12 + 1896) && !sub_297E56AFC(*(v8 + 6528)))
          {
            sub_297F0FCA0(v8);
          }

          v4 = 0;
        }

        goto LABEL_39;
      }

      v4 = 1;
LABEL_39:
      sub_297E4DFAC(4, a1, 6, 5u, "phDnldEseNfc_UpdateRsp");
      goto LABEL_4;
    }

    v16 = "phDnldEseNfc_UpdateRsp:Unknown Resp passed, while receive!!";
    goto LABEL_36;
  }

  v19 = v13 & 0x1F;
  if (v19 == 3)
  {
    sub_297F112BC(a1, *(v10 + 3));
    goto LABEL_38;
  }

  if (v19 != 2)
  {
    if (!v19)
    {
      sub_297F10660(a1, *(v10 + 3));
      goto LABEL_117;
    }

    v16 = "phDnldEseNfc_UpdateRsp:Invalid opcode notification received!!";
    goto LABEL_36;
  }

  sub_297E5A304(*(a1 + 342), a1[6]);
  *(a1 + 16) = 0;
  sub_297E5A304(*(a1 + 342), a1[7]);
  *(a1 + 17) = 0;
  *(v8 + 5980) = 0;
  *(v8 + 5972) = 0;
  sub_297E4E0B0(1, (a1 + 171), 6, 2u, "phDnldEseNfc_UpdateRsp:eSE Removed Notification");
  sub_297E96818(*a1, 214);
  v37 = a1[85];
  if (v37)
  {
    v38 = *(*(a2 + 8) + 3);
    v39 = 255;
    if (v38 < 0x10 || (v38 & 0xB0) == 0x20 || (v38 >> 4) - 6 >= 0xFFFFFFFE)
    {
      v40 = *(*(a2 + 8) + 3) > 0xFu;
      v41 = (v38 & 0xF) - 13 < 0xFFFFFFF4;
      v39 = v40 && v41 ? 255 : *(*(a2 + 8) + 3);
      if (!v40 || !v41)
      {
        LOBYTE(v38) = 0;
      }
    }

    LODWORD(v71[0]) = v39;
    BYTE4(v71[0]) = v38;
    v37(*a1, a1[86], 16, a1[1], v71, 0);
    v4 = 214;
    sub_297E8828C(a1, 214, a2);
  }

  else
  {
    sub_297E4E0B0(1, (a1 + 171), 6, 2u, "phDnldEseNfc_UpdateRsp: Dropping SE Removed Notification as no callback registered");
    v4 = 214;
  }

LABEL_4:
  sub_297E4DFAC(4, a1, 6, 5u, "phDnldNfc_DnldEseValidateRxdPkt");
  return v4;
}

uint64_t sub_297F12210(uint64_t a1, uint64_t a2)
{
  sub_297E4E1B4(3, a1, 6, 5u, "phDnldNfc_RecvDnldEsePkt");
  if (!a1)
  {
    goto LABEL_6;
  }

  v4 = 0;
  v5 = 0;
  do
  {
    v6 = *(&unk_2A18BDDC0 + 14 * v5 + 12);
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
    goto LABEL_6;
  }

  v8 = *(a1 + 8496);
  if (!v8)
  {
    goto LABEL_6;
  }

  if (!a2)
  {
    goto LABEL_6;
  }

  v9 = *(v8 + 6632);
  if (!v9 || *a2)
  {
    goto LABEL_6;
  }

  v10 = *(a2 + 8);
  if (*(a1 + 8438) || v10 != a1 + 4288 + *(a1 + 8438))
  {
    v11 = *(v9 + 42);
    if (v10 != v9 + v11 + 1075)
    {
      goto LABEL_6;
    }
  }

  else
  {
    phOsalNfc_MemCopy();
    LOWORD(v11) = *(v9 + 42);
  }

  v12 = *(a2 + 16) + v11;
  *(v9 + 42) = v12;
  if (v12 <= 1u)
  {
    *(v9 + 40) = 2 - v12;
    if (phTmlNfc_Read() != 13)
    {
      sub_297E96818(*v9, 195);
    }

    goto LABEL_6;
  }

  v13 = *(v9 + 1075);
  v14 = *(v9 + 1076) | ((v13 & 0x1F) << 8);
  v15 = v14 + 4;
  *(v9 + 40) = (*(v9 + 1076) | ((v13 & 0x1F) << 8)) + 4;
  if (v14 > 0x120)
  {
    sub_297E4E0B0(1, v9 + 1368, 6, 1u, "phDnldNfc_RecvDnldEsePkt: Invalid length; Received size greater than maximum download frame size!!");
    goto LABEL_27;
  }

  if (v15 == v12)
  {
    *(a2 + 8) = v9 + 1075;
    *(a2 + 16) = v12;
    *(v9 + 40) = 0;
    v16 = sub_297F1155C(v9, a2);
    if (!v16)
    {
      goto LABEL_6;
    }

    goto LABEL_23;
  }

  if (v15 <= v12)
  {
    sub_297E4E0B0(1, v9 + 1368, 6, 1u, "phDnldNfc_RecvDnldEsePkt:Critical failure in Download Ese mode!!");
    goto LABEL_6;
  }

  *(v9 + 40) = v15 - v12;
  v24 = phTmlNfc_Read();
  if (v24 != 13)
  {
    v16 = v24;
    sub_297E96818(*v9, 195);
    if (v16)
    {
LABEL_23:
      if (v16 == 13)
      {
        goto LABEL_6;
      }

      if (v16 != 255)
      {
        v17 = 0;
LABEL_28:
        v18 = 0;
        v19 = 0;
        do
        {
          v20 = *(&unk_2A18BDDC0 + 14 * v19 + 8);
          if (v18)
          {
            break;
          }

          v18 = 1;
          v19 = 1;
        }

        while (v20 != v9);
        if (v20 == v9 && *v9)
        {
          phTmlNfc_ReadAbort();
          if (v17)
          {
            phTmlNfc_FlushTxRxBuffers();
          }

          *(v9 + 40) = 0;
          if (phTmlNfc_Read() != 13)
          {
            sub_297E4E0B0(1, a1 + 8492, 6, 1u, "phDnldNfc_RecvDnldEsePkt: Read Request Failure");
            sub_297E96818(*(a1 + 48), 195);
          }

          *a2 = v16;
          *(v8 + 5996) = 5;
          sub_297E57FC4();
          v21 = 0;
          v22 = 0;
          do
          {
            v23 = *(&unk_2A18BDDC0 + 14 * v22 + 4);
            if (v21)
            {
              break;
            }

            v21 = 1;
            v22 = 1;
          }

          while (v23 != v8);
          if (v23 == v8 && !*(v8 + 5992) && !sub_297E56AFC(*(v8 + 6528)))
          {
            sub_297F0FCA0(v8);
          }
        }

        goto LABEL_6;
      }

LABEL_27:
      v17 = 1;
      sub_297E4E880(1, a1 + 8492, 6, 2u, "phDnldNfc_RecvDnldEsePkt:corrupted packet rxd and dropped", *(a2 + 8), *(a2 + 16));
      LOWORD(v16) = 255;
      goto LABEL_28;
    }
  }

LABEL_6:

  return sub_297E4DFAC(3, a1, 6, 5u, "phDnldNfc_RecvDnldEsePkt");
}

uint64_t sub_297F125DC(uint64_t a1, uint64_t a2)
{
  sub_297E4E1B4(4, a2, 6, 5u, "phDnldEseNfc_CrdtTimeOutCb");
  if (!a2)
  {
    goto LABEL_6;
  }

  v4 = 0;
  v5 = 0;
  do
  {
    v6 = *(&unk_2A18BDDC0 + 14 * v5 + 8);
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
    v7 = "phDnldEseNfc_CrdtTimeOutCb:Invalid or NULL pDnldEseCoreCtx ";
LABEL_7:
    sub_297E4E0B0(4, a2, 6, 1u, v7);
    goto LABEL_8;
  }

  if (*(a2 + 56) == a1)
  {
    v9 = *(a2 + 1376);
    sub_297E5A304(*(a2 + 1368), a1);
    *(a2 + 17) = 0;
    if (!v9)
    {
      goto LABEL_17;
    }

    v10 = 0;
    v11 = 0;
    do
    {
      v12 = *(&unk_2A18BDDC0 + 14 * v11 + 4);
      if (v10)
      {
        break;
      }

      v10 = 1;
      v11 = 1;
    }

    while (v12 != v9);
    if (v12 != v9)
    {
LABEL_17:
      v7 = "phDnldEseNfc_CrdtTimeOutCb:Invalid or NULL NCI context ";
      goto LABEL_7;
    }

    *(v9 + 5996) = 5;
    if (*(a2 + 29))
    {
      sub_297E57FC4();
    }

    else
    {
      sub_297E57FC4();
      v13 = 0;
      v14 = 0;
      do
      {
        v15 = *(&unk_2A18BDDC0 + 14 * v14 + 4);
        if (v13)
        {
          break;
        }

        v13 = 1;
        v14 = 1;
      }

      while (v15 != v9);
      if (v15 == v9 && !*(v9 + 5992) && !sub_297E56AFC(*(v9 + 6528)))
      {
        sub_297F0FCA0(v9);
      }
    }
  }

LABEL_8:

  return sub_297E4DFAC(4, a2, 6, 5u, "phDnldEseNfc_CrdtTimeOutCb");
}

uint64_t sub_297F12788(uint64_t a1, int *a2)
{
  sub_297E4E1B4(2, a1, 3, 5u, "phDnldNfc_BuildDnldEsePkt");
  if (!a1 || ((v4 = *(a1 + 6624), (v5 = *(a1 + 6632)) != 0) ? (v6 = v4 == 0) : (v6 = 1), v6))
  {
    v7 = 1;
    v8 = 2;
    v9 = a1;
    goto LABEL_8;
  }

  phOsalNfc_SetMemory();
  *(v5 + 382) = 0;
  if (!a2[4] || !*(a2 + 1))
  {
    v11 = *a2;
    if (*a2 == 37)
    {
      goto LABEL_17;
    }

    v7 = 1;
    v9 = v5 + 1368;
    v8 = 1;
LABEL_8:
    sub_297E4E0B0(v8, v9, 6, 1u, "phDnldNfc_BuildDnldEsePkt:Invalid Input Parameter!!");
    goto LABEL_9;
  }

  v11 = *a2;
  if ((*a2 - 36) < 2)
  {
LABEL_17:
    *(v5 + 386) = v11;
    if (*a2 != 37)
    {
      phOsalNfc_MemCopy();
    }

    v13 = a2[4];
    *(v5 + 385) = v13 + 1;
    *(v5 + 384) = ((v13 + 1) >> 8) & 0x1F | 0x80;
    v14 = v13 + 3;
LABEL_20:
    *(v5 + 382) = v14;
    v15 = sub_297E50CEC(*v5, (v5 + 384), v14);
    v16 = *(v5 + 382);
    *(v5 + 384 + v16) = __rev16(v15);
    *(v5 + 382) = v16 + 2;
    sub_297E4E0B0(1, v5 + 1368, 6, 4u, "phDnldNfc_BuildDnldEsePkt: Frame created successfully");
    v7 = 0;
    goto LABEL_9;
  }

  if (v11)
  {
    if (v11 != 34)
    {
      v12 = "phDnldNfc_BuildDnldEsePkt:Invalid Input Parameter!!";
LABEL_29:
      sub_297E4E0B0(1, v5 + 1368, 6, 1u, v12);
      v7 = 255;
      goto LABEL_9;
    }

    goto LABEL_17;
  }

  if (*(v5 + 29))
  {
    *(v5 + 386) = 0;
    *(v5 + 382) = 1;
    if (*(v5 + 380))
    {
      v17 = *(v5 + 376);
      if (v17 <= 0xFE)
      {
        v18 = *(a2 + 1);
        v30 = *a2;
        v31 = v18;
        v32 = *(a2 + 2);
        v19 = sub_297F12B40(v5, &v30, v17, 1, 1);
        *(v5 + 380) = 0;
LABEL_37:
        if (v19)
        {
          v7 = 1;
          goto LABEL_9;
        }

        v28 = *(v5 + 382);
        *(v5 + 385) = v28;
        *(v5 + 384) = HIBYTE(v28) & 0x1F | 0x80;
        v14 = v28 + 2;
        goto LABEL_20;
      }

      v26 = *(a2 + 1);
      v30 = *a2;
      v31 = v26;
      v32 = *(a2 + 2);
      v23 = v5;
      v21 = 254;
      v24 = 0;
      v25 = 1;
    }

    else
    {
      v21 = a2[4];
      *(v5 + 376) = v21;
      if (v21 > 0xFD)
      {
        v27 = *(a2 + 1);
        v30 = *a2;
        v31 = v27;
        v32 = *(a2 + 2);
        v19 = sub_297F12B40(v5, &v30, 253, 0, 0);
        *(v5 + 380) = 1;
        goto LABEL_37;
      }

      v22 = *(a2 + 1);
      v30 = *a2;
      v31 = v22;
      v32 = *(a2 + 2);
      v23 = v5;
      v24 = 1;
      v25 = 0;
    }

    v19 = sub_297F12B40(v23, &v30, v21, v24, v25);
    goto LABEL_37;
  }

  v20 = *(v5 + 56);
  if (!v20 || v20 == 0xFFFFFFFFFFFFLL)
  {
    v12 = "phDnldNfc_BuildDnldEsePkt : Invalid Download Ese Credit Timer ID";
    goto LABEL_29;
  }

  *(v5 + 36) = 250;
  *(v5 + 17) = 1;
  sub_297E5A304(*(v5 + 1368), v20);
  if (phOsalNfc_Timer_Start())
  {
    sub_297E4E0B0(1, v5 + 1368, 6, 1u, "phDnldNfc_BuildDnldEsePkt : Credit Timer Start failed!!!");
    v7 = 255;
  }

  else
  {
    v7 = 13;
  }

  v29 = *(v4 + 64);
  if (v29 && v29 != 0xFFFFFFFFFFFFLL && !*(v4 + 80))
  {
    if (!phOsalNfc_Timer_Start())
    {
      *(v4 + 80) = 1;
      goto LABEL_9;
    }

    v12 = "phNciCoreMuxNfc_eMuxEvtDnldTxCb : Failed to create start timer";
    goto LABEL_29;
  }

LABEL_9:
  sub_297E4DFAC(2, a1, 3, 5u, "phDnldNfc_BuildDnldEsePkt");
  return v7;
}

uint64_t sub_297F12B40(uint64_t a1, uint64_t a2, uint64_t a3, char a4, int a5)
{
  v7 = a3;
  v12 = -1;
  sub_297E4E1B4(4, a1, 6, 5u, "phDnldNfc_BuildDnldEseHciPkt");
  if (v7)
  {
    phOsalNfc_SetMemory();
    v9 = sub_297F10D04(a1, *(a1 + 788), &v12);
    if (v9 || v12 == 255)
    {
      sub_297E4E0B0(4, a1, 6, 1u, "phDnldNfc_BuildDnldEseHciPkt:Invalid Pipe Id");
    }

    else
    {
      *(a1 + 792) = v12 | (a4 << 7);
      if (a5)
      {
        v10 = 1;
      }

      else
      {
        *(a1 + 793) = 80;
        v10 = 2;
      }

      phOsalNfc_MemCopy();
      phOsalNfc_MemCopy();
      v9 = 0;
      *(a1 + 376) -= v7;
      *(a1 + 382) += v10 + v7;
    }
  }

  else
  {
    v9 = 1;
  }

  sub_297E4DFAC(4, a1, 6, 5u, "phDnldNfc_BuildDnldEseHciPkt");
  return v9;
}

uint64_t sub_297F12CB0(uint64_t a1)
{
  sub_297E4E1B4(4, a1, 6, 5u, "phDnldEseNfc_CoreDeInit");
  if (a1)
  {
    sub_297E5B294(*(a1 + 1376), 5u);
    v2 = *(a1 + 48);
    if (v2 && v2 != 0xFFFFFFFFFFFFLL)
    {
      phOsalNfc_Timer_Stop();
      phOsalNfc_Timer_Delete();
      *(a1 + 48) = 0xFFFFFFFFFFFFLL;
    }

    v3 = *(a1 + 56);
    if (v3 && v3 != 0xFFFFFFFFFFFFLL)
    {
      phOsalNfc_Timer_Stop();
      phOsalNfc_Timer_Delete();
      *(a1 + 56) = 0xFFFFFFFFFFFFLL;
    }

    sub_297E8FB48(*(a1 + 1368));
    v4 = 0;
  }

  else
  {
    v4 = 1;
  }

  sub_297E4DFAC(4, 0, 6, 5u, "phDnldEseNfc_CoreDeInit");
  return v4;
}