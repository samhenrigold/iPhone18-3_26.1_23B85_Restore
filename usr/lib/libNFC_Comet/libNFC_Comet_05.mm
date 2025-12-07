uint64_t sub_297E92FE8(uint64_t a1, uint64_t a2)
{
  sub_297E4E1B4(2, a1, 3, 5u, "phNciNfc_PrintTechNfcBSpcfcParamsDescription");
  sub_297E4E0B0(2, a1, 3, 4u, "NFC B POLL Techn Specific Params - END");
  sub_297E50DB0(2, a1, 3, 4u, "SensB Resp Length");
  if (*(a2 + 62))
  {
    sub_297E4E880(2, a1, 3, 4u, "SensB Response:", a2 + 63, *(a2 + 62));
  }

  sub_297E4E0B0(2, a1, 3, 4u, "NFC B POLL Techn Specific Params - END");

  return sub_297E4DFAC(2, a1, 3, 5u, "phNciNfc_PrintTechNfcBSpcfcParamsDescription");
}

uint64_t sub_297E930D0(uint64_t a1, uint64_t a2)
{
  sub_297E4E1B4(2, a1, 3, 5u, "phNciNfc_PrintTechNfcALstnSpcfcParams");
  if (a2)
  {
    sub_297E4E0B0(2, a1, 3, 4u, "NFC A LISTEN Techn Specific Params - START");
    sub_297E4E0B0(2, a1, 3, 4u, "No Dbg Info for this Remote Device Type");
    sub_297E4E0B0(2, a1, 3, 4u, "NFC A LISTEN Techn Specific Params - END");
  }

  return sub_297E4DFAC(2, a1, 3, 5u, "phNciNfc_PrintTechNfcALstnSpcfcParams");
}

uint64_t sub_297E93190(uint64_t a1, uint64_t a2)
{
  sub_297E4E1B4(2, a1, 3, 5u, "phNciNfc_PrintTechNfcFLstnSpcfcParams");
  if (a2)
  {
    sub_297E4E0B0(2, a1, 3, 4u, "NFC F LISTEN Techn Specific Params - START");
    sub_297E4E0B0(2, a1, 3, 4u, "No Dbg Info added for this Remote Device Type");
    sub_297E4E0B0(2, a1, 3, 4u, "NFC F LISTEN Techn Specific Params - END");
  }

  return sub_297E4DFAC(2, a1, 3, 5u, "phNciNfc_PrintTechNfcFLstnSpcfcParams");
}

uint64_t sub_297E93250(uint64_t a1, int a2)
{
  sub_297E4E1B4(2, a1, 3, 5u, "phNciNfc_PrintNfceeProtocolDescription");
  if (a2 > 1)
  {
    if (a2 != 2)
    {
      if (a2 == 3)
      {
        v4 = "NFCEE Interface/Protocol: NFCEE APDU";
        v5 = a1;
        goto LABEL_11;
      }

      goto LABEL_8;
    }

    v4 = "NFCEE Interface/Protocol: NFCEE APDU";
    v5 = a1;
  }

  else
  {
    if (a2)
    {
      if (a2 == 1)
      {
        v4 = "NFCEE Interface/Protocol: NFCEE APDU";
        v5 = a1;
        goto LABEL_11;
      }

LABEL_8:
      v4 = "NFCEE Interface/Protocol: UNKNOWN";
      v5 = a1;
      goto LABEL_11;
    }

    v4 = "NFCEE Interface/Protocol: NFCEE APDU";
    v5 = a1;
  }

LABEL_11:
  sub_297E50DB0(2, v5, 3, 4u, v4);

  return sub_297E4DFAC(2, a1, 3, 5u, "phNciNfc_PrintNfceeProtocolDescription");
}

uint64_t sub_297E9337C(uint64_t a1, uint64_t a2)
{
  sub_297E4E1B4(2, a1, 3, 5u, "phNciNfc_PrintfNfceeDiscNtfDescription");
  if (a2)
  {
    sub_297E4E0B0(2, a1, 3, 4u, "**********************NFCEE Discovery Notification*************************");
    sub_297E50DB0(2, a1, 3, 4u, "Nfcee Discovery Id");
    v4 = *(a2 + 4);
    if (v4 > 2)
    {
      v5 = "Nfcee status INVALID";
    }

    else
    {
      v5 = off_29EE86840[v4];
    }

    sub_297E4E0B0(2, a1, 3, 4u, v5);
    sub_297E50DB0(2, a1, 3, 4u, "Number of supported protocols are");
    if (*(a2 + 8))
    {
      sub_297E4E0B0(2, a1, 3, 4u, "Supported protocols are\n");
      if (*(a2 + 8))
      {
        v6 = 0;
        do
        {
          sub_297E93250(a1, *(a2 + 9 + v6++));
        }

        while (v6 < *(a2 + 8));
      }
    }

    sub_297E50DB0(2, a1, 3, 4u, "Number of TLVs are");
  }

  return sub_297E4DFAC(2, a1, 3, 5u, "phNciNfc_PrintfNfceeDiscNtfDescription");
}

uint64_t sub_297E934F4(uint64_t a1, uint64_t a2)
{
  v12 = *MEMORY[0x29EDCA608];
  sub_297E4E1B4(2, a1, 3, 5u, "phNciNfc_PrintRfDevActNtfDescription");
  if (a2)
  {
    sub_297E4E0B0(2, a1, 3, 4u, "*************************Activation Notification*************************");
    sub_297E50DB0(2, a1, 3, 4u, "Discovery Id");
    sub_297E924CC(a1, *(a2 + 12));
    sub_297E92678(a1, *(a2 + 16));
    sub_297E928CC(a1, *(a2 + 20));
    sub_297E50DB0(2, a1, 3, 4u, "Max Packet Size");
    sub_297E50DB0(2, a1, 3, 4u, "Initial Credits");
    sub_297E50DB0(2, a1, 3, 4u, "RF Techn specific params length ");
    v4 = *(a2 + 20);
    if (v4 <= 111)
    {
      if (v4 <= 0xC)
      {
        if (((1 << v4) & 0x1C09) != 0)
        {
          sub_297E92C30(a1, a2);
LABEL_24:
          sub_297E4E0B0(2, a1, 3, 4u, "**************************************************************************");
          return sub_297E4DFAC(2, a1, 3, 5u, "phNciNfc_PrintRfDevActNtfDescription");
        }

        if (((1 << v4) & 0x24) != 0)
        {
          sub_297E92E1C(a1, a2);
          goto LABEL_24;
        }

        if (v4 == 1)
        {
          v6 = *(a2 + 84);
          v7 = *(a2 + 116);
          v10[4] = *(a2 + 100);
          v11[0] = v7;
          *(v11 + 14) = *(a2 + 130);
          v8 = *(a2 + 52);
          v10[0] = *(a2 + 36);
          v10[1] = v8;
          v10[2] = *(a2 + 68);
          v10[3] = v6;
          sub_297E92FE8(a1, v10);
          goto LABEL_24;
        }
      }

      goto LABEL_26;
    }

    if (v4 <= 128)
    {
      if (v4 <= 114)
      {
        goto LABEL_16;
      }

      if (v4 != 128)
      {
LABEL_26:
        v5 = "Invalid Rf Techn and mode";
        goto LABEL_17;
      }

LABEL_21:
      sub_297E930D0(a1, a2);
      goto LABEL_24;
    }

    if (v4 > 130)
    {
      if (v4 == 131)
      {
        goto LABEL_21;
      }

      if (v4 != 133)
      {
        goto LABEL_26;
      }
    }

    else if (v4 == 129)
    {
LABEL_16:
      v5 = "No Debugging info provided for Techn specific params";
LABEL_17:
      sub_297E4E0B0(2, a1, 3, 4u, v5);
      goto LABEL_24;
    }

    sub_297E93190(a1, a2);
    goto LABEL_24;
  }

  return sub_297E4DFAC(2, a1, 3, 5u, "phNciNfc_PrintRfDevActNtfDescription");
}

uint64_t sub_297E937A8(uint64_t a1)
{
  v9 = 0u;
  v10 = 0u;
  v7 = 0;
  v8 = 0;
  v6 = 0;
  v5 = 0u;
  memset(v4, 0, sizeof(v4));
  sub_297E4E1B4(2, a1, 3, 5u, "phNciNfc_InitReset");
  if (a1)
  {
    if (*(a1 + 41) != 1)
    {
      BYTE5(v8) = 2;
      v7 = 3;
      LODWORD(v8) = 0;
      sub_297E59AEC(a1 + 936, &v7, sub_297E95BC8, a1);
      BYTE5(v8) = 2;
      v7 = 0x100000003;
      LODWORD(v8) = 33;
      sub_297E59AEC(a1 + 936, &v7, sub_297E70800, a1);
      BYTE5(v8) = 2;
      v7 = 0x100000003;
      LODWORD(v8) = 40;
      sub_297E59AEC(a1 + 936, &v7, sub_297E708A4, a1);
      BYTE5(v8) = 2;
      v7 = 0x100000003;
      LODWORD(v8) = 35;
      sub_297E59AEC(a1 + 936, &v7, sub_297E70948, a1);
      BYTE5(v8) = 2;
      v7 = 0x100000003;
      LODWORD(v8) = 44;
      sub_297E59AEC(a1 + 936, &v7, sub_297E70A38, a1);
      BYTE5(v8) = 2;
      v7 = 0x100000003;
      LODWORD(v8) = 36;
      sub_297E59AEC(a1 + 936, &v7, sub_297E70ADC, a1);
      BYTE5(v8) = 2;
      v7 = 0x100000003;
      LODWORD(v8) = 50;
      sub_297E59AEC(a1 + 936, &v7, sub_297E6F4F4, a1);
      BYTE5(v8) = 2;
      v7 = 3;
      LODWORD(v8) = 7;
      sub_297E59AEC(a1 + 936, &v7, sub_297E959D4, a1);
      BYTE5(v8) = 2;
      v7 = 0xF00000003;
      LODWORD(v8) = 50;
      sub_297E59AEC(a1 + 936, &v7, sub_297E50184, a1);
      BYTE5(v8) = 2;
      v7 = 0xF00000003;
      LODWORD(v8) = 3;
      sub_297E59AEC(a1 + 936, &v7, sub_297E71AC8, a1);
      BYTE5(v8) = 2;
      v7 = 0xF00000003;
      LODWORD(v8) = 58;
      sub_297E59AEC(a1 + 936, &v7, sub_297E70720, a1);
      BYTE5(v8) = 2;
      v7 = 0xF00000003;
      LODWORD(v8) = 12;
      sub_297E59AEC(a1 + 936, &v7, sub_297E70514, a1);
      BYTE5(v8) = 2;
      v7 = 0xF00000003;
      LODWORD(v8) = 16;
      sub_297E59AEC(a1 + 936, &v7, sub_297E7060C, a1);
    }

    phOsalNfc_SetMemory();
    phOsalNfc_SetMemory();
    *&v9 = 1;
    DWORD2(v9) = 0;
    *&v10 = a1 + 36;
    DWORD2(v10) = 1;
    BYTE14(v5) = 0;
    phOsalNfc_MemCopy();
    v2 = sub_297E57CC8(a1, 2, v4, sub_297E5E830, a1);
  }

  else
  {
    v2 = 1;
  }

  sub_297E4DFAC(2, a1, 3, 5u, "phNciNfc_InitReset");
  return v2;
}

uint64_t sub_297E93B68(uint64_t a1, int a2)
{
  sub_297E4E1B4(2, a1, 3, 5u, "phNciNfc_ProcessResetRsp");
  if (a1)
  {
    if (a2 == 44 || *(a1 + 3808) != 3 || (sub_297E91834(a1, *(a1 + 3800)), v4 = *(a1 + 3800), *v4))
    {
      v5 = 255;
    }

    else
    {
      if (*(a1 + 6282) == 1)
      {
        if (*(a1 + 6283))
        {
          v5 = 0;
        }

        else
        {
          phOsalNfc_SetMemory();
          v5 = phTmlNfc_IoCtl();
          *(a1 + 6281) = *(a1 + 6283);
          v4 = *(a1 + 3800);
        }

        *(a1 + 6282) = 0;
      }

      else
      {
        v5 = 0;
      }

      *(a1 + 6280) = *(a1 + 6281);
      *(a1 + 28) = v4[1];
      v7 = v4[2];
      v8 = v7 != 0;
      if (v7)
      {
        v9 = "phNciNfc_ProcessResetRsp:Nfcc reset to 'phNciNfc_ResetType_ResetConfig'";
      }

      else
      {
        v9 = "phNciNfc_ProcessResetRsp:Nfcc reset to 'phNciNfc_ResetType_KeepConfig'";
      }

      sub_297E4E0B0(1, a1 + 6524, 3, 4u, v9);
      *(a1 + 32) = v8;
    }
  }

  else
  {
    v5 = 1;
  }

  sub_297E4DFAC(2, a1, 3, 5u, "phNciNfc_ProcessResetRsp");
  return v5;
}

uint64_t sub_297E93CCC(uint64_t a1)
{
  v5 = 0u;
  v6 = 0u;
  sub_297E4E1B4(2, a1, 3, 5u, "phNciNfc_Init");
  phOsalNfc_SetMemory();
  *&v5 = 1;
  DWORD2(v5) = 1;
  *&v6 = a1 + 40;
  DWORD2(v6) = 0;
  v2 = sub_297E57BA8(a1 + 936, &v5, a1 + 3800, 2000, sub_297E5E830, a1);
  if (v2 == 111)
  {
    if (sub_297E5B294(a1, 6u))
    {
      v2 = 1;
    }

    else
    {
      v3 = phTmlNfc_WriteAbort();
      sub_297E5A3A8(*(a1 + 1568), 0);
      if (v3)
      {
        sub_297E4E0B0(1, a1 + 6524, 3, 1u, "NCI Inti command resend failed");
        v2 = 255;
      }

      else
      {
        v2 = sub_297E57BA8(a1 + 936, &v5, a1 + 3800, 2000, sub_297E5E830, a1);
      }
    }
  }

  sub_297E4DFAC(2, a1, 3, 5u, "phNciNfc_Init");
  return v2;
}

uint64_t sub_297E93E28(uint64_t a1, uint64_t a2)
{
  sub_297E4E1B4(2, a1, 3, 5u, "phNciNfc_ProcessInitRsp");
  if (!a1)
  {
    goto LABEL_40;
  }

  if (*(a1 + 3808) < 0x11u)
  {
    a2 = 255;
    goto LABEL_41;
  }

  v4 = *(a1 + 3800);
  if (*v4 == 241)
  {
    sub_297E4E0B0(1, a1 + 6524, 3, 4u, "phNciNfc_ProcessInitRsp:Suica/VAS express enabled/transaction in progress");
    a2 = 81;
LABEL_38:
    sub_297E91988(a1, a1, a2);
    goto LABEL_41;
  }

  if (*v4)
  {
    a2 = 255;
    goto LABEL_38;
  }

  *a1 = v4[1];
  *(a1 + 1) = v4[2];
  *(a1 + 2) = v4[3];
  *(a1 + 3) = v4[4];
  v5 = v4[5];
  *(a1 + 4) = v5;
  if (v5)
  {
    if (v5 > 8)
    {
      sub_297E4E0B0(1, a1 + 6524, 3, 1u, "Received number of RF interface support exceeded max number of RF interfaces");
      a2 = 255;
    }

    else
    {
      phOsalNfc_MemCopy();
    }

    v6 = *(a1 + 4) + 6;
    v4 = *(a1 + 3800);
  }

  else
  {
    v6 = 6;
  }

  *(a1 + 13) = v4[v6];
  v7 = v4[(v6 + 1)];
  *(a1 + 14) = v7;
  *(a1 + 14) = v7 | (v4[(v6 + 2)] << 8);
  v8 = v4[(v6 + 3)];
  *(a1 + 16) = v8;
  v9 = v4[(v6 + 4)];
  *(a1 + 18) = v9;
  *(a1 + 18) = v9 | (v4[(v6 + 5)] << 8);
  v10 = v4[(v6 + 6)];
  *(a1 + 20) = v10;
  if (v10)
  {
    v11 = v4[(v6 + 7)];
    *(a1 + 21) = v11;
    *(a1 + 22) = v4[(v6 + 8)];
    *(a1 + 23) = v4[(v6 + 9)];
    *(a1 + 24) = v4[(v6 + 10)];
  }

  else
  {
    v11 = *(a1 + 21);
  }

  *(a1 + 4834) = 0;
  *(a1 + 4826) = 0;
  v12 = v11 + 94;
  if ((v11 - 162) > 0x31)
  {
LABEL_25:
    if (v11 != 96)
    {
      if (v11 == 66)
      {
        *(a1 + 4835) = 1;
      }

      goto LABEL_37;
    }

LABEL_28:
    *(a1 + 4828) = 1;
    if ((v11 - 209) >= 3)
    {
      if (v11 == 96)
      {
        *(a1 + 4826) = 1;
      }
    }

    else
    {
      *(a1 + 4827) = 1;
    }

    goto LABEL_37;
  }

  if (((1 << v12) & 0x3C00000000000) != 0)
  {
    goto LABEL_28;
  }

  if (((1 << v12) & 7) == 0)
  {
    if (((1 << v12) & 0x1018000) != 0)
    {
      *(a1 + 4833) = 1;
      v13 = *(a1 + 3);
      if (v11 == 186)
      {
        if (v13 == 18)
        {
          *(a1 + 4830) = 1;
        }

        else
        {
          *(a1 + 4829) = 1;
        }
      }

      else if (v13 == 4)
      {
        *(a1 + 4832) = 1;
      }

      else if (v13 == 3)
      {
        *(a1 + 4831) = 1;
      }

      goto LABEL_37;
    }

    goto LABEL_25;
  }

  *(a1 + 4834) = 1;
LABEL_37:
  if (a2 == 255)
  {
    goto LABEL_38;
  }

  v14 = sub_297F00D78(a1 + 936, v8);
  sub_297E91988(a1, a1, v14);
  if (v14)
  {
LABEL_40:
    a2 = 1;
    goto LABEL_41;
  }

  if (*(a1 + 41))
  {
    a2 = 0;
  }

  else
  {
    a2 = sub_297E94FB0(a1);
    if (!a2)
    {
      v16 = *(a1 + 4696);
      if (v16 && v16 != 0xFFFFFFFFFFFFLL)
      {
        a2 = phOsalNfc_Timer_Delete();
        if (a2)
        {
          sub_297E4E0B0(1, a1 + 6524, 3, 1u, "NCI dwNtfTimerId Timer Delete failed!!");
        }

        *(a1 + 4696) = 0xFFFFFFFFFFFFLL;
      }

      v17 = phOsalNfc_Timer_Create();
      *(a1 + 4696) = v17;
      if (v17 != 0xFFFFFFFFFFFFLL && v17)
      {
        sub_297E4E0B0(1, a1 + 6524, 3, 4u, "Notification Timer Created Successfully");
      }

      else
      {
        sub_297E4E0B0(1, a1 + 6524, 3, 1u, "Notification Timer Create failed!!");
        a2 = 12;
      }
    }
  }

LABEL_41:
  sub_297E4DFAC(2, a1, 3, 5u, "phNciNfc_ProcessInitRsp");
  return a2;
}

uint64_t sub_297E94234(uint64_t a1, uint64_t a2)
{
  v5 = 0;
  v6 = 0;
  sub_297E4E1B4(2, a1, 3, 5u, "phNciNfc_CompleteInitSequence");
  if (a1)
  {
    *(a1 + 6688) = a1;
    *(a1 + 6704) = 0;
    *(a1 + 6696) = 0;
    if (*(a1 + 6282) == 1)
    {
      if (!*(a1 + 6283))
      {
        phOsalNfc_SetMemory();
        a2 = phTmlNfc_IoCtl();
        if (a2)
        {
          sub_297E4E0B0(1, a1 + 6524, 3, 4u, "phNciNfc_CompleteInitSequence: Crc Configuration Failed");
        }

        *(a1 + 6281) = *(a1 + 6283);
      }

      *(a1 + 6282) = 0;
    }

    if (*(a1 + 4809))
    {
      a2 = 44;
      *(a1 + 6730) = 44;
      *(a1 + 6696) = a1 + 6730;
      *(a1 + 6522) = 1;
      phTmlNfc_ReadAbort();
      phTmlNfc_FlushTxRxBuffers();
      *(a1 + 4809) = 0;
    }

    else if (a2 == 44)
    {
      *(a1 + 6522) = 1;
      if (*(a1 + 3393) == 1 && (sub_297E4E0B0(1, a1 + 6524, 3, 2u, "phNciNfc_CompleteInitSequence:Corrupted Pkt received from TML,Flush TML TxRx buffs and place hdr read req"), phTmlNfc_ReadAbort(), phTmlNfc_FlushTxRxBuffers(), sub_297E4EE00(a1 + 936, 0, 3) != 13))
      {
        sub_297E4E0B0(1, a1 + 6524, 3, 1u, "TML Read req during boot retry failed");
        a2 = 255;
      }

      else
      {
        a2 = 44;
      }
    }

    else
    {
      *(a1 + 6696) = 0;
    }

    v5 = 3;
    LODWORD(v6) = 7;
    sub_297F00C28(a1 + 936, &v5, sub_297E959D4);
    sub_297E5B994(a1, a2, a1 + 6688);
  }

  sub_297E4DFAC(2, a1, 3, 5u, "phNciNfc_CompleteInitSequence");
  return a2;
}

uint64_t sub_297E94444(uint64_t a1)
{
  v4 = 0u;
  v5 = 0u;
  sub_297E4E1B4(2, a1, 3, 5u, "phNciNfc_SendReset");
  v2 = 1;
  if (a1)
  {
    phOsalNfc_SetMemory();
    *&v4 = 1;
    DWORD2(v4) = 0;
    *&v5 = a1 + 36;
    DWORD2(v5) = 1;
    v2 = sub_297E57BA8(a1 + 936, &v4, a1 + 3800, 2000, sub_297E5E830, a1);
  }

  sub_297E4DFAC(2, a1, 3, 5u, "phNciNfc_SendReset");
  return v2;
}

uint64_t sub_297E94514(uint64_t a1, uint64_t a2)
{
  sub_297E4E1B4(2, a1, 3, 5u, "phNciNfc_GenericCompleteSequence");
  if (a1)
  {
    sub_297E5B994(a1, a2, 0);
  }

  sub_297E4DFAC(2, a1, 3, 5u, "phNciNfc_GenericCompleteSequence");
  return a2;
}

uint64_t sub_297E94588(uint64_t a1)
{
  v4 = 0u;
  v5 = 0u;
  sub_297E4E1B4(2, a1, 3, 5u, "phNciNfc_GetFwInterfaceVersionCmd");
  if (a1)
  {
    phOsalNfc_SetMemory();
    *&v4 = 0xF00000001;
    DWORD2(v4) = 25;
    *&v5 = *(a1 + 896);
    DWORD2(v5) = *(a1 + 904);
    v2 = sub_297E57BA8(a1 + 936, &v4, a1 + 3800, 2000, sub_297E5E830, a1);
  }

  else
  {
    v2 = 255;
  }

  sub_297E4DFAC(2, a1, 3, 5u, "phNciNfc_GetFwInterfaceVersionCmd");
  return v2;
}

uint64_t sub_297E94664(uint64_t a1, uint64_t a2)
{
  sub_297E4E1B4(2, a1, 3, 5u, "phNciNfc_GetFwInterfaceVersionRsp");
  if (a1 && !a2)
  {
    v4 = *(a1 + 3800);
    if (!v4)
    {
      goto LABEL_13;
    }

    v5 = *v4;
    if (v5 != 5 && v5 != 1)
    {
      if (!*v4 && *(a1 + 3808) == 3)
      {
        *(a1 + 4824) = v4[1];
        *(a1 + 4825) = v4[2];
        sub_297E4E0B0(1, a1 + 6524, 3, 4u, "Get FW interface version Successful");
        a2 = 0;
        goto LABEL_14;
      }

LABEL_13:
      sub_297E4E0B0(1, a1 + 6524, 3, 1u, "Get FW interface version failed!");
      *(a1 + 3808) = 0;
      a2 = 255;
      goto LABEL_14;
    }

    sub_297E4E0B0(1, a1 + 6524, 3, 4u, "Get FW interface version Rejected/Syntax error, Hence this is OLD FW");
    *(a1 + 3808) = 0;
    a2 = 128;
  }

LABEL_14:
  sub_297E4DFAC(2, a1, 3, 5u, "phNciNfc_GetFwInterfaceVersionRsp");
  return a2;
}

uint64_t sub_297E94784(uint64_t a1, uint64_t a2)
{
  sub_297E4E1B4(2, a1, 3, 5u, "phNciNfc_GetFwIntVerCompleteSequence");
  if (a1)
  {
    if (*(a1 + 896))
    {
      phOsalNfc_FreeMemory();
      *(a1 + 896) = 0;
      *(a1 + 904) = 0;
    }

    if (a2)
    {
      v4 = 0;
    }

    else
    {
      v4 = a1 + 4824;
    }

    sub_297E5B994(a1, a2, v4);
  }

  else
  {
    a2 = 255;
  }

  sub_297E4DFAC(2, a1, 3, 5u, "phNciNfc_GetFwIntVerCompleteSequence");
  return a2;
}

uint64_t sub_297E94824(uint64_t a1, uint64_t a2)
{
  sub_297E4E1B4(2, a1, 3, 5u, "phNciNfc_CompleteReleaseSequence");
  if (a1)
  {
    sub_297E5B994(a1, a2, 0);
    a2 = sub_297EBDFC0(a1);
  }

  sub_297E4DFAC(2, 0, 3, 5u, "phNciNfc_CompleteReleaseSequence");
  return a2;
}

uint64_t sub_297E948A4(uint64_t a1)
{
  v4 = 0u;
  v5 = 0u;
  sub_297E4E1B4(2, a1, 3, 5u, "phNciNfc_SendStandbyCmd");
  if (a1)
  {
    phOsalNfc_SetMemory();
    *&v4 = 0xF00000001;
    DWORD2(v4) = 0;
    *&v5 = *(a1 + 896);
    DWORD2(v5) = *(a1 + 904);
    v2 = sub_297E57BA8(a1 + 936, &v4, a1 + 3800, 2000, sub_297E94F1C, a1);
  }

  else
  {
    v2 = 255;
  }

  sub_297E4DFAC(2, a1, 3, 5u, "phNciNfc_SendStandbyCmd");
  return v2;
}

uint64_t sub_297E9497C(uint64_t a1, uint64_t a2)
{
  sub_297E4E1B4(2, a1, 3, 5u, "phNciNfc_CompleteStandbySequence");
  if (a1)
  {
    if (*(a1 + 896))
    {
      phOsalNfc_FreeMemory();
      *(a1 + 896) = 0;
      *(a1 + 904) = 0;
    }

    if (a2)
    {
      v4 = 1;
    }

    else
    {
      v4 = *(a1 + 3404);
    }

    *(a1 + 3400) = v4;
    sub_297E5B994(a1, a2, 0);
  }

  else
  {
    a2 = 255;
  }

  sub_297E4DFAC(2, a1, 3, 5u, "phNciNfc_CompleteStandbySequence");
  return a2;
}

uint64_t sub_297E94A24(uint64_t a1)
{
  v4 = 0u;
  v5 = 0u;
  sub_297E4E1B4(2, a1, 3, 5u, "phNciNfc_ConfigHsuBrCmd");
  if (a1)
  {
    phOsalNfc_SetMemory();
    *&v4 = 0xF00000001;
    DWORD2(v4) = 3;
    *&v5 = *(a1 + 896);
    DWORD2(v5) = *(a1 + 904);
    v2 = sub_297E57BA8(a1 + 936, &v4, a1 + 3800, 2000, sub_297E5E830, a1);
  }

  else
  {
    v2 = 255;
  }

  sub_297E4DFAC(2, a1, 3, 5u, "phNciNfc_ConfigHsuBrCmd");
  return v2;
}

uint64_t sub_297E94B00(uint64_t a1, uint64_t a2)
{
  sub_297E4E1B4(2, a1, 3, 5u, "phNciNfc_ConfigHsuBrSeqComp");
  if (a1)
  {
    if (*(a1 + 896))
    {
      phOsalNfc_FreeMemory();
      *(a1 + 896) = 0;
      *(a1 + 904) = 0;
    }

    *(a1 + 6730) = a2;
    sub_297E5B994(a1, 0, a1 + 6730);
  }

  else
  {
    a2 = 255;
  }

  sub_297E4DFAC(2, a1, 3, 5u, "phNciNfc_ConfigHsuBrSeqComp");
  return a2;
}

uint64_t sub_297E94B9C(uint64_t a1)
{
  v4 = 0u;
  v5 = 0u;
  sub_297E4E1B4(2, a1, 3, 5u, "phNciNfc_GetMultiTagInfoCmd");
  if (a1)
  {
    phOsalNfc_SetMemory();
    *&v4 = 0xF00000001;
    DWORD2(v4) = 60;
    *&v5 = 0;
    DWORD2(v5) = 0;
    v2 = sub_297E57BA8(a1 + 936, &v4, a1 + 3800, 2000, sub_297E5E830, a1);
  }

  else
  {
    v2 = 255;
  }

  sub_297E4DFAC(2, a1, 3, 5u, "phNciNfc_GetMultiTagInfoCmd");
  return v2;
}

uint64_t sub_297E94C70(uint64_t a1, uint64_t a2)
{
  sub_297E4E1B4(2, a1, 3, 5u, "phNciNfc_GetMultiTagInfoRsp");
  if (a1 && !a2)
  {
    v4 = *(a1 + 3800);
    if (v4 && !*v4)
    {
      sub_297E4E0B0(1, a1 + 6524, 3, 4u, "Get Multi tag Info Successful");
      a2 = 0;
    }

    else
    {
      sub_297E4E0B0(1, a1 + 6524, 3, 1u, "Get Multi tag Info failed!");
      *(a1 + 3808) = 0;
      a2 = 255;
    }
  }

  sub_297E4DFAC(2, a1, 3, 5u, "phNciNfc_GetMultiTagInfoRsp");
  return a2;
}

uint64_t sub_297E94D38(uint64_t a1, uint64_t a2)
{
  sub_297E4E1B4(2, a1, 3, 5u, "phNciNfc_GetMultiTagInfoSeqComp");
  v4 = 255;
  if (a1)
  {
    if (a2)
    {
      v5 = 255;
    }

    else
    {
      v5 = 0;
    }

    sub_297E5B994(a1, v5, a1 + 3800);
    v4 = a2;
  }

  sub_297E4DFAC(2, a1, 3, 5u, "phNciNfc_GetMultiTagInfoSeqComp");
  return v4;
}

uint64_t sub_297E94DC0(uint64_t a1)
{
  v4 = 0u;
  v5 = 0u;
  sub_297E4E1B4(2, a1, 3, 5u, "phNciNfc_ClearMultiTagListCmd");
  if (a1)
  {
    phOsalNfc_SetMemory();
    *&v4 = 0xF00000001;
    DWORD2(v4) = 57;
    *&v5 = 0;
    DWORD2(v5) = 0;
    v2 = sub_297E57BA8(a1 + 936, &v4, a1 + 3800, 2000, sub_297E5E830, a1);
  }

  else
  {
    v2 = 255;
  }

  sub_297E4DFAC(2, a1, 3, 5u, "phNciNfc_ClearMultiTagListCmd");
  return v2;
}

uint64_t sub_297E94E94(uint64_t a1, uint64_t a2)
{
  sub_297E4E1B4(2, a1, 3, 5u, "phNciNfc_ClearMultiTagListSeqComp");
  v4 = 255;
  if (a1)
  {
    if (a2)
    {
      v5 = 255;
    }

    else
    {
      v5 = 0;
    }

    sub_297E5B994(a1, v5, 0);
    v4 = a2;
  }

  sub_297E4DFAC(2, a1, 3, 5u, "phNciNfc_ClearMultiTagListSeqComp");
  return v4;
}

uint64_t sub_297E94F1C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  sub_297E4E1B4(2, a1, 3, 5u, "phNciNfc_SetPwrModeSequence");
  if (a1 && a2)
  {
    *(a1 + 3800) = *(a2 + 8);
    *(a1 + 3808) = *(a2 + 16);
  }

  v6 = sub_297E5783C(a1, a3);
  sub_297E4DFAC(2, a1, 3, 5u, "phNciNfc_SetPwrModeSequence");
  return v6;
}

uint64_t sub_297E94FB0(_BYTE *a1)
{
  v5 = 0;
  v6 = 0;
  sub_297E4E1B4(2, a1, 3, 5u, "phNciNfc_RegAllNtfs");
  if (a1)
  {
    LODWORD(v6) = 7;
    v5 = 0x100000003;
    v2 = sub_297E59AEC((a1 + 936), &v5, sub_297E52DA0, a1);
    if (!v2)
    {
      sub_297E4E0B0(1, (a1 + 6524), 3, 4u, "Registering for Rf-Nfcee Action Notification");
      LODWORD(v6) = 9;
      v5 = 0x100000003;
      v2 = sub_297E59AEC((a1 + 936), &v5, sub_297EBB630, a1);
      if (!v2)
      {
        LODWORD(v6) = 6;
        v5 = 0x100000003;
        v2 = sub_297E59AEC((a1 + 936), &v5, sub_297E95CC4, a1);
        if (!v2)
        {
          sub_297E4E0B0(1, (a1 + 6524), 3, 4u, "Registering for Interface Activated Notification");
          v5 = 0x100000003;
          LODWORD(v6) = 5;
          v2 = sub_297E59AEC((a1 + 936), &v5, sub_297E78C24, a1);
          if (!v2)
          {
            sub_297E4E0B0(1, (a1 + 6524), 3, 4u, "Registering for Discover Notification");
            v5 = 0x100000003;
            LODWORD(v6) = 3;
            v2 = sub_297E59AEC((a1 + 936), &v5, sub_297E781D0, a1);
            if (!v2)
            {
              sub_297E4E0B0(1, (a1 + 6524), 3, 4u, "Registering for Interface Error Notification");
              v5 = 3;
              LODWORD(v6) = 8;
              v2 = sub_297E59AEC((a1 + 936), &v5, sub_297E6F96C, a1);
              if (!v2)
              {
                sub_297E4E0B0(1, (a1 + 6524), 3, 4u, "Registering for Generic Error Notification");
                v5 = 3;
                LODWORD(v6) = 7;
                v2 = sub_297E59AEC((a1 + 936), &v5, sub_297E6E990, a1);
                if (!v2)
                {
                  sub_297E4E0B0(1, (a1 + 6524), 3, 4u, "Registering for relay attack detection/protection notification");
                  v5 = 0x100000003;
                  LODWORD(v6) = 45;
                  v2 = sub_297E59AEC((a1 + 936), &v5, sub_297E72F6C, a1);
                  if (!v2)
                  {
                    sub_297E4E0B0(1, (a1 + 6524), 3, 4u, "Registering for Rf Nfcee Discovery Request Notification");
                    LODWORD(v6) = 10;
                    v5 = 0x100000003;
                    v2 = sub_297E59AEC((a1 + 936), &v5, sub_297EBB888, a1);
                    if (!v2)
                    {
                      sub_297E4E0B0(1, (a1 + 6524), 3, 4u, "Registering for NFCEE Power off Notification");
                      LODWORD(v6) = 24;
                      v5 = 0xF00000003;
                      v2 = sub_297E59AEC((a1 + 936), &v5, sub_297E6F0C8, a1);
                      if (!v2)
                      {
                        sub_297E4E0B0(1, (a1 + 6524), 3, 4u, "Registering for Suica/VAS Express Mode Transaction Happened Notification");
                        LODWORD(v6) = 35;
                        v5 = 0xF00000003;
                        v2 = sub_297E59AEC((a1 + 936), &v5, sub_297E6F28C, a1);
                        if (!v2)
                        {
                          sub_297E4E0B0(1, (a1 + 6524), 3, 4u, "Registering for Suica Mode Started Notification");
                          LODWORD(v6) = 36;
                          v5 = 0xF00000003;
                          v2 = sub_297E59AEC((a1 + 936), &v5, sub_297E6F330, a1);
                          if (!v2)
                          {
                            sub_297E4E0B0(1, (a1 + 6524), 3, 4u, "phNciNfc_RegAllNtfs:Registering for System End of operation Notification for Secure Elements");
                            LODWORD(v6) = 32;
                            v5 = 0xF00000003;
                            v2 = sub_297E59AEC((a1 + 936), &v5, sub_297E6EEE8, a1);
                            if (!v2)
                            {
                              sub_297E4E0B0(1, (a1 + 6524), 3, 4u, "Registering for System L1 Debug notification");
                              v5 = 0xF00000003;
                              LODWORD(v6) = 53;
                              v2 = sub_297E59AEC((a1 + 936), &v5, sub_297E6F5BC, a1);
                              if (!v2)
                              {
                                sub_297E4E0B0(1, (a1 + 6524), 3, 4u, "Registering for System L2 Debug notification");
                                v5 = 0xF00000003;
                                LODWORD(v6) = 54;
                                v2 = sub_297E59AEC((a1 + 936), &v5, sub_297E6F690, a1);
                                if (!v2)
                                {
                                  sub_297E4E0B0(1, (a1 + 6524), 3, 4u, "Registering for Chip Scope Debug notification");
                                  v5 = 0xF00000003;
                                  LODWORD(v6) = 34;
                                  v2 = sub_297E59AEC((a1 + 936), &v5, sub_297E73090, a1);
                                  if (!v2)
                                  {
                                    if (a1[4834] != 1 && a1[4833] != 1 && a1[4828] != 1 || (sub_297E4E0B0(1, (a1 + 6524), 3, 4u, "Registering for Chip Scope Debug notification"), v5 = 0xF00000003, LODWORD(v6) = 55, v2 = sub_297E59AEC((a1 + 936), &v5, sub_297E73090, a1), !v2))
                                    {
                                      sub_297E4E0B0(1, (a1 + 6524), 3, 4u, "Registering for Test Swp Notification");
                                      LODWORD(v6) = 62;
                                      v5 = 0xF00000003;
                                      v2 = sub_297E59AEC((a1 + 936), &v5, sub_297E7A068, a1);
                                      if (!v2)
                                      {
                                        sub_297E4E0B0(1, (a1 + 6524), 3, 4u, "Registering for MFW Raw API RF validation test Notification");
                                        LODWORD(v6) = 51;
                                        v5 = 0xF00000003;
                                        v2 = sub_297E59AEC((a1 + 936), &v5, sub_297E731D4, a1);
                                        if (!v2)
                                        {
                                          sub_297E4E0B0(1, (a1 + 6524), 3, 4u, "Registering for MFW Raw API RD LM decoder test Notification");
                                          LODWORD(v6) = 52;
                                          v5 = 0xF00000003;
                                          v2 = sub_297E59AEC((a1 + 936), &v5, sub_297E732DC, a1);
                                          if (!v2)
                                          {
                                            sub_297E4E0B0(1, (a1 + 6524), 3, 4u, "phNciNfc_RegAllNtfs:Registering for Prop Reader Ntf message notification");
                                            LODWORD(v6) = 32;
                                            v5 = 0x100000003;
                                            v2 = sub_297E59AEC((a1 + 936), &v5, sub_297E70348, a1);
                                            if (!v2)
                                            {
                                              LODWORD(v6) = 34;
                                              v5 = 0x100000003;
                                              v2 = sub_297E59AEC((a1 + 936), &v5, sub_297EBBBC4, a1);
                                              if (!v2)
                                              {
                                                sub_297E4E0B0(1, (a1 + 6524), 3, 4u, "Registering for RSSI statistics Notification");
                                                LODWORD(v6) = 56;
                                                v5 = 0xF00000003;
                                                v2 = sub_297E59AEC((a1 + 936), &v5, sub_297E6FF30, a1);
                                                if (!v2)
                                                {
                                                  sub_297E4E0B0(1, (a1 + 6524), 3, 4u, "Registering for FW Debug Info Notification");
                                                  LODWORD(v6) = 4;
                                                  v5 = 0xF00000003;
                                                  v2 = sub_297E59AEC((a1 + 936), &v5, sub_297E71814, a1);
                                                  if (!v2)
                                                  {
                                                    sub_297E4E0B0(1, (a1 + 6524), 3, 4u, "Registering for HLM Debug Info Notification");
                                                    LODWORD(v6) = 31;
                                                    v5 = 0xF00000003;
                                                    v2 = sub_297E59AEC((a1 + 936), &v5, sub_297E71EB4, a1);
                                                    if (!v2)
                                                    {
                                                      sub_297E4E0B0(1, (a1 + 6524), 3, 4u, "Registering for WTX Notification");
                                                      LODWORD(v6) = 23;
                                                      v5 = 0xF00000003;
                                                      v2 = sub_297E59AEC((a1 + 936), &v5, sub_297E72970, a1);
                                                      if (!v2)
                                                      {
                                                        sub_297E4E0B0(1, (a1 + 6524), 3, 4u, "Registering for Tag removal detection Notification");
                                                        LODWORD(v6) = 28;
                                                        v5 = 0xF00000003;
                                                        v2 = sub_297E59AEC((a1 + 936), &v5, sub_297E72C60, a1);
                                                        if (!v2)
                                                        {
                                                          sub_297E4E0B0(1, (a1 + 6524), 3, 4u, "Registering for LPCD Debug Notification");
                                                          LODWORD(v6) = 38;
                                                          v5 = 0xF00000003;
                                                          v2 = sub_297E59AEC((a1 + 936), &v5, sub_297E72D0C, a1);
                                                          if (!v2)
                                                          {
                                                            sub_297E4E0B0(1, (a1 + 6524), 3, 4u, "Registering for Prop Vas CW Ntf message notification");
                                                            LODWORD(v6) = 41;
                                                            v5 = 0x100000003;
                                                            v2 = sub_297E59AEC((a1 + 936), &v5, sub_297E7044C, a1);
                                                            if (!v2)
                                                            {
                                                              sub_297E4E0B0(1, (a1 + 6524), 3, 4u, "phNciNfc_RegAllNtfs:Registering for LPCD Assist successful Exit Notification");
                                                              LODWORD(v6) = 48;
                                                              v5 = 0x100000003;
                                                              v2 = sub_297E59AEC((a1 + 936), &v5, sub_297E72DEC, a1);
                                                              if (!v2)
                                                              {
                                                                sub_297E4E0B0(1, (a1 + 6524), 3, 4u, "Registering for Get prohibit timer status Notification");
                                                                LODWORD(v6) = 13;
                                                                v5 = 0xF00000003;
                                                                v2 = sub_297E59AEC((a1 + 936), &v5, sub_297E710F8, a1);
                                                                if (!v2)
                                                                {
                                                                  LODWORD(v6) = 37;
                                                                  v5 = 0x100000003;
                                                                  v2 = sub_297E59AEC((a1 + 936), &v5, sub_297E70B80, a1);
                                                                  if (!v2)
                                                                  {
                                                                    sub_297E4E0B0(1, (a1 + 6524), 3, 4u, "Registering for Get power track data Notification");
                                                                    LODWORD(v6) = 46;
                                                                    v5 = 0xF00000003;
                                                                    v2 = sub_297E59AEC((a1 + 936), &v5, sub_297E7131C, a1);
                                                                  }
                                                                }
                                                              }
                                                            }
                                                          }
                                                        }
                                                      }
                                                    }
                                                  }
                                                }
                                              }
                                            }
                                          }
                                        }
                                      }
                                    }
                                  }
                                }
                              }
                            }
                          }
                        }
                      }
                    }
                  }
                }
              }
            }
          }
        }
      }
    }

    v3 = v2;
  }

  else
  {
    v3 = 1;
  }

  sub_297E4DFAC(2, a1, 3, 5u, "phNciNfc_RegAllNtfs");
  return v3;
}

uint64_t sub_297E959D4(uint64_t a1, uint64_t a2, int a3)
{
  memset(v13, 0, sizeof(v13));
  sub_297E4E1B4(2, a1, 3, 5u, "phNciNfc_InitGenErrorNtfCB");
  if (!a1)
  {
    sub_297E4E0B0(2, 0, 3, 4u, "phNciNfc_InitGenErrorNtfCB:Invalid Context Param..");
    v7 = 1;
    goto LABEL_12;
  }

  if (!a2 || (v6 = *(a2 + 8)) == 0 || a3 || !*(a2 + 16))
  {
    sub_297E4E0B0(1, a1 + 6524, 3, 4u, "phNciNfc_InitGenErrorNtfCB:Notification invalid..");
    goto LABEL_10;
  }

  if (*(a1 + 6284))
  {
    sub_297E6E83C(a1, 0, 33);
LABEL_8:
    v7 = 0;
    goto LABEL_12;
  }

  if (!*(a1 + 4809))
  {
    v10 = *v6;
    if (v10 == 237)
    {
      v11 = *(a1 + 440);
      if (v11)
      {
        v11(*(a1 + 432), 30, 0, 154);
      }

      goto LABEL_8;
    }

    *(a1 + 6492) = v10;
    v12 = *(a1 + 248);
    if (v12)
    {
      HIDWORD(v13[0]) = v10;
      v12(*(a1 + 240), 49, v13, 133);
      goto LABEL_8;
    }

    sub_297E50DB0(1, a1 + 6524, 3, 1u, "phNciNfc_InitGenErrorNtfCB - Unexpected Generic Error Ntf with Status");
LABEL_10:
    v7 = 255;
    goto LABEL_12;
  }

  if (*(a1 + 1928) != 1)
  {
    goto LABEL_8;
  }

  phOsalNfc_Timer_Stop();
  *(a1 + 6512) = 0;
  *(a1 + 1928) = 0;
  if (*(a1 + 3396))
  {
    v9 = &gphNfc_DebugInfo_Sec;
  }

  else
  {
    v9 = &gphNfc_DebugInfo_Prim;
  }

  v9[1] &= ~0x10u;
  phOsalNfc_Delay();
  v7 = sub_297E5E830(a1, 0, 44);
LABEL_12:
  sub_297E4DFAC(2, a1, 3, 5u, "phNciNfc_InitGenErrorNtfCB");
  return v7;
}

uint64_t sub_297E95BC8(uint64_t a1, uint64_t a2)
{
  v6 = 0;
  v7 = 0;
  v8 = 0;
  sub_297E4E1B4(2, a1, 3, 5u, "phNciNfc_ResetNtfCb");
  if (a1 && a2)
  {
    sub_297E4E0B0(1, a1 + 6524, 3, 4u, "Received RESET notification from NFCC");
    sub_297E5B294(a1, 6u);
    phTmlNfc_WriteAbort();
    sub_297E5A3A8(*(a1 + 1568), 0);
    if (*(a1 + 896))
    {
      phOsalNfc_FreeMemory();
      *(a1 + 896) = 0;
      *(a1 + 904) = 0;
    }

    v4 = *(a1 + 280);
    if (v4)
    {
      v6 = *(a2 + 8);
      LODWORD(v7) = *(a2 + 16);
      v4(*(a1 + 272), 4, &v6, 0);
    }
  }

  sub_297E4DFAC(2, a1, 3, 5u, "phNciNfc_ResetNtfCb");
  return 0;
}

uint64_t sub_297E95CC4(uint64_t a1, uint64_t a2, int a3)
{
  memset(v16, 0, sizeof(v16));
  sub_297E4E1B4(2, a1, 3, 5u, "phNciNfc_DeActvNtfCb");
  v6 = 1;
  if (a1 && a2)
  {
    v7 = *(a2 + 8);
    if (v7 && *v7 == 1 && !v7[1] && (!*(a1 + 784) || *(a1 + 6521) == 1))
    {
      if (!a3 && *(a2 + 16) == 2)
      {
        sub_297E4E0B0(1, a1 + 6524, 3, 2u, "Dropping Deactivate to sleep Ntf as Call back is not registered");
        v6 = 0;
        goto LABEL_53;
      }

LABEL_23:
      sub_297E4E0B0(1, a1 + 6524, 3, 1u, " Invalid Notification!!");
      v6 = 255;
      goto LABEL_53;
    }

    *(a1 + 3360) = 0;
    sub_297F08EEC(a1, 0);
    v8 = *(a2 + 8);
    if (!v8 || a3 || *(a2 + 16) != 2)
    {
      goto LABEL_23;
    }

    if (!*v8 && *(a1 + 6640) == 1)
    {
      sub_297E4E0B0(1, a1 + 6524, 3, 4u, "phNciNfc_DeActvNtfCb:RF DeActivate notification Dropped as there is Set Config or Discover Map command retry ongoing");
      goto LABEL_53;
    }

    sub_297E4E0B0(1, a1 + 6524, 3, 4u, "RF DeActivate notification Received!!");
    v9 = *(a2 + 8);
    if (v9[1] <= 3u)
    {
      HIDWORD(v16[0]) = v9[1];
    }

    v10 = *v9;
    if (*(a1 + 3424))
    {
      if (!*v9)
      {
        *(a1 + 4776) = 0;
        *(a1 + 6515) = 1;
        *(a1 + 6658) = 0;
        if (*(a1 + 6514) == 1)
        {
          sub_297E4E0B0(1, a1 + 6524, 3, 4u, "Dropping Deactivate Ntf to IdleMode as Restart Discovery is in progress..");
LABEL_52:
          *(a1 + 6514) = 0;
          goto LABEL_53;
        }

        if (!*(a1 + 816))
        {
          *(a1 + 6514) = 0;
          sub_297E4E0B0(1, a1 + 6524, 3, 4u, "Deactivate Ntf to IdleMode..");
          *(a1 + 3424) = 0;
          sub_297E5B554(a1);
          sub_297F00E88(a1 + 936);
          sub_297E96818(*(a1 + 6528), 121);
          LODWORD(v16[0]) = 0;
          goto LABEL_49;
        }

        sub_297E4E0B0(1, a1 + 6524, 3, 4u, "Rf Deactivate Ntf to IdleMode..");
        sub_297E96818(*(a1 + 6528), 121);
        LODWORD(v16[0]) = 0;
        goto LABEL_38;
      }
    }

    else if (!*v9)
    {
      if (!*(a1 + 784))
      {
        if (*(a1 + 800) || *(a1 + 864))
        {
          *(a1 + 6515) = 1;
          *(a1 + 6658) = 0;
          sub_297E4E0B0(1, a1 + 6524, 3, 4u, "Rf Deactivate Ntf to IdleMode..");
          sub_297E96818(*(a1 + 6528), 121);
          LODWORD(v16[0]) = 0;
          sub_297E5B554(a1);
          *(a1 + 784) = 0;
          *(a1 + 800) = 0;
          *(a1 + 864) = 0;
          phOsalNfc_Timer_Stop();
          *(a1 + 6512) = 0;
          sub_297E687D8(1, a1 + 6524, *(a1 + 4696), 3, 4u, "phNciNfc_DeActvNtfCb");
          goto LABEL_49;
        }

        *(a1 + 7021) = 1;
        sub_297EBF738(a1 + 936);
        *(a1 + 6658) = 0;
        sub_297E4E0B0(1, a1 + 6524, 3, 4u, "Rf Deactivate Ntf to IdleMode..");
        sub_297E96818(*(a1 + 6528), 121);
        LODWORD(v16[0]) = 0;
        if (*(a1 + 172) == 4)
        {
          *(a1 + 172) = 0;
        }

LABEL_38:
        sub_297E5B554(a1);
LABEL_49:
        v14 = *(a1 + 192);
        if (v14)
        {
          v14(*(a1 + 184), 7, v16, 121);
        }

        v6 = 0;
        goto LABEL_52;
      }

      *(a1 + 6515) = 1;
      *(a1 + 6658) = 0;
      goto LABEL_35;
    }

    if (v9[1] - 1 <= 1)
    {
      if ((v10 - 1) >= 2)
      {
        if (v10 != 3)
        {
          v6 = 255;
          goto LABEL_52;
        }

        sub_297E4E0B0(1, a1 + 6524, 3, 2u, "Rf LinkLoss in DiscMode..");
      }

      else
      {
        v11 = *(a1 + 4552);
        if (!v11 || (*(v11 + 20) & 0x80) != 0)
        {
          sub_297E4E0B0(1, a1 + 6524, 3, 4u, "Device in listen Mode!!!");
          LODWORD(v16[0]) = **(a2 + 8);
          v12 = 7;
          goto LABEL_40;
        }

        sub_297E4E0B0(1, a1 + 6524, 3, 1u, "Endpoint Req to 'Sleep/SleepAF'...Converting to 'Discovery'");
      }

      LODWORD(v16[0]) = 3;
      v12 = 146;
LABEL_40:
      v6 = sub_297E5B554(a1);
      if (**(a2 + 8) == 3)
      {
        *(a1 + 176) = 1;
      }

      v13 = *(a1 + 192);
      if (v13)
      {
        v13(*(a1 + 184), 7, v16, v12);
      }

      goto LABEL_52;
    }

LABEL_35:
    v6 = sub_297E78A14(a1, a2, 0);
    goto LABEL_52;
  }

LABEL_53:
  sub_297E4DFAC(2, a1, 3, 5u, "phNciNfc_DeActvNtfCb");
  return v6;
}

uint64_t sub_297E9618C(uint64_t a1, uint64_t a2, _BYTE *a3, int a4)
{
  v16 = 26;
  sub_297E4E1B4(2, a1, 3, 5u, "phNciNfc_RdrBInit");
  if (a1 && a2 && a3 && a4)
  {
    if (a3[3] == 1)
    {
      v8 = a3[6];
      sub_297E4E0B0(1, a1 + 6524, 3, 4u, " NFC-B Passive Poll Mode Info being captured..");
      v9 = a3[7];
      *(a2 + 98) = v9;
      if ((v9 - 11) <= 1u)
      {
        phOsalNfc_SetMemory();
        phOsalNfc_MemCopy();
        v10 = *(a2 + 108);
        *(a2 + 145) = sub_297E772B8(a1, v10 >> 4);
        sub_297E6DD78(a1, v10, v9, a2, &v16);
        v11 = v16;
        *(a2 + 4) = v16;
        if (v11 == 16)
        {
          if (*(a2 + 12) == 2)
          {
            if (a3[v8 + 10])
            {
              v14 = a3[a3[v8 + 10] + 1];
              *(a2 + 111) = v14;
              if (v14)
              {
                phOsalNfc_SetMemory();
                phOsalNfc_MemCopy();
              }
            }
          }
        }

        else if (v11 != 25)
        {
          v12 = *(a1 + 4800);
LABEL_18:
          v13 = 0;
          v12[2] = 0;
          v12[3] = sub_297EFF438;
          goto LABEL_19;
        }

        v12 = *(a1 + 4800);
        *v12 = sub_297EAADF8;
        v12[1] = sub_297EAAAFC;
        goto LABEL_18;
      }

      sub_297E4E0B0(1, a1 + 6524, 3, 4u, " Invalid SENSB_RES Length received..");
      v13 = 255;
    }

    else
    {
      v13 = 0;
    }
  }

  else
  {
    sub_297E4E0B0(2, a1, 3, 4u, " Invalid Params..");
    v13 = 1;
  }

LABEL_19:
  sub_297E4DFAC(2, a1, 3, 5u, "phNciNfc_RdrBInit");
  return v13;
}

uint64_t sub_297E963C0(uint64_t a1)
{
  if (a1 > 1)
  {
    return 255;
  }

  v1 = &unk_2A18BDDC0 + 112 * a1;
  v3 = *(v1 + 10);
  v2 = (v1 + 80);
  if (v3)
  {
    return 0;
  }

  result = phOsalNfc_GetMemory_Typed();
  if (result)
  {
    v5 = result;
    phOsalNfc_SetMemory();
    result = 0;
    *(v5 + 120) = 0;
    *(v5 + 128) = 0;
    *(v5 + 136) = 0;
    *(v5 + 152) = 255;
    *(v5 + 156) = 137;
    *v2 = v5;
  }

  return result;
}

uint64_t sub_297E96474(uint64_t a1)
{
  if (a1 > 1)
  {
    return 255;
  }

  v1 = &unk_2A18BDDC0 + 112 * a1;
  v4 = *(v1 + 10);
  v3 = v1 + 80;
  v2 = v4;
  if (!v4)
  {
    return 0;
  }

  *(v2 + 120) = 0;
  *(v2 + 128) = 0;
  *(v2 + 136) = 0;
  *(v2 + 152) = 255;
  *(v2 + 156) = 137;
  phOsalNfc_FreeMemory();
  result = 0;
  *v3 = 0;
  return result;
}

uint64_t sub_297E964E8(uint64_t a1, int *a2, int64x2_t a3, int64x2_t a4)
{
  v17 = a1;
  if (a1 > 1)
  {
    return 1;
  }

  v5 = 1;
  if (a2)
  {
    v6 = *(&unk_2A18BDDC0 + 14 * a1 + 10);
    if (v6)
    {
      *v6 = *(a2 + 33);
      if (*(a2 + 32) == 1)
      {
        v7 = *a2;
        if (*a2 <= 5)
        {
          v8 = xmmword_297F13210;
          v9 = xmmword_297F13220;
          v10 = (v6 + 44);
          v11 = 16;
          v12 = vdupq_n_s64(0xFuLL);
          v13 = vdupq_n_s64(4uLL);
          do
          {
            if (vuzp1_s16(vmovn_s64(vcgtq_u64(v12, v9)), *v8.i8).u8[0])
            {
              *(v10 - 3) = v7;
            }

            if (vuzp1_s16(vmovn_s64(vcgtq_u64(vdupq_n_s64(0xFuLL), *&v9)), *&v8).i8[2])
            {
              *(v10 - 2) = v7;
            }

            if (vuzp1_s16(*&v8, vmovn_s64(vcgtq_u64(vdupq_n_s64(0xFuLL), *&v8))).i32[1])
            {
              *(v10 - 1) = v7;
              *v10 = v7;
            }

            v8 = vaddq_s64(v8, v13);
            v9 = vaddq_s64(v9, v13);
            v10 += 4;
            v11 -= 4;
          }

          while (v11);
          goto LABEL_18;
        }
      }

      else
      {
        v7 = *a2;
      }

      *(v6 + 36) = v7;
      *(v6 + 40) = a2[1];
      *(v6 + 44) = a2[2];
      *(v6 + 48) = a2[3];
      *(v6 + 52) = a2[7];
      *(v6 + 56) = a2[4];
      *(v6 + 64) = a2[6];
      *(v6 + 60) = a2[5];
LABEL_18:
      for (i = 1; i != 16; ++i)
      {
        *(v6 + i) = a2[9];
      }

      if (*(a2 + 6))
      {
        v5 = phOsalNfc_CloseLogFile();
        if (!v5)
        {
          v5 = phOsalNfc_OpenLogFile();
        }
      }

      else
      {
        v5 = 0;
      }

      sub_297E4D930(1, &v17, 5, 2, "phLogNfc_ConfigureMwLogging");
      for (j = 0; j != 15; ++j)
      {
        *(v6 + 16 + j) = a2[10];
      }
    }
  }

  return v5;
}

uint64_t sub_297E966F4(int a1, uint64_t a2, int a3, unsigned int a4, uint64_t a5)
{
  result = sub_297E4E2B8(a1, a2, a3);
  if (result == 1)
  {
    if (!qword_2A18BDE80)
    {
      return result;
    }

    v11 = 0;
    v10 = qword_2A18BDE80 + 32;
    goto LABEL_25;
  }

  if (!result)
  {
    v9 = qword_2A18BDE10;
    if (!qword_2A18BDE10)
    {
      return result;
    }

    v10 = 0;
LABEL_12:
    v12 = *(v9 + 4 * a3 + 32);
    if (v12 >= a4 && v12 != 0 && a5 != 0 && v12 < 6)
    {
      goto LABEL_31;
    }

    goto LABEL_23;
  }

  if (qword_2A18BDE80)
  {
    v10 = qword_2A18BDE80 + 32;
  }

  else
  {
    v10 = 0;
  }

  if (result == 255)
  {
    v9 = qword_2A18BDE10;
    if (qword_2A18BDE10)
    {
      goto LABEL_12;
    }
  }

LABEL_23:
  if (!v10)
  {
    goto LABEL_30;
  }

  v11 = result == 255;
  if (result != 255)
  {
    return result;
  }

LABEL_25:
  v16 = *(v10 + 4 * a3);
  if (v16 < a4 || v16 == 0)
  {
LABEL_30:
    if (result != 255)
    {
      return result;
    }

    goto LABEL_31;
  }

  if (a5)
  {
    v18 = v16 >= 6;
  }

  else
  {
    v18 = 1;
  }

  v19 = !v18 || v11;
  if (v19)
  {
LABEL_31:

    return MEMORY[0x2A1C6E630]();
  }

  return result;
}

uint64_t sub_297E96818(uint64_t result, int a2)
{
  v2 = 0;
  for (i = 1; ; i = 0)
  {
    v4 = i;
    v5 = &unk_2A18BDDC0 + 112 * v2;
    if (*v5 == result)
    {
      break;
    }

    v2 = 1;
    if ((v4 & 1) == 0)
    {
      return result;
    }
  }

  v6 = *(v5 + 2);
  if (v6 <= 1)
  {
    v7 = *(&unk_2A18BDDC0 + 14 * v6 + 10);
    if (v7)
    {
      if (a2 == 80 || a2 == 44 && *(v7 + 152) != 80)
      {
        goto LABEL_10;
      }

      if (*(v7 + 152))
      {
        if (*(v7 + 152) != 80)
        {
          v8 = *(v7 + 152) > 0x2Cu || ((1 << *(v7 + 152)) & 0x100600000000) == 0;
          if (v8 && ((a2 - 208) <= 6 && ((1 << (a2 + 48)) & 0x4F) != 0 || a2 == 48))
          {
            goto LABEL_10;
          }
        }
      }

      else if (a2 && (a2 != 185 || (*(v7 + 156) & 0xFFFFFFFE) != 0x1E))
      {
LABEL_10:
        *(v7 + 152) = a2;
      }
    }
  }

  return result;
}

uint64_t sub_297E96914(int a1, uint64_t a2, int a3, unsigned int a4, uint64_t a5)
{
  result = sub_297E4E2B8(a1, a2, a3);
  if (result == 1)
  {
    if (!qword_2A18BDE80)
    {
      return result;
    }

    v10 = qword_2A18BDE80 + 16;
    goto LABEL_25;
  }

  if (!result)
  {
    v9 = qword_2A18BDE10;
    if (!qword_2A18BDE10)
    {
      return result;
    }

    v10 = 0;
LABEL_12:
    v11 = *(v9 + a3 + 16);
    if (v11 >= 3 && v11 >= a4 && a5 != 0 && v11 < 5)
    {
      goto LABEL_37;
    }

    goto LABEL_23;
  }

  if (qword_2A18BDE80)
  {
    v10 = qword_2A18BDE80 + 16;
  }

  else
  {
    v10 = 0;
  }

  if (result == 255)
  {
    v9 = qword_2A18BDE10;
    if (qword_2A18BDE10)
    {
      goto LABEL_12;
    }
  }

LABEL_23:
  if (!v10 || result != 255)
  {
    return result;
  }

LABEL_25:
  v15 = *(v10 + a3);
  if (v15 >= 3 && v15 >= a4 && a5 != 0 && v15 <= 4)
  {
LABEL_37:

    return MEMORY[0x2A1C6E688]();
  }

  return result;
}

uint64_t sub_297E96A20(uint64_t a1, int a2, uint64_t a3, uint64_t a4)
{
  v4 = a4;
  v20 = *MEMORY[0x29EDCA608];
  v18 = 0;
  v19 = 0;
  sub_297E4E1B4(2, a1, 8, 5u, "phFriNfc_T5T_H_ReadWrite");
  *(a1 + 48) = sub_297E96C5C;
  *(a1 + 56) = a1;
  v8 = 32;
  *(a1 + 232) = 32;
  v9 = *(a1 + 640);
  if (v9 >= 0x100)
  {
    if (*(a1 + 664) != 226)
    {
      return 27;
    }

    v10 = 0;
    LOBYTE(a2) = a2 | 0x10;
    v8 = 32;
  }

  else if (a2 == 33)
  {
    if ((*(a1 + 663) & 0x10) != 0)
    {
      v8 = 96;
    }

    else
    {
      v8 = 32;
    }

    v10 = 1;
  }

  else
  {
    v10 = 0;
  }

  *(a1 + 266) = v8;
  *(a1 + 267) = a2;
  phOsalNfc_MemCopy();
  v11 = *(a1 + 224);
  v12 = *(v11 + 16);
  v13 = *(a1 + 640);
  *(a1 + 266 + (v12 + 2)) = v13;
  v14 = v12 + 3;
  if (v9 >= 0x100)
  {
    *(a1 + 266 + (v12 + 3)) = HIBYTE(v13);
    v14 = v12 + 4;
  }

  v15 = (((a2 - 33) >> 1) | ((a2 - 33) << 7));
  if (v15 <= 9 && ((1 << v15) & 0x303) != 0)
  {
    if (a3 && v4)
    {
      phOsalNfc_MemCopy();
      v14 += v4;
      v11 = *(a1 + 224);
    }

    sub_297E9FDA4(*(a1 + 2712), v11 + 8, &v18);
    if (v10 && (HIDWORD(v19) - 3) <= 3)
    {
      *(a1 + 266) |= 0x42u;
      *(a1 + 232) = 1;
      *(a1 + 576) = 20;
    }
  }

  *(a1 + 264) = 260;
  *(a1 + 526) = v14;
  v16 = sub_297E98D38(a1, sub_297E97B88);
  sub_297E4DFAC(2, a1, 8, 5u, "phFriNfc_T5T_H_ReadWrite");
  return v16;
}

uint64_t sub_297E96C5C(uint64_t a1, unsigned __int8 *a2, uint64_t a3)
{
  v127 = *MEMORY[0x29EDCA608];
  v124 = a1;
  sub_297E4E1B4(0, &v124, 8, 5u, "phFriNfc_T5T_Process");
  if (a3)
  {
LABEL_2:
    if (a3 == 13)
    {
      return sub_297E4DFAC(0, &v124, 8, 5u, "phFriNfc_T5T_Process");
    }

    goto LABEL_6;
  }

  if (!a2[266])
  {
    v6 = *a2;
    if (v6 <= 2)
    {
      if (v6 != 1)
      {
        if (v6 != 2)
        {
          goto LABEL_2;
        }

        sub_297E4E1B4(2, a2, 8, 5u, "phFriNfc_T5T_H_ProcessReadNdef");
        if (*(a2 + 132))
        {
          v7 = (*(a2 + 132) - 1);
        }

        else
        {
          v7 = 0;
        }

        if (a2[560] || (LOWORD(v16) = a2[659]) == 0)
        {
          v8 = a2[658];
          v9 = *(a2 + 323);
          if (v9 <= 0xFE)
          {
            v10 = v8 + 1;
          }

          else
          {
            v10 = v8 + 3;
          }

          v11 = v10 + 1;
          v12 = a2[662];
          v13 = v11 >= v12;
          v14 = *(a2 + 328);
          if (v13)
          {
            ++v14;
          }

          if (v14 == *(a2 + 320))
          {
            if (v9 <= 0xFE)
            {
              v15 = v8 + 1;
            }

            else
            {
              v15 = v8 + 3;
            }

            v16 = (v15 + 1) % v12;
          }

          else
          {
            LOWORD(v16) = 0;
          }
        }

        a2[659] = 0;
        v55 = *(a2 + 330);
        v56 = *(a2 + 62) - *(a2 + 126);
        if (v56 >= v55)
        {
          v58 = v7 - v16;
          if (v58 >= v55)
          {
            v57 = *(a2 + 330);
          }

          else
          {
            v57 = v58;
          }
        }

        else
        {
          v57 = v7 - v16;
          if (v56 < (v7 - v16))
          {
            a2[659] = (v56 + v16) % a2[662];
            v57 = v56;
          }
        }

        phOsalNfc_MemCopy();
        v59 = *(a2 + 126) + v57;
        *(a2 + 126) = v59;
        v60 = *(a2 + 330);
        *(a2 + 330) = v60 - v57;
        v61 = *(a2 + 320);
        if (a2[663])
        {
          v62 = v61 + a2[666];
          *(a2 + 320) = v62;
          v63 = v59;
          if (*(a2 + 62) > v59 && v60 != v57)
          {
            v64 = sub_297E97C20(a2);
            goto LABEL_124;
          }
        }

        else
        {
          v62 = v61 + 1;
          *(a2 + 320) = v62;
          v63 = v59;
          if (*(a2 + 62) > v59 && v60 != v57)
          {
            v64 = sub_297E96A20(a2, 32, 0, 0);
LABEL_124:
            a3 = v64;
LABEL_128:
            v50 = "phFriNfc_T5T_H_ProcessReadNdef";
LABEL_299:
            sub_297E4DFAC(2, a2, 8, 5u, v50);
            goto LABEL_2;
          }
        }

        if (a2[659])
        {
          *(a2 + 320) = v62 - 1;
        }

        a3 = 0;
        **(a2 + 69) = v63;
        goto LABEL_128;
      }

      v19 = a2[644];
      v20 = a2 + 267;
      sub_297E4E1B4(2, a2, 8, 5u, "phFriNfc_T5T_H_ProcessCheckNdef");
      if (*(a2 + 132))
      {
        v21 = *(a2 + 132) - 1;
      }

      else
      {
        LOBYTE(v21) = 0;
      }

      v22 = a2[665];
      if (a2[665])
      {
        v23 = 0;
LABEL_37:
        if (v23 >= v21 || v19 == 2)
        {
          if (v19 == 2)
          {
            a3 = 0;
            goto LABEL_291;
          }

LABEL_288:
          if (v19 == 4)
          {
            v119 = *(a2 + 328);
            *(a2 + 320) = v119;
            v120 = a2[662];
            if (v120 - 1 == a2[658])
            {
              LOBYTE(v19) = 0;
              *(a2 + 320) = ++v119;
            }

            else
            {
              LOBYTE(v19) = 4;
            }
          }

          else
          {
            v119 = *(a2 + 320) + 1;
            *(a2 + 320) = v119;
            v120 = a2[662];
          }

          v121 = 0;
          v122 = *(a2 + 162);
          v123 = a2[665];
          a3 = 22;
          if (v122 <= ~v123 && v122 + v123 > v120 * v119)
          {
            a3 = sub_297E96A20(a2, 32, 0, 0);
            v121 = v19;
          }

LABEL_298:
          a2[644] = v121;
          v50 = "phFriNfc_T5T_H_ProcessCheckNdef";
          goto LABEL_299;
        }

        v24 = a2 + 646;
        v25 = word_2A18BE710;
        v26 = word_2A18BE712;
        v27 = ~v22;
        a3 = 245;
        while (1)
        {
          v28 = v23;
          if (v19 > 2)
          {
            if (v19 != 3)
            {
              if (v19 != 4)
              {
                goto LABEL_285;
              }

              v19 = 0;
              LOBYTE(v23) = a2[658];
              goto LABEL_76;
            }

            if (v25 == 2)
            {
              v26 |= v20[v23];
              word_2A18BE712 = v26;
              word_2A18BE710 = 0;
              if (v26 < 0xFFu)
              {
                a3 = 22;
LABEL_277:
                v19 = 3;
                goto LABEL_285;
              }
            }

            else
            {
              if (v25 == 1)
              {
                v26 = v20[v23] << 8;
                word_2A18BE712 = v26;
                v25 = 2;
                word_2A18BE710 = 2;
                goto LABEL_64;
              }

              if (v25)
              {
                a3 = 245;
                goto LABEL_277;
              }

              v19 = v20[v23];
              if (!v20[v23])
              {
                v25 = 0;
                goto LABEL_76;
              }

              if (v19 == 255)
              {
                v25 = 1;
                word_2A18BE710 = 1;
LABEL_64:
                v19 = 3;
                goto LABEL_76;
              }

              word_2A18BE712 = v20[v23];
              word_2A18BE710 = 0;
              v26 = v19;
            }

            v31 = *(a2 + 162);
            v32 = v31 + v22;
            if (v31 > v27)
            {
              v32 = 0;
            }

            v33 = a2[662];
            v34 = v28 + v33 * *(a2 + 320);
            if (v32 > v34 && v32 + ~v34 < v26)
            {
              a3 = 22;
              v19 = 4;
              goto LABEL_285;
            }

            v25 = 0;
            v35 = v26 + v34;
            a2[658] = v35 % v33;
            *(a2 + 328) = v35 / v33;
            v23 = v26 + v28;
            if (v23 >= v21)
            {
              LOBYTE(v23) = v21;
            }

            v19 = 4;
          }

          else
          {
            if (v19)
            {
              if (v19 != 1)
              {
                goto LABEL_285;
              }

              if (v25)
              {
                if (v25 != 1)
                {
                  if (v25 == 2)
                  {
                    v84 = *v24;
                    v85 = v20[v23];
                    v30 = v84 | v85;
                    *v24 = v84 | v85;
                    word_2A18BE710 = 0;
                    if ((v84 | v85) > 0xFE)
                    {
                      v86 = 0;
                      goto LABEL_181;
                    }

                    a3 = 22;
                  }

                  else
                  {
                    a3 = 245;
                  }

                  v19 = 1;
                  goto LABEL_285;
                }

                *v24 = v20[v23] << 8;
                v25 = 2;
              }

              else
              {
                v30 = v20[v23];
                if (v30 != 255)
                {
                  if (v20[v23])
                  {
                    *v24 = v30;
                    v24 = &word_2A18BE710;
                  }

                  *v24 = 0;
                  v86 = 1;
LABEL_181:
                  v87 = *(a2 + 162);
                  v88 = v87 + v22;
                  if (v87 > v27)
                  {
                    v88 = 0;
                  }

                  v89 = v23 + a2[662] * *(a2 + 320);
                  if (v88 <= v89)
                  {
                    v90 = 0;
                  }

                  else
                  {
                    v90 = v88 + ~v89;
                  }

                  *(a2 + 162) = v90;
                  if (v90 >= v30)
                  {
                    if (a2[545] == 1)
                    {
                      v92 = 1;
                    }

                    else
                    {
                      v92 = 2 * (v30 != 0);
                    }

                    a2[545] = v92;
                    if (v90 >= 0xFFFF)
                    {
                      v93 = 0xFFFF;
                    }

                    else
                    {
                      v93 = v90;
                    }

                    *(a2 + 162) = v93;
                    v94 = v86 ^ 1;
                    if (v90 < 0xFF)
                    {
                      v94 = 1;
                    }

                    if (v94)
                    {
                      a3 = 0;
                    }

                    else
                    {
                      a3 = 0;
                      if (v90 == 255)
                      {
                        v95 = 254;
                      }

                      else
                      {
                        v95 = v93 - 2;
                      }

                      *(a2 + 162) = v95;
                    }

                    v19 = 2;
                  }

                  else
                  {
                    v19 = 2;
                    sub_297E4E0B0(2, a2, 8, 2u, "phFriNfc_T5T_H_ProcessCheckNdef: Current NDEF message exceeds the Maximum Tag NDEF size");
                    sub_297E50EBC(2, a2, 8, 2u, "phFriNfc_T5T_H_ProcessCheckNdef:Current Ndef Message size");
                    sub_297E50EBC(2, a2, 8, 2u, "phFriNfc_T5T_H_ProcessCheckNdef:Maximum Ndef Message size");
                    *(a2 + 323) = 0;
                    a2[545] = 0;
                    a3 = 25;
                  }

LABEL_285:
                  if (a3 != 25 && a3)
                  {
                    v121 = 0;
                  }

                  else
                  {
                    if (v19 != 2)
                    {
                      goto LABEL_288;
                    }

LABEL_291:
                    v121 = 0;
                    a2[544] = 9;
                  }

                  goto LABEL_298;
                }

                v25 = 1;
              }

              word_2A18BE710 = v25;
            }

            else
            {
              v29 = v20[v23];
              if (v29 != 3)
              {
                if (v29 == 254)
                {
                  v19 = 0;
                  goto LABEL_248;
                }

                goto LABEL_64;
              }

              a2[658] = v23;
              *(a2 + 328) = *(a2 + 320);
            }

            v19 = 1;
          }

LABEL_76:
          LOBYTE(v23) = v23 + 1;
          if (v23 >= v21)
          {
            goto LABEL_288;
          }
        }
      }

      word_2A18BE712 = 0;
      sub_297E4E1B4(2, a2, 8, 5u, "phFriNfc_T5T_H_CheckCCBytes");
      v65 = *(a2 + 320);
      if (v65 == 1)
      {
        goto LABEL_211;
      }

      if (!*(a2 + 320))
      {
        v66 = *v20;
        if ((v66 - 225) > 1)
        {
          v83 = 0;
          a3 = 22;
          goto LABEL_214;
        }

        v67 = *(a2 + 132);
        if (v67)
        {
          v68 = v67 - 1;
          a2[662] = v67 - 1;
        }

        else
        {
          v68 = a2[662];
        }

        v83 = 0;
        v96 = (((v68 - 4) >> 2) | ((v68 - 4) << 6));
        a3 = 22;
        if (v96 > 7 || ((1 << v96) & 0x8B) == 0)
        {
LABEL_214:
          v99 = a2[665];
          if (v99 != 8)
          {
            goto LABEL_217;
          }

          goto LABEL_215;
        }

        a2[664] = v66;
        a2[663] = a2[270];
        v97 = a2[269];
        if (a2[269])
        {
          a3 = 0;
          a2[665] = 4;
          v98 = 8 * v97;
          *(a2 + 162) = v98;
          *(a2 + 163) = v98;
LABEL_213:
          v83 = 1;
          goto LABEL_214;
        }

        if (v68 > 7u)
        {
LABEL_211:
          a3 = 0;
          a2[665] = 8;
          v83 = 1;
LABEL_215:
          v100 = (v20[6u % a2[662]] << 11) | (8 * v20[6u % a2[662] + 1]);
          *(a2 + 162) = v100;
          if (!v100)
          {
            a3 = 22;
            goto LABEL_239;
          }

          *(a2 + 163) = v100;
          v99 = 8;
LABEL_217:
          if (v83 && v99)
          {
            v101 = *(*(a2 + 28) + 14);
            if (v101 == 7 || v101 == 4)
            {
              a3 = 0;
              v102 = *(a2 + 162) - v99;
              *(a2 + 162) = v102;
              *(a2 + 163) = v102;
            }

            else
            {
              a3 = 0;
            }
          }

          if (v99)
          {
            v103 = a2[664] == 225;
          }

          else
          {
            v103 = 0;
          }

          if (!v103)
          {
            v83 = 0;
          }

          if (v83 == 1)
          {
            v104 = *(a2 + 162) + v99;
            v105 = a2[662];
            v106 = v104 / v105;
            v107 = v104 / v105 - 1;
            v108 = v104 % v105;
            if (v106)
            {
              v109 = v106;
            }

            else
            {
              v109 = 0;
            }

            if (v108)
            {
              v110 = v109;
            }

            else
            {
              v110 = v107;
            }

            if ((v110 & 0xFF00) != 0)
            {
              a3 = 22;
            }

            else
            {
              a3 = a3;
            }
          }

LABEL_239:
          if (a3 | v65)
          {
            goto LABEL_240;
          }

          v111 = a2[268];
          if ((v111 & 0x80000000) == 0)
          {
            v112 = v111 & 0xF;
            if (!v112)
            {
              v113 = 2;
              goto LABEL_250;
            }

            if (v112 == 3)
            {
              v113 = 1;
LABEL_250:
              a2[545] = v113;
LABEL_240:
              sub_297E4DFAC(2, a2, 8, 5u, "phFriNfc_T5T_H_CheckCCBytes");
              if (a3)
              {
                goto LABEL_285;
              }

              v22 = a2[665];
              v23 = v22;
              if (!a2[665])
              {
                ++*(a2 + 320);
                a3 = sub_297E96A20(a2, 32, 0, 0);
                goto LABEL_2;
              }

              goto LABEL_37;
            }
          }

          sub_297E4DFAC(2, a2, 8, 5u, "phFriNfc_T5T_H_CheckCCBytes");
LABEL_248:
          a3 = 22;
          goto LABEL_285;
        }
      }

      a3 = 0;
      goto LABEL_213;
    }

    if (v6 != 3)
    {
      if (v6 != 4)
      {
        goto LABEL_2;
      }

      LODWORD(v125[0]) = 0;
      sub_297E4E1B4(2, a2, 8, 5u, "phFriNfc_T5T_H_ProcessRdOnlyNdef");
      v17 = *(a2 + 132);
      if (v17 - 1 == a2[665])
      {
        phOsalNfc_MemCopy();
        if (sub_297E8EA44(*(a2 + 339)) == 1)
        {
          v18 = 0;
        }

        else
        {
          v18 = 3;
        }

        BYTE1(v125[0]) = BYTE1(v125[0]) & 0xFC | v18;
        a3 = sub_297E96A20(a2, 33, v125, 4);
      }

      else if (v17 == 1)
      {
        a3 = 0;
      }

      else
      {
        a3 = 255;
      }

      v50 = "phFriNfc_T5T_H_ProcessRdOnlyNdef";
      goto LABEL_299;
    }

    v36 = a2[644];
    v126 = 0;
    memset(v125, 0, sizeof(v125));
    v37 = a2[662];
    sub_297E4E1B4(2, a2, 8, 5u, "phFriNfc_T5T_H_ProcessWriteNdef");
    v38 = 0;
    v39 = 1;
    if (v36 > 2)
    {
      if (v36 <= 4)
      {
        if (v36 == 3)
        {
          v39 = 0;
          v38 = 0;
          a3 = 0;
          ++*(a2 + 320);
          LOBYTE(v125[0]) = -2;
          v40 = 1;
          LOBYTE(v36) = 2;
          goto LABEL_265;
        }

        v40 = 0;
        v41 = (*(a2 + 132) - 1);
        if (*(a2 + 132))
        {
          v42 = (*(a2 + 132) - 1);
        }

        else
        {
          v42 = 0;
        }

        a3 = 27;
        v39 = 1;
        v38 = 1;
        if (v37 && v42 == v37)
        {
          phOsalNfc_MemCopy();
          v43 = a2[658];
          v44 = (v43 + 1) % v41;
          v45 = *(a2 + 62);
          if (v45 < 0xFF)
          {
            v46 = 1;
          }

          else
          {
            v46 = 3;
          }

          v47 = a2[662] - 1 <= v43;
          v48 = *(a2 + 328);
          if (v47)
          {
            ++v48;
          }

          if (v48 == *(a2 + 320))
          {
            if (v46 + v44 > v37)
            {
              LOBYTE(v36) = 5;
            }

            else
            {
              LOBYTE(v36) = 6;
            }

            if (v46 + v44 > v37)
            {
              LOBYTE(v46) = v37 - v44;
            }

            if (v45 > 0xFE)
            {
              *(v125 + v44) = -1;
              v49 = v44 + 1;
            }

            else
            {
              *(v125 + v44) = v45;
              v49 = v44;
            }

            LOBYTE(v91) = v46 - 1;
          }

          else
          {
            v49 = 0;
            v91 = (v44 + v46) % v41;
            LOBYTE(v36) = 6;
          }

          if (v91 == 2 || (v91 == 1 ? (v114 = v49 == 0) : (v114 = 1), !v114))
          {
            *(v125 + v49++) = a2[253];
            LOBYTE(v91) = v91 - 1;
          }

          if (v91 == 1)
          {
            v39 = 0;
            v38 = 0;
            a3 = 0;
            *(v125 + v49) = a2[252];
            goto LABEL_264;
          }

LABEL_263:
          v39 = 0;
          v38 = 0;
          a3 = 0;
          goto LABEL_264;
        }

LABEL_265:
        if (*(a2 + 126))
        {
          if (**(a2 + 32) == *(a2 + 126))
          {
            v38 = 1;
          }

          if (v38)
          {
            goto LABEL_275;
          }
        }

        else if (!v40)
        {
LABEL_275:
          a2[644] = v36;
          v50 = "phFriNfc_T5T_H_ProcessWriteNdef";
          goto LABEL_299;
        }

        if (v39)
        {
          v115 = a2;
          v116 = 32;
          v117 = 0;
          v118 = 0;
        }

        else
        {
          v117 = v125;
          v115 = a2;
          v116 = 33;
          v118 = v37;
        }

        a3 = sub_297E96A20(v115, v116, v117, v118);
        goto LABEL_275;
      }

      if (v36 != 5)
      {
        v40 = 1;
        a3 = 0;
        if (v36 != 6)
        {
          goto LABEL_265;
        }

        v38 = 0;
        a3 = 0;
        v69 = *(a2 + 126);
        **(a2 + 32) = v69;
        *(a2 + 323) = v69;
        goto LABEL_171;
      }

      v38 = 0;
      a3 = 0;
      v54 = *(a2 + 320) + 1;
LABEL_169:
      *(a2 + 320) = v54;
      v39 = 1;
      LOBYTE(v36) = 4;
LABEL_264:
      v40 = 1;
      goto LABEL_265;
    }

    if (v36)
    {
      if (v36 == 1)
      {
        LOBYTE(v36) = 0;
        v38 = 0;
        a3 = 0;
        ++*(a2 + 320);
LABEL_171:
        v39 = 1;
        goto LABEL_264;
      }

      v51 = *(a2 + 62);
      v52 = *(a2 + 126);
      v53 = v51 - v52;
      if (v51 == v52)
      {
        v38 = 0;
        a3 = 0;
        v54 = *(a2 + 328);
        if (v37 - 1 <= a2[658])
        {
          ++v54;
        }

        goto LABEL_169;
      }

      ++*(a2 + 320);
      if (v53 >= v37)
      {
        LOBYTE(v36) = 2;
        if (v53 == v37)
        {
          if (v51 >= *(a2 + 162))
          {
            LOBYTE(v36) = 2;
          }

          else
          {
            LOBYTE(v36) = 3;
          }
        }

        v82 = v37;
      }

      else
      {
        *(v125 + v53) = -2;
        LOBYTE(v36) = 2;
        v82 = v51 - v52;
      }
    }

    else
    {
      if (*(a2 + 132))
      {
        v70 = (*(a2 + 132) - 1);
      }

      else
      {
        v70 = 0;
      }

      a3 = 27;
      v39 = 1;
      v38 = 1;
      v40 = 0;
      if (!v37 || v70 != v37)
      {
        goto LABEL_265;
      }

      phOsalNfc_MemCopy();
      v71 = a2[658];
      v72 = (v71 + 1) % v37;
      if (*(a2 + 62) <= 0xFEu)
      {
        v73 = 1;
      }

      else
      {
        v73 = 3;
      }

      v47 = a2[662] - 1 <= v71;
      v74 = *(a2 + 328);
      if (v47)
      {
        ++v74;
      }

      v75 = *(a2 + 320);
      v76 = v37 - v72;
      if (v73 + v72 <= v37)
      {
        v76 = v73;
      }

      v77 = v74 == v75;
      v78 = v74 == v75 && v73 + v72 > v37;
      if (v77)
      {
        LOBYTE(v79) = v76;
      }

      else
      {
        v79 = (v72 + v73) % v37;
      }

      if (v77)
      {
        v80 = v72;
      }

      else
      {
        v80 = 0;
      }

      if (v80 + v73 <= v37)
      {
        LOBYTE(v36) = 2;
      }

      else
      {
        LOBYTE(v36) = v78;
      }

      phOsalNfc_SetMemory();
      v81 = v79 + v80;
      if (v37 <= (v79 + v80))
      {
        goto LABEL_263;
      }

      if (*(a2 + 62) - *(a2 + 126) >= (v37 - v81))
      {
        v82 = v37 - v81;
      }

      else
      {
        v82 = a2[248] - *(a2 + 126);
      }
    }

    phOsalNfc_MemCopy();
    v39 = 0;
    v38 = 0;
    a3 = 0;
    *(a2 + 126) += v82;
    goto LABEL_264;
  }

  a3 = 255;
LABEL_6:
  sub_297E97D6C(a2, a3);
  return sub_297E4DFAC(0, &v124, 8, 5u, "phFriNfc_T5T_Process");
}

uint64_t sub_297E97B88(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v9 = 0;
  v10 = a1;
  sub_297E4E1B4(0, &v10, 8, 5u, "phFriNfc_T5T_CB_Transceive");
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

  return sub_297E4DFAC(0, &v10, 8, 5u, "phFriNfc_T5T_CB_Transceive");
}

uint64_t sub_297E97C20(uint64_t a1)
{
  v17 = 0;
  sub_297E4E1B4(2, a1, 8, 5u, "phFriNfc_T5T_ReadRemainingInMultiple");
  v2 = *(a1 + 248) - *(a1 + 252);
  v3 = *(a1 + 658);
  v4 = *(a1 + 646);
  if (v4 <= 0xFE)
  {
    v5 = v3 + 1;
  }

  else
  {
    v5 = v3 + 3;
  }

  v6 = *(a1 + 662);
  if (v5 + 1 < v6)
  {
    v7 = *(a1 + 656);
  }

  else
  {
    v7 = *(a1 + 656) + 1;
  }

  v8 = *(a1 + 640);
  if (v7 == v8)
  {
    if (v4 <= 0xFE)
    {
      v9 = v3 + 1;
    }

    else
    {
      v9 = v3 + 3;
    }

    v2 += (v9 + 1) % v6;
  }

  if (v2 <= v6)
  {
    v13 = 0;
    *(a1 + 666) = 1;
    v14 = 32;
  }

  else
  {
    if (*(a1 + 662))
    {
      v10 = *(a1 + 662);
      if (v2 >= 0xFE)
      {
        v11 = 254;
      }

      else
      {
        v11 = v2;
      }

      v12 = v11 / v10;
      *(a1 + 666) = v11 / v10;
      if (v11 + v6 <= 0xFE && v11 != v12 * v6)
      {
        LOBYTE(v12) = v12 + 1;
        *(a1 + 666) = v12;
      }
    }

    else
    {
      LOBYTE(v12) = *(a1 + 666);
    }

    LOBYTE(v17) = v12 - 1;
    if (v8 <= 0xFF)
    {
      v13 = 1;
    }

    else
    {
      v13 = 2;
    }

    v14 = 35;
  }

  v15 = sub_297E96A20(a1, v14, &v17, v13);
  sub_297E4DFAC(2, a1, 8, 5u, "phFriNfc_T5T_ReadRemainingInMultiple");
  return v15;
}

uint64_t sub_297E97D6C(unsigned __int8 *a1, uint64_t a2)
{
  v10 = 0;
  v8 = 0;
  v9 = 0;
  v7 = 0;
  v4 = *a1;
  sub_297E4E1B4(2, a1, 8, 5u, "phFriNfc_T5T_H_Complete");
  *a1 = 0;
  if (v4 > 2)
  {
    if (v4 == 3)
    {
      a1[545] = 2 * (**(a1 + 32) != 0);
      (*(a1 + 3))(*(a1 + 5), a2);
    }

    else if (v4 == 4)
    {
      if (!a2)
      {
        a1[545] = 1;
      }

      (*(a1 + 4))(*(a1 + 5), a2);
    }
  }

  else if (v4 == 1)
  {
    if (a2 != 25 && a2)
    {
      a1[546] = 0;
      LOBYTE(v9) = 3;
      if (a2 == 22)
      {
        a2 = 152;
      }

      else
      {
        a2 = a2;
      }
    }

    else
    {
      a1[546] = 1;
      v5 = *(a1 + 162);
      HIDWORD(v9) = *(a1 + 323);
      v10 = v5;
      LOBYTE(v9) = a1[545];
    }

    (*(a1 + 1))(*(a1 + 5), a2, &v9);
  }

  else if (v4 == 2)
  {
    if (!a2)
    {
      LODWORD(v8) = **(a1 + 69);
      v7 = *(a1 + 30);
    }

    (*(a1 + 2))(*(a1 + 5), a2, &v7);
  }

  return sub_297E4DFAC(2, a1, 8, 5u, "phFriNfc_T5T_H_Complete");
}

uint64_t sub_297E97ED8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v9 = 0;
  v10 = a1;
  sub_297E4E1B4(0, &v10, 8, 5u, "phFriNfc_T5T_ChkNdef");
  sub_297E57170(v10, &v9);
  v5 = v9;
  if (v9)
  {
    v6 = 1;
    if (a2 && a3)
    {
      if (*v9)
      {
        v6 = 111;
      }

      else
      {
        *(v9 + 8) = a2;
        *(v5 + 40) = a3;
        phOsalNfc_SetMemory();
        v8 = v9;
        *v9 = 1;
        v6 = sub_297E96A20(v8, 32, 0, 0);
        if (v6 != 13)
        {
          *v9 = 0;
        }
      }
    }
  }

  else
  {
    v6 = 49;
  }

  sub_297E4DFAC(0, &v10, 8, 5u, "phFriNfc_T5T_ChkNdef");
  return v6;
}

uint64_t sub_297E97FD0(uint64_t a1, uint64_t a2, _DWORD *a3, unsigned int a4, uint64_t a5, uint64_t a6)
{
  v21 = 0;
  v22 = a1;
  sub_297E4E1B4(0, &v22, 8, 5u, "phFriNfc_T5T_RdNdef");
  sub_297E57170(v22, &v21);
  v11 = v21;
  if (!v21)
  {
    v12 = 49;
    goto LABEL_35;
  }

  v12 = 1;
  if (a4 <= 1 && a3 && a2 && a5)
  {
    if (!v21[546])
    {
      v12 = 152;
      goto LABEL_35;
    }

    if (*v21)
    {
      v12 = 111;
      goto LABEL_35;
    }

    if (v21[545] == 3)
    {
      v12 = 28;
      goto LABEL_34;
    }

    *v21 = 2;
    *(v11 + 240) = a2;
    *(v11 + 248) = *a3;
    *(v11 + 552) = a3;
    *a3 = 0;
    *(v11 + 252) = 0;
    *(v11 + 560) = a4;
    *(v11 + 16) = a5;
    *(v11 + 40) = a6;
    if (a4 == 1 && !*(v11 + 65))
    {
      *(v11 + 644) = 0;
      *(v11 + 642) = *(v11 + 665) / *(v11 + 662);
      v13 = sub_297E981BC(v11);
LABEL_32:
      v12 = v13;
      if (v13 == 13)
      {
        goto LABEL_35;
      }

      v11 = v21;
LABEL_34:
      *v11 = 0;
      goto LABEL_35;
    }

    v14 = *(v11 + 248);
    v15 = *(v11 + 646);
    if (v14 > v15)
    {
      *(v11 + 248) = v15;
      v14 = v15;
    }

    v16 = *(v11 + 660);
    if (*(v11 + 660))
    {
      if (!a4)
      {
        if (v14 > v16)
        {
          *(v11 + 248) = v16;
        }

LABEL_29:
        if (*(v11 + 663))
        {
          v13 = sub_297E97C20(v11);
        }

        else
        {
          v13 = sub_297E96A20(v11, 32, 0, 0);
        }

        goto LABEL_32;
      }
    }

    else if (!a4)
    {
      v12 = 26;
      goto LABEL_34;
    }

    *(v11 + 660) = v15;
    if (v15 <= 0xFE)
    {
      v17 = 2;
    }

    else
    {
      v17 = 4;
    }

    v18 = v17 + *(v11 + 658) >= *(v11 + 662);
    v19 = *(v11 + 656);
    if (v18)
    {
      ++v19;
    }

    *(v11 + 640) = v19;
    goto LABEL_29;
  }

LABEL_35:
  sub_297E4DFAC(0, &v22, 8, 5u, "phFriNfc_T5T_RdNdef");
  return v12;
}

uint64_t sub_297E981BC(uint64_t a1)
{
  sub_297E4E1B4(2, a1, 8, 5u, "phFriNfc_T5T_RdDynamicNdef");
  *(a1 + 56) = a1;
  *(a1 + 232) = 32;
  v2 = *(a1 + 642);
  v3 = 32;
  if (v2 >= 0x100)
  {
    if (*(a1 + 664) != 226)
    {
      return 27;
    }

    v3 = 48;
  }

  *(a1 + 266) = 32;
  *(a1 + 267) = v3;
  phOsalNfc_MemCopy();
  v4 = *(*(a1 + 224) + 16);
  v5 = *(a1 + 642);
  *(a1 + 266 + (v4 + 2)) = v5;
  v6 = v4 + 3;
  if (v2 >= 0x100)
  {
    *(a1 + 266 + (v4 + 3)) = HIBYTE(v5);
    v6 = v4 + 4;
  }

  *(a1 + 264) = 260;
  *(a1 + 526) = v6;
  v7 = sub_297E98D38(a1, sub_297E98634);
  sub_297E4DFAC(2, a1, 8, 5u, "phFriNfc_T5T_RdDynamicNdef");
  return v7;
}

uint64_t sub_297E982D8(uint64_t a1, uint64_t a2, _DWORD *a3, char a4, uint64_t a5, uint64_t a6)
{
  v29 = *MEMORY[0x29EDCA608];
  v26 = a1;
  v28 = 0;
  memset(v27, 0, sizeof(v27));
  v25 = 0;
  v24 = 208;
  v23 = 0;
  sub_297E4E1B4(0, &v26, 8, 5u, "phFriNfc_T5T_WrNdef");
  sub_297E57170(v26, &v23);
  v11 = v23;
  if (v23)
  {
    v12 = 1;
    if (a3 && a5)
    {
      if (*(v23 + 546))
      {
        if (*v23)
        {
          v12 = 111;
        }

        else if (*a3 <= *(v23 + 648))
        {
          if (*(v23 + 545) == 1)
          {
            *(v23 + 256) = a3;
            *a3 = 0;
            v12 = 58;
          }

          else
          {
            v13 = *(v23 + 662);
            phOsalNfc_MemCopy();
            v14 = v23;
            v15 = (v23 + 2740);
            *(v23 + 2740) = 3;
            if (*a3)
            {
              v15 = a3;
              v16 = a2;
            }

            else
            {
              v16 = v14 + 2736;
            }

            *(v14 + 256) = v15;
            *v14 = 3;
            *(v14 + 240) = v16;
            *(v14 + 248) = *v15;
            *(v14 + 552) = v15;
            *v15 = 0;
            *(v14 + 252) = 0;
            *(v14 + 560) = a4;
            *(v14 + 24) = a5;
            *(v14 + 40) = a6;
            v17 = *(v11 + 658);
            v18 = *(v11 + 656);
            if (v13 - 1 <= v17)
            {
              ++v18;
            }

            *(v11 + 640) = v18;
            if ((v17 + 1) % v13)
            {
              *(v11 + 644) = 0;
              v12 = sub_297E96A20(v14, 32, 0, 0);
            }

            else
            {
              v19 = *(v14 + 248);
              *(v11 + 644) = 2;
              if (v19 <= 0xFE)
              {
                v20 = 1;
              }

              else
              {
                v20 = 3;
              }

              phOsalNfc_SetMemory();
              v21 = v13 - v20;
              phOsalNfc_MemCopy();
              v12 = sub_297E96A20(v23, 33, v27, v13);
              *(v23 + 252) += v21;
            }

            if (v12 != 13)
            {
              *v23 = 0;
            }
          }
        }

        else
        {
          v12 = 31;
        }
      }

      else
      {
        v12 = 152;
      }
    }
  }

  else
  {
    v12 = 49;
  }

  sub_297E4DFAC(0, &v26, 8, 5u, "phFriNfc_T5T_WrNdef");
  return v12;
}

uint64_t sub_297E9855C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v8 = 0;
  v9 = a1;
  sub_297E4E1B4(0, &v9, 8, 5u, "phFriNfc_T5T_ConvertToReadOnlyNdef");
  sub_297E57170(v9, &v8);
  v5 = v8;
  if (v8)
  {
    if (a2)
    {
      if (*(v8 + 665) == 4)
      {
        *(v8 + 32) = a2;
        *(v5 + 40) = a3;
        *v5 = 4;
        *(v5 + 640) = 0;
        v6 = sub_297E96A20(v5, 32, 0, 0);
        if (v6 != 13)
        {
          *v8 = 0;
        }
      }

      else
      {
        v6 = 51;
      }
    }

    else
    {
      v6 = 1;
    }
  }

  else
  {
    v6 = 49;
  }

  sub_297E4DFAC(0, &v9, 8, 5u, "phFriNfc_T5T_ConvertToReadOnlyNdef");
  return v6;
}

uint64_t sub_297E98634(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, unsigned int a5)
{
  v55 = 0;
  v56 = a1;
  sub_297E4E1B4(0, &v56, 8, 5u, "phFriNfc_T5T_H_ProcessDynamicRdNdef");
  sub_297E57170(v56, &v55);
  if (!a4)
  {
    return sub_297E4DFAC(0, &v56, 8, 5u, "phFriNfc_T5T_H_ProcessDynamicRdNdef");
  }

  v7 = v55;
  if (!v55)
  {
    return sub_297E4DFAC(0, &v56, 8, 5u, "phFriNfc_T5T_H_ProcessDynamicRdNdef");
  }

  if (a5)
  {
    goto LABEL_4;
  }

  v10 = *(a4 + 8);
  *(v55 + 264) = v10;
  v8 = *(v7 + 644);
  if (v10)
  {
    v11 = v10 - 1;
  }

  else
  {
    v11 = 0;
  }

  if (*(v7 + 266))
  {
    a5 = 255;
  }

  v12 = v11;
  if (v11)
  {
    v13 = a5 == 0;
  }

  else
  {
    v13 = 0;
  }

  if (v13 && v8 != 2)
  {
    v15 = 0;
    LOBYTE(v16) = 0;
    v17 = v7 + 267;
    v18 = word_2A18BE716;
    v19 = word_2A18BE714;
    v20 = (v7 + 646);
    a5 = 245;
    while (1)
    {
      if (v8 > 2)
      {
        if (v8 != 3)
        {
          if (v8 != 4)
          {
            goto LABEL_83;
          }

          v8 = 0;
          LOBYTE(v16) = *(v7 + 658);
          goto LABEL_60;
        }

        if (v19 == 2)
        {
          v18 |= *(v17 + v16);
          word_2A18BE716 = v18;
          word_2A18BE714 = 0;
          if (v18 < 0xFFu)
          {
            goto LABEL_81;
          }
        }

        else
        {
          if (v19 == 1)
          {
            v18 = *(v17 + v16) << 8;
            word_2A18BE716 = v18;
            v19 = 2;
            word_2A18BE714 = 2;
            goto LABEL_47;
          }

          if (v19)
          {
            goto LABEL_82;
          }

          v8 = *(v17 + v16);
          if (!*(v17 + v16))
          {
            v19 = 0;
            goto LABEL_60;
          }

          if (v8 == 255)
          {
            v19 = 1;
            word_2A18BE714 = 1;
LABEL_47:
            v8 = 3;
            goto LABEL_60;
          }

          word_2A18BE716 = *(v17 + v16);
          word_2A18BE714 = 0;
          v18 = v8;
        }

        v23 = *(v7 + 652);
        v24 = *(v7 + 665);
        v25 = __CFADD__(v24, v23);
        v26 = v23 + v24;
        if (v25)
        {
          v27 = 0;
        }

        else
        {
          v27 = v26;
        }

        v28 = *(v7 + 662);
        v29 = v15 + v28 * *(v7 + 642);
        if (v27 > v29 && v27 + ~v29 < v18)
        {
          goto LABEL_81;
        }

        v19 = 0;
        v30 = v18 + v29;
        *(v7 + 658) = v30 % v28;
        *(v7 + 656) = v30 / v28;
        v16 = v18 + v15;
        if (v16 >= v12)
        {
          LOBYTE(v16) = v12;
        }

        v8 = 4;
      }

      else
      {
        if (v8)
        {
          if (v8 != 1)
          {
            goto LABEL_83;
          }

          if (v19)
          {
            if (v19 != 1)
            {
              if (v19 == 2)
              {
                v35 = *v20;
                v36 = *(v17 + v16);
                v22 = v35 | v36;
                *v20 = v35 | v36;
                word_2A18BE714 = 0;
                if ((v35 | v36) > 0xFE)
                {
                  v37 = 0;
                  goto LABEL_75;
                }

                goto LABEL_81;
              }

LABEL_82:
              a5 = 245;
              goto LABEL_83;
            }

            *v20 = *(v17 + v16) << 8;
            v19 = 2;
          }

          else
          {
            v22 = *(v17 + v16);
            if (v22 != 255)
            {
              if (*(v17 + v16))
              {
                *v20 = v22;
                v20 = &word_2A18BE714;
              }

              *v20 = 0;
              v37 = 1;
LABEL_75:
              v38 = *(v7 + 652);
              v39 = *(v7 + 665);
              v25 = __CFADD__(v39, v38);
              v40 = v38 + v39;
              if (v25)
              {
                v40 = 0;
              }

              v41 = v15 + *(v7 + 662) * *(v7 + 642);
              if (v40 <= v41)
              {
                v42 = 0;
              }

              else
              {
                v42 = v40 + ~v41;
              }

              *(v7 + 648) = v42;
              if (v42 < v22)
              {
LABEL_81:
                a5 = 22;
                goto LABEL_83;
              }

              if (*(v7 + 545) == 1)
              {
                v51 = 1;
              }

              else
              {
                v51 = 2 * (v22 != 0);
              }

              *(v7 + 545) = v51;
              if (*(v7 + 660) >= v22)
              {
                *(v7 + 660) = 0;
              }

              if (v42 >= 0xFFFF)
              {
                v52 = 0xFFFF;
              }

              else
              {
                v52 = v42;
              }

              *(v7 + 648) = v52;
              v53 = v37 ^ 1;
              if (v42 < 0xFF)
              {
                v53 = 1;
              }

              if ((v53 & 1) == 0)
              {
                v54 = v52 - 2;
                if (v42 == 255)
                {
                  v54 = 254;
                }

                *(v7 + 648) = v54;
              }

LABEL_22:
              a5 = 0;
              *(v7 + 544) = 9;
              goto LABEL_83;
            }

            v19 = 1;
          }

          word_2A18BE714 = v19;
        }

        else
        {
          v21 = *(v17 + v16);
          if (v21 != 3)
          {
            if (v21 == 254)
            {
              goto LABEL_81;
            }

            goto LABEL_47;
          }

          *(v7 + 658) = v16;
          *(v7 + 656) = *(v7 + 642);
        }

        v8 = 1;
      }

LABEL_60:
      LOBYTE(v16) = v16 + 1;
      v15 = v16;
      if (v16 >= v12)
      {
        goto LABEL_61;
      }
    }
  }

  if (a5)
  {
LABEL_4:
    LOBYTE(v8) = 0;
    v9 = v7;
    goto LABEL_5;
  }

  if (v8 == 2)
  {
    goto LABEL_22;
  }

LABEL_61:
  if (v8 == 4)
  {
    v31 = *(v7 + 656);
    *(v7 + 642) = v31;
    v32 = *(v7 + 662);
    if (v32 - 1 == *(v7 + 658))
    {
      LOBYTE(v8) = 0;
      *(v7 + 642) = ++v31;
    }

    else
    {
      LOBYTE(v8) = 4;
    }
  }

  else
  {
    v31 = *(v7 + 642) + 1;
    *(v7 + 642) = v31;
    v32 = *(v7 + 662);
  }

  v33 = *(v7 + 652);
  v34 = *(v7 + 665);
  a5 = 22;
  if (v33 > ~v34 || v33 + v34 <= v32 * v31)
  {
LABEL_83:
    *(v7 + 644) = 0;
    v9 = v7;
    goto LABEL_84;
  }

  a5 = sub_297E981BC(v7);
  v9 = v55;
LABEL_5:
  *(v9 + 644) = v8;
  if (a5 == 13)
  {
    return sub_297E4DFAC(0, &v56, 8, 5u, "phFriNfc_T5T_H_ProcessDynamicRdNdef");
  }

LABEL_84:
  v43 = *(v7 + 646);
  if (*(v7 + 646))
  {
    v44 = a5;
  }

  else
  {
    v44 = 157;
  }

  if (v44)
  {
    goto LABEL_107;
  }

  v45 = *(v9 + 248);
  if (v45 > v43)
  {
    *(v9 + 248) = v43;
    v45 = v43;
  }

  v46 = *(v7 + 660);
  if (*(v7 + 660))
  {
    if (!*(v9 + 560))
    {
      if (v45 > v46)
      {
        *(v9 + 248) = v46;
      }

      goto LABEL_101;
    }
  }

  else if (!*(v9 + 560))
  {
    v44 = 26;
    goto LABEL_107;
  }

  *(v7 + 660) = v43;
  if (v43 <= 0xFE)
  {
    v47 = 2;
  }

  else
  {
    v47 = 4;
  }

  v25 = v47 + *(v7 + 658) >= *(v7 + 662);
  v48 = *(v7 + 656);
  if (v25)
  {
    ++v48;
  }

  *(v7 + 640) = v48;
LABEL_101:
  if (*(v7 + 663))
  {
    v49 = sub_297E97C20(v9);
  }

  else
  {
    v49 = sub_297E96A20(v9, 32, 0, 0);
  }

  v44 = v49;
  if (v49 != 13)
  {
    v9 = v55;
LABEL_107:
    sub_297E97D6C(v9, v44);
  }

  return sub_297E4DFAC(0, &v56, 8, 5u, "phFriNfc_T5T_H_ProcessDynamicRdNdef");
}

uint64_t sub_297E98B4C(uint64_t a1, uint64_t a2)
{
  Memory_Typed = 0;
  v10 = a1;
  v8 = 0;
  sub_297E4E1B4(0, &v10, 8, 5u, "phFriNfc_NDEF_Init");
  sub_297E57170(v10, &Memory_Typed);
  sub_297E4F0E8(v10, &v8);
  v3 = 1;
  if (a2 && v10 && v8)
  {
    if (Memory_Typed || (Memory_Typed = phOsalNfc_GetMemory_Typed()) != 0)
    {
      phOsalNfc_SetMemory();
      v5 = Memory_Typed;
      v4 = v10;
      *(Memory_Typed + 224) = a2;
      *(v5 + 2712) = v4;
      v6 = v8;
      *(v5 + 2720) = *(v8 + 9792);
      *(v5 + 2728) = v6;
      sub_297E9F46C(v4, v5);
      v3 = 0;
    }

    else
    {
      v3 = 12;
    }
  }

  sub_297E4DFAC(0, &v10, 8, 5u, "phFriNfc_NDEF_Init");
  return v3;
}

uint64_t sub_297E98C58(uint64_t a1, char a2)
{
  v10 = 0;
  v11 = a1;
  sub_297E4E1B4(0, &v11, 8, 5u, "phFriNfc_NDEF_Reset");
  sub_297E57170(v11, &v10);
  v3 = v10;
  if (v10)
  {
    *(v10 + 240) = v10 + 266;
    *(v3 + 248) = 260;
    *(v3 + 264) = 260;
    v4 = *(*(v3 + 224) + 4);
    v5 = v4 > 0x13;
    v6 = (1 << v4) & 0x8E800;
    if (!v5 && v6 != 0)
    {
      *(v3 + 672) = v3 + 536;
      *(v3 + 536) = 0;
      *(v3 + 664) = 0;
    }

    v8 = 0;
    *(v3 + 528) = v3 + 536;
    *(v3 + 65) = a2;
  }

  else
  {
    v8 = 49;
  }

  sub_297E4DFAC(0, &v11, 8, 5u, "phFriNfc_NDEF_Reset");
  return v8;
}

uint64_t sub_297E98D38(uint64_t a1, uint64_t a2)
{
  sub_297E4E1B4(2, a1, 8, 5u, "phFriNfc_NDEF_SendData");
  if (a1 && (v4 = *(a1 + 264), *(a1 + 264)) && (v5 = *(a1 + 526), *(a1 + 526)) && (v6 = *(a1 + 224)) != 0)
  {
    v7 = *(a1 + 232);
    *(a1 + 568) = v7;
    v8 = *(v6 + 4);
    if (v8 == 16 || v8 == 12)
    {
      *(a1 + 572) = *(a1 + 266);
      v13 = v5 - 1;
      if ((v7 & 0xFFFFFFFE) == 0x60)
      {
        v10 = *(v6 + 18);
        *(a1 + 600) = a1 + 2765;
        if (v10 != 7 && v10 != 4)
        {
          *(a1 + 608) = v13;
          v11 = 20;
          goto LABEL_15;
        }

        phOsalNfc_MemCopy();
        phOsalNfc_MemCopy();
        v13 = v5 + 3;
        v4 = *(a1 + 264);
        v6 = *(a1 + 224);
      }

      else
      {
        *(a1 + 600) = a1 + 267;
      }
    }

    else
    {
      *(a1 + 600) = a1 + 266;
      v13 = v5;
    }

    *(a1 + 608) = v13;
    *(a1 + 616) = a1 + 266;
    *(a1 + 624) = v4;
    *(a1 + 574) = 500;
    v11 = sub_297EA14F4(v6, a1 + 568, a2, *(a1 + 2728));
  }

  else
  {
    v11 = 1;
  }

LABEL_15:
  sub_297E4DFAC(2, a1, 8, 5u, "phFriNfc_NDEF_SendData");
  return v11;
}

uint64_t sub_297E98EA8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v11 = 0;
  v12 = 0;
  sub_297E4E1B4(2, a1, 8, 5u, "phFriNfc_NDEF_Reconnect");
  v6 = 1;
  if (a1 && a2 && a3)
  {
    v7 = *(a1 + 2728);
    if (v7 && ((v8 = v7 + 188, !sub_297E55558(v7[386], v7[188])) ? (v9 = *v8) : (v9 = 0, *v8 = 0, v7[189] = 0), v12 = v9, !sub_297ECD484(*(a1 + 2728), &v11, &v12, 0)))
    {
      v6 = phLibNfc_RemoteDev_Connect(v7[1223], v11, a2, a1);
    }

    else
    {
      v6 = 255;
    }
  }

  sub_297E4DFAC(2, a1, 8, 5u, "phFriNfc_NDEF_Reconnect");
  return v6;
}

uint64_t sub_297E98F98(uint64_t a1, uint64_t a2, uint64_t a3)
{
  sub_297E4E1B4(2, a1, 8, 5u, "phFriNfc_NDEF_Connect");
  v6 = 1;
  if (a1 && a2 && a3)
  {
    v7 = *(a1 + 2728);
    if (v7)
    {
      v6 = phLibNfc_RemoteDev_Connect(*(v7 + 9784), a3, a2, a1);
    }

    else
    {
      v6 = 255;
    }
  }

  sub_297E4DFAC(2, a1, 8, 5u, "phFriNfc_NDEF_Connect");
  return v6;
}

uint64_t sub_297E9903C(uint64_t a1, int a2)
{
  v12 = a2;
  v11 = 0;
  sub_297E4E1B4(2, a1, 7, 5u, "phHciNfc_CoreInit");
  if (a1)
  {
    sub_297E4E1B4(2, a1, 7, 5u, "phHciNfc_CoreInitialiseContext");
    phOsalNfc_SetMemory();
    *(a1 + 52) = 0;
    *(a1 + 56) = 0;
    *a1 = 0;
    *(a1 + 32) = 0;
    *(a1 + 40) = 0;
    *(a1 + 47) = 0;
    sub_297E4E1B4(2, a1, 7, 5u, "phHciNfc_CoreInitRxData");
    *(a1 + 80) = 0u;
    *(a1 + 96) = 0u;
    *(a1 + 64) = 0u;
    memset_pattern16((a1 + 112), &unk_297F13230, 0xCuLL);
    *(a1 + 132) = 0;
    *(a1 + 124) = 0;
    *(a1 + 140) = 0;
    sub_297E4DFAC(2, a1, 7, 5u, "phHciNfc_CoreInitRxData");
    *(a1 + 840) = 0;
    *(a1 + 852) = 10000;
    *(a1 + 848) = 0;
    *(a1 + 856) = 0;
    *(a1 + 868) = 2000;
    *(a1 + 864) = 0;
    *(a1 + 872) = 0;
    *(a1 + 884) = 2000;
    *(a1 + 880) = 0;
    v4 = &gphNfc_DebugInfo_Sec;
    if (!*(a1 + 956))
    {
      v4 = &gphNfc_DebugInfo_Prim;
    }

    *v4 &= ~8u;
    phOsalNfc_SetMemory();
    phOsalNfc_SetMemory();
    phOsalNfc_SetMemory();
    *(a1 + 952) = 0;
    sub_297E4DFAC(2, a1, 7, 5u, "phHciNfc_CoreInitialiseContext");
    *(a1 + 956) = a2;
    v5 = sub_297F07378(*(a1 + 792), *(a1 + 800), 0, sub_297E99340, a1);
    if (v5)
    {
      v6 = v5;
      v7 = "phHciNfc_CoreInit:Failed to register HCI Receive Callback with NCI";
    }

    else
    {
      sub_297E4E0B0(1, a1 + 956, 7, 4u, "phHciNfc_CoreInit:Receive Data Registration Successful with NCI");
      LODWORD(v11) = 0;
      BYTE4(v11) = 1;
      v9 = sub_297E9D594(a1, &v11, sub_297E9E6C4, a1);
      if (v9)
      {
        v6 = v9;
        v7 = "phHciNfc_CoreInit:Failed to register Callback for Admin pipe commands!";
      }

      else
      {
        sub_297E4E0B0(1, a1 + 956, 7, 4u, "phHciNfc_CoreInit:Adm pipe Callback for Rx Cmds registered!");
        LODWORD(v11) = 1;
        BYTE4(v11) = 1;
        v6 = sub_297E9D594(a1, &v11, sub_297E9E2C4, a1);
        if (!v6)
        {
          sub_297E4E0B0(1, a1 + 956, 7, 4u, "phHciNfc_CoreInit:Adm pipe Callback for Rx Events registered!");
          goto LABEL_13;
        }

        v7 = "phHciNfc_CoreInit:Failed to register Callback for Admin pipe events!";
      }
    }

    v8 = (a1 + 956);
  }

  else
  {
    v7 = "phHciNfc_CoreInit:Invalid Context";
    v6 = 1;
    v8 = &v12;
  }

  sub_297E4E0B0(1, v8, 7, 1u, v7);
LABEL_13:
  sub_297E4DFAC(2, a1, 7, 5u, "phHciNfc_CoreInit");
  return v6;
}

uint64_t sub_297E99340(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v26 = 0;
  Memory_Typed = 0;
  sub_297E4E1B4(2, a1, 7, 5u, "phHciNfc_CoreRecvCB");
  if (!a1 || (v6 = *(a1 + 960)) == 0)
  {
    v8 = "phHciNfc_CoreRecvCB:Invalid HCI Context received from Lower Layer ";
    v9 = 2;
    v10 = a1;
    goto LABEL_10;
  }

  if (!a2)
  {
    v8 = "phHciNfc_CoreRecvCB:Invalid Information received from lower layer ";
    goto LABEL_9;
  }

  if (a3)
  {
    sub_297E4E0B0(1, a1 + 956, 7, 1u, " phHciNfc_CoreRecvCB:Failed Status from lower layer");
    sub_297EEAEB4(a1);
    v7 = *(a1 + 184);
    if (v7)
    {
      *(a1 + 184) = 0;
      v7(*(a1 + 192), a3, 0);
    }

    goto LABEL_11;
  }

  v12 = **(a2 + 8);
  sub_297E4E1B4(2, a1, 7, 5u, "phHciNfc_GetHciPipeIndex");
  v13 = 0;
  v14 = 0;
  while (1)
  {
    v15 = *(a1 + 8 * v13 + 64);
    if (v15)
    {
      break;
    }

LABEL_17:
    if (++v13 == 6)
    {
      goto LABEL_20;
    }
  }

  if (((*v15 ^ v12) & 0x7F) != 0)
  {
    ++v14;
    goto LABEL_17;
  }

  v14 = v13;
LABEL_20:
  sub_297E4DFAC(2, a1, 7, 5u, "phHciNfc_GetHciPipeIndex");
  v16 = *(a2 + 16);
  if (v16 > 0x104)
  {
    v22 = " phHciNfc_CoreRecvCB:HCP Packet is bigger than PHHCI_HCP_MAX_PACKET_SIZE";
    goto LABEL_37;
  }

  v17 = sub_297ED646C(a1, a1, v16, v14);
  if (!v17)
  {
    v22 = " phHciNfc_CoreRecvCB:HCI Core Receive- Failed To Allocate Memory for Node";
LABEL_37:
    sub_297E4E0B0(1, a1 + 956, 7, 1u, v22);
    if ((v12 & 0x80) != 0)
    {
      goto LABEL_23;
    }

LABEL_38:
    sub_297E4E0B0(1, a1 + 956, 7, 4u, "phHciNfc_CoreRecvCB:Buffered Received Chained HCI packets");
    v23 = *(v6 + 6344);
    if ((v23 || *(v6 + 6360)) && *(a1 + 968) == 1)
    {
      *(a1 + 968) = 0;
      v24 = *(a1 + 840);
      if (!v24 || v24 == 0xFFFFFFFFFFFFLL)
      {
        v8 = "phHciNfc_CoreRecvCB: SE Transceive Timer Already deleted";
        goto LABEL_9;
      }

      if (!v23 || (v25 = *(v6 + 756), v25 < 0x7D0))
      {
        v25 = *(v6 + 640);
        if (v25 >> 4 < 0x271)
        {
          v25 = 10000;
        }
      }

      *(a1 + 852) = v25;
      if (*(v6 + 492) == 1 && *(v6 + 2992) == 1 && v25 <= 0xAFC7 && !*(v6 + 2994))
      {
        *(a1 + 852) = 45000;
      }

      sub_297EFD338(*(a1 + 956), v24);
      if (phOsalNfc_Timer_Start())
      {
        phOsalNfc_Timer_Delete();
        *(a1 + 840) = 0xFFFFFFFFFFFFLL;
        v8 = "phHciNfc_CoreRecvCB: SE TxRx Timer Start Failed";
        goto LABEL_9;
      }

      sub_297E50EBC(1, a1 + 956, 7, 4u, "phHciNfc_CoreRecvCB:Hci Response Timer Restarted for Timeout");
    }

    goto LABEL_11;
  }

  v18 = v17;
  phOsalNfc_MemCopy();
  *(v18 + 260) = *(a2 + 16);
  if ((v12 & 0x80) == 0)
  {
    goto LABEL_38;
  }

LABEL_23:
  *(a1 + 968) = 1;
  Memory_Typed = 0;
  if (*(a1 + 4 * v14 + 124) && (Memory_Typed = phOsalNfc_GetMemory_Typed()) == 0)
  {
    sub_297E4E0B0(1, a1 + 956, 7, 1u, "phHciNfc_AnySetParameter:Memory Allocation Failed");
    return 12;
  }

  else
  {
    v19 = sub_297ED6614(a1, a1, &v26, v14);
    if (BYTE2(v26) == 2)
    {
      v20 = *(a1 + 872);
      if (v20)
      {
        if (v20 != 0xFFFFFFFFFFFFLL)
        {
          phOsalNfc_Timer_Stop();
          phOsalNfc_Timer_Delete();
          sub_297E4E0B0(1, a1 + 956, 7, 4u, "phHciNfc_CoreRecvCB : HCI Cmd Rsp Timer deleted successfully");
          *(a1 + 872) = 0;
          v21 = &gphNfc_DebugInfo_Sec;
          if (!*(a1 + 956))
          {
            v21 = &gphNfc_DebugInfo_Prim;
          }

          *v21 &= ~8u;
        }
      }
    }

    if (v19)
    {
      if (Memory_Typed)
      {
        phOsalNfc_FreeMemory();
        Memory_Typed = 0;
      }

      v8 = " phHciNfc_CoreRecvCB:HCI Core - HCI Packet Extraction Failed";
LABEL_9:
      v9 = 1;
      v10 = a1 + 956;
LABEL_10:
      sub_297E4E0B0(v9, v10, 7, 1u, v8);
    }

    else
    {
      sub_297ED62FC(a1, a1, v14);
      sub_297E50DB0(1, a1 + 956, 7, 4u, "Rx HCP:PipeID");
      sub_297E50DB0(1, a1 + 956, 7, 4u, "Rx HCP:MsgType");
      sub_297E50DB0(1, a1 + 956, 7, 4u, "Rx HCP:Ins");
      sub_297E4E880(1, a1 + 956, 7, 4u, "Rx HCP:Data", Memory_Typed, WORD2(v26));
      sub_297EEB1EC(a1, &v26, 0);
      if (Memory_Typed)
      {
        phOsalNfc_FreeMemory();
        Memory_Typed = 0;
      }
    }

LABEL_11:
    sub_297E4DFAC(2, a1, 7, 5u, "phHciNfc_CoreRecvCB");
  }

  return a3;
}

uint64_t sub_297E99840(void *a1)
{
  v7 = 0;
  sub_297E4E1B4(2, a1, 7, 5u, "phHciNfc_CoreDeInit");
  if (a1)
  {
    sub_297E99A28(a1);
    if (a1[19])
    {
      sub_297E4E0B0(1, a1 + 956, 7, 4u, "phHciNfc_CoreDeInit: Releasing HCI send buffer memory");
      if (*(a1[19] + 8))
      {
        phOsalNfc_FreeMemory();
        *(a1[19] + 8) = 0;
      }

      phOsalNfc_FreeMemory();
      a1[19] = 0;
    }

    v2 = a1[99];
    if (v2)
    {
      v3 = 0;
      v4 = 0;
      do
      {
        v5 = *(&unk_2A18BDDC0 + 14 * v4 + 4);
        if (v3)
        {
          break;
        }

        v3 = 1;
        v4 = 1;
      }

      while (v5 != v2);
      if (v5 == v2)
      {
        sub_297F07378(v2, a1[100], 1, sub_297E99340, a1);
      }
    }

    sub_297E4E0B0(1, a1 + 956, 7, 4u, "phHciNfc_CoreDeInit:phHciNfc_CoreRecvCB unregistered with NCI");
    LODWORD(v7) = 0;
    BYTE4(v7) = 1;
    sub_297E9DCD0(a1, &v7, sub_297E9E6C4);
    sub_297E4E0B0(1, a1 + 956, 7, 4u, "phHciNfc_CoreDeInit:phHciNfc_ReceiveAdminNotifyCmd unregistered for ADM Cmds");
    LODWORD(v7) = 1;
    BYTE4(v7) = 1;
    sub_297E9DCD0(a1, &v7, sub_297E9E2C4);
    sub_297E4E0B0(1, a1 + 956, 7, 4u, "phHciNfc_CoreDeInit:phHciNfc_ReceiveAdminNotifyEvt unregistered for ADM Events");
    sub_297E9E0F8(a1);
  }

  else
  {
    sub_297E4E0B0(2, 0, 7, 1u, "phHciNfc_CoreDeInit:Failed,Invalid Context");
  }

  return sub_297E4DFAC(2, a1, 7, 5u, "phHciNfc_CoreDeInit");
}

uint64_t sub_297E99A28(uint64_t a1)
{
  sub_297E4E1B4(2, a1, 7, 5u, "phHciNfc_CoreAbortAllTran");
  if (a1)
  {
    phOsalNfc_SetMemory();
    *a1 = 0;
    *(a1 + 32) = 0;
    *(a1 + 40) = 0;
    if (*(a1 + 944))
    {
      phOsalNfc_FreeMemory();
      *(a1 + 944) = 0;
    }

    sub_297E99BD8(a1);
    v2 = *(a1 + 936);
    if (v2 && v2 != 0xFFFFFFFFFFFFLL)
    {
      phOsalNfc_Timer_Stop();
      phOsalNfc_Timer_Delete();
      phOsalNfc_SetMemory();
      *(a1 + 904) = 0;
      *(a1 + 936) = 0;
      *(a1 + 892) = -86;
    }

    *(a1 + 953) = 0;
  }

  else
  {
    sub_297E4E0B0(2, 0, 7, 1u, "phHciNfc_CoreAbortAllTran: Invalid HCI Context");
  }

  return sub_297E4DFAC(2, a1, 7, 5u, "phHciNfc_CoreAbortAllTran");
}

uint64_t sub_297E99B38(uint64_t a1, uint64_t a2, int a3)
{
  sub_297E4E1B4(2, a1, 7, 5u, "phHciNfc_GetAllocatedPipeIndex");
  if (a2)
  {
    v6 = 0;
    while (1)
    {
      v7 = *(a2 + 64 + 8 * v6);
      if (v7)
      {
        if ((*v7 & 0x7F) == a3)
        {
          break;
        }
      }

      if (++v6 == 6)
      {
        goto LABEL_6;
      }
    }
  }

  else
  {
LABEL_6:
    LOBYTE(v6) = -1;
  }

  sub_297E4DFAC(2, a1, 7, 5u, "phHciNfc_GetAllocatedPipeIndex");
  return v6;
}

uint64_t sub_297E99BD8(uint64_t a1)
{
  sub_297E4E1B4(2, a1, 7, 5u, "phHciNfc_CoreClearRxBuffers");
  if (a1)
  {
    for (i = 0; i != 6; ++i)
    {
      sub_297ED62FC(a1, a1, i);
      *(a1 + 8 * i + 64) = 0;
    }
  }

  else
  {
    sub_297E4E0B0(2, 0, 7, 1u, "phHciNfc_CoreClearRxBuffers: Invalid HCI Context");
  }

  return sub_297E4DFAC(2, a1, 7, 5u, "phHciNfc_CoreClearRxBuffers");
}

uint64_t sub_297E99C88(uint64_t a1, __int128 *a2, uint64_t a3, uint64_t a4)
{
  v27 = 0;
  v28 = 0;
  sub_297E4E1B4(2, a1, 7, 5u, "phHciNfc_CoreSend");
  if (!a1 || !a2)
  {
    v16 = "phHciNfc_CoreSend:Invalid HCI Context or Send params";
    v14 = 1;
    v17 = 2;
    v18 = a1;
    goto LABEL_28;
  }

  v8 = *(a2 + 1);
  BYTE1(v27) = *(a2 + 1);
  v9 = *(a2 + 2);
  BYTE2(v27) = *(a2 + 2);
  LOBYTE(v27) = *a2;
  HIDWORD(v27) = *(a2 + 1);
  v28 = *(a2 + 1);
  if (v27 == 1 && v9 == 1 && v8 == 12)
  {
    v12 = 3;
  }

  else
  {
    v12 = 1;
  }

  v13 = sub_297E76A8C(*(a1 + 792), &v27, *(a1 + 800), sub_297E9A1F0, a1, *(a1 + 953), v12);
  if (v13 != 111)
  {
    v14 = v13;
    if (v13 == 13)
    {
      *(a1 + 10) = BYTE2(v27);
      *(a1 + 8) = v27;
      *(a1 + 12) = HIDWORD(v27);
      *(a1 + 16) = v28;
      if (!*(a2 + 2))
      {
        *(a1 + 884) = 2000;
        sub_297E4E1B4(2, a1, 7, 5u, "phHciNfc_CreateHCICmdRspTimer");
        v15 = phOsalNfc_Timer_Create();
        *(a1 + 872) = v15;
        if (v15 != 0xFFFFFFFFFFFFLL && v15)
        {
          sub_297E4E0B0(1, a1 + 956, 7, 4u, "phHciNfc_CreateHCICmdRspTimer : HCI Cmd Rsp Timer Created successfully");
          sub_297E4DFAC(2, a1, 7, 5u, "phHciNfc_CreateHCICmdRspTimer");
          v25 = &gphNfc_DebugInfo_Sec;
          if (!*(a1 + 956))
          {
            v25 = &gphNfc_DebugInfo_Prim;
          }

          *v25 &= ~8u;
          if (phOsalNfc_Timer_Start())
          {
            sub_297E4E0B0(1, a1 + 956, 7, 1u, "phLibNfc_HciDataSend: HCI Cmd Rsp Timer Start Failed");
            v26 = phOsalNfc_Timer_Delete();
            *(a1 + 872) = 0;
            if (v26)
            {
              sub_297E4E0B0(1, a1 + 956, 7, 1u, "phLibNfc_HciDataSend: HCI Cmd Rsp Timer Delete Failed");
            }

            v14 = 255;
            goto LABEL_19;
          }

          sub_297E50DB0(1, a1 + 956, 7, 4u, "phLibNfc_HciDataSend: HCI Cmd Rsp Timer Started with Timeout");
        }

        else
        {
          sub_297E4E0B0(1, a1 + 956, 7, 1u, "phHciNfc_CreateHCICmdRspTimer : HCI Cmd Rsp Timer Create failed");
          sub_297E4DFAC(2, a1, 7, 5u, "phHciNfc_CreateHCICmdRspTimer");
        }
      }

      v14 = 13;
LABEL_19:
      *(a1 + 32) = a3;
      *(a1 + 40) = a4;
      sub_297E4E0B0(1, a1 + 956, 7, 4u, "phHciNfc_CoreSend:HCP Packet Sent to NCI ");
      sub_297E50DB0(1, a1 + 956, 7, 4u, "Tx HCP:PipeID");
      sub_297E50DB0(1, a1 + 956, 7, 4u, "Tx HCP:MsgType");
      sub_297E50DB0(1, a1 + 956, 7, 4u, "Tx HCP:Ins");
      sub_297E4E880(1, a1 + 956, 7, 4u, "Tx HCP:Data", *(a2 + 1), *(a2 + 1));
      *(a1 + 952) = 0;
      goto LABEL_29;
    }

    v16 = "phHciNfc_CoreSend: HCI packet Send Failed ";
    v18 = a1 + 956;
    v17 = 1;
LABEL_28:
    sub_297E4E0B0(v17, v18, 7, 1u, v16);
    goto LABEL_29;
  }

  *a1 = 0;
  *(a1 + 892) = 85;
  v19 = *(a1 + 936);
  if (v19 && v19 != 0xFFFFFFFFFFFFLL)
  {
    phOsalNfc_Timer_Delete();
    *(a1 + 936) = 0xFFFFFFFFFFFFLL;
  }

  v20 = phOsalNfc_Timer_Create();
  *(a1 + 936) = v20;
  if (v20 != 0xFFFFFFFFFFFFLL && v20)
  {
    sub_297E50EBC(1, a1 + 956, 7, 4u, "phHciNfc:NCI BUSY,Retry Cnt=");
    if (*(a1 + 952) > 4u)
    {
      v23 = &gphNfc_DebugInfo_Sec;
      if (!*(a1 + 956))
      {
        v23 = &gphNfc_DebugInfo_Prim;
      }

      v23[1] |= 0x4000000u;
      sub_297E4E0B0(1, a1 + 956, 7, 1u, "phHciNfc_CoreSend:Maximum HCI Send Retry Count reached");
      *(a1 + 952) = 0;
      v24 = *(a1 + 960);
      if (v24)
      {
        sub_297E96818(*(v24 + 9784), 202);
      }
    }

    else
    {
      sub_297E4E1B4(2, a1, 7, 5u, "phHciNfc_CacheHciPacket");
      *(a1 + 920) = a3;
      *(a1 + 928) = a4;
      v22 = *a2;
      *(a1 + 912) = *(a2 + 2);
      *(a1 + 896) = v22;
      *(a1 + 904) = *(a2 + 1);
      sub_297E4DFAC(2, a1, 7, 5u, "phHciNfc_CacheHciPacket");
      if (!phOsalNfc_Timer_Start())
      {
        sub_297E50DB0(1, a1 + 956, 7, 4u, "phHciNfc_CoreSend:dwHciResendPacketTimerId Started, Timeout");
        v14 = 13;
        goto LABEL_29;
      }

      sub_297E4E0B0(1, a1 + 956, 7, 1u, "phHciNfc_CoreSend:HCI Resend Packet Timer Start failed");
      phOsalNfc_Timer_Delete();
      *(a1 + 936) = 0;
      *(a1 + 952) = 0;
    }

    v14 = 255;
  }

  else
  {
    sub_297E4E0B0(1, a1 + 956, 7, 1u, "phHciNfc_CoreSend:HCI Resend Packet Timer Create failed");
    *(a1 + 952) = 0;
    v14 = 12;
  }

LABEL_29:
  sub_297E4DFAC(2, a1, 7, 5u, "phHciNfc_CoreSend");
  return v14;
}

uint64_t sub_297E9A1F0(uint64_t a1, int a2)
{
  sub_297E4E1B4(2, a1, 7, 5u, "phHciNfc_HciCoreLowerLayerSendCb");
  if (a1)
  {
    if (a2)
    {
      v4 = "phHciNfc_HciCoreLowerLayerSendCb: HCI Tx Failed";
    }

    else
    {
      v4 = "phHciNfc_HciCoreLowerLayerSendCb: HCI Send Complete";
    }

    sub_297E4E0B0(1, a1 + 956, 7, 4u, v4);
    v6 = *(a1 + 32);
    v5 = *(a1 + 40);
    *a1 = 0;
    *(a1 + 12) = 0;
    *(a1 + 32) = 0;
    *(a1 + 40) = 0;
    if (v6)
    {
      if (a2)
      {
        v7 = 255;
      }

      else
      {
        v7 = 0;
      }

      v6(v5, v7);
    }
  }

  else
  {
    sub_297E4E0B0(2, 0, 7, 1u, "phHciNfc_HciCoreLowerLayerSendCb:Invalid HCI Context received from Lower Layer ");
  }

  return sub_297E4DFAC(2, a1, 7, 5u, "phHciNfc_HciCoreLowerLayerSendCb");
}

uint64_t sub_297E9A2CC(uint64_t a1, uint64_t a2)
{
  sub_297E4E1B4(2, a2, 4, 5u, "phHciNfc_HciCmdRspCb");
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
  if (v5 != a2)
  {
LABEL_6:
    v6 = "phHciNfc_HciCmdRspCb :Invalid Context";
LABEL_7:
    sub_297E4E0B0(2, a2, 4, 1u, v6);
    goto LABEL_8;
  }

  v8 = *(a2 + 512);
  if (!v8)
  {
    goto LABEL_16;
  }

  v9 = 0;
  v10 = 0;
  do
  {
    v11 = *(&unk_2A18BDDC0 + 14 * v10 + 13);
    if (v9)
    {
      break;
    }

    v9 = 1;
    v10 = 1;
  }

  while (v11 != v8);
  if (v11 != v8)
  {
LABEL_16:
    v6 = "phHciNfc_HciCmdRspCb :Invalid or NULL pHciContext";
    goto LABEL_7;
  }

  v12 = &gphNfc_DebugInfo_Sec;
  if (!*(v8 + 956))
  {
    v12 = &gphNfc_DebugInfo_Prim;
  }

  *v12 |= 8u;
  sub_297E4E0B0(1, v8 + 956, 7, 1u, "phHciNfc_HciCmdRspCb : HCI Command Response Packet Timer Expired");
  phOsalNfc_Timer_Stop();
  phOsalNfc_Timer_Delete();
  sub_297E4E0B0(1, v8 + 956, 7, 1u, "phHciNfc_HciCmdRspCb : HCI Command Response timer deleted successfully");
  *(v8 + 884) = 2000;
  *(v8 + 872) = 0xFFFFFFFFFFFFLL;
  v14 = *(v8 + 184);
  v13 = *(v8 + 192);
  *(v8 + 953) = 0;
  *(v8 + 184) = 0;
  *(v8 + 192) = 0;
  sub_297E96818(*(a2 + 9784), 44);
  if (*(a2 + 754) == 1)
  {
    *(a2 + 754) = 0;
    v15 = 218;
  }

  else
  {
    sub_297E8CBD4(*(a2 + 3088), 0);
    v15 = 255;
  }

  if (v14)
  {
    v14(v13, v15, 0);
  }

LABEL_8:

  return sub_297E4DFAC(2, a2, 4, 5u, "phHciNfc_HciCmdRspCb");
}

uint64_t sub_297E9A4B0(uint64_t a1, uint64_t a2)
{
  v14 = 0uLL;
  v15 = 0;
  sub_297E4E1B4(2, a2, 4, 5u, "phHciNfc_HciResendPacketCb");
  sub_297E4E0B0(2, a2, 4, 2u, "******HCI Resend Packet Timer Expired********");
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
    v7 = *(a2 + 512);
    if (!v7)
    {
      goto LABEL_13;
    }

    v8 = 0;
    v9 = 0;
    do
    {
      v10 = *(&unk_2A18BDDC0 + 14 * v9 + 13);
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
      phOsalNfc_Timer_Stop();
      phOsalNfc_Timer_Delete();
      *(v7 + 936) = 0;
      *(v7 + 892) = -86;
      v14 = *(v7 + 896);
      v11 = *(v7 + 912);
      *(&v14 + 1) = *(v7 + 904);
      v15 = v11;
      v12 = *(v7 + 920);
      v13 = *(v7 + 928);
      if (sub_297E99C88(v7, &v14, v12, v13) == 13)
      {
        if (*(v7 + 897) == 12 && *(v7 + 898) == 1 && *(v7 + 896) == 1)
        {
          *(v7 + 184) = sub_297EED56C;
        }

        ++*(v7 + 952);
      }

      else
      {
        sub_297E4E0B0(1, v7 + 956, 7, 4u, "phHciNfc_HciResendPacketCb:Failed to resend HCP packet");
        sub_297EEAEB4(v7);
        *(v7 + 920) = 0;
        *(v7 + 928) = 0;
        if (v12)
        {
          *(v7 + 952) = 0;
          v12(v13, 255);
          phOsalNfc_SetMemory();
          *(v7 + 904) = 0;
        }
      }
    }

    else
    {
LABEL_13:
      sub_297E4E0B0(2, a2, 4, 1u, "phHciNfc_HciResendPacketCb:Invalid or NULL pHciContext");
    }
  }

  else
  {
LABEL_6:
    sub_297E4E0B0(2, a2, 4, 4u, "phHciNfc_HciResendPacketCb:Invalid Context");
  }

  return sub_297E4DFAC(2, a2, 4, 5u, "phHciNfc_HciResendPacketCb");
}

uint64_t sub_297E9A6EC(uint64_t a1)
{
  sub_297E4E1B4(2, a1, 7, 5u, "phHciNfc_CoreReleaseMemory");
  if (a1)
  {
    if (*(a1 + 944))
    {
      phOsalNfc_FreeMemory();
      *(a1 + 944) = 0;
    }

    v2 = *(a1 + 152);
    if (v2)
    {
      if (*(v2 + 8))
      {
        phOsalNfc_FreeMemory();
        *(*(a1 + 152) + 8) = 0;
      }

      phOsalNfc_FreeMemory();
      *(a1 + 152) = 0;
    }
  }

  else
  {
    sub_297E4E0B0(2, 0, 7, 1u, "phHciNfc_CoreDeInit:Failed,Invalid Context");
  }

  return sub_297E4DFAC(2, a1, 7, 5u, "phHciNfc_CoreReleaseMemory");
}

uint64_t sub_297E9A7B8(uint64_t a1)
{
  v4 = 0u;
  v5 = 0u;
  sub_297E4E1B4(2, a1, 3, 5u, "phNciNfc_SendT3TPollCmd");
  if (a1)
  {
    sub_297E4E0B0(1, a1 + 6524, 3, 4u, "phNciNfc_SendT3TPollCmd:Setting up Command Info to be sent to lower layer ..");
    phOsalNfc_SetMemory();
    *&v4 = 0x100000001;
    DWORD2(v4) = 8;
    *&v5 = *(a1 + 896);
    DWORD2(v5) = *(a1 + 904);
    v2 = sub_297E57BA8(a1 + 936, &v4, a1 + 3800, 2000, sub_297E9B670, a1);
  }

  else
  {
    sub_297E4E0B0(2, 0, 3, 4u, " Invalid Context Param..");
    v2 = 1;
  }

  sub_297E4DFAC(2, a1, 3, 5u, "phNciNfc_SendT3TPollCmd");
  return v2;
}

uint64_t sub_297E9A8CC(uint64_t a1, int a2)
{
  sub_297E4E1B4(2, a1, 3, 5u, "phNciNfc_T3TPollResp");
  if (a1)
  {
    v4 = 255;
    v5 = " T3T Poll Req Failed ..";
    if (!a2 && *(a1 + 3808))
    {
      if (*(a1 + 3800))
      {
        v5 = " T3TPoll Req sent successfully..";
        v4 = 0;
      }

      else
      {
        v4 = 255;
      }
    }

    sub_297E4E0B0(1, a1 + 6524, 3, 4u, v5);
    *(a1 + 4632) = v4;
  }

  else
  {
    sub_297E4E0B0(2, 0, 3, 4u, " Invalid Context Param..");
    v4 = 1;
  }

  sub_297E4DFAC(2, a1, 3, 5u, "phNciNfc_T3TPollResp");
  return v4;
}

uint64_t sub_297E9A9AC(uint64_t a1, uint64_t a2)
{
  v8 = 0;
  v9 = 0;
  sub_297E4E1B4(2, a1, 3, 5u, "phNciNfc_CompleteT3TPollSequence");
  if (a1)
  {
    if (*(a1 + 896))
    {
      sub_297E4E0B0(1, a1 + 6524, 3, 4u, " Freeing T3TPollReq Buff..");
      sub_297F0522C(a1);
    }

    if (a2)
    {
      sub_297E4E0B0(1, a1 + 6524, 3, 1u, " Error in T3TPollReq handling ");
      sub_297E5B994(a1, a2, 0);
    }

    else
    {
      *(a1 + 800) = *(a1 + 3424);
      *(a1 + 808) = *(a1 + 3752);
      v8 = 0x100000003;
      LODWORD(v9) = 8;
      v4 = sub_297E59AEC(a1 + 936, &v8, sub_297E9B1D0, a1);
      if (v4)
      {
        a2 = v4;
        v5 = "T3T Ntf Registration failed";
      }

      else
      {
        sub_297E4E0B0(1, a1 + 6524, 3, 4u, "T3T Ntf successfully Registered");
        v6 = *(a1 + 4696);
        if (v6 == 0xFFFFFFFFFFFFLL)
        {
          a2 = 0;
          goto LABEL_14;
        }

        sub_297E5A304(*(a1 + 6524), v6);
        *(a1 + 6512) = 0;
        a2 = phOsalNfc_Timer_Start();
        if (a2)
        {
          sub_297E4E0B0(1, a1 + 6524, 3, 1u, "T3T Ntf timer start failed\n");
          goto LABEL_14;
        }

        sub_297E687D8(1, a1 + 6524, *(a1 + 4696), 3, 4u, "phNciNfc_CompleteT3TPollSequence");
        *(a1 + 3424) = 0;
        v5 = "T3T Ntf timer started\n";
      }

      sub_297E4E0B0(1, a1 + 6524, 3, 4u, v5);
    }
  }

  else
  {
    sub_297E4E0B0(2, 0, 3, 4u, " Invalid Context Param..");
    a2 = 1;
  }

LABEL_14:
  sub_297E4DFAC(2, a1, 3, 5u, "phNciNfc_CompleteT3TPollSequence");
  return a2;
}

uint64_t sub_297E9ABE8(uint64_t a1, uint64_t a2, uint64_t a3, int a4)
{
  sub_297E4E1B4(2, a1, 3, 5u, "phNciNfc_RdrFInit");
  if (a1 && a2 && a3 && a4)
  {
    v8 = *(a2 + 12);
    if (*(a2 + 20) == 2)
    {
      if (v8 == 3 && *(a2 + 16) == 5)
      {
        v9 = 23;
LABEL_13:
        *(a2 + 4) = v9;
        sub_297E4E0B0(1, a1 + 6524, 3, 1u, "Invalid remote device!");
LABEL_16:
        v10 = 255;
LABEL_23:
        sub_297E4E0B0(1, a1 + 6524, 3, 1u, "Sequence operations not set!");
        goto LABEL_24;
      }
    }

    else if (v8 == 3 && *(a2 + 16) == 5)
    {
      v9 = 24;
      goto LABEL_13;
    }

    *(a2 + 4) = 18;
    v11 = *(a3 + 7);
    *(a2 + 55) = v11;
    if ((v11 - 3) <= 0xFFFFFFFD)
    {
      sub_297E4E0B0(1, a1 + 6524, 3, 4u, " Invalid BitRate..");
      goto LABEL_16;
    }

    v12 = *(a3 + 8);
    *(a2 + 56) = v12;
    if ((v12 & 0xFFFFFFFD) == 0x10)
    {
      phOsalNfc_SetMemory();
      phOsalNfc_MemCopy();
    }

    else
    {
      sub_297E4E0B0(1, a1 + 6524, 3, 4u, " SensFResResp.not present.");
    }

    if (*(a2 + 4) != 18)
    {
      v10 = 0;
      goto LABEL_23;
    }

    v10 = 0;
    v13 = *(a1 + 4800);
    *v13 = sub_297E9AE08;
    v13[1] = sub_297E9AFA8;
    v13[2] = 0;
    v13[3] = sub_297EFF438;
  }

  else
  {
    sub_297E4E0B0(2, a1, 3, 4u, " Invalid Params..");
    v10 = 1;
  }

LABEL_24:
  sub_297E4DFAC(2, a1, 3, 5u, "phNciNfc_RdrFInit");
  return v10;
}

uint64_t sub_297E9AE08(uint64_t a1)
{
  v5 = 0u;
  v6 = 0u;
  sub_297E4E1B4(2, a1, 3, 5u, "phNciNfc_SendFelicaReq");
  if (a1)
  {
    if (*(a1 + 4552))
    {
      phOsalNfc_SetMemory();
      if (*(a1 + 4584) && **(a1 + 4576) == *(a1 + 4584))
      {
        v2 = *(a1 + 4552);
        LODWORD(v5) = 0;
        if (sub_297E8BB50(a1, v2, (&v5 | 0xC)))
        {
          sub_297E4E0B0(1, a1 + 6524, 3, 4u, " Couldn't Get ConnId..");
          v3 = 255;
        }

        else
        {
          *&v6 = *(a1 + 4576);
          DWORD2(v6) = *(a1 + 4584);
          v3 = sub_297E57BA8(a1 + 936, &v5, a1 + 3800, *(a1 + 4566), sub_297EFF2DC, a1);
          *(a1 + 4566) = 0;
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

  sub_297E4DFAC(2, a1, 3, 5u, "phNciNfc_SendFelicaReq");
  return v3;
}

uint64_t sub_297E9AFA8(uint64_t a1, int a2)
{
  sub_297E4E1B4(2, a1, 3, 5u, "phNciNfc_RecvFelicaResp");
  if (a1)
  {
    if (a2 || (v4 = *(a1 + 3808)) == 0 || (v5 = *(a1 + 3800)) == 0)
    {
      v9 = 255;
      v11 = 255;
      sub_297E4E0B0(1, a1 + 6524, 3, 4u, " Data Receive Failed..");
LABEL_27:
      *(a1 + 4632) = v9;
      goto LABEL_28;
    }

    *(a1 + 4664) = v4 - 1;
    v6 = *(a1 + 4600);
    v7 = *(v5 + v4 - 1);
    if (v7 > 0xB0)
    {
      switch(v7)
      {
        case 0xB1u:
          v11 = 183;
          v8 = " Felica XchgData,PH_NCINFC_STATUS_RF_PROTOCOL_ERROR Detected by NFCC during Data Exchange ";
          goto LABEL_25;
        case 0xB2u:
          v11 = 178;
          v8 = " Felica XchgData,PH_NCINFC_STATUS_RF_TIMEOUT_ERROR Detected by NFCC during Data Exchange ";
          goto LABEL_25;
        case 0xB3u:
          v11 = 184;
          v8 = " Felica XchgData,PH_NCINFC_STATUS_RF_UNEXPECTED_DAT Detected by NFCC during Data Exchange ";
          goto LABEL_25;
      }
    }

    else
    {
      if (!*(v5 + v4 - 1))
      {
        if (v4 - 1 >= v6)
        {
          v4 = *(a1 + 4600);
        }

        else
        {
          --v4;
        }

        v11 = 0;
        goto LABEL_22;
      }

      if (v7 == 2)
      {
        v11 = 181;
        v8 = " Felica XchgData,PH_NCINFC_STATUS_RF_FRAME_CORRUPTED Detected by NFCC during Data Exchange ";
        goto LABEL_25;
      }

      if (v7 == 176)
      {
        v11 = 182;
        v8 = " Felica XchgData,PH_NCINFC_STATUS_RF_TRANSMISSION_ERROR Detected by NFCC during Data Exchange ";
LABEL_25:
        sub_297E4E0B0(1, a1 + 6524, 3, 2u, v8);
        goto LABEL_26;
      }
    }

    v11 = 185;
    sub_297E96818(*(a1 + 6528), v7);
    sub_297E4E0B0(1, a1 + 6524, 3, 2u, " Felica XchgData,Unknown RF related error Detected by NFCC during Data Exchange ");
    if (v4 > v6)
    {
LABEL_26:
      sub_297EFF5D8(a1, &v11);
      v9 = v11;
      goto LABEL_27;
    }

LABEL_22:
    phOsalNfc_MemCopy();
    *(a1 + 4600) = v4;
    goto LABEL_26;
  }

  v11 = 1;
  sub_297E4E0B0(2, 0, 3, 4u, " Invalid Context Param..");
LABEL_28:
  sub_297E4DFAC(2, a1, 3, 5u, "phNciNfc_RecvFelicaResp");
  return v11;
}

uint64_t sub_297E9B1D0(uint64_t a1, uint64_t a2, int a3)
{
  v13 = 0;
  v14 = 0;
  v15 = 0;
  sub_297E4E1B4(2, a1, 3, 5u, "phNciNfc_T3TPollNtf");
  if (!a1)
  {
    sub_297E4E0B0(2, 0, 3, 4u, " Invalid Context Param..");
    v7 = 1;
    goto LABEL_13;
  }

  phOsalNfc_Timer_Stop();
  *(a1 + 6512) = 0;
  sub_297E687D8(1, a1 + 6524, *(a1 + 4696), 3, 4u, "phNciNfc_T3TPollNtf");
  if (!a2 || !*(a2 + 8) || a3 || !*(a2 + 16))
  {
    v6 = " T3T Notification invalid..";
    goto LABEL_9;
  }

  *(&v13 + 1) = 2049;
  v14 = a1;
  v15 = sub_297E9B1D0;
  sub_297E75DFC(a1 + 936, &v13, 3);
  if (**(a2 + 8))
  {
    v6 = " T3T Resp Not Recvd..";
LABEL_9:
    sub_297E4E0B0(1, a1 + 6524, 3, 4u, v6);
    v7 = 255;
    goto LABEL_10;
  }

  sub_297E4E1B4(2, a1, 3, 5u, "phNciNfc_UpdateRemDevInf");
  v10 = *(a2 + 8);
  if (v10)
  {
    if (*(v10 + 1))
    {
      v11 = *(a1 + 4552);
      if (v11)
      {
        v12 = *(v10 + 2);
        *(v11 + 56) = v12;
        if ((v12 & 0xFFFFFFFD) != 0x10)
        {
          sub_297E4E0B0(1, a1 + 6524, 3, 4u, " SensFResResp.not present in T3T Poll Ntf recvd.");
          v7 = 255;
          goto LABEL_20;
        }

        phOsalNfc_SetMemory();
        phOsalNfc_MemCopy();
      }
    }
  }

  v7 = 0;
LABEL_20:
  sub_297E4DFAC(2, a1, 3, 5u, "phNciNfc_UpdateRemDevInf");
LABEL_10:
  v8 = *(a1 + 800);
  if (v8)
  {
    *(a1 + 800) = 0;
    v8(*(a1 + 808), v7, 0);
  }

LABEL_13:
  sub_297E4DFAC(2, a1, 3, 5u, "phNciNfc_T3TPollNtf");
  return v7;
}

uint64_t sub_297E9B40C(uint64_t a1, _BYTE *a2, uint64_t a3, uint64_t a4)
{
  sub_297E4E1B4(2, a1, 3, 5u, "phNciNfc_T3TPollReq");
  if (!a1)
  {
    sub_297E4E0B0(2, 0, 3, 4u, " Invalid Context Param..");
LABEL_9:
    v9 = 1;
    goto LABEL_11;
  }

  if (!a2 || !a3)
  {
    v9 = 1;
    sub_297E4E0B0(1, a1 + 6524, 3, 4u, " Invalid T3T Poll Req Param(s)..");
    goto LABEL_11;
  }

  if (sub_297E9B5A8(*(a1 + 6524), a2))
  {
    goto LABEL_9;
  }

  Memory_Typed = phOsalNfc_GetMemory_Typed();
  if (Memory_Typed)
  {
    *Memory_Typed = *a2;
    Memory_Typed[1] = a2[1];
    Memory_Typed[2] = a2[2];
    Memory_Typed[3] = a2[3];
    *(a1 + 896) = Memory_Typed;
    *(a1 + 904) = 4;
    *(a1 + 3776) = off_2A1A90BD8;
    *(a1 + 3976) = 0;
    *(a1 + 3977) = sub_297E577AC(a1, off_2A1A90BD8);
    v9 = sub_297E9B670(a1, 0, 0);
    if (v9 == 13)
    {
      *(a1 + 3424) = a3;
      *(a1 + 3752) = a4;
    }

    else
    {
      sub_297E4E0B0(1, a1 + 6524, 3, 2u, "T3t poll Sequence failed!");
      sub_297F0522C(a1);
    }
  }

  else
  {
    v9 = 0;
  }

LABEL_11:
  sub_297E4DFAC(2, a1, 3, 5u, "phNciNfc_T3TPollReq");
  return v9;
}

uint64_t sub_297E9B5A8(unsigned int a1, uint64_t a2)
{
  v5 = a1;
  sub_297E4E1B4(1, &v5, 3, 5u, "phNciNfc_ValidateT3TReqParams");
  if (phOsalNfc_MemCompare() || *(a2 + 2) > 2u || *(a2 + 3) >= 0x10u)
  {
    v3 = 1;
    sub_297E4E0B0(1, &v5, 3, 4u, " Invalid SystemCode/RequestCode/TSN Specified..");
  }

  else
  {
    v3 = 0;
  }

  sub_297E4DFAC(1, &v5, 3, 5u, "phNciNfc_ValidateT3TReqParams");
  return v3;
}

uint64_t sub_297E9B670(uint64_t a1, uint64_t a2, uint64_t a3)
{
  sub_297E4E1B4(2, a1, 3, 5u, "phNciNfc_T3TPollSequence");
  if (a1 && a2)
  {
    *(a1 + 3800) = *(a2 + 8);
    *(a1 + 3808) = *(a2 + 16);
  }

  v6 = sub_297E5783C(a1, a3);
  sub_297E4DFAC(2, a1, 3, 5u, "phNciNfc_T3TPollSequence");
  return v6;
}

uint64_t sub_297E9B704(uint64_t a1, uint64_t a2)
{
  sub_297E4E1B4(2, a2, 3, 5u, "phNciNfc_T3tNtfTimeoutHandler");
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
  if (v6 != a2)
  {
LABEL_6:
    sub_297E4E0B0(2, a2, 3, 1u, "phNciNfc_T3tNtfTimeoutHandler: Invalid or NULL pNciContext");
    goto LABEL_11;
  }

  if (*(a2 + 6512))
  {
    goto LABEL_10;
  }

  phOsalNfc_Timer_Stop();
  if (phOsalNfc_Timer_Start())
  {
    sub_297E4E0B0(1, a2 + 6524, 3, 1u, "T3T Ntf timer failed to start for extended time\n");
LABEL_10:
    sub_297E687D8(2, a2, a1, 3, 4u, "phNciNfc_T3tNtfTimeoutHandler");
    phOsalNfc_Timer_Stop();
    *(a2 + 6512) = 0;
    sub_297E9B1D0(a2, 0, 255);
    goto LABEL_11;
  }

  sub_297E4E0B0(1, a2 + 6524, 3, 4u, "T3T Ntf timer restarted for extended time\n");
  *(a2 + 6512) = 1;
LABEL_11:

  return sub_297E4DFAC(2, a2, 3, 5u, "phNciNfc_T3tNtfTimeoutHandler");
}

uint64_t sub_297E9B8A8(uint64_t a1, uint64_t a2)
{
  sub_297E4E1B4(2, a1, 3, 5u, "phNciNfc_H_MRTCalculate");
  v4 = 0;
  if (!a1 || !a2)
  {
    goto LABEL_16;
  }

  v5 = *(a2 + 24);
  if (v5 < 2)
  {
    goto LABEL_15;
  }

  v6 = *(a2 + 16);
  v7 = *(v6 + 1);
  if (v7 == 6)
  {
    v8 = 70;
    goto LABEL_8;
  }

  if (v7 != 8)
  {
LABEL_15:
    v4 = 0;
    goto LABEL_16;
  }

  v8 = 71;
LABEL_8:
  if (v5 < 0xB || v5 <= (2 * *(v6 + 10) + 11))
  {
    goto LABEL_15;
  }

  v9 = *(*(a1 + 4552) + v8);
  v10 = *(v6 + (2 * *(v6 + 10) + 11));
  v11 = v9 & 7;
  v12 = (v9 >> 3) & 7;
  v13 = 1.0;
  if (v9 >= 0x40)
  {
    v14 = v9 >> 6;
    v15 = 1;
    do
    {
      v15 *= 4;
      --v14;
    }

    while (v14);
    v13 = v15;
  }

  v4 = ((v11 + v10 + v10 * v12 + 1) * 302.064897 * v13 / 1000.0);
  sub_297E50DB0(1, a1 + 6524, 3, 4u, "Calculated Timeout value from MRTI is ");
LABEL_16:
  sub_297E4DFAC(2, a1, 3, 5u, "phNciNfc_H_MRTCalculate");
  return v4;
}

uint64_t sub_297E9BA08(uint64_t a1, _BYTE *a2)
{
  v5 = a1;
  sub_297E4E1B4(0, &v5, 3, 5u, "phNciNfc_JewelInit");
  v3 = 255;
  if (!*a2)
  {
    if ((a2[1] & 0xF) == 0xC)
    {
      v3 = 0;
    }

    else
    {
      v3 = 255;
    }
  }

  sub_297E4DFAC(0, &v5, 3, 5u, "phNciNfc_JewelInit");
  return v3;
}

uint64_t sub_297E9BA8C(uint64_t a1, int a2)
{
  sub_297E4E1B4(2, a1, 3, 5u, "phNciNfc_RecvJewelResp");
  if (!a1)
  {
    v12 = 1;
    sub_297E4E0B0(2, 0, 3, 4u, " Invalid Context Param..");
    goto LABEL_28;
  }

  if (a2 || (v4 = *(a1 + 3808)) == 0 || (v5 = *(a1 + 3800)) == 0)
  {
    v12 = 255;
    sub_297E4E0B0(1, a1 + 6524, 3, 4u, " Data Receive Failed..");
    goto LABEL_26;
  }

  *(a1 + 6497) = 0;
  v6 = *(a1 + 4600);
  v7 = v4 - 1;
  v8 = *(v5 + v4 - 1);
  if (v8 > 0xB0)
  {
    switch(v8)
    {
      case 0xB1u:
        v12 = 183;
        v9 = " Jewel XchgData,PH_NCINFC_STATUS_RF_PROTOCOL_ERROR Detected by NFCC during Data Exchange ";
        goto LABEL_24;
      case 0xB2u:
        v12 = 178;
        v9 = " Jewel XchgData,PH_NCINFC_STATUS_RF_TIMEOUT_ERROR Detected by NFCC during Data Exchange ";
        goto LABEL_24;
      case 0xB3u:
        v12 = 184;
        v9 = " Jewel XchgData,PH_NCINFC_STATUS_RF_UNEXPECTED_DAT Detected by NFCC during Data Exchange ";
        goto LABEL_24;
    }

LABEL_20:
    v12 = 185;
    sub_297E96818(*(a1 + 6528), v8);
    sub_297E4E0B0(1, a1 + 6524, 3, 2u, " Jewel XchgData,Unknown RF related error Detected by NFCC during Data Exchange ");
    if (v4 <= v6)
    {
      phOsalNfc_MemCopy();
      *(a1 + 4600) = v4;
    }

    goto LABEL_25;
  }

  if (*(v5 + v4 - 1))
  {
    if (v8 == 2)
    {
      v12 = 181;
      v9 = " Jewel XchgData,PH_NCINFC_STATUS_RF_FRAME_CORRUPTED Detected by NFCC during Data Exchange ";
      goto LABEL_24;
    }

    if (v8 == 176)
    {
      v12 = 182;
      v9 = " Jewel XchgData,PH_NCINFC_STATUS_RF_TRANSMISSION_ERROR Detected by NFCC during Data Exchange ";
LABEL_24:
      sub_297E4E0B0(1, a1 + 6524, 3, 2u, v9);
      goto LABEL_25;
    }

    goto LABEL_20;
  }

  if (v4 < 2)
  {
    v12 = 255;
    v10 = " Jewel XchgData Failed ..";
  }

  else
  {
    v12 = 0;
    sub_297E4E0B0(1, a1 + 6524, 3, 4u, " Jewel XchgData Request is Successful!! ..");
    if (v7 <= v6)
    {
      if (v4 == 7 || v4 == 123)
      {
        phOsalNfc_MemCopy();
        *(a1 + 4600) = v7;
        if (*(a1 + 4608) == 1)
        {
          *(a1 + 6497) = 1;
        }
      }

      else
      {
        phOsalNfc_MemCopy();
        *(a1 + 4600) = v4 - 2;
      }

      goto LABEL_25;
    }

    v12 = 8;
    v10 = " Jewel XchgData,More Data available than requested  ..";
  }

  sub_297E4E0B0(1, a1 + 6524, 3, 4u, v10);
LABEL_25:
  sub_297EFF5D8(a1, &v12);
LABEL_26:
  if (*(a1 + 4640))
  {
    *(a1 + 4648) = 0;
    sub_297E4E0B0(1, a1 + 6524, 3, 4u, " Freeing Send Request Payload Buffer..");
    phOsalNfc_FreeMemory();
    *(a1 + 4640) = 0;
    *(a1 + 4632) = v12;
  }

LABEL_28:
  sub_297E4DFAC(2, a1, 3, 5u, "phNciNfc_RecvJewelResp");
  return v12;
}

uint64_t sub_297E9BDB8(uint64_t a1)
{
  v7 = 0u;
  v8 = 0u;
  sub_297E4E1B4(2, a1, 3, 5u, "phNciNfc_SendJewelReq");
  if (a1)
  {
    v2 = *(a1 + 4552);
    if (v2)
    {
      if (*(a1 + 4584))
      {
        sub_297E4E0B0(1, a1 + 6524, 3, 4u, " Creating Request Payload (Header + Data)..");
        *(a1 + 4648) = *(a1 + 4584);
        Memory_Typed = phOsalNfc_GetMemory_Typed();
        *(a1 + 4640) = Memory_Typed;
        if (Memory_Typed)
        {
          phOsalNfc_SetMemory();
          phOsalNfc_MemCopy();
          sub_297E4E0B0(1, a1 + 6524, 3, 4u, " Payload (Header + Data) created successfully..");
          phOsalNfc_SetMemory();
          LODWORD(v7) = 0;
          if (!sub_297E8BB50(a1, v2, (&v7 | 0xC)))
          {
            *&v8 = *(a1 + 4640);
            DWORD2(v8) = *(a1 + 4648);
            if (sub_297E57BA8(a1 + 936, &v7, a1 + 3800, *(a1 + 4566), sub_297EFF2DC, a1) == 13)
            {
              v5 = 13;
              goto LABEL_13;
            }

            phOsalNfc_FreeMemory();
            *(a1 + 4640) = 0;
            *(a1 + 4648) = 0;
            goto LABEL_12;
          }

          phOsalNfc_FreeMemory();
          *(a1 + 4640) = 0;
          *(a1 + 4648) = 0;
          v4 = " Couldn't Get ConnId..";
        }

        else
        {
          v4 = " Payload MemAlloc for Send request Failed..";
        }

        sub_297E4E0B0(1, a1 + 6524, 3, 4u, v4);
LABEL_12:
        v5 = 255;
        goto LABEL_13;
      }

      v5 = 1;
      sub_297E4E0B0(1, a1 + 6524, 3, 4u, " Invalid Length..");
    }

    else
    {
      sub_297E4E0B0(1, a1 + 6524, 3, 4u, " Invalid Device..");
      v5 = 6;
    }
  }

  else
  {
    sub_297E4E0B0(2, 0, 3, 4u, " Invalid Context Param..");
    v5 = 1;
  }

LABEL_13:
  sub_297E4DFAC(2, a1, 3, 5u, "phNciNfc_SendJewelReq");
  return v5;
}

uint64_t sub_297E9C010(uint64_t a1, _BYTE *a2, _BYTE *a3)
{
  sub_297E4E1B4(2, a1, 3, 5u, "phNciNfc_UpdateUidInfo");
  if (a1)
  {
    a2[49] = *a3;
    a2[50] = a3[1];
    a2[46] = 7;
    phOsalNfc_MemCopy();
    v6 = 0;
  }

  else
  {
    v6 = 255;
  }

  sub_297E4DFAC(2, a1, 3, 5u, "phNciNfc_UpdateUidInfo");
  return v6;
}

uint64_t sub_297E9C0B8(uint64_t a1, int a2)
{
  sub_297E4E1B4(2, a1, 8, 5u, "phFriNfc_MapTool_NDEF_SetCardState");
  v4 = *(a1 + 545);
  if (a2)
  {
    if (v4 == 2 || v4 == 1)
    {
      v5 = 0;
    }

    else
    {
      if (*(a1 + 545))
      {
        *(a1 + 545) = 3;
        v5 = 22;
        goto LABEL_15;
      }

      v5 = 0;
      LOBYTE(v4) = 2;
    }

    *(a1 + 545) = v4;
  }

  else
  {
    v6 = (v4 & 0xFFFFFFFD) == 1;
    if ((v4 & 0xFFFFFFFD) == 1)
    {
      v7 = 3;
    }

    else
    {
      v7 = 0;
    }

    *(a1 + 545) = v7;
    if (v6)
    {
      v5 = 22;
    }

    else
    {
      v5 = 0;
    }
  }

LABEL_15:
  sub_297E4DFAC(2, a1, 8, 5u, "phFriNfc_MapTool_NDEF_SetCardState");
  return v5;
}

uint64_t sub_297E9C178(uint64_t a1, unsigned int a2)
{
  v3 = *(a1 + a2 + 266);
  sub_297E4E1B4(2, a1, 8, 5u, "phFriNfc_MapTool_NDEF_ChkSpcVer");
  sub_297E4E0B0(0, a1 + 2712, 8, 4u, "phFriNfc_MapTool_NDEF_ChkSpcVer:Checking the Ndef version supported by the card...");
  if (v3)
  {
    v4 = *(a1 + 544);
    if ((v4 - 7) < 2)
    {
      if (((v3 & 0x70) == 64) | ((v3 & 0x30) != 0) & (v3 >> 6))
      {
        v5 = 0;
      }

      else
      {
        v5 = 28;
      }
    }

    else if (v4 == 2 || v4 == 6)
    {
      if (v3 >= 0x30)
      {
        v5 = 28;
      }

      else
      {
        v5 = 0;
      }
    }

    else if (v3 == 18)
    {
      v5 = 0;
    }

    else if (((v3 & 0xF) < 3 || (v3 & 0xF0) != 16) && v3 > 0x1F)
    {
      v5 = 28;
    }

    else
    {
      v5 = 0;
    }
  }

  else
  {
    v5 = 28;
  }

  sub_297E4DFAC(2, a1, 8, 5u, "phFriNfc_MapTool_NDEF_ChkSpcVer");
  return v5;
}

uint64_t sub_297E9C28C(uint64_t a1, int *a2, unsigned int a3)
{
  sub_297E4E1B4(2, a1, 8, 5u, "sortLockResByteInfoArray");
  if (a3)
  {
    v6 = 0;
    v7 = a2;
    v8 = a3;
    do
    {
      v9 = &a2[v6];
      v10 = v7;
      v11 = v8;
      do
      {
        if (*v9 > *v10)
        {
          v12 = *v9;
          *v9 = *v10;
          *v10 = v12;
        }

        ++v10;
        --v11;
      }

      while (v11);
      ++v6;
      --v8;
      ++v7;
    }

    while (v6 != a3);
  }

  return sub_297E4DFAC(2, a1, 8, 5u, "sortLockResByteInfoArray");
}

uint64_t sub_297E9C360(uint64_t a1)
{
  sub_297E4E1B4(2, a1, 4, 5u, "phLibNfc_SendDeactDiscCmd");
  if (a1)
  {
    sub_297E56C78(*(a1 + 9784));
    v2 = sub_297E56D18(*(a1 + 3088), 3, sub_297E5BA84, a1);
    if (v2 == 13)
    {
      *(a1 + 9778) = 0;
    }
  }

  else
  {
    v2 = 255;
  }

  sub_297E4DFAC(2, a1, 4, 5u, "phLibNfc_SendDeactDiscCmd");
  return v2;
}

uint64_t sub_297E9C404(uint64_t a1, int a2, unsigned int *a3, uint64_t a4)
{
  v38 = 0;
  sub_297E4E1B4(2, a1, 4, 5u, "phLibNfc_DeActvNtfRegister_Resp_Cb");
  if (!a1 || !a3)
  {
    v17 = "Invalid Params received!!";
    v18 = 2;
    v19 = a1;
LABEL_20:
    sub_297E4E0B0(v18, v19, 4, 1u, v17);
    return sub_297E4DFAC(2, a1, 4, 5u, "phLibNfc_DeActvNtfRegister_Resp_Cb");
  }

  sub_297EE6F64(a1);
  v9 = a4 == 146 || a4 == 7;
  if (a2 == 7 && v9)
  {
    v10 = sub_297EE14CC(*(a1 + 9784));
    if (v10 != 2)
    {
      sub_297E50EBC(1, a1 + 9792, 4, 4u, "phLibNfc_DeActvNtfRegister_Resp_Cb: State transition flag status is ");
    }

    v11 = sub_297EE1404(*(a1 + 9784));
    if (v11 != 12)
    {
      sub_297E50EBC(1, a1 + 9792, 4, 4u, "phLibNfc_DeActvNtfRegister_Resp_Cb: State transition target state is ");
    }

    v12 = *(a1 + 1032);
    if (a3[1] - 1 <= 1)
    {
      sub_297E4E0B0(1, a1 + 9792, 4, 4u, "eRfDeactvReason -> phNciNfc_e_RfLinkLoss or phNciNfc_e_EndPoint");
      sub_297EE1720(*(a1 + 9784), 0);
    }

    v13 = *a3;
    if (v13 > 3)
    {
      v16 = 123;
      v15 = 2;
      v14 = "eRfDeactvType Other";
    }

    else
    {
      v14 = off_29EE86858[v13];
      v15 = dword_297F13250[v13];
      v16 = dword_297F13260[v13];
    }

    sub_297E4E0B0(1, a1 + 9792, 4, 4u, v14);
    *(a1 + 1032) = v15;
    v38 = 0;
    sub_297E4E1B4(2, a1, 4, 5u, "phLibNfc_ListenModeDeactvNtfHandler");
    sub_297E4E0B0(1, a1 + 9792, 4, 4u, "In phLibNfc_ListenModeDeactvNtfHandler");
    sub_297E50EBC(1, a1 + 9792, 4, 4u, "pLibNfcHandle->dev_cnt == ");
    if (*(a1 + 6744) && *(a1 + 762))
    {
      v37 = v16;
      v25 = v11;
      v26 = v10;
      v27 = v12;
      sub_297E4E0B0(1, a1 + 9792, 4, 4u, "RemDevType -> phNfc_eNfcIP1_Initiator");
      sub_297E4E0B0(1, a1 + 9792, 4, 4u, "pClientNfcIpRxCb is valid, invoking...");
      v28 = *(a1 + 6744);
      v29 = *(a1 + 6752);
      *(a1 + 6744) = 0;
      *(a1 + 6752) = 0;
      sub_297E4D930(1, a1 + 9792, 4, 30, "phLibNfc_ListenModeDeactvNtfHandler");
      v28(*(a1 + 9784), v29, 0, a4);
    }

    else
    {
      if (!*(a1 + 6728) || !*(a1 + 762))
      {
LABEL_34:
        sub_297E4DFAC(2, a1, 4, 5u, "phLibNfc_ListenModeDeactvNtfHandler");
        sub_297E4F450(*(a1 + 9784), v16, a4, a1 + 1032, &v38);
        if (*(a1 + 2933) && *a3 == 1 && *(a1 + 762) && (v32 = *(*(a1 + 880) + 4), v32 <= 0x1B) && ((1 << v32) & 0x8000006) != 0)
        {
          sub_297EE1720(*(a1 + 9784), 0);
          sub_297EE18A8(*(a1 + 9784), 12);
          sub_297EE17E4(*(a1 + 9784), 4);
          *(a1 + 1032) = 0;
        }

        else if (v38 != 1)
        {
          sub_297EE1720(*(a1 + 9784), v10);
          sub_297EE18A8(*(a1 + 9784), v11);
          *(a1 + 1032) = v12;
        }

        return sub_297E4DFAC(2, a1, 4, 5u, "phLibNfc_DeActvNtfRegister_Resp_Cb");
      }

      v37 = v16;
      v25 = v11;
      v26 = v10;
      v27 = v12;
      sub_297E4E0B0(1, a1 + 9792, 4, 4u, "pClientNfcIpTxCb is valid, invoking...");
      sub_297E4E0B0(1, a1 + 9792, 4, 4u, "RemDevType -> phNfc_eNfcIP1_Initiator");
      v30 = *(a1 + 6728);
      v31 = *(a1 + 6736);
      *(a1 + 6728) = 0;
      *(a1 + 6736) = 0;
      sub_297E4D930(1, a1 + 9792, 4, 31, "phLibNfc_ListenModeDeactvNtfHandler");
      v30(*(a1 + 9784), v31, a4);
    }

    v38 = 1;
    v12 = v27;
    v10 = v26;
    v11 = v25;
    v16 = v37;
    goto LABEL_34;
  }

  if (a4 == 121)
  {
    *(a1 + 9777) = 0;
    v33 = 120;
    if (*(a1 + 1136) != 3)
    {
      if (*(a1 + 1036) == 7)
      {
        v33 = 120;
      }

      else
      {
        v33 = 121;
      }
    }

    *(a1 + 1032) = 2;
    v21 = *(a1 + 9784);
    v23 = v33;
    v24 = a1 + 1032;
    v22 = 123;
    goto LABEL_47;
  }

  if (a4 != 120)
  {
    v17 = "Irrelevant notification received!!";
    v19 = a1 + 9792;
    v18 = 1;
    goto LABEL_20;
  }

  if (*(a1 + 6200))
  {
    sub_297ECF904(a1);
    sub_297EE1720(*(a1 + 9784), 0);
    v21 = *(a1 + 9784);
    v22 = 127;
    v23 = 255;
    v24 = 0;
LABEL_47:
    sub_297E4F450(v21, v22, v23, v24, &v38);
    return sub_297E4DFAC(2, a1, 4, 5u, "phLibNfc_DeActvNtfRegister_Resp_Cb");
  }

  sub_297EE1720(*(a1 + 9784), 0);
  *(a1 + 1032) = 2;
  v34 = sub_297E4F450(*(a1 + 9784), 123, 0, a1 + 1032, &v38);
  if (v34)
  {
    if (v34 == 111)
    {
      sub_297E4E0B0(1, a1 + 9792, 4, 2u, "State machine has returned NFCSTATUS_BUSY ");
    }

    else
    {
      sub_297E4E0B0(1, a1 + 9792, 4, 1u, "State machine has returned NFCSTATUS_FAILED ");
      sub_297E8D804(a1);
    }
  }

  else
  {
    sub_297E4E0B0(1, a1 + 9792, 4, 4u, "State machine has returned NFCSTATUS_SUCCESS ");
    sub_297E4E0B0(1, a1 + 9792, 4, 4u, "Invoking upper layer callback function ");
    v35 = *(a1 + 6264);
    if (v35)
    {
      v36 = *(a1 + 6272);
      *(a1 + 6264) = 0;
      *(a1 + 6272) = 0;
      sub_297E4D930(1, a1 + 9792, 4, 130, "phLibNfc_DeActvNtfRegister_Resp_Cb");
      v35(*(a1 + 9784), v36, 0, 121);
      sub_297ECF904(a1);
    }
  }

  return sub_297E4DFAC(2, a1, 4, 5u, "phLibNfc_DeActvNtfRegister_Resp_Cb");
}

uint64_t sub_297E9CA38(uint64_t a1, uint64_t a2, uint64_t a3, unsigned __int8 a4)
{
  sub_297E4E1B4(2, a1, 4, 5u, "phLibNfc_RfIntfErrNtf_Resp_Cb");
  if (a1 && *(a1 + 6728) && *(a1 + 762))
  {
    sub_297EE6F64(a1);
    sub_297E4F450(*(a1 + 9784), 119, a4, 0, 0);
  }

  return sub_297E4DFAC(2, a1, 4, 5u, "phLibNfc_RfIntfErrNtf_Resp_Cb");
}

uint64_t sub_297E9CAD4(uint64_t a1, int a2)
{
  sub_297E4E1B4(2, a1, 7, 5u, "phHciNfc_AnyOkCb");
  if (!a1 || a2)
  {
    sub_297E4E0B0(2, 0, 7, 1u, "phHciNfc_AnyOkCb:Invalid Context received");
  }

  else
  {
    sub_297E50DB0(1, a1 + 956, 7, 4u, "phHciNfc_AnyOkCb:");
    v4 = *(a1 + 152);
    if (v4)
    {
      if (*(v4 + 8))
      {
        phOsalNfc_FreeMemory();
        *(*(a1 + 152) + 8) = 0;
      }

      phOsalNfc_FreeMemory();
      *(a1 + 152) = 0;
    }
  }

  return sub_297E4DFAC(2, a1, 7, 5u, "phHciNfc_AnyOkCb");
}

uint64_t sub_297E9CBB4(uint64_t a1, int a2)
{
  sub_297E4E1B4(2, a1, 7, 5u, "phHciNfc_CmdSendCb");
  if (a1)
  {
    v4 = *(a1 + 184);
    if (v4)
    {
      if (a2)
      {
        sub_297E4E0B0(1, a1 + 956, 7, 1u, "phHciNfc_CmdSendCb: Send Failed");
        v4(*(a1 + 192), 255, 0);
      }

      else
      {
        sub_297E4E0B0(1, a1 + 956, 7, 4u, "phHciNfc_CmdSendCb: Send success");
      }
    }
  }

  return sub_297E4DFAC(2, a1, 7, 5u, "phHciNfc_CmdSendCb");
}

uint64_t sub_297E9CC80(uint64_t a1, uint64_t a2)
{
  sub_297E4E1B4(2, a1, 7, 5u, "phHciNfc_RawCmdSendCb");
  if (a1)
  {
    v4 = *(a1 + 184);
    if (v4)
    {
      *(a1 + 184) = 0;
      if (a2)
      {
        sub_297E4E0B0(1, a1 + 956, 7, 1u, "phHciNfc_RawCmdSendCb: Send Failed");
      }

      else
      {
        sub_297E4E0B0(1, a1 + 956, 7, 4u, "phHciNfc_RawCmdSendCb: Send success");
      }

      v4(*(a1 + 192), a2, 0);
    }
  }

  return sub_297E4DFAC(2, a1, 7, 5u, "phHciNfc_RawCmdSendCb");
}

uint64_t sub_297E9CD50(void *a1, int a2, uint64_t a3)
{
  sub_297E4E1B4(2, a1, 7, 5u, "phHciNfc_AnySetParameterCb");
  if (a1)
  {
    if (a1[19])
    {
      sub_297E4E0B0(1, a1 + 956, 7, 4u, "phHciNfc_AnySetParameterCb: Releasing memory");
      if (*(a1[19] + 8))
      {
        phOsalNfc_FreeMemory();
        *(a1[19] + 8) = 0;
      }

      phOsalNfc_FreeMemory();
      a1[19] = 0;
    }

    v6 = a1[23];
    if (!a2)
    {
      v7 = a1 + 239;
      if (!*(a3 + 1))
      {
        sub_297E4E0B0(1, v7, 7, 4u, "phHciNfc_AnySetParameterCb:Sucessfull");
        v9 = 0;
        if (v6)
        {
LABEL_15:
          a1[23] = 0;
          v6(a1[24], v9, 0);
          goto LABEL_16;
        }

LABEL_11:
        sub_297E4E0B0(1, a1 + 956, 7, 4u, "phHciNfc_AnySetParameterCb:Uppler Layer Callback not defined");
        goto LABEL_16;
      }

      if (*v7)
      {
        v8 = &gphNfc_DebugInfo_Sec;
      }

      else
      {
        v8 = &gphNfc_DebugInfo_Prim;
      }

      v8[1] |= 0x40000000u;
    }

    v9 = 255;
    if (v6)
    {
      goto LABEL_15;
    }

    goto LABEL_11;
  }

LABEL_16:

  return sub_297E4DFAC(2, a1, 7, 5u, "phHciNfc_AnySetParameterCb");
}

uint64_t sub_297E9CEAC(uint64_t a1, int a2, uint64_t a3)
{
  sub_297E4E1B4(2, a1, 7, 5u, "phHciNfc_AnyGetParameterCb");
  if (a1)
  {
    v6 = *(a1 + 960);
    if (*(a1 + 152))
    {
      sub_297E4E0B0(1, a1 + 956, 7, 4u, "phHciNfc_AnyGetParameterCb: Releasing memory");
      if (*(*(a1 + 152) + 8))
      {
        phOsalNfc_FreeMemory();
        *(*(a1 + 152) + 8) = 0;
      }

      phOsalNfc_FreeMemory();
      *(a1 + 152) = 0;
    }

    if (v6 && *(v6 + 6536))
    {
      if (a2 || *(a3 + 1))
      {
        if (*(a1 + 956))
        {
          v7 = &gphNfc_DebugInfo_Sec;
        }

        else
        {
          v7 = &gphNfc_DebugInfo_Prim;
        }

        v7[1] |= 0x40000000u;
      }

      else
      {
        sub_297E4E0B0(1, a1 + 956, 7, 4u, "phHciNfc_AnyGetParameterCb:Sucessfull");
        sub_297EED6C0(*(a1 + 960), 0, a3);
      }

      goto LABEL_25;
    }

    v8 = *(a1 + 184);
    if (!a2)
    {
      v9 = (a1 + 956);
      if (!*(a3 + 1))
      {
        sub_297E4E0B0(1, v9, 7, 4u, "phHciNfc_AnyGetParameterCb:Sucessfull");
        v11 = 0;
        if (v8)
        {
LABEL_24:
          *(a1 + 184) = 0;
          v8(*(a1 + 192), v11, a3);
          goto LABEL_25;
        }

LABEL_19:
        sub_297E4E0B0(1, a1 + 956, 7, 4u, "phHciNfc_AnyGetParameterCb:Uppler Layer Callback not defined");
        goto LABEL_25;
      }

      if (*v9)
      {
        v10 = &gphNfc_DebugInfo_Sec;
      }

      else
      {
        v10 = &gphNfc_DebugInfo_Prim;
      }

      v10[1] |= 0x40000000u;
    }

    v11 = 255;
    if (v8)
    {
      goto LABEL_24;
    }

    goto LABEL_19;
  }

LABEL_25:

  return sub_297E4DFAC(2, a1, 7, 5u, "phHciNfc_AnyGetParameterCb");
}

uint64_t sub_297E9D080(uint64_t a1, int a2, uint64_t a3)
{
  sub_297E4E1B4(2, a1, 7, 5u, "phHciNfc_OpenPipeCb");
  if (a1)
  {
    if (*(a1 + 152))
    {
      sub_297E4E0B0(1, a1 + 956, 7, 4u, "phHciNfc_OpenPipeCb: Releasing memory");
      if (*(*(a1 + 152) + 8))
      {
        phOsalNfc_FreeMemory();
        *(*(a1 + 152) + 8) = 0;
      }

      phOsalNfc_FreeMemory();
      *(a1 + 152) = 0;
    }

    v6 = *(a1 + 184);
    if (a2)
    {
      v7 = 0;
    }

    else
    {
      if (!*(a3 + 1))
      {
        if (*(a3 + 4))
        {
          v7 = **(a3 + 8);
        }

        else
        {
          v7 = 0;
        }

        sub_297E4E0B0(1, a1 + 956, 7, 4u, "phHciNfc_OpenPipeCb:Sucessfull");
        v9 = 0;
        if (v6)
        {
          goto LABEL_16;
        }

LABEL_19:
        sub_297E4E0B0(1, a1 + 956, 7, 4u, "phHciNfc_OpenPipeCb:Uppler Layer Callback not defined");
        goto LABEL_20;
      }

      v7 = 0;
      if (*(a1 + 956))
      {
        v8 = &gphNfc_DebugInfo_Sec;
      }

      else
      {
        v8 = &gphNfc_DebugInfo_Prim;
      }

      v8[1] |= 0x40000000u;
    }

    v9 = 255;
    if (v6)
    {
LABEL_16:
      *(a1 + 184) = 0;
      *(a1 + 1237) = v7;
      v6(*(a1 + 192), v9, a1 + 1237);
      goto LABEL_20;
    }

    goto LABEL_19;
  }

LABEL_20:

  return sub_297E4DFAC(2, a1, 7, 5u, "phHciNfc_OpenPipeCb");
}

uint64_t sub_297E9D208(uint64_t a1, int a2, unsigned int a3, char a4, uint64_t a5, uint64_t a6)
{
  v20 = 0;
  sub_297E4E1B4(2, a1, 7, 5u, "phHciNfc_AnyGetParameter");
  if (a1)
  {
    *(a1 + 1236) = 0;
    *(a1 + 1232) = 0;
    switch(a2)
    {
      case 1:
        if (a3 <= 4)
        {
LABEL_21:
          v14 = *(a1 + 152);
          if (v14)
          {
            if (*(v14 + 8))
            {
              phOsalNfc_FreeMemory();
              *(*(a1 + 152) + 8) = 0;
            }

            phOsalNfc_FreeMemory();
            *(a1 + 152) = 0;
          }

          Memory_Typed = phOsalNfc_GetMemory_Typed();
          if (!Memory_Typed)
          {
            sub_297E4E0B0(1, a1 + 956, 7, 1u, "phHciNfc_AnyGetParameter:Invalid input parameters");
            v12 = 0;
            goto LABEL_34;
          }

          v16 = Memory_Typed;
          phOsalNfc_SetMemory();
          *(a1 + 152) = v16;
          *v16 = a4;
          *(v16 + 1) = 2;
          v17 = phOsalNfc_GetMemory_Typed();
          *(a1 + 1224) = v17;
          if (!v17)
          {
            sub_297E4E0B0(1, a1 + 956, 7, 1u, "phHciNfc_AnyGetParameter:Memory Allocation failed");
            *(*(a1 + 152) + 8) = 0;
            phOsalNfc_FreeMemory();
            v12 = 0;
            *(a1 + 152) = 0;
            goto LABEL_34;
          }

          *v17 = a3;
          *(v16 + 8) = *(a1 + 1224);
          *(v16 + 4) = 1;
          *(a1 + 953) = 0;
          v18 = sub_297E99C88(a1, v16, sub_297E9CBB4, a1);
          if (v18 == 13)
          {
            *(a1 + 184) = a5;
            *(a1 + 192) = a6;
            LODWORD(v20) = 2;
            BYTE4(v20) = *v16;
            if (!sub_297E9D594(a1, &v20, sub_297E9CEAC, a1))
            {
              v12 = 13;
              goto LABEL_34;
            }

            sub_297E4E0B0(1, a1 + 956, 7, 1u, "phHciNfc_AnyGetParameter: Failed to register phHciNfc_OpenPipeCb function");
            *(*(a1 + 152) + 8) = 0;
            phOsalNfc_FreeMemory();
            phOsalNfc_FreeMemory();
            *(a1 + 152) = 0;
            goto LABEL_8;
          }

          v12 = v18;
          phOsalNfc_FreeMemory();
          *(*(a1 + 152) + 8) = 0;
          phOsalNfc_FreeMemory();
          *(a1 + 152) = 0;
          v13 = "phHciNfc_AnyGetParameter:Failed Status from lower layer";
LABEL_20:
          sub_297E4E0B0(1, a1 + 956, 7, 1u, v13);
          goto LABEL_34;
        }

        break;
      case 5:
        if (a3 <= 6)
        {
          goto LABEL_21;
        }

        break;
      case 4:
        if (a3 == 1)
        {
          goto LABEL_21;
        }

        break;
      default:
        sub_297E4E1B4(2, a1, 7, 5u, "phHciNfc_CheckPropGate");
        if (*(a1 + 817) == a2)
        {
          v12 = 0;
        }

        else if (*(a1 + 819) == a2)
        {
          v12 = 0;
        }

        else
        {
          v12 = 255;
        }

        sub_297E4DFAC(2, a1, 7, 5u, "phHciNfc_CheckPropGate");
        sub_297E4E0B0(1, a1 + 956, 7, 4u, "phHciNfc_AnyGetParameter: checking for Prop Gate");
        if (!v12)
        {
          goto LABEL_21;
        }

LABEL_19:
        v13 = "phHciNfc_AnyGetParameter:Failed Gate ID Evaluation";
        goto LABEL_20;
    }

    v12 = 255;
    goto LABEL_19;
  }

  sub_297E4E0B0(2, 0, 7, 1u, "phHciNfc_AnyGetParameter:Invalid HCI Context");
LABEL_8:
  v12 = 255;
LABEL_34:
  sub_297E4DFAC(2, a1, 7, 5u, "phHciNfc_AnyGetParameter");
  return v12;
}

uint64_t sub_297E9D594(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  sub_297E4E1B4(2, a1, 7, 5u, "phHciNfc_RegisterCmdRspEvt");
  if (a2 && a1 && a3)
  {
    v8 = *a2;
    if (*a2 == 2)
    {
      v9 = 0;
      v10 = a1 + 360;
      goto LABEL_12;
    }

    if (v8 == 1)
    {
      v9 = 0;
      v10 = a1 + 504;
      v14 = 12;
      goto LABEL_13;
    }

    if (!v8)
    {
      v9 = 0;
      v10 = a1 + 216;
LABEL_12:
      v14 = 6;
      v8 = 1;
      goto LABEL_13;
    }

    v11 = "phHciNfc_RegisterCmdRspEvt:Failed, Invalid HCI bMsgType";
    v9 = 1;
    v13 = a1 + 956;
    v12 = 1;
  }

  else
  {
    v11 = "phHciNfc_RegisterCmdRspEvt:Failed, Invalid Context or Input params";
    v9 = 1;
    v12 = 2;
    v13 = a1;
  }

  sub_297E4E0B0(v12, v13, 7, 1u, v11);
  v10 = 0;
  v8 = 0;
  v14 = 0;
LABEL_13:
  if (v10 && v8 && a4 && a3 && a2)
  {
    sub_297E50DB0(1, a1 + 956, 7, 4u, "phHciNfc_RegisterCmdRspEvt:Registering for Pipe ID");
    sub_297E50DB0(1, a1 + 956, 7, 4u, "phHciNfc_RegisterCmdRspEvt:Registering for Msg Type");
    v9 = sub_297E9DE10(a1, v10, v14, *(a2 + 4), a3, a4);
  }

  else
  {
    sub_297E4E0B0(2, a1, 7, 1u, "phHciNfc_RegisterCmdRspEvt:Failed, Invalid HCI bMsgType or Input params");
  }

  sub_297E4DFAC(2, a1, 7, 5u, "phHciNfc_RegisterCmdRspEvt");
  return v9;
}

uint64_t sub_297E9D740(uint64_t a1, int a2, char a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v9 = a4;
  sub_297E4E1B4(2, a1, 7, 5u, "phHciNfc_AnySetParameter");
  if (!a1 || v9 >= 0xFD)
  {
    v15 = "phHciNfc_AnySetParameter:Invalid HCI Context";
    v16 = 2;
    v17 = a1;
LABEL_20:
    sub_297E4E0B0(v16, v17, 7, 1u, v15);
    return 255;
  }

  v13 = *(a1 + 152);
  if (v13)
  {
    if (*(v13 + 8))
    {
      phOsalNfc_FreeMemory();
      *(*(a1 + 152) + 8) = 0;
    }

    phOsalNfc_FreeMemory();
  }

  *(a1 + 152) = 0;
  phOsalNfc_SetMemory();
  *(a1 + 160) = a3;
  *(a1 + 161) = 1;
  if (a2 == 3)
  {
    v14 = v9 + 1;
    goto LABEL_13;
  }

  if (a2 != 1)
  {
    v15 = "phHciNfc_AnySetParameter:Failed Invalid Registry Identifier";
LABEL_19:
    v17 = a1 + 956;
    v16 = 1;
    goto LABEL_20;
  }

  if (v9 != 8)
  {
    v15 = "phHciNfc_AnySetParameter:Failed Invalid Set Data Length";
    goto LABEL_19;
  }

  v14 = 9;
LABEL_13:
  *(a1 + 164) = v14;
  v21 = 0;
  *(a1 + 168) = a1 + 969;
  *(a1 + 969) = a2;
  phOsalNfc_MemCopy();
  *(a1 + 953) = 0;
  v18 = sub_297E99C88(a1, (a1 + 160), sub_297E9CBB4, a1);
  if (v18 == 13)
  {
    *(a1 + 184) = a6;
    *(a1 + 192) = a7;
    LODWORD(v21) = 2;
    BYTE4(v21) = *(a1 + 160);
    if (sub_297E9D594(a1, &v21, sub_297E9CD50, a1))
    {
      sub_297E4E0B0(1, a1 + 956, 7, 1u, "phHciNfc_AnySetParameter: Failed to register phHciNfc_OpenPipeCb function");
      v19 = 255;
    }

    else
    {
      v19 = 13;
    }
  }

  else
  {
    v19 = v18;
    sub_297E4E0B0(1, a1 + 956, 7, 1u, "phHciNfc_AnySetParameter:Failed to send to lower layer");
  }

  sub_297E4DFAC(2, a1, 7, 5u, "phHciNfc_AnySetParameter");
  return v19;
}

uint64_t sub_297E9D970(uint64_t a1, char a2, uint64_t a3, uint64_t a4)
{
  v17 = 0;
  v16 = -1;
  sub_297E4E1B4(2, a1, 7, 5u, "phHciNfc_OpenPipe");
  if (!a1)
  {
    v11 = "phHciNfc_OpenPipe:Invalid HCI Context";
    v12 = 2;
    v13 = 0;
LABEL_13:
    sub_297E4E0B0(v12, v13, 7, 1u, v11);
    goto LABEL_14;
  }

  if (*(a1 + 152))
  {
    phOsalNfc_FreeMemory();
    *(a1 + 152) = 0;
  }

  Memory_Typed = phOsalNfc_GetMemory_Typed();
  if (!Memory_Typed)
  {
    v11 = "phHciNfc_OpenPipe:Invalid Input Params";
    v13 = a1 + 956;
    v12 = 1;
    goto LABEL_13;
  }

  v9 = Memory_Typed;
  phOsalNfc_SetMemory();
  *(a1 + 152) = v9;
  *v9 = a2;
  *(v9 + 1) = 3;
  *(v9 + 8) = 0;
  *(v9 + 4) = 0;
  *(a1 + 953) = 0;
  v10 = sub_297E99C88(a1, v9, sub_297E9CBB4, a1);
  if (v10 != 13)
  {
    v14 = v10;
    phOsalNfc_FreeMemory();
    *(a1 + 152) = 0;
    sub_297E4E0B0(1, a1 + 956, 7, 1u, "phHciNfc_OpenPipe:Failed to send to lower layer");
    goto LABEL_17;
  }

  *(a1 + 184) = a3;
  *(a1 + 192) = a4;
  if (!sub_297E9DBD0(a1, 240, &v16) && v16 != 255)
  {
    sub_297E4E0B0(1, a1 + 956, 7, 4u, "phHciNfc_UnRegisterCmdRspEvt:eSE APDU Pipe");
    LODWORD(v17) = 2;
    BYTE4(v17) = v16;
    sub_297E9DCD0(a1, &v17, sub_297EE93FC);
  }

  LODWORD(v17) = 2;
  BYTE4(v17) = *v9;
  if (!sub_297E9D594(a1, &v17, sub_297E9D080, a1))
  {
    v14 = 13;
    goto LABEL_17;
  }

  sub_297E4E0B0(1, a1 + 956, 7, 1u, "phHciNfc_OpenPipe: Failed to register phHciNfc_OpenPipeCb function");
  phOsalNfc_FreeMemory();
  *(a1 + 152) = 0;
LABEL_14:
  v14 = 255;
LABEL_17:
  sub_297E4DFAC(2, a1, 7, 5u, "phHciNfc_OpenPipe");
  return v14;
}

uint64_t sub_297E9DBD0(unsigned __int8 *a1, int a2, unsigned __int8 *a3)
{
  sub_297E4E1B4(2, a1, 7, 5u, "phHciNfc_GetPipeId");
  if (a1 && a3)
  {
    if (a1[817] == a2)
    {
      v6 = a1 + 816;
LABEL_8:
      v7 = 0;
      *a3 = *v6;
      goto LABEL_9;
    }

    if (a1[819] == a2)
    {
      v6 = a1 + 818;
      goto LABEL_8;
    }

    v7 = 1;
    if (a1[891] == 1)
    {
      sub_297E4E0B0(1, (a1 + 956), 7, 2u, "phHciNfc_GetPipeId: ADM_NOTIFY_ALL_PIPE_CLEARED cleared the pipes!!!");
    }
  }

  else
  {
    v7 = 1;
    sub_297E4E0B0(2, a1, 7, 1u, "phHciNfc_GetPipeId:Invalid Context or PipeId");
  }

LABEL_9:
  sub_297E4DFAC(2, a1, 7, 5u, "phHciNfc_GetPipeId");
  return v7;
}

uint64_t sub_297E9DCD0(uint64_t a1, unsigned int *a2, uint64_t a3)
{
  sub_297E4E1B4(2, a1, 7, 5u, "phHciNfc_UnRegisterCmdRspEvt");
  if (!a2 || !a1 || !a3)
  {
    v10 = "phHciNfc_UnRegisterCmdRspEvt:Failed, Invalid Context or Callback";
    v9 = 1;
    v11 = 2;
    v12 = a1;
LABEL_8:
    sub_297E4E0B0(v11, v12, 7, 1u, v10);
    goto LABEL_9;
  }

  v6 = *a2;
  if (v6 >= 3)
  {
    v10 = "phHciNfc_UnRegisterCmdRspEvt:Failed, Invalid Msg Type";
    v9 = 1;
    v12 = a1 + 956;
    v11 = 1;
    goto LABEL_8;
  }

  v7 = qword_297F13270[v6];
  v8 = 0x60C06u >> (8 * v6);
  sub_297E50DB0(1, a1 + 956, 7, 4u, "phHciNfc_UnRegisterCmdRspEvt:Removing Registration for Pipe ID");
  sub_297E50DB0(1, a1 + 956, 7, 4u, "phHciNfc_UnRegisterCmdRspEvt:Removing Registration for MsgType");
  v9 = sub_297E9E004(a1, a1 + v7, v8 & 0xE, *(a2 + 4), a3);
LABEL_9:
  sub_297E4DFAC(2, a1, 7, 5u, "phHciNfc_UnRegisterCmdRspEvt");
  return v9;
}

uint64_t sub_297E9DE10(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v8 = a4;
  v9 = a3;
  sub_297E4E1B4(2, a1, 7, 5u, "phHciNfc_AddRegistration");
  if (a2 && a5)
  {
    v12 = sub_297E9DF18(a6, a2, v9, v8, a5);
    if (v12 && v9)
    {
      v13 = v9;
      while (*a2)
      {
        a2 += 24;
        if (!--v13)
        {
          goto LABEL_10;
        }
      }

      v12 = 0;
      *(a2 + 1) = v8;
      *(a2 + 8) = a6;
      *(a2 + 16) = a5;
      *a2 = 1;
    }
  }

  else
  {
    v12 = 1;
    sub_297E4E0B0(2, a1, 7, 1u, "phHciNfc_AddRegistration:Failed, Invalid List or Callback");
  }

LABEL_10:
  sub_297E4DFAC(2, a1, 7, 5u, "phHciNfc_AddRegistration");
  return v12;
}

uint64_t sub_297E9DF18(uint64_t a1, uint64_t a2, unsigned int a3, int a4, uint64_t a5)
{
  sub_297E4E1B4(2, a1, 7, 5u, "phHciNfc_VerifyIfRegistered");
  if (a2 && a5)
  {
    if (a3)
    {
      v10 = a3;
      while (*a2 != 1 || *(a2 + 1) != a4 || *(a2 + 16) != a5)
      {
        a2 += 24;
        if (!--v10)
        {
          goto LABEL_9;
        }
      }

      v11 = 0;
    }

    else
    {
LABEL_9:
      v11 = 255;
    }
  }

  else
  {
    v11 = 1;
    sub_297E4E0B0(2, a1, 7, 1u, "phHciNfc_VerifyIfRegistered:Failed, Invalid List or Callback");
  }

  sub_297E4DFAC(2, a1, 7, 5u, "phHciNfc_VerifyIfRegistered");
  return v11;
}

uint64_t sub_297E9E004(uint64_t a1, uint64_t a2, unsigned int a3, int a4, uint64_t a5)
{
  sub_297E4E1B4(2, a1, 7, 5u, "phHciNfc_RemoveRegistration");
  if (a2 && a5)
  {
    if (a3)
    {
      v10 = a3;
      while (*a2 != 1 || *(a2 + 1) != a4 || *(a2 + 16) != a5)
      {
        a2 += 24;
        if (!--v10)
        {
          goto LABEL_9;
        }
      }

      v11 = 0;
      *a2 = 0;
      *(a2 + 8) = 0;
      *(a2 + 16) = 0;
    }

    else
    {
LABEL_9:
      v11 = 255;
    }
  }

  else
  {
    v11 = 1;
    sub_297E4E0B0(2, a1, 7, 1u, "phHciNfc_RemoveRegistration:Failed, Invalid Callback or List Empty");
  }

  sub_297E4DFAC(2, a1, 7, 5u, "phHciNfc_RemoveRegistration");
  return v11;
}

uint64_t sub_297E9E0F8(uint64_t a1)
{
  sub_297E4E1B4(2, a1, 7, 5u, "phHciNfc_UnRegAllRspCb");
  if (a1)
  {
    sub_297E4E0B0(1, a1 + 956, 7, 4u, "phHciNfc_UnRegAllRspEvts: Clearing all response call back function registrations");
    v2 = a1 + 360;
    v3 = 6;
    do
    {
      *(v2 + 8) = 0;
      *(v2 + 16) = 0;
      *v2 = -256;
      v2 += 24;
      --v3;
    }

    while (v3);
  }

  else
  {
    sub_297E4E0B0(2, 0, 7, 1u, "phHciNfc_UnRegAllRspEvts: Failed, Invalid Context or Callback");
  }

  return sub_297E4DFAC(2, a1, 7, 5u, "phHciNfc_UnRegAllRspCb");
}

uint64_t sub_297E9E1B8(uint64_t a1, uint64_t a2, int a3, int a4, _BYTE *a5)
{
  sub_297E4E1B4(2, a1, 7, 5u, "phHciNfc_GetPipeIndex");
  if (a2 && a5)
  {
    if (a3)
    {
      v10 = 0;
      v11 = (a2 + 1);
      while (*(v11 - 1) != 1 || *v11 != a4)
      {
        ++v10;
        v11 += 24;
        if (a3 == v10)
        {
          goto LABEL_8;
        }
      }

      v12 = 0;
      *a5 = v10;
    }

    else
    {
LABEL_8:
      sub_297E4E0B0(2, a1, 7, 4u, "phHciNfc_GetPipeIndex:Enabled slot is not found");
      v12 = 255;
    }
  }

  else
  {
    v12 = 1;
    sub_297E4E0B0(2, a1, 7, 1u, "phHciNfc_GetPipeIndex:Failed, Invalid Index or List Empty");
  }

  sub_297E4DFAC(2, a1, 7, 5u, "phHciNfc_GetPipeIndex");
  return v12;
}

uint64_t sub_297E9E2C4(uint64_t a1, int a2, uint64_t a3)
{
  sub_297E4E1B4(2, a1, 7, 5u, "phHciNfc_ReceiveAdminNotifyEvt");
  if (!a1 || !a3 || (v6 = *(a1 + 960)) == 0)
  {
    v8 = "phHciNfc_ReceiveAdminNotifyEvt:Failed, Invalid Context or Info received";
    v9 = 2;
    v10 = a1;
LABEL_10:
    sub_297E4E0B0(v9, v10, 7, 1u, v8);
    goto LABEL_11;
  }

  sub_297E4E0B0(1, a1 + 956, 7, 4u, "phHciNfc_ReceiveAdminNotifyEvt:Process notification event received on Admin pipe");
  if (a2)
  {
    goto LABEL_11;
  }

  v7 = *(a3 + 1);
  switch(v7)
  {
    case 1:
      sub_297E4E0B0(1, a1 + 956, 7, 4u, "phHciNfc_ReceiveAdminNotifyEvt:Rxd Event End Of Operation");
      sub_297EED988(*(a1 + 960));
      break;
    case 32:
      sub_297E4E0B0(1, a1 + 956, 7, 4u, "phHciNfc_ReceiveAdminNotifyEvt:Received OS Reset Ntf on Admin Pipe");
      if (!*(v6 + 6184))
      {
        sub_297EED100(a1, 0, a3);
      }

      break;
    case 3:
      sub_297E4E0B0(1, a1 + 956, 7, 4u, "phHciNfc_ReceiveAdminNotifyEvt:Rxd phHciNfc_e_EvtHotPlug");
      break;
    default:
      v8 = "phHciNfc_ReceiveAdminNotifyEvt: Not processing the event";
      v10 = a1 + 956;
      v9 = 1;
      goto LABEL_10;
  }

LABEL_11:

  return sub_297E4DFAC(2, a1, 7, 5u, "phHciNfc_ReceiveAdminNotifyEvt");
}

uint64_t sub_297E9E434(uint64_t a1, int a2, unsigned __int8 *a3)
{
  v15 = 0;
  sub_297E4E1B4(2, a1, 7, 5u, "phHciNfc_ReceiveOpenPipeNotifyCmd");
  if (!a1 || !a3)
  {
    v6 = "phHciNfc_ReceiveOpenPipeNotifyCmd:Failed Invalid Params Received";
    v7 = 2;
    v8 = a1;
LABEL_18:
    sub_297E4E0B0(v7, v8, 7, 1u, v6);
    return sub_297E4DFAC(2, a1, 7, 5u, "phHciNfc_ReceiveOpenPipeNotifyCmd");
  }

  if (a2)
  {
    v6 = "phHciNfc_ReceiveOpenPipeNotifyCmd:Failed Status received from lower layer";
LABEL_17:
    v8 = a1 + 956;
    v7 = 1;
    goto LABEL_18;
  }

  if (a3[1] != 3)
  {
    v6 = "phHciNfc_ReceiveOpenPipeNotifyCmd:Invalid Ins received from lower layer";
    goto LABEL_17;
  }

  LODWORD(v15) = 0;
  BYTE4(v15) = *a3;
  sub_297E9DCD0(a1, &v15, sub_297E9E434);
  v9 = *(a1 + 152);
  if (v9)
  {
    if (*(v9 + 8))
    {
      phOsalNfc_FreeMemory();
      *(*(a1 + 152) + 8) = 0;
    }

    phOsalNfc_FreeMemory();
    *(a1 + 152) = 0;
  }

  Memory_Typed = phOsalNfc_GetMemory_Typed();
  if (!Memory_Typed)
  {
    sub_297E4E0B0(1, a1 + 956, 7, 1u, "phHciNfc_ReceiveOpenPipeNotifyCmd: Failed to allocate memory for pSendParams");
LABEL_24:
    *(a1 + 152) = 0;
    return sub_297E4DFAC(2, a1, 7, 5u, "phHciNfc_ReceiveOpenPipeNotifyCmd");
  }

  v11 = Memory_Typed;
  phOsalNfc_SetMemory();
  *(a1 + 152) = v11;
  *v11 = *a3;
  *(v11 + 1) = 512;
  v12 = phOsalNfc_GetMemory_Typed();
  *(v11 + 8) = v12;
  if (!v12)
  {
    sub_297E4E0B0(1, a1 + 956, 7, 1u, "phHciNfc_ReceiveOpenPipeNotifyCmd:Failed to send to lower layer");
    *(*(a1 + 152) + 8) = 0;
LABEL_23:
    phOsalNfc_FreeMemory();
    goto LABEL_24;
  }

  *v12 = 0;
  *(v11 + 4) = 1;
  *(a1 + 953) = 0;
  if (sub_297E99C88(a1, v11, sub_297E9CAD4, a1) != 13)
  {
    sub_297E4E0B0(1, a1 + 956, 7, 1u, "phHciNfc_ReceiveOpenPipeNotifyCmd:Failed to send to lower layer");
    phOsalNfc_FreeMemory();
    *(v11 + 8) = 0;
    goto LABEL_23;
  }

  v13 = *a3;
  if (v13 != *(a1 + 816))
  {
    LODWORD(v15) = 1;
    BYTE4(v15) = v13;
    sub_297E9D594(a1, &v15, sub_297E9EB60, a1);
  }

  return sub_297E4DFAC(2, a1, 7, 5u, "phHciNfc_ReceiveOpenPipeNotifyCmd");
}

uint64_t sub_297E9E6C4(uint64_t a1, int a2, uint64_t a3)
{
  sub_297E4E1B4(2, a1, 7, 5u, "phHciNfc_ReceiveAdminNotifyCmd");
  if (!a1 || a2 || !a3)
  {
    v15 = "phHciNfc_ReceiveAdminNotifyCmd:Failed Invalid Params Received";
    v16 = 2;
    v17 = a1;
    goto LABEL_18;
  }

  v6 = *(a3 + 1);
  if ((v6 - 20) < 2)
  {
    sub_297E4E1B4(2, a1, 7, 5u, "phHciNfc_ProcessClearAllPipeNotifyCmd");
    if (**(a3 + 8) != 192)
    {
      goto LABEL_26;
    }

    v18 = *(a1 + 960);
    if (!v18)
    {
      goto LABEL_26;
    }

    sub_297E4E0B0(1, a1 + 956, 7, 4u, "phHciNfc_ProcessClearAllPipeNotifyCmd:eSE");
    if (*(v18 + 2992) != 1)
    {
      *(a1 + 816) = -1;
      *(a1 + 891) = 1;
    }

    if (**(a3 + 8) == 2)
    {
      sub_297E4E0B0(1, v18 + 9792, 7, 4u, "phHciNfc_ProcessClearAllPipeNotifyCmd:UICC");
      if (*(v18 + 2992) != 1)
      {
        *(a1 + 832) = -1;
      }
    }

    else
    {
LABEL_26:
      sub_297E4E0B0(2, a1, 7, 4u, "phHciNfc_ProcessClearAllPipeNotifyCmd:unkown NFCEE ID");
    }

    sub_297E4DFAC(2, a1, 7, 5u, "phHciNfc_ProcessClearAllPipeNotifyCmd");
    sub_297E4E0B0(1, a1 + 956, 7, 4u, "phHciNfc_ReceiveAdminNotifyCmd:Received Clear All Pipes Sending Any OK!!!");
  }

  else if (v6 != 19)
  {
    if (v6 == 18)
    {
      v23 = 0;
      sub_297E4E1B4(2, a1, 7, 5u, "phHciNfc_ProcessPipeCreateNotifyCmd");
      if (!*(a1 + 960) || (v7 = *(a3 + 8)) == 0 || *(a3 + 4) != 5)
      {
        sub_297E4E0B0(2, a1, 7, 1u, "phHciNfc_ProcessPipeCreateNotifyCmd:Failed Invalid Params Received");
        sub_297E4DFAC(2, a1, 7, 5u, "phHciNfc_ProcessPipeCreateNotifyCmd");
        goto LABEL_40;
      }

      v8 = v7[3];
      v9 = v7[4];
      v10 = *v7;
      BYTE4(v23) = v9;
      v11 = sub_297E9D594(a1, &v23, sub_297E9E434, a1);
      if (v11)
      {
        sub_297E4E0B0(1, a1 + 956, 7, 2u, "phHciNfc_ProcessPipeCreateNotifyCmd: Failed to register phHciNfc_ReceiveOpenPipeNotifyCmd");
      }

      if (v10 == 2)
      {
        if (v8 != 65)
        {
          goto LABEL_50;
        }

        *(a1 + 832) = v9;
        v12 = "phHciNfc_ProcessPipeCreateNotifyCmd:UICC Conn Pipe Info Updated";
        v13 = 65;
        v14 = 833;
      }

      else
      {
        if (v10 != 192)
        {
          v12 = "phHciNfc_ProcessPipeCreateNotifyCmd:Unkown Source Host ID";
LABEL_49:
          sub_297E4E0B0(1, a1 + 956, 7, 4u, v12);
LABEL_50:
          *(a1 + 893) = 1;
          sub_297E4DFAC(2, a1, 7, 5u, "phHciNfc_ProcessPipeCreateNotifyCmd");
          if (v11)
          {
            goto LABEL_40;
          }

          goto LABEL_28;
        }

        if (v8 == 65)
        {
          *(a1 + 818) = v9;
          v12 = "phHciNfc_ProcessPipeCreateNotifyCmd:eSE Connectivity Pipe Info Updated";
          v13 = 65;
          v14 = 819;
        }

        else
        {
          if (v8 != 240)
          {
            v12 = "phHciNfc_ProcessPipeCreateNotifyCmd:eSE Unknown Source Gate ID";
            goto LABEL_49;
          }

          *(a1 + 816) = v9;
          v12 = "phHciNfc_ProcessPipeCreateNotifyCmd:eSE APDU Pipe Info Updated";
          v13 = -16;
          v14 = 817;
        }
      }

      *(a1 + v14) = v13;
      goto LABEL_49;
    }

    v15 = "phHciNfc_ReceiveAdminNotifyCmd:Unknown Instruction";
    v17 = a1 + 956;
    v16 = 1;
LABEL_18:
    sub_297E4E0B0(v16, v17, 7, 1u, v15);
    goto LABEL_40;
  }

LABEL_28:
  v19 = *(a1 + 152);
  if (v19)
  {
    if (*(v19 + 8))
    {
      phOsalNfc_FreeMemory();
      *(*(a1 + 152) + 8) = 0;
    }

    phOsalNfc_FreeMemory();
    *(a1 + 152) = 0;
  }

  Memory_Typed = phOsalNfc_GetMemory_Typed();
  if (Memory_Typed)
  {
    v21 = Memory_Typed;
    phOsalNfc_SetMemory();
    *(a1 + 152) = v21;
    *v21 = 1;
    *(v21 + 2) = 2;
    *(v21 + 8) = 0;
    *(v21 + 4) = 0;
    *(a1 + 953) = 0;
    if (sub_297E99C88(a1, v21, sub_297E9CAD4, a1) == 13)
    {
      sub_297E4E0B0(1, a1 + 956, 7, 4u, "ReceiveAdminNotifyCmd: ANY_OK Sent to NCI");
      goto LABEL_40;
    }

    sub_297E4E0B0(1, a1 + 956, 7, 1u, "ReceiveAdminNotifyCmd: Failed to send ANY_OK to NFCC");
    phOsalNfc_FreeMemory();
  }

  else
  {
    sub_297E4E0B0(1, a1 + 956, 7, 1u, "phHciNfc_ReceiveAdminNotifyCmd: Failed to allocate memory for pSendParams");
  }

  *(a1 + 152) = 0;
LABEL_40:

  return sub_297E4DFAC(2, a1, 7, 5u, "phHciNfc_ReceiveAdminNotifyCmd");
}

uint64_t sub_297E9EB60(uint64_t a1, int a2, unsigned __int8 *a3)
{
  v27 = 0;
  v25 = 0u;
  v26 = 0u;
  v24 = 0;
  sub_297E4E1B4(2, a1, 7, 5u, "phHciNfc_ProcessEventsOnPipe");
  if (a1)
  {
    if (!a2)
    {
      if (a3)
      {
        v6 = *(a1 + 960);
        if (v6)
        {
          v7 = sub_297E9EFAC(*(a1 + 956), *a3);
          LODWORD(v27) = v7;
          v8 = a3[1];
          if (v8 <= 0x12)
          {
            if (v8 == 16)
            {
              v17 = *(a3 + 2);
              if (*(a3 + 2) && *(a3 + 1))
              {
                *&v26 = *(a3 + 1);
              }

              else
              {
                v17 = 0;
                *&v26 = 0;
              }

              DWORD2(v26) = v17;
              DWORD2(v25) = 0;
              *&v25 = 0;
              v19 = *a3;
              v20 = a1;
              v12 = 0;
              v16 = 3;
              goto LABEL_39;
            }

            if (v8 == 18)
            {
              if (!*(a3 + 2) || (v9 = *(a3 + 1)) == 0 || *v9 != 129)
              {
                sub_297E4E0B0(1, a1 + 956, 7, 1u, "phHciNfc_ProcessEventsOnPipe:Failed, error in packet");
                v18 = 0;
                LODWORD(v11) = 0;
                v12 = 255;
LABEL_26:
                if (v18 + v11 != *(a3 + 2))
                {
                  DWORD2(v26) = 0;
                  DWORD2(v25) = 0;
                  sub_297E4E0B0(1, a1 + 956, 7, 1u, "phHciNfc_ProcessEventsOnPipe:Failed,BER TLV parsing, Length Mismatch");
                  v12 = 255;
                }

                v19 = *a3;
                v20 = a1;
                v16 = 2;
                goto LABEL_39;
              }

              v10 = v9[1];
              DWORD2(v25) = v9[1];
              *&v25 = v9 + 2;
              v11 = v10 + 2;
              if ((v10 - 17) > 0xFFFFFFF3)
              {
                v12 = 0;
              }

              else
              {
                sub_297E4E0B0(1, a1 + 956, 7, 1u, "phHciNfc_ProcessEventsOnPipe:Failed AID Length Evaluation");
                v9 = *(a3 + 1);
                v12 = 255;
              }

              if (v9[v11] != 130)
              {
                sub_297E4E0B0(1, a1 + 956, 7, 1u, "phHciNfc_ProcessEventsOnPipe:Failed, PARAMETER Field is not available");
                v18 = 0;
                v12 = 255;
                goto LABEL_26;
              }

              LODWORD(v11) = v10 + 3;
              v18 = v9[v10 + 3];
              if ((v18 & 0x80000000) == 0)
              {
                LODWORD(v11) = v10 + 4;
LABEL_45:
                DWORD2(v26) = v18;
LABEL_46:
                *&v26 = *(a3 + 1) + v11;
                goto LABEL_26;
              }

              if (v18 == -126)
              {
                v23 = &v9[v10];
                LODWORD(v11) = v10 + 6;
                if (v23[4])
                {
                  v18 = v23[5] | (v23[4] << 8);
                  goto LABEL_45;
                }

                v22 = "phHciNfc_ProcessEventsOnPipe:Failed Parsing BER TLV Two BYTE";
              }

              else
              {
                if (v9[v10 + 3] != 129)
                {
                  sub_297E4E0B0(1, a1 + 956, 7, 1u, "phHciNfc_ProcessEventsOnPipe:Failed Parsing BER TLV");
                  v18 = 0;
                  v12 = 255;
                  goto LABEL_46;
                }

                LODWORD(v11) = v10 + 4;
                if (v9[v10 + 4] < 0)
                {
                  v18 = v9[v10 + 4];
                  LODWORD(v11) = v10 + 5;
                  goto LABEL_45;
                }

                v22 = "phHciNfc_ProcessEventsOnPipe:Failed Parsing BER TLV One BYTE";
              }

              sub_297E4E0B0(1, a1 + 956, 7, 1u, v22);
              v18 = 0;
              v12 = 255;
              goto LABEL_46;
            }

LABEL_20:
            sub_297E50DB0(1, a1 + 956, 7, 1u, "phHciNfc_ProcessEventsOnPipe: Unknown HCI Event, Dropped Ins");
            return sub_297E4DFAC(2, a1, 7, 5u, "phHciNfc_ProcessEventsOnPipe");
          }

          if (v8 == 19)
          {
            *&v25 = 0;
            DWORD2(v25) = 0;
            *&v26 = 0;
            DWORD2(v26) = 0;
            sub_297EEDAE0(a1, &v25, 0, *a3, 17);
            sub_297E50DB0(1, a1 + 956, 7, 4u, "phHciNfc_ProcessEventsOnPipe: phLibNfc_eSE_EvtEndOfOperation, Ins");
            return sub_297E4DFAC(2, a1, 7, 5u, "phHciNfc_ProcessEventsOnPipe");
          }

          if (v8 != 32)
          {
            goto LABEL_20;
          }

          v13 = *(a3 + 2);
          if (*(a3 + 2) && (v14 = *(a3 + 1)) != 0)
          {
            v15 = v7;
            if (*v14 == 1)
            {
              v16 = 23;
            }

            else if (*v14)
            {
              sub_297E4E0B0(1, a1 + 956, 7, 1u, " SE restricted mode Unknown Event\n");
              v14 = *(a3 + 1);
              v13 = *(a3 + 2);
              v16 = 255;
            }

            else
            {
              v15 = 255;
              LODWORD(v27) = 255;
              v16 = 4;
            }

            *&v26 = v14;
            DWORD2(v26) = v13;
            DWORD2(v25) = 0;
            *&v25 = 0;
          }

          else
          {
            v15 = 255;
            *&v25 = 0;
            DWORD2(v25) = 0;
            *&v26 = 0;
            v16 = 4;
            LODWORD(v27) = 255;
            DWORD2(v26) = 0;
          }

          if (!*(v6 + 6104))
          {
            v19 = *a3;
            v20 = a1;
            v12 = 0;
LABEL_39:
            sub_297EEDAE0(v20, &v25, v12, v19, v16);
            return sub_297E4DFAC(2, a1, 7, 5u, "phHciNfc_ProcessEventsOnPipe");
          }

          if (*(v6 + 6568))
          {
            v24 = __PAIR64__(v15, v16);
            sub_297E54734(1, a1 + 956, 7, 4u, "phHciNfc_ProcessEventsOnPipe :pGenericNtfCb[RestrictedMode]");
            (*(v6 + 6568))(*(v6 + 9784), *(v6 + 6576), 216, &v24);
          }
        }
      }
    }
  }

  return sub_297E4DFAC(2, a1, 7, 5u, "phHciNfc_ProcessEventsOnPipe");
}

uint64_t sub_297E9EFAC(int a1, unsigned int a2)
{
  v6 = a1;
  sub_297E4E1B4(1, &v6, 7, 5u, "phHciNfc_GetEseOsType");
  if (a2 > 0x2D)
  {
    goto LABEL_6;
  }

  if (((1 << a2) & 0x88000000000) != 0)
  {
    v3 = 1;
    goto LABEL_14;
  }

  if (((1 << a2) & 0x110000000000) != 0)
  {
    v3 = 2;
    goto LABEL_14;
  }

  if (((1 << a2) & 0x220000000000) != 0)
  {
    v3 = 3;
  }

  else
  {
LABEL_6:
    if (a2 == 25)
    {
      v4 = 0;
    }

    else
    {
      v4 = 255;
    }

    if (a2 == 22)
    {
      v3 = 0;
    }

    else
    {
      v3 = v4;
    }
  }

LABEL_14:
  sub_297E4DFAC(1, &v6, 7, 5u, "phHciNfc_GetEseOsType");
  return v3;
}

uint64_t sub_297E9F088(uint64_t a1, uint64_t a2, char *a3)
{
  sub_297E4E1B4(2, a1, 7, 5u, "phHciNfc_MultiOSGetPipeId");
  if (a1 && a3 && (v6 = *(a1 + 960)) != 0)
  {
    if (*(v6 + 2992) == 1)
    {
      if (a2 > 1)
      {
        if (a2 == 2)
        {
          a2 = 0;
          v7 = *(a1 + 824);
          goto LABEL_18;
        }

        if (a2 == 3)
        {
          a2 = 0;
          v7 = *(a1 + 828);
          goto LABEL_18;
        }
      }

      else
      {
        if (!a2)
        {
          v7 = *(a1 + 816);
          goto LABEL_18;
        }

        if (a2 == 1)
        {
          a2 = 0;
          v7 = *(a1 + 820);
LABEL_18:
          *a3 = v7;
          goto LABEL_10;
        }
      }

      a2 = 0;
      v7 = -1;
      goto LABEL_18;
    }

    a2 = 147;
  }

  else
  {
    a2 = 1;
    sub_297E4E0B0(2, a1, 7, 1u, "phHciNfc_MultiOSGetPipeId:Invalid Context or PipeId");
  }

LABEL_10:
  sub_297E4DFAC(2, a1, 7, 5u, "phHciNfc_MultiOSGetPipeId");
  return a2;
}

uint64_t sub_297E9F198(uint64_t a1, unsigned int a2, int a3)
{
  v9 = a2;
  sub_297E4E1B4(1, &v9, 5, 5u, "phUtilNfc_SetDriverHandle");
  v5 = v9;
  if (v9 > 1)
  {
    v6 = 255;
  }

  else
  {
    v6 = 0;
    v7 = &unk_2A18BDDC0 + 112 * v9;
    *v7 = a1;
    *(v7 + 2) = v5;
    *(v7 + 3) = a3;
    *(v7 + 2) = 0;
    *(v7 + 4) = 0;
  }

  sub_297E4DFAC(1, &v9, 5, 5u, "phUtilNfc_SetDriverHandle");
  return v6;
}

uint64_t sub_297E9F244(uint64_t a1, void *a2)
{
  v10 = a1;
  sub_297E4E1B4(0, &v10, 5, 5u, "phUtilNfc_RetrieveDnldCoreCtx");
  if (a2)
  {
    v3 = 0;
    *a2 = 0;
    v4 = 1;
    while (1)
    {
      v5 = v4;
      v6 = &unk_2A18BDDC0 + 112 * v3;
      if (*v6 == v10)
      {
        break;
      }

      v4 = 0;
      v3 = 1;
      if ((v5 & 1) == 0)
      {
        goto LABEL_5;
      }
    }

    v9 = *(v6 + 2);
    v7 = 0;
    if (v9 <= 1)
    {
      *a2 = *(&unk_2A18BDDC0 + 14 * v9 + 12);
    }
  }

  else
  {
LABEL_5:
    v7 = 255;
  }

  sub_297E4DFAC(0, &v10, 5, 5u, "phUtilNfc_RetrieveDnldCoreCtx");
  return v7;
}

uint64_t sub_297E9F31C(unsigned int a1, void *a2)
{
  v5 = a1;
  sub_297E4E1B4(1, &v5, 5, 5u, "phUtilNfc_GetLibNfcContextFromCtrlType");
  if (a2 && (*a2 = 0, v5 <= 1))
  {
    v3 = 0;
    *a2 = *(&unk_2A18BDDC0 + 14 * v5 + 2);
  }

  else
  {
    v3 = 255;
  }

  sub_297E4DFAC(1, &v5, 5, 5u, "phUtilNfc_GetLibNfcContextFromCtrlType");
  return v3;
}

uint64_t sub_297E9F3BC(uint64_t a1, uint64_t a2)
{
  v9 = a1;
  sub_297E4E1B4(0, &v9, 5, 5u, "phUtilNfc_SetLibNfcContext");
  v3 = 0;
  v4 = 1;
  while (1)
  {
    v5 = v4;
    v6 = (&unk_2A18BDDC0 + 112 * v3);
    if (v9 == *v6)
    {
      break;
    }

    v4 = 0;
    v3 = 1;
    if ((v5 & 1) == 0)
    {
      v7 = 255;
      goto LABEL_6;
    }
  }

  v7 = 0;
  v6[2] = a2;
LABEL_6:
  sub_297E4DFAC(0, &v9, 5, 5u, "phUtilNfc_SetLibNfcContext");
  return v7;
}

uint64_t sub_297E9F46C(uint64_t a1, uint64_t a2)
{
  v9 = a1;
  sub_297E4E1B4(0, &v9, 5, 5u, "phUtilNfc_SetNdefNfcContext");
  v3 = 0;
  v4 = 1;
  while (1)
  {
    v5 = v4;
    v6 = (&unk_2A18BDDC0 + 112 * v3);
    if (v9 == *v6)
    {
      break;
    }

    v4 = 0;
    v3 = 1;
    if ((v5 & 1) == 0)
    {
      v7 = 255;
      goto LABEL_6;
    }
  }

  v7 = 0;
  v6[3] = a2;
LABEL_6:
  sub_297E4DFAC(0, &v9, 5, 5u, "phUtilNfc_SetNdefNfcContext");
  return v7;
}

uint64_t sub_297E9F51C(uint64_t a1, void *a2)
{
  v9 = a1;
  sub_297E4E1B4(0, &v9, 5, 5u, "phUtilNfc_GetNciNfcContext");
  if (a2)
  {
    v3 = 0;
    *a2 = 0;
    v4 = 1;
    while (1)
    {
      v5 = v4;
      v6 = (&unk_2A18BDDC0 + 112 * v3);
      if (v9 == *v6)
      {
        break;
      }

      v4 = 0;
      v3 = 1;
      if ((v5 & 1) == 0)
      {
        goto LABEL_5;
      }
    }

    v7 = 0;
    *a2 = v6[4];
  }

  else
  {
LABEL_5:
    v7 = 255;
  }

  sub_297E4DFAC(0, &v9, 5, 5u, "phUtilNfc_GetNciNfcContext");
  return v7;
}

uint64_t sub_297E9F5D8(uint64_t a1, uint64_t a2)
{
  v9 = a1;
  sub_297E4E1B4(0, &v9, 5, 5u, "phUtilNfc_SetNciNfcContext");
  v3 = 0;
  v4 = 1;
  while (1)
  {
    v5 = v4;
    v6 = (&unk_2A18BDDC0 + 112 * v3);
    if (v9 == *v6)
    {
      break;
    }

    v4 = 0;
    v3 = 1;
    if ((v5 & 1) == 0)
    {
      v7 = 255;
      goto LABEL_6;
    }
  }

  v7 = 0;
  v6[4] = a2;
LABEL_6:
  sub_297E4DFAC(0, &v9, 5, 5u, "phUtilNfc_SetNciNfcContext");
  return v7;
}

uint64_t sub_297E9F688(uint64_t a1, uint64_t a2)
{
  v9 = a1;
  sub_297E4E1B4(0, &v9, 5, 5u, "phUtilNfc_SetNciNfcCoreContext");
  v3 = 0;
  v4 = 1;
  while (1)
  {
    v5 = v4;
    v6 = (&unk_2A18BDDC0 + 112 * v3);
    if (v9 == *v6)
    {
      break;
    }

    v4 = 0;
    v3 = 1;
    if ((v5 & 1) == 0)
    {
      v7 = 255;
      goto LABEL_6;
    }
  }

  v7 = 0;
  v6[5] = a2;
LABEL_6:
  sub_297E4DFAC(0, &v9, 5, 5u, "phUtilNfc_SetNciNfcCoreContext");
  return v7;
}

uint64_t sub_297E9F738(uint64_t a1)
{
  v6 = a1;
  sub_297E4E1B4(0, &v6, 5, 5u, "phUtilNfc_ValidateDriverHandle");
  v1 = 0;
  v2 = 0;
  v3 = v6;
  do
  {
    v4 = *(&unk_2A18BDDC0 + 14 * v2);
    if (v1)
    {
      break;
    }

    v1 = 1;
    v2 = 1;
  }

  while (v6 != v4);
  sub_297E4DFAC(0, &v6, 5, 5u, "phUtilNfc_ValidateDriverHandle");
  if (v3 == v4)
  {
    return 0;
  }

  else
  {
    return 255;
  }
}

uint64_t sub_297E9F7D8(uint64_t a1, uint64_t a2)
{
  v9 = a1;
  sub_297E4E1B4(0, &v9, 5, 5u, "phUtilNfc_SetDnldNfcContext");
  v3 = 0;
  v4 = 1;
  while (1)
  {
    v5 = v4;
    v6 = (&unk_2A18BDDC0 + 112 * v3);
    if (v9 == *v6)
    {
      break;
    }

    v4 = 0;
    v3 = 1;
    if ((v5 & 1) == 0)
    {
      v7 = 255;
      goto LABEL_6;
    }
  }

  v7 = 0;
  v6[6] = a2;
LABEL_6:
  sub_297E4DFAC(0, &v9, 5, 5u, "phUtilNfc_SetDnldNfcContext");
  return v7;
}

uint64_t sub_297E9F888(uint64_t a1, char a2)
{
  v9 = a1;
  sub_297E4E1B4(0, &v9, 5, 5u, "phUtilNfc_SetIgnoreWkUpRet");
  v3 = 0;
  v4 = 1;
  while (1)
  {
    v5 = v4;
    v6 = &unk_2A18BDDC0 + 112 * v3;
    if (v9 == *v6)
    {
      break;
    }

    v4 = 0;
    v3 = 1;
    if ((v5 & 1) == 0)
    {
      v7 = 255;
      goto LABEL_6;
    }
  }

  v7 = 0;
  v6[57] = a2;
LABEL_6:
  sub_297E4DFAC(0, &v9, 5, 5u, "phUtilNfc_SetIgnoreWkUpRet");
  return v7;
}

uint64_t sub_297E9F938(unsigned int a1, uint64_t a2)
{
  v5 = a1;
  sub_297E4E1B4(1, &v5, 5, 5u, "phUtilNfc_SetIoctlContext");
  if (v5 > 1)
  {
    v3 = 255;
  }

  else
  {
    v3 = 0;
    *(&unk_2A18BDDC0 + 14 * v5 + 11) = a2;
  }

  sub_297E4DFAC(1, &v5, 5, 5u, "phUtilNfc_SetIoctlContext");
  return v3;
}

uint64_t sub_297E9F9CC(unsigned int a1, uint64_t a2)
{
  v5 = a1;
  sub_297E4E1B4(1, &v5, 5, 5u, "phUtilNfc_SetdnldCoreContext");
  if (v5 > 1)
  {
    v3 = 255;
  }

  else
  {
    v3 = 0;
    *(&unk_2A18BDDC0 + 14 * v5 + 12) = a2;
  }

  sub_297E4DFAC(1, &v5, 5, 5u, "phUtilNfc_SetdnldCoreContext");
  return v3;
}

uint64_t sub_297E9FA60(unsigned int a1, uint64_t a2)
{
  v5 = a1;
  sub_297E4E1B4(1, &v5, 5, 5u, "phUtilNfc_SetdnldEseCoreContext");
  if (v5 > 1)
  {
    v3 = 255;
  }

  else
  {
    v3 = 0;
    *(&unk_2A18BDDC0 + 14 * v5 + 8) = a2;
  }

  sub_297E4DFAC(1, &v5, 5, 5u, "phUtilNfc_SetdnldEseCoreContext");
  return v3;
}

uint64_t sub_297E9FAF4(unsigned int a1, void *a2)
{
  v5 = a1;
  sub_297E4E1B4(1, &v5, 5, 5u, "phUtilNfc_GetdnldEseCoreContext");
  if (a2 && (*a2 = 0, v5 <= 1))
  {
    v3 = 0;
    *a2 = *(&unk_2A18BDDC0 + 14 * v5 + 8);
  }

  else
  {
    v3 = 255;
  }

  sub_297E4DFAC(1, &v5, 5, 5u, "phUtilNfc_GetdnldEseCoreContext");
  return v3;
}

uint64_t sub_297E9FB94(unsigned int a1, uint64_t a2)
{
  v5 = a1;
  sub_297E4E1B4(1, &v5, 5, 5u, "phUtilNfc_SetHciNfcContext");
  if (v5 > 1)
  {
    v3 = 255;
  }

  else
  {
    v3 = 0;
    *(&unk_2A18BDDC0 + 14 * v5 + 13) = a2;
  }

  sub_297E4DFAC(1, &v5, 5, 5u, "phUtilNfc_SetHciNfcContext");
  return v3;
}

uint64_t sub_297E9FC28(uint64_t a1, uint64_t a2, _BYTE *a3, int a4)
{
  sub_297E4E1B4(2, a1, 3, 5u, "phNciNfc_RdrIso15693Init");
  if (a1 && a2 && a3 && a4)
  {
    sub_297E4E0B0(1, a1 + 6524, 3, 4u, "Updating NFC-I (ISO15693) passive poll Mode Techn Specific info");
    *(a2 + 4) = 20;
    *(a2 + 48) = 7;
    if (a3[6] == 10)
    {
      *(a2 + 46) = a3[7];
      *(a2 + 45) = a3[8];
      *(a2 + 44) = 8;
      phOsalNfc_MemCopy();
      sub_297E9FDA4(*(a1 + 6528), a2 + 36, a2 + 36);
      v8 = 0;
      *(a2 + 47) = 0;
      v9 = *(a1 + 4800);
      *v9 = sub_297E9FEB0;
      v9[1] = sub_297EA010C;
      v9[2] = 0;
      v9[3] = sub_297EFF438;
    }

    else
    {
      sub_297E4E0B0(1, a1 + 6524, 3, 1u, "Invalid Activation parameters length received for ISO15693 Tag");
      v8 = 255;
    }
  }

  else
  {
    v8 = 1;
    sub_297E4E0B0(2, a1, 3, 1u, "Invalid input parameters!");
  }

  sub_297E4DFAC(2, a1, 3, 5u, "phNciNfc_RdrIso15693Init");
  return v8;
}

uint64_t sub_297E9FDA4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v10 = a1;
  sub_297E4E1B4(0, &v10, 3, 5u, "phNciNfc_GetTagTypeInfo");
  if (a2 && a3)
  {
    v5 = *(a2 + 6);
    if (v5 != 7)
    {
      if (v5 == 4)
      {
        v6 = *(a2 + 5);
        switch(v6)
        {
          case 3:
            v8 = 2;
            goto LABEL_17;
          case 2:
            v8 = 1;
            goto LABEL_17;
          case 1:
            *(a3 + 12) = 0;
            return sub_297E4DFAC(0, &v10, 3, 5u, "phNciNfc_GetTagTypeInfo");
        }
      }

      goto LABEL_16;
    }

    v7 = *(a2 + 5) & 0xFE;
    if (v7 > 0xBF)
    {
      if (v7 == 192)
      {
        v8 = 5;
        goto LABEL_17;
      }

      if (v7 == 196)
      {
        v8 = 6;
        goto LABEL_17;
      }
    }

    else
    {
      if ((*(a2 + 5) & 0xFE) == 0)
      {
        v8 = 3;
        goto LABEL_17;
      }

      if (v7 == 128)
      {
        v8 = 4;
LABEL_17:
        *(a3 + 12) = v8;
        return sub_297E4DFAC(0, &v10, 3, 5u, "phNciNfc_GetTagTypeInfo");
      }
    }

LABEL_16:
    v8 = 7;
    goto LABEL_17;
  }

  return sub_297E4DFAC(0, &v10, 3, 5u, "phNciNfc_GetTagTypeInfo");
}

uint64_t sub_297E9FEB0(uint64_t a1)
{
  v8 = 0u;
  v9 = 0u;
  sub_297E4E1B4(2, a1, 3, 5u, "phNciNfc_Iso15693Send");
  if (a1)
  {
    if (*(a1 + 4584))
    {
      *(a1 + 4776) = 0;
      if (!*(a1 + 4576))
      {
        v2 = "Send Data Buff not valid!";
        v3 = a1 + 6524;
        goto LABEL_9;
      }

      phOsalNfc_SetMemory();
      LODWORD(v8) = 0;
      if (sub_297E8BB50(a1, *(a1 + 4552), (&v8 | 0xC)))
      {
        v2 = " Couldn't Get ConnId!";
        v3 = a1 + 6524;
LABEL_9:
        sub_297E4E0B0(1, v3, 3, 1u, v2);
        v4 = 255;
        goto LABEL_10;
      }

      v6 = *(a1 + 4584);
      *(a1 + 4640) = 0;
      Memory_Typed = phOsalNfc_GetMemory_Typed();
      *(a1 + 4640) = Memory_Typed;
      *(a1 + 4648) = 0;
      if (Memory_Typed)
      {
        *(a1 + 4648) = v6;
        phOsalNfc_SetMemory();
        phOsalNfc_MemCopy();
        *&v9 = *(a1 + 4640);
        DWORD2(v9) = *(a1 + 4648);
        if (*(a1 + 4560) == 1)
        {
          *(a1 + 4776) = 1;
          sub_297E4E0B0(1, a1 + 6524, 3, 4u, "EOF need to be sent after sending the data packet");
        }

        if (sub_297E57BA8(a1 + 936, &v8, a1 + 3800, *(a1 + 4566), sub_297EFF2DC, a1) == 13)
        {
          v4 = 13;
        }

        else
        {
          *(a1 + 4776) = 0;
          phOsalNfc_FreeMemory();
          *(a1 + 4640) = 0;
          *(a1 + 4648) = 0;
          v4 = 255;
        }

        *(a1 + 4566) = 0;
      }

      else
      {
        sub_297E4E0B0(1, a1 + 6524, 3, 1u, "Payload MemAlloc for Send request Failed!");
        v4 = 12;
      }
    }

    else
    {
      v4 = 1;
      sub_297E4E0B0(1, a1 + 6524, 3, 4u, " Invalid Length..");
    }
  }

  else
  {
    v4 = 1;
    sub_297E4E0B0(2, 0, 3, 1u, "Invalid input parameter (Nci Context)!");
  }

LABEL_10:
  sub_297E4DFAC(2, a1, 3, 5u, "phNciNfc_Iso15693Send");
  return v4;
}

uint64_t sub_297EA010C(uint64_t a1, int a2)
{
  sub_297E4E1B4(2, a1, 3, 5u, "phNciNfc_Iso15693Receive");
  if (!a1)
  {
    v12 = 1;
    sub_297E4E0B0(2, 0, 3, 2u, " Invalid Context Param..");
    goto LABEL_28;
  }

  if (a2 || (v4 = *(a1 + 3808)) == 0 || (v5 = *(a1 + 3800)) == 0)
  {
    *(a1 + 4776) = 0;
    v12 = 255;
    sub_297E4E0B0(1, a1 + 6524, 3, 2u, "ISO15693 XchgData receive Failed...");
    goto LABEL_26;
  }

  v6 = *(a1 + 4600);
  *(a1 + 4776) = 0;
  v7 = v4 - 1;
  v8 = *(v5 + v4 - 1);
  if (v8 > 0xB0)
  {
    switch(v8)
    {
      case 0xB1u:
        v12 = 183;
        v9 = " ISO15693 XchgData,PH_NCINFC_STATUS_RF_PROTOCOL_ERROR Detected by NFCC during Data Exchange ";
        goto LABEL_23;
      case 0xB2u:
        v12 = 178;
        v9 = " ISO15693 XchgData,PH_NCINFC_STATUS_RF_TIMEOUT_ERROR Detected by NFCC during Data Exchange ";
        goto LABEL_23;
      case 0xB3u:
        v12 = 184;
        v9 = " ISO15693 XchgData,PH_NCINFC_STATUS_RF_UNEXPECTED_DAT Detected by NFCC during Data Exchange ";
        goto LABEL_23;
    }

LABEL_19:
    v12 = 185;
    sub_297E96818(*(a1 + 6528), v8);
    sub_297E4E0B0(1, a1 + 6524, 3, 2u, " ISO15693 XchgData,Unknown RF related error Detected by NFCC during Data Exchange ");
    if (v4 <= v6)
    {
      phOsalNfc_MemCopy();
      *(a1 + 4600) = v4;
    }

    goto LABEL_25;
  }

  if (*(v5 + v4 - 1))
  {
    if (v8 == 2)
    {
      v12 = 181;
      v9 = " ISO15693 XchgData,PH_NCINFC_STATUS_RF_FRAME_CORRUPTED Detected by NFCC during Data Exchange ";
      goto LABEL_23;
    }

    if (v8 == 176)
    {
      v12 = 182;
      v9 = " ISO15693 XchgData,PH_NCINFC_STATUS_RF_TRANSMISSION_ERROR Detected by NFCC during Data Exchange ";
LABEL_23:
      v10 = a1 + 6524;
      goto LABEL_24;
    }

    goto LABEL_19;
  }

  v12 = 0;
  sub_297E4E0B0(1, a1 + 6524, 3, 4u, "ISO15693 XchgData Request is Successful!");
  if (v7 <= v6)
  {
    phOsalNfc_MemCopy();
    *(a1 + 4600) = v7;
    goto LABEL_25;
  }

  v12 = 8;
  v9 = "ISO15693 XchgData,More Data available than requested...";
  v10 = a1 + 6524;
LABEL_24:
  sub_297E4E0B0(1, v10, 3, 2u, v9);
LABEL_25:
  sub_297EFF5D8(a1, &v12);
LABEL_26:
  if (*(a1 + 4640))
  {
    *(a1 + 4648) = 0;
    sub_297E4E0B0(1, a1 + 6524, 3, 4u, " Freeing Send Request Payload Buffer..");
    phOsalNfc_FreeMemory();
    *(a1 + 4640) = 0;
  }

LABEL_28:
  sub_297E4DFAC(2, a1, 3, 5u, "phNciNfc_Iso15693Receive");
  return v12;
}

uint64_t sub_297EA03BC(uint64_t a1, uint64_t a2)
{
  v10 = 0u;
  v11 = 0u;
  sub_297E687D8(2, a2, a1, 3, 4u, "phNciNfc_SendEofDataPacket");
  sub_297E4E1B4(2, a2, 3, 5u, "phNciNfc_SendEofDataPacket");
  if (!a2)
  {
    goto LABEL_6;
  }

  v3 = 0;
  v4 = 0;
  do
  {
    v5 = *(&unk_2A18BDDC0 + 14 * v4 + 4);
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
    if (*(a2 + 4776) != 1)
    {
      return sub_297E4DFAC(2, a2, 3, 5u, "phNciNfc_SendEofDataPacket");
    }

    *(a2 + 4776) = 0;
    sub_297E5A304(*(a2 + 6524), *(a2 + 4696));
    *(a2 + 6512) = 0;
    phOsalNfc_SetMemory();
    LODWORD(v10) = 0;
    if (sub_297E8BB50(a2, *(a2 + 4552), (&v10 | 0xC)))
    {
      v6 = "phNciNfc_SendEofDataPacket: Couldn't Get ConnId!";
    }

    else
    {
      *&v11 = 0;
      DWORD2(v11) = 0;
      *(a2 + 3362) = 1;
      if (sub_297F00AB4(a2 + 936, &v10, sub_297EA055C, a2) == 13)
      {
        return sub_297E4DFAC(2, a2, 3, 5u, "phNciNfc_SendEofDataPacket");
      }

      v6 = "phNciNfc_SendEofDataPacket: Failed to send EOF data packet";
    }

    v8 = a2 + 6524;
    v7 = 1;
  }

  else
  {
LABEL_6:
    v6 = "phNciNfc_SendEofDataPacket: Invalid or NULL pNciContext";
    v7 = 2;
    v8 = a2;
  }

  sub_297E4E0B0(v7, v8, 3, 1u, v6);
  return sub_297E4DFAC(2, a2, 3, 5u, "phNciNfc_SendEofDataPacket");
}

uint64_t sub_297EA055C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  sub_297E4E1B4(2, a1, 3, 5u, "phNciNfc_EofSendCb");
  if (!a1)
  {
    v5 = "Invalid context received from RecvMgrHdlr!";
    v7 = 2;
    v6 = 0;
    goto LABEL_5;
  }

  if (a3)
  {
    v5 = "Failed to send EOF data packet";
    v6 = a1 + 6524;
    v7 = 1;
LABEL_5:
    sub_297E4E0B0(v7, v6, 3, 1u, v5);
  }

  sub_297E4DFAC(2, a1, 3, 5u, "phNciNfc_EofSendCb");
  return a3;
}

uint64_t sub_297EA05F8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v34 = *MEMORY[0x29EDCA608];
  v32 = 0u;
  v33 = 0u;
  v30 = 0u;
  v31 = 0u;
  v28 = 0u;
  v29 = 0u;
  v26 = 0u;
  v27 = 0u;
  v25 = 0u;
  v23 = 0u;
  memset(v24, 0, sizeof(v24));
  v21 = 0u;
  v22 = 0u;
  v20 = 0u;
  memset(v19, 0, sizeof(v19));
  sub_297E4E1B4(2, a1, 4, 5u, "phLibNfc_SetHostCECfgs");
  if (!a1)
  {
    v7 = 255;
    goto LABEL_27;
  }

  phOsalNfc_SetMemory();
  sub_297E4E1B4(2, a1, 4, 5u, "phLibNfc_ValidateCE_ConfigParams");
  if (!a3)
  {
    sub_297E4DFAC(2, a1, 4, 5u, "phLibNfc_ValidateCE_ConfigParams");
LABEL_13:
    v7 = 1;
    v8 = "phLibNfc_SetHostCECfgs: CE Host configuration failed";
LABEL_26:
    sub_297E4E0B0(1, a1 + 9792, 4, 1u, v8);
    goto LABEL_27;
  }

  v5 = *(a3 + 4);
  if (v5 == 4)
  {
    v10 = 0;
    *(&v25 + 1) = -258;
    *(&v25 + 3) = *(a3 + 22);
    *(&v25 + 7) = *(a3 + 26);
    DWORD1(v19[0]) |= 0x80u;
    DWORD1(v23) = 29;
    BYTE8(v23) |= 3u;
    WORD5(v25) = 15;
    do
    {
      if (*(a3 + 28) && *(a3 + 29))
      {
        phOsalNfc_MemCopy();
      }

      else
      {
        *(v24 + v10 + 1) = -1;
      }

      phOsalNfc_MemCopy();
      v10 += 10;
    }

    while (v10 != 160);
    goto LABEL_23;
  }

  if (v5 == 2)
  {
    DWORD1(v19[0]) |= 0x40u;
    v9 = BYTE12(v21);
    if (*(a3 + 17))
    {
      v9 = BYTE12(v21) | 1;
      LOBYTE(v22) = v22 | 1;
    }

    BYTE12(v21) = v9 | 2;
    phOsalNfc_MemCopy();
    BYTE12(v21) |= 4u;
    phOsalNfc_MemCopy();
    LOBYTE(v23) = v23 & 0xF8 | (2 * (*(a3 + 19) & 3)) | *(a3 + 20) & 1;
    DWORD1(v19[0]) |= 0x100u;
    BYTE3(v32) = *(a3 + 22);
    BYTE12(v25) |= 9u;
    LOBYTE(v26) = *(a3 + 18);
    BYTE12(v21) |= 0x18u;
    BYTE12(v22) = *(a3 + 21);
    goto LABEL_23;
  }

  if (v5 != 1 || *(a3 + 8) != 1)
  {
LABEL_23:
    sub_297E4DFAC(2, a1, 4, 5u, "phLibNfc_ValidateCE_ConfigParams");
    goto LABEL_24;
  }

  v6 = *(a3 + 19);
  if (v6 > 6)
  {
    if (v6 != 10 && v6 != 7)
    {
      goto LABEL_31;
    }

    goto LABEL_30;
  }

  if (*(a3 + 19))
  {
    if (v6 != 4)
    {
LABEL_31:
      v12 = 1;
      sub_297E4E0B0(1, a1 + 9792, 4, 1u, "Invalid UID Length received!");
      goto LABEL_33;
    }

LABEL_30:
    BYTE4(v20) |= 8u;
    BYTE10(v21) = v6;
    phOsalNfc_MemCopy();
    v12 = 0;
    goto LABEL_33;
  }

  v12 = 0;
  BYTE4(v20) |= 8u;
  BYTE10(v21) = 0;
LABEL_33:
  v13 = BYTE4(v20);
  v14 = *(a3 + 70) & 0x1F;
  BYTE8(v20) = v14;
  if ((BYTE4(v20) & 8) == 0)
  {
    goto LABEL_39;
  }

  if (BYTE10(v21) == 7)
  {
    v15 = 64;
  }

  else
  {
    if (BYTE10(v21) != 10)
    {
      goto LABEL_39;
    }

    v15 = 0x80;
  }

  BYTE8(v20) = v15 | v14;
LABEL_39:
  v16 = BYTE4(v20) | 3;
  BYTE4(v20) |= 3u;
  BYTE9(v20) = *(a3 + 71);
  v17 = *(a3 + 69);
  if ((v17 & 0x40) != 0)
  {
    v16 = v13 | 7;
    BYTE4(v20) = v13 | 7;
    BYTE12(v20) |= 2u;
  }

  if ((v17 & 0x20) != 0)
  {
    BYTE4(v20) = v16 | 4;
    BYTE12(v20) |= 1u;
  }

  DWORD1(v19[0]) |= 0x120u;
  v18 = *(a3 + 68);
  if (*(a3 + 68))
  {
    if (v18 > 0x30)
    {
      v12 = 1;
      sub_297E4E0B0(1, a1 + 9792, 4, 1u, "Received App data Length exceeded max historic bytes length");
    }

    else
    {
      BYTE12(v25) |= 2u;
      BYTE1(v29) = v18;
      phOsalNfc_MemCopy();
    }
  }

  LOBYTE(v26) = *(a3 + 73);
  BYTE12(v25) |= 9u;
  BYTE3(v32) = *(a3 + 72);
  sub_297E4DFAC(2, a1, 4, 5u, "phLibNfc_ValidateCE_ConfigParams");
  if (v12)
  {
    goto LABEL_13;
  }

LABEL_24:
  LODWORD(v19[0]) = *(a1 + 9792);
  v7 = sub_297E64020(*(a1 + 3088), v19, sub_297E5BA84, a1);
  if (v7 != 13)
  {
    v8 = "phLibNfc_SetHostCECfgs: Invalid status -CE Host configuration failed to send";
    goto LABEL_26;
  }

LABEL_27:
  sub_297E4DFAC(2, a1, 4, 5u, "phLibNfc_SetHostCECfgs");
  return v7;
}

uint64_t sub_297EA0B1C(uint64_t a1, uint64_t a2)
{
  sub_297E4E1B4(2, a1, 4, 5u, "phLibNfc_SetHostCEConfigComplete");
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

    *(a1 + 532) = a2 == 0;
    a2 = sub_297E4F450(*(a1 + 9784), v4, a2, 0, 0);
  }

  sub_297E4DFAC(2, a1, 4, 5u, "phLibNfc_SetHostCEConfigComplete");
  return a2;
}

uint64_t sub_297EA0BAC(uint64_t a1, int a2, uint64_t a3)
{
  v11 = 0;
  v12 = 0;
  v10 = 111;
  sub_297E4E1B4(2, a1, 4, 5u, "phLibNfc_CardEmulation_DataReceiveCb");
  sub_297E4E0B0(2, a1, 4, 4u, "phLibNfc_CardEmulation_DataReceiveCb");
  if (!a1 || !a3)
  {
    return sub_297E4DFAC(2, a1, 4, 5u, "phLibNfc_CardEmulation_DataReceiveCb");
  }

  v6 = *(a1 + 6712);
  if (*(a1 + 536))
  {
    phOsalNfc_FreeMemory();
    *(a1 + 536) = 0;
  }

  *(a1 + 544) = 0;
  *(a1 + 533) = 1;
  if (a2 == 10)
  {
LABEL_16:
    sub_297EA0D54(a1);
    return sub_297E4DFAC(2, a1, 4, 5u, "phLibNfc_CardEmulation_DataReceiveCb");
  }

  if (a2)
  {
    return sub_297E4DFAC(2, a1, 4, 5u, "phLibNfc_CardEmulation_DataReceiveCb");
  }

  if (!*(a3 + 16) || !*(a3 + 8))
  {
    goto LABEL_11;
  }

  v7 = *(a3 + 16);
  Memory_Typed = phOsalNfc_GetMemory_Typed();
  if (Memory_Typed)
  {
    *(a1 + 536) = Memory_Typed;
    *(a1 + 544) = v7;
    phOsalNfc_MemCopy();
LABEL_11:
    if (v6)
    {
      goto LABEL_12;
    }

    goto LABEL_15;
  }

  sub_297E4E0B0(1, a1 + 9792, 4, 1u, "Data Allocation failed");
  if (!v6)
  {
LABEL_15:
    v11 = &v10;
    LODWORD(v12) = 2;
    sub_297E7680C(*(a1 + 3088), sub_297E5BA84, a1, &v11);
    goto LABEL_16;
  }

LABEL_12:
  if (*(a1 + 534))
  {
    *(a1 + 534) = 0;
    sub_297E4F450(*(a1 + 9784), 121, 0, a1 + 872, a1 + 762);
  }

  return sub_297E4DFAC(2, a1, 4, 5u, "phLibNfc_CardEmulation_DataReceiveCb");
}

uint64_t sub_297EA0D54(uint64_t a1)
{
  sub_297E4E1B4(2, a1, 4, 5u, "phLibNfc_RegisterForHceActivation");
  if (a1)
  {
    v2 = sub_297E763CC(*(a1 + 3088), sub_297EA0BAC, a1);
  }

  else
  {
    v2 = 1;
  }

  sub_297E4DFAC(2, a1, 4, 5u, "phLibNfc_RegisterForHceActivation");
  return v2;
}

uint64_t sub_297EA0DDC(uint64_t a1, _BYTE *a2, unsigned __int8 *a3)
{
  v10 = 0;
  sub_297E4E1B4(2, a1, 4, 5u, "phLibNfc_MapRemoteDevCeHost");
  v6 = 0;
  if (a2 && a3)
  {
    if (sub_297EE5B30(a1, a3[32], &v10))
    {
      v6 = 255;
    }

    else
    {
      v6 = 0;
      a2[63] = v10;
      v7 = a3[101];
      v8 = a3[102];
      a2[60] = a3[96];
      a2[61] = v7;
      a2[62] = v8;
    }
  }

  sub_297E4DFAC(2, a1, 4, 5u, "phLibNfc_MapRemoteDevCeHost");
  return v6;
}

uint64_t sub_297EA0EA0(uint64_t a1, uint64_t a2)
{
  sub_297E4E1B4(3, a1, 8, 5u, "phFriNfc_SmtCrdFmt_HCrHandler");
  *(a1 + 25) = 1;
  (*(a1 + 32))(*(a1 + 408), *(a1 + 40), a2);

  return sub_297E4DFAC(3, a1, 8, 5u, "phFriNfc_SmtCrdFmt_HCrHandler");
}

uint64_t sub_297EA0F28(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, unsigned __int16 *a6)
{
  sub_297E4E1B4(3, a1, 8, 5u, "phFriNfc_NdefSmtCrd_Reset");
  v12 = 1;
  if (a2 && a5 && a3 && a1 && a6 && a4 && *a6 >= 0xFCu)
  {
    *(a1 + 32) = 0u;
    *(a1 + 48) = 0u;
    *a1 = a2;
    *(a1 + 16) = a3;
    *(a1 + 88) = a6;
    *(a1 + 96) = a5;
    *(a1 + 104) = 0;
    *(a1 + 24) = 256;
    *(a1 + 64) = 0;
    *(a1 + 72) = 0;
    sub_297EEF130(a1);
    sub_297EDD210(a1);
    *(a1 + 216) = a4;
    sub_297E68F78(a1);
    v12 = 0;
  }

  sub_297E4DFAC(3, a1, 8, 5u, "phFriNfc_NdefSmtCrd_Reset");
  return v12;
}

uint64_t sub_297EA101C(uint64_t a1, unsigned int a2, uint64_t a3, uint64_t a4)
{
  sub_297E4E1B4(3, a1, 8, 5u, "phFriNfc_NdefSmtCrd_SetCR");
  v8 = 1;
  if (a1 && a2 <= 1 && a3 && a4)
  {
    v8 = 0;
    v9 = a1 + 16 * a2;
    *(v9 + 32) = a3;
    *(v9 + 40) = a4;
  }

  sub_297E4DFAC(3, a1, 8, 5u, "phFriNfc_NdefSmtCrd_SetCR");
  return v8;
}

uint64_t sub_297EA10B8(uint64_t a1, uint64_t a2)
{
  sub_297E4E1B4(3, a1, 8, 5u, "phFriNfc_NdefSmtCrd_Format");
  if (a1 && *(a1 + 32) && *(a1 + 40))
  {
    v4 = *(a1 + 16);
    v5 = *(v4 + 4);
    if (v5 <= 0x10)
    {
      v6 = *(v4 + 68);
      v7 = 1 << v5;
      if ((v7 & 0xEC00) != 0)
      {
        if (v6 == 32)
        {
          *(a1 + 24) = 1;
          v8 = sub_297EDDA10(a1);
LABEL_15:
          v9 = v8;
          goto LABEL_9;
        }

        goto LABEL_22;
      }

      if ((v7 & 0x11000) != 0)
      {
        if (*(v4 + 68))
        {
          if ((v6 & 0x18) == 8)
          {
            v11 = 2;
          }

          else
          {
            v11 = 3;
            if (v6 != 1 && (v6 & 0x18) != 0x18)
            {
              goto LABEL_22;
            }
          }

          *(a1 + 24) = v11;
          v8 = sub_297E690CC(a1, a2);
          goto LABEL_15;
        }

        *(a1 + 24) = 0;
        if (*(v4 + 18) == 7 && *(v4 + 8) == 4)
        {
          v8 = sub_297EEF1B8(a1);
          goto LABEL_15;
        }

LABEL_22:
        v9 = 29;
        goto LABEL_9;
      }
    }

    sub_297E4E0B0(3, a1, 8, 2u, "Invalid remote device or Remote device not found");
    goto LABEL_22;
  }

  sub_297E4E0B0(3, a1, 8, 2u, "Invalid input parameters");
  v9 = 1;
LABEL_9:
  sub_297E4DFAC(3, a1, 8, 5u, "phFriNfc_NdefSmtCrd_Format");
  return v9;
}

uint64_t sub_297EA1230(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v8 = a1;
  sub_297E4E1B4(0, &v8, 8, 5u, "phFriNfc_NdefSmtCrd_Process");
  if (a2)
  {
    v5 = *(*(a2 + 16) + 4);
    if (v5 > 0x10)
    {
      goto LABEL_9;
    }

    v6 = 1 << v5;
    if ((v6 & 0xEC00) != 0)
    {
      sub_297EDDBAC(a2, a3);
      return sub_297E4DFAC(0, &v8, 8, 5u, "phFriNfc_NdefSmtCrd_Process");
    }

    if ((v6 & 0x11000) == 0)
    {
LABEL_9:
      *(a2 + 25) = 1;
      (*(a2 + 48))(*(a2 + 408), *(a2 + 40), 29);
      return sub_297E4DFAC(0, &v8, 8, 5u, "phFriNfc_NdefSmtCrd_Process");
    }

    if ((*(a2 + 24) & 0xFE) == 2)
    {
      sub_297E691F4(a2, a3);
    }

    else
    {
      sub_297EEF2E0(a2, a3);
    }
  }

  return sub_297E4DFAC(0, &v8, 8, 5u, "phFriNfc_NdefSmtCrd_Process");
}

uint64_t sub_297EA1320(uint64_t a1, uint64_t a2, uint64_t a3)
{
  sub_297E4E1B4(2, a1, 4, 5u, "phLibNfc_GenericTransceiveCmd");
  v5 = 1;
  if (a1 && a3)
  {
    v5 = sub_297F06F3C(*(a1 + 3088), *(a1 + 1504), a3, sub_297E5BA84, a1);
  }

  sub_297E4DFAC(2, a1, 4, 5u, "phLibNfc_GenericTransceiveCmd");
  return v5;
}

uint64_t sub_297EA13BC(uint64_t a1, uint64_t a2)
{
  sub_297E4E1B4(2, a1, 4, 5u, "phLibNfc_GenericTransceiveResp");
  if (a1)
  {
    if (a2)
    {
      sub_297E4E0B0(1, a1 + 9792, 4, 1u, "phLibNfc_GenericTransceiveResp:transceive failed!");
    }

    else
    {
      sub_297E4E0B0(1, a1 + 9792, 4, 4u, "phLibNfc_GenericTransceiveResp:transceive success");
    }
  }

  else
  {
    a2 = 1;
  }

  sub_297E4DFAC(2, a1, 4, 5u, "phLibNfc_GenericTransceiveResp");
  return a2;
}

uint64_t sub_297EA146C(uint64_t a1, int a2, uint64_t *a3)
{
  LODWORD(v4) = a2;
  sub_297E4E1B4(2, a1, 4, 5u, "phLibNfc_GenericTransceiveComplete");
  if (a3)
  {
    v6 = a1 == 0;
  }

  else
  {
    v6 = 1;
  }

  if (v6)
  {
    v4 = 1;
  }

  else
  {
    v4 = v4;
  }

  sub_297EA18A4(a1, v4, a3);
  sub_297E4DFAC(2, a1, 4, 5u, "phLibNfc_GenericTransceiveComplete");
  return v4;
}

uint64_t sub_297EA14F4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v13 = 0;
  v14 = 0;
  sub_297E4E1B4(2, a4, 4, 5u, "phLibNfc_InternalTransceive");
  v8 = 1;
  if (a4)
  {
    *(a4 + 1528) = 1;
    v13 = a1;
    v9 = sub_297ECD484(a4, &v13, &v14, 1);
    if (v9)
    {
      v8 = v9;
      v10 = "phLibNfc_MapRemoteDevHandle: Failed to map handle";
LABEL_6:
      sub_297E4E0B0(1, a4 + 9792, 4, 1u, v10);
      goto LABEL_7;
    }

    v11 = sub_297E8CCB4(a4, v14);
    if (v11)
    {
      v8 = v11;
      v10 = "phLibNfc_ValidateDevHandle: Mapped handle validation failed!";
      goto LABEL_6;
    }

    v8 = sub_297EA1630(a4, a2);
    if (v8 == 13)
    {
      *(a4 + 6248) = a3;
      *(a4 + 6256) = a4;
      *(a4 + 2600) = *(a2 + 48);
    }

    else
    {
      *(a4 + 2600) = 0;
      *(a4 + 2608) = 0;
      *(a4 + 6248) = 0;
      *(a4 + 6256) = 0;
    }
  }

LABEL_7:
  sub_297E4DFAC(2, a4, 4, 5u, "phLibNfc_InternalTransceive");
  return v8;
}

uint64_t sub_297EA1630(uint64_t a1, uint64_t a2)
{
  sub_297E4E1B4(2, a1, 4, 5u, "phLibNfc_RfTransceive");
  v4 = 1;
  if (!a1 || !a2)
  {
    goto LABEL_37;
  }

  *(a1 + 5432) = 0;
  v5 = (a1 + 1504);
  if (sub_297E55558(*(a1 + 3088), *(a1 + 1504)))
  {
    v6 = 0;
    *v5 = 0;
    *(a1 + 1512) = 0;
  }

  else
  {
    v6 = *v5;
  }

  if (!sub_297EE03F8(a1, a2, v6))
  {
    v8 = *a2;
    if (*a2 == 160)
    {
      goto LABEL_17;
    }

    if (v8)
    {
      v14 = *(a2 + 32);
      v15 = v8 & 0xFFFFFFFE;
      if ((v8 & 0xFFFFFFFE) == 0x60 && v14)
      {
        goto LABEL_31;
      }

      if (v15 == 128)
      {
        v7 = off_2A1A92E40;
        goto LABEL_26;
      }

      if (v15 == 192 && v14 || v8 == 194)
      {
LABEL_9:
        v7 = off_2A1A92DE0;
LABEL_26:
        *(a1 + 2960) = v7;
        *(a1 + 2952) = 0;
        *(a1 + 2954) = 0;
        v16 = *v7;
        if (*v7)
        {
          LOBYTE(v16) = 0;
          v17 = (v7 + 2);
          do
          {
            LOBYTE(v16) = v16 + 1;
            v18 = *v17;
            v17 += 2;
          }

          while (v18);
        }

        *(a1 + 2953) = v16;
        goto LABEL_35;
      }

      if (v8 == 176)
      {
        v7 = off_2A1A92E20;
        goto LABEL_26;
      }
    }

    else
    {
      v9 = *(a2 + 32);
      if (v9)
      {
        v10 = *v9;
        if (v10 == 160)
        {
LABEL_17:
          *(a1 + 2960) = &qword_2A1A92DB0;
          *(a1 + 2952) = 0;
          *(a1 + 2954) = 0;
          v11 = qword_2A1A92DB0;
          if (qword_2A1A92DB0)
          {
            v11 = 0;
            v12 = off_2A1A92DC0;
            do
            {
              ++v11;
              v13 = *v12;
              v12 += 2;
            }

            while (v13);
          }

          goto LABEL_34;
        }

        if ((v10 & 0xFE) == 0x60)
        {
LABEL_31:
          *(a1 + 2960) = off_2A1A92E40;
          *(a1 + 2952) = 0;
          *(a1 + 2954) = 0;
          v11 = off_2A1A92E40[0];
          if (off_2A1A92E40[0])
          {
            v11 = 0;
            v19 = &qword_2A1A92E50;
            do
            {
              ++v11;
              v20 = *v19;
              v19 += 2;
            }

            while (v20);
          }

LABEL_34:
          *(a1 + 2953) = v11;
          if (!*a2)
          {
            v21 = sub_297EE0110(a1, v6, a2, (a1 + 5432));
            if (v21)
            {
              goto LABEL_36;
            }

            a2 = *(a1 + 5432);
            if (!a2)
            {
              v4 = 0;
              goto LABEL_37;
            }
          }

LABEL_35:
          v21 = sub_297E5588C(a1, 0, a2);
LABEL_36:
          v4 = v21;
          goto LABEL_37;
        }
      }
    }

    v4 = 1;
    goto LABEL_37;
  }

  if (*(a2 + 32) && *a2 == 3)
  {
    goto LABEL_9;
  }

  if (v6 && !sub_297ECE3AC(a1, *(v6 + 4), a2, a1 + 2760))
  {
    v7 = off_2A1A90C48;
    a2 = a1 + 2760;
    goto LABEL_26;
  }

  v4 = 255;
LABEL_37:
  sub_297E4DFAC(2, a1, 4, 5u, "phLibNfc_RfTransceive");
  return v4;
}