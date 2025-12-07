void sub_10023B19C(unsigned __int8 *a1)
{
  v2 = 0;
  v3 = 0;
  v4 = a1;
  v5 = a1;
LABEL_2:
  while (2)
  {
    v6 = v2 + 1;
    v7 = v5;
    do
    {
      v8 = *v7;
      if (*v7 > 7u)
      {
        if (v8 > 0x20)
        {
          goto LABEL_18;
        }

        if (((1 << v8) & 0x160100) != 0)
        {
          goto LABEL_16;
        }

        if (v8 == 19)
        {
LABEL_13:
          if (*(v7 + 1) < 5u)
          {
            goto LABEL_18;
          }

          goto LABEL_16;
        }

        if (v8 == 32)
        {
          sub_1000D660C();
        }
      }

      else
      {
        if ((v8 - 1) < 3)
        {
          goto LABEL_13;
        }

        if ((v8 - 6) >= 2)
        {
          if (v8 != 4)
          {
            goto LABEL_18;
          }

LABEL_16:
          v9 = *(v7 + 1);
          if (v9)
          {
            sub_10000C1E8(v9);
            *(v7 + 1) = 0;
          }

          goto LABEL_18;
        }

        v5 = *(v7 + 1);
        if (v5)
        {
          v2 = *(v7 + 1) - 1;
          v3 = 1;
          v4 = v7;
          if (!*(v7 + 1))
          {
            goto LABEL_21;
          }

          goto LABEL_2;
        }
      }

LABEL_18:
      v7 += 16;
      --v6;
    }

    while (v6);
    if (v3)
    {
      v7 = v4;
LABEL_21:
      sub_10000C1E8(*(v7 + 1));
      v2 = 0;
      v3 = 0;
      *v7 = 0;
      v4 = a1;
      v5 = a1;
      continue;
    }

    break;
  }

  *v4 = 0;
}

uint64_t sub_10023B2CC(uint64_t a1, unsigned __int8 *a2)
{
  if (!a2)
  {
    sub_1000D660C();
  }

  *a2 = 0;
  v4 = sub_10023A3E8(a1, a2, 0);
  if (v4)
  {
    if (sub_10000C240())
    {
      sub_10000AF54("OI_DataElement_Unmarshal error status %!", v4);
      v5 = sub_10000C050(0x2Bu);
      if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
      {
        sub_100813F70();
      }
    }

    sub_10023B19C(a2);
  }

  return v4;
}

void sub_10023B378(unsigned __int8 *a1)
{
  if (!a1)
  {
    sub_1000D660C();
  }

  sub_10023B19C(a1);
}

void sub_10023B3C0()
{
  if (sub_10002223C())
  {
    sub_100256B80();

    sub_10023B404();
  }
}

void sub_10023B404()
{
  if (qword_100B5F4A8 == &qword_100B5F4A8)
  {
    v0 = "empty";
  }

  else
  {
    v0 = "";
  }

  sub_100304AF8("RequestQueue: %s\n", v0);
  for (i = qword_100B5F4A8; i && i != &qword_100B5F4A8; i = *i)
  {
    sub_10023E860((i - 5));
  }

  if (qword_100B5F4C0)
  {
    sub_100304AF8("Current Request: ");
    v3 = qword_100B5F4C0;

    sub_10023E860(v3);
  }

  else
  {

    sub_100304AF8("Current Request: none\n");
  }
}

uint64_t sub_10023B4D0(uint64_t a1)
{
  if (a1)
  {
    if (sub_10000C240())
    {
      sub_10000AF54("OI_DEVMGR_Init: configuration parameter is deprecated");
      v2 = sub_10000C050(0x2Cu);
      if (os_log_type_enabled(v2, OS_LOG_TYPE_ERROR))
      {
        sub_1000E09C0();
      }
    }

    sub_1003045E4(a1, 44);
  }

  if (xmmword_100BCE2E0)
  {
    return 140;
  }

  qword_100BCDFC8 = sub_1003045A0(0x2Cu);
  if (!qword_100BCDFC8)
  {
    sub_1000D660C();
    if (!qword_100BCDFC8)
    {
      return 127;
    }
  }

  byte_100B5F4B9 = 0;
  byte_100B5F4BA = 0;
  byte_100B5F4BB = 0;
  byte_100B5F508 = 0;
  byte_100BCDFD0 = 0;
  dword_100B5F6A0 = 0;
  off_100B5F4D0 = 0;
  qword_100B5F4C8 = 0;
  off_100B5F4E0 = 0;
  qword_100B5F4D8 = 0;
  off_100B5F510 = 0;
  off_100B5F518 = 0;
  off_100B5F4E8 = 0;
  qword_100B5F4F8 = 0;
  unk_100B5F500 = 0;
  qword_100B5F4F0[0] = 0;
  sub_1003051D8(&qword_100B5F4A8);
  qword_100B5F4C0 = 0;
  byte_100BCE0A4 = 0;
  byte_100BCE0A5 = 0;
  byte_100BCE0A6 = 0;
  xmmword_100BCDFD8 = 0u;
  unk_100BCDFE8 = 0u;
  unk_100BCDFF8 = 0u;
  unk_100BCE008 = 0u;
  xmmword_100BCE018 = 0u;
  unk_100BCE028 = 0u;
  xmmword_100BCE038 = 0u;
  *&word_100BCE048 = 0u;
  xmmword_100BCE058 = 0u;
  unk_100BCE068 = 0u;
  xmmword_100BCE078 = 0u;
  unk_100BCE088 = 0u;
  unk_100BCE094 = 0u;
  sub_1003051D8(&qword_100B5F4A8);
  byte_100B5F4B8 = 0;
  sub_10024229C();
  sub_1002416BC();
  sub_1002431A8();
  sub_100248AAC();
  sub_100246B44();
  result = 0;
  LODWORD(xmmword_100BCE2E0) = 1;
  return result;
}

uint64_t sub_10023B6AC(uint64_t a1, uint64_t a2)
{
  if (!xmmword_100BCE2E0)
  {
    return 103;
  }

  v4 = sub_100007618(0x38uLL, 0x10A2040A8DF08F7uLL);
  *v4 = 0;
  v5 = *(a2 + 4);
  v4[2] = *a2;
  *(v4 + 6) = v5;
  *(v4 + 2) = a1;
  sub_100016250((v4 + 8));
  v4[8] += *(qword_100BCDFC8 + 6);
  v6 = sub_10023B8FC(v4);
  if (v6)
  {
    sub_10000C1E8(v4);
  }

  return v6;
}

uint64_t sub_10023B760(unsigned __int16 *a1)
{
  if (!sub_1000B8B5C(a1))
  {
    return 414;
  }

  if (sub_1000D60EC(*(a1 + 54)))
  {
    v9 = sub_1000D6178(5u, v2, v3, v4, v5, v6, v7, v8, a1);
    v10 = sub_1000D6410(a1, v9);
    if (v10)
    {
      if (sub_10000C240())
      {
        sub_10000AF54("OI_HCICMD_Disconnect failed (%d)", *a1);
        v11 = sub_10000C050(0x2Cu);
        if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
        {
          sub_100814348();
        }
      }
    }

    else
    {
      *(a1 + 54) = 6;
      *(a1 + 37) = 0;
    }
  }

  else
  {
    if (*(a1 + 37))
    {
      sub_1000D2538(a1, 19);
    }

    return 1301;
  }

  return v10;
}

uint64_t sub_10023B840(uint64_t a1)
{
  if (*(a1 + 148) || !sub_10002260C(*(a1 + 72)))
  {
    return 0;
  }

  if (byte_100B5F4B9)
  {
    v2 = 0;
  }

  else if (*(qword_100BCDFC8 + 4) <= *(a1 + 274))
  {
    v2 = *(a1 + 274);
  }

  else
  {
    v2 = *(qword_100BCDFC8 + 4);
  }

  v3 = sub_1000B7ADC(*(a1 + 72), v2);
  if (v3)
  {
    if (sub_10000C240())
    {
      sub_10000AF54("OI_Dispatch_SetFuncTimeout failed");
      v5 = sub_10000C050(0x2Cu);
      if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
      {
        sub_100814348();
      }
    }
  }

  return v3;
}

uint64_t sub_10023B8FC(uint64_t a1)
{
  sub_1003051F4((a1 + 40), &qword_100B5F4A8);
  v1 = sub_1000228C0(sub_10023BE1C, 0, 0);
  if (v1)
  {
    if (sub_10000C240())
    {
      sub_10000AF54("OI_Dispatch_RegisterFunc failed");
      v2 = sub_10000C050(0x2Cu);
      if (os_log_type_enabled(v2, OS_LOG_TYPE_ERROR))
      {
        sub_100814348();
      }
    }
  }

  return v1;
}

uint64_t sub_10023B994(uint64_t a1)
{
  if (!xmmword_100BCE2E0)
  {
    return 103;
  }

  if (byte_100B5F4BB)
  {
    return 1319;
  }

  v2 = *(a1 + 54);
  if (v2 > 6)
  {
    sub_1000D660C();
    return 105;
  }

  else
  {
    v3 = 1 << v2;
    if ((v3 & 0x39) != 0)
    {
      sub_1002414F0(a1);
      return 0;
    }

    else
    {
      if ((v3 & 6) != 0)
      {
        sub_1000D660C();
      }

      else if (sub_10000C240())
      {
        sub_10000AF54("Race condition - OI_LP_ConnectionAdded request while disconnect in progress");
        v4 = sub_10000C050(0x2Cu);
        if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
        {
          sub_1000E09C0();
        }
      }

      return 601;
    }
  }
}

uint64_t sub_10023BA68(uint64_t a1, uint64_t a2)
{
  if (sub_10000C240())
  {
    sub_10000AF54("ForceDisconnect (%:, reason %!)", a1, a2);
    v4 = sub_10000C050(0x2Cu);
    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 136446210;
      v31 = sub_10000C0FC();
      _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, " %{public}s", buf, 0xCu);
    }
  }

  if (!xmmword_100BCE2E0)
  {
    return 103;
  }

  v5 = sub_1000E1FE8(a1);
  if (!v5)
  {
    return 1310;
  }

  v6 = v5;
  v29 = 0;
  v14 = 0;
  while (sub_1000E4F48(&v29))
  {
    v15 = v29;
    if (v29[6] == v6)
    {
      v16 = sub_1000D6178(5u, v7, v8, v9, v10, v11, v12, v13, v29);
      v17 = sub_1000D6410(v15, v16);
      if (v17)
      {
        v18 = v17;
        if (sub_10000C240())
        {
          sub_10000AF54("OI_HCICMD_Disconnect SCO handle %d failed", *v29);
          v19 = sub_10000C050(0x2Cu);
          if (os_log_type_enabled(v19, OS_LOG_TYPE_ERROR))
          {
            v20 = sub_10000C0FC();
            *buf = 136446466;
            v31 = v20;
            v32 = 1024;
            v33 = v18;
            _os_log_error_impl(&_mh_execute_header, v19, OS_LOG_TYPE_ERROR, "%{public}s (status=%{bluetooth:OI_STATUS}u)", buf, 0x12u);
          }
        }

        v14 = v18;
      }
    }
  }

  if (*(v6 + 54) == 1)
  {
    v21 = sub_100018960(7, 0, v8, v9, v10, v11, v12, v13, a1);
    if (v21)
    {
      v22 = v21;
      if (sub_10000C240())
      {
        sub_10000AF54("OI_HCICMD_CreateConnectionCancel failed for %:", a1);
        v23 = sub_10000C050(0x2Cu);
        if (os_log_type_enabled(v23, OS_LOG_TYPE_ERROR))
        {
          sub_100814348();
        }
      }

      return v22;
    }
  }

  else
  {
    v24 = sub_1000D6178(5u, v7, v8, v9, v10, v11, v12, v13, v6);
    v25 = sub_1000D6410(v6, v24);
    if (v25)
    {
      v26 = v25;
      if (sub_10000C240())
      {
        sub_10000AF54("OI_HCICMD_Disconnect ACL handle %d failed", *v6);
        v27 = sub_10000C050(0x2Cu);
        if (os_log_type_enabled(v27, OS_LOG_TYPE_ERROR))
        {
          sub_100814348();
        }
      }

      return v26;
    }
  }

  return v14;
}

uint64_t sub_10023BD68()
{
  if (!xmmword_100BCE2E0)
  {
    return 103;
  }

  if (!byte_100B5F4BB)
  {
    return 117;
  }

  byte_100B5F4BB = 0;
  v0 = sub_1000228C0(sub_10023BE1C, 0, 0);
  if (v0)
  {
    if (sub_10000C240())
    {
      sub_10000AF54("OI_Dispatch_RegisterFunc failed");
      v1 = sub_10000C050(0x2Cu);
      if (os_log_type_enabled(v1, OS_LOG_TYPE_ERROR))
      {
        sub_100814348();
      }
    }
  }

  return v0;
}

void sub_10023BE1C()
{
  if (qword_100B5F4C0)
  {
    v0 = 0;
  }

  else
  {
    v0 = byte_100B5F4BB == 0;
  }

  if (v0 && (byte_100B5F508 & 1) == 0 && qword_100B5F4A8 != &qword_100B5F4A8)
  {
    v1 = sub_10030528C(&qword_100B5F4A8);
    v2 = *(v1 - 10);
    qword_100B5F4C0 = (v1 - 5);
    if (v2 == 2)
    {
      sub_10023EF08();
    }

    else if (v2 == 1)
    {
      v16 = 0;
      if (sub_100242340((v1 - 4), &v16))
      {
        v14 = *(v16 + 13);
        v15 = *(v16 + 14) | 0x8000u;
        v13 = *(v16 + 12);
      }

      else
      {
        v14 = 0;
        v15 = 0;
        v13 = 0;
      }

      v11 = sub_1000D6178(0x13u, v3, v4, v5, v6, v7, v8, v9, qword_100B5F4C0 + 8);
      if (v11)
      {
        if (sub_10000C240())
        {
          sub_10000AF54("OI_HCICMD_RemoteNameRequest on %: failed", qword_100B5F4C0 + 8, v13, v14, v15);
          v12 = sub_10000C050(0x2Cu);
          if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
          {
            sub_100814348();
          }
        }

        sub_10023D70C(v11, 0);
      }
    }

    else if (v2)
    {
      if (sub_10000C240())
      {
        sub_10000AF54("Invalid request type %d", *qword_100B5F4C0);
        v10 = sub_10000C050(0x2Cu);
        if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
        {
          sub_10080F604();
        }
      }

      sub_10023F0D8(1343);
      sub_1000D660C();
    }

    else
    {
      sub_10023E970();
    }
  }

  sub_10023F2D0();
}

uint64_t sub_10023BFD0(void *a1, unsigned __int16 *a2)
{
  if (!xmmword_100BCE2E0)
  {
    return 103;
  }

  if (!a1)
  {
    return 123;
  }

  if (!byte_100B5F4BB)
  {
    return 117;
  }

  if (off_100B5F4E0)
  {
    if (sub_10000C240())
    {
      sub_10000AF54("OI_DevMgr_BondingDisconnect - busy with previous disconnect");
      v3 = sub_10000C050(0x2Cu);
      if (os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
      {
        sub_1000E09C0();
      }
    }

    return 1319;
  }

  else
  {
    result = sub_10023B760(a2);
    if (!result)
    {
      off_100B5F4E0 = a1;
      qword_100B5F4D8 = a2;
    }
  }

  return result;
}

uint64_t sub_10023C0A8(uint64_t result, char a2)
{
  if (xmmword_100BCE2E0)
  {
    *(result + 152) = a2;
  }

  return result;
}

void sub_10023C0C0(uint64_t a1, unsigned __int16 *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  if (!xmmword_100BCE2E0 || (byte_100B5F4A0 & 1) != 0)
  {
    return;
  }

  v8 = a4;
  if (a2)
  {
    v14 = a4 == 1 || (a4 & 0xFE) == 240;
    if (!a1 && v14)
    {
      byte_100BCDFD0 = 0;
      sub_1002FD550(a2, a5);
    }

    if (off_100B5F4E8)
    {
      off_100B5F4E8(a1, a2, a3, v8, a5);
    }

    if (!*(a2 + 2))
    {
      for (i = 0; i != 3; ++i)
      {
        v16 = qword_100B5F4F0[i];
        if (v16)
        {
          v17 = *(v16 + 8);
          if (v17)
          {
            v17(a1, a2, a3, v8, a5, a6, a7, a8);
          }
        }
      }
    }

    if (a1)
    {
      if (sub_10000C240())
      {
        sub_10000AF54("OI_HCIEventHandler_ConnectionComplete with status %!, bdaddr %:, lm 0x%x, type %d, mode %d", a1, a3, *a2, v8, a5);
        v18 = sub_10000C050(0x2Cu);
        if (os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
        {
          sub_10080F604();
        }
      }

      if (!sub_100248E88(a3))
      {
        LODWORD(v8) = 1;
      }

      if (a1 == 711)
      {
        if (sub_10000C240())
        {
          sub_10000AF54("Controller returned CONNECTION_ALREADY_EXISTS");
          v19 = sub_10000C050(0x2Cu);
          if (os_log_type_enabled(v19, OS_LOG_TYPE_DEFAULT))
          {
            *buf = 136446210;
            v47 = sub_10000C0FC();
            _os_log_impl(&_mh_execute_header, v19, OS_LOG_TYPE_DEFAULT, " %{public}s", buf, 0xCu);
          }
        }
      }
    }

    if (*(a2 + 2))
    {
      v20 = sub_1000E1FE8(a3);
      *(a2 + 6) = v20;
      if (v20)
      {
        sub_100248AE0(a2, a3, v8, a1);
      }

      else if (sub_10000C240())
      {
        sub_10000AF54("OI_HCI_AclConnectionFromAddr failed: (%:)", a3);
        v24 = sub_10000C050(0x2Cu);
        if (os_log_type_enabled(v24, OS_LOG_TYPE_ERROR))
        {
          sub_1008143C8();
        }
      }

      return;
    }

    if (*(a2 + 54) - 1 < 2)
    {
      if (a1)
      {
        sub_10023CE34(a2, a1);
        return;
      }

      *(a2 + 278) = 0;
      *(a2 + 290) = 0;
      if ((v8 & 0xFE) == 0xF0)
      {
        *(a2 + 278) = 1;
        if (v8 == 241)
        {
          *(a2 + 290) = 1;
        }

        if (byte_100BCDFB8 == 1)
        {
          v25 = dword_100BCDFBC;
        }

        else
        {
          v25 = *(qword_100BCDFC8 + 8);
        }

        *(a2 + 70) = v25;
        if (!sub_10023C894((a2 + 24), v25))
        {
          goto LABEL_71;
        }

        if (!sub_10000C240())
        {
          goto LABEL_71;
        }

        sub_10000AF54("OI_DEVMGR_HDRChangeConnPktType");
        v27 = sub_10000C050(0x2Cu);
        if (!os_log_type_enabled(v27, OS_LOG_TYPE_ERROR))
        {
          goto LABEL_71;
        }
      }

      else if (!sub_1000D6178(0xEu, a2, a3, a4, a5, a6, a7, a8, a2) || !sub_10000C240() || (sub_10000AF54("OI_HCICMD_ChangeConnectionPacketType"), v26 = sub_10000C050(0x2Cu), !os_log_type_enabled(v26, OS_LOG_TYPE_ERROR)))
      {
LABEL_71:
        *(a2 + 54) = 3;
        v28 = sub_1002436B8(sub_10023C8F4, a2);
        if (v28)
        {
          v29 = v28;
          if (sub_10000C240())
          {
            sub_10000AF54("OI_DEVMGR_ReadRemoteExtendedFeatures");
            v30 = sub_10000C050(0x2Cu);
            if (os_log_type_enabled(v30, OS_LOG_TYPE_ERROR))
            {
              sub_100814348();
            }
          }

          sub_10023C8F4(v29, a3, 0);
        }

        else if (sub_1002439F4(sub_10023CC0C, a2))
        {
          if (sub_10000C240())
          {
            sub_10000AF54("OI_DEVMGR_ReadRemoteVersionInformation failed with %!", 0);
            v31 = sub_10000C050(0x2Cu);
            if (os_log_type_enabled(v31, OS_LOG_TYPE_ERROR))
            {
              sub_1000E09C0();
            }
          }
        }

        else if ((v8 & 0xFE) == 0xF0)
        {
          if (sub_10023CD60((a2 + 24)))
          {
            if (sub_10000C240())
            {
              sub_10000AF54("OI_DEVMGR_ReadProprietaryRemoteFeatures");
              v45 = sub_10000C050(0x2Cu);
              if (os_log_type_enabled(v45, OS_LOG_TYPE_ERROR))
              {
                sub_100814348();
              }
            }
          }
        }

        return;
      }

      sub_100814348();
      goto LABEL_71;
    }

    if (sub_10000C240())
    {
      sub_10000AF54("OI_HCIEventHandler_ConnectionComplete %:, inconsistent state %d, dropping connection", a3, *(a2 + 54));
      v32 = sub_10000C050(0x2Cu);
      if (os_log_type_enabled(v32, OS_LOG_TYPE_ERROR))
      {
        sub_100814348();
      }
    }

    v33 = _os_log_pack_size();
    v34 = &buf[-((__chkstk_darwin(v33) + 15) & 0xFFFFFFFFFFFFFFF0)];
    v35 = __error();
    v36 = _os_log_pack_fill(v34, v33, *v35, &_mh_execute_header, "UNKNOWN_ACL_HANDLE, inconsistent state %d", *buf);
    v37 = *(a2 + 54);
    *v36 = 67109120;
    v36[1] = v37;
    os_log_create("com.apple.bluetooth", "CBCrash");
    qword_100B55118 = os_log_pack_send_and_compose();
    os_fault_with_payload();
    sub_10023C7AC(a2, v38, v39, v40, v41, v42, v43, v44);
  }

  else
  {
    v22 = a4 == 1 || (a4 & 0xFE) == 240;
    if (a1 || !v22)
    {
      if (!a1)
      {
        sub_1000D660C();
      }

      sub_100248AE0(0, a3, v8, a1);
    }

    else if (sub_10000C240())
    {
      sub_10000AF54("Ignoring ConnectionComplete for %: Unknown connection handle", a3);
      v23 = sub_10000C050(0x2Cu);
      if (os_log_type_enabled(v23, OS_LOG_TYPE_ERROR))
      {
        sub_100814450();
      }
    }
  }
}

void sub_10023C7AC(char *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v9 = sub_1000D6178(5u, a2, a3, a4, a5, a6, a7, a8, a1);
  if (sub_1000D6410(a1, v9))
  {
    if (sub_10000C240())
    {
      sub_10000AF54("OI_HCICMD_Disconnect failed (%d)", *a1);
      v10 = sub_10000C050(0x2Cu);
      if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
      {
        sub_100814348();
      }
    }
  }

  sub_1000E62E8(a1, 1348);
  a1[54] = 7;
  sub_1000E4FBC(a1, 1348);
  sub_1000E53AC(a1, 1348);
  sub_1000E0BF8(a1, 0x544u);
  sub_1000E4630(a1);
  sub_1000E12C4(a1);
}

uint64_t sub_10023C894(uint64_t a1, uint64_t a2)
{
  if (!a1)
  {
    return 101;
  }

  if (!sub_1000E1FE8(a1))
  {
    return 1301;
  }

  return sub_1002A5A04();
}

void sub_10023C8F4(uint64_t a1, uint64_t a2, uint64_t *a3)
{
  v5 = a1;
  v6 = sub_1000E1FE8(a2);
  if (sub_1000B8B5C(v6))
  {
    v7 = *(v6 + 54);
    if (v7 != 3 && v7 != 6)
    {
      sub_1000D660C();
      v7 = *(v6 + 54);
    }

    if (v7 != 6)
    {
      if (v7 == 3)
      {
        if (v5 || !a3)
        {
          *(v6 + 224) = 1;
          *(v6 + 227) = 1;
          return;
        }

        v9 = *(a3 + 7);
        v10 = *a3;
        *(v6 + 129) = *a3;
        *(v6 + 224) = *(a3 + 3) >> 7;
        *(v6 + 225) = (*(a3 + 1) & 0x30) != 0;
        *(v6 + 227) = *(a3 + 3) & 6;
        *(v6 + 226) = (v10 & 0x600380000000) == 0x80000000;
        if (sub_10000C240())
        {
          sub_10000AF54("Remote classic supported features: %@", v6 + 129, 8);
          v11 = sub_10000C050(0x2Cu);
          if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
          {
            *buf = 136446210;
            v22 = sub_10000C0FC();
            _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_DEFAULT, " %{public}s", buf, 0xCu);
          }
        }

        if (v9 < 0)
        {
          v19 = sub_100243844(sub_10023F728, v6);
          if (!v19)
          {
            goto LABEL_17;
          }

          v12 = v19;
          if (sub_10000C240())
          {
            sub_10000AF54("OI_DEVMGR_ReadRemoteExtendedFeatures");
            v20 = sub_10000C050(0x2Cu);
            if (os_log_type_enabled(v20, OS_LOG_TYPE_ERROR))
            {
              sub_100814348();
            }
          }
        }

        else
        {
          v12 = 102;
        }

        sub_10023F728(v12, a2, 0, 0, 0);
LABEL_17:
        if (!*(v6 + 37) && *(qword_100BCDFC8 + 4))
        {
          if (*(qword_100BCDFC8 + 4) <= v6[137])
          {
            v13 = v6[137];
          }

          else
          {
            v13 = *(qword_100BCDFC8 + 4);
          }

          if (sub_1000D28AC(v6, v13, 20) && sub_10000C240())
          {
            sub_10000AF54("postDisconnectTimeout failed");
            v14 = sub_10000C050(0x2Cu);
            if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
            {
              sub_100814348();
            }
          }
        }

        return;
      }

      if (sub_10000C240())
      {
        v16 = *v6;
        v17 = sub_1002567E8(*(v6 + 54));
        sub_10000AF54("orphaned newConnectionReadFeaturesCb, handle %d, state %s", v16, v17);
        v18 = sub_10000C050(0x2Cu);
        if (os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
        {
          sub_1000E09C0();
        }
      }
    }
  }

  else if (sub_10000C240())
  {
    sub_10000AF54("newConnectionReadFeaturesCb: connection has gone away");
    v15 = sub_10000C050(0x2Cu);
    if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
    {
      sub_100814348();
    }
  }
}

void sub_10023CC0C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v10 = sub_1000E1FE8(a2);
  if (sub_1000B8B5C(v10))
  {
    if (sub_10000C240())
    {
      sub_10000AF54("Remote classic version information: status=%!, addr=%: LMPVersion=%x, mfgrName=%x, LMPSubVersion=%x", a1, a2, a3, a4, a5);
      v11 = sub_10000C050(0x2Cu);
      if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 136446210;
        v14 = sub_10000C0FC();
        _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_DEFAULT, " %{public}s", buf, 0xCu);
      }
    }

    *(v10 + 20) = a4;
    *(v10 + 24) = a3;
    *(v10 + 22) = a5;
  }

  else if (sub_10000C240())
  {
    sub_10000AF54("newConnectionReadRemoteVersionInformationCb: connection has gone away");
    v12 = sub_10000C050(0x2Cu);
    if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
    {
      sub_100814348();
    }
  }
}

uint64_t sub_10023CD60(uint64_t a1)
{
  if (!a1)
  {
    return 101;
  }

  if (!sub_1000E1FE8(a1))
  {
    return 1301;
  }

  return sub_1002A57C4();
}

void sub_10023CDB8(uint64_t a1, int a2, int a3)
{
  v4 = sub_1000ABB80(a2);
  if (sub_1000B8B5C(v4))
  {
    *(v4 + 73) = a3;
  }

  else if (sub_10000C240())
  {
    sub_10000AF54("Device disconnected during the read of remote features. Ignoring event.");
    v5 = sub_10000C050(0x2Cu);
    if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
    {
      sub_1000E09C0();
    }
  }
}

void sub_10023CE34(uint64_t a1, uint64_t a2)
{
  if (!a2)
  {
    *(a1 + 54) = 0;
  }

  if (*(a1 + 198) == 1)
  {
    *(a1 + 198) = 0;
    sub_1000DE170(a1);
  }

  if (qword_100B5F4C0)
  {
    if ((*qword_100B5F4C0 == 3 || *qword_100B5F4C0 == 0) && *(a1 + 48) == *(qword_100B5F4C0 + 8) && *(a1 + 52) == *(qword_100B5F4C0 + 12))
    {
      sub_10023F51C(a1, a2);
      if (!a2)
      {
        return;
      }

      goto LABEL_18;
    }
  }

  if (sub_1000B8B5C(a1))
  {
    sub_100231674(a2, (a1 + 48), a1);
  }

  if (a2)
  {
LABEL_18:
    if (*(a1 + 54) != 3)
    {
      sub_1000E4FBC(a1, a2);
      sub_1000E53AC(a1, a2);

      sub_1000E12C4(a1);
    }
  }
}

void sub_10023CF28(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  if (xmmword_100BCE2E0)
  {
    if (!byte_100B5F4BB)
    {
      if ((a3 & 0xFFFFFFFD) == 0)
      {
        sub_100249434(a1, a2, a3);
LABEL_16:
        byte_100B5F508 = 0;
        return;
      }

      if ((a3 - 240) < 2 || a3 == 1)
      {
        if (byte_100B5F4B8)
        {
LABEL_14:
          sub_1000D6178(9u, a2, a3, a4, a5, a6, a7, a8, a1);
          return;
        }

        v13 = &xmmword_100B5F520;
        v14 = 64;
        do
        {
          if (*v13)
          {
            v15 = 0;
          }

          else
          {
            v15 = *(v13 + 2) == 0;
          }

          if (v15)
          {
            break;
          }

          if (*v13 == *a1 && *(v13 + 2) == *(a1 + 4))
          {
            goto LABEL_14;
          }

          v13 = (v13 + 6);
          --v14;
        }

        while (v14);
        v17 = sub_1000E1FE8(a1);
        if (v17)
        {
          v18 = v17;
          v19 = *(v17 + 54);
          v20 = sub_10000C240();
          if (v19 == 2)
          {
            if (v20)
            {
              sub_10000AF54("Duplicate incoming connection requests detected, ignore duplicate");
              v26 = sub_10000C050(0x2Cu);
              if (os_log_type_enabled(v26, OS_LOG_TYPE_ERROR))
              {
                sub_10080F604();
              }
            }

            goto LABEL_16;
          }

          if (v19 == 1)
          {
            if (v20)
            {
              sub_10000AF54("Overlapping Local/Remote Connection requests");
              v24 = sub_10000C050(0x2Cu);
              if (os_log_type_enabled(v24, OS_LOG_TYPE_ERROR))
              {
                sub_10080F604();
              }
            }

            byte_100B5F508 = 1;
            sub_10023C0C0(1339, v18, a1, a3, 0, v21, v22, v23);
          }

          else
          {
            if (v20)
            {
              v27 = sub_1002567E8(*(v18 + 54));
              sub_10000AF54("Incoming connection requested on same handle during state %s", v27);
              v28 = sub_10000C050(0x2Cu);
              if (os_log_type_enabled(v28, OS_LOG_TYPE_ERROR))
              {
                sub_10080F604();
              }
            }

            sub_1000DD268(0, v18, 1339);
          }
        }

        v29 = sub_100255B2C(a1, 2);
        if (v29)
        {
          v30 = v29;
          v31 = 0;
          v32 = 0;
LABEL_47:
          v33 = &qword_100B5F4F0[v31++];
          do
          {
            if (*v33)
            {
              v34 = **v33;
              if (v34)
              {
                v34(a1, a2);
                v32 = 1;
                if (v31 != 3)
                {
                  goto LABEL_47;
                }

LABEL_55:
                dword_100BCDFD4 = a2;
                *(v30 + 48) = 0;
                *(v30 + 52) = 0;
LABEL_75:
                sub_1000E12C4(v30);
                goto LABEL_16;
              }
            }

            ++v31;
            ++v33;
          }

          while (v31 != 4);
          if (v32)
          {
            goto LABEL_55;
          }

          *(v30 + 56) = a2;
          *(v30 + 327) = 1;
          if (sub_100241684() && (*(qword_100BCDFC8 + 14) & 1) == 0)
          {
            v44 = sub_100247BF0();
            LODWORD(v43) = (a2 & 0x1F00) != 0x100 || (a2 & 0xFC) == 16;
            if (v44)
            {
              v43 = 0;
            }

            else
            {
              v43 = v43;
            }
          }

          else
          {
            v43 = 0;
          }

          v53 = v43;
          if (sub_1000D6178(8u, v36, v37, v38, v39, v40, v41, v42, a1))
          {
            if (sub_10000C240())
            {
              sub_10000AF54("OI_HCICMD_AcceptConnectionRequest failed (%:)", a1, v53);
              v46 = sub_10000C050(0x2Cu);
              if (os_log_type_enabled(v46, OS_LOG_TYPE_ERROR))
              {
                sub_100814348();
              }
            }

            goto LABEL_75;
          }

          if ((a2 & 0x1F00) == 0x100)
          {
            *(v30 + 138) = *(sub_1003045A0(0x2Cu) + 10);
            sub_100018960(49, nullsub_141, v47, v48, v49, v50, v51, v52, v30);
          }

          goto LABEL_16;
        }

        if (sub_10000C240())
        {
          sub_10000AF54("Cannot accept ACL connection - connection list is full!");
          v35 = sub_10000C050(0x2Cu);
          if (os_log_type_enabled(v35, OS_LOG_TYPE_ERROR))
          {
            sub_1000E09C0();
          }
        }
      }

      else if (sub_10000C240())
      {
        sub_10000AF54("OI_HCIEventHandler_ConnectionRequested: (%d)", a3);
        v25 = sub_10000C050(0x2Cu);
        if (os_log_type_enabled(v25, OS_LOG_TYPE_ERROR))
        {
          sub_1008144D4();
        }
      }
    }

    if (a3 == 2)
    {
      v10 = 29;
    }

    else
    {
      v10 = 9;
    }

    if (sub_1000D6178(v10, a2, a3, a4, a5, a6, a7, a8, a1) && sub_10000C240())
    {
      sub_10000AF54("OI_HCICMD_RejectConnectionRequest failed");
      v11 = sub_10000C050(0x2Cu);
      if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
      {
        sub_100814348();
      }
    }

    goto LABEL_16;
  }
}

uint64_t sub_10023D3AC(uint64_t a1, uint64_t a2)
{
  if (!xmmword_100BCE2E0)
  {
    return 103;
  }

  if (!a1)
  {
    return 123;
  }

  v4 = sub_100007618(0x38uLL, 0x10A2040A8DF08F7uLL);
  *v4 = 1;
  v5 = *(a2 + 4);
  v4[2] = *a2;
  *(v4 + 6) = v5;
  *(v4 + 2) = a1;
  *(v4 + 3) = 0;
  sub_100016250((v4 + 8));
  v4[8] += *(qword_100BCDFC8 + 6);
  v6 = sub_10023B8FC(v4);
  if (v6)
  {
    sub_10000C1E8(v4);
  }

  return v6;
}

uint64_t sub_10023D470(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  if (!xmmword_100BCE2E0)
  {
    return 103;
  }

  if (!a1)
  {
    return 123;
  }

  v8 = sub_100007618(0x38uLL, 0x10A2040A8DF08F7uLL);
  *v8 = 1;
  v9 = *(a2 + 4);
  v8[2] = *a2;
  *(v8 + 6) = v9;
  *(v8 + 2) = a1;
  *(v8 + 3) = a4;
  sub_100016250((v8 + 8));
  v8[8] += a3;
  v10 = sub_10023B8FC(v8);
  if (v10)
  {
    sub_10000C1E8(v8);
  }

  return v10;
}

uint64_t sub_10023D538(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  if (!xmmword_100BCE2E0)
  {
    return 103;
  }

  if (!qword_100B5F4C0)
  {
    return 1359;
  }

  if (*qword_100B5F4C0 == 1 && *a1 == *(qword_100B5F4C0 + 8) && *(a1 + 4) == *(qword_100B5F4C0 + 12))
  {
    return sub_100018960(20, 0, a3, a4, a5, a6, a7, a8, a1);
  }

  v9 = qword_100B5F4A8;
  for (i = qword_100B5F4A8 == 0; !i && v9 != &qword_100B5F4A8; i = v9 == 0)
  {
    if (*(v9 - 10) == 1 && *a1 == *(v9 - 8) && *(a1 + 4) == *(v9 - 14))
    {
      v14 = *(v9 - 3);
      if (!v14)
      {
        sub_1000D660C();
        v14 = *(v9 - 3);
      }

      v14(1362, v9 - 4, 0, *(v9 - 2), a5, a6, a7, a8);
      sub_100305208(v9);
      return 1358;
    }

    v9 = *v9;
  }

  return 1358;
}

void sub_10023D648(uint64_t result, uint64_t a2, uint64_t a3)
{
  if (result)
  {
    if (sub_10000C240())
    {
      sub_10000AF54("OI_HCIEventHandler_RemoteNameRequestComplete: (%:)", a2);
      v6 = sub_10000C050(0x2Cu);
      if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
      {
        sub_100814348();
      }
    }
  }

  if (qword_100B5F4C0 && *qword_100B5F4C0 == 1 && *a2 == *(qword_100B5F4C0 + 8) && *(a2 + 4) == *(qword_100B5F4C0 + 12))
  {
    sub_10023D70C(result, a3);
  }
}

uint64_t sub_10023D70C(uint64_t a1, uint64_t a2)
{
  v4 = qword_100B5F4C0;
  if (!qword_100B5F4C0)
  {
    sub_1000D660C();
    v4 = qword_100B5F4C0;
  }

  if (*v4 != 1)
  {
    sub_1000D660C();
    v4 = qword_100B5F4C0;
  }

  v5 = *(v4 + 16);
  if (!v5)
  {
    sub_1000D660C();
    v4 = qword_100B5F4C0;
    v5 = *(qword_100B5F4C0 + 16);
  }

  v5(a1, v4 + 8, a2, *(v4 + 24));

  return sub_10023F0D8(1346);
}

void sub_10023D79C(uint64_t a1)
{
  v1 = a1;
  if (sub_10000C240() && (v2 = sub_100304B74(v1), sub_10000AF54("OI_HCIEventHandler_DataBufferOverflow, linkType %s", v2), v3 = sub_10000C050(0x2Cu), os_log_type_enabled(v3, OS_LOG_TYPE_ERROR)))
  {
    sub_1000E09C0();
    if (v1)
    {
      return;
    }
  }

  else if (v1)
  {
    return;
  }

  if (xmmword_100BCE2E0)
  {
    sub_100249D80();
  }
}

uint64_t sub_10023D82C()
{
  if (off_100B5F518)
  {
    return off_100B5F518();
  }

  return result;
}

uint64_t sub_10023D840(uint64_t a1)
{
  if (!xmmword_100BCE2E0)
  {
    return 103;
  }

  if (a1)
  {
    for (i = 0; i != 3; ++i)
    {
      if (!qword_100B5F4F0[i])
      {
        result = 0;
        qword_100B5F4F0[i] = a1;
        return result;
      }
    }

    if (sub_10000C240())
    {
      sub_10000AF54("All callbacks used up");
      v3 = sub_10000C050(0x2Cu);
      if (os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
      {
        sub_1000E09C0();
      }
    }

    return 1317;
  }

  else
  {
    if (sub_10000C240())
    {
      sub_10000AF54("Extra callbacks cannot be null");
      v5 = sub_10000C050(0x2Cu);
      if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
      {
        sub_1000E09C0();
      }
    }

    return 101;
  }
}

uint64_t sub_10023D934(uint64_t a1)
{
  if (!xmmword_100BCE2E0)
  {
    return 103;
  }

  for (i = 0; i != 3; ++i)
  {
    if (qword_100B5F4F0[i] == a1)
    {
      result = 0;
      qword_100B5F4F0[i] = 0;
      return result;
    }
  }

  if (sub_10000C240())
  {
    sub_10000AF54("Cannot unregister extra callbacks that are not registered");
    v2 = sub_10000C050(0x2Cu);
    if (os_log_type_enabled(v2, OS_LOG_TYPE_ERROR))
    {
      sub_1000E09C0();
    }
  }

  return 120;
}

uint64_t sub_10023D9E0(uint64_t (*a1)(void, void, void, void, void))
{
  if (!xmmword_100BCE2E0)
  {
    return 103;
  }

  if (a1)
  {
    if (off_100B5F4E8)
    {
      if (sub_10000C240())
      {
        sub_10000AF54("Extra callbacks already registered");
        v2 = sub_10000C050(0x2Cu);
        if (os_log_type_enabled(v2, OS_LOG_TYPE_ERROR))
        {
          sub_1000E09C0();
        }
      }

      return 119;
    }

    else
    {
      result = 0;
      off_100B5F4E8 = a1;
    }
  }

  else
  {
    if (sub_10000C240())
    {
      sub_10000AF54("Extra callbacks cannot be null");
      v4 = sub_10000C050(0x2Cu);
      if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
      {
        sub_1000E09C0();
      }
    }

    return 101;
  }

  return result;
}

uint64_t sub_10023DAC0(uint64_t (*a1)(void, void, void, void, void))
{
  if (!xmmword_100BCE2E0)
  {
    return 103;
  }

  if (off_100B5F4E8 == a1)
  {
    result = 0;
    off_100B5F4E8 = 0;
  }

  else
  {
    if (sub_10000C240())
    {
      sub_10000AF54("Cannot unregister extra callbacks that are not registered");
      v1 = sub_10000C050(0x2Cu);
      if (os_log_type_enabled(v1, OS_LOG_TYPE_ERROR))
      {
        sub_1000E09C0();
      }
    }

    return 120;
  }

  return result;
}

uint64_t sub_10023DB58(uint64_t a1, uint64_t *a2)
{
  result = 101;
  if (a1 && a2)
  {
    v5 = sub_1000E1FE8(a1);
    if (v5)
    {
      v6 = v5;
      result = 0;
      *a2 = v6;
    }

    else
    {
      return 1301;
    }
  }

  return result;
}

uint64_t sub_10023DBAC(uint64_t a1, uint64_t *a2)
{
  result = 101;
  if (a1 && a2)
  {
    v5 = sub_1000E2040(a1);
    if (v5)
    {
      v6 = v5;
      result = 0;
      *a2 = v6;
    }

    else
    {
      return 1301;
    }
  }

  return result;
}

uint64_t sub_10023DC00(uint64_t a1, uint64_t a2)
{
  if (!a2)
  {
    return 101;
  }

  v3 = a1;
  if (sub_1000B8B5C(a1))
  {
LABEL_5:
    result = 0;
    v5 = *(v3 + 48);
    *(a2 + 4) = *(v3 + 52);
    *a2 = v5;
    return result;
  }

  if (sub_1000C0E08(v3))
  {
    v3 = *(v3 + 48);
    goto LABEL_5;
  }

  return 1301;
}

uint64_t sub_10023DC68(uint64_t a1, uint64_t a2)
{
  result = 101;
  if (a1 && a2)
  {
    v5 = sub_1000E1FE8(a1);
    if (v5)
    {
      v6 = v5;
      result = 0;
      *a2 = *(v6 + 227);
      *(a2 + 1) = *(v6 + 144);
      *(a2 + 2) = *(v6 + 152);
      *(a2 + 4) = *(v6 + 140);
      *(a2 + 6) = *(v6 + 136);
    }

    else
    {
      return 1301;
    }
  }

  return result;
}

uint64_t sub_10023DCE0(uint64_t a1, _BYTE *a2)
{
  result = 101;
  if (a1 && a2)
  {
    v5 = sub_1000E2040(a1);
    if (v5)
    {
      v6 = v5;
      result = 0;
      *a2 = *(v6 + 58);
    }

    else
    {
      return 1301;
    }
  }

  return result;
}

uint64_t sub_10023DD38(void *a1)
{
  if (!a1)
  {
    return 101;
  }

  result = sub_1002A4B74();
  if (!result)
  {
    *&byte_100BCDFFC = *a1;
  }

  return result;
}

uint64_t sub_10023DD84(uint64_t a1, void *a2, void *a3)
{
  result = 101;
  if (a1 && a2)
  {
    v7 = sub_1000E1FE8(a1);
    if (v7)
    {
      v8 = v7;
      result = 0;
      v8 = (v8 + 258);
      *a2 = *v8;
      *a3 = v8[1];
    }

    else
    {
      return 1301;
    }
  }

  return result;
}

uint64_t sub_10023DDEC(_DWORD *a1, void *a2)
{
  result = 101;
  if (a1 && a2)
  {
    v5 = sub_1000E5EA8(a1);
    if (v5)
    {
      v6 = v5;
      result = 0;
      *a2 = *(v6 + 172);
    }

    else
    {
      return 1301;
    }
  }

  return result;
}

void sub_10023DEBC(uint64_t a1)
{
  if (a1)
  {
    if ((*(a1 + 257) & 1) == 0)
    {
      sub_1000D660C();
    }

    *(a1 + 257) = 0;
  }

  else if (sub_10000C240())
  {
    sub_10000AF54("OI_HCIEventHandler_EnhancedFlushComplete null conn handle detected");
    v2 = sub_10000C050(0x2Cu);
    if (os_log_type_enabled(v2, OS_LOG_TYPE_ERROR))
    {
      sub_1000E09C0();
    }
  }
}

uint64_t sub_10023DF34(uint64_t a1)
{
  if (a1)
  {
    v1 = sub_1000E1FE8(a1);
    if (v1)
    {
      v2 = v1;
      if (sub_10000C240())
      {
        v9 = sub_100084230();
        sub_10000AF54("Setting flush timeout, chipId:%lu", v9);
        v10 = sub_10000C050(0x2Cu);
        if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 136446210;
          v16 = sub_10000C0FC();
          _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEFAULT, " %{public}s", buf, 0xCu);
        }
      }

      return sub_100018960(85, 0, v3, v4, v5, v6, v7, v8, v2);
    }

    v11 = 1301;
  }

  else
  {
    v11 = 101;
  }

  if (sub_10000C240())
  {
    v12 = sub_100084230();
    sub_10000AF54("Setting flush timeout skipped, status:%!, chipId:%lu", v11, v12);
    v13 = sub_10000C050(0x2Cu);
    if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
    {
      sub_1000E09C0();
    }
  }

  return v11;
}

uint64_t sub_10023E098(uint64_t a1, uint64_t a2)
{
  if (!a1)
  {
    return 101;
  }

  v4 = sub_1000E1FE8(a1);
  if (!v4)
  {
    return 1301;
  }

  v5 = v4;
  if (sub_10000C240())
  {
    v6 = *(v5 + 138) & 1;
    v7 = sub_1000BBF7C();
    v8 = sub_1000C0E38();
    sub_10000AF54("Accept RS on single-conn for device %: enabled %d with switch-enable %d, numAcl %d, numLE %d", a1, a2, v6, v7, v8);
    v9 = sub_10000C050(0x2Cu);
    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 136446210;
      v25 = sub_10000C0FC();
      _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEFAULT, " %{public}s", buf, 0xCu);
    }
  }

  *(v5 + 199) = a2;
  if (!a2)
  {
    return 0;
  }

  if (*(v5 + 138))
  {
    return 0;
  }

  v10 = sub_1000BBF7C();
  if (sub_1000C0E38() + v10 > 1)
  {
    return 0;
  }

  if (sub_10000C240())
  {
    sub_10000AF54("Enabling Switch policy");
    v17 = sub_10000C050(0x2Cu);
    if (os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT))
    {
      v18 = sub_10000C0FC();
      *buf = 136446210;
      v25 = v18;
      _os_log_impl(&_mh_execute_header, v17, OS_LOG_TYPE_DEFAULT, " %{public}s", buf, 0xCu);
    }
  }

  v19 = *(v5 + 138) | 1u;
  *(v5 + 138) |= 1u;
  v23 = v19;
  v20 = sub_100018960(49, 0, v11, v12, v13, v14, v15, v16, v5);
  if (v20)
  {
    if (sub_10000C240())
    {
      sub_10000AF54("Could not write link settings to Central only %!", v20, v23);
      v21 = sub_10000C050(0x2Cu);
      if (os_log_type_enabled(v21, OS_LOG_TYPE_ERROR))
      {
        sub_1000E09C0();
      }
    }
  }

  return v20;
}

uint64_t sub_10023E2B0(uint64_t a1, uint64_t a2)
{
  if (!a1)
  {
    return 101;
  }

  v4 = sub_1000E1FE8(a1);
  if (!v4)
  {
    return 1301;
  }

  v5 = v4;
  if (sub_10000C240())
  {
    v6 = sub_1000BBF7C();
    v7 = sub_1000C0E38();
    sub_10000AF54("Disable RS on single-conn for device %: enabled %d numAcl %d, numLE %d", a1, a2, v6, v7);
    v8 = sub_10000C050(0x2Cu);
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 136446210;
      v11 = sub_10000C0FC();
      _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, " %{public}s", buf, 0xCu);
    }
  }

  result = 0;
  *(v5 + 200) = a2;
  return result;
}

uint64_t sub_10023E3C8(uint64_t a1, __int16 a2)
{
  if (!a1)
  {
    return 101;
  }

  v4 = sub_1000E1FE8(a1);
  if (!v4)
  {
    return 1301;
  }

  v5 = v4;
  if (sub_10000C240())
  {
    sub_10000AF54("Increasing disconnection timeout override for device %:", a1);
    v6 = sub_10000C050(0x2Cu);
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 136446210;
      v9 = sub_10000C0FC();
      _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, " %{public}s", buf, 0xCu);
    }
  }

  result = 0;
  *(v5 + 324) = 10 * a2;
  return result;
}

uint64_t sub_10023E4C8(uint64_t a1, _WORD *a2)
{
  if (!a1)
  {
    return 101;
  }

  v3 = sub_1000E1FE8(a1);
  if (!v3)
  {
    return 1301;
  }

  v4 = v3;
  result = 0;
  *a2 = *(v4 + 20);
  return result;
}

uint64_t sub_10023E518(int *a1)
{
  if (sub_10000C240())
  {
    sub_10000AF54("OI_DEVMGR_AddDeviceToDenylist %:", a1);
    v2 = sub_10000C050(0x2Cu);
    if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 136446210;
      v9 = sub_10000C0FC();
      _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEFAULT, " %{public}s", buf, 0xCu);
    }
  }

  v3 = &xmmword_100B5F520;
  v4 = 64;
  while (*v3 || *(v3 + 2) != 0)
  {
    v3 = (v3 + 6);
    if (!--v4)
    {
      return 104;
    }
  }

  result = 0;
  v7 = *a1;
  *(v3 + 2) = *(a1 + 2);
  *v3 = v7;
  return result;
}

uint64_t sub_10023E634(uint64_t a1)
{
  if (sub_10000C240())
  {
    sub_10000AF54("OI_DEVMGR_RemoveDeviceFromDenylist %:", a1);
    v2 = sub_10000C050(0x2Cu);
    if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 136446210;
      v9 = sub_10000C0FC();
      _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEFAULT, " %{public}s", buf, 0xCu);
    }
  }

  v3 = &xmmword_100B5F520;
  v4 = 64;
  while (!*v3 && *(v3 + 2) == 0 || *a1 != *v3 || *(a1 + 4) != *(v3 + 2))
  {
    v3 = (v3 + 6);
    if (!--v4)
    {
      return 120;
    }
  }

  result = 0;
  *(v3 + 2) = 0;
  *v3 = 0;
  return result;
}

double sub_10023E774()
{
  result = 0.0;
  xmmword_100B5F680 = 0u;
  unk_100B5F690 = 0u;
  xmmword_100B5F660 = 0u;
  unk_100B5F670 = 0u;
  xmmword_100B5F640 = 0u;
  unk_100B5F650 = 0u;
  xmmword_100B5F620 = 0u;
  unk_100B5F630 = 0u;
  xmmword_100B5F600 = 0u;
  unk_100B5F610 = 0u;
  xmmword_100B5F5E0 = 0u;
  unk_100B5F5F0 = 0u;
  xmmword_100B5F5C0 = 0u;
  unk_100B5F5D0 = 0u;
  xmmword_100B5F5A0 = 0u;
  unk_100B5F5B0 = 0u;
  xmmword_100B5F580 = 0u;
  unk_100B5F590 = 0u;
  xmmword_100B5F560 = 0u;
  unk_100B5F570 = 0u;
  xmmword_100B5F540 = 0u;
  unk_100B5F550 = 0u;
  xmmword_100B5F520 = 0u;
  *algn_100B5F530 = 0u;
  return result;
}

uint64_t sub_10023E814(uint64_t a1, char a2)
{
  if (!a1)
  {
    return 101;
  }

  if (!sub_1000E1FE8(a1))
  {
    return 1301;
  }

  result = 0;
  BYTE12(xmmword_100BCE038) = a2;
  return result;
}

void sub_10023E860(uint64_t a1)
{
  v3 = 0;
  sub_100016250(&v3);
  v2 = *a1;
  if (*a1 > 1)
  {
    if (v2 == 2)
    {
      sub_100304AF8("DEVMGR_OP_BOND_ENTER");
    }

    else if (v2 == 3)
    {
      sub_100304AF8("DEVMGR_OP_BOND_CONNECT, bdaddr: %:, now %d:%d, expires %d:%d, cb 0x%x\n", a1 + 8, v3 & 0x1FFF, SWORD2(v3), *(a1 + 32) & 0x1FFF, *(a1 + 36), *(a1 + 16));
    }
  }

  else if (v2)
  {
    if (v2 == 1)
    {
      sub_100304AF8("DEVMGR_OP_READ_NAME,    bdaddr: %:, now %d:%d, expires %d:%d, cb 0x%x\n", a1 + 8, v3 & 0x1FFF, SWORD2(v3), *(a1 + 32) & 0x1FFF, *(a1 + 36), *(a1 + 16));
    }
  }

  else
  {
    sub_100304AF8("DEVMGR_OP_ACL_CONNECT,  bdaddr: %:, now %d:%d, expires %d:%d, cb 0x%x\n", a1 + 8, v3 & 0x1FFF, SWORD2(v3), *(a1 + 32) & 0x1FFF, *(a1 + 36), *(a1 + 16));
  }
}

void sub_10023E970()
{
  v0 = qword_100B5F4C0;
  if (!qword_100B5F4C0)
  {
    sub_1000D660C();
    v0 = qword_100B5F4C0;
  }

  if (*v0)
  {
    v1 = *v0 == 3;
  }

  else
  {
    v1 = 1;
  }

  if (!v1)
  {
    sub_1000D660C();
    v0 = qword_100B5F4C0;
  }

  v2 = sub_1000E1FE8((v0 + 2));
  if (v2)
  {
    v3 = v2;
    v4 = *(v2 + 54);
    if (v4 <= 3)
    {
      if (v4 - 2 < 2)
      {
        return;
      }

      if (*(v2 + 54))
      {
        if (v4 == 1)
        {
          if (sub_10000C240())
          {
            sub_10000AF54("request inconsistency - connection creation already in progress");
            v5 = sub_10000C050(0x2Cu);
            if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
            {
              sub_1000E09C0();
            }
          }

          return;
        }

        goto LABEL_30;
      }

      goto LABEL_20;
    }

    if (v4 - 4 < 2)
    {
LABEL_20:

      sub_10023F51C(v2, 0);
      return;
    }

    if (v4 != 6)
    {
LABEL_30:
      if (sub_10000C240())
      {
        sub_10000AF54("deferredConnectionRequestCallback (%d)", *(v3 + 54));
        v17 = sub_10000C050(0x2Cu);
        if (os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
        {
          sub_10081455C();
        }
      }

      sub_1000E4FBC(v3, 1361);
      sub_1000E53AC(v3, 1361);
      sub_1000E12C4(v3);
      sub_1000D660C();
      v16 = 105;
      goto LABEL_48;
    }

    goto LABEL_43;
  }

  v6 = sub_100241284();
  if (v6)
  {
    v14 = v6;
    if (*(v6 + 274))
    {
      sub_1002412D4();
    }

    else
    {
      if (*(v6 + 54))
      {
        sub_1000D660C();
      }

      v18 = sub_1000D6178(5u, v7, v8, v9, v10, v11, v12, v13, v14);
      v16 = sub_1000D6410(v14, v18);
      if (v16)
      {
        goto LABEL_48;
      }

      *(v14 + 54) = 6;
    }

    goto LABEL_43;
  }

  if (!sub_1002412D4())
  {
    if (sub_1000BBF7C() && (byte_100BCDFD0 & 1) == 0 && (*(qword_100BCDFC8 + 13) & 1) == 0)
    {
      sub_1000DDF48(0);
      goto LABEL_43;
    }

    v15 = (qword_100B5F4C0 + 8);
    sub_100241684();
    if (sub_1000E1FE8(v15))
    {
      v16 = 1314;
      goto LABEL_48;
    }

    v19 = sub_100255B2C(v15, 1);
    if (!v19)
    {
      v16 = 1309;
LABEL_48:
      if (sub_10000C240())
      {
        sub_10000AF54("deferredConnectionRequestCallback: (%:)", qword_100B5F4C0 + 8);
        v30 = sub_10000C050(0x2Cu);
        if (os_log_type_enabled(v30, OS_LOG_TYPE_ERROR))
        {
          sub_100814348();
        }
      }

      sub_10023F51C(0, v16);
      return;
    }

    v20 = v19;
    v36 = 0;
    if (sub_100242340(v15, &v36))
    {
      if (byte_100BCDFC0 == 1)
      {
        v28 = v15;
LABEL_63:
        v32 = sub_1002A5DD8(v28);
LABEL_67:
        v16 = v32;
        if (!v32)
        {
          return;
        }

        if (sub_10000C240())
        {
          sub_10000AF54("OI_HCICMD_CreateACLConnection failed");
          v33 = sub_10000C050(0x2Cu);
          if (os_log_type_enabled(v33, OS_LOG_TYPE_ERROR))
          {
            sub_100814348();
          }
        }

        sub_1000E12C4(v20);
        goto LABEL_48;
      }

      if (BYTE11(xmmword_100BCE038) == 1 && (dword_100BCE014 & 0x200) != 0)
      {
        v28 = v15;
        goto LABEL_63;
      }
    }

    else
    {
      if (off_100B5F510)
      {
        v22 = off_100B5F510(v15);
      }

      else
      {
        v22 = 2;
      }

      if (byte_100BCDFC0 == 1)
      {
        v28 = v15;
        goto LABEL_63;
      }

      if (BYTE11(xmmword_100BCE038) == 1 && (dword_100BCE014 & 0x200) != 0)
      {
        v28 = v15;
        goto LABEL_63;
      }
    }

    v32 = sub_1000D6178(4u, v21, v22, v23, v24, v25, v26, v27, v15);
    goto LABEL_67;
  }

LABEL_43:
  if (sub_100306E3C(qword_100B5F4C0 + 32))
  {
    sub_1001C4B04("Busy-failure: outgoing connection deferred too long");
    if (sub_10000C240())
    {
      sub_10000AF54("Connection attempt on %: deferred too long, giving up", qword_100B5F4C0 + 8);
      v29 = sub_10000C050(0x2Cu);
      if (os_log_type_enabled(v29, OS_LOG_TYPE_ERROR))
      {
        sub_1000E09C0();
      }
    }

    v16 = 118;
    goto LABEL_48;
  }

  v31 = sub_10002195C(sub_10023E970, 0, 1, &dword_100B5F6A0);
  if (v31)
  {
    v34 = v31;
    if (sub_10000C240())
    {
      sub_10000AF54("OI_Dispatch_RegisterFunc failed");
      v35 = sub_10000C050(0x2Cu);
      if (os_log_type_enabled(v35, OS_LOG_TYPE_ERROR))
      {
        sub_100814348();
      }
    }

    sub_1000C52F4(v34);
    sub_10023EF08();
  }
}

uint64_t sub_10023EF08()
{
  v0 = qword_100B5F4C0;
  if (!qword_100B5F4C0)
  {
    sub_1000D660C();
    v0 = qword_100B5F4C0;
  }

  if (*v0 != 2)
  {
    sub_1000D660C();
  }

  byte_100B5F4BB = 1;
  if (!sub_1002412D4())
  {
    goto LABEL_15;
  }

  while (1)
  {
    if (sub_100306E3C(qword_100B5F4C0 + 32))
    {
      if (sub_10000C240())
      {
        sub_10000AF54("Enter bonding attempt deferred too long, giving up");
        v1 = sub_10000C050(0x2Cu);
        if (os_log_type_enabled(v1, OS_LOG_TYPE_ERROR))
        {
          sub_1000E09C0();
        }
      }
    }

    result = sub_10002195C(sub_10023EF08, 0, 1, 0);
    if (!result)
    {
      break;
    }

    v3 = result;
    if (sub_10000C240())
    {
      sub_10000AF54("OI_Dispatch_RegisterFunc failed: %!", v3);
      v4 = sub_10000C050(0x2Cu);
      if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
      {
        sub_1000E09C0();
      }
    }

    sub_1000C52F4(v3);
LABEL_15:
    v5 = sub_100241284();
    if (!v5)
    {

      return sub_10023F5F8(0);
    }

    v13 = v5;
    v14 = sub_1000D6178(5u, v6, v7, v8, v9, v10, v11, v12, v5);
    v15 = sub_1000D6410(v13, v14);
    if (v15)
    {
      v16 = v15;
      if (sub_10000C240())
      {
        sub_10000AF54("OI_HCICMD_Disconnect failed");
        v17 = sub_10000C050(0x2Cu);
        if (os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
        {
          sub_100814348();
        }
      }

      return sub_10023F5F8(v16);
    }

    *(v13 + 54) = 6;
  }

  return result;
}

uint64_t sub_10023F0D8(int a1)
{
  v2 = qword_100B5F4C0;
  v15 = *(qword_100B5F4C0 + 8);
  v16 = *(qword_100B5F4C0 + 12);
  if (a1 == 704)
  {
    v3 = qword_100B5F4A8;
    if (qword_100B5F4A8 && qword_100B5F4A8 != &qword_100B5F4A8)
    {
      do
      {
        if (v15 == *(v3 - 8) && v16 == *(v3 - 14))
        {
          v14[1] = v3 - 5;
          v14[0] = 704;
          v13[1] = v14;
          v13[0] = 16;
          v6 = sub_1000228C0(sub_10023F670, v13, 0);
          if (v6)
          {
            v7 = v6;
            if (sub_10000C240())
            {
              sub_10000AF54("Dispatch Register failed with %!", v7);
              v8 = sub_10000C050(0x2Cu);
              if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
              {
                sub_1008145E4(&v17, &v18);
              }
            }
          }

          sub_100305208(v3);
        }

        v3 = *v3;
        if (v3)
        {
          v9 = v3 == &qword_100B5F4A8;
        }

        else
        {
          v9 = 1;
        }
      }

      while (!v9);
      v2 = qword_100B5F4C0;
    }
  }

  sub_10000C1E8(v2);
  qword_100B5F4C0 = 0;
  result = sub_1000228C0(sub_10023BE1C, 0, 0);
  if (result)
  {
    v11 = result;
    if (sub_10000C240())
    {
      sub_10000AF54("OI_Dispatch_RegisterFunc failed!");
      v12 = sub_10000C050(0x2Cu);
      if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
      {
        sub_100814348();
      }
    }

    sub_1000C52F4(v11);
  }

  return result;
}

void sub_10023F2D0()
{
  v0 = qword_100B5F4A8;
  if (qword_100B5F4A8 == &qword_100B5F4A8)
  {
    return;
  }

  while (sub_100306E3C(v0 - 8))
  {
    v1 = (v0 - 40);
    sub_10023B404();
    sub_10030528C(&qword_100B5F4A8);
    v2 = *(v0 - 40);
    if (v2 > 1)
    {
      if (v2 == 2)
      {
        (*(v0 - 32))(1334);
        goto LABEL_15;
      }

      if (v2 != 3)
      {
LABEL_10:
        if (sub_10000C240())
        {
          sub_10000AF54("Invalid request type %d", *v1);
          v3 = sub_10000C050(0x2Cu);
          if (os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
          {
            sub_1008145E4(&v13, &v14);
          }
        }

        sub_1000D660C();
        goto LABEL_15;
      }

LABEL_9:
      (*(v0 - 24))(1334, v0 - 32, 0);
      goto LABEL_15;
    }

    if (!v2)
    {
      goto LABEL_9;
    }

    if (v2 != 1)
    {
      goto LABEL_10;
    }

    (*(v0 - 24))(1334, v0 - 32, 0, *(v0 - 16));
LABEL_15:
    sub_10000C1E8(v1);
    v0 = qword_100B5F4A8;
    if (qword_100B5F4A8 == &qword_100B5F4A8)
    {
      return;
    }
  }

  if (qword_100B5F4A8 != &qword_100B5F4A8)
  {
    v12 = 0;
    sub_100016250(&v12);
    v4 = (qword_100B5F4A8 - 8);
    if (sub_100306E3C(qword_100B5F4A8 - 8))
    {
      v5 = 0;
    }

    else
    {
      v6 = sub_100306CF0(&v12, v4);
      v5 = v6 <= 1 ? 1 : v6;
    }

    v7 = sub_10002260C(dword_100B5F6A4) ? sub_1000B7ADC(dword_100B5F6A4, v5) : sub_10002195C(sub_10023F2D0, 0, v5, &dword_100B5F6A4);
    v8 = v7;
    if (v7)
    {
      if (sub_10000C240())
      {
        sub_10000AF54("OI_Dispatch_RegisterFunc/OI_Dispatch_SetFuncTimeout failed");
        v9 = sub_10000C050(0x2Cu);
        if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
        {
          sub_100814348();
        }
      }

      sub_1000C52F4(v8);
      sub_10023F51C(v10, v11);
    }
  }
}

uint64_t sub_10023F51C(uint64_t a1, uint64_t a2)
{
  v4 = qword_100B5F4C0;
  if (!qword_100B5F4C0)
  {
    sub_1000D660C();
    v4 = qword_100B5F4C0;
  }

  if (*(v4 + 16))
  {
    if (a1)
    {
      goto LABEL_5;
    }
  }

  else
  {
    sub_1000D660C();
    if (a1)
    {
LABEL_5:
      if (*(a1 + 48) != *(qword_100B5F4C0 + 8) || *(a1 + 52) != *(qword_100B5F4C0 + 12))
      {
        sub_1000D660C();
      }

      if (!a2)
      {
        goto LABEL_16;
      }

LABEL_14:
      a1 = 0;
      goto LABEL_17;
    }
  }

  if (a2)
  {
    goto LABEL_14;
  }

  sub_1000D660C();
LABEL_16:
  sub_1002414F0(a1);
LABEL_17:
  if (sub_10002260C(dword_100B5F6A0))
  {
    sub_10002242C(dword_100B5F6A0);
  }

  (*(qword_100B5F4C0 + 16))(a2, qword_100B5F4C0 + 8, a1);

  return sub_10023F0D8(a2);
}

uint64_t sub_10023F5F8(uint64_t a1)
{
  v2 = qword_100B5F4C0;
  if (!qword_100B5F4C0)
  {
    sub_1000D660C();
    v2 = qword_100B5F4C0;
  }

  if (*v2 != 2)
  {
    sub_1000D660C();
    v2 = qword_100B5F4C0;
  }

  byte_100B5F4BB = a1 == 0;
  (*(v2 + 8))(a1);

  return sub_10023F0D8(1345);
}

void sub_10023F670(uint64_t a1)
{
  v1 = *(a1 + 8);
  v2 = *v1;
  v3 = *(v1 + 1);
  if (v3)
  {
    v4 = v3[2];
    if (v4)
    {
      v4(v2, v3 + 1, 0);
    }

    sub_10000C1E8(v3);
  }

  else
  {
    sub_1000D660C();
    if (sub_10000C240())
    {
      sub_10000AF54("Request is NULL, status is %!", v2);
      v5 = sub_10000C050(0x2Cu);
      if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
      {
        sub_10080F604();
      }
    }
  }
}

void sub_10023F728(uint64_t a1, uint64_t a2, int a3, uint64_t a4, void *a5)
{
  v7 = a1;
  v8 = sub_1000E1FE8(a2);
  if (sub_1000B8B5C(v8))
  {
    v15 = *(v8 + 54);
    if (v15 != 3 && v15 != 6)
    {
      sub_1000D660C();
      v15 = *(v8 + 54);
    }

    if (v15 != 6)
    {
      if (v15 == 3)
      {
        if (!v7 && a3 == 1 && a5)
        {
          *(v8 + 133) = *a5;
          *(v8 + 277) = *a5 & 1;
          if (sub_10000C240())
          {
            sub_10000AF54("Remote classic extended features page 1: %@", v8 + 133, 8);
            v17 = sub_10000C050(0x2Cu);
            if (os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT))
            {
              *buf = 136446210;
              v34 = sub_10000C0FC();
              _os_log_impl(&_mh_execute_header, v17, OS_LOG_TYPE_DEFAULT, " %{public}s", buf, 0xCu);
            }
          }
        }

        else
        {
          *(v8 + 277) = 0;
        }

        v22 = sub_100018960(46, sub_10023F9FC, v9, v10, v11, v12, v13, v14, v8);
        if (v22)
        {
          v23 = v22;
          if (sub_10000C240())
          {
            sub_10000AF54("OI_HCICMD_RoleDiscovery");
            v30 = sub_10000C050(0x2Cu);
            if (os_log_type_enabled(v30, OS_LOG_TYPE_ERROR))
            {
              sub_100814348();
            }
          }

          sub_10023FBD0(v8, v23, v24, v25, v26, v27, v28, v29);
        }

        *(v8 + 212) = 1;
        if (*(v8 + 329) == 1)
        {
          if (sub_10000C240())
          {
            sub_10000AF54("Read extended feature completed, resume suspended policy enforcement");
            v31 = sub_10000C050(0x2Cu);
            if (os_log_type_enabled(v31, OS_LOG_TYPE_DEFAULT))
            {
              v32 = sub_10000C0FC();
              *buf = 136446210;
              v34 = v32;
              _os_log_impl(&_mh_execute_header, v31, OS_LOG_TYPE_DEFAULT, " %{public}s", buf, 0xCu);
            }
          }

          sub_100301934(v8);
        }
      }

      else if (sub_10000C240())
      {
        v19 = *v8;
        v20 = sub_1002567E8(*(v8 + 54));
        sub_10000AF54("orphaned newConnectionReadExtendedFeaturesCb, handle %d, state %s", v19, v20);
        v21 = sub_10000C050(0x2Cu);
        if (os_log_type_enabled(v21, OS_LOG_TYPE_ERROR))
        {
          sub_1000E09C0();
        }
      }
    }
  }

  else if (sub_10000C240())
  {
    sub_10000AF54("newConnectionReadExtendedFeaturesCb: connection has gone away");
    v18 = sub_10000C050(0x2Cu);
    if (os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
    {
      sub_100814348();
    }
  }
}

void sub_10023F9FC(uint64_t a1, unsigned __int16 *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  if (!a2)
  {
    if (sub_10000C240() && (sub_10000AF54("newConnectionReadRoleCb: connection has gone away"), v20 = sub_10000C050(0x2Cu), os_log_type_enabled(v20, OS_LOG_TYPE_ERROR)))
    {
      sub_100814348();
      if (a1)
      {
        return;
      }
    }

    else if (a1)
    {
      return;
    }

    sub_1000D660C();
    return;
  }

  v9 = a3;
  v11 = *(a2 + 54);
  if (v11 != 3 && v11 != 6)
  {
    sub_1000D660C();
    v11 = *(a2 + 54);
  }

  if (v11 != 6)
  {
    if (v11 == 3)
    {
      if (a1)
      {
        if (!sub_10000C240())
        {
          goto LABEL_24;
        }

        sub_10000AF54("newConnectionReadRoleCb failed");
        v19 = sub_10000C050(0x2Cu);
        if (!os_log_type_enabled(v19, OS_LOG_TYPE_ERROR))
        {
          goto LABEL_24;
        }
      }

      else
      {
        *(a2 + 144) = v9;
        v24 = sub_100018960(49, sub_10023FC78, a3, a4, a5, a6, a7, a8, a2);
        if (!v24)
        {
          return;
        }

        a1 = v24;
        a2[69] = -1;
        if (!sub_10000C240())
        {
          goto LABEL_24;
        }

        sub_10000AF54("OI_HCICMD_WriteLinkPolicySettings failed");
        v25 = sub_10000C050(0x2Cu);
        if (!os_log_type_enabled(v25, OS_LOG_TYPE_ERROR))
        {
          goto LABEL_24;
        }
      }

      sub_100814348();
LABEL_24:
      sub_10023FBD0(a2, a1, v13, v14, v15, v16, v17, v18);
      return;
    }

    if (sub_10000C240())
    {
      v21 = *a2;
      v22 = sub_1002567E8(*(a2 + 54));
      sub_10000AF54("orphaned newConnectionReadRoleCb, handle %d, state %s", v21, v22);
      v23 = sub_10000C050(0x2Cu);
      if (os_log_type_enabled(v23, OS_LOG_TYPE_ERROR))
      {
        sub_1000E09C0();
      }
    }
  }
}

void sub_10023FBD0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v10 = sub_1000D6178(5u, a2, a3, a4, a5, a6, a7, a8, a1);
  if (sub_1000D6410(a1, v10))
  {
    if (sub_10000C240())
    {
      sub_10000AF54("OI_HCICMD_Disconnect failed");
      v11 = sub_10000C050(0x2Cu);
      if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
      {
        sub_100814348();
      }
    }
  }

  sub_10023CE34(a1, a2);
}

void sub_10023FC78(uint64_t a1, unsigned __int16 *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8 = a1;
  if (!a2)
  {
    if (sub_10000C240() && (sub_10000AF54("newConnectionWritePolicyCb: connection has gone away"), v10 = sub_10000C050(0x2Cu), os_log_type_enabled(v10, OS_LOG_TYPE_ERROR)))
    {
      sub_100814348();
      if (v8)
      {
        return;
      }
    }

    else if (v8)
    {
      return;
    }

    sub_1000D660C();
    return;
  }

  if (a1)
  {
    a2[69] = -1;

    sub_10023FBD0(a2, a1, a3, a4, a5, a6, a7, a8);
  }

  else
  {
    v11 = *(a2 + 54);
    if (v11 != 3 && v11 != 6)
    {
      sub_1000D660C();
      v11 = *(a2 + 54);
    }

    if (v11 != 6)
    {
      if (v11 == 3)
      {

        sub_10023CE34(a2, 0);
      }

      else if (sub_10000C240())
      {
        sub_10000AF54("Unexpected writeLinkPolicy callback, handle: %d", *a2);
        v13 = sub_10000C050(0x2Cu);
        if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
        {
          sub_1000E09C0();
        }
      }
    }
  }
}

uint64_t sub_10023FDC8(__int128 *a1, uint64_t *a2, _WORD *a3)
{
  v4 = 0;
  v12 = 0;
  v13 = 0;
  v5 = *a2;
  v15[0] = 0;
  v15[1] = v5;
  v14 = *a1;
  v6 = 0xF00000000;
  do
  {
    v7 = *(v15 + v4);
    *(v15 + v4) = *(v15 + HIDWORD(v6));
    *(v15 + HIDWORD(v6)) = v7;
    ++v4;
    v6 -= 0x100000000;
  }

  while (v4 != 8);
  v8 = 0;
  v9 = 0xF00000000;
  do
  {
    v10 = *(&v15[-1] + v8);
    *(&v15[-1] + v8) = *(&v15[-1] + HIDWORD(v9));
    *(&v15[-1] + HIDWORD(v9)) = v10;
    ++v8;
    v9 -= 0x100000000;
  }

  while (v8 != 8);
  result = sub_1000456EC(a1, 0x10uLL, v15, 0x10u, &v12, 0x10u);
  if (!result)
  {
    *a3 = bswap32(HIWORD(v13)) >> 16;
  }

  return result;
}

uint64_t sub_10023FEC4(__int128 *a1, int8x16_t *a2, int8x16_t *a3, int8x16_t *a4, int8x16_t *a5, int a6, void *a7)
{
  v9 = 0;
  v36 = 0uLL;
  v35 = 0uLL;
  v34 = 0uLL;
  if (!a6)
  {
    a4 = a5;
  }

  v35 = veorq_s8(*a4, *a2);
  key = *a1;
  v11 = 0xF00000000;
  do
  {
    v12 = *(&key + v9);
    *(&key + v9) = *(&key + HIDWORD(v11));
    *(&key + HIDWORD(v11)) = v12;
    ++v9;
    v11 -= 0x100000000;
  }

  while (v9 != 8);
  v13 = 0;
  v14 = 0xF00000000;
  do
  {
    v15 = v35.i8[v13];
    v35.i8[v13] = v35.i8[HIDWORD(v14)];
    v35.i8[HIDWORD(v14)] = v15;
    ++v13;
    v14 -= 0x100000000;
  }

  while (v13 != 8);
  v16 = sub_1000456EC(&key, 0x10uLL, &v35, 0x10u, &v36, 0x10u);
  if (v16)
  {
    v17 = v16;
    if (sub_10000C240())
    {
      sub_10000AF54("Failed to run AES 128 encryption %!.", v17);
      v18 = sub_10000C050(0x43u);
      if (os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
      {
        sub_1000E09C0();
      }
    }
  }

  else
  {
    v19 = 0;
    v20 = 0xF00000000;
    do
    {
      v21 = v36.i8[v19];
      v36.i8[v19] = v36.i8[HIDWORD(v20)];
      v36.i8[HIDWORD(v20)] = v21;
      ++v19;
      v20 -= 0x100000000;
    }

    while (v19 != 8);
    v22 = 0;
    v34 = veorq_s8(*a3, v36);
    v23 = 0xF00000000;
    do
    {
      v24 = v34.i8[v22];
      v34.i8[v22] = v34.i8[HIDWORD(v23)];
      v34.i8[HIDWORD(v23)] = v24;
      ++v22;
      v23 -= 0x100000000;
    }

    while (v22 != 8);
    v25 = sub_1000456EC(&key, 0x10uLL, &v34, 0x10u, a7, 0x10u);
    if (v25)
    {
      v17 = v25;
      if (sub_10000C240())
      {
        sub_10000AF54("Failed to run AES 128 encryption %!.", v17);
        v26 = sub_10000C050(0x43u);
        if (os_log_type_enabled(v26, OS_LOG_TYPE_ERROR))
        {
          sub_1000E09C0();
        }
      }
    }

    else
    {
      v27 = 0;
      v28 = 0xF00000000;
      do
      {
        v29 = *(a7 + v27);
        *(a7 + v27) = *(a7 + HIDWORD(v28));
        *(a7 + HIDWORD(v28)) = v29;
        ++v27;
        v28 -= 0x100000000;
      }

      while (v27 != 8);
      v30 = 0;
      v31 = 0xF00000000;
      do
      {
        v32 = *(&key + v30);
        *(&key + v30) = *(&key + HIDWORD(v31));
        *(&key + HIDWORD(v31)) = v32;
        ++v30;
        v31 -= 0x100000000;
      }

      while (v30 != 8);
      return 0;
    }
  }

  return v17;
}

uint64_t sub_100240170(__int128 *a1, uint64_t *a2, void *a3, void *a4)
{
  v7 = *a2;
  v22[0] = *a3;
  v22[1] = v7;
  key = *a1;
  if (sub_10000C240())
  {
    sub_10000AF54("Running S1 on key=%@, r1=%@, r2=%@, r'=%@", &key, 16, a2, 16, a3, 16, v22, 16);
    v8 = sub_10000C050(0x43u);
    if (os_log_type_enabled(v8, OS_LOG_TYPE_INFO))
    {
      *buf = 136446210;
      v20 = sub_10000C0FC();
      _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_INFO, " %{public}s", buf, 0xCu);
    }
  }

  v9 = 0;
  v10 = 0xF00000000;
  do
  {
    v11 = *(&v22[-1] + v9);
    *(&v22[-1] + v9) = *(&v22[-1] + HIDWORD(v10));
    *(&v22[-1] + HIDWORD(v10)) = v11;
    ++v9;
    v10 -= 0x100000000;
  }

  while (v9 != 8);
  v12 = 0;
  v13 = 0xF00000000;
  do
  {
    v14 = *(v22 + v12);
    *(v22 + v12) = *(v22 + HIDWORD(v13));
    *(v22 + HIDWORD(v13)) = v14;
    ++v12;
    v13 -= 0x100000000;
  }

  while (v12 != 8);
  result = sub_1000456EC(&key, 0x10uLL, v22, 0x10u, a4, 0x10u);
  if (!result)
  {
    v16 = 0;
    v17 = 0xF00000000;
    do
    {
      v18 = *(a4 + v16);
      *(a4 + v16) = *(a4 + HIDWORD(v17));
      *(a4 + HIDWORD(v17)) = v18;
      ++v16;
      v17 -= 0x100000000;
    }

    while (v16 != 8);
  }

  return result;
}

uint64_t sub_100240328(__int128 *a1, __int16 a2, __int16 a3, void *a4)
{
  v5 = 0;
  v17 = 0;
  v16 = 0;
  v18 = HIBYTE(a3);
  v19 = a3;
  v20 = HIBYTE(a2);
  v21 = a2;
  v15 = *a1;
  v6 = 0xF00000000;
  do
  {
    v7 = *(&v15 + v5);
    *(&v15 + v5) = *(&v15 + HIDWORD(v6));
    *(&v15 + HIDWORD(v6)) = v7;
    ++v5;
    v6 -= 0x100000000;
  }

  while (v5 != 8);
  v8 = 0;
  v9 = 0xF00000000;
  do
  {
    v10 = *(&v16 + v8);
    *(&v16 + v8) = *(&v16 + HIDWORD(v9));
    *(&v16 + HIDWORD(v9)) = v10;
    ++v8;
    v9 -= 0x100000000;
  }

  while (v8 != 8);
  result = sub_1000456EC(a1, 0x10uLL, &v16, 0x10u, a4, 0x10u);
  if (!result)
  {
    v12 = 0;
    v13 = 0xF00000000;
    do
    {
      v14 = *(a4 + v12);
      *(a4 + v12) = *(a4 + HIDWORD(v13));
      *(a4 + HIDWORD(v13)) = v14;
      ++v12;
      v13 -= 0x100000000;
    }

    while (v12 != 8);
  }

  return result;
}

uint64_t sub_100240458(_OWORD *a1, _OWORD *a2, __int128 *a3, char a4, void *a5)
{
  v6 = 0;
  v7 = a1[1];
  v22[0] = *a1;
  v22[1] = v7;
  v8 = a2[1];
  v23[0] = *a2;
  v23[1] = v8;
  v24 = a4;
  v9 = 0x1F00000000;
  do
  {
    v10 = *(v22 + v6);
    *(v22 + v6) = *(v22 + HIDWORD(v9));
    *(v22 + HIDWORD(v9)) = v10;
    ++v6;
    v9 -= 0x100000000;
  }

  while (v6 != 16);
  v11 = 0x1F00000000;
  for (i = 32; i != 48; ++i)
  {
    v13 = *(v22 + i);
    *(v22 + i) = *(v23 + HIDWORD(v11));
    *(v23 + HIDWORD(v11)) = v13;
    v11 -= 0x100000000;
  }

  v14 = 0;
  v21 = *a3;
  v15 = 0xF00000000;
  do
  {
    v16 = *(&v22[-1] + v14);
    *(&v22[-1] + v14) = *(&v22[-1] + HIDWORD(v15));
    *(&v22[-1] + HIDWORD(v15)) = v16;
    ++v14;
    v15 -= 0x100000000;
  }

  while (v14 != 8);
  result = sub_1001BAFD4(&v21, 0x10uLL, v22, 0x41u, a5, 0x10u);
  if (!result)
  {
    v18 = 0;
    v19 = 0xF00000000;
    do
    {
      v20 = *(a5 + v18);
      *(a5 + v18) = *(a5 + HIDWORD(v19));
      *(a5 + HIDWORD(v19)) = v20;
      ++v18;
      v19 -= 0x100000000;
    }

    while (v18 != 8);
  }

  return result;
}

uint64_t sub_1002405B8(_OWORD *a1, _OWORD *a2, _OWORD *a3, uint64_t a4, uint64_t a5, uint64_t a6, char *a7, int a8)
{
  if (a8 != 32)
  {
    return 101;
  }

  v11 = a4;
  v14 = 0;
  v27 = 0;
  v28[0] = 0;
  *(v28 + 5) = 0;
  v15 = a1[1];
  v26[0] = *a1;
  v26[1] = v15;
  v16 = 0x1F00000000;
  do
  {
    v17 = *(v26 + v14);
    *(v26 + v14) = *(v26 + HIDWORD(v16));
    *(v26 + HIDWORD(v16)) = v17;
    ++v14;
    v16 -= 0x100000000;
  }

  while (v14 != 16);
  v29[0] = 0;
  v29[1] = 0;
  if (sub_1001BAFD4(&unk_1008A43F0, 0x10uLL, v26, 0x20u, v29, 0x10u))
  {
    return 4829;
  }

  sub_10024079C(v26, 0, v11, a2, a3, a5, a6);
  if (!sub_1001BAFD4(v29, 0x10uLL, v26, 0x35u, a7, 0x10u))
  {
    v19 = 0;
    v20 = 0xF00000000;
    do
    {
      v21 = a7[v19];
      a7[v19] = a7[HIDWORD(v20)];
      a7[HIDWORD(v20)] = v21;
      ++v19;
      v20 -= 0x100000000;
    }

    while (v19 != 8);
  }

  sub_10024079C(v26, 1, v11, a2, a3, a5, a6);
  v22 = a7 + 16;
  result = sub_1001BAFD4(v29, 0x10uLL, v26, 0x35u, v22, 0x10u);
  if (!result)
  {
    v23 = 0;
    v24 = 0xF00000000;
    do
    {
      v25 = v22[v23];
      v22[v23] = v22[HIDWORD(v24)];
      v22[HIDWORD(v24)] = v25;
      ++v23;
      v24 -= 0x100000000;
    }

    while (v23 != 8);
    return 0;
  }

  return result;
}

uint64_t sub_10024079C(uint64_t result, char a2, int a3, _OWORD *a4, _OWORD *a5, uint64_t a6, uint64_t a7)
{
  v7 = 0;
  *result = a2;
  *(result + 1) = HIBYTE(a3);
  *(result + 2) = BYTE2(a3);
  *(result + 3) = BYTE1(a3);
  *(result + 4) = a3;
  v8 = result + 5;
  *(result + 5) = *a4;
  v9 = result + 21;
  *(result + 21) = *a5;
  *(result + 37) = *a6;
  v10 = *(a6 + 1);
  *(result + 42) = *(a6 + 5);
  *(result + 38) = v10;
  *(result + 44) = *a7;
  v11 = *(a7 + 1);
  *(result + 49) = *(a7 + 5);
  *(result + 45) = v11;
  *(result + 51) = 1;
  v12 = 0xF00000000;
  do
  {
    v13 = *(v8 + v7);
    *(v8 + v7) = *(v8 + HIDWORD(v12));
    *(v8 + HIDWORD(v12)) = v13;
    ++v7;
    v12 -= 0x100000000;
  }

  while (v7 != 8);
  v14 = 0;
  v15 = 0xF00000000;
  do
  {
    v16 = *(v9 + v14);
    *(v9 + v14) = *(v9 + HIDWORD(v15));
    *(v9 + HIDWORD(v15)) = v16;
    ++v14;
    v15 -= 0x100000000;
  }

  while (v14 != 8);
  return result;
}

uint64_t sub_100240870(__int128 *a1, __int128 *a2, __int128 *a3, __int128 *a4, __int16 *a5, char *a6, char *a7, void *a8)
{
  v9 = 0;
  v10 = *a3;
  v28 = *a2;
  v29 = v10;
  v11 = *a4;
  v31 = *a5;
  v30 = v11;
  v32 = *(a5 + 2);
  v33 = *a6;
  v35 = *(a6 + 5);
  v34 = *(a6 + 1);
  v36 = *a7;
  v37 = *(a7 + 1);
  v12 = 0xF00000000;
  v38 = *(a7 + 5);
  do
  {
    v13 = *(&v28 + v9);
    *(&v28 + v9) = *(&v28 + HIDWORD(v12));
    *(&v28 + HIDWORD(v12)) = v13;
    ++v9;
    v12 -= 0x100000000;
  }

  while (v9 != 8);
  v14 = 0xF00000000;
  for (i = 16; i != 24; ++i)
  {
    v16 = *(&v28 + i);
    *(&v28 + i) = *(&v29 + HIDWORD(v14));
    *(&v29 + HIDWORD(v14)) = v16;
    v14 -= 0x100000000;
  }

  v17 = 0xF00000000;
  for (j = 32; j != 40; ++j)
  {
    v19 = *(&v28 + j);
    *(&v28 + j) = *(&v30 + HIDWORD(v17));
    *(&v30 + HIDWORD(v17)) = v19;
    v17 -= 0x100000000;
  }

  v20 = 0;
  v27 = 0uLL;
  v27 = *a1;
  v21 = 0xF00000000;
  do
  {
    v22 = *(&v27 + v20);
    *(&v27 + v20) = *(&v27 + HIDWORD(v21));
    *(&v27 + HIDWORD(v21)) = v22;
    ++v20;
    v21 -= 0x100000000;
  }

  while (v20 != 8);
  result = sub_1001BAFD4(&v27, 0x10uLL, &v28, 0x41u, a8, 0x10u);
  if (!result)
  {
    v24 = 0;
    v25 = 0xF00000000;
    do
    {
      v26 = *(a8 + v24);
      *(a8 + v24) = *(a8 + HIDWORD(v25));
      *(a8 + HIDWORD(v25)) = v26;
      ++v24;
      v25 -= 0x100000000;
    }

    while (v24 != 8);
  }

  return result;
}

uint8x8_t sub_100240A4C(_OWORD *a1, _OWORD *a2, __int128 *a3, __int128 *a4, _DWORD *a5)
{
  v6 = 0;
  v7 = a1[1];
  v25[0] = *a1;
  v25[1] = v7;
  v8 = a2[1];
  v26[0] = *a2;
  v26[1] = v8;
  v27 = *a4;
  v9 = 0x1F00000000;
  do
  {
    v10 = *(v25 + v6);
    *(v25 + v6) = *(v25 + HIDWORD(v9));
    *(v25 + HIDWORD(v9)) = v10;
    ++v6;
    v9 -= 0x100000000;
  }

  while (v6 != 16);
  v11 = 0x1F00000000;
  for (i = 32; i != 48; ++i)
  {
    v13 = *(v25 + i);
    *(v25 + i) = *(v26 + HIDWORD(v11));
    *(v26 + HIDWORD(v11)) = v13;
    v11 -= 0x100000000;
  }

  v14 = 0xF00000000;
  for (j = 64; j != 72; ++j)
  {
    v16 = *(v25 + j);
    *(v25 + j) = *(&v27 + HIDWORD(v14));
    *(&v27 + HIDWORD(v14)) = v16;
    v14 -= 0x100000000;
  }

  v17 = 0;
  v22 = *a3;
  v18 = 0xF00000000;
  do
  {
    v19 = *(&v22 + v17);
    *(&v22 + v17) = *(&v22 + HIDWORD(v18));
    *(&v22 + HIDWORD(v18)) = v19;
    ++v17;
    v18 -= 0x100000000;
  }

  while (v17 != 8);
  v23 = 0;
  v24 = 0;
  if (!sub_1001BAFD4(&v22, 0x10uLL, v25, 0x50u, &v23, 0x10u))
  {
    result.i32[0] = HIDWORD(v24);
    v21 = vrev64_s16(*&vmovl_u8(result));
    result = vuzp1_s8(v21, v21);
    *a5 = result.i32[0];
  }

  return result;
}

uint64_t sub_100240BD0(__int128 *a1, unsigned int a2, void *a3)
{
  v4 = 0;
  v14 = *a1;
  v5 = 0xF00000000;
  do
  {
    v6 = *(&v14 + v4);
    *(&v14 + v4) = *(&v14 + HIDWORD(v5));
    *(&v14 + HIDWORD(v5)) = v6;
    ++v4;
    v5 -= 0x100000000;
  }

  while (v4 != 8);
  v13 = bswap32(a2);
  v7 = sub_1001BAFD4(&v14, 0x10uLL, &v13, 4u, a3, 0x10u);
  if (v7)
  {
    if (sub_10000C240())
    {
      sub_10000AF54("Failed h6() with error %!", v7);
      v8 = sub_10000C050(0x43u);
      if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
      {
        sub_1000E09C0();
      }
    }
  }

  v9 = 0;
  v10 = 0xF00000000;
  do
  {
    v11 = *(a3 + v9);
    *(a3 + v9) = *(a3 + HIDWORD(v10));
    *(a3 + HIDWORD(v10)) = v11;
    ++v9;
    v10 -= 0x100000000;
  }

  while (v9 != 8);
  return v7;
}

uint64_t sub_100240D0C(__int128 *a1, __int128 *a2, void *a3)
{
  v4 = 0;
  v17 = *a1;
  v5 = 0xF00000000;
  do
  {
    v6 = *(&v17 + v4);
    *(&v17 + v4) = *(&v17 + HIDWORD(v5));
    *(&v17 + HIDWORD(v5)) = v6;
    ++v4;
    v5 -= 0x100000000;
  }

  while (v4 != 8);
  v7 = 0;
  v16 = *a2;
  v8 = 0xF00000000;
  do
  {
    v9 = *(&v16 + v7);
    *(&v16 + v7) = *(&v16 + HIDWORD(v8));
    *(&v16 + HIDWORD(v8)) = v9;
    ++v7;
    v8 -= 0x100000000;
  }

  while (v7 != 8);
  v10 = sub_1001BAFD4(&v16, 0x10uLL, &v17, 0x10u, a3, 0x10u);
  if (v10)
  {
    if (sub_10000C240())
    {
      sub_10000AF54("Failed h7() with error %!", v10);
      v11 = sub_10000C050(0x43u);
      if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
      {
        sub_1000E09C0();
      }
    }
  }

  v12 = 0;
  v13 = 0xF00000000;
  do
  {
    v14 = *(a3 + v12);
    *(a3 + v12) = *(a3 + HIDWORD(v13));
    *(a3 + HIDWORD(v13)) = v14;
    ++v12;
    v13 -= 0x100000000;
  }

  while (v12 != 8);
  return v10;
}

uint64_t sub_100240E7C(_OWORD *a1, _OWORD *a2)
{
  v4 = sub_1001BB4B4(a1, a2);
  if (v4)
  {
    v5 = v4;
    if (sub_10000C240())
    {
      sub_10000AF54("Failed to generate public/private key %!", v5);
      v6 = sub_10000C050(0x43u);
      if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
      {
        sub_10080FEE0();
      }
    }
  }

  else
  {
    v7 = 0;
    v8 = 0x1F00000000;
    do
    {
      v9 = *(a2 + v7);
      *(a2 + v7) = *(a2 + HIDWORD(v8));
      *(a2 + HIDWORD(v8)) = v9;
      ++v7;
      v8 -= 0x100000000;
    }

    while (v7 != 16);
    v10 = 0;
    v11 = a2 + 2;
    v12 = 0x1F00000000;
    do
    {
      v13 = *(v11 + v10);
      *(v11 + v10) = *(v11 + HIDWORD(v12));
      *(v11 + HIDWORD(v12)) = v13;
      ++v10;
      v12 -= 0x100000000;
    }

    while (v10 != 16);
    v14 = 0;
    v15 = a2 + 4;
    v16 = 0x1F00000000;
    do
    {
      v17 = *(v15 + v14);
      *(v15 + v14) = *(v15 + HIDWORD(v16));
      *(v15 + HIDWORD(v16)) = v17;
      ++v14;
      v16 -= 0x100000000;
    }

    while (v14 != 16);
    v18 = 0;
    v19 = 0x1F00000000;
    do
    {
      v20 = *(a1 + v18);
      *(a1 + v18) = *(a1 + HIDWORD(v19));
      *(a1 + HIDWORD(v19)) = v20;
      ++v18;
      v19 -= 0x100000000;
    }

    while (v18 != 16);
    v21 = 0;
    v22 = a1 + 2;
    v23 = 0x1F00000000;
    do
    {
      v24 = *(v22 + v21);
      *(v22 + v21) = *(v22 + HIDWORD(v23));
      *(v22 + HIDWORD(v23)) = v24;
      ++v21;
      v23 -= 0x100000000;
    }

    while (v21 != 16);
    return 0;
  }

  return v5;
}

uint64_t sub_100241004(const void *a1, int a2, const void *a3, unsigned int a4, void *a5)
{
  v10 = a2;
  __chkstk_darwin(a1);
  v12 = &v40 - v11;
  bzero(&v40 - v11, v10);
  __chkstk_darwin(v13);
  v15 = &v40 - v14;
  bzero(&v40 - v14, a4);
  memmove(v12, a1, v10);
  v16 = 0;
  v17 = 0x1F00000000;
  do
  {
    v18 = v12[v16];
    v12[v16] = v12[HIDWORD(v17)];
    v12[HIDWORD(v17)] = v18;
    ++v16;
    v17 -= 0x100000000;
  }

  while (v16 != 16);
  v19 = v12 + 32;
  v20 = 0x1F00000000;
  for (i = 32; i != 48; ++i)
  {
    v22 = v12[i];
    v12[i] = v19[HIDWORD(v20)];
    v19[HIDWORD(v20)] = v22;
    v20 -= 0x100000000;
  }

  memmove(v15, a3, a4);
  v23 = 0;
  v24 = 0x1F00000000;
  do
  {
    v25 = v15[v23];
    v15[v23] = v15[HIDWORD(v24)];
    v15[HIDWORD(v24)] = v25;
    ++v23;
    v24 -= 0x100000000;
  }

  while (v23 != 16);
  v26 = v15 + 32;
  v27 = 0x1F00000000;
  for (j = 32; j != 48; ++j)
  {
    v29 = v15[j];
    v15[j] = v26[HIDWORD(v27)];
    v26[HIDWORD(v27)] = v29;
    v27 -= 0x100000000;
  }

  v30 = v15 + 64;
  v31 = 0x1F00000000;
  for (k = 64; k != 80; ++k)
  {
    v33 = v15[k];
    v15[k] = v30[HIDWORD(v31)];
    v30[HIDWORD(v31)] = v33;
    v31 -= 0x100000000;
  }

  v34 = sub_1001BB2BC(v12, a2, v15, a4, a5);
  if (v34)
  {
    v35 = v34;
    sub_100304AF8("Error: DHKey generation failed %!", v34);
  }

  else
  {
    v36 = 0;
    v37 = 0x1F00000000;
    do
    {
      v38 = *(a5 + v36);
      *(a5 + v36) = *(a5 + HIDWORD(v37));
      *(a5 + HIDWORD(v37)) = v38;
      ++v36;
      v37 -= 0x100000000;
    }

    while (v36 != 16);
    return 0;
  }

  return v35;
}

uint64_t sub_100241284()
{
  v1 = 0;
  if (!sub_1000BBFD4(&v1))
  {
    return 0;
  }

  while (1)
  {
    result = v1;
    if (!*(v1 + 148) && !*(v1 + 54))
    {
      break;
    }

    if (!sub_1000BBFD4(&v1))
    {
      return 0;
    }
  }

  return result;
}

BOOL sub_1002412D4()
{
  v3 = 0;
  result = sub_1000BBFD4(&v3);
  if (result)
  {
    do
    {
      v1 = *(v3 + 54);
      if (v1 != 7 && v1 != 0)
      {
        return 1;
      }
    }

    while (sub_1000BBFD4(&v3));
    return 0;
  }

  return result;
}

uint64_t sub_10024132C(uint64_t a1)
{
  if (!xmmword_100BCE2E0)
  {
    return 0;
  }

  result = sub_1000E1FE8(a1);
  if (result)
  {
    return *(result + 144) == 0;
  }

  return result;
}

uint64_t sub_100241370(uint64_t a1, _BYTE *a2)
{
  if (!xmmword_100BCE2E0)
  {
    return 103;
  }

  v3 = sub_1000E1FE8(a1);
  if (!v3)
  {
    return 1301;
  }

  v4 = v3;
  result = 0;
  *a2 = *(v4 + 152) & 0x7F;
  return result;
}

uint64_t sub_1002413D0(uint64_t a1)
{
  if (!xmmword_100BCE2E0)
  {
    return 0;
  }

  v6 = 0;
  if (sub_100242340(a1, &v6))
  {
    v2 = *(v6 + 8);
  }

  else
  {
    v2 = 0;
  }

  v4 = sub_1000E1FE8(a1);
  if (v4)
  {
    v5 = *(v4 + 56);
  }

  else
  {
    v5 = 0;
  }

  if (v2)
  {
    return v2;
  }

  else
  {
    return v5;
  }
}

uint64_t sub_100241454(uint64_t a1, int a2)
{
  if (!a1)
  {
    return 101;
  }

  v5 = 0;
  result = sub_10023DB58(a1, &v5);
  if (!result)
  {
    if ((a2 & 0x1FFC) == 0 && sub_10000C240())
    {
      sub_10000AF54("SetRemoteDeviceClass is zero !!!!!!");
      v4 = sub_10000C050(0x2Cu);
      if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
      {
        sub_10080F7A0();
      }
    }

    result = 0;
    *(v5 + 56) = a2;
  }

  return result;
}

void sub_1002414F0(uint64_t a1)
{
  if ((sub_1000D60EC(*(a1 + 54)) & 1) == 0)
  {
    sub_1000D660C();
  }

  v2 = *(a1 + 72);
  if (*(a1 + 148))
  {
    if (sub_10002260C(v2))
    {
      sub_1000D660C();
    }
  }

  else
  {
    sub_10002242C(v2);
    *(a1 + 72) = 0;
  }

  if (*(a1 + 148) < 255)
  {
    atomic_fetch_add_explicit((a1 + 148), 1u, memory_order_relaxed);
  }

  else
  {
    if (sub_10000C240())
    {
      sub_10000AF54("Reached max connection retain count. Not incrementing ref count");
      v3 = sub_10000C050(0x2Cu);
      if (os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
      {
        sub_10080F7A0();
      }
    }

    if (*(a1 + 148) <= 254)
    {
      sub_1000D660C();
    }
  }
}

uint64_t sub_1002415B0()
{
  v3 = 0;
  v4 = 0;
  if (sub_1000BBFD4(&v4))
  {
    v0 = 0;
    v1 = 0;
    do
    {
      if (!*(v4 + 54))
      {
        if (*(v4 + 144))
        {
          ++v0;
        }

        else
        {
          ++v1;
        }
      }
    }

    while (sub_1000BBFD4(&v4));
  }

  else
  {
    v1 = 0;
    v0 = 0;
  }

  while (sub_1000C08D0(&v3))
  {
    if (*(v3 + 124) != 7)
    {
      if (*(v3 + 70))
      {
        ++v0;
      }

      else
      {
        ++v1;
      }
    }
  }

  if (v1)
  {
    return v0 + 1;
  }

  else
  {
    return v0;
  }
}

double sub_1002416BC()
{
  off_100B5F708 = 0;
  result = 0.0;
  xmmword_100B5F6E8 = 0u;
  *&qword_100B5F6F8 = 0u;
  xmmword_100B5F6C8 = 0u;
  *&qword_100B5F6D8 = 0u;
  xmmword_100B5F6A8 = 0u;
  *&qword_100B5F6B8 = 0u;
  return result;
}

uint64_t sub_1002416DC(uint64_t a1, void **a2, uint64_t a3)
{
  v6 = *(qword_100BCDFC8 + 7);
  if (a1)
  {
    if (*(qword_100BCDFC8 + 7))
    {
      goto LABEL_3;
    }

LABEL_14:
    sub_1000D660C();
    if (a2)
    {
      goto LABEL_4;
    }

    goto LABEL_15;
  }

  sub_1000D660C();
  if (!v6)
  {
    goto LABEL_14;
  }

LABEL_3:
  if (a2)
  {
    goto LABEL_4;
  }

LABEL_15:
  sub_1000D660C();
LABEL_4:
  v7 = *a2;
  if (*a2)
  {
    if (!v6)
    {
      return 1317;
    }

    v8 = 0;
    LODWORD(v9) = 0;
    do
    {
      if (v7[v8] == a1)
      {
        v9 = 1316;
      }

      else
      {
        v9 = v9;
      }

      v8 += 2;
    }

    while (2 * v6 != v8);
    if (v9)
    {
      return v9;
    }
  }

  else
  {
    v7 = sub_1001BBBD8(16 * v6, 0x80040803F642BuLL);
    *a2 = v7;
    if (!v7)
    {
      return 106;
    }
  }

  if (!v6)
  {
    return 1317;
  }

  v10 = 0;
  while (*v7)
  {
    ++v10;
    v7 += 2;
    if (v10 >= v6)
    {
      return 1317;
    }
  }

  v9 = 0;
  *v7 = a1;
  v7[1] = a3;
  return v9;
}

uint64_t sub_1002417D8(uint64_t a1, char **a2)
{
  v4 = *(qword_100BCDFC8 + 7);
  v5 = *a2;
  if (a1)
  {
    if (*(qword_100BCDFC8 + 7))
    {
      goto LABEL_3;
    }

LABEL_15:
    sub_1000D660C();
    if (v5)
    {
      sub_10000C1E8(v5);
      *a2 = 0;
    }

    return 1318;
  }

  sub_1000D660C();
  if (!v4)
  {
    goto LABEL_15;
  }

LABEL_3:
  if (!v5)
  {
    return 1318;
  }

  v6 = 0;
  v7 = 0;
  v8 = 0;
  do
  {
    v9 = &v5[v6];
    v10 = *&v5[v6];
    if (v10 == a1)
    {
      ++v8;
      *v9 = 0;
      *(v9 + 1) = 0;
    }

    else if (v10)
    {
      ++v7;
    }

    v6 += 16;
  }

  while (16 * v4 != v6);
  if (!v7)
  {
    sub_10000C1E8(v5);
    *a2 = 0;
    if (v8)
    {
      return 0;
    }

    return 1318;
  }

  if (!v8)
  {
    return 1318;
  }

  return 0;
}

uint64_t sub_100241908(uint64_t result, uint64_t a2)
{
  v2 = xmmword_100B5F6A8;
  if (xmmword_100B5F6A8)
  {
    v3 = qword_100BCDFC8;
    if (*(qword_100BCDFC8 + 7))
    {
      v5 = result;
      v6 = 0;
      v7 = 0;
      do
      {
        v8 = *(v2 + v6);
        if (v8)
        {
          result = v8(v5, a2, *(v2 + v6 + 8));
          v2 = xmmword_100B5F6A8;
          v3 = qword_100BCDFC8;
        }

        ++v7;
        v6 += 16;
      }

      while (v7 < *(v3 + 7));
    }
  }

  return result;
}

uint64_t sub_10024199C(uint64_t result, uint64_t a2)
{
  v2 = *(&xmmword_100B5F6A8 + 1);
  if (*(&xmmword_100B5F6A8 + 1))
  {
    v3 = qword_100BCDFC8;
    if (*(qword_100BCDFC8 + 7))
    {
      v5 = result;
      v6 = 0;
      v7 = 0;
      do
      {
        v8 = *(v2 + v6);
        if (v8)
        {
          result = v8(v5, a2, *(v2 + v6 + 8));
          v2 = *(&xmmword_100B5F6A8 + 1);
          v3 = qword_100BCDFC8;
        }

        ++v7;
        v6 += 16;
      }

      while (v7 < *(v3 + 7));
    }
  }

  return result;
}

void sub_100241A30(uint64_t a1)
{
  if (sub_10000C240())
  {
    sub_10000AF54("%! (%d)", 1305, a1);
    v2 = sub_10000C050(0x2Cu);
    if (os_log_type_enabled(v2, OS_LOG_TYPE_ERROR))
    {
      sub_10080FEE0();
    }
  }

  v3 = qword_100B5F6C0;
  if (qword_100B5F6C0)
  {
    v4 = qword_100BCDFC8;
    if (*(qword_100BCDFC8 + 7))
    {
      v5 = 0;
      v6 = 0;
      do
      {
        v7 = *(v3 + v5);
        if (v7)
        {
          v7(a1, *(v3 + v5 + 8));
          v3 = qword_100B5F6C0;
          v4 = qword_100BCDFC8;
        }

        ++v6;
        v5 += 16;
      }

      while (v6 < *(v4 + 7));
    }
  }
}

uint64_t sub_100241B0C(uint64_t result, uint64_t a2)
{
  v2 = xmmword_100B5F6C8;
  if (xmmword_100B5F6C8)
  {
    v3 = qword_100BCDFC8;
    if (*(qword_100BCDFC8 + 7))
    {
      v5 = result;
      v6 = 0;
      v7 = 0;
      do
      {
        v8 = *(v2 + v6);
        if (v8)
        {
          result = v8(v5, a2, *(v2 + v6 + 8));
          v2 = xmmword_100B5F6C8;
          v3 = qword_100BCDFC8;
        }

        ++v7;
        v6 += 16;
      }

      while (v7 < *(v3 + 7));
    }
  }

  return result;
}

void sub_100241BA0(uint64_t a1, unsigned __int16 *a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  if (sub_10000C240())
  {
    v10 = sub_1000B8B5C(a2) ? *a2 : 0xFFFFLL;
    v11 = sub_100304BE8(a3);
    sub_10000AF54("HCI event: ModeChange, %!, handle %d, newMode %d (%s), interval %d, wakeUpEvent %d", a1, v10, a3, v11, a4, a5);
    v12 = sub_10000C050(0x2Cu);
    if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 136446210;
      v20 = sub_10000C0FC();
      _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_DEFAULT, " %{public}s", buf, 0xCu);
    }
  }

  if (sub_1000B8B5C(a2))
  {
    if (a1)
    {
      sub_10023C0A8(a2, a2[76] & 0x7F);
    }

    else
    {
      a2[68] = a4;
      if (*(a2 + 152) != a3)
      {
        sub_10023C0A8(a2, a3);
      }

      if (!a3)
      {
        sub_100248708();
      }
    }

    if (off_100B5F708)
    {
      off_100B5F708(a1, a2, a3, a4);
    }

    v14 = *(&xmmword_100B5F6E8 + 1);
    if (*(&xmmword_100B5F6E8 + 1))
    {
      v15 = qword_100BCDFC8;
      if (*(qword_100BCDFC8 + 7))
      {
        v16 = 0;
        v17 = 0;
        do
        {
          v18 = *(v14 + v16);
          if (v18)
          {
            v18(a1, a2 + 24, a3, a4, a5, *(v14 + v16 + 8));
            v14 = *(&xmmword_100B5F6E8 + 1);
            v15 = qword_100BCDFC8;
          }

          ++v17;
          v16 += 16;
        }

        while (v17 < *(v15 + 7));
      }
    }
  }

  else if (sub_10000C240())
  {
    sub_10000AF54("OI_HCIEventHandler_ModeChange Bad Handle: %x", a2);
    v13 = sub_10000C050(0x2Cu);
    if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
    {
      sub_1000E09C0();
    }
  }
}

void sub_100241DD4(uint64_t a1, uint64_t a2)
{
  if (sub_1000B8B5C(a1))
  {
    v4 = *(&xmmword_100B5F6C8 + 1);
    if (*(&xmmword_100B5F6C8 + 1))
    {
      v5 = qword_100BCDFC8;
      if (*(qword_100BCDFC8 + 7))
      {
        v6 = 0;
        v7 = 0;
        do
        {
          v8 = *(v4 + v6);
          if (v8)
          {
            v8(a1 + 48, a2, *(v4 + v6 + 8));
            v4 = *(&xmmword_100B5F6C8 + 1);
            v5 = qword_100BCDFC8;
          }

          ++v7;
          v6 += 16;
        }

        while (v7 < *(v5 + 7));
      }
    }
  }

  else if (sub_10000C240())
  {
    sub_10000AF54("OI_HCIEventHandler_MaxSlotsChange Bad Handle: %x", a1);
    v9 = sub_10000C050(0x2Cu);
    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      sub_1000E09C0();
    }
  }
}

void sub_100241EC0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a1)
  {
    if (sub_10000C240())
    {
      sub_10000AF54("ConnectionPacketTypeChanged ERROR: %!", a1);
      v6 = sub_10000C050(0x2Cu);
      if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
      {
        sub_1000E09C0();
      }
    }
  }

  if (sub_1000B8B5C(a2) || sub_1000C0E08(a2))
  {
    v7 = qword_100B5F6D8;
    if (qword_100B5F6D8)
    {
      v8 = qword_100BCDFC8;
      if (*(qword_100BCDFC8 + 7))
      {
        v9 = 0;
        v10 = 0;
        do
        {
          v11 = *(v7 + v9);
          if (v11)
          {
            v11(a1, a2, a3, *(v7 + v9 + 8));
            v7 = qword_100B5F6D8;
            v8 = qword_100BCDFC8;
          }

          ++v10;
          v9 += 16;
        }

        while (v10 < *(v8 + 7));
      }
    }
  }

  else if (sub_10000C240())
  {
    sub_10000AF54("ConnectionPacketTypeChanged, Unknown Handle: %d", a2);
    v12 = sub_10000C050(0x2Cu);
    if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
    {
      sub_1000E09C0();
    }
  }
}

uint64_t sub_100242014(uint64_t result, uint64_t a2)
{
  v2 = qword_100B5F6E0;
  if (qword_100B5F6E0)
  {
    v3 = qword_100BCDFC8;
    if (*(qword_100BCDFC8 + 7))
    {
      v5 = result;
      v6 = 0;
      v7 = 0;
      do
      {
        v8 = *(v2 + v6);
        if (v8)
        {
          result = v8(v5, a2, *(v2 + v6 + 8));
          v2 = qword_100B5F6E0;
          v3 = qword_100BCDFC8;
        }

        ++v7;
        v6 += 16;
      }

      while (v7 < *(v3 + 7));
    }
  }

  return result;
}

uint64_t sub_1002420A8(uint64_t result, uint64_t a2)
{
  v2 = xmmword_100B5F6E8;
  if (xmmword_100B5F6E8)
  {
    v3 = qword_100BCDFC8;
    if (*(qword_100BCDFC8 + 7))
    {
      v5 = result;
      v6 = 0;
      v7 = 0;
      do
      {
        v8 = *(v2 + v6);
        if (v8)
        {
          result = v8(v5, a2, *(v2 + v6 + 8));
          v2 = xmmword_100B5F6E8;
          v3 = qword_100BCDFC8;
        }

        ++v7;
        v6 += 16;
      }

      while (v7 < *(v3 + 7));
    }
  }

  return result;
}

uint64_t sub_10024213C(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  if (a2)
  {
    v6 = a2 + 48;
  }

  else
  {
    v6 = 0;
  }

  v7 = qword_100B5F6F8;
  if (qword_100B5F6F8)
  {
    v8 = qword_100BCDFC8;
    if (*(qword_100BCDFC8 + 7))
    {
      v13 = result;
      v14 = 0;
      v15 = 0;
      do
      {
        v16 = *(v7 + v14);
        if (v16)
        {
          result = v16(v13, v6, a3, a4, a5, a6, *(v7 + v14 + 8));
          v7 = qword_100B5F6F8;
          v8 = qword_100BCDFC8;
        }

        ++v15;
        v14 += 16;
      }

      while (v15 < *(v8 + 7));
    }
  }

  return result;
}

uint64_t sub_100242208(uint64_t result, uint64_t a2)
{
  v2 = qword_100B5F700;
  if (qword_100B5F700)
  {
    v3 = qword_100BCDFC8;
    if (*(qword_100BCDFC8 + 7))
    {
      v5 = result;
      v6 = 0;
      v7 = 0;
      do
      {
        v8 = *(v2 + v6);
        if (v8)
        {
          result = v8(v5, a2, *(v2 + v6 + 8));
          v2 = qword_100B5F700;
          v3 = qword_100BCDFC8;
        }

        ++v7;
        v6 += 16;
      }

      while (v7 < *(v3 + 7));
    }
  }

  return result;
}

void sub_10024229C()
{
  v0 = *qword_100BCDFC8;
  if (!*qword_100BCDFC8)
  {
    sub_1000D660C();
    v0 = *qword_100BCDFC8;
  }

  v1 = sub_1001BBBD8(16 * v0, 0x1000040B2B1FC38uLL);
  qword_100B5F710 = v1;
  if (!v1)
  {
    sub_1000D660C();
    v1 = qword_100B5F710;
  }

  dword_100B5F718 = 0;
  off_100B5F720 = 0;
  off_100B5F728 = 0;
  dword_100B5F748 = 0;
  v2 = 16 * *qword_100BCDFC8;

  bzero(v1, v2);
}

BOOL sub_100242340(uint64_t a1, uint64_t *a2)
{
  v2 = *qword_100BCDFC8;
  v3 = *qword_100BCDFC8 != 0;
  if (*qword_100BCDFC8)
  {
    v4 = 0;
    for (i = qword_100B5F710; *a1 != *i || *(a1 + 4) != *(i + 4); i += 16)
    {
      v3 = ++v4 < v2;
      if (v4 >= v2)
      {
        return v3;
      }
    }

    *a2 = i;
  }

  return v3;
}

uint64_t sub_1002423A8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(void, void), void *a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  if (!xmmword_100BCE2E0)
  {
    return 103;
  }

  if (dword_100B5F718)
  {
    if (dword_100B5F718 == 1)
    {
      return 1311;
    }

    else
    {
      return 1312;
    }
  }

  else
  {
    off_100B5F720 = a4;
    off_100B5F728 = a5;
    qword_100B5F730 = a6;
    dword_100B5F718 = 1;
    result = sub_1000D6178(0, a2, a3, a4, a5, a6, a7, a8, a1);
    if (result)
    {
      dword_100B5F718 = 0;
    }
  }

  return result;
}

uint64_t sub_100242444(uint64_t (*a1)(void, void), uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  if (!xmmword_100BCE2E0)
  {
    return 103;
  }

  if (!dword_100B5F718)
  {
    return 1313;
  }

  if (dword_100B5F718 != 1)
  {
    return 1312;
  }

  off_100B5F738 = a1;
  qword_100B5F740 = a2;
  result = sub_100018960(1, sub_1002424C8, a3, a4, a5, a6, a7, a8, v9);
  dword_100B5F718 = 0;
  return result;
}

uint64_t sub_1002424C8(uint64_t result)
{
  if (off_100B5F738)
  {
    return off_100B5F738(result, qword_100B5F740);
  }

  return result;
}

uint64_t sub_1002424E4(uint64_t result)
{
  if (xmmword_100BCE2E0)
  {
    if (result != 621)
    {
      goto LABEL_7;
    }

    if (sub_10000C240())
    {
      sub_10000AF54("Inquiry not finished in time... Cancelling.");
      v7 = sub_10000C050(0x3Fu);
      if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
      {
        sub_100810070(v7);
      }
    }

    result = sub_100018960(1, sub_1002424E4, v1, v2, v3, v4, v5, v6, v8);
    if (result)
    {
LABEL_7:
      if (off_100B5F728)
      {
        if (dword_100B5F718 != 2)
        {
          if (dword_100B5F718 != 1)
          {
            return result;
          }

          dword_100B5F718 = 0;
        }

        return (off_100B5F728)();
      }
    }
  }

  return result;
}

uint64_t sub_1002425A8(uint64_t result)
{
  if (xmmword_100BCE2E0)
  {
    if ((dword_100B5F718 - 1) <= 1 && off_100B5F720 != 0)
    {
      v2 = result;
      result = off_100B5F720(result, qword_100B5F730);
      v3 = dword_100B5F748;
      v4 = qword_100B5F710 + 16 * dword_100B5F748;
      v5 = *v2;
      *(v4 + 4) = *(v2 + 4);
      *v4 = v5;
      *(v4 + 8) = *(v2 + 8);
      *(v4 + 12) = *(v2 + 6);
      *(v4 + 13) = *(v2 + 12);
      *(v4 + 14) = *(v2 + 14);
      if (v3 + 1 < *qword_100BCDFC8)
      {
        v6 = v3 + 1;
      }

      else
      {
        v6 = 0;
      }

      dword_100B5F748 = v6;
    }
  }

  return result;
}

uint64_t sub_10024266C(uint64_t a1, uint64_t a2, unsigned int a3)
{
  if (!xmmword_100BCE2E0)
  {
    return 103;
  }

  v4 = sub_1000E1FE8(a1);
  if (!v4)
  {
    return 1301;
  }

  v12 = v4;
  if (!*(v4 + 144) && *(v4 + 140) && *(v4 + 140) < a3)
  {
    return 1337;
  }

  if ((*(v4 + 138) & 4) == 0)
  {
    return 1333;
  }

  result = sub_1000D6178(0x29u, v5, v6, v7, v8, v9, v10, v11, v4);
  if (!result)
  {
    *(v12 + 152) |= 0x80u;
  }

  return result;
}

uint64_t sub_100242740(uint64_t a1, __int16 a2, unsigned int a3, unsigned int a4, __int16 a5, __int16 a6)
{
  if (!xmmword_100BCE2E0)
  {
    return 103;
  }

  v11 = sub_1000E1FE8(a1);
  if (!v11)
  {
    return 1301;
  }

  if (*(v11 + 176))
  {
    return 119;
  }

  if (!*(v11 + 144))
  {
    v13 = *(v11 + 140);
    if (v13 < a4)
    {
      return 1337;
    }

    if (v13 < a3)
    {
      LOWORD(a3) = *(v11 + 140);
    }
  }

  if ((*(v11 + 138) & 4) == 0)
  {
    return 1333;
  }

  v19 = 0;
  v20[0] = 0;
  *(v11 + 192) = 0;
  v14 = v11;
  v15 = a2;
  v16 = a3;
  v17 = a4;
  v18 = a5;
  LOWORD(v19) = a6;
  v20[1] = &v14;
  LOWORD(v20[0]) = 24;
  return sub_10002195C(sub_10024284C, v20, 2 * ((5 * a2) & 0x7FFFu), (v11 + 176));
}

void sub_10024284C(uint64_t a1)
{
  v1 = *(a1 + 8);
  *(*v1 + 176) = 0;
  v2 = *v1;
  if ((*(*v1 + 192) & 1) != 0 || (v3 = sub_100248E88(v2 + 48), v2 = *v1, v3) || (v4 = sub_1000E2040(v2 + 48), v2 = *v1, v4))
  {
    v15[0] = 0;
    *(v2 + 192) = 0;
    v12 = *v1;
    v17 = *(v1 + 2);
    v16 = v12;
    v15[1] = &v16;
    LOWORD(v15[0]) = 24;
    if (sub_10002195C(sub_10024284C, v15, 2 * ((5 * *(v1 + 4)) & 0x7FFFu), (*v1 + 176)) && sub_10000C240())
    {
      sub_10000AF54("Error registering automatic sniff");
      v13 = sub_10000C050(0x2Cu);
      if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
      {
        sub_100813F70();
      }
    }
  }

  else if (!*(v2 + 152))
  {
    if (sub_1000D6178(0x29u, v5, v6, v7, v8, v9, v10, v11, v2))
    {
      if (sub_10000C240())
      {
        sub_10000AF54("Automatic sniff failed");
        v14 = sub_10000C050(0x2Cu);
        if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
        {
          sub_100813F70();
        }
      }
    }

    else
    {
      *(*v1 + 152) |= 0x80u;
    }
  }
}

uint64_t sub_1002429D4(uint64_t a1)
{
  if (!xmmword_100BCE2E0)
  {
    return 103;
  }

  v1 = sub_1000E1FE8(a1);
  if (!v1)
  {
    return 1301;
  }

  v9 = v1;
  if (*(v1 + 152) < 0)
  {
    return 0;
  }

  *(v1 + 192) = 1;
  result = sub_1000D6178(0x2Au, v2, v3, v4, v5, v6, v7, v8, v1);
  if (!result)
  {
    *(v9 + 152) |= 0x80u;
  }

  return result;
}

uint64_t sub_100242A5C(uint64_t a1)
{
  if (!xmmword_100BCE2E0)
  {
    return 103;
  }

  v1 = sub_1000E1FE8(a1);
  if (!v1)
  {
    return 1301;
  }

  v2 = v1;
  result = *(v1 + 176);
  if (result)
  {
    result = sub_10002242C(result);
    if (!result)
    {
      *(v2 + 176) = 0;
    }
  }

  return result;
}

uint64_t sub_100242ABC(uint64_t a1, uint64_t *a2)
{
  if (!xmmword_100BCE2E0)
  {
    return 103;
  }

  v3 = sub_1000E1FE8(a1);
  if (!v3)
  {
    v6 = 1301;
    if ((sub_10000C240() & 1) == 0)
    {
      return v6;
    }

    v8 = 0;
    goto LABEL_16;
  }

  v4 = v3;
  v5 = sub_1002418E0(sub_100242BE4, 0);
  if (v5 != 1316)
  {
    v6 = v5;
    if (v5)
    {
      if ((sub_10000C240() & 1) == 0)
      {
        return v6;
      }

      goto LABEL_15;
    }
  }

  if (a2)
  {
    v7 = *a2;
    *(v4 + 47) = *(a2 + 2);
    *(v4 + 90) = v7;
  }

  else
  {
    *(v4 + 45) = 0;
  }

  v6 = sub_100242C58(v4, 1);
  if (v6 && sub_10000C240())
  {
LABEL_15:
    v8 = *v4;
LABEL_16:
    sub_10000AF54("Could not apply power-saving policy for handle 0x%x: %!", v8, v6);
    v9 = sub_10000C050(0x2Cu);
    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      sub_100813DD4();
    }
  }

  return v6;
}

uint64_t sub_100242BE4(int a1, uint64_t a2)
{
  result = sub_1000E1FE8(a2);
  if (result && (a1 - 725) >= 2 && a1 != 712 && (a1 != 736 || *(result + 180) == 2))
  {

    return sub_100242C58(result, 0);
  }

  return result;
}

uint64_t sub_100242C58(uint64_t a1, int a2)
{
  if (*(a1 + 152) < 0)
  {
    return 0;
  }

  if (!*(a1 + 176) || (result = sub_100242A5C(a1 + 48), !result))
  {
    v5 = *(a1 + 180);
    if ((v5 - 2) >= 2)
    {
      if (v5 == 1)
      {
        goto LABEL_8;
      }

      if (v5)
      {
        sub_1000D660C();
      }

      else if (a2)
      {
LABEL_8:
        if (*(a1 + 152) != 2)
        {
          return 0;
        }

        goto LABEL_13;
      }

      return 0;
    }

    if (*(a1 + 152) == 2)
    {
      if (!a2 || *(a1 + 136) == *(a1 + 184))
      {
        return 0;
      }

LABEL_13:

      return sub_1002429D4(a1 + 48);
    }

    if (*(a1 + 54) > 5u)
    {
      result = sub_10000C240();
      if (!result)
      {
        return result;
      }

      v8 = sub_1002567E8(*(a1 + 54));
      sub_10000AF54("Tried to sniff while in state %s. Ignoring.", v8);
      v9 = sub_10000C050(0x2Cu);
      result = os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT);
      if (!result)
      {
        return result;
      }

      *buf = 136446210;
      v15 = sub_10000C0FC();
      _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEFAULT, " %{public}s", buf, 0xCu);
      return 0;
    }

    if (v5 == 2 || *(a1 + 193) == 1)
    {
      *(a1 + 193) = 0;
      v6 = *(a1 + 184);
      v7 = *(a1 + 184);

      return sub_10024266C(a1 + 48, v6, v7);
    }

    else
    {
      v10 = *(a1 + 190);
      v11 = *(a1 + 184);
      v12 = *(a1 + 186);
      v13 = *(a1 + 188);

      return sub_100242740(a1 + 48, v10, v11, v11, v12, v13);
    }
  }

  return result;
}

uint64_t sub_100242E9C()
{
  v2 = 0;
  v0 = 1;
  while (sub_1000BBFD4(&v2))
  {
    if (*(v2 + 176) && *(v2 + 152) != 2)
    {
      sub_10024266C(v2 + 48, *(v2 + 184), *(v2 + 184));
      v0 = 0;
    }
  }

  return v0 & 1;
}

uint64_t sub_100242F3C(uint64_t (*a1)(void, void), int a2)
{
  if (DWORD1(xmmword_100BCE2E0))
  {
    if (byte_100B5F760 == 1)
    {
      if (sub_10000C240())
      {
        sub_10000AF54("Invalid Connectability State=%d\n", byte_100B5F760);
        v4 = sub_10000C050(0x2Du);
        if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
        {
          sub_10081463C(v4);
        }
      }

      return 118;
    }
  }

  else
  {
    byte_100B5F760 = 0;
    byte_100B5F768 = 0;
    dword_100B5F758 = 3;
    DWORD1(xmmword_100BCE2E0) = 1;
  }

  if (sub_10000C240())
  {
    sub_10000AF54("Set ConnectabilitySpeedScenario %d -> %d", dword_100B5F758, a2);
    v12 = sub_10000C050(0x2Du);
    if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 136446210;
      v14 = sub_10000C0FC();
      _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_DEFAULT, " %{public}s", buf, 0xCu);
    }
  }

  off_100B5F750 = a1;
  dword_100B5F758 = a2;
  result = sub_100018960(111, sub_1002430F0, v6, v7, v8, v9, v10, v11, byte_100B52332[6 * a2 + 4]);
  if (!result)
  {
    byte_100B5F760 = 1;
  }

  return result;
}

uint64_t sub_1002430F0(int a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  if (a1 || (result = sub_100018960(73, sub_10024318C, a3, a4, a5, a6, a7, a8, *&byte_100B52332[6 * dword_100B5F758]), result))
  {
    byte_100B5F760 = 0;
    v9 = off_100B5F750;

    return v9();
  }

  return result;
}

void sub_1002431A8()
{
  byte_100B5F772 = 0;
  byte_100B5F7F4 = 0;
  byte_100B5F7A9 = 0;
  byte_100B5F7F5 = 0;
  byte_100B5F7E8 = 0;
  byte_100B5F7F2 = -1;
  byte_100B5F7DD = 0;
  byte_100B5F7DC = 0;
  byte_100B5F7A8 = 0;
  byte_100B5F7B8 = 0;
  byte_100B5F771 = 0;
  byte_100B5F770 = 0;
  dword_100B5F7D8 = 0;
  off_100B5F788 = 0;
  off_100B5F790 = 0;
  off_100B5F798 = 0;
  off_100B5F7A0 = 0;
  word_100B5F7F0 = 96;
  dword_100B5F7EC = 0;
  qword_100B5F7F8 = 0;
}

uint64_t sub_100243254()
{
  if (byte_100B5F771 || (sub_10023B690() & 1) != 0)
  {
    v6 = 0;
    v7 = 2;
  }

  else
  {
    byte_100B5F771 = 1;
    v6 = sub_100018960(81, sub_100244C90, v0, v1, v2, v3, v4, v5, dword_100B5F7EC);
    if (!v6)
    {
      return v6;
    }

    if (sub_10000C240())
    {
      sub_10000AF54("OI_HCICMD_WriteClassofDevice failed");
      v9 = sub_10000C050(0x2Cu);
      if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
      {
        sub_100812934();
      }
    }

    v7 = 0;
  }

  byte_100B5F771 = v7;
  return v6;
}

uint64_t sub_100243324(uint64_t a1)
{
  v1 = xmmword_100BCDFD8;
  *(a1 + 4) = WORD2(xmmword_100BCDFD8);
  *a1 = v1;
  return 0;
}

uint64_t sub_100243354(void (*a1)(uint64_t result), uint64_t a2)
{
  result = 1325;
  if ((byte_100B5F772 & 1) == 0)
  {
    v4 = !byte_100B5F7A8 && byte_100B5F7B8 == 0;
    if (v4 && (byte_100B5F7DC & 1) == 0 && !byte_100B5F7DD)
    {
      v6 = sub_1003045A0(0x2Cu);
      result = sub_100018960(51, sub_100243458, v7, v8, v9, v10, v11, v12, *(v6 + 10) & 6 | 1u);
      if (result == 628)
      {
        result = sub_1000228C0(sub_100243644, 0, 0);
      }

      if (!result)
      {
        byte_100B5F772 = 1;
        dword_100B5F774 = 0;
        qword_100B5F778 = a2;
        if (a1)
        {
          v13 = a1;
        }

        else
        {
          v13 = sub_10024364C;
        }

        off_100B5F780 = v13;
      }
    }
  }

  return result;
}

void sub_100243458(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  if (byte_100B5F772 != 1)
  {
    if (sub_10000C240())
    {
      sub_10000AF54("writeDefaultLinkPolicyCb - orphan callback");
      v10 = sub_10000C050(0x2Cu);
      if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
      {
        sub_10080F7A0();
      }
    }

    return;
  }

  v8 = a1;
  if (a1 == 628)
  {
    goto LABEL_17;
  }

  if ((a1 - 701) <= 0x44)
  {
    if (sub_10000C240())
    {
      sub_10000AF54("Write_Default_Link_Policy, ignoring error");
      v9 = sub_10000C050(0x2Cu);
      if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
      {
        sub_100812934();
      }
    }

    dword_100B5F774 = v8;
LABEL_17:
    v14 = sub_100018960(67, sub_100244D30, a3, a4, a5, a6, a7, a8, *qword_100B5F778);
    if (!v14)
    {
      return;
    }

    v8 = v14;
    if (v14 == 628)
    {
      sub_100244D30(628, v15, v16, v17, v18, v19, v20, v21);
      return;
    }

    if (sub_10000C240())
    {
      sub_10000AF54("OI_HCICMD_WritePageTimeout");
      v22 = sub_10000C050(0x2Cu);
      if (os_log_type_enabled(v22, OS_LOG_TYPE_ERROR))
      {
        sub_100812934();
      }
    }

    byte_100B5F772 = 0;
    v12 = off_100B5F780;
    if (off_100B5F780)
    {
      v13 = qword_100B5F778;
      goto LABEL_25;
    }

    return;
  }

  if (!a1)
  {
    goto LABEL_17;
  }

  if (sub_10000C240())
  {
    sub_10000AF54("writeDefaultLinkPolicyCb");
    v11 = sub_10000C050(0x2Cu);
    if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
    {
      sub_100812934();
    }
  }

  byte_100B5F772 = 0;
  v12 = off_100B5F780;
  if (off_100B5F780)
  {
    v13 = qword_100B5F778;
LABEL_25:
    v12(v8, v13);
  }
}

void sub_10024364C(uint64_t result)
{
  if (result && sub_10000C240())
  {
    sub_10000AF54("devmgrCommandCompleteCallback");
    v1 = sub_10000C050(0x2Cu);
    if (os_log_type_enabled(v1, OS_LOG_TYPE_ERROR))
    {
      sub_100812934();
    }
  }
}

uint64_t sub_1002436B8(void (*a1)(uint64_t result), uint64_t a2)
{
  if (!sub_1000B8B5C(a2))
  {
    sub_1000D660C();
  }

  if (off_100B5F788)
  {
    return 1319;
  }

  result = sub_1000D6178(0x15u, v4, v5, v6, v7, v8, v9, v10, a2);
  if (!result)
  {
    if (a1)
    {
      v12 = a1;
    }

    else
    {
      v12 = sub_10024364C;
    }

    off_100B5F788 = v12;
  }

  return result;
}

void sub_100243738(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (!off_100B5F788)
  {
    if (!sub_10000C240())
    {
      return;
    }

    sub_10000AF54("orphan event - ReadRemoteSupportedFeaturesComplete");
    v6 = sub_10000C050(0x2Cu);
    if (!os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      return;
    }

LABEL_11:
    sub_10080F7A0();
    return;
  }

  v8 = off_100B5F788;
  off_100B5F788 = 0;
  if (!sub_1000B8B5C(a2))
  {
    if (!sub_10000C240())
    {
      return;
    }

    sub_10000AF54("Device disconnected during the name request. Ignoring event.");
    v7 = sub_10000C050(0x2Cu);
    if (!os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      return;
    }

    goto LABEL_11;
  }

  v8(a1, a2 + 48, a3);
}

uint64_t sub_100243844(void (*a1)(uint64_t result), uint64_t a2)
{
  if (!sub_1000B8B5C(a2))
  {
    sub_1000D660C();
  }

  if (off_100B5F790)
  {
    return 1319;
  }

  result = sub_1000D6178(0x16u, v4, v5, v6, v7, v8, v9, v10, a2);
  if (!result)
  {
    if (a1)
    {
      v12 = a1;
    }

    else
    {
      v12 = sub_10024364C;
    }

    off_100B5F790 = v12;
  }

  return result;
}

void sub_1002438C8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v12 = off_100B5F790;
  if (sub_1000B8B5C(a2))
  {
    if (v12)
    {
      off_100B5F790 = 0;

      v12(a1, a2 + 48, a3, a4, a5);
    }

    else if (sub_10000C240())
    {
      sub_10000AF54("orphan event - OI_HCIEventHandler_ReadRemoteExtendedFeaturesComplete");
      v11 = sub_10000C050(0x2Cu);
      if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
      {
        sub_10080F7A0();
      }
    }
  }

  else
  {
    if (sub_10000C240())
    {
      sub_10000AF54("NULL handle - OI_HCIEventHandler_ReadRemoteExtendedFeaturesComplete");
      v10 = sub_10000C050(0x2Cu);
      if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
      {
        sub_10080F7A0();
      }
    }

    off_100B5F790 = 0;
  }
}

uint64_t sub_1002439F4(void (*a1)(uint64_t result), uint64_t a2)
{
  if (!sub_1000B8B5C(a2))
  {
    sub_1000D660C();
  }

  if (off_100B5F798)
  {
    return 1319;
  }

  result = sub_1000D6178(0x17u, v4, v5, v6, v7, v8, v9, v10, a2);
  if (!result)
  {
    if (a1)
    {
      v12 = a1;
    }

    else
    {
      v12 = sub_10024364C;
    }

    off_100B5F798 = v12;
  }

  return result;
}

void sub_100243A74(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  if (!off_100B5F798)
  {
    if (!sub_10000C240())
    {
      return;
    }

    sub_10000AF54("orphan event - ReadRemoteVersionInformationComplete");
    v10 = sub_10000C050(0x2Cu);
    if (!os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
    {
      return;
    }

LABEL_11:
    sub_10080F7A0();
    return;
  }

  v12 = off_100B5F798;
  off_100B5F798 = 0;
  if (!sub_1000B8B5C(a2))
  {
    if (!sub_10000C240())
    {
      return;
    }

    sub_10000AF54("Device disconnected during the version request. Ignoring event.");
    v11 = sub_10000C050(0x2Cu);
    if (!os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
    {
      return;
    }

    goto LABEL_11;
  }

  v12(a1, a2 + 48, a3, a4, a5);
}

void sub_100243B9C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v8 = off_100B5F7A0;
  if (!sub_1000B8B5C(a2))
  {
    if (!sub_10000C240())
    {
      return;
    }

    sub_10000AF54("invalid handle for HCI ReadClockOffsetComplete event. Ignoring event.");
    v6 = sub_10000C050(0x2Cu);
    if (!os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      return;
    }

LABEL_11:
    sub_10080F7A0();
    return;
  }

  if (!v8)
  {
    if (!sub_10000C240())
    {
      return;
    }

    sub_10000AF54("orphan event - ReadClockOffsetComplete");
    v7 = sub_10000C050(0x2Cu);
    if (!os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      return;
    }

    goto LABEL_11;
  }

  off_100B5F7A0 = 0;

  v8(a1, a2 + 48, a3);
}

void sub_100243CA8(uint64_t result, unsigned int a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v10 = byte_100B5F7A8;
  v11 = 1;
  if ((byte_100B5F772 & 1) == 0)
  {
    v12 = !byte_100B5F7A8 && byte_100B5F7B8 == 0;
    if (v12 && (byte_100B5F7DC & 1) == 0)
    {
      v11 = byte_100B5F7DD != 0;
    }
  }

  if (v11 && byte_100B5F7A9)
  {
    if (--byte_100B5F7A9)
    {
      return;
    }

    if (result)
    {
      if (byte_100B5F7F2 == 1)
      {
        byte_100B5F7F2 = -1;
      }

      if (byte_100B5F7A8 == 1)
      {
        v10 = 2;
        byte_100B5F7A8 = 2;
      }

      if (byte_100B5F7DD == 1)
      {
        byte_100B5F7DD = 2;
      }

      if (byte_100B5F7B8 == 1)
      {
        byte_100B5F7B8 = 2;
      }
    }

    else
    {
      v14 = (byte_100B5F7F3 & byte_100B5F7F4) | a2 & ~byte_100B5F7F4;
      byte_100B5F7F3 = byte_100B5F7F3 & byte_100B5F7F4 | a2 & ~byte_100B5F7F4;
      byte_100B5F7F2 = 0;
      if (v14 == a2)
      {
        if (byte_100B5F7DD == 1)
        {
          byte_100B5F7DD = 2;
        }

        if (byte_100B5F7B8 == 1)
        {
          byte_100B5F7B8 = 2;
        }
      }

      else
      {
        if (!(byte_100B5F7DD | byte_100B5F7B8))
        {
          if (sub_10000C240())
          {
            sub_10000AF54("readScanEnableCb - LC settings don't match last write (%2x != %2x)\n", byte_100B5F7F3, a2);
            v15 = sub_10000C050(0x2Cu);
            if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
            {
              sub_10080F7A0();
            }
          }
        }

        v16 = sub_100018960(71, sub_100246544, a3, a4, a5, a6, a7, a8, byte_100B5F7F3);
        if (v16)
        {
          v17 = v16;
          if (byte_100B5F7DD == 1)
          {
            byte_100B5F800 &= 0x7Du;
            byte_100B5F7DD = 0;
            off_100B5F7E0(v16, byte_100B5F801 != 0);
          }

          if (byte_100B5F7B8 == 1)
          {
            byte_100B5F800 &= 0x7Eu;
            sub_10024675C(v17);
          }
        }

        else
        {
          ++byte_100B5F7F5;
        }
      }

      v10 = byte_100B5F7A8;
      if (byte_100B5F7A8 == 1)
      {
        goto LABEL_41;
      }
    }

    if (v10 != 2)
    {
LABEL_48:
      if (byte_100B5F7DC == 1)
      {
        byte_100B5F7DC = 0;
        off_100B5F7E0(result, (a2 >> 1) & 1);
      }

      if (byte_100B5F7DD == 2)
      {
        byte_100B5F800 &= 0x7Du;
        byte_100B5F7DD = 0;
        off_100B5F7E0(result, byte_100B5F801 != 0);
      }

      if (byte_100B5F7B8 == 2)
      {
        byte_100B5F800 &= 0x7Eu;
        sub_10024675C(result);
      }

      return;
    }

LABEL_41:
    byte_100B5F7A8 = 0;
    if (result || (a2 & 1) == 0)
    {
      (off_100B5F7B0)(result, 0, a3, a4, a5, a6, a7, a8);
    }

    else
    {
      if (dword_100B5F7D8)
      {
        v18 = 1;
      }

      else
      {
        v18 = 2;
      }

      (off_100B5F7B0)(0, v18, a3, a4, a5, a6, a7, a8);
    }

    goto LABEL_48;
  }

  if (sub_10000C240())
  {
    sub_10000AF54("readScanEnableCb - orphan callback");
    v13 = sub_10000C050(0x2Cu);
    if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
    {
      sub_10080F7A0();
    }
  }
}

uint64_t sub_10024401C(void (*a1)(uint64_t result), int a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  result = 1325;
  if ((byte_100B5F772 & 1) == 0 && !byte_100B5F7B8)
  {
    v11 = 1;
    if (a2 && a2 != 2)
    {
      if (a2 != 1)
      {
        return 101;
      }

      word_100B5F7BA = 600;
      qword_100B5F7C0 = sub_100244168;
      v11 = 2;
    }

    result = sub_100018960(100, sub_1002441DC, a3, a4, a5, a6, a7, a8, v11);
    if (!result)
    {
      byte_100B5F7B8 = 1;
      dword_100B5F7C8 = a2;
      v12 = (a1 ? a1 : sub_10024364C);
      off_100B5F7D0 = v12;
      result = dword_100B5F7D8;
      if (dword_100B5F7D8)
      {
        if (sub_10002242C(dword_100B5F7D8) && sub_10000C240())
        {
          sub_10000AF54("OI_Dispatch_CancelFunc");
          v13 = sub_10000C050(0x2Cu);
          if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
          {
            sub_100812934();
          }
        }

        result = 0;
        dword_100B5F7D8 = 0;
      }
    }
  }

  return result;
}

void sub_100244168(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  if (sub_10024401C(0, 2, a3, a4, a5, a6, a7, a8) && sub_10000C240())
  {
    sub_10000AF54("OI_DEVMGR_WriteDiscoverability");
    v8 = sub_10000C050(0x2Cu);
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      sub_100812934();
    }
  }
}

void sub_1002441DC(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8 = result;
  if (byte_100B5F7B8 == 1)
  {
    if (result)
    {
LABEL_3:
      sub_10024675C(v8);
      return;
    }

    if (dword_100B5F7C8)
    {
      v10 = (byte_100B5F7F3 & 0xFEu) + 1;
    }

    else
    {
      v10 = byte_100B5F7F3 & 0xFE;
    }

    byte_100B5F7F3 = v10;
    byte_100B5F7F4 |= 1u;
    if (byte_100B5F7F2 != 1)
    {
      if (byte_100B5F7F2 == 255)
      {
        v8 = sub_100018960(70, sub_100243CA8, a3, a4, a5, a6, a7, a8, v15);
        if (v8)
        {
          goto LABEL_3;
        }

        ++byte_100B5F7A9;
        byte_100B5F7F2 = 1;
      }

      else
      {
        v11 = sub_100018960(71, sub_100246544, a3, a4, a5, a6, a7, a8, v10);
        if (v11)
        {
          v8 = v11;
          if (!sub_10000C240())
          {
            goto LABEL_3;
          }

          sub_10000AF54("OI_HCICMD_WriteScanEnable");
          v12 = sub_10000C050(0x2Cu);
          if (!os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
          {
            goto LABEL_3;
          }

LABEL_18:
          sub_100812934();
          goto LABEL_3;
        }

        ++byte_100B5F7F5;
      }
    }

    byte_100B5F800 |= 1u;
    if (dword_100B5F7C8 == 1)
    {
      v13 = sub_10002195C(sub_1002467C0, 0, word_100B5F7BA, &dword_100B5F7D8);
      if (v13)
      {
        v8 = v13;
        if (!sub_10000C240())
        {
          goto LABEL_3;
        }

        sub_10000AF54("OI_Dispatch_RegisterTimedFunc");
        v14 = sub_10000C050(0x2Cu);
        if (!os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
        {
          goto LABEL_3;
        }

        goto LABEL_18;
      }
    }
  }

  else if (sub_10000C240())
  {
    sub_10000AF54("wrdiscWriteIacLapCb - orphan callback");
    v9 = sub_10000C050(0x2Cu);
    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      sub_100812934();
    }
  }
}

uint64_t sub_1002443FC(void (*a1)(uint64_t result), int a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v19[0] = 0;
  if (a2)
  {
    if (byte_100B5F7E8)
    {
      v9 = sub_100007618(0x10uLL, 0x1080040C20BADFCuLL);
      ptr = v9;
      if (v9)
      {
        *v9 = a1;
        v9[8] = 1;
        v10 = byte_100B5F7E8 + 1;
LABEL_13:
        byte_100B5F7E8 = v10;
        goto LABEL_14;
      }

      return 0;
    }

    v11 = sub_100244614(a1, 1, a3, a4, a5, a6, a7, a8);
    if (v11)
    {
      if (!sub_10000C240())
      {
        return v11;
      }

      sub_10000AF54("_OI_DEVMGR_SetLocalDeviceConnectability");
      v15 = sub_10000C050(0x2Cu);
      if (!os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
      {
        return v11;
      }

      goto LABEL_9;
    }

    v16 = byte_100B5F7E8 + 1;
    goto LABEL_26;
  }

  if (byte_100B5F7E8 == 1)
  {
    v11 = sub_100244614(a1, 0, a3, a4, a5, a6, a7, a8);
    if (v11)
    {
      if (!sub_10000C240())
      {
        return v11;
      }

      sub_10000AF54("_OI_DEVMGR_SetLocalDeviceConnectability");
      v12 = sub_10000C050(0x2Cu);
      if (!os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
      {
        return v11;
      }

LABEL_9:
      sub_100812934();
      return v11;
    }

    v16 = byte_100B5F7E8 - 1;
LABEL_26:
    byte_100B5F7E8 = v16;
    return v11;
  }

  v13 = sub_100007618(0x10uLL, 0x1080040C20BADFCuLL);
  ptr = v13;
  if (!v13)
  {
    return 0;
  }

  *v13 = a1;
  v13[8] = 0;
  if (byte_100B5F7E8)
  {
    v10 = byte_100B5F7E8 - 1;
    goto LABEL_13;
  }

  sub_1000D660C();
LABEL_14:
  v19[1] = &ptr;
  LOWORD(v19[0]) = 8;
  v11 = sub_10002195C(sub_1002447B8, v19, 0, 0);
  if (v11)
  {
    if (sub_10000C240())
    {
      sub_10000AF54("Failed to dispatch fake connectable CB");
      v14 = sub_10000C050(0x2Cu);
      if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
      {
        sub_100812934();
      }
    }

    sub_10000C1E8(ptr);
  }

  return v11;
}

uint64_t sub_100244614(void (*a1)(uint64_t result), int a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8 = 1325;
  if ((byte_100B5F772 & 1) != 0 || (byte_100B5F7DC & 1) != 0 || byte_100B5F7DD)
  {
    return v8;
  }

  v9 = a2;
  byte_100B5F7F4 |= 2u;
  if (a2)
  {
    v11 = 2;
  }

  else
  {
    v11 = 0;
  }

  v12 = byte_100B5F7F3 & 0xFD | v11;
  byte_100B5F7F3 = byte_100B5F7F3 & 0xFD | v11;
  if (byte_100B5F7F2 == 1)
  {
    goto LABEL_16;
  }

  if (byte_100B5F7F2 == 255)
  {
    v8 = sub_100018960(70, sub_100243CA8, a3, a4, a5, a6, a7, a8, v17);
    if (v8)
    {
      return v8;
    }

    ++byte_100B5F7A9;
    byte_100B5F7F2 = 1;
    goto LABEL_16;
  }

  v13 = sub_100018960(71, sub_100246544, a3, a4, a5, a6, a7, a8, v12);
  if (!v13)
  {
    ++byte_100B5F7F5;
LABEL_16:
    v8 = 0;
    byte_100B5F7DD = 1;
    byte_100B5F801 = v9;
    if (a1)
    {
      v15 = a1;
    }

    else
    {
      v15 = sub_10024364C;
    }

    off_100B5F7E0 = v15;
    byte_100B5F800 |= 2u;
    return v8;
  }

  v8 = v13;
  if (sub_10000C240())
  {
    sub_10000AF54("OI_HCICMD_WriteScanEnable");
    v14 = sub_10000C050(0x2Cu);
    if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
    {
      sub_100812934();
    }
  }

  return v8;
}

void sub_1002447B8(uint64_t a1)
{
  v1 = **(a1 + 8);
  if (v1)
  {
    if (*v1)
    {
      (*v1)(0, v1[8]);
    }

    sub_10000C1E8(v1);
  }
}

uint64_t sub_10024481C(int a1, int a2)
{
  if ((a1 & 0xFF001FFF) != 0)
  {
    return 101;
  }

  v3 = 0;
  v4 = 0;
  v5 = dword_100B5F7EC;
  do
  {
    v6 = 1 << (v3 + 16);
    if ((v6 & a1) == 0)
    {
      goto LABEL_13;
    }

    v7 = *(&qword_100B5F7F8 + v3);
    if (a2)
    {
      if (v7 == 255)
      {
        return 104;
      }

      *(&qword_100B5F7F8 + v3) = v7 + 1;
      if (!v7)
      {
        v5 |= v6;
LABEL_12:
        dword_100B5F7EC = v5;
        v4 = 1;
      }
    }

    else
    {
      if (!*(&qword_100B5F7F8 + v3))
      {
        return 121;
      }

      v8 = v7 - 1;
      *(&qword_100B5F7F8 + v3) = v8;
      if (!v8)
      {
        v5 &= ~v6;
        goto LABEL_12;
      }
    }

LABEL_13:
    ++v3;
  }

  while (v3 != 8);
  if (v4)
  {
    return sub_100243254();
  }

  else
  {
    return 0;
  }
}

uint64_t sub_100244900(char a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  if (a1)
  {
    v8 = 0;
  }

  else
  {
    v8 = *(qword_100B5F778 + 18);
  }

  v9 = sub_100018960(107, sub_1002449BC, a3, a4, a5, a6, a7, a8, v8);
  v10 = v9;
  if (v9)
  {
    if (v9 == 628)
    {
      sub_1002449BC(628);
    }

    else if (sub_10000C240())
    {
      sub_10000AF54("OI_HCICMD_WriteInquiryScanType");
      v11 = sub_10000C050(0x2Cu);
      if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
      {
        sub_100812934();
      }
    }
  }

  return v10;
}

void sub_1002449BC(uint64_t result)
{
  if (result == 717 || result == 628)
  {
    if (sub_10000C240())
    {
      sub_10000AF54("writeInqScanInterlaceTypeCb");
      v1 = sub_10000C050(0x2Cu);
      if (os_log_type_enabled(v1, OS_LOG_TYPE_ERROR))
      {
LABEL_13:
        sub_100812934();
      }
    }
  }

  else if ((result - 701) > 0x44)
  {
    if (result)
    {
      if (sub_10000C240())
      {
        sub_10000AF54("writeInqScanInterlaceTypeCb");
        v3 = sub_10000C050(0x2Cu);
        if (os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
        {
          goto LABEL_13;
        }
      }
    }
  }

  else if (sub_10000C240())
  {
    sub_10000AF54("writeInqScanInterlaceTypeCb");
    v2 = sub_10000C050(0x2Cu);
    if (os_log_type_enabled(v2, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_13;
    }
  }
}

uint64_t sub_100244AC8(char a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  if (a1)
  {
    v8 = 0;
  }

  else
  {
    v8 = *(qword_100B5F778 + 20);
  }

  v9 = sub_100018960(111, sub_100244B84, a3, a4, a5, a6, a7, a8, v8);
  v10 = v9;
  if (v9)
  {
    if (v9 == 628)
    {
      sub_100244B84(628);
    }

    else if (sub_10000C240())
    {
      sub_10000AF54("OI_HCICMD_WritePageScanType");
      v11 = sub_10000C050(0x2Cu);
      if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
      {
        sub_100812934();
      }
    }
  }

  return v10;
}

void sub_100244B84(uint64_t result)
{
  if (result == 717 || result == 628)
  {
    if (sub_10000C240())
    {
      sub_10000AF54("writePageScanInterlaceTypeCb");
      v1 = sub_10000C050(0x2Cu);
      if (os_log_type_enabled(v1, OS_LOG_TYPE_ERROR))
      {
LABEL_13:
        sub_100812934();
      }
    }
  }

  else if ((result - 701) > 0x44)
  {
    if (result)
    {
      if (sub_10000C240())
      {
        sub_10000AF54("writePageScanInterlaceTypeCb");
        v3 = sub_10000C050(0x2Cu);
        if (os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
        {
          goto LABEL_13;
        }
      }
    }
  }

  else if (sub_10000C240())
  {
    sub_10000AF54("writePageScanInterlaceTypeCb");
    v2 = sub_10000C050(0x2Cu);
    if (os_log_type_enabled(v2, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_13;
    }
  }
}

void sub_100244C90(uint64_t a1)
{
  v1 = a1;
  if (!byte_100B5F771)
  {
    sub_1000D660C();
    if (v1)
    {
      goto LABEL_3;
    }

LABEL_7:
    byte_100B5F770 = 0;
    goto LABEL_8;
  }

  if (!a1)
  {
    goto LABEL_7;
  }

LABEL_3:
  if (sub_10000C240())
  {
    sub_10000AF54("devmgrWriteClassOfDeviceCB failed");
    v2 = sub_10000C050(0x2Cu);
    if (os_log_type_enabled(v2, OS_LOG_TYPE_ERROR))
    {
      sub_100812934();
    }
  }

LABEL_8:
  v3 = byte_100B5F771;
  byte_100B5F771 = 0;
  if (v3 == 2)
  {
    sub_100243254();
  }
}

void sub_100244D30(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  if (byte_100B5F772 != 1)
  {
    if (sub_10000C240())
    {
      sub_10000AF54("writeConnectionAcceptTimeoutCb - orphan callback");
      v10 = sub_10000C050(0x2Cu);
      if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
      {
        sub_10080F7A0();
      }
    }

    return;
  }

  v8 = a1;
  if (a1 == 628)
  {
    goto LABEL_17;
  }

  if ((a1 - 701) <= 0x44)
  {
    if (sub_10000C240())
    {
      sub_10000AF54("Write_Cnct_Accept_Timeout, ignoring error");
      v9 = sub_10000C050(0x2Cu);
      if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
      {
        sub_100812934();
      }
    }

    dword_100B5F774 = v8;
LABEL_17:
    v14 = sub_100018960(69, sub_100244F1C, a3, a4, a5, a6, a7, a8, *(qword_100B5F778 + 2));
    if (!v14)
    {
      return;
    }

    v8 = v14;
    if (v14 == 628)
    {
      sub_100244F1C(628, v15, v16, v17, v18, v19, v20, v21);
      return;
    }

    if (sub_10000C240())
    {
      sub_10000AF54("OI_HCICMD_WritePageTimeout");
      v22 = sub_10000C050(0x2Cu);
      if (os_log_type_enabled(v22, OS_LOG_TYPE_ERROR))
      {
        sub_100812934();
      }
    }

    byte_100B5F772 = 0;
    v12 = off_100B5F780;
    if (off_100B5F780)
    {
      v13 = qword_100B5F778;
      goto LABEL_25;
    }

    return;
  }

  if (!a1)
  {
    goto LABEL_17;
  }

  if (sub_10000C240())
  {
    sub_10000AF54("writeConnectionAcceptTimeoutCb");
    v11 = sub_10000C050(0x2Cu);
    if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
    {
      sub_100812934();
    }
  }

  byte_100B5F772 = 0;
  v12 = off_100B5F780;
  if (off_100B5F780)
  {
    v13 = qword_100B5F778;
LABEL_25:
    v12(v8, v13);
  }
}

void sub_100244F1C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  if (byte_100B5F772 != 1)
  {
    if (sub_10000C240())
    {
      sub_10000AF54("writePageTimeoutCb - orphan callback");
      v10 = sub_10000C050(0x2Cu);
      if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
      {
        sub_10080F7A0();
      }
    }

    return;
  }

  v8 = a1;
  if (a1 == 628)
  {
    goto LABEL_17;
  }

  if ((a1 - 701) <= 0x44)
  {
    if (sub_10000C240())
    {
      sub_10000AF54("Write_Page_Timeout, ignoring error");
      v9 = sub_10000C050(0x2Cu);
      if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
      {
        sub_100812934();
      }
    }

    dword_100B5F774 = v8;
LABEL_17:
    v14 = sub_100018960(73, sub_10024510C, a3, a4, a5, a6, a7, a8, *(qword_100B5F778 + 4));
    if (!v14)
    {
      return;
    }

    v8 = v14;
    if (v14 == 628)
    {
      sub_10024510C(628, v15, v16, v17, v18, v19, v20, v21);
      return;
    }

    if (sub_10000C240())
    {
      sub_10000AF54("OI_HCICMD_WritePageScanActivity");
      v22 = sub_10000C050(0x2Cu);
      if (os_log_type_enabled(v22, OS_LOG_TYPE_ERROR))
      {
        sub_100812934();
      }
    }

    byte_100B5F772 = 0;
    v12 = off_100B5F780;
    if (off_100B5F780)
    {
      v13 = qword_100B5F778;
      goto LABEL_25;
    }

    return;
  }

  if (!a1)
  {
    goto LABEL_17;
  }

  if (sub_10000C240())
  {
    sub_10000AF54("writePageTimeoutCb");
    v11 = sub_10000C050(0x2Cu);
    if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
    {
      sub_100812934();
    }
  }

  byte_100B5F772 = 0;
  v12 = off_100B5F780;
  if (off_100B5F780)
  {
    v13 = qword_100B5F778;
LABEL_25:
    v12(v8, v13);
  }
}

void sub_10024510C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  if (byte_100B5F772 != 1)
  {
    if (sub_10000C240())
    {
      sub_10000AF54("writePageScanActivityCb - orphan callback");
      v10 = sub_10000C050(0x2Cu);
      if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
      {
        sub_10080F7A0();
      }
    }

    return;
  }

  v8 = a1;
  if (a1 == 628)
  {
    goto LABEL_17;
  }

  if ((a1 - 701) <= 0x44)
  {
    if (sub_10000C240())
    {
      sub_10000AF54("Write_PageScan_Activity, ignoring error");
      v9 = sub_10000C050(0x2Cu);
      if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
      {
        sub_100812934();
      }
    }

    dword_100B5F774 = v8;
LABEL_17:
    v14 = sub_100018960(75, sub_1002452FC, a3, a4, a5, a6, a7, a8, *(qword_100B5F778 + 8));
    if (!v14)
    {
      return;
    }

    v8 = v14;
    if (v14 == 628)
    {
      sub_1002452FC(628, v15, v16, v17, v18, v19, v20, v21);
      return;
    }

    if (sub_10000C240())
    {
      sub_10000AF54("OI_HCICMD_WriteInquiryScanActivity");
      v22 = sub_10000C050(0x2Cu);
      if (os_log_type_enabled(v22, OS_LOG_TYPE_ERROR))
      {
        sub_100812934();
      }
    }

    byte_100B5F772 = 0;
    v12 = off_100B5F780;
    if (off_100B5F780)
    {
      v13 = qword_100B5F778;
      goto LABEL_25;
    }

    return;
  }

  if (!a1)
  {
    goto LABEL_17;
  }

  if (sub_10000C240())
  {
    sub_10000AF54("writePageScanActivityCb");
    v11 = sub_10000C050(0x2Cu);
    if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
    {
      sub_100812934();
    }
  }

  byte_100B5F772 = 0;
  v12 = off_100B5F780;
  if (off_100B5F780)
  {
    v13 = qword_100B5F778;
LABEL_25:
    v12(v8, v13);
  }
}

void sub_1002452FC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  if (byte_100B5F772 != 1)
  {
    if (sub_10000C240())
    {
      sub_10000AF54("writeInquiryScanActivityCb - orphan callback");
      v10 = sub_10000C050(0x2Cu);
      if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
      {
        sub_10080F7A0();
      }
    }

    return;
  }

  v8 = a1;
  if (a1 == 628)
  {
    goto LABEL_17;
  }

  if ((a1 - 701) <= 0x44)
  {
    if (sub_10000C240())
    {
      sub_10000AF54("Write_InquiryScan_Activity, ignoring error");
      v9 = sub_10000C050(0x2Cu);
      if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
      {
        sub_100812934();
      }
    }

    dword_100B5F774 = v8;
LABEL_17:
    v14 = sub_100018960(83, sub_1002454E8, a3, a4, a5, a6, a7, a8, *(qword_100B5F778 + 12));
    if (!v14)
    {
      return;
    }

    v8 = v14;
    if (v14 == 628)
    {
      sub_1002454E8(628, v15, v16, v17, v18, v19, v20, v21);
      return;
    }

    if (sub_10000C240())
    {
      sub_10000AF54("OI_HCICMD_WriteVoiceSetting");
      v22 = sub_10000C050(0x2Cu);
      if (os_log_type_enabled(v22, OS_LOG_TYPE_ERROR))
      {
        sub_100812934();
      }
    }

    byte_100B5F772 = 0;
    v12 = off_100B5F780;
    if (off_100B5F780)
    {
      v13 = qword_100B5F778;
      goto LABEL_25;
    }

    return;
  }

  if (!a1)
  {
    goto LABEL_17;
  }

  if (sub_10000C240())
  {
    sub_10000AF54("writeInquiryScanActivityCb");
    v11 = sub_10000C050(0x2Cu);
    if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
    {
      sub_100812934();
    }
  }

  byte_100B5F772 = 0;
  v12 = off_100B5F780;
  if (off_100B5F780)
  {
    v13 = qword_100B5F778;
LABEL_25:
    v12(v8, v13);
  }
}

void sub_1002454E8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  if (byte_100B5F772 != 1)
  {
    if (sub_10000C240())
    {
      sub_10000AF54("writeVoiceSettingCb - orphan callback");
      v10 = sub_10000C050(0x2Cu);
      if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
      {
        sub_10080F7A0();
      }
    }

    return;
  }

  v8 = a1;
  if (a1 == 628)
  {
    goto LABEL_17;
  }

  if ((a1 - 701) <= 0x44)
  {
    if (sub_10000C240())
    {
      sub_10000AF54("Write_Voice_Setting, ignoring error");
      v9 = sub_10000C050(0x2Cu);
      if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
      {
        sub_100812934();
      }
    }

    dword_100B5F774 = v8;
LABEL_17:
    word_100B5F7F0 = *(qword_100B5F778 + 12);
    v14 = sub_100018960(87, sub_1002456E0, a3, a4, a5, a6, a7, a8, *(qword_100B5F778 + 14));
    if (!v14)
    {
      return;
    }

    v8 = v14;
    if (v14 == 628)
    {
      sub_1002456E0(628, v15, v16, v17, v18, v19, v20, v21);
      return;
    }

    if (sub_10000C240())
    {
      sub_10000AF54("OI_HCICMD_WriteNumBroadcastRetransmissions");
      v22 = sub_10000C050(0x2Cu);
      if (os_log_type_enabled(v22, OS_LOG_TYPE_ERROR))
      {
        sub_100812934();
      }
    }

    byte_100B5F772 = 0;
    v12 = off_100B5F780;
    if (off_100B5F780)
    {
      v13 = qword_100B5F778;
      goto LABEL_25;
    }

    return;
  }

  if (!a1)
  {
    goto LABEL_17;
  }

  if (sub_10000C240())
  {
    sub_10000AF54("writeVoiceSettingCb");
    v11 = sub_10000C050(0x2Cu);
    if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
    {
      sub_100812934();
    }
  }

  byte_100B5F772 = 0;
  v12 = off_100B5F780;
  if (off_100B5F780)
  {
    v13 = qword_100B5F778;
LABEL_25:
    v12(v8, v13);
  }
}

void sub_1002456E0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  if (byte_100B5F772 != 1)
  {
    if (sub_10000C240())
    {
      sub_10000AF54("writeNumBroadcastRetransmissionsCb - orphan callback");
      v10 = sub_10000C050(0x2Cu);
      if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
      {
        sub_10080F7A0();
      }
    }

    return;
  }

  v8 = a1;
  if (a1 == 628)
  {
    goto LABEL_17;
  }

  if ((a1 - 701) <= 0x44)
  {
    if (sub_10000C240())
    {
      sub_10000AF54("Write_Num_Broadcast_Retransmissions, ignoring error");
      v9 = sub_10000C050(0x2Cu);
      if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
      {
        sub_100812934();
      }
    }

    dword_100B5F774 = v8;
LABEL_17:
    v14 = sub_100018960(89, sub_1002458CC, a3, a4, a5, a6, a7, a8, *(qword_100B5F778 + 15));
    if (!v14)
    {
      return;
    }

    v8 = v14;
    if (v14 == 628)
    {
      sub_1002458CC(628, v15, v16, v17, v18, v19, v20, v21);
      return;
    }

    if (sub_10000C240())
    {
      sub_10000AF54("OI_HCICMD_WriteHoldModeActivity");
      v22 = sub_10000C050(0x2Cu);
      if (os_log_type_enabled(v22, OS_LOG_TYPE_ERROR))
      {
        sub_100812934();
      }
    }

    byte_100B5F772 = 0;
    v12 = off_100B5F780;
    if (off_100B5F780)
    {
      v13 = qword_100B5F778;
      goto LABEL_25;
    }

    return;
  }

  if (!a1)
  {
    goto LABEL_17;
  }

  if (sub_10000C240())
  {
    sub_10000AF54("writeNumBroadcastRetransmissionsCb");
    v11 = sub_10000C050(0x2Cu);
    if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
    {
      sub_100812934();
    }
  }

  byte_100B5F772 = 0;
  v12 = off_100B5F780;
  if (off_100B5F780)
  {
    v13 = qword_100B5F778;
LABEL_25:
    v12(v8, v13);
  }
}

void sub_1002458CC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  if (byte_100B5F772 != 1)
  {
    if (sub_10000C240())
    {
      sub_10000AF54("writeHoldModeActivityCb - orphan callback");
      v10 = sub_10000C050(0x2Cu);
      if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
      {
        sub_10080F7A0();
      }
    }

    return;
  }

  v8 = a1;
  if (a1 == 628)
  {
    goto LABEL_17;
  }

  if ((a1 - 701) <= 0x44)
  {
    if (sub_10000C240())
    {
      sub_10000AF54("Write_Hold_Mode_Activity, ignoring error");
      v9 = sub_10000C050(0x2Cu);
      if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
      {
        sub_100812934();
      }
    }

    dword_100B5F774 = v8;
LABEL_17:
    v14 = sub_100018960(92, sub_100245AB8, a3, a4, a5, a6, a7, a8, *(qword_100B5F778 + 16));
    if (!v14)
    {
      return;
    }

    v8 = v14;
    if (v14 == 628)
    {
      sub_100245AB8(628, v15, v16, v17, v18, v19, v20, v21);
      return;
    }

    if (sub_10000C240())
    {
      sub_10000AF54("OI_HCICMD_WriteSCOFlowControlEnable");
      v22 = sub_10000C050(0x2Cu);
      if (os_log_type_enabled(v22, OS_LOG_TYPE_ERROR))
      {
        sub_100812934();
      }
    }

    byte_100B5F772 = 0;
    v12 = off_100B5F780;
    if (off_100B5F780)
    {
      v13 = qword_100B5F778;
      goto LABEL_25;
    }

    return;
  }

  if (!a1)
  {
    goto LABEL_17;
  }

  if (sub_10000C240())
  {
    sub_10000AF54("writeHoldModeActivityCb");
    v11 = sub_10000C050(0x2Cu);
    if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
    {
      sub_100812934();
    }
  }

  byte_100B5F772 = 0;
  v12 = off_100B5F780;
  if (off_100B5F780)
  {
    v13 = qword_100B5F778;
LABEL_25:
    v12(v8, v13);
  }
}

void sub_100245AB8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  if (byte_100B5F772 == 1)
  {
    if (a1)
    {
      if (a1 != 628)
      {
        if (sub_10000C240())
        {
          sub_10000AF54("Write_Sco_Flow_Control_Enable failed, ignoring error");
          v8 = sub_10000C050(0x2Cu);
          if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
          {
            sub_100812934();
          }
        }
      }
    }

    v9 = sub_100018960(102, sub_100245C2C, a3, a4, a5, a6, a7, a8, *(qword_100B5F778 + 17));
    if (v9)
    {
      v17 = v9;
      if (v9 == 628)
      {
        sub_100245C2C(628, v10, v11, v12, v13, v14, v15, v16);
      }

      else
      {
        if (sub_10000C240())
        {
          sub_10000AF54("OI_HCICMD_WritePageScanPeriodMode");
          v19 = sub_10000C050(0x2Cu);
          if (os_log_type_enabled(v19, OS_LOG_TYPE_ERROR))
          {
            sub_100812934();
          }
        }

        byte_100B5F772 = 0;
        if (off_100B5F780)
        {
          off_100B5F780(v17, qword_100B5F778);
        }
      }
    }
  }

  else if (sub_10000C240())
  {
    sub_10000AF54("writeSCOFlowControlEnableCb - orphan callback");
    v18 = sub_10000C050(0x2Cu);
    if (os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
    {
      sub_10080F7A0();
    }
  }
}

void sub_100245C2C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  if (byte_100B5F772 != 1)
  {
    if (sub_10000C240())
    {
      sub_10000AF54("writePageScanPeriodModeCb - orphan callback");
      v10 = sub_10000C050(0x2Cu);
      if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
      {
        sub_10080F7A0();
      }
    }

    return;
  }

  v8 = a1;
  if (a1 == 628)
  {
    goto LABEL_17;
  }

  if ((a1 - 701) <= 0x44)
  {
    if (sub_10000C240())
    {
      sub_10000AF54("Write_Page_Scan_Period_Mode, ignoring error");
      v9 = sub_10000C050(0x2Cu);
      if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
      {
        sub_100812934();
      }
    }

    dword_100B5F774 = v8;
LABEL_17:
    v14 = sub_100018960(107, sub_100245E18, a3, a4, a5, a6, a7, a8, *(qword_100B5F778 + 18));
    if (!v14)
    {
      return;
    }

    v8 = v14;
    if (v14 == 628)
    {
      sub_100245E18(628, v15, v16, v17, v18, v19, v20, v21);
      return;
    }

    if (sub_10000C240())
    {
      sub_10000AF54("OI_HCICMD_WriteInquiryScanType");
      v22 = sub_10000C050(0x2Cu);
      if (os_log_type_enabled(v22, OS_LOG_TYPE_ERROR))
      {
        sub_100812934();
      }
    }

    byte_100B5F772 = 0;
    v12 = off_100B5F780;
    if (off_100B5F780)
    {
      v13 = qword_100B5F778;
      goto LABEL_25;
    }

    return;
  }

  if (!a1)
  {
    goto LABEL_17;
  }

  if (sub_10000C240())
  {
    sub_10000AF54("writePageScanPeriodModeCb");
    v11 = sub_10000C050(0x2Cu);
    if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
    {
      sub_100812934();
    }
  }

  byte_100B5F772 = 0;
  v12 = off_100B5F780;
  if (off_100B5F780)
  {
    v13 = qword_100B5F778;
LABEL_25:
    v12(v8, v13);
  }
}

void sub_100245E18(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  if (byte_100B5F772 != 1)
  {
    if (sub_10000C240())
    {
      sub_10000AF54("writeInquiryScanTypeCb - orphan callback");
      v10 = sub_10000C050(0x2Cu);
      if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
      {
        sub_10080F7A0();
      }
    }

    return;
  }

  v8 = a1;
  if (a1 == 628)
  {
    goto LABEL_17;
  }

  if ((a1 - 701) <= 0x44)
  {
    if (sub_10000C240())
    {
      sub_10000AF54("Write_Inquiry_Scan_Type, ignoring error");
      v9 = sub_10000C050(0x2Cu);
      if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
      {
        sub_100812934();
      }
    }

    dword_100B5F774 = v8;
LABEL_17:
    v14 = sub_100018960(109, sub_100246004, a3, a4, a5, a6, a7, a8, *(qword_100B5F778 + 19));
    if (!v14)
    {
      return;
    }

    v8 = v14;
    if (v14 == 628)
    {
      sub_100246004(628, v15, v16, v17, v18, v19, v20, v21);
      return;
    }

    if (sub_10000C240())
    {
      sub_10000AF54("OI_HCICMD_WriteInquiryMode");
      v22 = sub_10000C050(0x2Cu);
      if (os_log_type_enabled(v22, OS_LOG_TYPE_ERROR))
      {
        sub_100812934();
      }
    }

    byte_100B5F772 = 0;
    v12 = off_100B5F780;
    if (off_100B5F780)
    {
      v13 = qword_100B5F778;
      goto LABEL_25;
    }

    return;
  }

  if (!a1)
  {
    goto LABEL_17;
  }

  if (sub_10000C240())
  {
    sub_10000AF54("writeInquiryScanTypeCb");
    v11 = sub_10000C050(0x2Cu);
    if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
    {
      sub_100812934();
    }
  }

  byte_100B5F772 = 0;
  v12 = off_100B5F780;
  if (off_100B5F780)
  {
    v13 = qword_100B5F778;
LABEL_25:
    v12(v8, v13);
  }
}

void sub_100246004(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  if (byte_100B5F772 != 1)
  {
    if (sub_10000C240())
    {
      sub_10000AF54("writeInquiryModeCb - orphan callback");
      v10 = sub_10000C050(0x2Cu);
      if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
      {
        sub_10080F7A0();
      }
    }

    return;
  }

  v8 = a1;
  if (a1 == 628)
  {
    goto LABEL_17;
  }

  if ((a1 - 701) <= 0x44)
  {
    if (sub_10000C240())
    {
      sub_10000AF54("Write_Inquiry_Mode, ignoring error");
      v9 = sub_10000C050(0x2Cu);
      if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
      {
        sub_100812934();
      }
    }

    dword_100B5F774 = v8;
LABEL_17:
    v14 = sub_100018960(111, sub_1002461F0, a3, a4, a5, a6, a7, a8, *(qword_100B5F778 + 20));
    if (!v14)
    {
      return;
    }

    v8 = v14;
    if (v14 == 628)
    {
      sub_1002461F0(628, v15, v16, v17, v18, v19, v20, v21);
      return;
    }

    if (sub_10000C240())
    {
      sub_10000AF54("OI_HCICMD_WritePageScanType");
      v22 = sub_10000C050(0x2Cu);
      if (os_log_type_enabled(v22, OS_LOG_TYPE_ERROR))
      {
        sub_100812934();
      }
    }

    byte_100B5F772 = 0;
    v12 = off_100B5F780;
    if (off_100B5F780)
    {
      v13 = qword_100B5F778;
      goto LABEL_25;
    }

    return;
  }

  if (!a1)
  {
    goto LABEL_17;
  }

  if (sub_10000C240())
  {
    sub_10000AF54("writeInquiryModeCb");
    v11 = sub_10000C050(0x2Cu);
    if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
    {
      sub_100812934();
    }
  }

  byte_100B5F772 = 0;
  v12 = off_100B5F780;
  if (off_100B5F780)
  {
    v13 = qword_100B5F778;
LABEL_25:
    v12(v8, v13);
  }
}

void sub_1002461F0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  if (byte_100B5F772 != 1)
  {
    if (sub_10000C240())
    {
      sub_10000AF54("writePageScanTypeCb - orphan callback");
      v10 = sub_10000C050(0x2Cu);
      if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
      {
        sub_10080F7A0();
      }
    }

    return;
  }

  v8 = a1;
  if (a1 == 628)
  {
    goto LABEL_17;
  }

  if ((a1 - 701) <= 0x44)
  {
    if (sub_10000C240())
    {
      sub_10000AF54("Write_Page_Scan_Type, ignoring error");
      v9 = sub_10000C050(0x2Cu);
      if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
      {
        sub_100812934();
      }
    }

    dword_100B5F774 = v8;
LABEL_17:
    v14 = sub_100018960(113, sub_1002463DC, a3, a4, a5, a6, a7, a8, *(qword_100B5F778 + 21));
    if (!v14)
    {
      return;
    }

    v8 = v14;
    if (v14 == 628)
    {
      sub_1002463DC(628);
      return;
    }

    if (sub_10000C240())
    {
      sub_10000AF54("OI_HCICMD_WriteAfhChannelAssessmentMode");
      v15 = sub_10000C050(0x2Cu);
      if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
      {
        sub_100812934();
      }
    }

    byte_100B5F772 = 0;
    v12 = off_100B5F780;
    if (off_100B5F780)
    {
      v13 = qword_100B5F778;
      goto LABEL_25;
    }

    return;
  }

  if (!a1)
  {
    goto LABEL_17;
  }

  if (sub_10000C240())
  {
    sub_10000AF54("writePageScanTypeCb");
    v11 = sub_10000C050(0x2Cu);
    if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
    {
      sub_100812934();
    }
  }

  byte_100B5F772 = 0;
  v12 = off_100B5F780;
  if (off_100B5F780)
  {
    v13 = qword_100B5F778;
LABEL_25:
    v12(v8, v13);
  }
}

void sub_1002463DC(uint64_t result)
{
  if (byte_100B5F772 == 1)
  {
    v1 = result;
    if (result == 628)
    {
      v1 = 0;
    }

    else
    {
      if ((result - 701) <= 0x44)
      {
        if (sub_10000C240())
        {
          sub_10000AF54("Write_AFH_Channel_Assessment_Mode, ignoring error");
          v4 = sub_10000C050(0x2Cu);
          if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
          {
            sub_100812934();
          }
        }

        dword_100B5F774 = v1;
        v2 = 1;
        v1 = 0;
        goto LABEL_18;
      }

      if (result)
      {
        if (sub_10000C240())
        {
          sub_10000AF54("writeAfhChannelAssessmentModeCb");
          v5 = sub_10000C050(0x2Cu);
          if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
          {
            sub_100812934();
          }
        }

        v2 = 0;
        goto LABEL_18;
      }
    }

    v2 = 1;
LABEL_18:
    byte_100B5F772 = 0;
    if (off_100B5F780)
    {
      if (v2)
      {
        v6 = dword_100B5F774;
      }

      else
      {
        v6 = v1;
      }

      off_100B5F780(v6, qword_100B5F778);
    }

    return;
  }

  if (sub_10000C240())
  {
    sub_10000AF54("writeAfhChannelAssessmentModeCb - orphan callback");
    v3 = sub_10000C050(0x2Cu);
    if (os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
    {
      sub_10080F7A0();
    }
  }
}

void sub_100246544(uint64_t result)
{
  v1 = byte_100B5F7DD;
  if (byte_100B5F772 & 1 | (byte_100B5F7A8 != 0) | (byte_100B5F7B8 != 0) | byte_100B5F7DC & 1 | (byte_100B5F7DD != 0) && byte_100B5F7F5)
  {
    if (--byte_100B5F7F5)
    {
      return;
    }

    v2 = result;
    if (byte_100B5F7B8 == 1)
    {
      v3 = byte_100B5F7DD;
      if (byte_100B5F800)
      {
        byte_100B5F800 &= 0x7Eu;
        if (result)
        {
LABEL_22:
          sub_10024675C(result);
          v3 = byte_100B5F7DD;
          goto LABEL_23;
        }

        v4 = dword_100B5F7EC;
        if (dword_100B5F7C8 != 2)
        {
          if (dword_100B5F7C8 == 1)
          {
            result = 0;
            v5 = dword_100B5F7EC;
            v4 = dword_100B5F7EC | 0x2000;
LABEL_20:
            if (v4 != v5)
            {
              dword_100B5F7EC = v4;
              result = sub_100243254();
            }

            goto LABEL_22;
          }

          if (dword_100B5F7C8)
          {
            if (sub_10000C240())
            {
              sub_10000AF54("invalid discoSettingContext %d", dword_100B5F7C8);
              v7 = sub_10000C050(0x2Cu);
              if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
              {
                sub_10080F7A0();
              }
            }

            sub_1000D660C();
            v5 = dword_100B5F7EC;
            result = 105;
            goto LABEL_20;
          }
        }

        result = 0;
        v5 = dword_100B5F7EC;
        v4 = dword_100B5F7EC & 0xFFFFDFFF;
        goto LABEL_20;
      }
    }

    else
    {
      v3 = byte_100B5F7DD;
    }

LABEL_23:
    if (v3 == 1 && (byte_100B5F800 & 2) != 0 && v1 == 1)
    {
      byte_100B5F800 &= 0x7Du;
      byte_100B5F7DD = 0;
      off_100B5F7E0(v2, byte_100B5F801 != 0);
    }

    return;
  }

  if (sub_10000C240())
  {
    sub_10000AF54("writeScanEnableCb - orphan callback");
    v6 = sub_10000C050(0x2Cu);
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      sub_10080F7A0();
    }
  }
}

uint64_t sub_10024675C(uint64_t a1)
{
  if (!byte_100B5F7B8)
  {
    sub_1000D660C();
  }

  v2 = off_100B5F7D0;
  if (!off_100B5F7D0)
  {
    sub_1000D660C();
    v2 = off_100B5F7D0;
  }

  byte_100B5F7B8 = 0;

  return v2(a1);
}

void sub_1002467C0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  dword_100B5F7D8 = 0;
  if (byte_100B5F7B8)
  {
    sub_1000D660C();
    if (byte_100B5F7B8)
    {
      if (sub_10000C240())
      {
        sub_10000AF54("discoLimitedTimeoutCb, !discoWriteSettingsState");
        v8 = sub_10000C050(0x2Cu);
        if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
        {
          sub_10080F7A0();
        }
      }

      return;
    }
  }

  v9 = byte_100B5F7F3 & 0xFE;
  byte_100B5F7F3 &= ~1u;
  if (byte_100B5F7F2 == 1)
  {
LABEL_12:
    dword_100B5F7C8 = 0;
    byte_100B5F7B8 = 1;
    off_100B5F7D0 = qword_100B5F7C0;
    byte_100B5F800 |= 1u;
    return;
  }

  if (!sub_100018960(71, sub_100246544, a3, a4, a5, a6, a7, a8, v9))
  {
    ++byte_100B5F7F5;
    goto LABEL_12;
  }

  if (sub_10000C240())
  {
    sub_10000AF54("OI_HCICMD_WriteScanEnable");
    v10 = sub_10000C050(0x2Cu);
    if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
    {
      sub_100812934();
    }
  }
}

void sub_10024690C(uint64_t a1, unsigned __int16 *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v16 = sub_10000C240();
  if (a2)
  {
    if (v16)
    {
      v17 = *(a2 + 144) ? "peripheral" : "central";
      sub_10000AF54("_qosSetupCompleteCB: status %!, role %s, lmhandle 0x%x, retries %d, flags 0x%x, serviceType 0x%x, tokenRate 0x%x, peakBandwidth 0x%x, latency 0x%x, delayVariation 0x%x", a1, v17, *a2, *(a2 + 154), a3, a4, a5, a6, a7, a8);
      v18 = sub_10000C050(0x2Cu);
      if (os_log_type_enabled(v18, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 136446210;
        v23 = sub_10000C0FC();
        _os_log_impl(&_mh_execute_header, v18, OS_LOG_TYPE_DEFAULT, " %{public}s", buf, 0xCu);
      }
    }

    if (!a1 && a7 >= 0x4E21 && *(a2 + 144) == 1)
    {
      v19 = ++*(a2 + 154);
      if (v19 > 2)
      {
        if (sub_10000C240())
        {
          sub_10000AF54("QOS setup retry limited exceeded");
          v21 = sub_10000C050(0x2Cu);
          if (os_log_type_enabled(v21, OS_LOG_TYPE_ERROR))
          {
            sub_10080F604();
          }
        }
      }

      else
      {
        sub_10024ADF4(a2);
      }
    }
  }

  else if (v16)
  {
    sub_10000AF54("qosSetupCompleteCB connection was released, exiting");
    v20 = sub_10000C050(0x2Cu);
    if (os_log_type_enabled(v20, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 136446210;
      v23 = sub_10000C0FC();
      _os_log_impl(&_mh_execute_header, v20, OS_LOG_TYPE_DEFAULT, " %{public}s", buf, 0xCu);
    }
  }
}

uint64_t sub_100246B50(uint64_t a1, int a2)
{
  if (!a1)
  {
    return 101;
  }

  v4 = 0;
  result = sub_10023DB58(a1, &v4);
  if (!result)
  {
    *(v4 + 142) = (858993460 * (8 * a2)) >> 32;
  }

  return result;
}

uint64_t sub_100246BB4(uint64_t a1, char a2)
{
  if (!a1)
  {
    return 101;
  }

  v4 = 0;
  result = sub_10023DB58(a1, &v4);
  if (!result)
  {
    *(v4 + 196) = a2;
  }

  return result;
}

uint64_t sub_100246C04(uint64_t a1, char a2)
{
  if (!a1)
  {
    return 101;
  }

  v4 = 0;
  result = sub_10023DB58(a1, &v4);
  if (!result)
  {
    *(v4 + 328) = a2;
  }

  return result;
}

uint64_t sub_100246C54(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (*(a2 + 152) < 0)
  {
    return 0;
  }

  v3 = a3;
  v6 = *(a2 + 152);
  if (v6 >= 2)
  {
    if (v6 == 2)
    {
      result = sub_1002418E0(sub_100247EC4, 0);
      if (result == 1316 || !result)
      {
        *(a2 + 213) = 1;
        *(a2 + 216) = a1;
        *(a2 + 276) = v3;
        result = sub_1000D6178(0x2Au, v8, v9, v10, v11, v12, v13, v14, a2);
        if (result)
        {
          *(a2 + 213) = 0;
        }

        else
        {
          *(a2 + 152) |= 0x80u;
        }
      }
    }

    else
    {
      return 101;
    }
  }

  else
  {

    return sub_100247CAC(a1, a2, a3);
  }

  return result;
}

void sub_100246D3C(int a1, uint64_t a2, int a3)
{
  v5 = sub_1000E1FE8(a2);
  if (!v5)
  {
    if (sub_10000C240())
    {
      sub_10000AF54("gentlyCentralrRsCb Orphaned!  %!", 105);
      v16 = sub_10000C050(0x2Cu);
      if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
      {
        sub_1000E09C0();
      }
    }

    goto LABEL_19;
  }

  v12 = v5;
  if (a3)
  {
    *(v5 + 195) = 1;
    *(v5 + 320) = a1;
    v13 = sub_10024ADB8(sub_10024690C, 0);
    if (v13)
    {
      v14 = v13;
      if (sub_10000C240())
      {
        sub_10000AF54("OI_HCIAPI_RegisterQosCallback failed with %!", v14);
        v15 = sub_10000C050(0x2Cu);
        if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
        {
          sub_10080F604();
        }
      }
    }

    else
    {
      *(v12 + 154) = 0;
      sub_10024ADF4(v12);
    }
  }

  else
  {
    *(v5 + 195) = 0;
    *(v5 + 320) = 0xFFFF;
    if (*(v5 + 199) != 1 || (v17 = sub_1000BBF7C(), sub_1000C0E38() + v17 >= 2))
    {
      v18 = *(v12 + 138) & 0xFFFE;
      *(v12 + 138) = v18;
      v25 = v18;
      v19 = sub_100018960(49, nullsub_142, v6, v7, v8, v9, v10, v11, v12);
      if (v19)
      {
        v20 = v19;
        if (sub_10000C240())
        {
          sub_10000AF54("Could not write link settings to Central only %!", v20, v25);
          v21 = sub_10000C050(0x2Cu);
          if (os_log_type_enabled(v21, OS_LOG_TYPE_ERROR))
          {
            sub_1000E09C0();
          }
        }
      }
    }
  }

  if (!*(v12 + 148))
  {
    v22 = sub_10023B840(v12);
    if (v22)
    {
      v23 = v22;
      if (sub_10000C240())
      {
        sub_10000AF54("OI_DevMgr_aclActivity failed with %!", v23);
        v24 = sub_10000C050(0x2Cu);
        if (os_log_type_enabled(v24, OS_LOG_TYPE_ERROR))
        {
          sub_1000E09C0();
        }
      }
    }
  }

  if (!sub_1000DE128(v12))
  {
LABEL_19:
    byte_100BCDFD0 = 1;
  }
}

uint64_t sub_100246F98(uint64_t a1, uint64_t a2, char a3, __int16 a4, int a5)
{
  if (!xmmword_100BCE2E0)
  {
    return 103;
  }

  if (a1 && a2)
  {
    v10 = sub_1000E1FE8(a2);
    if (v10)
    {
      v14[0] = 0;
      v15 = 0u;
      v13[0] = 0;
      v14[1] = a1;
      DWORD1(v15) = a5;
      BYTE2(v15) = a3;
      LOWORD(v15) = a4;
      LODWORD(v14[0]) = *a2;
      WORD2(v14[0]) = *(a2 + 4);
      if (((2684355 * (*(v10 + 140) + 1599)) >> 32) <= 2)
      {
        v11 = 2;
      }

      else
      {
        v11 = (2684355 * (*(v10 + 140) + 1599)) >> 32;
      }

      sub_100016250(&v15 + 8);
      DWORD2(v15) += v11;
      v13[1] = v14;
      LOWORD(v13[0]) = 32;
      return sub_1000228C0(sub_1002470B4, v13, 0);
    }

    else
    {
      return 1301;
    }
  }

  else
  {
    sub_1000D660C();
    return 101;
  }
}

uint64_t sub_1002470B4(uint64_t a1)
{
  v2 = *(a1 + 8);
  v3 = sub_1000E1FE8(v2);
  if (!v3)
  {
    if (sub_10000C240())
    {
      v6 = 1301;
      sub_10000AF54("deferredEnforceLinkPolicy orphaned %!", 1301);
      v7 = sub_10000C050(0x2Cu);
      if (!os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
      {
        return (*(v2 + 8))(v6, v2, *(v2 + 20));
      }

      sub_1000E09C0();
    }

    v6 = 1301;
    return (*(v2 + 8))(v6, v2, *(v2 + 20));
  }

  v4 = v3;
  if (!*(v3 + 54))
  {
    v8 = sub_100007618(0x10uLL, 0x1080040E9112DBDuLL);
    *(v4 + 128) = v8;
    if (v8)
    {
      *v8 = *(v2 + 8);
      if (*(*(v4 + 128) + 10) && *(v4 + 144))
      {
        result = sub_100246C54(sub_100248094, v4, 0);
        if (!result)
        {
          return result;
        }

        v6 = result;
        if (sub_10000C240())
        {
          sub_10000AF54("startRoleSwitch failed %!", v6);
          v10 = sub_10000C050(0x2Cu);
          if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
          {
            sub_1000E09C0();
          }
        }

        goto LABEL_28;
      }

      return sub_100248158(v4);
    }

    if (sub_10000C240())
    {
      v6 = 106;
      sub_10000AF54("OI_Malloc failed %!", 106);
      v11 = sub_10000C050(0x2Cu);
      if (!os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
      {
        goto LABEL_28;
      }

      sub_1000E09C0();
    }

    v6 = 106;
LABEL_28:
    v12 = *(v4 + 128);
    if (v12)
    {
      sub_10000C1E8(v12);
      *(v4 + 128) = 0;
    }

    return (*(v2 + 8))(v6, v2, *(v2 + 20));
  }

  if (sub_100306E3C(v2 + 24))
  {
    if (sub_10000C240())
    {
      sub_10000AF54("Enforce policy on %: deferral timed out, giving up", v4 + 48);
      v5 = sub_10000C050(0x2Cu);
      if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
      {
        sub_1000E09C0();
      }
    }

    v6 = 118;
    goto LABEL_28;
  }

  result = sub_10002195C(sub_1002470B4, a1, 1, 0);
  v6 = result;
  if (result)
  {
    goto LABEL_28;
  }

  return result;
}

void sub_100247310(uint64_t a1, uint64_t a2, int a3)
{
  if (!xmmword_100BCE2E0)
  {
    return;
  }

  if (a1)
  {
    if (sub_10000C240())
    {
      sub_10000AF54("OI_HCIEventHandler_RoleChange: %! (%:)", a1, a2);
      v5 = sub_10000C050(0x2Cu);
      if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
      {
        sub_1000E09C0();
      }
    }

    v13 = sub_1000E1FE8(a2);
    if (!v13)
    {
      goto LABEL_18;
    }
  }

  else
  {
    v15 = sub_1000E1FE8(a2);
    if (!v15)
    {
LABEL_18:
      if (sub_10000C240())
      {
        sub_10000AF54("OI_HCIEventHandler_RoleChange, no connection to %:", a2);
        v18 = sub_10000C050(0x2Cu);
        if (os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
        {
          sub_1000E09C0();
        }
      }

      return;
    }

    v13 = v15;
    *(v15 + 144) = a3;
    sub_10023D82C();
    if (!a3 && sub_1000D60EC(*(v13 + 54)))
    {
      sub_10024756C(v13, *(v13 + 140));
    }
  }

  if (*(v13 + 54) != 5)
  {
    return;
  }

  v16 = *(v13 + 120);
  if (!v16)
  {
    sub_1000D660C();
    v16 = *(v13 + 120);
  }

  v17 = *v16;
  if (v17 <= 1)
  {
    if (v17)
    {
      return;
    }

    v20 = v13;
    v21 = a1;
LABEL_28:
    sub_100247640(v20, v21);
    return;
  }

  if (v17 != 2)
  {
    if (v17 == 3)
    {
      return;
    }

    sub_1000D660C();
    if (sub_10000C240())
    {
      sub_10000AF54("OI_HCIEventHandler_RoleChange %!", 105);
      v19 = sub_10000C050(0x2Cu);
      if (os_log_type_enabled(v19, OS_LOG_TYPE_ERROR))
      {
        sub_1000E09C0();
      }
    }

    v20 = v13;
    v21 = 105;
    goto LABEL_28;
  }

  v22 = sub_1000D6178(0x10u, v6, v7, v8, v9, v10, v11, v12, v13);
  if (v22)
  {
    v23 = v22;
    if (sub_10000C240())
    {
      sub_10000AF54("OI_HCICMD_SetConnectionEncryption failed %!, forcing disconnect", v23, 1);
      v24 = sub_10000C050(0x2Cu);
      if (os_log_type_enabled(v24, OS_LOG_TYPE_ERROR))
      {
        sub_1000E09C0();
      }
    }

    sub_100247640(v13, v23);
    sub_10023BA68(a2, 14);
  }

  else
  {
    **(v13 + 120) = 3;
  }
}

uint64_t sub_10024756C(uint64_t a1, int a2)
{
  if (!sub_1000B8B5C(a1))
  {
    return 1301;
  }

  if (sub_10023B690())
  {
    LODWORD(v10) = 800;
  }

  else
  {
    LODWORD(v10) = a2;
  }

  if (v10 <= *(a1 + 142))
  {
    v10 = *(a1 + 142);
  }

  else
  {
    v10 = v10;
  }

  *(a1 + 140) = v10;
  if (*(a1 + 144))
  {
    return 0;
  }

  v14 = v10;
  v11 = sub_100018960(97, sub_1002476F0, v4, v5, v6, v7, v8, v9, a1);
  if (v11)
  {
    if (sub_10000C240())
    {
      sub_10000AF54("OI_HCICMD_WriteLinkSupervisionTimeout failed %!", v11, v14);
      v13 = sub_10000C050(0x2Cu);
      if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
      {
        sub_1000E09C0();
      }
    }
  }

  return v11;
}

void sub_100247640(uint64_t a1, uint64_t a2)
{
  if (!sub_1000B8B5C(a1))
  {
    sub_1000D660C();
  }

  v4 = *(a1 + 120);
  if (!v4)
  {
    sub_1000D660C();
    v4 = *(a1 + 120);
  }

  v7 = v4[1];
  sub_10000C1E8(v4);
  *(a1 + 120) = 0;
  v5 = *(a1 + 54);
  if ((v5 - 6) >= 2)
  {
    if (v5 == 5)
    {
      *(a1 + 54) = 0;
    }

    else
    {
      sub_1000D660C();
    }
  }

  if (v7)
  {
    v6 = *(a1 + 144);

    v7(a2, a1 + 48, v6);
  }
}

void sub_1002476F0(uint64_t result)
{
  if (result && sub_10000C240())
  {
    sub_10000AF54("Failed to write LinkTO %!", result);
    v2 = sub_10000C050(0x2Cu);
    if (os_log_type_enabled(v2, OS_LOG_TYPE_ERROR))
    {
      sub_1008146C8();
    }
  }
}

void sub_100247768(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v29 = a2;
  if (xmmword_100BCE2E0)
  {
    if (*(a2 + 54) == 5)
    {
      v11 = *(a2 + 120);
      if (!v11)
      {
        sub_1000D660C();
        v11 = *(a2 + 120);
      }

      v12 = *v11;
      if (v12 <= 1)
      {
        if (!*v11)
        {
          return;
        }

        if (v12 == 1)
        {
          if (!a1 && !a3)
          {
            v13 = v11[1];
            if (*(a2 + 144) == v13)
            {
              v14 = sub_1000D6178(0x10u, a2, a3, a4, a5, a6, a7, a8, a2);
              if (v14)
              {
                v15 = v14;
                if (!sub_10000C240())
                {
                  goto LABEL_41;
                }

                sub_10000AF54("OI_HCICMD_SetConnectionEncryption failed %!", v15, 1);
                v16 = sub_10000C050(0x2Cu);
                if (!os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
                {
                  goto LABEL_41;
                }

                goto LABEL_40;
              }

              v25 = *(a2 + 120);
              v26 = 3;
            }

            else
            {
              v27 = v13;
              v23 = sub_1000D6178(0x2Fu, a2, a3, a4, a5, a6, a7, a8, a2 + 48);
              if (v23)
              {
                v15 = v23;
                if (!sub_10000C240())
                {
                  goto LABEL_41;
                }

                sub_10000AF54("OI_HCICMD_SwitchRole failed %!", v15, v27);
                v24 = sub_10000C050(0x2Cu);
                if (!os_log_type_enabled(v24, OS_LOG_TYPE_ERROR))
                {
                  goto LABEL_41;
                }

LABEL_40:
                sub_1000E09C0();
LABEL_41:
                v20 = a2;
                v21 = v15;
                goto LABEL_42;
              }

              v25 = *(a2 + 120);
              v26 = 2;
            }

            *v25 = v26;
            return;
          }

          if (!sub_10000C240() || (sub_10000AF54("Failed to disable encryption %! %:, encrypt = %d", a1, a2 + 48, a3), v22 = sub_10000C050(0x2Cu), !os_log_type_enabled(v22, OS_LOG_TYPE_ERROR)))
          {
LABEL_33:
            v20 = a2;
            v21 = 1335;
LABEL_42:
            sub_100247640(v20, v21);
            return;
          }

LABEL_32:
          sub_1000E09C0();
          goto LABEL_33;
        }

LABEL_26:
        sub_1000D660C();
        if (sub_10000C240())
        {
          sub_10000AF54("OI_HCIEventHandler_RoleChange %!", 105);
          v19 = sub_10000C050(0x2Cu);
          if (os_log_type_enabled(v19, OS_LOG_TYPE_ERROR))
          {
            sub_1000E09C0();
          }
        }

        v20 = a2;
        v21 = 105;
        goto LABEL_42;
      }

      if (v12 == 2)
      {
        return;
      }

      if (v12 != 3)
      {
        goto LABEL_26;
      }

      v17 = *(a2 + 244);
      if (v17)
      {
        sub_10002242C(v17);
        *(a2 + 244) = 0;
      }

      if (!a1 && !a3)
      {
        if (!sub_10000C240())
        {
          goto LABEL_33;
        }

        sub_10000AF54("Failed to re-enable encryption after role switch");
        v18 = sub_10000C050(0x2Cu);
        if (!os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
        {
          goto LABEL_33;
        }

        goto LABEL_32;
      }

      sub_100247640(a2, a1);
    }

    else if (!a3)
    {
      v28[1] = &v29;
      v28[0] = 8;
      sub_10002195C(sub_100247A58, v28, 10, (a2 + 244));
    }
  }
}

void sub_100247A58(uint64_t a1)
{
  v1 = **(a1 + 8);
  if (sub_1000B8B5C(v1))
  {
    if (sub_1002FCEB8(v1))
    {
      *(v1 + 244) = 0;
    }

    else if (sub_1000D6178(0x10u, v2, v3, v4, v5, v6, v7, v8, v1) && sub_10000C240())
    {
      sub_10000AF54("Could not re-enable encryption on the link.");
      v9 = sub_10000C050(0x2Cu);
      if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
      {
        sub_1000E09C0();
      }
    }
  }
}

uint64_t sub_100247AF8(uint64_t a1, uint64_t a2)
{
  if (!sub_1000B8B5C(a1))
  {
    sub_1000D660C();
  }

  v4 = *(a1 + 128);
  if (!v4)
  {
    sub_1000D660C();
    v4 = *(a1 + 128);
  }

  if (!*v4)
  {
    sub_1000D660C();
  }

  v5 = *(a1 + 54);
  if ((v5 - 6) >= 2 && v5 != 0)
  {
    if (v5 == 4)
    {
      *(a1 + 54) = 0;
    }

    else
    {
      sub_1000D660C();
    }
  }

  v7 = *(a1 + 128);
  v10 = *v7;
  v8 = v7[3];
  sub_10000C1E8(v7);
  *(a1 + 128) = 0;

  return v10(a2, a1 + 48, v8);
}

BOOL sub_100247BB4(_BOOL8 result)
{
  v1 = result;
  if (result && (byte_100B5F802 & 1) == 0)
  {
    result = sub_1000DE128(0);
  }

  byte_100B5F802 = v1;
  return result;
}

void sub_100247BFC(uint64_t result, int a2)
{
  v7 = a2;
  v6 = &v7;
  v5 = 4;
  if (result)
  {
    if (*(result + 54) != 5)
    {
      v2 = sub_1000228C0(sub_100246F88, &v5, 0);
      if (v2)
      {
        v3 = v2;
        if (sub_10000C240())
        {
          sub_10000AF54("Gentle Central dispatch failed %!", v3, v5, v6);
          v4 = sub_10000C050(0x2Cu);
          if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
          {
            sub_10080F604();
          }
        }
      }
    }
  }
}

uint64_t sub_100247CAC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (!sub_1000B8B5C(a2))
  {
    sub_1000D660C();
  }

  if (*(a2 + 54))
  {
    sub_1000D660C();
  }

  if (*(a2 + 144) == a3)
  {
    sub_1000D660C();
  }

  if (*(a2 + 120))
  {
    sub_1000D660C();
  }

  v6 = sub_100007618(0x10uLL, 0x1080040EF48E34EuLL);
  *(a2 + 120) = v6;
  if (v6)
  {
    v6[1] = a3;
    *(*(a2 + 120) + 8) = a1;
    if (sub_1002FCEB8(a2) && ((*(qword_100BCDFC8 + 13) & 1) != 0 || (*(a2 + 263) & 4) == 0 || (byte_100BCDFE9 & 4) == 0))
    {
      v14 = sub_1000D6178(0x10u, v7, v8, v9, v10, v11, v12, v13, a2);
      if (!v14)
      {
        *(a2 + 54) = 5;
        **(a2 + 120) = 1;
        return v14;
      }

      if (!sub_10000C240())
      {
        goto LABEL_26;
      }

      sub_10000AF54("OI_HCICMD_SetConnectionEncryption failed %!", v14, 0);
      v15 = sub_10000C050(0x2Cu);
      if (!os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
      {
        goto LABEL_26;
      }

      goto LABEL_25;
    }

    v20 = a3;
    v14 = sub_1000D6178(0x2Fu, v7, v8, v9, v10, v11, v12, v13, a2 + 48);
    if (!v14)
    {
      *(a2 + 54) = 5;
      **(a2 + 120) = 0;
      return v14;
    }

    if (sub_10000C240())
    {
      sub_10000AF54("OI_HCICMD_SwitchRole failed %!", v14, v20);
      v17 = sub_10000C050(0x2Cu);
      if (os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
      {
LABEL_25:
        sub_1000E09C0();
      }
    }
  }

  else
  {
    if (sub_10000C240())
    {
      v14 = 106;
      sub_10000AF54("OI_Malloc failed %!", 106);
      v16 = sub_10000C050(0x2Cu);
      if (!os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
      {
        goto LABEL_26;
      }

      sub_1000E09C0();
    }

    v14 = 106;
  }

LABEL_26:
  v18 = *(a2 + 120);
  if (v18)
  {
    sub_10000C1E8(v18);
  }

  return v14;
}

void sub_100247EC4(uint64_t a1, uint64_t a2, int a3)
{
  if (!a2)
  {
    if (!sub_10000C240())
    {
      return;
    }

    sub_10000AF54("roleChangeCb : NULL address");
    v12 = sub_10000C050(0x2Cu);
    if (!os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
    {
      return;
    }

LABEL_11:
    sub_1000E09C0();
    return;
  }

  v6 = sub_1000E1FE8(a2);
  if (!v6)
  {
    if (!sub_10000C240())
    {
      return;
    }

    sub_10000AF54("roleChangeCb : The connection is gone.");
    v13 = sub_10000C050(0x2Cu);
    if (!os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
    {
      return;
    }

    goto LABEL_11;
  }

  v7 = v6;
  if (*(v6 + 213) != 1)
  {
    return;
  }

  *(v6 + 213) = 0;
  v8 = *(v6 + 216);
  v15 = *(v7 + 216);
  if (a1)
  {
    if (sub_10000C240())
    {
      sub_10000AF54("roleChangeCb : Cound not change mode : %!", a1);
      v9 = sub_10000C050(0x2Cu);
      if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
      {
        sub_1000E09C0();
      }
    }

    v10 = *(v7 + 144);
    v11 = a1;
LABEL_20:
    (v15)(v11, a2, v10);
    return;
  }

  if (a3)
  {
    if (sub_10000C240())
    {
      sub_10000AF54("roleChangeCb : why didn't we unsniff ? We want to change role !");
      v14 = sub_10000C050(0x2Cu);
      if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
      {
        sub_1000E09C0();
      }
    }

    v10 = *(v7 + 144);
    v11 = 0;
    goto LABEL_20;
  }

  if (sub_100247CAC(v8, v7, *(v7 + 276)))
  {

    v15();
  }
}

void sub_100248094(uint64_t a1, uint64_t a2)
{
  v3 = sub_1000E1FE8(a2);
  if (v3)
  {
    if (a1)
    {

      sub_100247AF8(v3, a1);
    }

    else
    {

      sub_100248158(v3);
    }
  }

  else if (sub_10000C240())
  {
    sub_10000AF54("enforcePolicyRsCb Orphaned!  %!", 105);
    v4 = sub_10000C050(0x2Cu);
    if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
    {
      sub_1000E09C0();
    }
  }
}

uint64_t sub_100248158(uint64_t a1)
{
  if (!sub_1000B8B5C(a1))
  {
    sub_1000D660C();
  }

  if (*(a1 + 54))
  {
    sub_1000D660C();
  }

  v8 = *(a1 + 128);
  if (!v8)
  {
    sub_1000D660C();
    v8 = *(a1 + 128);
  }

  v9 = *(a1 + 138);
  v10 = *(v8 + 8) & 6 | ((*(v8 + 10) == 0) & v9);
  *(a1 + 54) = 4;
  if (v10 == v9)
  {

    return sub_100247AF8(a1, 0);
  }

  else
  {
    *(a1 + 138) = v10;
    v14 = v10;
    result = sub_100018960(49, sub_10024828C, v2, v3, v4, v5, v6, v7, a1);
    if (result)
    {
      v12 = result;
      *(a1 + 138) = -1;
      if (sub_10000C240())
      {
        sub_10000AF54("OI_HCICMD_WriteLinkPolicySettings failed %!", v12, v14);
        v13 = sub_10000C050(0x2Cu);
        if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
        {
          sub_1000E09C0();
        }
      }

      return sub_100247AF8(a1, v12);
    }
  }

  return result;
}

void sub_10024828C(uint64_t a1, uint64_t a2)
{
  if (a1)
  {
    if (sub_10000C240() && (sub_10000AF54("enforcementWriteLinkPolicyCb failed %!", a1), v4 = sub_10000C050(0x2Cu), os_log_type_enabled(v4, OS_LOG_TYPE_ERROR)))
    {
      sub_1000E09C0();
      if (a2)
      {
        goto LABEL_5;
      }
    }

    else if (a2)
    {
LABEL_5:
      *(a2 + 138) = -1;
LABEL_7:
      sub_100247AF8(a2, a1);
      return;
    }
  }

  else if (a2)
  {
    goto LABEL_7;
  }

  if (sub_10000C240())
  {
    sub_10000AF54("enforcementWriteLinkPolicyCb orphaned!  %!", 1301);
    v5 = sub_10000C050(0x2Cu);
    if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
    {
      sub_1000E09C0();
    }
  }
}

uint64_t sub_100248374(uint64_t a1, uint64_t a2)
{
  if (!xmmword_100BCE2E0)
  {
    return 103;
  }

  if (!a1)
  {
    return 101;
  }

  if (!a2)
  {
    v4 = &qword_100B5F808;
    if (qword_100B5F808)
    {
      return 1327;
    }

LABEL_10:
    result = 0;
    *v4 = a1;
    return result;
  }

  v3 = sub_1000E1FE8(a2);
  if (v3)
  {
    v4 = (v3 + 80);
    if (*(v3 + 80))
    {
      return 1327;
    }

    goto LABEL_10;
  }

  return 1301;
}