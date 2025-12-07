uint64_t sub_297EAFEC4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5)
{
  v13 = 0;
  v14 = a1;
  sub_297E4E1B4(0, &v14, 4, 5u, "phLibNfc_SM_IoctlGetRfPropConfigTrans");
  sub_297E4F0E8(v14, &v13);
  if (a4 && a5 && (v7 = v13) != 0)
  {
    *(v13 + 3584) = *a5;
    *(v7 + 3568) = *(a4 + 8);
    *(v7 + 3576) = *a4;
    *(v7 + 3593) = 1;
    *(v7 + 2960) = gphLibNfc_IoctlGetRfConfig;
    *(v7 + 2952) = 0;
    *(v7 + 2954) = 0;
    v8 = gphLibNfc_IoctlGetRfConfig[0];
    if (gphLibNfc_IoctlGetRfConfig[0])
    {
      v8 = 0;
      v9 = &qword_2A1A90968;
      do
      {
        ++v8;
        v10 = *v9;
        v9 += 2;
      }

      while (v10);
    }

    *(v7 + 2953) = v8;
    v11 = sub_297E5588C(v7, 0, 0);
    if (v11 != 13)
    {
      *(v13 + 3593) = 0;
    }
  }

  else
  {
    v11 = 1;
    sub_297E4E0B0(0, &v14, 4, 1u, "phLibNfc_SM_IoctlGetRfPropConfigTrans: Failed");
  }

  sub_297E4DFAC(0, &v14, 4, 5u, "phLibNfc_SM_IoctlGetRfPropConfigTrans");
  return v11;
}

uint64_t sub_297EAFFE4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5)
{
  v13 = 0;
  v14 = a1;
  sub_297E4E1B4(0, &v14, 4, 5u, "phLibNfc_SM_IoctlGetRfPropRegsTrans");
  sub_297E4F0E8(v14, &v13);
  if (a4 && a5 && (v7 = v13) != 0)
  {
    *(v13 + 3584) = *a5;
    *(v7 + 3568) = *(a4 + 8);
    *(v7 + 3576) = *a4;
    *(v7 + 2960) = gphLibNfc_IoctlGetRfRegVal;
    *(v7 + 2952) = 0;
    *(v7 + 2954) = 0;
    v8 = gphLibNfc_IoctlGetRfRegVal[0];
    if (gphLibNfc_IoctlGetRfRegVal[0])
    {
      v8 = 0;
      v9 = &qword_2A1A90A48;
      do
      {
        ++v8;
        v10 = *v9;
        v9 += 2;
      }

      while (v10);
    }

    *(v7 + 2953) = v8;
    v11 = sub_297E5588C(v7, 0, 0);
  }

  else
  {
    v11 = 1;
    sub_297E4E0B0(0, &v14, 4, 1u, "phLibNfc_SM_IoctlGetRfPropRegsTrans: Failed");
  }

  sub_297E4DFAC(0, &v14, 4, 5u, "phLibNfc_SM_IoctlGetRfPropRegsTrans");
  return v11;
}

uint64_t sub_297EB00EC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v16 = 0;
  v17 = a1;
  v15 = 0;
  sub_297E4E1B4(0, &v17, 4, 5u, "phLibNfc_SM_IoctlGetSpmiGpioTrans");
  sub_297E5D114(v17, &v15);
  if (v15)
  {
    *(v15 + 80) = a4;
    sub_297E4F0E8(v17, &v16);
    v5 = v15;
    v6 = *(v15 + 80);
    if (!v6 || ((v7 = v16, *v6) ? (v8 = v16 == 0) : (v8 = 1), v8))
    {
      v9 = 1;
      sub_297E4E0B0(0, &v17, 4, 1u, "phLibNfc_SM_IoctlGetSpmiGpioTrans: Failed");
    }

    else
    {
      *(v15 + 216) = -24575;
      v10 = v5 + 216;
      *(v10 + 2) = 49;
      *(v7 + 3568) = 3;
      *(v7 + 3576) = v10;
      *(v10 - 56) = *v6;
      *(v7 + 2960) = gphLibNfc_IoctlGetSpmiGpio;
      *(v7 + 2952) = 0;
      *(v7 + 2954) = 0;
      v11 = gphLibNfc_IoctlGetSpmiGpio[0];
      if (gphLibNfc_IoctlGetSpmiGpio[0])
      {
        v11 = 0;
        v12 = &qword_2A1A909F8;
        do
        {
          ++v11;
          v13 = *v12;
          v12 += 2;
        }

        while (v13);
      }

      *(v7 + 2953) = v11;
      v9 = sub_297E5588C(v7, 0, 0);
    }
  }

  else
  {
    sub_297E4E0B0(0, &v17, 4, 1u, "phLibNfc_SM_IoctlGetSpmiGpioTrans: Invalid IOCTL Context");
    v9 = 255;
  }

  sub_297E4DFAC(0, &v17, 4, 5u, "phLibNfc_SM_IoctlGetSpmiGpioTrans");
  return v9;
}

uint64_t sub_297EB024C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t *a4)
{
  v12 = 0;
  v13 = a1;
  v11 = 0;
  sub_297E4E1B4(0, &v13, 4, 5u, "phLibNfc_SM_IoctlConfigDebugModeTrans");
  sub_297E4F0E8(v13, &v12);
  sub_297E5D114(v13, &v11);
  v6 = 1;
  if (a4 && v12 && v11)
  {
    v7 = *a4;
    if (*a4)
    {
      if (*(a4 + 2) == 3 && !*v7)
      {
        v10 = *(v7 + 1);
        if (v10 < 0x7D0)
        {
          sub_297E4E0B0(0, &v13, 4, 1u, "phLibNfc_SM_IoctlConfigDebugModeTrans: Invalid timeout value");
          a3 = 147;
        }

        else
        {
          *(v12 + 756) = v10;
        }
      }

      else
      {
        a3 = 1;
        sub_297E4E0B0(0, &v13, 4, 1u, "phLibNfc_SM_IoctlConfigDebugModeTrans: Failed to update SeTransceive Modified Timeout details ");
      }
    }

    v8 = v11;
    v11[2] = 0;
    *v8 = 0;
    v6 = a3;
  }

  sub_297E4DFAC(0, &v13, 4, 5u, "phLibNfc_SM_IoctlConfigDebugModeTrans");
  return v6;
}

uint64_t sub_297EB0378(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v13 = a1;
  v12 = 0;
  v10 = 0;
  v11 = 0;
  sub_297E4E1B4(0, &v13, 4, 5u, "phLibNfc_SM_IoctlExpModeSWaitTimerOffTrans");
  sub_297E5D114(v13, &v10);
  if (v10)
  {
    sub_297E4F0E8(v13, &v11);
    if (a4 && v11)
    {
      v5 = v10;
      *(v10 + 216) = -608;
      v6 = 1;
      *(v5 + 218) = 1;
      phOsalNfc_MemCopy();
      if (v12 <= 0x9F6u)
      {
        v8 = v10;
        v7 = v11;
        *(v10 + 219) = v12 / 0xAu;
        v6 = sub_297E7EDD4(v7, v8 + 216, 4u, 5);
      }
    }

    else
    {
      v6 = 1;
      sub_297E4E0B0(0, &v13, 4, 1u, "phLibNfc_SM_IoctlExpModeSWaitTimerOffTrans: Failed");
    }
  }

  else
  {
    sub_297E4E0B0(0, &v13, 4, 1u, "phLibNfc_SM_IoctlExpModeSWaitTimerOffTrans: Invalid IOCTL Context");
    v6 = 255;
  }

  sub_297E4DFAC(0, &v13, 4, 5u, "phLibNfc_SM_IoctlExpModeSWaitTimerOffTrans");
  return v6;
}

uint64_t sub_297EB04BC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v13 = a1;
  v12 = 0;
  v10 = 0;
  v11 = 0;
  sub_297E4E1B4(0, &v13, 4, 5u, "phLibNfc_SM_IoctlVasExpWaitTimerOffTrans");
  sub_297E5D114(v13, &v10);
  if (v10)
  {
    sub_297E4F0E8(v13, &v11);
    if (a4 && v11)
    {
      v5 = v10;
      *(v10 + 216) = -19808;
      v6 = 1;
      *(v5 + 218) = 1;
      phOsalNfc_MemCopy();
      if (v12 <= 0x384u)
      {
        v8 = v10;
        v7 = v11;
        *(v10 + 219) = v12 / 0xAu;
        v6 = sub_297E7EDD4(v7, v8 + 216, 4u, 5);
      }
    }

    else
    {
      v6 = 1;
      sub_297E4E0B0(0, &v13, 4, 1u, "phLibNfc_SM_IoctlVasExpWaitTimerOffTrans: Failed");
    }
  }

  else
  {
    sub_297E4E0B0(0, &v13, 4, 1u, "phLibNfc_SM_IoctlVasExpWaitTimerOffTrans: Invalid IOCTL Context");
    v6 = 255;
  }

  sub_297E4DFAC(0, &v13, 4, 5u, "phLibNfc_SM_IoctlVasExpWaitTimerOffTrans");
  return v6;
}

uint64_t sub_297EB0600(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v13 = a1;
  v12 = 0;
  v10 = 0;
  v11 = 0;
  sub_297E4E1B4(0, &v13, 4, 5u, "phLibNfc_SM_IoctlGenAWaitTimerOffTrans");
  sub_297E5D114(v13, &v10);
  if (v10)
  {
    sub_297E4F0E8(v13, &v11);
    if (a4 && v11)
    {
      v5 = v10;
      *(v10 + 216) = -16992;
      v6 = 1;
      *(v5 + 218) = 1;
      phOsalNfc_MemCopy();
      if (v12 <= 0x384u)
      {
        v8 = v10;
        v7 = v11;
        *(v10 + 219) = v12 / 0xAu;
        v6 = sub_297E7EDD4(v7, v8 + 216, 4u, 5);
      }
    }

    else
    {
      v6 = 1;
      sub_297E4E0B0(0, &v13, 4, 1u, "phLibNfc_SM_IoctlGenAWaitTimerOffTrans: Failed");
    }
  }

  else
  {
    sub_297E4E0B0(0, &v13, 4, 1u, "phLibNfc_SM_IoctlGenAWaitTimerOffTrans: Invalid IOCTL Context");
    v6 = 255;
  }

  sub_297E4DFAC(0, &v13, 4, 5u, "phLibNfc_SM_IoctlGenAWaitTimerOffTrans");
  return v6;
}

uint64_t sub_297EB0744(uint64_t a1, uint64_t a2, uint64_t a3, _DWORD *a4)
{
  v14 = a1;
  v13 = 0;
  v11 = 0;
  v12 = 0;
  sub_297E4E1B4(0, &v14, 4, 5u, "phLibNfc_SM_IoctlSwioPadVolNtfTimerTrans");
  sub_297E5D114(v14, &v11);
  if (v11)
  {
    sub_297E4F0E8(v14, &v12);
    if (a4 && v12)
    {
      *(v12 + 5449) = 0;
      v5 = v11;
      *(v11 + 216) = 5537;
      v6 = 1;
      *(v5 + 218) = 1;
      phOsalNfc_MemCopy();
      if (!v13 || v13 - 4001 >= 0xFFFFF253)
      {
        v7 = 42949673 * v13;
        v9 = v11;
        v8 = v12;
        *(v11 + 219) = v13 / 0x64u;
        if (*(v8 + 2993) == 1 && a4[2] == 3 && *(*a4 + 2) == 1)
        {
          *(v9 + 219) = BYTE4(v7) | 0x40;
        }

        v6 = sub_297E7EDD4(v8, v9 + 216, 4u, 5);
        if (v6 == 13)
        {
          *(v12 + 5449) = 1;
        }
      }
    }

    else
    {
      v6 = 1;
      sub_297E4E0B0(0, &v14, 4, 1u, "phLibNfc_SM_IoctlSwioPadVolNtfTimerTrans: Failed");
    }
  }

  else
  {
    sub_297E4E0B0(0, &v14, 4, 1u, "phLibNfc_SM_IoctlSwioPadVolNtfTimerTrans: Invalid IOCTL Context");
    v6 = 255;
  }

  sub_297E4DFAC(0, &v14, 4, 5u, "phLibNfc_SM_IoctlSwioPadVolNtfTimerTrans");
  return v6;
}

uint64_t sub_297EB08E4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v11 = 0;
  v12 = a1;
  sub_297E4E1B4(0, &v12, 4, 5u, "phLibNfc_SM_IoctlSetRfCalDataSignedTrans");
  sub_297E4F0E8(v12, &v11);
  if (a4 && (v5 = v11) != 0)
  {
    *(v11 + 2960) = gphLibNfc_IoctlSetRfCalData;
    v5[2952] = 0;
    v5[2954] = 0;
    v6 = gphLibNfc_IoctlSetRfCalData[0];
    if (gphLibNfc_IoctlSetRfCalData[0])
    {
      v6 = 0;
      v7 = off_2A1A90A68;
      do
      {
        ++v6;
        v8 = *v7;
        v7 += 2;
      }

      while (v8);
    }

    v5[2953] = v6;
    v9 = sub_297E5588C(v5, 0, a4);
  }

  else
  {
    v9 = 1;
    sub_297E4E0B0(0, &v12, 4, 1u, "phLibNfc_SM_IoctlSetRfCalDataSignedTrans: Failed");
  }

  sub_297E4DFAC(0, &v12, 4, 5u, "phLibNfc_SM_IoctlSetRfCalDataSignedTrans");
  return v9;
}

uint64_t sub_297EB09CC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v11 = 0;
  v12 = a1;
  sub_297E4E1B4(0, &v12, 4, 5u, "phLibNfc_SM_IoctlGetRfCalDataSignedTrans");
  sub_297E4F0E8(v12, &v11);
  if (a4 && (v5 = v11) != 0)
  {
    *(v11 + 2960) = gphLibNfc_IoctlGetRfCalData;
    v5[2952] = 0;
    v5[2954] = 0;
    v6 = gphLibNfc_IoctlGetRfCalData[0];
    if (gphLibNfc_IoctlGetRfCalData[0])
    {
      v6 = 0;
      v7 = &qword_2A1A90A98;
      do
      {
        ++v6;
        v8 = *v7;
        v7 += 2;
      }

      while (v8);
    }

    v5[2953] = v6;
    v9 = sub_297E5588C(v5, 0, a4);
  }

  else
  {
    v9 = 1;
    sub_297E4E0B0(0, &v12, 4, 1u, "phLibNfc_SM_IoctlGetRfCalDataSignedTrans: Failed");
  }

  sub_297E4DFAC(0, &v12, 4, 5u, "phLibNfc_SM_IoctlGetRfCalDataSignedTrans");
  return v9;
}

uint64_t sub_297EB0AB4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v16 = a1;
  v15 = 0;
  v14 = 0;
  sub_297E4E1B4(0, &v16, 4, 5u, "phLibNfc_SM_IoctlIoctlSetRfConfigSignedTrans");
  sub_297E4F0E8(v16, &v14);
  v5 = 1;
  v6 = "phLibNfc_SM_IoctlIoctlSetRfConfigSignedTrans: Failed";
  if (!a4)
  {
    goto LABEL_10;
  }

  if (!v14)
  {
    goto LABEL_10;
  }

  v7 = sub_297EFCC04(v14, *a4, *(a4 + 8), &v15);
  v6 = "phLibNfc_SM_IoctlIoctlSetRfConfigSignedTrans:                                    Buffer is not adhering to semantics of RF_SIGNED_CONFIG_CMD!";
  if (v7 || !v15)
  {
    goto LABEL_10;
  }

  v8 = v14;
  *(v14 + 3296) = v15;
  *(v8 + 3288) = *a4;
  *(v8 + 3556) = *(a4 + 8);
  *(v8 + 3560) = 0;
  *(v8 + 2960) = gphLibNfc_IoctlSetPropConfigSigned;
  *(v8 + 2952) = 0;
  *(v8 + 2954) = 0;
  v9 = gphLibNfc_IoctlSetPropConfigSigned[0];
  if (gphLibNfc_IoctlSetPropConfigSigned[0])
  {
    v9 = 0;
    v10 = off_2A1A90A18;
    do
    {
      ++v9;
      v11 = *v10;
      v10 += 2;
    }

    while (v11);
  }

  *(v8 + 2953) = v9;
  v5 = sub_297E5588C(v8, 0, 0);
  if (v5 != 13)
  {
    v12 = (v14 + 3576);
    *(v14 + 3560) = 0;
    *v12 = 0u;
    v6 = "phLibNfc_SM_IoctlIoctlSetRfConfigSignedTrans Failed!!!";
LABEL_10:
    sub_297E4E0B0(0, &v16, 4, 1u, v6);
  }

  sub_297E4DFAC(0, &v16, 4, 5u, "phLibNfc_SM_IoctlIoctlSetRfConfigSignedTrans");
  return v5;
}

uint64_t sub_297EB0C04(uint64_t a1, uint64_t a2, uint64_t a3, char **a4)
{
  v13 = 0;
  v14 = a1;
  v12 = 0;
  sub_297E4E1B4(0, &v14, 4, 5u, "phLibNfc_SM_IoctlSysPwrTraceConfigTrans");
  sub_297E4F0E8(v14, &v13);
  sub_297E5D114(v14, &v12);
  if (!a4 || (v5 = v13) == 0 || (v6 = v12) == 0)
  {
    v10 = "phLibNfc_SM_IoctlSyPwrTraceConfigTrans: Failed";
LABEL_14:
    v9 = 1;
    sub_297E4E0B0(0, &v14, 4, 1u, v10);
    goto LABEL_15;
  }

  if (!*a4 || *(a4 + 2) != 1)
  {
    v10 = "phLibNfc_SM_IoctlGetPwrTrackConfigTrans:                                    Buffer is not adhering to semantics of PHLIBNFC_IOCTL_GET_PWR_TRACK_CFG!";
    goto LABEL_14;
  }

  v13[5448] = 0;
  *(v6 + 216) = 28064;
  *(v6 + 218) = 1;
  v7 = **a4;
  if (v5[2985] == 1 || v5[2986] == 1 || v5[2992] == 1)
  {
    v8 = v7 & 3;
  }

  else
  {
    v8 = v7 & 1;
  }

  *(v6 + 219) = v8;
  v9 = sub_297E7EDD4(v5, v6 + 216, 4u, 6);
  if (v9 == 13)
  {
    v13[5448] = 1;
  }

LABEL_15:
  sub_297E4DFAC(0, &v14, 4, 5u, "phLibNfc_SM_IoctlSysPwrTraceConfigTrans");
  return v9;
}

uint64_t sub_297EB0D60(uint64_t a1, uint64_t a2, uint64_t a3, unsigned __int8 **a4)
{
  v12 = 0;
  v13 = a1;
  v11 = 0;
  sub_297E4E1B4(0, &v13, 4, 5u, "phLibNfc_SM_IoctlCrcChkConfigTrans");
  sub_297E4F0E8(v13, &v11);
  sub_297E5D114(v13, &v12);
  if (!a4 || (v5 = v11) == 0 || (v6 = v12) == 0)
  {
    v9 = "phLibNfc_SM_IoctlCrcChkConfigTrans: Failed";
LABEL_10:
    v8 = 1;
    sub_297E4E0B0(0, &v13, 4, 1u, v9);
    goto LABEL_11;
  }

  if (!*a4 || *(a4 + 2) != 1)
  {
    v9 = "phLibNfc_SM_IoctlCrcChkConfigTrans:                                    Buffer is not adhering to semantics of PHLIBNFC_IOCTL_SET_CRC_CHK_CFG!";
    goto LABEL_10;
  }

  *(v11 + 5456) = 0;
  *(v6 + 216) = -16480;
  v7 = v6 + 216;
  *(v7 + 2) = 1;
  *(v7 + 3) = **a4;
  *(v5 + 5452) = **a4;
  v8 = sub_297E7EDD4(v5, v7, 4u, 7);
  if (v8 == 13)
  {
    *(v11 + 5456) = 1;
  }

  else
  {
    sub_297E50DB0(0, &v13, 4, 1u, "phLibNfc_SM_IoctlCrcChkConfigTrans returned with status Rxd=");
  }

LABEL_11:
  sub_297E4DFAC(0, &v13, 4, 5u, "phLibNfc_SM_IoctlCrcChkConfigTrans");
  return v8;
}

uint64_t sub_297EB0EB4(uint64_t a1)
{
  v8 = 0;
  v9 = a1;
  v7 = 0;
  sub_297E4E1B4(0, &v9, 4, 5u, "phLibNfc_SM_IoctlEnableDtaModeTrans");
  sub_297E4F0E8(v9, &v8);
  sub_297E5D114(v9, &v7);
  if (v8)
  {
    v1 = v7 == 0;
  }

  else
  {
    v1 = 1;
  }

  if (v1)
  {
    v2 = 1;
  }

  else
  {
    v3 = sub_297F09D58(*(v8 + 3088), 1);
    v2 = v3;
    if (v3)
    {
      sub_297E4E0B0(0, &v9, 4, 2u, "phLibNfc_SM_IoctlEnableDtaModeTrans: Failed to update NCI DTA flag");
    }

    else
    {
      v4 = v8;
      *(v8 + 2933) = 1;
      *(v4 + 765) = 0;
    }

    v5 = v7;
    v7[2] = 0;
    *v5 = 0;
  }

  sub_297E4DFAC(0, &v9, 4, 5u, "phLibNfc_SM_IoctlEnableDtaModeTrans");
  return v2;
}

uint64_t sub_297EB0F9C(uint64_t a1)
{
  v8 = 0;
  v9 = a1;
  v7 = 0;
  sub_297E4E1B4(0, &v9, 4, 5u, "phLibNfc_SM_IoctlDisableDtaModeTrans");
  sub_297E4F0E8(v9, &v8);
  sub_297E5D114(v9, &v7);
  if (v8)
  {
    v1 = v7 == 0;
  }

  else
  {
    v1 = 1;
  }

  if (v1)
  {
    v2 = 1;
  }

  else
  {
    v3 = sub_297F09D58(*(v8 + 3088), 0);
    v2 = v3;
    if (v3)
    {
      sub_297E4E0B0(0, &v9, 4, 2u, "phLibNfc_SM_IoctlDisableDtaModeTrans: Failed to update NCI DTA flag");
    }

    else
    {
      v4 = v8;
      *(v8 + 2933) = 0;
      *(*(v4 + 6872) + 242) = 0;
      *(v4 + 765) = 3;
    }

    v5 = v7;
    v7[2] = 0;
    *v5 = 0;
  }

  sub_297E4DFAC(0, &v9, 4, 5u, "phLibNfc_SM_IoctlDisableDtaModeTrans");
  return v2;
}

uint64_t sub_297EB108C(uint64_t a1, int a2, uint64_t a3, _DWORD *a4, uint64_t a5)
{
  v11 = 0;
  v12 = a1;
  sub_297E4E1B4(0, &v12, 4, 5u, "phLibNfc_SM_EnableDisableMultiTagTrans");
  sub_297E4F0E8(v12, &v11);
  v9 = sub_297E54988(v11, a2, a3, a4, a5);
  if (!v9)
  {
    v9 = sub_297EE6ACC(v11);
  }

  sub_297E4DFAC(0, &v12, 4, 5u, "phLibNfc_SM_EnableDisableMultiTagTrans");
  return v9;
}

uint64_t sub_297EB1140(uint64_t a1, int a2, uint64_t a3, _DWORD *a4, uint64_t a5)
{
  v15 = 0;
  v16 = a1;
  sub_297E4E1B4(0, &v16, 4, 5u, "phLibNfc_SM_ConfigInitDiscoveryStopTrans");
  sub_297E4F0E8(v16, &v15);
  if (v15)
  {
    a3 = sub_297E54988(v15, a2, a3, a4, a5);
    if (!a3)
    {
      if (a5)
      {
        v9 = v15;
        if (*(a5 + 88) == 1)
        {
          *(v15 + 2960) = &qword_2A1A92F70;
          v9[2952] = 0;
          v9[2954] = 0;
          v10 = qword_2A1A92F70;
          if (qword_2A1A92F70)
          {
            v10 = 0;
            v11 = off_2A1A92F80;
            do
            {
              ++v10;
              v12 = *v11;
              v11 += 2;
            }

            while (v12);
          }

          v9[2953] = v10;
          v13 = sub_297E5588C(v9, 0, 0);
        }

        else
        {
          v13 = sub_297EE6C98(v15, a4);
        }

        a3 = v13;
      }

      else
      {
        a3 = 1;
        sub_297E4E0B0(1, v15 + 9792, 4, 1u, "phLibNfc_SM_ConfigInitDiscoveryStopTrans: Invalid Input Parameter passed");
      }
    }
  }

  sub_297E4DFAC(0, &v16, 4, 5u, "phLibNfc_SM_ConfigInitDiscoveryStopTrans");
  return a3;
}

uint64_t sub_297EB1284(uint64_t a1, int a2, uint64_t a3, uint64_t a4, _BYTE *a5)
{
  v13 = 0;
  v14 = a1;
  sub_297E4E1B4(0, &v14, 4, 5u, "phLibNfc_SM_DeactivateTrans");
  sub_297E4F0E8(v14, &v13);
  v8 = v13;
  if (v13)
  {
    if (*(v13 + 745) == 1)
    {
      v9 = sub_297EE0A34(*(v13 + 9784), 1);
      v8 = v13;
      if (!v9)
      {
        *(v13 + 560) = v13 + 440;
        *(v8 + 572) = 0;
        sub_297E4E1B4(2, v8, 4, 5u, "phLibNfc_FindSetModeTransEvent");
        sub_297E4DFAC(2, v8, 4, 5u, "phLibNfc_FindSetModeTransEvent");
        sub_297E4F450(*(v13 + 9784), 140, a3, 0, 0);
        v8 = v13;
        *(v13 + 745) = 0;
      }
    }

    *(v8 + 1472) = 0;
    if (a2 == 125)
    {
      a3 = 255;
    }

    else
    {
      a3 = a3;
    }

    if (*(v8 + 6200))
    {
      sub_297E4D930(1, v8 + 9792, 4, 15, "phLibNfc_SM_DeactivateTrans");
      (*(v13 + 6200))(*(v13 + 9784), *(v13 + 6208), 0, 0, a3);
      v8 = v13;
      v10 = 0uLL;
      v11 = 6200;
    }

    else if (*(v8 + 6264))
    {
      if (a2 == 125 && !*(v8 + 1475))
      {
        goto LABEL_39;
      }

      if (sub_297EE1594(*(v8 + 9784)) == 22)
      {
        a3 = a3;
      }

      else
      {
        a3 = 0;
      }

      sub_297E4D930(1, v13 + 9792, 4, 130, "phLibNfc_SM_DeactivateTrans");
      (*(v13 + 6264))(*(v13 + 9784), *(v13 + 6272), 0, a3);
      v8 = v13;
      v10 = 0uLL;
      v11 = 6264;
    }

    else if (*(v8 + 6472))
    {
      sub_297E4D930(1, v8 + 9792, 4, 22, "phLibNfc_SM_DeactivateTrans");
      (*(v13 + 6472))(*(v13 + 9784), *(v13 + 6480), a3);
      v8 = v13;
      v10 = 0uLL;
      v11 = 6472;
    }

    else if (*(v8 + 6312))
    {
      sub_297E4D930(1, v8 + 9792, 4, 23, "phLibNfc_SM_DeactivateTrans");
      (*(v13 + 6312))(*(v13 + 9784), *(v13 + 6320), 0, 0, a3);
      v8 = v13;
      v10 = 0uLL;
      v11 = 6312;
    }

    else if (*(v8 + 6408))
    {
      sub_297E4D930(1, v8 + 9792, 4, 24, "phLibNfc_SM_DeactivateTrans");
      (*(v13 + 6408))(*(v13 + 9784), *(v13 + 6416), a3);
      v8 = v13;
      v10 = 0uLL;
      v11 = 6408;
    }

    else if (*(v8 + 6424))
    {
      sub_297E4D930(1, v8 + 9792, 4, 25, "phLibNfc_SM_DeactivateTrans");
      (*(v13 + 6424))(*(v13 + 9784), *(v13 + 6432), a3);
      v8 = v13;
      v10 = 0uLL;
      v11 = 6424;
    }

    else if (*(v8 + 6824))
    {
      sub_297E4D930(1, v8 + 9792, 4, 26, "phLibNfc_SM_DeactivateTrans");
      (*(v13 + 6824))(*(v13 + 9784), *(v13 + 6832), a3);
      v8 = v13;
      v10 = 0uLL;
      v11 = 6824;
    }

    else if (*(v8 + 6440))
    {
      *(v8 + 9796) = 0;
      sub_297E4D930(1, v8 + 9792, 4, 27, "phLibNfc_SM_DeactivateTrans");
      (*(v13 + 6440))(*(v13 + 9784), *(v13 + 6448), a3);
      v8 = v13;
      v10 = 0uLL;
      v11 = 6440;
    }

    else if (*(v8 + 6296))
    {
      if (a2 == 125 && !*(v8 + 1475))
      {
        goto LABEL_39;
      }

      sub_297E4D930(1, v8 + 9792, 4, 114, "phLibNfc_SM_DeactivateTrans");
      (*(v13 + 6296))(*(v13 + 9784), *(v13 + 6304), 0);
      v8 = v13;
      v10 = 0uLL;
      v11 = 6296;
    }

    else if (*(v8 + 6216))
    {
      sub_297E4D930(1, v8 + 9792, 4, 16, "phLibNfc_SM_DeactivateTrans");
      (*(v13 + 6216))(*(v13 + 9784), *(v13 + 6224), 0, 0, a3);
      v8 = v13;
      v10 = 0uLL;
      v11 = 6216;
    }

    else
    {
      if (!*(v8 + 6232))
      {
        if (a5 && *(v8 + 6280) && !*a5)
        {
          sub_297E4E0B0(0, &v14, 4, 4u, "Invoking pClientNtfRegRespCB with rf deactivated status");
          sub_297E54734(0, &v14, 4, 4u, "phLibNfc_SM_DeactivateTrans :RemDevNtfCB[De-Activated status]");
          (*(v13 + 6280))(*(v13 + 9784), *(v13 + 6288), 0, 0, a3);
          v8 = v13;
        }

        if (a2 == 125)
        {
          *(v8 + 1475) = 0;
        }

        goto LABEL_39;
      }

      sub_297E4D930(1, v8 + 9792, 4, 17, "phLibNfc_SM_DeactivateTrans");
      (*(v13 + 6232))(*(v13 + 9784), *(v13 + 6240), 0, 0, a3);
      v8 = v13;
      v10 = 0uLL;
      v11 = 6232;
    }

    *(v8 + v11) = v10;
LABEL_39:
    sub_297ECF904(v8);
    goto LABEL_40;
  }

  sub_297E4E0B0(0, &v14, 4, 1u, "phLibNfc_SM_DeactivateTrans: Invalid LIBNFC context!!");
LABEL_40:
  sub_297E4DFAC(0, &v14, 4, 5u, "phLibNfc_SM_DeactivateTrans");
  return 0;
}

uint64_t sub_297EB1880(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, unsigned __int8 *a5)
{
  v8 = a1;
  sub_297E4E1B4(0, &v8, 4, 5u, "phLibNfc_SM_IoctlSetSpmiGpioTrans");
  v6 = 1;
  if (a5 && v8)
  {
    v6 = phTmlNfc_IoCtl();
  }

  sub_297E4DFAC(0, &v8, 4, 5u, "phLibNfc_SM_IoctlSetSpmiGpioTrans");
  return v6;
}

uint64_t sub_297EB1930(uint64_t a1)
{
  v6 = a1;
  sub_297E4E1B4(0, &v6, 4, 5u, "phLibNfc_SM_IoctlTrigVgpioDbgLogCfgTrans");
  if (v6)
  {
    v1 = 0;
    v2 = 1;
    do
    {
      v3 = v2;
      if (*(&unk_2A18BDDC0 + 14 * v1) == v6)
      {
        break;
      }

      v2 = 0;
      v1 = 1;
    }

    while ((v3 & 1) != 0);
    v4 = phTmlNfc_IoCtl();
    if (!v4)
    {
      phOsalNfc_Delay();
      v4 = phTmlNfc_IoCtl();
    }
  }

  else
  {
    v4 = 1;
  }

  sub_297E4DFAC(0, &v6, 4, 5u, "phLibNfc_SM_IoctlTrigVgpioDbgLogCfgTrans");
  return v4;
}

uint64_t sub_297EB1A18(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v8 = 0;
  v9 = a1;
  sub_297E4E1B4(0, &v9, 4, 5u, "phLibNfc_SM_GetSpmiErrorRegsTrans");
  sub_297E5D114(v9, &v8);
  if (v8)
  {
    v6 = 1;
    if (a5)
    {
      if (v9)
      {
        if (v9 == *(v8 + 8))
        {
          v6 = sub_297EBE8B0(v9);
          if (!v6)
          {
            v6 = phTmlNfc_SpmiDrvErrorStatus();
            sub_297E5AA54(v9, 20);
          }
        }
      }
    }
  }

  else
  {
    v6 = 1;
  }

  sub_297E4DFAC(0, &v9, 4, 5u, "phLibNfc_SM_GetSpmiErrorRegsTrans");
  return v6;
}

uint64_t sub_297EB1AE4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v8 = 0;
  v9 = a1;
  sub_297E4E1B4(0, &v9, 4, 5u, "phLibNfc_SM_ClearSpmiErrorRegsTrans");
  sub_297E5D114(v9, &v8);
  if (v8)
  {
    v6 = 1;
    if (a5)
    {
      if (v9)
      {
        if (v9 == *(v8 + 8))
        {
          v6 = sub_297EBE8B0(v9);
          if (!v6)
          {
            v6 = phTmlNfc_SpmiDrvErrorStatus();
            sub_297E5AA54(v9, 20);
          }
        }
      }
    }
  }

  else
  {
    v6 = 1;
  }

  sub_297E4DFAC(0, &v9, 4, 5u, "phLibNfc_SM_ClearSpmiErrorRegsTrans");
  return v6;
}

uint64_t sub_297EB1BB0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v9 = 0;
  v10 = a1;
  sub_297E4E1B4(0, &v10, 4, 5u, "phLibNfc_SM_GetSpmiCfgRegsTrans");
  sub_297E5D114(v10, &v9);
  SpmiDrvConfigRegs = 1;
  if (a5)
  {
    if (v9)
    {
      v7 = v10 == 0;
    }

    else
    {
      v7 = 1;
    }

    if (!v7 && v10 == *(v9 + 8))
    {
      SpmiDrvConfigRegs = sub_297EBE8B0(v10);
      if (!SpmiDrvConfigRegs)
      {
        SpmiDrvConfigRegs = phTmlNfc_SetGetSpmiDrvConfigRegs();
        sub_297E5AA54(v10, 20);
      }
    }
  }

  sub_297E4DFAC(0, &v10, 4, 5u, "phLibNfc_SM_GetSpmiCfgRegsTrans");
  return SpmiDrvConfigRegs;
}

uint64_t sub_297EB1C78(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v9 = 0;
  v10 = a1;
  sub_297E4E1B4(0, &v10, 4, 5u, "phLibNfc_SM_SetSpmiCfgRegsTrans");
  sub_297E5D114(v10, &v9);
  SpmiDrvConfigRegs = 1;
  if (a5)
  {
    if (v9)
    {
      v7 = v10 == 0;
    }

    else
    {
      v7 = 1;
    }

    if (!v7 && v10 == *(v9 + 8))
    {
      SpmiDrvConfigRegs = sub_297EBE8B0(v10);
      if (!SpmiDrvConfigRegs)
      {
        SpmiDrvConfigRegs = phTmlNfc_SetGetSpmiDrvConfigRegs();
        sub_297E5AA54(v10, 20);
      }
    }
  }

  sub_297E4DFAC(0, &v10, 4, 5u, "phLibNfc_SM_SetSpmiCfgRegsTrans");
  return SpmiDrvConfigRegs;
}

uint64_t sub_297EB1D3C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t *a5)
{
  v15 = 0;
  v16 = a1;
  sub_297E4E1B4(0, &v16, 4, 5u, "phLibNfc_SM_IoctlLoopbackTrans");
  sub_297E4F0E8(v16, &v15);
  if (a4 && a5 && (v8 = *a5) != 0 && *a4 && (v9 = v15) != 0)
  {
    if (*(v15 + 9760) == 1)
    {
      v10 = *(a4 + 8);
      if (v10 == *(a5 + 2))
      {
        *(v15 + 2776) = *a4;
        *(v9 + 2784) = v10;
        *(v9 + 2792) = v8;
        *(v9 + 2800) = v10;
        if (!a3)
        {
          *(v9 + 2766) = 2000;
          *(v9 + 2960) = gphLibNfc_IoctlLoopbackSequence;
          *(v9 + 2952) = 0;
          *(v9 + 2954) = 0;
          v11 = gphLibNfc_IoctlLoopbackSequence[0];
          if (gphLibNfc_IoctlLoopbackSequence[0])
          {
            v11 = 0;
            v12 = &qword_2A1A90918;
            do
            {
              ++v11;
              v13 = *v12;
              v12 += 2;
            }

            while (v13);
          }

          *(v9 + 2953) = v11;
          a3 = sub_297E5588C(v9, 0, 0);
        }
      }

      else
      {
        a3 = 3;
      }
    }

    else
    {
      a3 = 58;
    }
  }

  else
  {
    a3 = 1;
    sub_297E4E0B0(0, &v16, 4, 1u, "phLibNfc_SM_IoctlLoopbackTrans: Failed");
  }

  sub_297E4DFAC(0, &v16, 4, 5u, "phLibNfc_SM_IoctlLoopbackTrans");
  return a3;
}

uint64_t sub_297EB1E98(uint64_t a1)
{
  v3 = 0;
  v4 = a1;
  sub_297E4E1B4(0, &v4, 4, 5u, "phLibNfc_SM_IoctlSwp1TestTrans");
  sub_297E4F0E8(v4, &v3);
  if (v3)
  {
    v1 = sub_297F07DF4(*(v3 + 3088), 0, sub_297E7EEF0, v3);
  }

  else
  {
    v1 = 1;
    sub_297E4E0B0(0, &v4, 4, 1u, "IoctlSwp1TestTrans: Failed");
  }

  sub_297E4DFAC(0, &v4, 4, 5u, "phLibNfc_SM_IoctlSwp1TestTrans");
  return v1;
}

uint64_t sub_297EB1F54(uint64_t a1)
{
  v3 = 0;
  v4 = a1;
  sub_297E4E1B4(0, &v4, 4, 5u, "phLibNfc_SM_IoctlSwp2TestTrans");
  sub_297E4F0E8(v4, &v3);
  if (v3)
  {
    v1 = sub_297F07DF4(*(v3 + 3088), 1, sub_297E7EEF0, v3);
  }

  else
  {
    v1 = 1;
    sub_297E4E0B0(0, &v4, 4, 1u, "IoctlSwp2TestTrans: Failed");
  }

  sub_297E4DFAC(0, &v4, 4, 5u, "phLibNfc_SM_IoctlSwp2TestTrans");
  return v1;
}

uint64_t sub_297EB2010(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v7 = 0;
  v8 = a1;
  sub_297E4E1B4(0, &v8, 4, 5u, "phLibNfc_SM_IoctlPrbsTestTrans");
  sub_297E4F0E8(v8, &v7);
  if (a4 && v7 && *a4 && *(a4 + 8) == 6)
  {
    v5 = sub_297F07F1C(*(v7 + 3088), a4, sub_297E7EFDC, v7);
  }

  else
  {
    v5 = 1;
    sub_297E4E0B0(0, &v8, 4, 1u, "phLibNfc_SM_IoctlPrbsTestTrans: Failed");
  }

  sub_297E4DFAC(0, &v8, 4, 5u, "phLibNfc_SM_IoctlPrbsTestTrans");
  return v5;
}

uint64_t sub_297EB20E8(uint64_t a1, uint64_t a2, uint64_t a3, _DWORD *a4)
{
  v18 = 0;
  v19 = a1;
  sub_297E4E1B4(0, &v19, 4, 5u, "phLibNfc_SM_CfgTestModeOffTrans");
  sub_297E4F0E8(v19, &v18);
  v5 = 1;
  if (a4)
  {
    v6 = v18;
    if (v18)
    {
      *(v18 + 9752) = *a4;
      *(v6 + 2960) = off_2A1A93950;
      *(v6 + 2952) = 0;
      *(v6 + 2954) = 0;
      v7 = off_2A1A93950[0];
      if (off_2A1A93950[0])
      {
        v7 = 0;
        v8 = off_2A1A93960;
        do
        {
          ++v7;
          v9 = *v8;
          v8 += 2;
        }

        while (v9);
      }

      *(v6 + 2953) = v7;
      if (*(v6 + 9760) != 1)
      {
        sub_297E79734(v6, off_2A1A93950, 1);
        v6 = v18;
      }

      v10 = sub_297E5588C(v6, 0, 0);
      if (v10 == 13)
      {
        v5 = 13;
      }

      else
      {
        v11 = v10;
        v12 = v18;
        v13 = *(v18 + 3088);
        if (v13)
        {
          v14 = 0;
          v15 = 0;
          do
          {
            v16 = *(&unk_2A18BDDC0 + 14 * v15 + 4);
            if (v14)
            {
              break;
            }

            v14 = 1;
            v15 = 1;
          }

          while (v16 != v13);
          if (v16 == v13)
          {
            sub_297F080D4(*(v18 + 3088), 2, 0, 0);
            v12 = v18;
          }
        }

        *(v12 + 3088) = 0;
        sub_297EFC5B0(v12);
        v18 = 0;
        if (v11 == 143)
        {
          v5 = 143;
        }

        else
        {
          v5 = 255;
        }
      }
    }
  }

  sub_297E4DFAC(0, &v19, 4, 5u, "phLibNfc_SM_CfgTestModeOffTrans");
  return v5;
}

uint64_t sub_297EB2260(uint64_t a1, int a2, uint64_t a3, uint64_t a4)
{
  v27 = 0;
  v28 = a1;
  v26 = 0;
  sub_297E4E1B4(0, &v28, 4, 5u, "phLibNfc_SM_Main_TestModeTransComplete");
  sub_297E4F0E8(v28, &v27);
  sub_297E5D114(v28, &v26);
  if (a3)
  {
    sub_297E96818(v28, a3);
  }

  else
  {
    sub_297E5D398(v28, 0);
  }

  v7 = v27;
  if (!v27)
  {
    goto LABEL_34;
  }

  if (a2 > 67)
  {
    v8 = a2 - 76;
    if ((a2 - 76) > 0x1C)
    {
      goto LABEL_26;
    }

    if (((1 << v8) & 0x17818000) != 0 || ((1 << v8) & 0x3810) != 0)
    {
      sub_297E5FC6C(v26, a4, a3);
      goto LABEL_34;
    }

    if (a2 != 76)
    {
LABEL_26:
      if (a2 != 68)
      {
        if (a2 == 72)
        {
          v23 = v27[855];
          v24 = v27[856];
          *(v27 + 855) = 0u;
          if (v23)
          {
            sub_297E50EBC(0, &v28, 4, 4u, "phLibNfc_SM_Main_TestModeTransComplete:Invoking callback, wStatus = ");
            sub_297E4D930(1, (v27 + 1224), 4, 67, "phLibNfc_SM_Main_TestModeTransComplete");
            v23(v27[1223], v24, a4, a3);
          }
        }

        goto LABEL_34;
      }
    }

    v9 = v27[847];
    v10 = v27[848];
    *(v27 + 847) = 0u;
    if (!v9)
    {
      goto LABEL_34;
    }

    sub_297E50EBC(0, &v28, 4, 4u, "phLibNfc_Mgt_SetNfccParams:Invoking callback, wStatus = ");
    v11 = (v27 + 1224);
    v12 = 132;
    goto LABEL_32;
  }

  switch(a2)
  {
    case '$':
      v9 = v27[773];
      v15 = v27[774];
      *(v27 + 773) = 0u;
      v16 = *(v7 + 3088);
      if (v16)
      {
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

        while (v19 != v16);
        if (v19 == v16)
        {
          sub_297F080D4(*(v7 + 3088), 2, 0, 0);
          v7 = v27;
        }
      }

      *(v7 + 3088) = 0;
      sub_297EFC5B0(v7);
      v27 = 0;
      if (v9)
      {
        sub_297E4E0B0(0, &v28, 4, 4u, "ConfigTestModeCb:Invoking callback function, with status NFCSTATUS_SUCCESS");
        sub_297E4D930(0, &v28, 4, 33, "phLibNfc_SM_Main_TestModeTransComplete");
        v20 = v28;
        v21 = v15;
        v22 = 0;
LABEL_33:
        v9(v20, v21, v22);
      }

      break;
    case '-':
      v13 = v27[849];
      v14 = v27[850];
      *(v27 + 849) = 0u;
      if (v13)
      {
        sub_297E50EBC(0, &v28, 4, 4u, "phLibNfc_SM_eAntennaSelfTest:Invoking callback, wStatus = ");
        sub_297E4D930(1, (v27 + 1224), 4, 42, "phLibNfc_SM_Main_TestModeTransComplete");
        v13(v27[1223], v14, v27 + 6044, a3);
      }

      break;
    case '3':
      v9 = v27[831];
      v10 = v27[832];
      *(v27 + 831) = 0u;
      if (!v9)
      {
        break;
      }

      sub_297E50EBC(0, &v28, 4, 4u, "phLibNfc_TriggerRfFieldOnNtf:Invoking callback, wStatus = ");
      v11 = (v27 + 1224);
      v12 = 48;
LABEL_32:
      sub_297E4D930(1, v11, 4, v12, "phLibNfc_SM_Main_TestModeTransComplete");
      v20 = v28;
      v21 = v10;
      v22 = a3;
      goto LABEL_33;
    default:
      break;
  }

LABEL_34:
  sub_297E4DFAC(0, &v28, 4, 5u, "phLibNfc_SM_Main_TestModeTransComplete");
  return a3;
}

uint64_t sub_297EB2630(uint64_t a1, int a2, uint64_t a3, int *a4, uint64_t a5)
{
  v11 = 0;
  v12 = a1;
  sub_297E4E1B4(0, &v12, 4, 5u, "phLibNfc_SM_ConfigReDiscoveryTrans");
  sub_297E4F0E8(v12, &v11);
  v9 = sub_297E54988(v11, a2, a3, a4, a5);
  if (!v9)
  {
    v9 = sub_297EE6B84(v11, a4, a5);
  }

  sub_297E4DFAC(0, &v12, 4, 5u, "phLibNfc_SM_ConfigReDiscoveryTrans");
  return v9;
}

uint64_t sub_297EB26EC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v10 = 0;
  v11 = a1;
  sub_297E4E1B4(0, &v11, 4, 5u, "phLibNfc_SM_PiccActivatedTrans");
  sub_297E4F0E8(v11, &v10);
  if (v10 && *(v10 + 6280))
  {
    v4 = *(v10 + 856);
    if (v4 && *v4 >= 2u && *(v10 + 1470) == 1)
    {
      sub_297E54734(0, &v11, 4, 4u, "phLibNfc_SM_PiccActivatedTrans :RemDevNtfCB[Unknown Tag Protocol]");
      v5 = v10;
      *(v10 + 762) = 0;
      a3 = 119;
      (*(v5 + 6280))(*(v5 + 9784), *(v5 + 6288), v5 + 872, 0, 119);
    }

    else
    {
      *(v10 + 1471) = 0;
      sub_297E54734(0, &v11, 4, 4u, "phLibNfc_SM_PiccActivatedTrans :Received ACTIVATED NTF");
      if (!sub_297EE5DF4(v10))
      {
        v6 = *(v10 + 6280);
        v7 = *(v10 + 9784);
        v8 = *(v10 + 6288);
        if (a3 == 188)
        {
          v6(v7, v8, v10 + 872, 0, 188);
          a3 = 0;
        }

        else
        {
          v6(v7, v8, v10 + 872, *(v10 + 762), a3);
        }
      }
    }
  }

  sub_297E4DFAC(0, &v11, 4, 5u, "phLibNfc_SM_PiccActivatedTrans");
  return a3;
}

uint64_t sub_297EB2850(uint64_t a1)
{
  v3 = 0;
  v4 = a1;
  sub_297E4E1B4(0, &v4, 4, 5u, "phLibNfc_SM_PcdActivatedTrans");
  sub_297E4F0E8(v4, &v3);
  if (v3)
  {
    v1 = sub_297EE5DF4(v3);
  }

  else
  {
    v1 = 1;
  }

  sub_297E4DFAC(0, &v4, 4, 5u, "phLibNfc_SM_PcdActivatedTrans");
  return v1;
}

uint64_t sub_297EB28EC(uint64_t a1, int a2, uint64_t a3, _DWORD *a4, uint64_t a5)
{
  v15 = 0;
  v16 = a1;
  sub_297E4E1B4(0, &v16, 4, 5u, "phLibNfc_SM_EMVCoTagRemDetTrans");
  sub_297E4F0E8(v16, &v15);
  if (v15)
  {
    v9 = sub_297E54988(v15, a2, a3, a4, a5);
    if (!v9)
    {
      v10 = v15;
      *(v15 + 2960) = off_2A1A92FB0;
      v10[2952] = 0;
      v10[2954] = 0;
      v11 = off_2A1A92FB0[0];
      if (off_2A1A92FB0[0])
      {
        v11 = 0;
        v12 = &qword_2A1A92FC0;
        do
        {
          ++v11;
          v13 = *v12;
          v12 += 2;
        }

        while (v13);
      }

      v10[2953] = v11;
      v9 = sub_297E5588C(v10, 0, 0);
    }
  }

  else
  {
    v9 = 255;
  }

  sub_297E4DFAC(0, &v16, 4, 5u, "phLibNfc_SM_EMVCoTagRemDetTrans");
  return v9;
}

uint64_t sub_297EB29E8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v19 = a1;
  v18 = 0;
  v17 = 1;
  v15 = 0;
  v16 = 0;
  sub_297E4E1B4(0, &v19, 4, 5u, "phLibNfc_SM_ConnectTrans");
  sub_297E4F0E8(v19, &v18);
  if (v18)
  {
    v15 = a4;
    if (sub_297ECD484(v18, &v15, &v16, 1))
    {
      v5 = "Mapping of LibNfc RemoteDev Handle to NCI RemoteDev Handle Failed";
LABEL_7:
      sub_297E4E0B0(0, &v19, 4, 1u, v5);
      v6 = 149;
      goto LABEL_8;
    }

    if (sub_297E8E7EC(v18, v16))
    {
      v5 = "Validation of NCI RemoteDev Handle Failed";
      goto LABEL_7;
    }

    v8 = *(v18 + 1504);
    if (v16 != v8 && v8 != 0)
    {
      sub_297E4E0B0(0, &v19, 4, 1u, "Connected Handle is not same as passed handle");
      v6 = 255;
      goto LABEL_8;
    }

    if (v16 == v8 && *(v18 + 1512) == v16 && *(v18 + 1470) != 1)
    {
      v14 = sub_297ECD57C(v18, v15, v16);
      goto LABEL_37;
    }

    if (!v16)
    {
LABEL_27:
      v11 = sub_297EE5FD4(v16, (v18 + 760), (v18 + 761));
      v12 = v16;
      v13 = v18;
      *(v18 + 1504) = v16;
      if (!v12 || v11)
      {
        if (v11)
        {
          v6 = 1;
          goto LABEL_8;
        }
      }

      else if ((!*(v12 + 16) && *(v12 + 12) == 1 || *(v13 + 1471) == 1) && *(v13 + 1470) == 1)
      {
        sub_297ECE0E4(v13, 0, v12);
        v6 = 0;
        goto LABEL_8;
      }

      v14 = sub_297ECD6F0(v15, v12, &v17, v13);
LABEL_37:
      v6 = v14;
      goto LABEL_8;
    }

    v10 = *(v16 + 16);
    if (v10 > 127)
    {
      if (v10 == 128 || v10 == 129)
      {
        goto LABEL_26;
      }
    }

    else
    {
      if (v10 == 4)
      {
        v10 = 2;
        goto LABEL_26;
      }

      if (v10 == 5)
      {
        v10 = 3;
LABEL_26:
        v17 = v10;
        goto LABEL_27;
      }
    }

    v10 = 1;
    goto LABEL_26;
  }

  v6 = 1;
  sub_297E4E0B0(0, &v19, 4, 1u, "phLibNfc_SM_ConnectTrans: Invalid Param");
LABEL_8:
  sub_297E4DFAC(0, &v19, 4, 5u, "phLibNfc_SM_ConnectTrans");
  return v6;
}

uint64_t sub_297EB2C28(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, _BYTE *a5)
{
  v9 = 0;
  v10 = a1;
  sub_297E4E1B4(0, &v10, 4, 5u, "phLibNfc_SM_DeactivateNtfTrans");
  sub_297E4F0E8(v10, &v9);
  v7 = v9;
  if (a5 && v9 && *(v9 + 6280) && !*a5)
  {
    sub_297E4E0B0(0, &v10, 4, 4u, "Invoking pClientNtfRegRespCB with rf deactivated status");
    sub_297E54734(0, &v10, 4, 4u, "phLibNfc_SM_DeactivateNtfTrans :RemDevNtfCB[De-Activate Ntf]");
    (*(v9 + 6280))(*(v9 + 9784), *(v9 + 6288), 0, 0, a3);
    v7 = v9;
  }

  sub_297ECF904(v7);
  sub_297E4DFAC(0, &v10, 4, 5u, "phLibNfc_SM_DeactivateNtfTrans");
  return 0;
}

uint64_t sub_297EB2D1C(uint64_t a1, int a2, uint64_t a3, uint64_t a4)
{
  v19 = 0;
  v20 = a1;
  v18 = 0;
  sub_297E4E1B4(0, &v20, 4, 5u, "phLibNfc_SM_Main_PollDiscoveredTransComplete");
  sub_297E4F0E8(v20, &v19);
  sub_297E5D114(v20, &v18);
  if (a3)
  {
    sub_297E96818(v20, a3);
  }

  else
  {
    sub_297E5D398(v20, 0);
  }

  v7 = v19;
  if (!v19)
  {
    goto LABEL_35;
  }

  if (a2 > 63)
  {
    if (a2 <= 73)
    {
      if ((a2 - 64) < 3)
      {
        goto LABEL_18;
      }

      if (a2 != 68)
      {
        if (a2 == 72)
        {
          v9 = v19[855];
          v10 = v19[856];
          *(v19 + 855) = 0u;
          if (v9)
          {
            sub_297E50EBC(0, &v20, 4, 4u, "phLibNfc_SM_Main_PollDiscoveredTransComplete:Invoking callback, wStatus = ");
            sub_297E4D930(1, (v19 + 1224), 4, 67, "phLibNfc_SM_Main_PollDiscoveredTransComplete");
            v9(v19[1223], v10, a4, a3);
          }
        }

        goto LABEL_35;
      }
    }

    else
    {
      v8 = a2 - 74;
      if ((a2 - 74) > 0x24)
      {
        goto LABEL_35;
      }

      if (((1 << v8) & 0x240040000) != 0)
      {
        sub_297E5FC6C(v18, a4, a3);
        goto LABEL_35;
      }

      if (((1 << v8) & 0x1800000000) != 0)
      {
LABEL_22:
        sub_297E5D1EC(v19, a3);
        goto LABEL_35;
      }

      if (a2 != 74)
      {
        goto LABEL_35;
      }
    }

    v11 = v19[847];
    v12 = v19[848];
    *(v19 + 847) = 0u;
    if (!v11)
    {
      goto LABEL_35;
    }

    sub_297E50EBC(0, &v20, 4, 4u, "phLibNfc_Mgt_SetNfccParams:Invoking callback, wStatus = ");
    v13 = v19 + 1224;
    v14 = 132;
    goto LABEL_34;
  }

  if (a2 > 53)
  {
    if ((a2 - 54) >= 7)
    {
      if (a2 != 61)
      {
        if (a2 != 62)
        {
          goto LABEL_35;
        }

        goto LABEL_18;
      }

      v11 = v19[851];
      v12 = v19[852];
      *(v19 + 851) = 0u;
      if (!v11)
      {
        goto LABEL_35;
      }

      sub_297E50EBC(0, &v20, 4, 4u, "phLibNfc_SM_Main_PollDiscoveredTransComplete:Invoking callback, wStatus = ");
      v13 = v19 + 1224;
      v14 = 136;
LABEL_34:
      sub_297E4D930(1, v13, 4, v14, "phLibNfc_SM_Main_PollDiscoveredTransComplete");
      v11(v19[1223], v12, a3);
      goto LABEL_35;
    }

LABEL_18:
    sub_297EFD244(v19, a4, a3);
    goto LABEL_35;
  }

  if (a2 != 17)
  {
    if (a2 != 41)
    {
      goto LABEL_35;
    }

    goto LABEL_22;
  }

  v15 = v19[775];
  v16 = v19[776];
  *(v19 + 775) = 0u;
  if (v15 && *(v7 + 1471) != 1)
  {
    sub_297E4E0B0(0, &v20, 4, 4u, "Invoking upper layer callback");
    sub_297E4D930(1, (v19 + 1224), 4, 15, "phLibNfc_SM_Main_PollDiscoveredTransComplete");
    v15(v19[1223], v16, a4, a4, a3);
  }

LABEL_35:
  sub_297E4DFAC(0, &v20, 4, 5u, "phLibNfc_SM_Main_PollDiscoveredTransComplete");
  return a3;
}

uint64_t sub_297EB3088(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v19 = 0;
  v20 = a1;
  v17 = 0;
  v18 = 0;
  sub_297E4E1B4(0, &v20, 4, 5u, "phLibNfc_SM_GetTagTypeTrans");
  sub_297E4F0E8(v20, &v19);
  v7 = 1;
  if (a5)
  {
    if (a4)
    {
      v8 = v19;
      if (v19)
      {
        v19[352] = a5;
        v8[353] = *(a5 + 8);
        v17 = a4;
        v9 = sub_297ECD484(v8, &v17, &v18, 1);
        if (!v9)
        {
          v9 = sub_297E8CCB4(v19, v18);
          if (!v9)
          {
            v10 = *(v17 + 4);
            if (v10 != 16 && v10 != 11)
            {
              v7 = 51;
              goto LABEL_16;
            }

            v12 = v19;
            *v19[352] = v10;
            v12[370] = off_2A1A929E0;
            *(v12 + 2952) = 0;
            *(v12 + 2954) = 0;
            v13 = off_2A1A929E0[0];
            if (off_2A1A929E0[0])
            {
              v13 = 0;
              v14 = off_2A1A929F0;
              do
              {
                ++v13;
                v15 = *v14;
                v14 += 2;
              }

              while (v15);
            }

            *(v12 + 2953) = v13;
            v9 = sub_297E5588C(v12, 0, 0);
          }
        }

        v7 = v9;
      }
    }
  }

LABEL_16:
  sub_297E4DFAC(0, &v20, 4, 5u, "phLibNfc_SM_GetTagTypeTrans");
  return v7;
}

uint64_t sub_297EB31BC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v12 = 0;
  v13 = a1;
  v10 = 0;
  v11 = 0;
  sub_297E4E1B4(0, &v13, 4, 5u, "phLibNfc_SM_RemDevTransceiveTrans");
  sub_297E4F0E8(v13, &v12);
  v7 = 1;
  if (a5 && a4 && v12)
  {
    v10 = a4;
    v8 = sub_297ECD484(v12, &v10, &v11, 1);
    if (!v8)
    {
      v8 = sub_297E8CCB4(v12, v11);
      if (!v8)
      {
        v8 = sub_297EA1630(v12, a5);
      }
    }

    v7 = v8;
  }

  sub_297E4DFAC(0, &v13, 4, 5u, "phLibNfc_SM_RemDevTransceiveTrans");
  return v7;
}

uint64_t sub_297EB328C(uint64_t a1, uint64_t a2, uint64_t a3, int *a4, uint64_t a5)
{
  v11 = 0;
  v12 = a1;
  sub_297E4E1B4(0, &v12, 4, 5u, "phLibNfc_SM_DisConnectStopTrans");
  sub_297E4F0E8(v12, &v11);
  if (v11)
  {
    v9 = sub_297EE7D84(v11, a2, a3, a4, a5);
    if (!v9)
    {
      v9 = sub_297E5563C(v11, a4, a5);
    }
  }

  else
  {
    v9 = 255;
  }

  sub_297E4DFAC(0, &v12, 4, 5u, "phLibNfc_SM_DisConnectStopTrans");
  return v9;
}

uint64_t sub_297EB3354(uint64_t a1, uint64_t a2, uint64_t a3, int *a4, uint64_t a5)
{
  v11 = 0;
  v12 = a1;
  sub_297E4E1B4(0, &v12, 4, 5u, "phLibNfc_SM_DisConnectReStartTrans");
  sub_297E4F0E8(v12, &v11);
  if (v11)
  {
    v9 = sub_297EE7D84(v11, a2, a3, a4, a5);
    if (!v9)
    {
      v9 = sub_297EE6B84(v11, a4, a5);
    }
  }

  else
  {
    v9 = 255;
  }

  sub_297E4DFAC(0, &v12, 4, 5u, "phLibNfc_SM_DisConnectReStartTrans");
  return v9;
}

uint64_t sub_297EB341C(uint64_t a1)
{
  v7 = 0;
  v8 = a1;
  sub_297E4E1B4(0, &v8, 4, 5u, "phLibNfc_SM_DisConnectSleepTrans");
  sub_297E4F0E8(v8, &v7);
  v1 = v7;
  if (v7)
  {
    *(v7 + 2960) = &qword_2A1A93000;
    v1[2952] = 0;
    v1[2954] = 0;
    v2 = qword_2A1A93000;
    if (qword_2A1A93000)
    {
      v2 = 0;
      v3 = &qword_2A1A93010;
      do
      {
        ++v2;
        v4 = *v3;
        v3 += 2;
      }

      while (v4);
    }

    v1[2953] = v2;
    v5 = sub_297E5588C(v1, 0, 0);
  }

  else
  {
    v5 = 255;
  }

  sub_297E4DFAC(0, &v8, 4, 5u, "phLibNfc_SM_DisConnectSleepTrans");
  return v5;
}

uint64_t sub_297EB34E4(uint64_t a1, int a2)
{
  v11 = 0;
  v12 = a1;
  sub_297E4E1B4(0, &v12, 4, 5u, "phLibNfc_SM_DisConnectTagRemDetTrans");
  sub_297E4F0E8(v12, &v11);
  v3 = v11;
  if (v11)
  {
    if (a2 == 24)
    {
      *(v11 + 2960) = off_2A1A92FB0;
      v3[2952] = 0;
      v3[2954] = 0;
      v4 = off_2A1A92FB0[0];
      if (off_2A1A92FB0[0])
      {
        v4 = 0;
        v5 = &qword_2A1A92FC0;
        do
        {
          ++v4;
          v6 = *v5;
          v5 += 2;
        }

        while (v6);
      }
    }

    else
    {
      *(v11 + 2960) = &qword_2A1A93100;
      v3[2952] = 0;
      v3[2954] = 0;
      v4 = qword_2A1A93100;
      if (qword_2A1A93100)
      {
        v4 = 0;
        v8 = &qword_2A1A93110;
        do
        {
          ++v4;
          v9 = *v8;
          v8 += 2;
        }

        while (v9);
      }
    }

    v3[2953] = v4;
    v7 = sub_297E5588C(v3, 0, 0);
  }

  else
  {
    v7 = 255;
  }

  sub_297E4DFAC(0, &v12, 4, 5u, "phLibNfc_SM_DisConnectTagRemDetTrans");
  return v7;
}

uint64_t sub_297EB35F0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v7 = 0;
  v8 = a1;
  sub_297E4E1B4(0, &v8, 4, 5u, "phLibNfc_SM_CheckPresenceTrans");
  sub_297E4F0E8(v8, &v7);
  v5 = 1;
  if (a4 && v7)
  {
    v5 = sub_297ECFEBC(v7, a4);
  }

  sub_297E4DFAC(0, &v8, 4, 5u, "phLibNfc_SM_CheckPresenceTrans");
  return v5;
}

uint64_t sub_297EB3684(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, _BYTE *a5)
{
  v16 = 0;
  v17 = a1;
  v14 = a4;
  v15 = 0;
  v13 = 0;
  sub_297E4E1B4(0, &v17, 4, 5u, "phLibNfc_SM_CheckNdefTrans");
  sub_297E4F0E8(v17, &v16);
  v7 = 149;
  if (a5)
  {
    if (a4)
    {
      if (v16)
      {
        v7 = sub_297ECD484(v16, &v14, &v13, 1);
        if (!v7)
        {
          if (v13)
          {
            if (sub_297E8CCB4(v16, v13))
            {
              v7 = 149;
              goto LABEL_11;
            }

            v8 = sub_297E98B4C(v17, v14);
            if (v8)
            {
LABEL_9:
              v7 = v8;
              goto LABEL_11;
            }

            v7 = sub_297E98C58(v17, *(v16 + 2933));
            if (v7)
            {
              goto LABEL_11;
            }

            v10 = *(v14 + 4);
            if (v10 <= 15)
            {
              if ((v10 - 13) >= 3 && (v10 - 10) >= 2)
              {
                if (v10 != 12)
                {
                  goto LABEL_11;
                }

LABEL_29:
                v11 = *(v14 + 68);
                if (v11 <= 0x19 && ((1 << v11) & 0x3000300) != 0)
                {
                  v11 &= 0x18u;
                }

                if (v11 <= 7)
                {
                  if (!v11)
                  {
LABEL_45:
                    v8 = sub_297ED2424(v17, sub_297ECB488, v16);
                    goto LABEL_9;
                  }

                  if (v11 == 1)
                  {
                    goto LABEL_36;
                  }
                }

                else if (v11 == 8 || v11 == 24 || v11 == 136)
                {
LABEL_36:
                  v8 = sub_297ED7828(v17);
                  if (!v8)
                  {
                    v8 = sub_297ED78C8(v17, sub_297ECB488, v16);
                  }

                  goto LABEL_9;
                }

                if (v10 != 12)
                {
                  v7 = 0;
                  goto LABEL_11;
                }

                goto LABEL_45;
              }

              goto LABEL_21;
            }

            if (v10 > 20)
            {
              if (v10 == 23)
              {
                v8 = sub_297E97ED8(v17, sub_297ECB488, v16);
                goto LABEL_9;
              }

              if (v10 != 22)
              {
                if (v10 != 21)
                {
                  goto LABEL_11;
                }

                v8 = sub_297EC1F6C(v17, sub_297ECB488, v16);
                goto LABEL_9;
              }

              v12 = *(v14 + 19);
              if ((v12 & 0xF0) == 0x10)
              {
                if (v12 == 17)
                {
                  v8 = sub_297EE1C94(v17, sub_297ECB488, v16);
                }

                else
                {
                  v8 = sub_297F0AFF8(v17, sub_297ECB488, v16);
                }

                goto LABEL_9;
              }

              goto LABEL_28;
            }

            if (v10 == 16)
            {
              goto LABEL_29;
            }

            if (v10 == 17 || v10 == 19)
            {
LABEL_21:
              sub_297E57170(v17, &v15);
              if (v15)
              {
                *(v15 + 2780) = *a5;
                v8 = sub_297E745F4(v17, sub_297ECB488, v16);
                goto LABEL_9;
              }

              sub_297E4E0B0(0, &v17, 4, 2u, "phLibNfc_SM_CheckNdefTrans: Unable to Retrieve NDEF context");
LABEL_28:
              v7 = 255;
            }
          }
        }
      }
    }
  }

LABEL_11:
  sub_297E4E1B4(0, &v17, 4, 5u, "phLibNfc_SM_CheckNdefTrans");
  return v7;
}

uint64_t sub_297EB396C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5)
{
  v23 = 0;
  v24 = a1;
  v21 = 0;
  v22 = a4;
  sub_297E4E1B4(0, &v24, 4, 5u, "phLibNfc_SM_ReadNdefTrans");
  sub_297E4F0E8(v24, &v23);
  v7 = 1;
  if (!a5)
  {
    goto LABEL_28;
  }

  if (!a4)
  {
    goto LABEL_28;
  }

  v8 = v23;
  if (!v23)
  {
    goto LABEL_28;
  }

  if (!v23[188])
  {
    v7 = 148;
    goto LABEL_28;
  }

  v9 = *(v23 + 6904);
  if (v9 == 2)
  {
LABEL_27:
    v7 = 147;
    goto LABEL_28;
  }

  if (v9 == 1 && *(v23 + 6905) == 1)
  {
    sub_297E4E0B0(0, &v24, 4, 2u, "phLibNfc_Ndef_Read not allowed as Current Ndef message size exceeds Max Tag Ndef message size");
    goto LABEL_27;
  }

  if (*(v23 + 6904))
  {
    if (v9 == 1 && !*(v23 + 1715))
    {
      v11 = v23[859];
      if (v11 && *(v11 + 242) == 1 || !sub_297E8DBC8(v23, a4))
      {
        v7 = 0;
        *(a5 + 2) = 0;
        goto LABEL_28;
      }

      v8 = v23;
    }

    v7 = sub_297ECD484(v8, &v22, &v21, 1);
    if (!v7)
    {
      if (v21)
      {
        v7 = sub_297E8CCB4(v23, v21);
        if (!v7)
        {
          v12 = v23;
          *v23[110] = 1;
          *(v12 + 1730) = 1;
          v12[861] = a5;
          v13 = *(v22 + 4);
          if (v13 <= 15)
          {
            if ((v13 - 13) >= 3 && (v13 - 10) >= 2)
            {
              if (v13 != 12)
              {
                goto LABEL_28;
              }

              goto LABEL_41;
            }

            goto LABEL_35;
          }

          if (v13 > 20)
          {
            switch(v13)
            {
              case 23:
                v15 = sub_297E97FD0(v24, *a5, a5 + 2, *(v12 + 6856), sub_297ECB664, v12);
                break;
              case 22:
                v19 = *a5;
                v18 = a5 + 1;
                v17 = v19;
                v20 = *(v12 + 6856);
                if (*(v22 + 19) == 17)
                {
                  v15 = sub_297EE20FC(v24, v17, v18, v20, sub_297ECB664, v12);
                }

                else
                {
                  v15 = sub_297F0B298(v24, v17, v18, v20, sub_297ECB664, v12);
                }

                break;
              case 21:
                v15 = sub_297EBF88C(v24, *a5, a5 + 2, *(v12 + 6856), sub_297ECB664, v12);
                break;
              default:
                goto LABEL_28;
            }

            goto LABEL_36;
          }

          if (v13 == 16)
          {
LABEL_41:
            v16 = *(v22 + 68);
            if (v16 <= 0x19 && ((1 << v16) & 0x3000300) != 0)
            {
              v16 &= 0x18u;
            }

            if (v16 <= 7)
            {
              if (!v16)
              {
LABEL_55:
                v15 = sub_297ED11B8(v24, *a5, a5 + 2, *(v12 + 6856), sub_297ECB664, v12);
                goto LABEL_36;
              }

              if (v16 == 1)
              {
LABEL_48:
                v15 = sub_297ED7FE4(v24, *a5, a5 + 2, *(v12 + 6856), sub_297ECB664, v12);
                goto LABEL_36;
              }
            }

            else if (v16 == 8 || v16 == 24 || v16 == 136)
            {
              goto LABEL_48;
            }

            if (v13 != 12)
            {
              v7 = 0;
              goto LABEL_28;
            }

            goto LABEL_55;
          }

          if (v13 == 17 || v13 == 19)
          {
LABEL_35:
            v15 = sub_297E738B4(v24, *a5, a5 + 2, *(v12 + 6856), sub_297ECB664, v12);
LABEL_36:
            v7 = v15;
          }
        }
      }
    }
  }

  else
  {
    v7 = 152;
  }

LABEL_28:
  sub_297E4DFAC(0, &v24, 4, 5u, "phLibNfc_SM_ReadNdefTrans");
  return v7;
}

uint64_t sub_297EB3CE4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5)
{
  v19 = 0;
  v20 = a1;
  v17 = a4;
  v18 = 0;
  v16 = 0;
  sub_297E4E1B4(0, &v20, 4, 5u, "phLibNfc_SM_WriteNdefTrans");
  sub_297E4F0E8(v20, &v19);
  sub_297E57170(v20, &v18);
  v7 = 1;
  if (!a5 || !a4 || !v19)
  {
    goto LABEL_27;
  }

  if (!v19[188])
  {
    v7 = 148;
    goto LABEL_27;
  }

  if (*(v19 + 6904) == 2)
  {
    v7 = 147;
    goto LABEL_27;
  }

  if (!*(v19 + 6904))
  {
    v7 = 152;
    goto LABEL_27;
  }

  if (v18 && (*(v18 + 545) | 2) == 3)
  {
    v7 = 58;
    goto LABEL_27;
  }

  if (*(a5 + 2) > *(v19 + 1725))
  {
    v7 = 31;
    goto LABEL_27;
  }

  v8 = sub_297ECD484(v19, &v17, &v16, 1);
  if (v8 || !v16 || !v18)
  {
    if (v8 == 149)
    {
      v7 = 149;
    }

    else
    {
      v7 = 255;
    }

    goto LABEL_27;
  }

  v7 = sub_297E8CCB4(v19, v16);
  if (v7)
  {
    goto LABEL_27;
  }

  v9 = v19;
  v19[861] = a5;
  v10 = *(a5 + 2);
  *(v9 + 1716) = v10;
  *(v9 + 1730) = 2;
  *v9[110] = 1;
  *(v9 + 1724) = v10;
  v11 = *(v17 + 4);
  if (v11 <= 15)
  {
    if ((v11 - 13) >= 3 && (v11 - 10) >= 2)
    {
      if (v11 != 12)
      {
        goto LABEL_34;
      }

LABEL_40:
      v14 = *(v17 + 68);
      if (v14 <= 0x19 && ((1 << v14) & 0x3000300) != 0)
      {
        v14 &= 0x18u;
      }

      if (v14 <= 7)
      {
        if (!v14)
        {
LABEL_54:
          v13 = sub_297ED1528(v20, *a5, v9 + 1724, 1u, sub_297ECB7F4, v9);
          goto LABEL_33;
        }

        if (v14 == 1)
        {
LABEL_47:
          v13 = sub_297ED8828(v20, *a5, v9 + 1724, 1, sub_297ECB7F4, v9);
          goto LABEL_33;
        }
      }

      else if (v14 == 8 || v14 == 24 || v14 == 136)
      {
        goto LABEL_47;
      }

      if (v11 != 12)
      {
        v7 = 0;
        goto LABEL_34;
      }

      goto LABEL_54;
    }

    goto LABEL_32;
  }

  if (v11 > 20)
  {
    switch(v11)
    {
      case 23:
        v13 = sub_297E982D8(v20, *a5, v9 + 1724, 1, sub_297ECB7F4, v9);
        break;
      case 22:
        v15 = *a5;
        if (*(v17 + 19) == 17)
        {
          v13 = sub_297EE2334(v20, v15, v9 + 1724, 1, sub_297ECB7F4, v9);
        }

        else
        {
          v13 = sub_297F0B8E0(v20, v15, v9 + 1724, 1, sub_297ECB7F4, v9);
        }

        break;
      case 21:
        v13 = sub_297EC0BA4(v20, *a5, v9 + 6896, 1u, sub_297ECB7F4, v9);
        break;
      default:
        goto LABEL_34;
    }

LABEL_33:
    v7 = v13;
    goto LABEL_34;
  }

  if (v11 == 16)
  {
    goto LABEL_40;
  }

  if (v11 == 17 || v11 == 19)
  {
LABEL_32:
    *(v18 + 220) = *(v9 + 1717);
    v13 = sub_297E73FB0(v20, *a5, v9 + 1724, 1, sub_297ECB7F4, v9);
    goto LABEL_33;
  }

LABEL_34:
  if (!*(a5 + 2))
  {
    *(v19 + 1724) = 3;
  }

LABEL_27:
  sub_297E4DFAC(0, &v20, 4, 5u, "phLibNfc_SM_WriteNdefTrans");
  return v7;
}

uint64_t sub_297EB406C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v18 = 0;
  v19 = a1;
  v16 = 0;
  v17 = a4;
  v15 = 0;
  v14 = 0;
  sub_297E4E1B4(0, &v19, 4, 5u, "phLibNfc_SM_FormatNdefTrans");
  sub_297E4F0E8(v19, &v18);
  v7 = 1;
  if (a5 && a4 && v18)
  {
    if (v18[188])
    {
      if (*(v18 + 6904) == 1)
      {
        v7 = 147;
      }

      else
      {
        v7 = 149;
        if (!sub_297ECD484(v18, &v17, &v16, 1) && v16 && !sub_297E8CCB4(v18, v16))
        {
          v8 = v17;
          v9 = v18;
          *(v18 + 1730) = 3;
          *(v9 + 3440) = 252;
          sub_297EA0F28(v9[864], v9[869], v8, v9[868], *(v9[859] + 184), v9 + 3440);
          sub_297EA101C(v18[864], 0, sub_297ECB2F4, v18);
          sub_297EA101C(v18[864], 1u, sub_297ECB2F4, v18);
          v10 = *(a5 + 8);
          if (v10)
          {
            v11 = 0;
            v12 = *a5 + 1;
            do
            {
              *a5 = v12;
              *(&v14 + v11++) = *(v12++ - 1);
            }

            while (v10 > v11);
          }

          v7 = sub_297EA10B8(v18[864], &v14);
        }
      }
    }

    else
    {
      v7 = 148;
    }
  }

  sub_297E4DFAC(0, &v19, 4, 5u, "phLibNfc_SM_FormatNdefTrans");
  return v7;
}

uint64_t sub_297EB4218(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v18 = 0;
  v19 = a1;
  v16 = a4;
  v17 = 0;
  v15 = 0;
  sub_297E4E1B4(0, &v19, 4, 5u, "phLibNfc_SM_ReadOnlyTrans");
  sub_297E4F0E8(v19, &v18);
  sub_297E57170(v19, &v17);
  v7 = 255;
  if (!a4 || !v18)
  {
    goto LABEL_7;
  }

  if (*(v18 + 6904) == 2)
  {
    v7 = 147;
    goto LABEL_7;
  }

  if (!*(v18 + 6904))
  {
    v7 = 152;
    goto LABEL_7;
  }

  if (v17)
  {
    v9 = *(v17 + 545);
    v10 = *(v18 + 9796);
    if (v9 == 2)
    {
      if (v10 == 1)
      {
        v7 = 58;
        goto LABEL_7;
      }
    }

    else
    {
      v7 = 58;
      if (v9 != 1 || v10 != 1)
      {
        goto LABEL_7;
      }
    }
  }

  v7 = 149;
  if (sub_297ECD484(v18, &v16, &v15, 1) || !v15 || sub_297E8CCB4(v18, v15))
  {
    goto LABEL_7;
  }

  v11 = v18;
  *(v18 + 1730) = 4;
  v12 = *(v16 + 4);
  v7 = 51;
  if (v12 <= 15)
  {
    if ((v12 - 13) >= 3 && v12 != 11)
    {
      if (v12 != 12)
      {
        goto LABEL_7;
      }

      goto LABEL_31;
    }

    v13 = sub_297E746B0(v19, sub_297ECB1A4, v11);
LABEL_27:
    v7 = v13;
    goto LABEL_7;
  }

  if (v12 > 21)
  {
    if (v12 == 22)
    {
      v14 = *(v16 + 19);
      if ((v14 & 0xF0) != 0x10)
      {
        v7 = 255;
        goto LABEL_7;
      }

      if (v14 == 17)
      {
        v13 = sub_297EE1F1C(v19, sub_297ECB1A4, v11);
      }

      else
      {
        v13 = sub_297F0B6C4(v19, sub_297ECB1A4, v11);
      }
    }

    else
    {
      if (v12 != 23)
      {
        goto LABEL_7;
      }

      v13 = sub_297E9855C(v19, sub_297ECB1A4, v11);
    }

    goto LABEL_27;
  }

  if (v12 != 16)
  {
    if (v12 != 21)
    {
      goto LABEL_7;
    }

    v13 = sub_297EC0E24(v19, sub_297ECB1A4, v11);
    goto LABEL_27;
  }

LABEL_31:
  if (*(v11 + 9796) == 1)
  {
    goto LABEL_7;
  }

  if (v12 == 12 || !*(v16 + 68))
  {
    v13 = sub_297ED2A48(v19, sub_297ECB1A4, v11);
    goto LABEL_27;
  }

  v7 = 1;
  if (a5 && v17 && *a5 && *(a5 + 8) == 6)
  {
    phOsalNfc_MemCopy();
    v13 = sub_297EDD10C(v19, sub_297ECB1A4, v18);
    goto LABEL_27;
  }

LABEL_7:
  sub_297E4E1B4(0, &v19, 4, 5u, "phLibNfc_SM_ReadOnlyTrans");
  return v7;
}

uint64_t sub_297EB44EC(uint64_t a1)
{
  v10 = 0;
  v11 = a1;
  sub_297E4E1B4(0, &v11, 4, 5u, "phLibNfc_SM_ISO15693_HdrConfigTrans");
  sub_297E4F0E8(v11, &v10);
  if (!v10 || (v1 = *(v10 + 1400)) == 0)
  {
    v5 = 1;
    sub_297E4E0B0(0, &v11, 4, 1u, "phLibNfc_SM_ISO15693_HdrConfigTrans: Failed");
    goto LABEL_11;
  }

  if (*(v10 + 2986) != 1 && *(v10 + 2992) != 1 || *(v1 + 4) != 23)
  {
    sub_297E4E0B0(0, &v11, 4, 1u, "phLibNfc_SM_ISO15693_HdrConfigTrans: Feature not supported on this platform or tag");
    v5 = 51;
    goto LABEL_11;
  }

  v2 = sub_297E55558(*(v10 + 3088), *(v10 + 1504));
  v3 = v10;
  v4 = (v10 + 1504);
  if (v2)
  {
    *v4 = 0;
    v4[1] = 0;
LABEL_8:
    sub_297E4E0B0(0, &v11, 4, 1u, "Target not connected");
    v5 = 148;
    goto LABEL_11;
  }

  if (!*v4)
  {
    goto LABEL_8;
  }

  *(v10 + 2960) = &qword_2A1A93AE0;
  v3[2952] = 0;
  v3[2954] = 0;
  v7 = qword_2A1A93AE0;
  if (qword_2A1A93AE0)
  {
    v7 = 0;
    v8 = &qword_2A1A93AF0;
    do
    {
      ++v7;
      v9 = *v8;
      v8 += 2;
    }

    while (v9);
  }

  v3[2953] = v7;
  v5 = sub_297E5588C(v3, 0, 0);
LABEL_11:
  sub_297E4DFAC(0, &v11, 4, 5u, "phLibNfc_SM_ISO15693_HdrConfigTrans");
  return v5;
}

uint64_t sub_297EB466C(uint64_t a1, int a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v30 = 0;
  v31 = a1;
  v29 = 0;
  sub_297E4E1B4(0, &v31, 4, 5u, "phLibNfc_SM_Main_PollActiveTransComplete");
  sub_297E4F0E8(v31, &v30);
  sub_297E5D114(v31, &v29);
  if (a3)
  {
    sub_297E96818(v31, a3);
  }

  else
  {
    sub_297E5D398(v31, 0);
  }

  v9 = v30;
  if (!v30)
  {
    v10 = 1;
    goto LABEL_47;
  }

  v10 = 1;
  if (a2 <= 106)
  {
    switch(a2)
    {
      case 17:
        goto LABEL_12;
      case 18:
        v19 = v30[777];
        v25 = v30[778];
        *(v30 + 777) = 0u;
        if (!v19)
        {
          goto LABEL_46;
        }

        sub_297E50EBC(0, &v31, 4, 4u, "Get Tag Type:Invoking callback function, wStatus = ");
        sub_297E4D930(1, (v30 + 1224), 4, 16, "phLibNfc_SM_Main_PollActiveTransComplete");
        v21 = v30[1223];
        v23 = v30[352];
        goto LABEL_35;
      case 19:
        v19 = v30[779];
        v25 = v30[780];
        *(v30 + 779) = 0u;
        if (!v19)
        {
          goto LABEL_46;
        }

        sub_297E50EBC(0, &v31, 4, 4u, "phLibNfc_SM_Main_PollActiveTransComplete:phLibNfc_SM_eRemDevTransceive:Invoking callback function, wStatus = ");
        sub_297E4D930(1, (v30 + 1224), 4, 17, "phLibNfc_SM_Main_PollActiveTransComplete");
        v21 = v30[1223];
        v23 = v30 + 325;
LABEL_35:
        v24 = v25;
        v22 = a4;
        goto LABEL_36;
      case 20:
      case 21:
      case 24:
        goto LABEL_14;
      case 22:
      case 23:
        v17 = v30[783];
        v18 = v30[784];
        *(v30 + 783) = 0u;
        if (v17)
        {
          sub_297E4D930(1, (v9 + 1224), 4, 130, "phLibNfc_SM_Main_PollActiveTransComplete");
          v17(v30[1223], v18, 0, a3);
        }

        goto LABEL_46;
      case 25:
        v13 = v30[809];
        v14 = v30[810];
        *(v30 + 809) = 0u;
        if (!v13)
        {
          goto LABEL_46;
        }

        v15 = v9 + 1224;
        v16 = 22;
        goto LABEL_45;
      case 26:
        v19 = v30[789];
        v20 = v30[790];
        *(v30 + 789) = 0u;
        phOsalNfc_SetMemory();
        if (!v19)
        {
          goto LABEL_46;
        }

        if (a4)
        {
          phOsalNfc_MemCopy();
        }

        sub_297E4E0B0(0, &v31, 4, 4u, "Invoking upper layer callback");
        sub_297E4D930(1, (v30 + 1224), 4, 23, "phLibNfc_SM_Main_PollActiveTransComplete");
        v21 = v30[1223];
        v22 = 0;
        v23 = 0;
        v24 = v20;
LABEL_36:
        v19(v21, v24, v22, v23, a3);
        goto LABEL_46;
      case 27:
        v13 = v30[801];
        v14 = v30[802];
        *(v30 + 801) = 0u;
        if (!v13)
        {
          goto LABEL_46;
        }

        sub_297E4E0B0(0, &v31, 4, 4u, "Invoking upper layer callback");
        v15 = v30 + 1224;
        v16 = 24;
        goto LABEL_45;
      case 28:
        v13 = v30[803];
        v14 = v30[804];
        *(v30 + 803) = 0u;
        if (!v13)
        {
          goto LABEL_46;
        }

        sub_297E4E0B0(0, &v31, 4, 4u, "Invoking upper layer callback");
        v15 = v30 + 1224;
        v16 = 25;
        goto LABEL_45;
      case 29:
        v13 = v30[853];
        v14 = v30[854];
        *(v30 + 853) = 0u;
        if (!v13)
        {
          goto LABEL_46;
        }

        sub_297E4E0B0(0, &v31, 4, 4u, "Invoking upper layer callback");
        v15 = v30 + 1224;
        v16 = 26;
        goto LABEL_45;
      case 30:
        *(v30 + 9796) = 0;
        v13 = v9[805];
        v14 = v9[806];
        *(v9 + 805) = 0u;
        if (!v13)
        {
          goto LABEL_46;
        }

        sub_297E4E0B0(0, &v31, 4, 4u, "Invoking upper layer callback");
        v15 = v30 + 1224;
        v16 = 27;
        goto LABEL_45;
      case 31:
      case 32:
      case 33:
      case 34:
      case 35:
      case 36:
      case 37:
      case 38:
      case 39:
      case 40:
      case 41:
      case 42:
      case 43:
      case 44:
      case 45:
      case 46:
      case 47:
      case 48:
      case 49:
      case 50:
      case 51:
      case 52:
      case 53:
      case 63:
      case 67:
      case 69:
      case 70:
      case 71:
      case 73:
      case 76:
      case 77:
      case 78:
      case 79:
      case 80:
      case 81:
      case 82:
      case 83:
      case 84:
      case 85:
      case 86:
      case 87:
      case 88:
      case 89:
        goto LABEL_47;
      case 54:
      case 55:
      case 56:
      case 57:
      case 58:
      case 59:
      case 60:
      case 62:
      case 64:
      case 65:
      case 66:
        sub_297EFD244(v30, a4, a3);
        goto LABEL_46;
      case 61:
        v13 = v30[851];
        v14 = v30[852];
        *(v30 + 851) = 0u;
        if (!v13)
        {
          goto LABEL_46;
        }

        sub_297E50EBC(0, &v31, 4, 4u, "phLibNfc_SM_Main_PollActiveTransComplete:Invoking callback, wStatus = ");
        v15 = v30 + 1224;
        v16 = 136;
        goto LABEL_45;
      case 68:
      case 74:
      case 75:
        v13 = v30[847];
        v14 = v30[848];
        *(v30 + 847) = 0u;
        if (!v13)
        {
          goto LABEL_46;
        }

        sub_297E50EBC(0, &v31, 4, 4u, "phLibNfc_Mgt_SetNfccParams:Invoking callback, wStatus = ");
        v15 = v30 + 1224;
        v16 = 132;
LABEL_45:
        sub_297E4D930(1, v15, 4, v16, "phLibNfc_SM_Main_PollActiveTransComplete");
        v13(v30[1223], v14, a3);
        goto LABEL_46;
      case 72:
        v26 = v30[855];
        v27 = v30[856];
        *(v30 + 855) = 0u;
        if (v26)
        {
          sub_297E50EBC(0, &v31, 4, 4u, "phLibNfc_SM_Main_PollActiveTransComplete:Invoking callback, wStatus = ");
          sub_297E4D930(1, (v30 + 1224), 4, 67, "phLibNfc_SM_Main_PollActiveTransComplete");
          v26(v30[1223], v27, a4, a3);
        }

        goto LABEL_46;
      case 90:
      case 91:
      case 92:
        goto LABEL_20;
      default:
        if (a2 == 104)
        {
          goto LABEL_20;
        }

        goto LABEL_47;
    }
  }

  if ((a2 - 109) < 2)
  {
LABEL_14:
    sub_297E5D1EC(v30, a3);
LABEL_46:
    v10 = a3;
    goto LABEL_47;
  }

  if (a2 == 107)
  {
LABEL_20:
    sub_297E5FC6C(v29, a4, a3);
    goto LABEL_46;
  }

  if (a2 == 127)
  {
LABEL_12:
    v11 = v30[775];
    v12 = v30[776];
    *(v30 + 775) = 0u;
    if (v11)
    {
      sub_297E4E0B0(0, &v31, 4, 4u, "Invoking upper layer callback");
      sub_297E4D930(1, (v30 + 1224), 4, 15, "phLibNfc_SM_Main_PollActiveTransComplete");
      v11(v30[1223], v12, a4, a5, a3);
    }

    goto LABEL_46;
  }

LABEL_47:
  sub_297E4DFAC(0, &v31, 4, 5u, "phLibNfc_SM_Main_PollActiveTransComplete");
  return v10;
}

uint64_t sub_297EB4D44(uint64_t a1, int a2, uint64_t a3, uint64_t a4)
{
  v19 = 0;
  v20 = a1;
  v18 = 0;
  sub_297E4E1B4(0, &v20, 4, 5u, "phLibNfc_SM_Main_ListenActiveTransComplete");
  sub_297E4F0E8(v20, &v19);
  sub_297E5D114(v20, &v18);
  if (a3)
  {
    sub_297E96818(v20, a3);
  }

  else
  {
    sub_297E5D398(v20, 0);
  }

  if (!v19)
  {
    v7 = 1;
    goto LABEL_19;
  }

  v7 = 1;
  if (a2 > 67)
  {
    if (a2 > 89)
    {
      v8 = a2 - 90;
      if ((a2 - 90) <= 0x1F)
      {
        if (((1 << v8) & 0x24007) != 0)
        {
          sub_297E5FC6C(v18, a4, a3);
        }

        else if (((1 << v8) & 0x180000) != 0)
        {
          sub_297E5D1EC(v19, a3);
        }

        else
        {
          if (a2 != 121)
          {
            goto LABEL_19;
          }

          v14 = v19[839];
          if (v14)
          {
            v15 = v19[840];
            sub_297E4E0B0(0, &v20, 4, 4u, "Invoking upper layer callback");
            sub_297E54734(0, &v20, 4, 4u, "phLibNfc_SM_Main_ListenActiveTransComplete :CEHostNtfCb [Hce Activated Ntf]");
            v14(v19[1223], v15, v19 + 109, *(v19 + 762), a3);
          }
        }

        goto LABEL_18;
      }

      goto LABEL_19;
    }

    if (a2 != 68)
    {
      if (a2 == 72)
      {
        v16 = v19[855];
        v17 = v19[856];
        *(v19 + 855) = 0u;
        if (v16)
        {
          sub_297E50EBC(0, &v20, 4, 4u, "phLibNfc_SM_Main_ListenActiveTransComplete:Invoking callback, wStatus = ");
          sub_297E4D930(1, (v19 + 1224), 4, 67, "phLibNfc_SM_Main_ListenActiveTransComplete");
          v16(v19[1223], v17, a4, a3);
        }

        goto LABEL_18;
      }

      if (a2 != 74)
      {
        goto LABEL_19;
      }
    }

    v10 = v19[847];
    v11 = v19[848];
    *(v19 + 847) = 0u;
    if (!v10)
    {
LABEL_18:
      v7 = a3;
      goto LABEL_19;
    }

    sub_297E50EBC(0, &v20, 4, 4u, "phLibNfc_Mgt_SetNfccParams:Invoking callback, wStatus = ");
    v12 = v19 + 1224;
    v13 = 132;
LABEL_32:
    sub_297E4D930(1, v12, 4, v13, "phLibNfc_SM_Main_ListenActiveTransComplete");
    v10(v19[1223], v11, a3);
    goto LABEL_18;
  }

  if (a2 <= 60)
  {
    if ((a2 - 54) >= 7)
    {
      goto LABEL_19;
    }

    goto LABEL_17;
  }

  if ((a2 - 64) < 3)
  {
LABEL_17:
    sub_297EFD244(v19, a4, a3);
    goto LABEL_18;
  }

  if (a2 == 61)
  {
    v10 = v19[851];
    v11 = v19[852];
    *(v19 + 851) = 0u;
    if (!v10)
    {
      goto LABEL_18;
    }

    sub_297E50EBC(0, &v20, 4, 4u, "phLibNfc_SM_Main_ListenActiveTransComplete:Invoking callback, wStatus = ");
    v12 = v19 + 1224;
    v13 = 136;
    goto LABEL_32;
  }

  if (a2 == 62)
  {
    goto LABEL_17;
  }

LABEL_19:
  sub_297E4DFAC(0, &v20, 4, 5u, "phLibNfc_SM_Main_ListenActiveTransComplete");
  return v7;
}

uint64_t sub_297EB5088(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v11 = 0;
  v12 = a1;
  v9 = 0;
  v10 = a4;
  sub_297E4E1B4(0, &v12, 4, 5u, "phLibNfc_SM_RemDevReceiveTrans");
  sub_297E4F0E8(v12, &v9);
  v5 = 1;
  if (a4)
  {
    if (v9)
    {
      v5 = sub_297ECD484(v9, &v10, &v11, 1);
      if (!v5)
      {
        if (v11)
        {
          v6 = v9;
          *(v9 + 534) = 0;
          if (*(v6 + 533) == 1)
          {
            v7 = sub_297EDE9B4(v6);
          }

          else
          {
            v7 = sub_297E763CC(*(v6 + 3088), sub_297EDEC34, v6);
          }

          v5 = v7;
        }
      }
    }
  }

  sub_297E4DFAC(0, &v12, 4, 5u, "phLibNfc_SM_RemDevReceiveTrans");
  return v5;
}

uint64_t sub_297EB516C(uint64_t a1, int a2, uint64_t a3, uint64_t a4)
{
  v19 = 0;
  v20 = a1;
  v18 = 0;
  sub_297E4E1B4(0, &v20, 4, 5u, "phLibNfc_SM_Main_ListenReceiveTransComplete");
  sub_297E4F0E8(v20, &v19);
  sub_297E5D114(v20, &v18);
  if (a3)
  {
    sub_297E96818(v20, a3);
  }

  else
  {
    sub_297E5D398(v20, 0);
  }

  if (!v19)
  {
    v7 = 1;
    goto LABEL_28;
  }

  v7 = 1;
  if (a2 <= 63)
  {
    if (a2 > 60)
    {
      if (a2 == 61)
      {
        v14 = v19[851];
        v15 = v19[852];
        *(v19 + 851) = 0u;
        if (!v14)
        {
          goto LABEL_27;
        }

        sub_297E50EBC(0, &v20, 4, 4u, "phLibNfc_SM_Main_ListenReceiveTransComplete:Invoking callback, wStatus = ");
        v16 = v19 + 1224;
        v17 = 136;
        goto LABEL_34;
      }

      if (a2 != 62)
      {
        goto LABEL_28;
      }
    }

    else if ((a2 - 54) >= 7)
    {
      if (a2 != 32)
      {
        goto LABEL_28;
      }

      v9 = v19[843];
      v10 = v19[844];
      *(v19 + 843) = 0u;
      if (!v9)
      {
        goto LABEL_27;
      }

      sub_297E4E0B0(0, &v20, 4, 4u, "Invoking upper layer callback");
      v11 = v19 + 1224;
      v12 = 30;
LABEL_22:
      sub_297E4D930(1, v11, 4, v12, "phLibNfc_SM_Main_ListenReceiveTransComplete");
      v9(v19[1223], v10, a4, a3);
      goto LABEL_27;
    }

LABEL_26:
    sub_297EFD244(v19, a4, a3);
    goto LABEL_27;
  }

  if (a2 > 73)
  {
    v8 = a2 - 74;
    if ((a2 - 74) <= 0x24)
    {
      if (((1 << v8) & 0x240040000) != 0)
      {
        sub_297E5FC6C(v18, a4, a3);
        goto LABEL_27;
      }

      if (((1 << v8) & 0x1800000000) != 0)
      {
        sub_297E5D1EC(v19, a3);
LABEL_27:
        v7 = a3;
        goto LABEL_28;
      }

      if (a2 != 74)
      {
        goto LABEL_28;
      }

      goto LABEL_30;
    }

    goto LABEL_28;
  }

  if ((a2 - 64) < 3)
  {
    goto LABEL_26;
  }

  if (a2 == 68)
  {
LABEL_30:
    v14 = v19[847];
    v15 = v19[848];
    *(v19 + 847) = 0u;
    if (!v14)
    {
      goto LABEL_27;
    }

    sub_297E50EBC(0, &v20, 4, 4u, "phLibNfc_Mgt_SetNfccParams:Invoking callback, wStatus = ");
    v16 = v19 + 1224;
    v17 = 132;
LABEL_34:
    sub_297E4D930(1, v16, 4, v17, "phLibNfc_SM_Main_ListenReceiveTransComplete");
    v14(v19[1223], v15, a3);
    goto LABEL_27;
  }

  if (a2 == 72)
  {
    v9 = v19[855];
    v10 = v19[856];
    *(v19 + 855) = 0u;
    if (!v9)
    {
      goto LABEL_27;
    }

    sub_297E50EBC(0, &v20, 4, 4u, "phLibNfc_SM_Main_ListenReceiveTransComplete:Invoking callback, wStatus = ");
    v11 = v19 + 1224;
    v12 = 67;
    goto LABEL_22;
  }

LABEL_28:
  sub_297E4DFAC(0, &v20, 4, 5u, "phLibNfc_SM_Main_ListenReceiveTransComplete");
  return v7;
}

uint64_t sub_297EB54A4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v15 = 0;
  v16 = a1;
  v13 = a4;
  v14 = 0;
  sub_297E4E1B4(0, &v16, 4, 5u, "phLibNfc_SM_RemDevSendTrans");
  sub_297E4F0E8(v16, &v15);
  v7 = 1;
  if (a5)
  {
    if (a4)
    {
      if (v15)
      {
        v7 = sub_297ECD484(v15, &v13, &v14, 1);
        if (!v7)
        {
          if (v14)
          {
            v8 = v15;
            *(v15 + 2960) = off_2A1A92D90;
            v8[2952] = 0;
            v8[2954] = 0;
            v9 = off_2A1A92D90[0];
            if (off_2A1A92D90[0])
            {
              v9 = 0;
              v10 = &qword_2A1A92DA0;
              do
              {
                ++v9;
                v11 = *v10;
                v10 += 2;
              }

              while (v11);
            }

            v8[2953] = v9;
            v7 = sub_297E5588C(v8, 0, a5);
          }
        }
      }
    }
  }

  sub_297E4DFAC(0, &v16, 4, 5u, "phLibNfc_SM_RemDevSendTrans");
  return v7;
}

uint64_t sub_297EB55A4(uint64_t a1, int a2, uint64_t a3, uint64_t a4)
{
  v17 = 0;
  v18 = a1;
  v16 = 0;
  sub_297E4E1B4(0, &v18, 4, 5u, "phLibNfc_SM_Main_ListenSendTransComplete");
  sub_297E4F0E8(v18, &v17);
  sub_297E5D114(v18, &v16);
  if (a3)
  {
    sub_297E96818(v18, a3);
  }

  else
  {
    sub_297E5D398(v18, 0);
  }

  if (!v17)
  {
    goto LABEL_25;
  }

  v7 = 1;
  if (a2 <= 63)
  {
    if (a2 > 60)
    {
      if (a2 == 61)
      {
        v9 = v17[851];
        v10 = v17[852];
        *(v17 + 851) = 0u;
        if (!v9)
        {
          goto LABEL_25;
        }

        sub_297E50EBC(0, &v18, 4, 4u, "phLibNfc_SM_Main_ListenSendTransComplete:Invoking callback, wStatus = ");
        v11 = v17 + 1224;
        v12 = 136;
        goto LABEL_32;
      }

      if (a2 != 62)
      {
        goto LABEL_26;
      }
    }

    else if ((a2 - 54) >= 7)
    {
      if (a2 == 33)
      {
        v9 = v17[841];
        v10 = v17[842];
        *(v17 + 841) = 0u;
        if (!v9)
        {
          goto LABEL_25;
        }

        sub_297E4E0B0(0, &v18, 4, 4u, "Invoking upper layer callback");
        v11 = v17 + 1224;
        v12 = 31;
LABEL_32:
        sub_297E4D930(1, v11, 4, v12, "phLibNfc_SM_Main_ListenSendTransComplete");
        v9(v17[1223], v10, a3);
        goto LABEL_25;
      }

      goto LABEL_26;
    }

    goto LABEL_24;
  }

  if (a2 > 73)
  {
    v8 = a2 - 74;
    if ((a2 - 74) <= 0x24)
    {
      if (((1 << v8) & 0x240040000) != 0)
      {
        sub_297E5FC6C(v16, a4, a3);
        goto LABEL_25;
      }

      if (((1 << v8) & 0x1800000000) != 0)
      {
        sub_297E5D1EC(v17, a3);
LABEL_25:
        v7 = a3;
        goto LABEL_26;
      }

      if (a2 != 74)
      {
        goto LABEL_26;
      }

      goto LABEL_28;
    }

    goto LABEL_26;
  }

  if ((a2 - 64) < 3)
  {
LABEL_24:
    sub_297EFD244(v17, a4, a3);
    goto LABEL_25;
  }

  if (a2 == 68)
  {
LABEL_28:
    v9 = v17[847];
    v10 = v17[848];
    *(v17 + 847) = 0u;
    if (!v9)
    {
      goto LABEL_25;
    }

    sub_297E50EBC(0, &v18, 4, 4u, "phLibNfc_Mgt_SetNfccParams:Invoking callback, wStatus = ");
    v11 = v17 + 1224;
    v12 = 132;
    goto LABEL_32;
  }

  if (a2 == 72)
  {
    v13 = v17[855];
    v14 = v17[856];
    *(v17 + 855) = 0u;
    if (v13)
    {
      sub_297E50EBC(0, &v18, 4, 4u, "phLibNfc_SM_Main_ListenSendTransComplete:Invoking callback, wStatus = ");
      sub_297E4D930(1, (v17 + 1224), 4, 67, "phLibNfc_SM_Main_ListenSendTransComplete");
      v13(v17[1223], v14, a4, a3);
    }

    goto LABEL_25;
  }

LABEL_26:
  sub_297E4DFAC(0, &v18, 4, 5u, "phLibNfc_SM_Main_ListenSendTransComplete");
  return v7;
}

uint64_t sub_297EB58D4(uint64_t a1, int a2, uint64_t a3, uint64_t a4)
{
  v17 = 0;
  v18 = a1;
  v16 = 0;
  sub_297E4E1B4(0, &v18, 4, 5u, "phLibNfc_SM_Main_ListenSleepTransComplete");
  sub_297E4F0E8(v18, &v17);
  sub_297E5D114(v18, &v16);
  if (a3)
  {
    sub_297E96818(v18, a3);
  }

  else
  {
    sub_297E5D398(v18, 0);
  }

  if (!v17)
  {
    goto LABEL_28;
  }

  v7 = 1;
  if (a2 <= 63)
  {
    if ((a2 - 54) >= 7)
    {
      if (a2 == 61)
      {
        v11 = v17[851];
        v12 = v17[852];
        *(v17 + 851) = 0u;
        if (!v11)
        {
          goto LABEL_28;
        }

        sub_297E50EBC(0, &v18, 4, 4u, "phLibNfc_SM_Main_ListenSleepTransComplete:Invoking callback, wStatus = ");
        v13 = v17 + 1224;
        v14 = 136;
        goto LABEL_27;
      }

      if (a2 != 62)
      {
        goto LABEL_29;
      }
    }

    goto LABEL_16;
  }

  if (a2 > 73)
  {
    v8 = a2 - 74;
    if ((a2 - 74) <= 0x24)
    {
      if (((1 << v8) & 0x240040000) != 0)
      {
        sub_297E5FC6C(v16, a4, a3);
        goto LABEL_28;
      }

      if (((1 << v8) & 0x1800000000) != 0)
      {
        sub_297E5D1EC(v17, a3);
LABEL_28:
        v7 = a3;
        goto LABEL_29;
      }

      if (a2 == 74)
      {
        goto LABEL_23;
      }
    }

    goto LABEL_29;
  }

  if ((a2 - 64) < 3)
  {
LABEL_16:
    sub_297EFD244(v17, a4, a3);
    goto LABEL_28;
  }

  if (a2 == 68)
  {
LABEL_23:
    v11 = v17[847];
    v12 = v17[848];
    *(v17 + 847) = 0u;
    if (!v11)
    {
      goto LABEL_28;
    }

    sub_297E50EBC(0, &v18, 4, 4u, "phLibNfc_Mgt_SetNfccParams:Invoking callback, wStatus = ");
    v13 = v17 + 1224;
    v14 = 132;
LABEL_27:
    sub_297E4D930(1, v13, 4, v14, "phLibNfc_SM_Main_ListenSleepTransComplete");
    v11(v17[1223], v12, a3);
    goto LABEL_28;
  }

  if (a2 == 72)
  {
    v9 = v17[855];
    v10 = v17[856];
    *(v17 + 855) = 0u;
    if (v9)
    {
      sub_297E50EBC(0, &v18, 4, 4u, "phLibNfc_SM_Main_ListenSleepTransComplete:Invoking callback, wStatus = ");
      sub_297E4D930(1, (v17 + 1224), 4, 67, "phLibNfc_SM_Main_ListenSleepTransComplete");
      v9(v17[1223], v10, a4, a3);
    }

    goto LABEL_28;
  }

LABEL_29:
  sub_297E4DFAC(0, &v18, 4, 5u, "phLibNfc_SM_Main_ListenSleepTransComplete");
  return v7;
}

uint64_t sub_297EB5BA0(uint64_t a1, int a2, uint64_t a3)
{
  v9 = 0;
  v10 = a1;
  sub_297E4E1B4(0, &v10, 4, 5u, "phLibNfc_SM_Main_ShutdownTransComplete");
  sub_297E4F0E8(v10, &v9);
  v5 = v9;
  if (v9)
  {
    switch(a2)
    {
      case '+':
        if (v9[769])
        {
          sub_297EF8C70(v9, a3);
        }

        break;
      case 'r':
        sub_297EB9E80(v9, a3);
        break;
      case 'p':
        v6 = v9[773];
        v7 = v9[774];
        if (a3)
        {
          sub_297E96818(v10, a3);
          v5 = v9;
        }

        sub_297EAAA30(v5);
        v9 = 0;
        if (v6)
        {
          sub_297E50EBC(0, &v10, 4, 4u, "ShutdownCb:Invoking callback function, wStatus = ");
          sub_297E4D930(0, &v10, 4, 116, "phLibNfc_SM_Main_ShutdownTransComplete");
          v6(v10, v7, a3);
        }

        break;
      default:
        a3 = 1;
        break;
    }
  }

  sub_297E4DFAC(0, &v10, 4, 5u, "phLibNfc_SM_Main_ShutdownTransComplete");
  return a3;
}

uint64_t sub_297EB5CE4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = 0;
  v7 = a1;
  sub_297E4E1B4(0, &v7, 4, 5u, "phLibNfc_SM_SE_eSEInitTrans");
  sub_297E4F0E8(v7, &v6);
  if (!v6)
  {
    goto LABEL_5;
  }

  v4 = *(v6 + 366);
  if (v4 != 1)
  {
    if (v4 == 2)
    {
      sub_297EE196C(*(v6 + 9784), 1u, 5);
      a3 = 214;
      goto LABEL_6;
    }

LABEL_5:
    a3 = 255;
  }

LABEL_6:
  sub_297E4DFAC(0, &v7, 4, 5u, "phLibNfc_SM_SE_eSEInitTrans");
  return a3;
}

uint64_t sub_297EB5D90(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = 0;
  v7 = a1;
  sub_297E4E1B4(0, &v7, 4, 5u, "phLibNfc_SM_SE_eUiccInitTrans");
  sub_297E4F0E8(v7, &v6);
  if (!v6)
  {
    goto LABEL_5;
  }

  v4 = *(v6 + 365);
  if (v4 != 1)
  {
    if (v4 == 2)
    {
      sub_297EE196C(*(v6 + 9784), 2u, 5);
      a3 = 214;
      goto LABEL_6;
    }

LABEL_5:
    a3 = 255;
  }

LABEL_6:
  sub_297E4DFAC(0, &v7, 4, 5u, "phLibNfc_SM_SE_eUiccInitTrans");
  return a3;
}

uint64_t sub_297EB5E3C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = 0;
  v7 = a1;
  sub_297E4E1B4(0, &v7, 4, 5u, "phLibNfc_SM_SE_eSE2InitTrans");
  sub_297E4F0E8(v7, &v6);
  if (!v6)
  {
    goto LABEL_5;
  }

  v4 = *(v6 + 367);
  if (v4 != 1)
  {
    if (v4 == 2)
    {
      sub_297EE196C(*(v6 + 9784), 3u, 5);
      a3 = 214;
      goto LABEL_6;
    }

LABEL_5:
    a3 = 255;
  }

LABEL_6:
  sub_297E4DFAC(0, &v7, 4, 5u, "phLibNfc_SM_SE_eSE2InitTrans");
  return a3;
}

uint64_t sub_297EB5EE8(uint64_t a1)
{
  v7 = 0;
  v8 = a1;
  sub_297E4E1B4(0, &v8, 4, 5u, "phLibNfc_SM_SE_eModeSetRemovedToOffTrans");
  sub_297E4F0E8(v8, &v7);
  v1 = v7;
  if (v7)
  {
    *(v7 + 1) = 1;
    *(v1 + 568) = 0;
    *(v1 + 2960) = off_2A1A934F0;
    *(v1 + 2952) = 0;
    *(v1 + 2954) = 0;
    v2 = off_2A1A934F0[0];
    if (off_2A1A934F0[0])
    {
      v2 = 0;
      v3 = off_2A1A93500;
      do
      {
        ++v2;
        v4 = *v3;
        v3 += 2;
      }

      while (v4);
    }

    *(v1 + 2953) = v2;
    v5 = sub_297E5588C(v1, 0, 0);
  }

  else
  {
    v5 = 255;
  }

  sub_297E4DFAC(0, &v8, 4, 5u, "phLibNfc_SM_SE_eModeSetRemovedToOffTrans");
  return v5;
}

uint64_t sub_297EB5FB8(uint64_t a1, int a2)
{
  v13 = 0;
  v14 = a1;
  sub_297E4E1B4(0, &v14, 4, 5u, "phLibNfc_SM_SE_eModeSetOffToVirtualTrans");
  sub_297E4F0E8(v14, &v13);
  v3 = v13;
  if (v13)
  {
    if (a2 == 133)
    {
      *(v13 + 568) = 1;
      *(v3 + 2960) = off_2A1A93540;
      *(v3 + 2952) = 0;
      *(v3 + 2954) = 0;
      v4 = off_2A1A93540[0];
      if (off_2A1A93540[0])
      {
        v4 = 0;
        v10 = &qword_2A1A93550;
        do
        {
          ++v4;
          v11 = *v10;
          v10 += 2;
        }

        while (v11);
      }

      goto LABEL_31;
    }

    if (a2 != 150)
    {
      if (a2 == 140)
      {
        if (*(v13 + 2984) != 1 && *(v13 + 2985) != 1 && *(v13 + 2986) != 1 && *(v13 + 2992) != 1)
        {
LABEL_11:
          *(v3 + 1) = 1;
          *(v3 + 568) = 1;
          *(v3 + 2960) = off_2A1A93400;
          *(v3 + 2952) = 0;
          *(v3 + 2954) = 0;
          v4 = off_2A1A93400[0];
          if (off_2A1A93400[0])
          {
            v4 = 0;
            v5 = off_2A1A93410;
            do
            {
              ++v4;
              v6 = *v5;
              v5 += 2;
            }

            while (v6);
          }

LABEL_31:
          *(v3 + 2953) = v4;
          v7 = sub_297E5588C(v3, 0, 0);
          goto LABEL_32;
        }

        if (sub_297EE0928(*(v13 + 9784), 2))
        {
          v3 = v13;
          goto LABEL_11;
        }
      }

      goto LABEL_27;
    }

    if (*(v13 + 2985) == 1 || *(v13 + 2984) == 1 || *(v13 + 2992) == 1 || *(v13 + 2986) == 1)
    {
      if (!sub_297EE0928(*(v13 + 9784), 1) || !sub_297EE0A34(*(v13 + 9784), 1))
      {
LABEL_27:
        v7 = 147;
        goto LABEL_32;
      }

      v3 = v13;
    }

    *(v3 + 568) = 1;
    *(v3 + 2960) = off_2A1A93400;
    *(v3 + 2952) = 0;
    *(v3 + 2954) = 0;
    v4 = off_2A1A93400[0];
    if (off_2A1A93400[0])
    {
      v4 = 0;
      v8 = off_2A1A93410;
      do
      {
        ++v4;
        v9 = *v8;
        v8 += 2;
      }

      while (v9);
    }

    goto LABEL_31;
  }

  v7 = 255;
LABEL_32:
  sub_297E4DFAC(0, &v14, 4, 5u, "phLibNfc_SM_SE_eModeSetOffToVirtualTrans");
  return v7;
}

uint64_t sub_297EB61C0(uint64_t a1, int a2)
{
  v9 = 0;
  v10 = a1;
  sub_297E4E1B4(0, &v10, 4, 5u, "phLibNfc_SM_SE_eModeSetOffToApduTrans");
  sub_297E4F0E8(v10, &v9);
  v3 = v9;
  if (!v9)
  {
    v7 = 255;
    goto LABEL_15;
  }

  if (a2 != 141)
  {
    goto LABEL_13;
  }

  if (*(v9 + 2984) != 1 && *(v9 + 2985) != 1 && *(v9 + 2986) != 1 && *(v9 + 2992) != 1)
  {
    goto LABEL_9;
  }

  if (!sub_297EE0928(*(v9 + 9784), 2))
  {
LABEL_13:
    v7 = 147;
    goto LABEL_15;
  }

  v3 = v9;
LABEL_9:
  *(v3 + 568) = 1;
  *(v3 + 2960) = off_2A1A93400;
  *(v3 + 2952) = 0;
  *(v3 + 2954) = 0;
  v4 = off_2A1A93400[0];
  if (off_2A1A93400[0])
  {
    v4 = 0;
    v5 = off_2A1A93410;
    do
    {
      ++v4;
      v6 = *v5;
      v5 += 2;
    }

    while (v6);
  }

  *(v3 + 2953) = v4;
  v7 = sub_297E5588C(v3, 0, 0);
LABEL_15:
  sub_297E4DFAC(0, &v10, 4, 5u, "phLibNfc_SM_SE_eModeSetOffToApduTrans");
  return v7;
}

uint64_t sub_297EB62E4(uint64_t a1, int a2, uint64_t a3)
{
  v20 = 0;
  v21 = a1;
  v18 = 0;
  v19 = 0;
  sub_297E4E1B4(0, &v21, 4, 5u, "phLibNfc_SM_SE_TransComplete");
  sub_297E4F0E8(v21, &v20);
  if (a3)
  {
    sub_297E96818(v21, a3);
  }

  else
  {
    sub_297E5D398(v21, 0);
  }

  v5 = v20;
  if (!v20)
  {
    goto LABEL_34;
  }

  if (a2 <= 141)
  {
    if ((a2 - 139) >= 3 && (a2 - 132) >= 2 && a2 != 137)
    {
      goto LABEL_34;
    }

    goto LABEL_20;
  }

  if ((a2 - 144) > 0xB)
  {
    goto LABEL_22;
  }

  if (((1 << (a2 + 112)) & 0xC60) != 0)
  {
LABEL_20:
    v10 = *(v20 + 6680);
    v11 = *(v20 + 6688);
    *(v20 + 6680) = 0u;
    *(v5 + 568) = 3;
    if (v10)
    {
      sub_297E4D930(1, v5 + 9792, 4, 134, "phLibNfc_SM_SE_TransComplete");
      v10(*(v20 + 9784), v11, **(v20 + 560), *(v20 + 576), a3);
    }

    goto LABEL_34;
  }

  if (a2 != 144)
  {
    if (a2 == 145)
    {
      v6 = *(v20 + 6536);
      v7 = *(v20 + 6544);
      *(v20 + 6536) = 0u;
      v8 = sub_297F0AE90(*(v5 + 3088));
      v9 = v20;
      if (v8 == 36 && *(v20 + 754) == 1)
      {
        *(v20 + 754) = 0;
        a3 = 218;
      }

      if (v6)
      {
        sub_297E4D930(1, v9 + 9792, 4, 126, "phLibNfc_SM_SE_TransComplete");
        v6(*(v20 + 9784), v7, *(v20 + 600), a3);
        sub_297E4E0B0(0, &v21, 4, 4u, "phLibNfc_eSE_GetAtrProc: App layer Callback Invoked");
        v9 = v20;
      }

      if (*(v9 + 600))
      {
        *(v9 + 600) = 0;
      }

      goto LABEL_34;
    }

LABEL_22:
    if ((a2 - 142) < 2)
    {
      v12 = *(v20 + 6344);
      v13 = *(v20 + 6352);
      *(v20 + 6344) = 0u;
      if (sub_297F0AE90(*(v5 + 3088)) == 36 && *(v20 + 754) == 1)
      {
        *(v20 + 754) = 0;
        a3 = 218;
      }

      if (v12)
      {
        sub_297E4D930(1, v20 + 9792, 4, 124, "phLibNfc_SM_SE_TransComplete");
        v12(*(v20 + 9784), v13, 0, v20 + 624, *(v20 + 644), a3);
        v14 = "phLibNfc_HciDataSendProc:APP Callback Invoked";
LABEL_33:
        sub_297E4E0B0(0, &v21, 4, 4u, v14);
        *(v20 + 6392) = 0u;
        goto LABEL_34;
      }
    }

    goto LABEL_34;
  }

  v15 = *(v20 + 6360);
  v16 = *(v20 + 6368);
  *(v20 + 6360) = 0u;
  if (sub_297F0AE90(*(v5 + 3088)) == 36 && *(v20 + 754) == 1)
  {
    *(v20 + 754) = 0;
    a3 = 218;
  }

  if (v15)
  {
    v18 = v20 + 680;
    LODWORD(v19) = 16;
    sub_297E4D930(1, v20 + 9792, 4, 125, "phLibNfc_SM_SE_TransComplete");
    v15(*(v20 + 9784), v16, 0, &v18, a3);
    v14 = "phLibNfc_SM_SE_TransComplete:APP Callback Invoked";
    goto LABEL_33;
  }

LABEL_34:
  sub_297E4DFAC(0, &v21, 4, 5u, "phLibNfc_SM_SE_TransComplete");
  return a3;
}

uint64_t sub_297EB6664(uint64_t a1, int a2)
{
  v9 = 0;
  v10 = a1;
  sub_297E4E1B4(0, &v10, 4, 5u, "phLibNfc_SM_SE_eModeSetOffToOffTrans");
  sub_297E4F0E8(v10, &v9);
  v3 = v9;
  if (v9)
  {
    if (a2 == 154)
    {
      v4 = 147;
    }

    else
    {
      v4 = 0;
    }

    if (a2 == 137 && !*v9)
    {
      v9[1] = 1;
      *(v3 + 2960) = off_2A1A93470;
      *(v3 + 2952) = 0;
      *(v3 + 2954) = 0;
      v5 = off_2A1A93470[0];
      if (off_2A1A93470[0])
      {
        v5 = 0;
        v6 = &qword_2A1A93480;
        do
        {
          ++v5;
          v7 = *v6;
          v6 += 2;
        }

        while (v7);
      }

      *(v3 + 2953) = v5;
      v4 = sub_297E5588C(v3, 0, 0);
    }
  }

  else
  {
    v4 = 255;
  }

  sub_297E4DFAC(0, &v10, 4, 5u, "phLibNfc_SM_SE_eModeSetOffToOffTrans");
  return v4;
}

uint64_t sub_297EB6750(uint64_t a1)
{
  v7 = 0;
  v8 = a1;
  sub_297E4E1B4(0, &v8, 4, 5u, "phLibNfc_SM_SE_eModeSetOffToPwrOffTrans");
  sub_297E4F0E8(v8, &v7);
  v1 = v7;
  if (v7)
  {
    *(v7 + 1) = 1;
    *(v1 + 568) = 0;
    *(v1 + 2960) = off_2A1A93400;
    *(v1 + 2952) = 0;
    *(v1 + 2954) = 0;
    v2 = off_2A1A93400[0];
    if (off_2A1A93400[0])
    {
      v2 = 0;
      v3 = off_2A1A93410;
      do
      {
        ++v2;
        v4 = *v3;
        v3 += 2;
      }

      while (v4);
    }

    *(v1 + 2953) = v2;
    v5 = sub_297E5588C(v1, 0, 0);
  }

  else
  {
    v5 = 255;
  }

  sub_297E4DFAC(0, &v8, 4, 5u, "phLibNfc_SM_SE_eModeSetOffToPwrOffTrans");
  return v5;
}

uint64_t sub_297EB6820(uint64_t a1, int a2)
{
  v9 = 0;
  v10 = a1;
  sub_297E4E1B4(0, &v10, 4, 5u, "phLibNfc_SM_SE_eModeSetVirtualToVirtualTrans");
  sub_297E4F0E8(v10, &v9);
  v3 = v9;
  if (v9)
  {
    if (a2 == 140 && !*v9)
    {
      v9[1] = 1;
      *(v3 + 2960) = off_2A1A93470;
      *(v3 + 2952) = 0;
      *(v3 + 2954) = 0;
      v5 = off_2A1A93470[0];
      if (off_2A1A93470[0])
      {
        v5 = 0;
        v6 = &qword_2A1A93480;
        do
        {
          ++v5;
          v7 = *v6;
          v6 += 2;
        }

        while (v7);
      }

      *(v3 + 2953) = v5;
      v4 = sub_297E5588C(v3, 0, 0);
    }

    else
    {
      v4 = 0;
    }
  }

  else
  {
    v4 = 255;
  }

  sub_297E4DFAC(0, &v10, 4, 5u, "phLibNfc_SM_SE_eModeSetVirtualToVirtualTrans");
  return v4;
}

uint64_t sub_297EB6908(uint64_t a1, int a2)
{
  v11 = 0;
  v12 = a1;
  sub_297E4E1B4(0, &v12, 4, 5u, "phLibNfc_SM_SE_eModeSetVirtualToOffTrans");
  sub_297E4F0E8(v12, &v11);
  if (!v11)
  {
    v5 = 255;
    goto LABEL_23;
  }

  if (*(v11 + 2984) == 1)
  {
    v3 = off_2A1A933B0;
  }

  else
  {
    v3 = off_2A1A93440;
  }

  if (sub_297EE0928(*(v11 + 9784), 1))
  {
    v4 = sub_297EE0A34(*(v11 + 9784), 1);
    if (a2 == 132 && !v4)
    {
      goto LABEL_18;
    }
  }

  else if (a2 == 132)
  {
    goto LABEL_18;
  }

  sub_297E99BD8(*(v11 + 512));
  if (a2 != 132)
  {
    if (a2 != 149)
    {
      if (a2 != 137)
      {
        v5 = 147;
        goto LABEL_23;
      }

      if (*(v11 + 2985) == 1 || *(v11 + 2986) == 1 || *(v11 + 2992) == 1)
      {
        *(v11 + 1) = 1;
        v3 = off_2A1A93470;
      }
    }

    goto LABEL_19;
  }

LABEL_18:
  v3 = off_2A1A93540;
LABEL_19:
  v6 = v11;
  *(v11 + 568) = 0;
  *(v6 + 2960) = v3;
  *(v6 + 2952) = 0;
  *(v6 + 2954) = 0;
  v7 = *v3;
  if (*v3)
  {
    LOBYTE(v7) = 0;
    v8 = (v3 + 2);
    do
    {
      LOBYTE(v7) = v7 + 1;
      v9 = *v8;
      v8 += 2;
    }

    while (v9);
  }

  *(v6 + 2953) = v7;
  v5 = sub_297E5588C(v6, 0, 0);
LABEL_23:
  sub_297E4DFAC(0, &v12, 4, 5u, "phLibNfc_SM_SE_eModeSetVirtualToOffTrans");
  return v5;
}

uint64_t sub_297EB6A94(uint64_t a1)
{
  v7 = 0;
  v8 = a1;
  sub_297E4E1B4(0, &v8, 4, 5u, "phLibNfc_SM_SE_eModeSetVirtualToPwrOffTrans");
  sub_297E4F0E8(v8, &v7);
  v1 = v7;
  if (v7)
  {
    *(v7 + 1) = 1;
    *(v1 + 568) = 0;
    *(v1 + 2960) = off_2A1A93400;
    *(v1 + 2952) = 0;
    *(v1 + 2954) = 0;
    v2 = off_2A1A93400[0];
    if (off_2A1A93400[0])
    {
      v2 = 0;
      v3 = off_2A1A93410;
      do
      {
        ++v2;
        v4 = *v3;
        v3 += 2;
      }

      while (v4);
    }

    *(v1 + 2953) = v2;
    v5 = sub_297E5588C(v1, 0, 0);
  }

  else
  {
    v5 = 255;
  }

  sub_297E4DFAC(0, &v8, 4, 5u, "phLibNfc_SM_SE_eModeSetVirtualToPwrOffTrans");
  return v5;
}

uint64_t sub_297EB6B64(uint64_t a1, int a2)
{
  v10 = 0;
  v11 = a1;
  sub_297E4E1B4(0, &v11, 4, 5u, "phLibNfc_SM_SE_eModeSetVirtualToApduTrans");
  sub_297E4F0E8(v11, &v10);
  v3 = v10;
  if (!v10)
  {
    v4 = 255;
    goto LABEL_15;
  }

  if (a2 != 141)
  {
    v4 = 147;
    goto LABEL_15;
  }

  if (v10[2985] == 1 || v10[2986] == 1 || v10[2992] == 1)
  {
    if (v10[745] == 1)
    {
      v4 = 0;
      *(*(v10 + 70) + 12) = *(v10 + 143);
      goto LABEL_15;
    }

    *(v10 + 142) = 1;
    v5 = off_2A1A93400;
  }

  else
  {
    if (*v10 == v10[1])
    {
      v4 = 0;
      goto LABEL_15;
    }

    v5 = off_2A1A93470;
  }

  *(v3 + 2960) = v5;
  *(v3 + 2952) = 0;
  *(v3 + 2954) = 0;
  v6 = *v5;
  if (*v5)
  {
    LOBYTE(v6) = 0;
    v7 = (v5 + 2);
    do
    {
      LOBYTE(v6) = v6 + 1;
      v8 = *v7;
      v7 += 2;
    }

    while (v8);
  }

  *(v3 + 2953) = v6;
  v4 = sub_297E5588C(v3, 0, 0);
LABEL_15:
  sub_297E4DFAC(0, &v11, 4, 5u, "phLibNfc_SM_SE_eModeSetVirtualToApduTrans");
  return v4;
}

uint64_t sub_297EB6CAC(uint64_t a1, uint64_t a2, uint64_t a3, _OWORD *a4)
{
  v11 = 0;
  v12 = a1;
  sub_297E4E1B4(0, &v12, 4, 5u, "phLibNfc_SM_SE_eSETransceiveTrans");
  sub_297E4F0E8(v12, &v11);
  v5 = 255;
  if (a4 && v11)
  {
    v6 = sub_297EE9B6C(v11);
    if (v6)
    {
      v5 = v6;
      sub_297E4E0B0(0, &v12, 4, 2u, "phLibNfc_eSE_Transceive: Stack BUSY");
    }

    else
    {
      v7 = v11;
      v9 = a4[1];
      v8 = a4[2];
      *(v11 + 38) = *a4;
      *(v7 + 39) = v9;
      *(v7 + 40) = v8;
      v5 = sub_297EE9184(v7);
    }
  }

  sub_297E4DFAC(0, &v12, 4, 5u, "phLibNfc_SM_SE_eSETransceiveTrans");
  return v5;
}

uint64_t sub_297EB6D80(uint64_t a1, int a2)
{
  v9 = 0;
  v10 = a1;
  sub_297E4E1B4(0, &v10, 4, 5u, "phLibNfc_SM_SE_eModeSetApduToApduTrans");
  sub_297E4F0E8(v10, &v9);
  v3 = v9;
  if (v9)
  {
    if (a2 == 141)
    {
      if (*v9 == v9[1])
      {
        v4 = 0;
      }

      else
      {
        *(v9 + 370) = off_2A1A93470;
        v3[2952] = 0;
        v3[2954] = 0;
        v5 = off_2A1A93470[0];
        if (off_2A1A93470[0])
        {
          v5 = 0;
          v6 = &qword_2A1A93480;
          do
          {
            ++v5;
            v7 = *v6;
            v6 += 2;
          }

          while (v7);
        }

        v3[2953] = v5;
        v4 = sub_297E5588C(v3, 0, 0);
      }
    }

    else
    {
      v4 = 147;
    }
  }

  else
  {
    v4 = 255;
  }

  sub_297E4DFAC(0, &v10, 4, 5u, "phLibNfc_SM_SE_eModeSetApduToApduTrans");
  return v4;
}

uint64_t sub_297EB6E74(uint64_t a1, int a2)
{
  v10 = 0;
  v11 = a1;
  sub_297E4E1B4(0, &v11, 4, 5u, "phLibNfc_SM_SE_eModeSetApduToOffTrans");
  sub_297E4F0E8(v11, &v10);
  if (v10)
  {
    if (*(v10 + 2984) == 1)
    {
      v3 = off_2A1A933B0;
    }

    else
    {
      v3 = off_2A1A93440;
    }

    sub_297E99BD8(*(v10 + 512));
    if (a2 == 137)
    {
      v4 = v10;
      if (*(v10 + 2985) == 1 || *(v10 + 2986) == 1 || *(v10 + 2992) == 1)
      {
        *(v10 + 1) = 1;
        v3 = off_2A1A93470;
      }

      *(v4 + 568) = 0;
      *(v4 + 2960) = v3;
      *(v4 + 2952) = 0;
      *(v4 + 2954) = 0;
      v5 = *v3;
      if (*v3)
      {
        LOBYTE(v5) = 0;
        v6 = (v3 + 2);
        do
        {
          LOBYTE(v5) = v5 + 1;
          v7 = *v6;
          v6 += 2;
        }

        while (v7);
      }

      *(v4 + 2953) = v5;
      v8 = sub_297E5588C(v4, 0, 0);
    }

    else
    {
      v8 = 147;
    }
  }

  else
  {
    v8 = 255;
  }

  sub_297E4DFAC(0, &v11, 4, 5u, "phLibNfc_SM_SE_eModeSetApduToOffTrans");
  return v8;
}

uint64_t sub_297EB6FA4(uint64_t a1)
{
  v7 = 0;
  v8 = a1;
  sub_297E4E1B4(0, &v8, 4, 5u, "phLibNfc_SM_SE_eModeSetApduToPwrOffTrans");
  sub_297E4F0E8(v8, &v7);
  v1 = v7;
  if (v7)
  {
    *(v7 + 1) = 1;
    *(v1 + 568) = 0;
    *(v1 + 2960) = off_2A1A93400;
    *(v1 + 2952) = 0;
    *(v1 + 2954) = 0;
    v2 = off_2A1A93400[0];
    if (off_2A1A93400[0])
    {
      v2 = 0;
      v3 = off_2A1A93410;
      do
      {
        ++v2;
        v4 = *v3;
        v3 += 2;
      }

      while (v4);
    }

    *(v1 + 2953) = v2;
    v5 = sub_297E5588C(v1, 0, 0);
  }

  else
  {
    v5 = 255;
  }

  sub_297E4DFAC(0, &v8, 4, 5u, "phLibNfc_SM_SE_eModeSetApduToPwrOffTrans");
  return v5;
}

uint64_t sub_297EB7074(uint64_t a1, int a2)
{
  v10 = 0;
  v11 = a1;
  sub_297E4E1B4(0, &v11, 4, 5u, "phLibNfc_SM_SE_eModeSetApduToVirtualTrans");
  sub_297E4F0E8(v11, &v10);
  v3 = v10;
  if (!v10)
  {
    v4 = 255;
    goto LABEL_15;
  }

  if (a2 != 140)
  {
    v4 = 147;
    goto LABEL_15;
  }

  if (v10[2985] == 1 || v10[2986] == 1 || v10[2992] == 1)
  {
    if (v10[745] == 1)
    {
LABEL_7:
      v4 = 0;
      *(*(v10 + 70) + 12) = *(v10 + 143);
      goto LABEL_15;
    }

    *(v10 + 142) = 1;
    v5 = off_2A1A93400;
  }

  else
  {
    if (*v10 == v10[1])
    {
      goto LABEL_7;
    }

    v5 = off_2A1A93470;
  }

  *(v3 + 2960) = v5;
  *(v3 + 2952) = 0;
  *(v3 + 2954) = 0;
  v6 = *v5;
  if (*v5)
  {
    LOBYTE(v6) = 0;
    v7 = (v5 + 2);
    do
    {
      LOBYTE(v6) = v6 + 1;
      v8 = *v7;
      v7 += 2;
    }

    while (v8);
  }

  *(v3 + 2953) = v6;
  v4 = sub_297E5588C(v3, 0, 0);
LABEL_15:
  sub_297E4DFAC(0, &v11, 4, 5u, "phLibNfc_SM_SE_eModeSetApduToVirtualTrans");
  return v4;
}

uint64_t sub_297EB71B4(uint64_t a1, uint64_t a2, uint64_t a3, unsigned __int8 *a4)
{
  v11 = 0;
  v12 = a1;
  sub_297E4E1B4(0, &v12, 4, 5u, "phLibNfc_SM_SE_eSERawTransceiveTrans");
  sub_297E4F0E8(v12, &v11);
  v5 = 255;
  if (a4 && v11)
  {
    v6 = sub_297EE9B6C(v11);
    if (v6)
    {
      v5 = v6;
      sub_297E4E0B0(0, &v12, 4, 2u, "phLibNfc_eSE_Transceive: Stack BUSY");
    }

    else
    {
      v5 = sub_297EE9FF8(v11, a4);
      if (!v5)
      {
        v7 = v11;
        v9 = *(a4 + 1);
        v8 = *(a4 + 2);
        *(v11 + 41) = *a4;
        *(v7 + 42) = v9;
        *(v7 + 43) = v8;
        v5 = sub_297EEA3AC(v7);
      }
    }
  }

  sub_297E4DFAC(0, &v12, 4, 5u, "phLibNfc_SM_SE_eSERawTransceiveTrans");
  return v5;
}

uint64_t sub_297EB729C(uint64_t a1)
{
  v8 = 0;
  v9 = a1;
  sub_297E4E1B4(0, &v9, 4, 5u, "phLibNfc_SM_SE_eSEGetAtrTrans");
  sub_297E4F0E8(v9, &v8);
  if (!v8)
  {
    goto LABEL_9;
  }

  v1 = v8[64];
  if (!v1)
  {
    goto LABEL_9;
  }

  v2 = sub_297EE9B6C(v8);
  if (!v2)
  {
    v4 = *(v1 + 816);
    if (v4 != 255)
    {
      v5 = *(v1 + 817);
      if (v5 != 255)
      {
        v6 = v8;
        *(v8 + 754) = 0;
        v3 = sub_297E9D208(v6[64], v5, 1u, v4, sub_297EED6C0, v6);
        goto LABEL_10;
      }
    }

    sub_297E4E0B0(0, &v9, 4, 1u, "phLibNfc_SM_SE_eSEGetAtrTrans:Failed, Pipe Info not Available");
LABEL_9:
    v3 = 255;
    goto LABEL_10;
  }

  v3 = v2;
  sub_297E4E0B0(0, &v9, 4, 2u, "phLibNfc_SM_SE_eSEGetAtrTrans: Stack BUSY");
LABEL_10:
  sub_297E4DFAC(0, &v9, 4, 5u, "phLibNfc_SM_SE_eSEGetAtrTrans");
  return v3;
}

uint64_t sub_297EB73AC(uint64_t a1)
{
  v7 = 0;
  v8 = a1;
  sub_297E4E1B4(0, &v8, 4, 5u, "phLibNfc_SM_SE_eModeSetPwrOffToPwrOffTrans");
  sub_297E4F0E8(v8, &v7);
  v1 = v7;
  if (v7)
  {
    if (*v7)
    {
      v2 = 0;
    }

    else
    {
      v7[1] = 1;
      *(v1 + 2960) = off_2A1A93470;
      *(v1 + 2952) = 0;
      *(v1 + 2954) = 0;
      v3 = off_2A1A93470[0];
      if (off_2A1A93470[0])
      {
        v3 = 0;
        v4 = &qword_2A1A93480;
        do
        {
          ++v3;
          v5 = *v4;
          v4 += 2;
        }

        while (v5);
      }

      *(v1 + 2953) = v3;
      v2 = sub_297E5588C(v1, 0, 0);
    }
  }

  else
  {
    v2 = 255;
  }

  sub_297E4DFAC(0, &v8, 4, 5u, "phLibNfc_SM_SE_eModeSetPwrOffToPwrOffTrans");
  return v2;
}

uint64_t sub_297EB7488(uint64_t a1)
{
  v7 = 0;
  v8 = a1;
  sub_297E4E1B4(0, &v8, 4, 5u, "phLibNfc_SM_SE_eModeSetPwrOffToVirtualTrans");
  sub_297E4F0E8(v8, &v7);
  v1 = v7;
  if (v7)
  {
    *(v7 + 1) = 1;
    *(v1 + 568) = 1;
    *(v1 + 2960) = off_2A1A93400;
    *(v1 + 2952) = 0;
    *(v1 + 2954) = 0;
    v2 = off_2A1A93400[0];
    if (off_2A1A93400[0])
    {
      v2 = 0;
      v3 = off_2A1A93410;
      do
      {
        ++v2;
        v4 = *v3;
        v3 += 2;
      }

      while (v4);
    }

    *(v1 + 2953) = v2;
    v5 = sub_297E5588C(v1, 0, 0);
  }

  else
  {
    v5 = 255;
  }

  sub_297E4DFAC(0, &v8, 4, 5u, "phLibNfc_SM_SE_eModeSetPwrOffToVirtualTrans");
  return v5;
}

uint64_t sub_297EB7558(uint64_t a1)
{
  v7 = 0;
  v8 = a1;
  sub_297E4E1B4(0, &v8, 4, 5u, "phLibNfc_SM_SE_eModeSetPwrOffToApduTrans");
  sub_297E4F0E8(v8, &v7);
  v1 = v7;
  if (v7)
  {
    *(v7 + 1) = 0;
    *(v1 + 568) = 1;
    *(v1 + 2960) = off_2A1A93400;
    *(v1 + 2952) = 0;
    *(v1 + 2954) = 0;
    v2 = off_2A1A93400[0];
    if (off_2A1A93400[0])
    {
      v2 = 0;
      v3 = off_2A1A93410;
      do
      {
        ++v2;
        v4 = *v3;
        v3 += 2;
      }

      while (v4);
    }

    *(v1 + 2953) = v2;
    v5 = sub_297E5588C(v1, 0, 0);
  }

  else
  {
    v5 = 255;
  }

  sub_297E4DFAC(0, &v8, 4, 5u, "phLibNfc_SM_SE_eModeSetPwrOffToApduTrans");
  return v5;
}

uint64_t sub_297EB7628(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v32 = a1;
  v31 = 0;
  v30 = 8;
  v28 = 0;
  v29 = 0;
  v27 = 0;
  sub_297E4E1B4(0, &v32, 4, 5u, "phLibNfc_SM_Dnld_eUserFwDnldTrans");
  v6 = 0;
  v7 = 1;
  while (1)
  {
    v8 = v7;
    v9 = &unk_2A18BDDC0 + 112 * v6;
    if (*v9 == v32)
    {
      break;
    }

    v7 = 0;
    v6 = 1;
    if ((v8 & 1) == 0)
    {
      v10 = 255;
      goto LABEL_6;
    }
  }

  v10 = *(v9 + 2);
LABEL_6:
  sub_297E5F164(v32, &v30);
  sub_297E5D114(v32, &v31);
  sub_297E67EB0(v32, &v27);
  phOsalNfc_SetMemory();
  if (!v31 || !*(v31 + 16))
  {
    a3 = 1;
    sub_297E4E0B0(0, &v32, 4, 1u, "phLibNfc_SM_Dnld_eUserFwDnldTrans: Invalid parameter");
    goto LABEL_18;
  }

  if (!v27)
  {
    if (*(v31 + 192) != 1)
    {
      a3 = phTmlNfc_IoCtl();
      v11 = a3 == 0;
      goto LABEL_10;
    }

    v14 = phTmlNfc_IoCtl();
    if (v14)
    {
      a3 = v14;
    }

    else
    {
      a3 = phTmlNfc_IoCtl();
      sub_297E96914(0, &v32, 4, 3u, "phLibNfc_SM_Dnld_eUserFwDnldTrans: SPMI Reset Client Retry Status =");
      if (!a3)
      {
        phOsalNfc_Delay();
        v11 = 0;
        goto LABEL_12;
      }
    }
  }

  v11 = 0;
LABEL_10:
  if (a3 != 179 && a3)
  {
    sub_297E4E0B0(0, &v32, 4, 1u, "phLibNfc_SM_Dnld_eUserFwDnldTrans: Failed");
    a3 = 255;
    goto LABEL_18;
  }

LABEL_12:
  if ((v30 & 0xFFFFFFFD) != 4)
  {
    a3 = phTmlNfc_ConfigHsuBaudRate();
    goto LABEL_23;
  }

  if (v10 != 1)
  {
LABEL_23:
    if (a3 != 179 && a3)
    {
      goto LABEL_31;
    }

    goto LABEL_32;
  }

  v12 = phTmlNfc_IoCtl();
  if (v12 == 179 && (sub_297E96914(0, &v32, 4, 3u, "phLibNfc_SM_Dnld_eUserFwDnldTrans: Assert Wakeup Status="), sub_297E4E0B0(0, &v32, 4, 4u, "phLibNfc_SM_Dnld_eUserFwDnldTrans: NFCSTATUS_SPMI_NACK1"), phOsalNfc_Delay(), v12 = phTmlNfc_IoCtl(), v12 == 179))
  {
    sub_297E96914(0, &v32, 4, 3u, "phLibNfc_SM_Dnld_eUserFwDnldTrans: Assert Wakeup Status=");
    sub_297E4E0B0(0, &v32, 4, 4u, "phLibNfc_SM_Dnld_eUserFwDnldTrans: NFCSTATUS_SPMI_NACK2");
    sub_297E4E0B0(0, &v32, 4, 4u, "phLibNfc_SM_Dnld_eUserFwDnldTrans: Update Client-ID to Secondary Client                                ID(0x0B)");
    LODWORD(a3) = phTmlNfc_ConfigureSpmi();
  }

  else
  {
    LODWORD(a3) = v12;
    sub_297E96914(0, &v32, 4, 3u, "phLibNfc_SM_Dnld_eUserFwDnldTrans: Assert Wakeup Status=");
  }

  if (a3)
  {
    a3 = 255;
LABEL_31:
    sub_297E50EBC(0, &v32, 4, 1u, "phLibNfc_SM_Dnld_eUserFwDnldTrans: TML HSU Baud rate failed, Status");
LABEL_60:
    v26 = !v11;
    if (a3 == 13)
    {
      v26 = 1;
    }

    if ((v26 & 1) == 0)
    {
      phTmlNfc_IoCtl();
    }

    goto LABEL_18;
  }

LABEL_32:
  *(v31 + 120) = 2;
  sub_297ED0A64(v32, v30);
  v15 = v31;
  *(v31 + 92) = 0;
  *(v15 + 88) = 16711680;
  *(v15 + 94) = 0;
  *(v15 + 102) = 0;
  *(v15 + 100) = 0;
  *(v15 + 836) = 0;
  v16 = sub_297E85E24(v32);
  if (v16)
  {
    LODWORD(a3) = v16;
  }

  sub_297E4F0E8(v32, &v29);
  sub_297E67F6C(v32, &v28);
  if (v28)
  {
    v17 = v29 == 0;
  }

  else
  {
    v17 = 1;
  }

  if (v17)
  {
    LODWORD(a3) = 255;
  }

  if (a3 != 179 && a3)
  {
    sub_297E4E0B0(0, &v32, 4, 1u, "phLibNfc_SM_IoctlFwDnldTrans: Failed");
    a3 = 255;
LABEL_53:
    if (v29)
    {
      if (!*(v29 + 6078) && !*(v29 + 6081) && !*(v29 + 6082) && !*(v29 + 6079))
      {
        sub_297E7EB8C(v32);
        *(v31 + 91) = 0;
        phOsalNfc_FreeMemory();
        v29 = 0;
        sub_297E9F3BC(v32, 0);
      }
    }

    else
    {
      sub_297E7EB8C(v32);
    }

    goto LABEL_60;
  }

  sub_297E4E0B0(0, &v32, 4, 4u, "Firmware Load Library SUCCESS, Now initiating Firmware Download Sequence!!!");
  v18 = v31;
  *(v31 + 168) = 0;
  *(v18 + 184) = a4;
  if (a3 == 179 && *(v18 + 192) == 1)
  {
    v19 = v28;
    *(v29 + 3216) = sub_297E89A5C;
    v20 = sub_297E8B3F8(*(v19 + 48));
  }

  else
  {
    v21 = v29;
    v22 = (v29 + 4096);
    *(v29 + 2960) = off_2A1A92B40;
    v21[2952] = 0;
    v21[2954] = 0;
    v23 = off_2A1A92B40[0];
    if (off_2A1A92B40[0])
    {
      v23 = 0;
      v24 = off_2A1A92B50;
      do
      {
        ++v23;
        v25 = *v24;
        v24 += 2;
      }

      while (v25);
    }

    v21[2953] = v23;
    if (v22[1982] || v22[1985] || v22[1983] != 1 && v22[1986] != 1)
    {
      v20 = sub_297E5588C(v21, 0, 0);
    }

    else
    {
      v20 = sub_297E8B0F8(v21, sub_297E8AFEC);
    }
  }

  a3 = v20;
  if (v20 != 13)
  {
    goto LABEL_53;
  }

LABEL_18:
  sub_297E4DFAC(0, &v32, 4, 5u, "phLibNfc_SM_Dnld_eUserFwDnldTrans");
  return a3;
}

uint64_t sub_297EB7BAC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v29 = a1;
  v27 = 0;
  v28 = 0;
  v26 = 8;
  v24 = 0;
  v25 = 0;
  sub_297E4E1B4(0, &v29, 4, 5u, "phLibNfc_SM_Dnld_eUserGetDieIdTrans");
  sub_297E5D114(v29, &v28);
  sub_297E5F164(v29, &v26);
  v6 = 0;
  v7 = 1;
  do
  {
    v8 = v7;
    if (*(&unk_2A18BDDC0 + 14 * v6) == v29)
    {
      break;
    }

    v7 = 0;
    v6 = 1;
  }

  while ((v8 & 1) != 0);
  sub_297E67EB0(v29, &v24);
  phOsalNfc_SetMemory();
  if (!a4 || !v28)
  {
    a3 = 1;
    sub_297E4E0B0(0, &v29, 4, 1u, "phLibNfc_SM_IoctlGetDieIdTrans: Invalid parameter");
    goto LABEL_51;
  }

  if (!v24)
  {
    if (*(v28 + 192) != 1)
    {
      a3 = phTmlNfc_IoCtl();
      v9 = a3 == 0;
      goto LABEL_8;
    }

    v18 = phTmlNfc_IoCtl();
    if (v18)
    {
      a3 = v18;
    }

    else
    {
      a3 = phTmlNfc_IoCtl();
      sub_297E96914(0, &v29, 4, 3u, "phLibNfc_SM_Dnld_eUserGetDieIdTrans: SPMI Reset Client Retry Status =");
      if (!a3)
      {
        phOsalNfc_Delay();
        v9 = 0;
        goto LABEL_10;
      }
    }
  }

  v9 = 0;
LABEL_8:
  if (a3 != 179 && a3)
  {
    sub_297E4E0B0(0, &v29, 4, 1u, "phLibNfc_SM_IoctlGetDieIdTrans: Failed");
    a3 = 255;
    goto LABEL_51;
  }

LABEL_10:
  if ((v26 & 0xFFFFFFFD) != 4)
  {
    a3 = phTmlNfc_ConfigHsuBaudRate();
  }

  if (a3 != 179 && a3)
  {
    sub_297E50EBC(0, &v29, 4, 1u, "phLibNfc_SM_Dnld_eUserGetDieIdTrans: TML Config Baudrate failed status");
LABEL_47:
    v22 = !v9;
    if (a3 == 13)
    {
      v22 = 1;
    }

    if ((v22 & 1) == 0)
    {
      phTmlNfc_IoCtl();
    }

    goto LABEL_51;
  }

  sub_297ED0A64(v29, v26);
  v10 = v28;
  *(v28 + 91) = 0;
  *(v10 + 88) = 0;
  *(v10 + 836) = 0;
  *(v10 + 94) = 0;
  *(v10 + 64) = 0;
  phOsalNfc_SetMemory();
  v11 = sub_297E85E24(v29);
  if (v11)
  {
    LODWORD(a3) = v11;
  }

  sub_297E4F0E8(v29, &v27);
  sub_297E67F6C(v29, &v25);
  v12 = v27;
  v13 = v25;
  if (v25)
  {
    v14 = v27 == 0;
  }

  else
  {
    v14 = 1;
  }

  if (v14)
  {
    v15 = 255;
  }

  else
  {
    v15 = a3;
  }

  if (v15 != 179 && v15)
  {
    sub_297E4E0B0(0, &v29, 4, 1u, "phLibNfc_SM_IoctlGetDieIdTrans: Failed");
    a3 = 255;
    goto LABEL_47;
  }

  v16 = v28;
  *(v28 + 64) = v28 + 40;
  if (v15 == 179 && *(v16 + 192) == 1)
  {
    *(v12 + 3216) = sub_297E89C8C;
    v17 = sub_297E8B3F8(*(v13 + 48));
  }

  else
  {
    *(v12 + 2960) = &qword_2A1A92C90;
    *(v12 + 2952) = 0;
    *(v12 + 2954) = 0;
    v19 = qword_2A1A92C90;
    if (qword_2A1A92C90)
    {
      v19 = 0;
      v20 = off_2A1A92CA0;
      do
      {
        ++v19;
        v21 = *v20;
        v20 += 2;
      }

      while (v21);
    }

    *(v12 + 2953) = v19;
    if (*(v12 + 6078) || *(v12 + 6081) || *(v12 + 6079) != 1 && *(v12 + 6082) != 1)
    {
      v17 = sub_297E5588C(v12, 0, 0);
    }

    else
    {
      v17 = sub_297E8B0F8(v12, sub_297E8AFEC);
    }
  }

  a3 = v17;
  if (v17 != 13)
  {
    if (!v27[6078] && !v27[6081] && !v27[6082] && !v27[6079])
    {
      sub_297E7EB8C(v29);
      *(v28 + 91) = 0;
      phOsalNfc_FreeMemory();
      v27 = 0;
      sub_297E9F3BC(v29, 0);
    }

    goto LABEL_47;
  }

LABEL_51:
  sub_297E4DFAC(0, &v29, 4, 5u, "phLibNfc_SM_Dnld_eUserGetDieIdTrans");
  return a3;
}

uint64_t sub_297EB7FDC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v30 = 0;
  v31 = a1;
  v28 = 0;
  v29 = 0;
  v27 = 0;
  v26 = 8;
  sub_297E4E1B4(0, &v31, 4, 5u, "phLibNfc_SM_GetFwVersionTrans");
  sub_297E5D114(v31, &v28);
  sub_297E5F164(v31, &v26);
  v5 = 0;
  v6 = 1;
  while (1)
  {
    v7 = v6;
    v8 = &unk_2A18BDDC0 + 112 * v5;
    if (*v8 == v31)
    {
      break;
    }

    v6 = 0;
    v5 = 1;
    if ((v7 & 1) == 0)
    {
      v9 = 255;
      v10 = 255;
      goto LABEL_6;
    }
  }

  v10 = 0;
  v9 = *(v8 + 2);
LABEL_6:
  sub_297E67EB0(v31, &v27);
  phOsalNfc_SetMemory();
  if (!a4 || !v28)
  {
    v13 = 1;
    sub_297E4E0B0(0, &v31, 4, 1u, "phLibNfc_SM_GetFwVersionTrans Invalid parameter");
    goto LABEL_62;
  }

  sub_297E4F0E8(v31, &v30);
  if (!v30)
  {
    phTmlNfc_ReadAbort();
    phTmlNfc_FlushTxRxBuffers();
    if (sub_297E56AFC(v31) == 1)
    {
      phTmlNfc_WriteAbort();
      sub_297E5A3A8(v31, 0);
    }

    if (!v27)
    {
      if (*(v28 + 192) != 1)
      {
        v10 = phTmlNfc_IoCtl();
        v11 = v10 == 0;
        goto LABEL_13;
      }

      v14 = phTmlNfc_IoCtl();
      if (v14)
      {
        v10 = v14;
      }

      else
      {
        v10 = phTmlNfc_IoCtl();
        sub_297E96914(0, &v31, 4, 3u, "phLibNfc_SM_GetFwVersionTrans: SPMI Reset Client Retry Status =");
        if (!v10)
        {
          phOsalNfc_Delay();
          v11 = 0;
          goto LABEL_15;
        }
      }
    }
  }

  v11 = 0;
LABEL_13:
  if (v10 != 179 && v10)
  {
    sub_297E4E0B0(0, &v31, 4, 1u, "phLibNfc_SM_GetFwVersionTrans: Failed");
    v13 = 255;
    goto LABEL_62;
  }

LABEL_15:
  sub_297E4E0B0(0, &v31, 4, 4u, "phLibNfc_SM_GetFwVersionTrans: NFCSTATUS_SPMI_NACK1");
  if ((v26 & 0xFFFFFFFD) == 4)
  {
    if (v9 == 1)
    {
      v12 = phTmlNfc_IoCtl();
      if (v12 == 179 && (sub_297E96914(0, &v31, 4, 3u, "phLibNfc_SM_GetFwVersionTrans: Assert Wakeup Status="), sub_297E4E0B0(0, &v31, 4, 4u, "phLibNfc_SM_GetFwVersionTrans: NFCSTATUS_SPMI_NACK2"), sub_297E4E0B0(0, &v31, 4, 4u, "phLibNfc_SM_GetFwVersionTrans: Update Client-ID to Secondary Client ID(0x0B)"), phOsalNfc_Delay(), v12 = phTmlNfc_IoCtl(), v12 == 179))
      {
        sub_297E96914(0, &v31, 4, 3u, "phLibNfc_SM_GetFwVersionTrans: Assert Wakeup Status=");
        sub_297E4E0B0(0, &v31, 4, 4u, "phLibNfc_SM_GetFwVersionTrans: NFCSTATUS_SPMI_NACK2");
        v10 = phTmlNfc_ConfigureSpmi();
      }

      else
      {
        v10 = v12;
        sub_297E96914(0, &v31, 4, 3u, "phLibNfc_SM_GetFwVersionTrans: Assert Wakeup Status=");
      }

      if (v10)
      {
        goto LABEL_31;
      }

      goto LABEL_32;
    }
  }

  else
  {
    v10 = phTmlNfc_ConfigHsuBaudRate();
  }

  if (v10 == 179 || !v10)
  {
LABEL_32:
    sub_297ED0A64(v31, v26);
    v15 = v28;
    *(v28 + 89) = 0;
    *(v15 + 91) = 0;
    v16 = sub_297E85E24(v31);
    if (v16)
    {
      v10 = v16;
    }

    sub_297E4F0E8(v31, &v30);
    sub_297E67F6C(v31, &v29);
    v18 = v29;
    v17 = v30;
    if (v29)
    {
      v19 = v30 == 0;
    }

    else
    {
      v19 = 1;
    }

    if (v19)
    {
      v20 = 255;
    }

    else
    {
      v20 = v10;
    }

    if (!v20)
    {
      goto LABEL_44;
    }

    if (v20 != 179)
    {
      sub_297E4E0B0(0, &v31, 4, 1u, "phLibNfc_SM_GetFwVersionTrans: Failed");
      v13 = 255;
LABEL_53:
      if (v30)
      {
        if (!*(v30 + 6078) && !*(v30 + 6081) && !*(v30 + 6082) && !*(v30 + 6079))
        {
          sub_297E7EB8C(v31);
          *(v28 + 91) = 0;
          phOsalNfc_FreeMemory();
          v30 = 0;
          sub_297E9F3BC(v31, 0);
        }
      }

      else
      {
        sub_297E7EB8C(v31);
      }

      goto LABEL_60;
    }

    if (*(v28 + 192) == 1)
    {
      *(v30 + 3216) = sub_297E89B74;
      v21 = sub_297E8B3F8(*(v18 + 48));
    }

    else
    {
LABEL_44:
      *(v30 + 2960) = gphLibNfc_GetFwVersionSequence;
      v17[2952] = 0;
      v17[2954] = 0;
      v22 = gphLibNfc_GetFwVersionSequence[0];
      if (gphLibNfc_GetFwVersionSequence[0])
      {
        v22 = 0;
        v23 = &qword_2A1A908F8;
        do
        {
          ++v22;
          v24 = *v23;
          v23 += 2;
        }

        while (v24);
      }

      v17[2953] = v22;
      if (v17[6078] || v17[6081] || v17[6079] != 1 && v17[6082] != 1)
      {
        v21 = sub_297E5588C(v17, 0, 0);
      }

      else
      {
        v21 = sub_297E8B0F8(v17, sub_297E8AFEC);
      }
    }

    v13 = v21;
    if (v21 == 13)
    {
      goto LABEL_62;
    }

    goto LABEL_53;
  }

LABEL_31:
  sub_297E50EBC(0, &v31, 4, 1u, "GetFwVersionTrans- Set Default Baud Rate FAILED, Status");
  v13 = 255;
LABEL_60:
  if (v11)
  {
    phTmlNfc_IoCtl();
  }

LABEL_62:
  sub_297E4DFAC(0, &v31, 4, 5u, "phLibNfc_SM_GetFwVersionTrans");
  return v13;
}

uint64_t sub_297EB8564(uint64_t a1, uint64_t a2, int a3)
{
  v29 = 0;
  v30 = a1;
  v27 = 0;
  Memory_Typed = 0;
  v26 = 0;
  v25 = 8;
  sub_297E4E1B4(0, &v30, 4, 5u, "phLibNfc_SM_GetMemDumpTrans");
  sub_297E5D114(v30, &v27);
  sub_297E4F0E8(v30, &Memory_Typed);
  sub_297E5F164(v30, &v25);
  sub_297E67EB0(v30, &v26);
  v4 = 0;
  v5 = 1;
  while (1)
  {
    v6 = v5;
    v7 = &unk_2A18BDDC0 + 112 * v4;
    if (*v7 == v30)
    {
      break;
    }

    v5 = 0;
    v4 = 1;
    if ((v6 & 1) == 0)
    {
      v8 = 255;
      goto LABEL_6;
    }
  }

  v8 = *(v7 + 2);
LABEL_6:
  if (!v27)
  {
    sub_297E4E0B0(0, &v30, 4, 1u, "phLibNfc_SM_GetMemDumpTrans: Invalid IOCTL context");
    goto LABEL_13;
  }

  phOsalNfc_SetMemory();
  if ((v25 & 0xFFFFFFFD) != 4)
  {
    a3 = phTmlNfc_ConfigHsuBaudRate();
  }

  if (a3)
  {
    v9 = "GetMemDumpTrans:Set Default Baud Rate FAILED, Status";
LABEL_11:
    sub_297E50EBC(0, &v30, 4, 1u, v9);
LABEL_13:
    v10 = 255;
    goto LABEL_14;
  }

  if (v26)
  {
    v12 = 0;
    v10 = 0;
    goto LABEL_17;
  }

  if (*(v27 + 192) == 1)
  {
    v14 = phTmlNfc_IoCtl();
    if (v14)
    {
      v10 = v14;
    }

    else
    {
      v10 = phTmlNfc_IoCtl();
      sub_297E96914(0, &v30, 4, 3u, "phLibNfc_SM_GetMemDumpTrans: SPMI Reset Client Retry Status =");
      if (!v10)
      {
        phOsalNfc_Delay();
        v12 = 0;
        goto LABEL_17;
      }
    }

    v12 = 0;
  }

  else
  {
    v10 = phTmlNfc_IoCtl();
    v12 = v10 == 0;
  }

  if (v10 != 179 && v10)
  {
    v9 = "NFCC NCI Mode Failed!!,phTmlNfc_IoCtl wStatus =";
    goto LABEL_11;
  }

LABEL_17:
  v13 = Memory_Typed;
  if (!Memory_Typed)
  {
    Memory_Typed = phOsalNfc_GetMemory_Typed();
    if (Memory_Typed)
    {
      sub_297E966F4(0, &v30, 4, 4u, "####phLibNfc_SM_GetMemDumpTrans: DriverHandle");
      sub_297E966F4(0, &v30, 4, 4u, "####LIBNFC context");
      phOsalNfc_SetMemory();
      sub_297E9F3BC(v30, Memory_Typed);
    }

    else
    {
      sub_297E4E0B0(0, &v30, 4, 1u, "Failed to allocate memory, Insufficient Resources");
      v10 = 12;
    }

    v13 = Memory_Typed;
    if (!Memory_Typed)
    {
      goto LABEL_56;
    }
  }

  if (v10 != 179 && v10)
  {
LABEL_56:
    if (v12)
    {
      phTmlNfc_IoCtl();
    }

    goto LABEL_14;
  }

  *v13 = 514;
  v15 = v30;
  *(v13 + 3000) = v30;
  *(v13 + 9784) = v15;
  *(v13 + 9792) = v8;
  v16 = v27;
  *(v13 + 3224) = *(v27 + 192);
  *(v13 + 3104) = 2;
  *(v16 + 89) = 0;
  *(v16 + 91) = 1;
  sub_297ED0A64(v15, v25);
  sub_297E67F6C(v30, &v29);
  if (v29 && !v26 && sub_297F0E83C(*(v29 + 48)) != 13)
  {
    sub_297E4E0B0(0, &v30, 4, 1u, "phLibNfc_VerifyCtxt : Initial TML read request failed!!");
    v10 = 255;
  }

  if (v10 == 179 || v10 == 0)
  {
    if (v29)
    {
      v18 = *(v29 + 48);
      if (v18)
      {
        if (v10 == 179 && *(v27 + 192) == 1)
        {
          *(Memory_Typed + 3216) = sub_297E89DA4;
          v19 = sub_297E8B3F8(v18);
        }

        else
        {
          v20 = Memory_Typed;
          v21 = (Memory_Typed + 4096);
          *(Memory_Typed + 2960) = gphLibNfc_GetMemDumpSequence;
          v20[2952] = 0;
          v20[2954] = 0;
          v22 = gphLibNfc_GetMemDumpSequence[0];
          if (gphLibNfc_GetMemDumpSequence[0])
          {
            v22 = 0;
            v23 = off_2A1A908C8;
            do
            {
              ++v22;
              v24 = *v23;
              v23 += 2;
            }

            while (v24);
          }

          v20[2953] = v22;
          if (v21[1982] || v21[1985] || v21[1983] != 1 && v21[1986] != 1)
          {
            v19 = sub_297E5588C(v20, 0, 0);
          }

          else
          {
            v19 = sub_297E8B0F8(v20, sub_297E8AFEC);
          }
        }

        v10 = v19;
      }
    }
  }

  if (v10 != 13)
  {
    if (!*(Memory_Typed + 6078) && !*(Memory_Typed + 6081) && !*(Memory_Typed + 6082) && !*(Memory_Typed + 6079))
    {
      sub_297E7EB8C(v30);
      sub_297E67F6C(v30, &v29);
      sub_297ED0CC8(v29);
      phOsalNfc_FreeMemory();
      Memory_Typed = 0;
      sub_297E9F3BC(v30, 0);
    }

    sub_297E4E0B0(0, &v30, 4, 1u, "phLibNfc_SM_GetMemDumpTrans failed");
    goto LABEL_56;
  }

LABEL_14:
  sub_297E4DFAC(0, &v30, 4, 5u, "phLibNfc_SM_GetMemDumpTrans");
  return v10;
}

uint64_t sub_297EB8A68(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v28 = a1;
  v26 = 0;
  v27 = 0;
  v25 = 8;
  v23 = 0;
  v24 = 0;
  sub_297E4E1B4(0, &v28, 4, 5u, "phLibNfc_SM_IoctlGetDnldIntgInfoTrans");
  if (!v28)
  {
    a3 = 1;
    sub_297E4E0B0(0, &v28, 4, 1u, "phLibNfc_SM_IoctlGetDnldIntgInfoTrans: Invalid parameter");
    goto LABEL_54;
  }

  sub_297E5D114(v28, &v26);
  sub_297E5F164(v28, &v25);
  v4 = 0;
  v5 = 1;
  do
  {
    v6 = v5;
    if (*(&unk_2A18BDDC0 + 14 * v4) == v28)
    {
      break;
    }

    v5 = 0;
    v4 = 1;
  }

  while ((v6 & 1) != 0);
  sub_297E67EB0(v28, &v23);
  phOsalNfc_SetMemory();
  if (!v26)
  {
    v16 = "phLibNfc_SM_IoctlGetDnldIntgInfoTrans: Invalid IOCTL context";
LABEL_34:
    sub_297E4E0B0(0, &v28, 4, 1u, v16);
    a3 = 255;
    goto LABEL_54;
  }

  if (!v23)
  {
    if (*(v26 + 192) != 1)
    {
      a3 = phTmlNfc_IoCtl();
      v7 = a3 == 0;
      goto LABEL_10;
    }

    v17 = phTmlNfc_IoCtl();
    if (v17)
    {
      a3 = v17;
    }

    else
    {
      a3 = phTmlNfc_IoCtl();
      sub_297E96914(0, &v28, 4, 3u, "phLibNfc_SM_IoctlGetDnldIntgInfoTrans: SPMI Reset Client Retry Status =");
      if (!a3)
      {
        phOsalNfc_Delay();
        v7 = 0;
        goto LABEL_12;
      }
    }
  }

  v7 = 0;
LABEL_10:
  if (a3 != 179 && a3)
  {
    v16 = "phLibNfc_SM_IoctlGetDnldIntgInfoTrans: Failed";
    goto LABEL_34;
  }

LABEL_12:
  if ((v25 & 0xFFFFFFFD) != 4)
  {
    a3 = phTmlNfc_ConfigHsuBaudRate();
  }

  if (a3 != 179 && a3)
  {
    sub_297E50EBC(0, &v28, 4, 1u, "phLibNfc_SM_IoctlGetDnldIntgInfoTrans : TML Config Baudrate failed status");
LABEL_50:
    v21 = !v7;
    if (a3 == 13)
    {
      v21 = 1;
    }

    if ((v21 & 1) == 0)
    {
      phTmlNfc_IoCtl();
    }

    goto LABEL_54;
  }

  sub_297ED0A64(v28, v25);
  v8 = v26;
  *(v26 + 91) = 0;
  *(v8 + 836) = 0;
  *(v8 + 88) = 0;
  *(v8 + 94) = 0;
  *(v8 + 169) = 0;
  *(v8 + 172) = 0;
  *(v8 + 64) = 0;
  phOsalNfc_SetMemory();
  v9 = sub_297E85E24(v28);
  if (v9)
  {
    LODWORD(a3) = v9;
  }

  sub_297E4F0E8(v28, &v27);
  sub_297E67F6C(v28, &v24);
  v10 = v27;
  v11 = v24;
  if (v24)
  {
    v12 = v27 == 0;
  }

  else
  {
    v12 = 1;
  }

  if (v12)
  {
    v13 = 255;
  }

  else
  {
    v13 = a3;
  }

  if (v13 != 179 && v13)
  {
    sub_297E4E0B0(0, &v28, 4, 1u, "phLibNfc_SM_IoctlGetDnldIntgInfoTrans: Failed");
    a3 = 255;
    goto LABEL_50;
  }

  v14 = v26;
  *(v26 + 64) = v26 + 40;
  if (v13 == 179 && *(v14 + 192) == 1)
  {
    *(v10 + 3216) = sub_297E89EBC;
    v15 = sub_297E8B3F8(*(v11 + 48));
  }

  else
  {
    *(v10 + 2960) = &qword_2A1A92CE0;
    *(v10 + 2952) = 0;
    *(v10 + 2954) = 0;
    v18 = qword_2A1A92CE0;
    if (qword_2A1A92CE0)
    {
      v18 = 0;
      v19 = off_2A1A92CF0;
      do
      {
        ++v18;
        v20 = *v19;
        v19 += 2;
      }

      while (v20);
    }

    *(v10 + 2953) = v18;
    if (*(v10 + 6078) || *(v10 + 6081) || *(v10 + 6079) != 1 && *(v10 + 6082) != 1)
    {
      v15 = sub_297E5588C(v10, 0, 0);
    }

    else
    {
      v15 = sub_297E8B0F8(v10, sub_297E8AFEC);
    }
  }

  a3 = v15;
  if (v15 != 13)
  {
    if (!v27[6078] && !v27[6081] && !v27[6082] && !v27[6079])
    {
      sub_297E7EB8C(v28);
      *(v26 + 91) = 0;
      phOsalNfc_FreeMemory();
      sub_297E9F3BC(v28, 0);
      v27 = 0;
    }

    goto LABEL_50;
  }

LABEL_54:
  sub_297E4DFAC(0, &v28, 4, 5u, "phLibNfc_SM_IoctlGetDnldIntgInfoTrans");
  return a3;
}

uint64_t sub_297EB8EA4(uint64_t a1, int a2, uint64_t a3, uint64_t a4)
{
  v12 = 0;
  v13 = a1;
  v11 = 0;
  sub_297E4E1B4(0, &v13, 4, 5u, "phLibNfc_SM_Dnld_TransComplete");
  sub_297E4F0E8(v13, &v11);
  sub_297E5D114(v13, &v12);
  if (!v12)
  {
    sub_297E4E0B0(0, &v13, 4, 1u, "phLibNfc_SM_Dnld_TransComplete: Invalid IOCTL/LIBNFC context");
    a3 = 255;
    goto LABEL_15;
  }

  if (a3)
  {
    sub_297E96818(v13, a3);
  }

  else
  {
    sub_297E5D398(v13, 0);
  }

  if (a2 <= 181)
  {
    if (a2 != 180)
    {
      if (a2 == 181)
      {
        sub_297E7EA7C(v12, v11, a3);
      }

      goto LABEL_15;
    }

LABEL_14:
    sub_297E5FC6C(v12, a4, a3);
    goto LABEL_15;
  }

  if (a2 == 184)
  {
    goto LABEL_14;
  }

  if (a2 != 183)
  {
    if (a2 != 182)
    {
      goto LABEL_15;
    }

    goto LABEL_14;
  }

  v8 = v12;
  v9 = v12[3];
  v10 = *v12;
  v12[3] = 0;
  *v8 = 0;
  if (v9)
  {
    sub_297E50EBC(0, &v13, 4, 4u, "Get Memory Dump:Invoking callback function, wStatus = ");
    sub_297E4D930(0, &v13, 4, 10, "phLibNfc_SM_Dnld_TransComplete");
    v9(v12[1], v10, a4, a3);
  }

LABEL_15:
  sub_297E4DFAC(0, &v13, 4, 5u, "phLibNfc_SM_Dnld_TransComplete");
  return a3;
}

uint64_t sub_297EB904C(uint64_t a1, uint64_t a2, int a3, int *a4, _DWORD *a5)
{
  v35 = 0;
  v36 = a1;
  v34 = 0;
  v33 = 8;
  v31 = 0;
  v32 = 0;
  sub_297E4E1B4(0, &v36, 4, 5u, "phLibNfc_SM_Dnld_eSE_PwrSmbCfgTrans");
  sub_297E5F164(v36, &v33);
  sub_297E5D114(v36, &v32);
  sub_297E4F0E8(v36, &v35);
  sub_297E67F6C(v36, &v34);
  v8 = 0;
  v9 = 1;
  while (1)
  {
    v10 = v9;
    if (*(&unk_2A18BDDC0 + 14 * v8) == v36)
    {
      break;
    }

    v9 = 0;
    v8 = 1;
    if ((v10 & 1) == 0)
    {
      if (!a5)
      {
        goto LABEL_17;
      }

      goto LABEL_7;
    }
  }

  if (!a5)
  {
LABEL_17:
    sub_297E4E0B0(0, &v36, 4, 1u, "phLibNfc_SM_Dnld_eSE_PwrSmbCfgTrans: Failed");
    v12 = 255;
    goto LABEL_70;
  }

LABEL_7:
  if (!a4 || !v36)
  {
    goto LABEL_17;
  }

  if (!v35 && v32)
  {
    phTmlNfc_ReadAbort();
    phTmlNfc_FlushTxRxBuffers();
    if (sub_297E56AFC(v36) == 1)
    {
      phTmlNfc_WriteAbort();
      sub_297E5A3A8(v36, 0);
    }

    phOsalNfc_SetMemory();
    if (*(v32 + 192) == 1)
    {
      v11 = phTmlNfc_IoCtl();
      if (!v11)
      {
        a3 = phTmlNfc_IoCtl();
        sub_297E96914(0, &v36, 4, 3u, "phLibNfc_SM_Dnld_eSE_PwrSmbCfgTrans: SPMI Reset Client Retry Status =");
        if (!a3)
        {
          phOsalNfc_Delay();
        }

        goto LABEL_20;
      }
    }

    else
    {
      v11 = phTmlNfc_IoCtl();
    }

    a3 = v11;
LABEL_20:
    if ((v33 & 0xFFFFFFFD) != 4)
    {
      a3 = phTmlNfc_ConfigHsuBaudRate();
    }

    if (a3 == 179 || !a3)
    {
      sub_297ED0A64(v36, v33);
      *(v32 + 91) = 0;
      v13 = sub_297E85E24(v36);
      sub_297E4F0E8(v36, &v35);
      if (v13)
      {
        a3 = v13;
      }
    }
  }

  v14 = a3 == 179 || a3 == 0;
  v15 = "phLibNfc_SM_Dnld_eSE_PwrSmbCfgTrans: Failed";
  if (v14 && v35 && v32)
  {
    sub_297E67EB0(v36, &v31);
    v16 = v31;
    if (v31)
    {
      v17 = v34;
    }

    else
    {
      v18 = sub_297F101A8(v36);
      if (v18)
      {
        v19 = v18;
        sub_297E4E0B0(0, &v36, 4, 1u, "phLibNfc_SM_Dnld_eSE_PwrSmbCfgTrans: Failed to initialize DNLD eSE core context ");
        a3 = v19;
      }

      sub_297E4F0E8(v36, &v35);
      sub_297E67F6C(v36, &v34);
      sub_297E67EB0(v36, &v31);
      v17 = v34;
      v16 = v31;
      if (v31)
      {
        v20 = v34 == 0;
      }

      else
      {
        v20 = 1;
      }

      if (v20 || v35 == 0)
      {
        a3 = 255;
      }
    }

    v22 = a3 == 179 || a3 == 0;
    v15 = "phLibNfc_SM_Dnld_eSE_PwrSmbCfgTrans: Failed";
    if (v22 && v16 && v17)
    {
      if (*a5 == 2)
      {
        v26 = *a4;
        *(v16 + 20) = *a4;
        if (v26 == 1)
        {
          *(v16 + 24) = 4178177;
          *(v16 + 28) = 0;
        }

        else
        {
          phOsalNfc_SetMemory();
        }

        if (a3 == 179)
        {
          v29 = v32;
          v30 = v35;
          if (*(v32 + 192) == 1)
          {
            *(v35 + 3216) = phDnldNfc_eSESmbCfgVenResetTimeoutCb;
            v25 = *(v34 + 48);
            goto LABEL_77;
          }
        }

        else
        {
          v30 = v35;
          v29 = v32;
        }

        v28 = phLibNfc_DnldEseSmbCfgSeq(v30, v29);
LABEL_80:
        v12 = v28;
        if (v28 == 13)
        {
          goto LABEL_70;
        }

        goto LABEL_61;
      }

      if (*a5 == 1)
      {
        *(v16 + 18) = *a4;
        if (a3 == 179)
        {
          v23 = v32;
          v24 = v35;
          if (*(v32 + 192) == 1)
          {
            *(v35 + 3216) = phDnldNfc_eSEPwrCfgVenResetTimeoutCb;
            v25 = *(v17 + 48);
LABEL_77:
            v28 = sub_297E8B3F8(v25);
            goto LABEL_80;
          }
        }

        else
        {
          v24 = v35;
          v23 = v32;
        }

        v28 = phLibNfc_DnldEsePwrCfgSeq(v24, v23);
        goto LABEL_80;
      }

      v15 = "phLibNfc_SM_Dnld_eSE_PwrSmbCfgTrans: Invalid config type param";
    }
  }

  sub_297E4E0B0(0, &v36, 4, 1u, v15);
  v12 = 255;
LABEL_61:
  if (v35)
  {
    if (!*(v35 + 6078) && !*(v35 + 6081) && !*(v35 + 6082) && !*(v35 + 6079))
    {
      sub_297E7EB8C(v36);
      if (v32)
      {
        *(v32 + 91) = 0;
      }

      phOsalNfc_FreeMemory();
      v35 = 0;
      sub_297E9F3BC(v36, 0);
    }
  }

  else
  {
    sub_297E7EB8C(v36);
  }

LABEL_70:
  sub_297E4DFAC(0, &v36, 4, 5u, "phLibNfc_SM_Dnld_eSE_PwrSmbCfgTrans");
  return v12;
}

uint64_t sub_297EB94F8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v12 = 0;
  v13 = a1;
  v10 = 0;
  v11 = 0;
  sub_297E4E1B4(0, &v13, 4, 5u, "phLibNfc_SM_Dnld_eSE_CfgTransCmplt");
  sub_297E4F0E8(v13, &v10);
  sub_297E67EB0(v13, &v12);
  sub_297E5D114(v13, &v11);
  if (a3)
  {
    sub_297E96818(v13, a3);
  }

  else
  {
    sub_297E5D398(v13, 0);
  }

  v4 = v12;
  if (v12)
  {
    v5 = v12[87];
    v6 = v12[88];
    *(v12 + 87) = 0u;
    if (v5)
    {
      sub_297E4D930(0, &v13, 4, 84, "phLibNfc_SM_Dnld_eSE_CfgTransCmplt");
      v5(*v12, v6, a3);
      v4 = v12;
    }
  }

  else
  {
    a3 = 1;
  }

  if (v10)
  {
    if (v4)
    {
      if (v11)
      {
        v7 = v10 + 512;
        *(v10 + 6079) = 0;
        if (*(v7 + 1982) != 1)
        {
          v8 = 0;
          *(v4 + 85) = 0u;
          do
          {
            sub_297F10718(v12, v8);
            v12[v8++ + 19] = 0;
          }

          while (v8 != 8);
          if (!*v11 && !*(v10 + 6081))
          {
            *(v11 + 116) = 0;
            phTmlNfc_ReadAbort();
            phTmlNfc_FlushTxRxBuffers();
            sub_297F12CB0(v12);
            sub_297EA7418(v10);
            sub_297E7EB8C(v13);
            if (*(v11 + 91) == 1)
            {
              *(v11 + 91) = 0;
              if (v10)
              {
                sub_297EA9F80(v10);
                v10 = 0;
                sub_297E9F3BC(v13, 0);
              }
            }
          }
        }
      }
    }
  }

  sub_297E4DFAC(0, &v13, 4, 5u, "phLibNfc_SM_Dnld_eSE_CfgTransCmplt");
  return a3;
}

uint64_t sub_297EB96EC(uint64_t a1)
{
  v3 = 0;
  v4 = a1;
  sub_297E4E1B4(0, &v4, 4, 5u, "phLibNfc_SM_Dnld_eSE_GetSmbTrans");
  sub_297E4F0E8(v4, &v3);
  if (v3)
  {
    SmbCmd = phDnldNfc_DnldEseGetSmbCmd(v3);
  }

  else
  {
    SmbCmd = 255;
  }

  sub_297E4DFAC(0, &v4, 4, 5u, "phLibNfc_SM_Dnld_eSE_GetSmbTrans");
  return SmbCmd;
}

uint64_t sub_297EB9780(uint64_t a1)
{
  v7 = 0;
  v8 = a1;
  sub_297E4E1B4(0, &v8, 4, 5u, "phLibNfc_SM_Dnld_RecoveryTrans");
  sub_297E4F0E8(v8, &v7);
  v1 = v7;
  if (v7)
  {
    *(v7 + 2960) = &qword_2A1A92C50;
    v1[2952] = 0;
    v1[2954] = 0;
    v2 = qword_2A1A92C50;
    if (qword_2A1A92C50)
    {
      v2 = 0;
      v3 = off_2A1A92C60;
      do
      {
        ++v2;
        v4 = *v3;
        v3 += 2;
      }

      while (v4);
    }

    v1[2953] = v2;
    v5 = sub_297E5588C(v1, 0, 0);
  }

  else
  {
    v5 = 1;
  }

  sub_297E4DFAC(0, &v8, 4, 5u, "phLibNfc_SM_Dnld_RecoveryTrans");
  return v5;
}

uint64_t sub_297EB9848(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v13 = 0;
  v14 = a1;
  v11 = 0;
  v12 = 0;
  sub_297E4E1B4(0, &v14, 4, 5u, "phLibNfc_SM_Dnld_eSE_TrnscvTransCmplt");
  sub_297E4F0E8(v14, &v11);
  sub_297E67EB0(v14, &v13);
  sub_297E5D114(v14, &v12);
  if (a3)
  {
    sub_297E96818(v14, a3);
  }

  else
  {
    sub_297E5D398(v14, 0);
  }

  if (v11)
  {
    v4 = v13;
    if (v13)
    {
      if (v12)
      {
        v5 = *(v13 + 648);
        v6 = *(v13 + 656);
        *(v13 + 648) = 0u;
        if (a3 == 214)
        {
          v7 = 0;
          *(v4 + 680) = 0uLL;
          do
          {
            sub_297F10718(v13, v7);
            *(v13 + 8 * v7++ + 152) = 0;
          }

          while (v7 != 8);
        }

        if (v5)
        {
          v5(*v13, v6, *(v13 + 8), v13 + 64, *(v12 + 820), a3);
          sub_297E4E0B0(0, &v14, 4, 4u, "phLibNfc_SM_Dnld_eSE_TrnscvTransCmplt:APP Callback Invoked");
          *(v13 + 664) = 0u;
          phOsalNfc_SetMemory();
          if (a3 == 217)
          {
            for (i = 0; i != 8; ++i)
            {
              sub_297F10718(v13, i);
              *(v13 + 8 * i + 152) = 0;
            }
          }

          if (a3 == 214)
          {
            v9 = 0;
            *(v13 + 680) = 0u;
            do
            {
              sub_297F10718(v13, v9);
              *(v13 + 8 * v9++ + 152) = 0;
            }

            while (v9 != 8);
            if (!*v12 && !*(v11 + 6081))
            {
              phTmlNfc_ReadAbort();
              phTmlNfc_FlushTxRxBuffers();
              sub_297F12CB0(v13);
              sub_297EA7418(v11);
              sub_297E7EB8C(v14);
              if (*(v12 + 91) == 1)
              {
                *(v12 + 91) = 0;
                if (v11)
                {
                  sub_297EA9F80(v11);
                  v11 = 0;
                  sub_297E9F3BC(v14, 0);
                }
              }
            }
          }
        }
      }
    }
  }

  sub_297E4DFAC(0, &v14, 4, 5u, "phLibNfc_SM_Dnld_eSE_TrnscvTransCmplt");
  return a3;
}

uint64_t sub_297EB9AAC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = 0;
  v9 = a1;
  sub_297E4E1B4(0, &v9, 4, 5u, "phLibNfc_SM_Dnld_eSE_TrnscvTrans");
  sub_297E4F0E8(v9, &v8);
  v6 = 255;
  if (a4 && v8)
  {
    v6 = sub_297E87F60(v8, a3, a4);
  }

  sub_297E4DFAC(0, &v9, 4, 5u, "phLibNfc_SM_Dnld_eSE_TrnscvTrans");
  return v6;
}

uint64_t sub_297EB9B4C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v12 = 0;
  v13 = a1;
  v10 = 0;
  v11 = 0;
  sub_297E4E1B4(0, &v13, 4, 5u, "phLibNfc_SM_Dnld_eSE_SmbCfgTransCmplt");
  sub_297E4F0E8(v13, &v10);
  sub_297E67EB0(v13, &v12);
  sub_297E5D114(v13, &v11);
  if (a3)
  {
    sub_297E96818(v13, a3);
  }

  else
  {
    sub_297E5D398(v13, 0);
  }

  v4 = v12;
  if (v12)
  {
    v5 = v12[89];
    v6 = v12[90];
    *(v12 + 89) = 0u;
    if (v5)
    {
      v5(*v4, v6, a3);
      sub_297E4E0B0(0, &v13, 4, 4u, "phLibNfc_SM_Dnld_eSE_SmbCfgTransCmplt:APP Callback Invoked");
      v4 = v12;
    }
  }

  else
  {
    a3 = 1;
  }

  if (v10)
  {
    if (v4)
    {
      v7 = v11;
      if (v11)
      {
        v8 = v10 + 512;
        *(v10 + 6082) = 0;
        if (*(v8 + 1985) != 1 && !*v7 && !*(v8 + 1982))
        {
          *(v7 + 116) = 0;
          phTmlNfc_ReadAbort();
          phTmlNfc_FlushTxRxBuffers();
          sub_297F12CB0(v12);
          sub_297EA7418(v10);
          sub_297E7EB8C(v13);
          if (*(v11 + 91) == 1)
          {
            *(v11 + 91) = 0;
            if (v10)
            {
              sub_297EA9F80(v10);
              v10 = 0;
              sub_297E9F3BC(v13, 0);
            }
          }
        }
      }
    }
  }

  sub_297E4DFAC(0, &v13, 4, 5u, "phLibNfc_SM_Dnld_eSE_SmbCfgTransCmplt");
  return a3;
}

uint64_t sub_297EB9CE4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v11 = 0;
  v12 = a1;
  v10 = 0;
  sub_297E4E1B4(0, &v12, 4, 5u, "phLibNfc_SM_Dnld_eSE_GetSmbTransCmplt");
  sub_297E4F0E8(v12, &v10);
  sub_297E67EB0(v12, &v11);
  if (a3)
  {
    sub_297E96818(v12, a3);
  }

  else
  {
    sub_297E5D398(v12, 0);
  }

  if (v10)
  {
    v6 = v11;
    if (v11)
    {
      *(v10 + 6083) = 0;
      v7 = v6[91];
      v8 = v6[92];
      *(v6 + 91) = 0u;
      if (v7)
      {
        v7(*v6, v8, a4, a3);
        sub_297E4E0B0(0, &v12, 4, 4u, "phLibNfc_SM_Dnld_eSE_GetSmbTransCmplt:host Callback Invoked");
      }
    }
  }

  sub_297E4DFAC(0, &v12, 4, 5u, "phLibNfc_SM_Dnld_eSE_GetSmbTransCmplt");
  return a3;
}

uint64_t sub_297EB9DE4(uint64_t a1)
{
  sub_297E4E1B4(2, a1, 4, 5u, "phLibNfc_SM_SE_Initialize");
  if (a1)
  {
    for (i = 0; i != 4; ++i)
    {
      sub_297E4F450(*(a1 + 9784), dword_297F132B8[i], 0, a1 + 9784, a1);
    }
  }

  sub_297E4DFAC(2, a1, 4, 5u, "phLibNfc_SM_SE_Initialize");
  return 0;
}

uint64_t sub_297EB9E80(uint64_t a1, unsigned int a2)
{
  v3 = a1;
  v13 = 0;
  sub_297E4E1B4(2, a1, 4, 5u, "phLibNfc_NfccResetNtf_CB");
  if (v3)
  {
    v13 = *(v3 + 9784);
    v4 = *(v3 + 6104);
    if ((a2 & 0xFFFE) == 0x88)
    {
      v5 = a2;
    }

    else
    {
      v5 = 48;
    }

    sub_297E8EACC(v3, v5);
    v6 = *(v3 + 6568);
    if (v6)
    {
      v7 = *(v3 + 6576);
      if (*(v3 + 356) == 161)
      {
        sub_297E54734(0, &v13, 4, 4u, "NfccResetNtf_CB :pGenericNtfCb[RESET NTF PROHIBIT TEMPERATURE]");
        v8 = *(v3 + 9784);
        v9 = v7;
        v10 = 209;
        v11 = 0;
      }

      else
      {
        sub_297E54734(0, &v13, 4, 4u, "NfccResetNtf_CB :pGenericNtfCb[RESET NTF]");
        v8 = *(v3 + 9784);
        v11 = v3 + 112;
        v9 = v7;
        v10 = 48;
      }

      v6(v8, v9, v10, v11);
    }

    *(v3 + 3208) = 0;
    if (v4)
    {
      sub_297EA7418(v3);
      sub_297F080D4(*(v3 + 3088), 2, 0, 0);
      *(v3 + 3088) = 0;
      phTmlNfc_ReadAbort();
      phTmlNfc_FlushTxRxBuffers();
      phTmlNfc_WriteAbort();
      sub_297E5A3A8(*(v3 + 3000), 0);
      *(v3 + 2960) = 0;
      sub_297EA9F80(v3);
      sub_297E9F3BC(v13, 0);
      v3 = 0;
    }
  }

  return sub_297E4DFAC(2, v3, 4, 5u, "phLibNfc_NfccResetNtf_CB");
}

uint64_t sub_297EB9FF8(uint64_t a1)
{
  v4 = 0u;
  v5 = 0u;
  sub_297E4E1B4(2, a1, 3, 5u, "phNciNfc_ModeSet");
  if (a1)
  {
    *(a1 + 6480) = 0;
    phOsalNfc_SetMemory();
    *&v4 = 0x200000001;
    DWORD2(v4) = 1;
    *&v5 = *(a1 + 896);
    DWORD2(v5) = *(a1 + 904);
    v2 = sub_297E57BA8(a1 + 936, &v4, a1 + 3800, 2000, sub_297EBA944, a1);
  }

  else
  {
    v2 = 255;
  }

  sub_297E4DFAC(2, a1, 3, 5u, "phNciNfc_ModeSet");
  return v2;
}

uint64_t sub_297EBA0DC(uint64_t a1, uint64_t a2)
{
  sub_297E4E1B4(2, a1, 3, 5u, "phNciNfc_ProcessModeSetRsp");
  if (!a2)
  {
    if (!a1)
    {
      goto LABEL_12;
    }

    *(a1 + 6480) = 1;
    v4 = *(a1 + 3800);
    if (!v4)
    {
      goto LABEL_12;
    }

    v5 = *v4;
    if (v5 == 241)
    {
      a2 = 81;
      goto LABEL_13;
    }

    if (!v5)
    {
      sub_297E4E0B0(1, a1 + 6524, 3, 4u, "NFCEE Mode Set process Success");
      v6 = *(a1 + 3992);
      if (v6)
      {
        if (*(v6 + 1) == 1 && !*(a1 + 3988))
        {
          sub_297E4E0B0(1, a1 + 6524, 3, 4u, "Updating closed logical connection channel info");
          if (sub_297E8BC94(a1, a1 + 4008))
          {
            sub_297E4E0B0(1, a1 + 6524, 3, 1u, "Failed to update closed connection info");
          }
        }
      }

      a2 = 0;
    }

    else
    {
LABEL_12:
      a2 = 255;
    }
  }

LABEL_13:
  sub_297E4DFAC(2, a1, 3, 5u, "phNciNfc_ProcessModeSetRsp");
  return a2;
}

uint64_t sub_297EBA200(uint64_t a1, uint64_t a2)
{
  sub_297E4E1B4(2, a1, 3, 5u, "phNciNfc_CompleteModeSetSequence");
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
      sub_297E4E0B0(1, a1 + 6524, 3, 4u, "phNciNfc_CompleteModeSetSequence: Set Mode failed!!");
    }

    else
    {
      v4 = *(a1 + 3992);
      if (!v4 || *(a1 + 3988) == 1 && *(v4 + 1) == 1)
      {
        a2 = 0;
      }

      else
      {
        v5 = *(a1 + 4704);
        if (v5 && v5 != 0xFFFFFFFFFFFFLL)
        {
          phOsalNfc_Timer_Stop();
          phOsalNfc_Timer_Delete();
          *(a1 + 4704) = 0xFFFFFFFFFFFFLL;
        }

        v6 = phOsalNfc_Timer_Create();
        *(a1 + 4704) = v6;
        if (v6 != 0xFFFFFFFFFFFFLL && v6)
        {
          sub_297E4E0B0(1, a1 + 6524, 3, 4u, "Set Mode Notification Timer Created Successfully");
          a2 = phOsalNfc_Timer_Start();
          if (!a2)
          {
            sub_297E687D8(1, a1 + 6524, *(a1 + 4704), 3, 4u, "phNciNfc_CompleteModeSetSequence");
            sub_297E4E0B0(1, a1 + 6524, 3, 4u, "Set Mode ntf timer started\n");
            goto LABEL_19;
          }

          phOsalNfc_Timer_Stop();
          phOsalNfc_Timer_Delete();
          *(a1 + 4704) = 0xFFFFFFFFFFFFLL;
          sub_297E4E0B0(1, a1 + 6524, 3, 1u, "Set Mode ntf timer start FAILED\n\n");
        }

        else
        {
          sub_297E4E0B0(1, a1 + 6524, 3, 1u, "Set Mode Notification Timer Create failed!!");
          a2 = 12;
        }
      }
    }

    *(a1 + 816) = 0u;
    sub_297E5B994(a1, a2, 0);
  }

LABEL_19:
  sub_297E4DFAC(2, a1, 3, 5u, "phNciNfc_CompleteModeSetSequence");
  return a2;
}

uint64_t sub_297EBA42C(uint64_t a1)
{
  v4 = 0u;
  v5 = 0u;
  sub_297E4E1B4(2, a1, 3, 5u, "phNciNfc_NfceeDiscover");
  if (a1)
  {
    phOsalNfc_SetMemory();
    *&v4 = 0x200000001;
    DWORD2(v4) = 0;
    *&v5 = *(a1 + 896);
    DWORD2(v5) = *(a1 + 904);
    v2 = sub_297E57BA8(a1 + 936, &v4, a1 + 3800, 2000, sub_297EBA944, a1);
  }

  else
  {
    v2 = 255;
  }

  sub_297E4DFAC(2, a1, 3, 5u, "phNciNfc_NfceeDiscover");
  return v2;
}

uint64_t sub_297EBA504(uint64_t a1, uint64_t a2)
{
  sub_297E4E1B4(2, a1, 3, 5u, "phNciNfc_ProcessNfceeDiscoverRsp");
  if (a1 && !a2)
  {
    v4 = *(a1 + 3800);
    if (!v4 || *(a1 + 3808) > 2u)
    {
      goto LABEL_8;
    }

    v5 = *v4;
    if (v5 == 241)
    {
      a2 = 81;
      goto LABEL_9;
    }

    if (v5)
    {
LABEL_8:
      a2 = 255;
    }

    else
    {
      sub_297E4E0B0(1, a1 + 6524, 3, 4u, "NFCEE Discovery process Started");
      *(a1 + 3985) = *(*(a1 + 3800) + 1);
      *(a1 + 4000) = *(a1 + 4528);
      sub_297E50DB0(1, a1 + 6524, 3, 4u, "Number of NFCEE Connected with NFCC");
      a2 = 0;
    }
  }

LABEL_9:
  sub_297E4DFAC(2, a1, 3, 5u, "phNciNfc_ProcessNfceeDiscoverRsp");
  return a2;
}

uint64_t sub_297EBA5F8(uint64_t a1, uint64_t a2)
{
  v6 = 0;
  v7 = 0;
  sub_297E4E1B4(2, a1, 3, 5u, "phNciNfc_CompleteNfceeDiscoverSequence");
  if (a1)
  {
    if (!*(a1 + 3800))
    {
      goto LABEL_13;
    }

    if (*(a1 + 896))
    {
      phOsalNfc_FreeMemory();
      *(a1 + 896) = 0;
      *(a1 + 904) = 0;
    }

    if (a2)
    {
      goto LABEL_13;
    }

    if (*(a1 + 4528) == 1)
    {
      sub_297E4E0B0(1, a1 + 6524, 3, 4u, "Registering for Nfcee Discover Notification");
      BYTE5(v7) = 2;
      LODWORD(v7) = 0;
      v6 = 0x200000003;
      a2 = sub_297E59AEC(a1 + 936, &v6, sub_297EBAB70, a1);
      if (a2)
      {
        v4 = "phNciNfc_CompleteNfceeDiscoverSequence:Registering for Nfcee Discover Notification Failed";
LABEL_12:
        sub_297E4E0B0(1, a1 + 6524, 3, 4u, v4);
      }
    }

    else
    {
      sub_297E4E0B0(1, a1 + 6524, 3, 4u, "phNciNfc_CompleteNfceeDiscoverSequence:De-Registering for Nfcee Discover Notification");
      LODWORD(v7) = 0;
      v6 = 0x200000003;
      a2 = sub_297F00C28(a1 + 936, &v6, sub_297EBAB70);
      if (a2)
      {
        v4 = "phNciNfc_CompleteNfceeDiscoverSequence:De-Registering for Nfcee Discover Notification Failed";
        goto LABEL_12;
      }
    }

LABEL_13:
    sub_297E5B994(a1, a2, 0);
    goto LABEL_14;
  }

  a2 = 255;
LABEL_14:
  sub_297E4DFAC(2, a1, 3, 5u, "phNciNfc_CompleteNfceeDiscoverSequence");
  return a2;
}

uint64_t sub_297EBA794(uint64_t a1)
{
  v4 = 0u;
  v5 = 0u;
  sub_297E4E1B4(2, a1, 3, 5u, "phNciNfc_SvddOnCtrlCmd");
  if (a1)
  {
    phOsalNfc_SetMemory();
    *&v4 = 0xF00000001;
    DWORD2(v4) = 41;
    *&v5 = *(a1 + 896);
    DWORD2(v5) = *(a1 + 904);
    v2 = sub_297E57BA8(a1 + 936, &v4, a1 + 3800, 2000, sub_297EBA944, a1);
  }

  else
  {
    v2 = 255;
  }

  sub_297E4DFAC(2, a1, 3, 5u, "phNciNfc_SvddOnCtrlCmd");
  return v2;
}

uint64_t sub_297EBA870(uint64_t a1, uint64_t a2)
{
  sub_297E4E1B4(2, a1, 3, 5u, "phNciNfc_SvddOnCtrlRsp");
  if (a1 && !a2)
  {
    v4 = *(a1 + 3800);
    if (v4 && !*v4 && *(a1 + 3808) == 1)
    {
      sub_297E4E0B0(1, a1 + 6524, 3, 4u, "Svdd On Control Successful");
      a2 = 0;
    }

    else
    {
      sub_297E4E0B0(1, a1 + 6524, 3, 1u, "Svdd On Control  failed!");
      *(a1 + 3808) = 0;
      a2 = 255;
    }
  }

  sub_297E4DFAC(2, a1, 3, 5u, "phNciNfc_SvddOnCtrlRsp");
  return a2;
}

uint64_t sub_297EBA944(uint64_t a1, uint64_t a2, uint64_t a3)
{
  sub_297E4E1B4(2, a1, 3, 5u, "phNciNfc_NfceeDiscoverSequence");
  if (a1 && a2)
  {
    *(a1 + 3800) = *(a2 + 8);
    *(a1 + 3808) = *(a2 + 16);
  }

  v6 = sub_297E5783C(a1, a3);
  sub_297E4DFAC(2, a1, 3, 5u, "phNciNfc_NfceeDiscoverSequence");
  return v6;
}

uint64_t sub_297EBA9D8(uint64_t a1, uint64_t a2)
{
  sub_297E687D8(2, a2, a1, 3, 4u, "phNciNfc_NfceeMgmtSetModeTimeOutHandler");
  sub_297E4E1B4(2, a2, 3, 5u, "phNciNfc_NfceeMgmtSetModeTimeOutHandler");
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
    sub_297E4E0B0(1, a2 + 6524, 3, 4u, "#######Set Mode notification TIMEOUT########\n");
    v7 = *(a2 + 4704);
    if (v7 && v7 != 0xFFFFFFFFFFFFLL)
    {
      phOsalNfc_Timer_Stop();
      phOsalNfc_Timer_Delete();
      *(a2 + 4704) = 0xFFFFFFFFFFFFLL;
    }

    if (*(a2 + 4835) == 1 || *(a2 + 4834) == 1)
    {
      v8 = 47;
    }

    else
    {
      v8 = 47;
      if (*(a2 + 4833) != 1)
      {
        if (*(a2 + 4828) == 1)
        {
          v8 = 47;
        }

        else
        {
          v8 = 0;
        }
      }
    }

    v9 = *(a2 + 816);
    if (v9)
    {
      v10 = *(a2 + 824);
      *(a2 + 816) = 0;
      *(a2 + 824) = 0;
      v9(v10, v8, 0);
    }
  }

  else
  {
LABEL_6:
    sub_297E4E0B0(2, a2, 3, 1u, "Nci context null (phNciNfc_NfceeMgmtSetModeTimeOutHandler)\n");
  }

  return sub_297E4DFAC(2, a2, 3, 5u, "phNciNfc_NfceeMgmtSetModeTimeOutHandler");
}

uint64_t sub_297EBAB70(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v43 = 0;
  v41 = 0u;
  v42 = 0u;
  v39 = 0u;
  v40 = 0u;
  v37 = 0u;
  v38 = 0u;
  v34 = 0;
  v35 = 0;
  v36 = 0;
  v33 = 0;
  sub_297E4E1B4(2, a1, 3, 5u, "phNciNfc_NfceeDiscNtfHandler");
  if (a3)
  {
    goto LABEL_44;
  }

  if (!a1)
  {
    a3 = 49;
    goto LABEL_44;
  }

  if (!a2 || (v6 = *(a2 + 8)) == 0 || (v7 = *(a2 + 16)) == 0)
  {
    a3 = 1;
    goto LABEL_44;
  }

  v8 = 0;
  v9 = *v6;
  v10 = 1;
  a3 = 1;
  if (*v6 && v9 != 255)
  {
    v11 = v6[1];
    if (v11 > 2)
    {
LABEL_9:
      v8 = 0;
      goto LABEL_34;
    }

    v12 = sub_297E5B838(a1, (a1 + 3984), v9, &v33, 1u);
    a3 = v12;
    v13 = v12 == 255;
    v8 = v11 == 2;
    if (v8)
    {
      if (v12 == 255)
      {
        a3 = sub_297E5B838(a1, (a1 + 3984), *v6, &v33, 0);
        v14 = v33;
        if (!a3)
        {
          *(a1 + 104 * v33 + 4008) = -1;
        }
      }

      else
      {
        v14 = v33;
      }

      LOBYTE(v34) = 0;
      BYTE1(v34) = *v6;
      v35 = a1 + 104 * v14 + 4008;
      sub_297EBB250(a1, v35, v6[(v6[2] + 3)], &v6[(v6[2] + 4)]);
      v10 = 0;
    }

    else
    {
      if (v12 == 255)
      {
        v15 = sub_297E5B838(a1, (a1 + 3984), *v6, &v33, 0);
        if (v15)
        {
          a3 = v15;
          goto LABEL_9;
        }

        *(a1 + 104 * v33 + 4008) = -1;
        v13 = 1;
        goto LABEL_26;
      }

      v13 = 0;
    }

    if (a3)
    {
      goto LABEL_34;
    }

LABEL_26:
    if (v6[1] == 2)
    {
LABEL_27:
      a3 = 0;
      goto LABEL_34;
    }

    v16 = a1 + 4008;
    v17 = v33;
    v18 = (a1 + 4008 + 104 * v33);
    *v18 = -1;
    v18[1] = *v6;
    if (v6[1])
    {
      v19 = 0;
      *v18 = -1;
    }

    else
    {
      v19 = 1;
    }

    *(v16 + 104 * v17 + 4) = v19;
    HIBYTE(v33) = 2;
    if (!sub_297EBB4E4(a1, v18, v6, &v33 + 1))
    {
      if (!(v7 + ~HIBYTE(v33)))
      {
        goto LABEL_49;
      }

      v29 = &v6[HIBYTE(v33)];
      a3 = sub_297EC2C48(a1, (v29 + 1), (v7 + ~HIBYTE(v33)));
      if (a3)
      {
        goto LABEL_33;
      }

      v30 = v16 + 104 * v33;
      *(v30 + 14) = *v29;
      *(v30 + 16) = 0;
      Memory_Typed = phOsalNfc_GetMemory_Typed();
      *(v16 + 104 * v33 + 16) = Memory_Typed;
      if (!Memory_Typed)
      {
        a3 = 255;
        goto LABEL_33;
      }

      phOsalNfc_MemCopy();
      if (!sub_297EBB250(a1, v16 + 104 * v33, *v29, *(v16 + 104 * v33 + 16)))
      {
LABEL_49:
        if (v13)
        {
          a3 = 0;
          ++*(a1 + 3984);
          goto LABEL_34;
        }

        goto LABEL_27;
      }
    }

    a3 = 1;
LABEL_33:
    *(v16 + 104 * v33 + 1) = 0;
  }

LABEL_34:
  v20 = a1 + 4008;
  v21 = a1 + 4008 + 104 * v33;
  v22 = *v6;
  if (*(v21 + 1) == v22)
  {
    v23 = *(v21 + 80);
    v41 = *(v21 + 64);
    v42 = v23;
    v43 = *(v21 + 96);
    v24 = *(v21 + 16);
    v37 = *v21;
    v38 = v24;
    v25 = *(v21 + 48);
    v39 = *(v21 + 32);
    v40 = v25;
  }

  else if (v6[1] == 2)
  {
    v32 = 2;
    BYTE1(v37) = v22;
    DWORD1(v37) = 2;
    a3 = sub_297EBB4E4(a1, &v37, v6, &v32);
    BYTE14(v37) = v6[v32];
    v26 = v20 + 104 * v33;
    *v26 = -1;
    *(v26 + 1) = v6[HIBYTE(v33)];
    *(v26 + 4) = 2;
  }

  sub_297E9337C(a1, &v37);
  if (!a3)
  {
    if (!v8)
    {
      LOBYTE(v34) = v10;
      BYTE1(v34) = *(v20 + 104 * v33 + 1);
      v35 = v20 + 104 * v33;
    }

    v27 = *(a1 + 232);
    if (v27)
    {
      v27(*(a1 + 224), 1, &v34, 0);
    }

    a3 = 0;
  }

LABEL_44:
  sub_297E4DFAC(2, a1, 3, 5u, "phNciNfc_NfceeDiscNtfHandler");
  return a3;
}

uint64_t sub_297EBAFC4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  sub_297E4E1B4(2, a1, 3, 5u, "phNciNfc_NfceeModeSetSequence");
  if (a1 && a2)
  {
    *(a1 + 3808) = *(a2 + 16);
    *(a1 + 3800) = *(a2 + 8);
  }

  v6 = sub_297E5783C(a1, a3);
  sub_297E4DFAC(2, a1, 3, 5u, "phNciNfc_NfceeModeSetSequence");
  return v6;
}

uint64_t sub_297EBB058(void *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v11 = 0;
  v10 = 255;
  sub_297E4E1B4(2, a1, 3, 5u, "phNciNfc_Nfcee_Connect");
  v8 = 0;
  if (a2 && a3)
  {
    a1[586] = a2;
    LODWORD(v10) = 3;
    WORD2(v10) = 257;
    BYTE6(v10) = 2;
    HIBYTE(v10) = *(a2 + 1);
    LOBYTE(v11) = 1;
    a1[428] = a3;
    a1[469] = a4;
    v8 = sub_297E8B5FC(a1, &v10, sub_297EBB148, a1);
  }

  sub_297E4DFAC(2, a1, 3, 5u, "phNciNfc_Nfcee_Connect");
  return v8;
}

uint64_t sub_297EBB148(uint64_t a1, uint64_t a2, uint64_t a3)
{
  sub_297E4E1B4(2, a1, 3, 5u, "phNciNfc_NfceeConnCb");
  if (a1)
  {
    if (!a3)
    {
      v5 = *(a1 + 4688);
      a3 = sub_297E8B9D0(a1, 3, *(v5 + 1), v5);
      if (!a3)
      {
        sub_297E50DB0(1, a1 + 6524, 3, 4u, "NFCEE connection created for id = ");
        a3 = sub_297E8BB50(a1, v5, &v7);
        if (a3)
        {
          sub_297E4E0B0(1, a1 + 6524, 3, 4u, "phNciNfc_NfceeConnCb:Retrieving logical connection id for secure element failed");
        }
      }
    }

    sub_297E5B994(a1, a3, 0);
  }

  else
  {
    a3 = 49;
  }

  sub_297E4DFAC(2, a1, 3, 5u, "phNciNfc_NfceeConnCb");
  return a3;
}

uint64_t sub_297EBB250(uint64_t a1, uint64_t a2, unsigned int a3, uint64_t a4)
{
  sub_297E4E1B4(2, a1, 3, 5u, "phNciNfc_StoreTlvInfo");
  if (a3)
  {
    LOWORD(v7) = 1;
    v8 = a2;
    if (a3 <= 3)
    {
      v9 = 0;
      v10 = 0;
      v11 = 0;
      v7 = 0;
      *(a2 + 24) = a3;
      v12 = a2 + 32;
      v13 = (a2 + 32);
      do
      {
        if (v9 >= a3 || v7)
        {
          break;
        }

        v14 = (a4 + v10);
        v15 = *v14;
        if (v15 == 160)
        {
          v17 = (v10 + 1);
          *v13 = 160;
          if (v17 >= 0xFE)
          {
            v18 = v10 + 1;
          }

          else
          {
            v18 = v10 + 2;
          }

          if (v17 < 0xFE)
          {
            v19 = v10 + 1;
          }

          else
          {
            v19 = 0;
          }

          if (*(a4 + v19) == 1)
          {
            v20 = v12 + 24 * v11;
            *(v20 + 4) = 1;
            if (v18 >= 0xFEu)
            {
              v10 = v18;
            }

            else
            {
              v10 = v18 + 1;
            }

            if (v18 >= 0xFEu)
            {
              v21 = 0;
            }

            else
            {
              v21 = v18;
            }

            *(v20 + 8) = *(a4 + v21);
            v22 = *(a4 + v10);
            if (v22 > 0xF && ((v23 = v22 & 0xF0, (v22 & 0xF) == 0xF) || v22 == 77 || v23 != 64) && (v23 == 32 ? (v24 = (v22 & 0xF) > 0xC) : (v24 = 1), v24))
            {
              *(v20 + 16) = 255;
              v25 = *(a4 + v10);
              *(v20 + 20) = v25;
              if (v25 == 45)
              {
                v26 = "StoreTlvInfo: Received NFCEE removed Ntf with eSE Not present Reason Code";
              }

              else
              {
                v26 = "StoreTlvInfo: Received NFCEE removed Ntf with un-known reason code";
              }

              sub_297E4E0B0(2, a1, 3, 1u, v26);
              v7 = 0;
              v8 = a2;
            }

            else
            {
              v7 = 0;
              *(v20 + 16) = v22;
              *(v20 + 20) = 0;
            }
          }

          else
          {
            sub_297E4E0B0(2, a1, 3, 1u, "StoreTlvInfo: Received NFCEE removed Ntf with INVALID type");
            v8 = a2;
            v7 = 0;
            *(a2 + 24) = 0;
            *(v12 + 24 * v11 + 4) = 2;
            v10 = v18;
          }

          goto LABEL_39;
        }

        if (v15 == 1)
        {
          v7 = 0;
          v16 = v12 + 24 * v11;
          *v16 = 1;
        }

        else
        {
          if (*v14)
          {
            *(v8 + 24) = 0;
            v7 = 1;
            goto LABEL_39;
          }

          v7 = 0;
          v16 = v12 + 24 * v11;
          *v16 = 0;
        }

        *(v16 + 8) = v14[1];
        *(v16 + 16) = v14 + 2;
        v10 += v14[1] + 2;
        ++v11;
LABEL_39:
        ++v9;
        v13 += 6;
      }

      while (v11 < 3);
    }
  }

  else
  {
    LOWORD(v7) = 0;
  }

  sub_297E4DFAC(2, a1, 3, 5u, "phNciNfc_StoreTlvInfo");
  return v7;
}

uint64_t sub_297EBB4E4(uint64_t a1, uint64_t a2, uint64_t a3, unsigned __int8 *a4)
{
  v8 = *a4;
  sub_297E4E1B4(2, a1, 3, 5u, "phNciNfc_StoreNfceeProtocols");
  v9 = *(a3 + v8);
  if (v9 > 5)
  {
    v13 = 1;
  }

  else
  {
    *(a2 + 8) = v9;
    v10 = v8 + 1;
    if (v9)
    {
      v11 = 0;
      while (1)
      {
        v12 = *(a3 + v10);
        sub_297E4E1B4(2, a1, 3, 5u, "phNciNfc_VerifyNfceeProtocol");
        if (v12 >= 4 && v12 != 128)
        {
          break;
        }

        sub_297E4DFAC(2, a1, 3, 5u, "phNciNfc_VerifyNfceeProtocol");
        *(a2 + 9 + v11++) = *(a3 + v10++);
        if (v11 >= *(a2 + 8))
        {
          goto LABEL_7;
        }
      }

      sub_297E4DFAC(2, a1, 3, 5u, "phNciNfc_VerifyNfceeProtocol");
      v13 = 1;
    }

    else
    {
LABEL_7:
      v13 = 0;
    }

    *a4 = v10;
  }

  sub_297E4DFAC(2, a1, 3, 5u, "phNciNfc_StoreNfceeProtocols");
  return v13;
}

uint64_t sub_297EBB630(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v16 = *MEMORY[0x29EDCA608];
  memset(v13, 0, sizeof(v13));
  v15 = 0;
  memset(v14, 0, sizeof(v14));
  v12 = 0;
  sub_297E4E1B4(2, a1, 3, 5u, "phNciNfc_NfceeActionNtfHandler");
  if (!a1)
  {
    a3 = 49;
    goto LABEL_28;
  }

  if (!a2 || (v6 = *(a2 + 8)) == 0)
  {
    a3 = 1;
    goto LABEL_28;
  }

  v7 = *(a2 + 16);
  if (v7 < 3)
  {
    if (!a3)
    {
      goto LABEL_20;
    }

LABEL_26:
    phOsalNfc_SetMemory();
    goto LABEL_27;
  }

  LOBYTE(v14[0]) = *v6;
  v8 = v6[1];
  DWORD1(v14[0]) = v8;
  a3 = 1;
  if (v8 <= 1)
  {
    if (!v8)
    {
LABEL_18:
      BYTE8(v14[0]) = v6[2];
      phOsalNfc_MemCopy();
      v9 = BYTE8(v14[0]) + 3;
      goto LABEL_19;
    }

    if (v6[2] != 1 || sub_297E5C390(a1, v6[3]))
    {
      goto LABEL_26;
    }
  }

  else
  {
    if (v8 != 2)
    {
      if (v8 != 32 && v8 != 16)
      {
        goto LABEL_26;
      }

      goto LABEL_18;
    }

    if (v6[2] != 1 || sub_297E6DCDC(a1, v6[3]))
    {
      goto LABEL_26;
    }
  }

  BYTE8(v14[0]) = v6[2];
  HIDWORD(v14[0]) = v6[3];
  v9 = 4;
LABEL_19:
  if (v7 != v9)
  {
    goto LABEL_26;
  }

LABEL_20:
  a3 = sub_297E5B838(a1, (a1 + 3984), *v6, &v12, 1u);
  if (a3)
  {
LABEL_27:
    v13[0] = v14;
    goto LABEL_28;
  }

  v15 = a1 + 104 * v12 + 4008;
  v13[0] = v14;
  v10 = *(a1 + 232);
  if (v10)
  {
    v10(*(a1 + 224), 3, v13, 0);
  }

  a3 = 0;
LABEL_28:
  sub_297E4DFAC(2, a1, 3, 5u, "phNciNfc_NfceeActionNtfHandler");
  return a3;
}

uint64_t sub_297EBB888(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v31 = *MEMORY[0x29EDCA608];
  v27 = 0;
  v28 = 0;
  v29 = 0;
  sub_297E4E1B4(2, a1, 3, 5u, "phNciNfc_NfceeDiscReqNtfHandler");
  if (!a1)
  {
    a3 = 49;
    goto LABEL_56;
  }

  if (!a2)
  {
    goto LABEL_16;
  }

  v6 = *(a2 + 8);
  v7 = *(a2 + 16);
  sub_297E92264(a1, v6);
  if (v7 == 5 * *v6 + 1)
  {
    v30[0] = 0;
    sub_297E4E1B4(2, a1, 3, 5u, "phNciNfc_NfceeVerifyTlvParams");
    v8 = *v6;
    if (!*v6)
    {
      sub_297E4DFAC(2, a1, 3, 5u, "phNciNfc_NfceeVerifyTlvParams");
LABEL_20:
      v28 = v30;
      sub_297E4E1B4(2, a1, 3, 5u, "phNciNfc_NfceeStoreTlv");
      if (v7 < 6)
      {
        a3 = 255;
      }

      else
      {
        LOBYTE(v27) = *v6;
        v15 = v27;
        if (v27)
        {
          v16 = 0;
          v17 = 1;
          v18 = v30;
          do
          {
            if (v17 >= 0xFEu)
            {
              v19 = v17;
            }

            else
            {
              v19 = v17 + 1;
            }

            if (v17 >= 0xFEu)
            {
              LOBYTE(v17) = 0;
            }

            *v18 = v6[v17];
            if (v19 >= 0xFEu)
            {
              v20 = v19;
            }

            else
            {
              v20 = v19 + 1;
            }

            if (v20 >= 0xFEu)
            {
              v21 = v20;
            }

            else
            {
              v21 = v20 + 1;
            }

            if (v20 >= 0xFEu)
            {
              LOBYTE(v20) = 0;
            }

            v18[1] = v6[v20];
            if (v21 >= 0xFEu)
            {
              v22 = v21;
            }

            else
            {
              v22 = v21 + 1;
            }

            if (v21 >= 0xFEu)
            {
              v23 = 0;
            }

            else
            {
              v23 = v21;
            }

            *(v18 + 1) = v6[v23];
            if (v22 >= 0xFEu)
            {
              v17 = v22;
            }

            else
            {
              v17 = v22 + 1;
            }

            if (v22 >= 0xFEu)
            {
              v24 = 0;
            }

            else
            {
              v24 = v22;
            }

            *(v18 + 2) = v6[v24];
            ++v16;
            v18 += 12;
          }

          while (v16 < v15);
        }

        a3 = 0;
      }

      sub_297E4DFAC(2, a1, 3, 5u, "phNciNfc_NfceeStoreTlv");
      if (v7 >= 6)
      {
        v25 = *(a1 + 232);
        if (v25)
        {
          v25(*(a1 + 224), 2, &v27, 0);
          a3 = 0;
        }
      }

      goto LABEL_56;
    }

    v9 = 0;
    v10 = 1;
    while (v6[v10] <= 1u && v6[(v10 + 1)] == 3)
    {
      v11 = &v6[(v10 + 2)];
      v12 = sub_297E5B838(a1, (a1 + 3984), *v11, v30, 1u);
      if (v12)
      {
        a3 = v12;
        goto LABEL_55;
      }

      if (sub_297E6DCDC(a1, v11[1]))
      {
        break;
      }

      v13 = sub_297E5C390(a1, v11[2]);
      v14 = v13;
      if (v13)
      {
        v10 += 2;
      }

      else
      {
        v10 += 5;
      }

      if (++v9 >= v8 || v13)
      {
        sub_297E4DFAC(2, a1, 3, 5u, "phNciNfc_NfceeVerifyTlvParams");
        if (!v14)
        {
          goto LABEL_20;
        }

LABEL_16:
        a3 = 1;
        goto LABEL_56;
      }
    }

    a3 = 1;
LABEL_55:
    sub_297E4DFAC(2, a1, 3, 5u, "phNciNfc_NfceeVerifyTlvParams");
  }

LABEL_56:
  sub_297E4DFAC(2, a1, 3, 5u, "phNciNfc_NfceeDiscReqNtfHandler");
  return a3;
}

uint64_t sub_297EBBBC4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  sub_297E4E1B4(2, a1, 3, 5u, "phNciNfc_RfRapduSentNtfHandler");
  if (!a1)
  {
    v6 = "phNciNfc_RfRapduSentNtfHandler:Cannot process RAPDU Sent Error Ntf - Invalid input parameters";
    v7 = 2;
    v8 = 0;
LABEL_6:
    sub_297E4E0B0(v7, v8, 3, 1u, v6);
    goto LABEL_7;
  }

  v5 = *(a1 + 232);
  if (!v5)
  {
    v6 = "phNciNfc_RfRapduSentNtfHandler:Upper Layer CallBack Not Registered";
    v8 = a1 + 6524;
    v7 = 1;
    goto LABEL_6;
  }

  v5(*(a1 + 224), 15, a1 + 4008, 0);
LABEL_7:
  sub_297E4DFAC(2, a1, 3, 5u, "phNciNfc_RfRapduSentNtfHandler");
  return a3;
}

uint64_t sub_297EBBC7C(uint64_t a1, unsigned __int8 *a2, unsigned int a3)
{
  memset(v14, 0, sizeof(v14));
  v13 = 0;
  sub_297E4E1B4(2, a1, 3, 5u, "phNciNfc_NfceeProcessRfActvtdNtf");
  v6 = 1;
  if (a1)
  {
    if (a2)
    {
      if (a3 >= 2 && !a2[1])
      {
        v6 = sub_297E5B838(a1, (a1 + 3984), *a2, &v13, 1u);
        if (!v6)
        {
          Memory_Typed = phOsalNfc_GetMemory_Typed();
          if (Memory_Typed)
          {
            v8 = Memory_Typed;
            phOsalNfc_SetMemory();
            *(v8 + 8) = *a2;
            *(v8 + 12) = a2[1];
            *v8 = 1;
            v9 = sub_297E780F0(a1, (a1 + 72), v8, 1);
            if (v9)
            {
              v6 = v9;
              phOsalNfc_FreeMemory();
              goto LABEL_12;
            }

            v10 = a1 + 104 * v13;
            *(v10 + 4008) = *(v10 + 4009);
            v14[0] = v10 + 4008;
            v11 = *(a1 + 232);
            if (v11)
            {
              v11(*(a1 + 224), 5, v14, 0);
            }
          }

          v6 = 0;
        }
      }
    }
  }

LABEL_12:
  sub_297E4DFAC(2, a1, 3, 5u, "phNciNfc_NfceeProcessRfActvtdNtf");
  return v6;
}

uint64_t sub_297EBBDF0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v7 = a3;
  sub_297E4E1B4(2, a1, 3, 5u, "phNciNfc_eSeSvddOnCtrl");
  if (a1)
  {
    if (a2 && v7)
    {
      Memory_Typed = phOsalNfc_GetMemory_Typed();
      *(a1 + 896) = Memory_Typed;
      if (Memory_Typed)
      {
        phOsalNfc_MemCopy();
        *(a1 + 904) = v7;
        *(a1 + 3776) = off_2A1A92858;
        *(a1 + 3976) = 0;
        *(a1 + 3977) = sub_297E577AC(a1, off_2A1A92858);
        v11 = sub_297E5E830(a1, 0, 0);
        if (v11 == 13)
        {
          *(a1 + 3424) = a4;
          *(a1 + 3752) = a5;
        }

        else
        {
          sub_297E4E0B0(1, a1 + 6524, 3, 1u, "Svdd On Control Sequence failed!");
          phOsalNfc_FreeMemory();
          *(a1 + 896) = 0;
          *(a1 + 904) = 0;
        }
      }

      else
      {
        sub_297E4E0B0(1, a1 + 6524, 3, 1u, "phNciNfc_eSeSvddOnCtrl, Memory allocation failed!");
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

  sub_297E4DFAC(2, a1, 3, 5u, "phNciNfc_eSeSvddOnCtrl");
  return v11;
}

uint64_t sub_297EBBF98(uint64_t a1)
{
  sub_297E4E1B4(2, a1, 3, 5u, "phNciNfc_StopResponseTimer");
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
    v7 = *(a1 + 1920);
    v5 = 255;
    if (v7 && v7 != 0xFFFFFFFFFFFFLL)
    {
      phOsalNfc_Timer_Stop();
      *(a1 + 6512) = 0;
      *(a1 + 1928) = 0;
      v5 = 0;
      if (*(a1 + 3396))
      {
        v8 = &gphNfc_DebugInfo_Sec;
      }

      else
      {
        v8 = &gphNfc_DebugInfo_Prim;
      }

      v8[1] &= ~0x10u;
    }
  }

  else
  {
LABEL_6:
    sub_297E4E0B0(2, a1, 3, 1u, "Stack not initialized (phNciNfc_StopResponseTimer)\n");
    v5 = 49;
  }

  sub_297E4DFAC(2, a1, 3, 5u, "phNciNfc_StopResponseTimer");
  return v5;
}

uint64_t sub_297EBC0B0(uint64_t a1)
{
  sub_297E4E1B4(2, a1, 3, 5u, "phNciNfc_ClearSetModeNtfWaitTimer");
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
    v7 = *(a1 + 4704);
    v5 = 255;
    if (v7 && v7 != 0xFFFFFFFFFFFFLL)
    {
      phOsalNfc_Timer_Stop();
      phOsalNfc_Timer_Delete();
      v5 = 0;
      *(a1 + 4704) = 0xFFFFFFFFFFFFLL;
    }
  }

  else
  {
LABEL_6:
    sub_297E4E0B0(2, a1, 3, 1u, "Stack not initialized (phNciNfc_ClearSetModeNtfWaitTimer)\n");
    v5 = 49;
  }

  sub_297E4DFAC(2, a1, 3, 5u, "phNciNfc_ClearSetModeNtfWaitTimer");
  return v5;
}

uint64_t sub_297EBC1A8(uint64_t a1)
{
  v28 = 0u;
  v29 = 0u;
  sub_297E4E1B4(2, a1, 3, 5u, "phNciNfc_SendMfReq");
  if (!a1)
  {
    sub_297E4E0B0(2, 0, 3, 4u, " Invalid Context Param..");
    v7 = 1;
    goto LABEL_60;
  }

  v2 = *(a1 + 4552);
  if (!v2)
  {
    sub_297E4E0B0(1, a1 + 6524, 3, 4u, " Invalid Device..");
    v7 = 6;
    goto LABEL_60;
  }

  if (!*(a1 + 4584))
  {
    v7 = 1;
    sub_297E4E0B0(1, a1 + 6524, 3, 4u, " Invalid Length..");
    goto LABEL_60;
  }

  if (*(v2 + 12) == 128)
  {
    v3 = *(a1 + 4560);
    if (v3 <= 1)
    {
      if (v3)
      {
        if (v3 != 1)
        {
          goto LABEL_30;
        }

        v8 = *(a1 + 4564);
        sub_297E4E1B4(2, a1, 3, 5u, "phNciNfc_MfCreateWriteHdr");
        v9 = *(a1 + 4552);
        if (v9)
        {
          if ((v8 - 16) > 0xFFFFFFF1 || *(v9 + 4) != 8)
          {
            phOsalNfc_SetMemory();
            sub_297E4E0B0(1, a1 + 6524, 3, 4u, " Creating Write Request Header ..");
            *(a1 + 4672) = 49;
            *(a1 + 4676) = 1;
            *(a1 + 4677) = v8;
            *(a1 + 4678) = -1;
            v6 = "phNciNfc_MfCreateWriteHdr";
            goto LABEL_42;
          }

          v10 = " Invalid Block Address ..";
          v11 = a1 + 6524;
        }

        else
        {
          v10 = " Invalid Device..";
          v11 = a1 + 6524;
        }

        sub_297E4E0B0(1, v11, 3, 4u, v10);
        v18 = "phNciNfc_MfCreateWriteHdr";
      }

      else
      {
        sub_297E4E1B4(2, a1, 3, 5u, "phNciNfc_MfCreateXchgDataHdr");
        if (*(a1 + 4552))
        {
          phOsalNfc_SetMemory();
          sub_297E4E0B0(1, a1 + 6524, 3, 4u, " Creating XchgData Request Header ..");
          *(a1 + 4672) = 16;
          *(a1 + 4676) = -256;
          *(a1 + 4678) = -1;
          v6 = "phNciNfc_MfCreateXchgDataHdr";
          goto LABEL_42;
        }

        sub_297E4E0B0(1, a1 + 6524, 3, 4u, " Invalid Device..");
        v18 = "phNciNfc_MfCreateXchgDataHdr";
      }
    }

    else
    {
      switch(v3)
      {
        case 2:
          v12 = *(a1 + 4564);
          v13 = *(a1 + 4565);
          sub_297E4E1B4(2, a1, 3, 5u, "phNciNfc_MfCreateReadHdr");
          v14 = *(a1 + 4552);
          if (v14)
          {
            if (v12 < 0x10 || *(v14 + 4) != 8)
            {
              phOsalNfc_SetMemory();
              *(a1 + 4584) = 0;
              sub_297E4E0B0(1, a1 + 6524, 3, 4u, " Creating Read Request Header ..");
              *(a1 + 4672) = 50;
              *(a1 + 4676) = 2;
              *(a1 + 4677) = v12;
              *(a1 + 4678) = v13;
              v6 = "phNciNfc_MfCreateReadHdr";
              goto LABEL_42;
            }

            v15 = " Invalid Block Address ..";
            v16 = a1 + 6524;
          }

          else
          {
            v15 = " Invalid Device..";
            v16 = a1 + 6524;
          }

          sub_297E4E0B0(1, v16, 3, 4u, v15);
          v18 = "phNciNfc_MfCreateReadHdr";
          break;
        case 3:
          v17 = *(a1 + 4564);
          sub_297E4E1B4(2, a1, 3, 5u, "phNciNfc_MfCreateSectorSelCmdHdr");
          if (*(a1 + 4552))
          {
            phOsalNfc_SetMemory();
            *(a1 + 4584) = 0;
            sub_297E4E0B0(1, a1 + 6524, 3, 4u, " Creating Write Request Header ..");
            *(a1 + 4672) = 51;
            *(a1 + 4676) = 1;
            *(a1 + 4677) = v17;
            *(a1 + 4678) = -1;
            v6 = "phNciNfc_MfCreateSectorSelCmdHdr";
LABEL_42:
            sub_297E4DFAC(2, a1, 3, 5u, v6);
            goto LABEL_43;
          }

          sub_297E4E0B0(1, a1 + 6524, 3, 4u, " Invalid Device..");
          v18 = "phNciNfc_MfCreateSectorSelCmdHdr";
          break;
        case 4:
          v4 = *(a1 + 4564);
          sub_297E4E1B4(2, a1, 3, 5u, "phNciNfc_MfCreateAuthCmdHdr");
          if (*(a1 + 4552))
          {
            *(a1 + 4584) = 0;
            phOsalNfc_SetMemory();
            sub_297E4E0B0(1, a1 + 6524, 3, 4u, " Creating Write Request Header ..");
            *(a1 + 4672) = 64;
            *(a1 + 4676) = 2;
            *(a1 + 4677) = v4;
            v5 = *(*(a1 + 4576) + 2);
            *(a1 + 4678) = v5;
            if ((v5 & 0x10) != 0)
            {
              *(a1 + 4676) = 3;
              phOsalNfc_MemCopy();
            }

            v6 = "phNciNfc_MfCreateAuthCmdHdr";
            goto LABEL_42;
          }

          sub_297E4E0B0(1, a1 + 6524, 3, 4u, " Invalid Device..");
          v18 = "phNciNfc_MfCreateAuthCmdHdr";
          break;
        default:
LABEL_30:
          sub_297E4E0B0(1, a1 + 6524, 3, 4u, " Invalid Transceive Type received ..");
LABEL_39:
          v19 = " Request Payload Header Creation Failed ..";
          v20 = a1 + 6524;
LABEL_58:
          sub_297E4E0B0(1, v20, 3, 4u, v19);
          v25 = " Extension Payload Packet creation Failed..";
          v26 = a1 + 6524;
          goto LABEL_59;
      }
    }

    sub_297E4DFAC(2, a1, 3, 5u, v18);
    goto LABEL_39;
  }

LABEL_43:
  sub_297E4E0B0(1, a1 + 6524, 3, 4u, " Creating Request Payload (Header + Data)..");
  if (*(v2 + 12) == 128)
  {
    v21 = *(a1 + 4676);
    if (*(a1 + 4560) == 4 && v21 == 3)
    {
      v22 = 9;
    }

    else
    {
      v22 = v21 + 1;
    }
  }

  else
  {
    v22 = 0;
  }

  v23 = *(a1 + 4584);
  *(a1 + 4648) = 0;
  *(a1 + 4640) = 0;
  Memory_Typed = phOsalNfc_GetMemory_Typed();
  *(a1 + 4640) = Memory_Typed;
  if (!Memory_Typed)
  {
    v19 = " Payload MemAlloc for Send request Failed..";
    v20 = a1 + 6524;
    goto LABEL_58;
  }

  *(a1 + 4648) = v23 + v22;
  phOsalNfc_SetMemory();
  if (*(v2 + 12) == 128)
  {
    **(a1 + 4640) = *(a1 + 4672);
    if (*(a1 + 4676))
    {
      phOsalNfc_MemCopy();
    }
  }

  if (v23)
  {
    phOsalNfc_MemCopy();
  }

  sub_297E4E0B0(1, a1 + 6524, 3, 4u, " Payload (Header + Data) created successfully..");
  phOsalNfc_SetMemory();
  LODWORD(v28) = 0;
  if (sub_297E8BB50(a1, v2, (&v28 | 0xC)))
  {
    phOsalNfc_FreeMemory();
    *(a1 + 4640) = 0;
    *(a1 + 4648) = 0;
    v25 = " Couldn't Get ConnId..";
    v26 = a1 + 6524;
LABEL_59:
    sub_297E4E0B0(1, v26, 3, 4u, v25);
    v7 = 255;
    goto LABEL_60;
  }

  *&v29 = *(a1 + 4640);
  DWORD2(v29) = *(a1 + 4648);
  if (sub_297E57BA8(a1 + 936, &v28, a1 + 3800, *(a1 + 4566), sub_297EFF2DC, a1) == 13)
  {
    v7 = 13;
  }

  else
  {
    phOsalNfc_FreeMemory();
    *(a1 + 4640) = 0;
    *(a1 + 4648) = 0;
    v7 = 255;
  }

  *(a1 + 4566) = 0;
LABEL_60:
  sub_297E4DFAC(2, a1, 3, 5u, "phNciNfc_SendMfReq");
  return v7;
}

uint64_t sub_297EBC964(uint64_t a1, int a2)
{
  sub_297E4E1B4(2, a1, 3, 5u, "phNciNfc_RecvMfResp");
  if (!a1)
  {
    v26 = 1;
    sub_297E4E0B0(2, 0, 3, 4u, " Invalid Context Param..");
    goto LABEL_86;
  }

  if (a2 || (v4 = *(a1 + 3808)) == 0 || (v5 = *(a1 + 3800)) == 0)
  {
    v9 = 255;
    v26 = 255;
    v11 = " Mf Data Receive Failed..";
    goto LABEL_15;
  }

  v6 = *(a1 + 4552);
  if (!v6 || *(v6 + 12) != 128)
  {
    v12 = *(a1 + 4600);
    v13 = v4 - 1;
    v14 = v5[v4 - 1];
    if (v14 > 0xB0)
    {
      switch(v14)
      {
        case 0xB1u:
          v26 = 183;
          v15 = " Mf XchgData,PH_NCINFC_STATUS_RF_PROTOCOL_ERROR Detected by NFCC during Data Exchange ";
          goto LABEL_38;
        case 0xB2u:
          v26 = 178;
          v15 = " Mf XchgData,PH_NCINFC_STATUS_RF_TIMEOUT_ERROR Detected by NFCC during Data Exchange ";
          goto LABEL_38;
        case 0xB3u:
          v26 = 184;
          v15 = " Mf XchgData,PH_NCINFC_STATUS_RF_UNEXPECTED_DAT Detected by NFCC during Data Exchange ";
          goto LABEL_38;
      }
    }

    else
    {
      if (!v5[v4 - 1])
      {
        v26 = 0;
        sub_297E4E0B0(1, a1 + 6524, 3, 4u, " Mf XchgData Request is Successful!! ..");
        if (v13 <= v12)
        {
          phOsalNfc_MemCopy();
          *(a1 + 4600) = v13;
        }

        else
        {
          v26 = 8;
          sub_297E4E0B0(1, a1 + 6524, 3, 4u, " Mf XchgData,More Data available than requested  ..");
        }

        goto LABEL_39;
      }

      if (v14 == 2)
      {
        v26 = 181;
        v15 = " Mf XchgData,PH_NCINFC_STATUS_RF_FRAME_CORRUPTED Detected by NFCC during Data Exchange ";
        goto LABEL_38;
      }

      if (v14 == 176)
      {
        v26 = 182;
        v15 = " Mf XchgData,PH_NCINFC_STATUS_RF_TRANSMISSION_ERROR Detected by NFCC during Data Exchange ";
LABEL_38:
        sub_297E4E0B0(1, a1 + 6524, 3, 2u, v15);
LABEL_39:
        sub_297EFF5D8(a1, &v26);
        v9 = v26;
        goto LABEL_84;
      }
    }

    v26 = 185;
    sub_297E96818(*(a1 + 6528), v14);
    sub_297E4E0B0(1, a1 + 6524, 3, 2u, " Mf XchgData,Unknown RF related error Detected by NFCC during Data Exchange ");
    if (v4 <= v12)
    {
      phOsalNfc_MemCopy();
      *(a1 + 4600) = v4;
    }

    goto LABEL_39;
  }

  v7 = *v5;
  if (v7 <= 0x31)
  {
    if (v7 != 16)
    {
      if (v7 == 49)
      {
        if (*(a1 + 4672) == 49)
        {
          v16 = v5[1];
          *(a1 + 4677) = v16;
          if (v16)
          {
            v9 = 255;
            v26 = 255;
            v10 = " Mf WriteN Request Failed ..";
            goto LABEL_68;
          }

          v26 = 0;
          v22 = " Mf WriteN Request is Successful!! ..";
          goto LABEL_63;
        }

LABEL_46:
        v9 = 255;
        v26 = 255;
        v10 = " Unexpected Mf Write Response Received ..";
        goto LABEL_68;
      }

LABEL_52:
      v9 = 255;
      v26 = 255;
      v10 = "phNciNfc_RecvMfResp:Unknown Response ID Received ..";
      goto LABEL_68;
    }

    if (*(a1 + 4672) != 16)
    {
      v9 = 255;
      v26 = 255;
      v10 = " Unexpected Mf XchgData Response Received ..";
      goto LABEL_68;
    }

    v19 = v5[v4 - 1];
    *(a1 + 4677) = v19;
    if (v19 == 178)
    {
      if (*(v6 + 16) == 128)
      {
        v9 = 178;
        v26 = 178;
        v10 = " Mf XchgData Request Failed RF Time out..";
        goto LABEL_68;
      }
    }

    else if (!v19)
    {
      v26 = 0;
      sub_297E4E0B0(1, a1 + 6524, 3, 4u, " Mf XchgData Request is Successful!! ..");
      v20 = *(a1 + 3808) - 2;
      if (v20 > *(a1 + 4600))
      {
        goto LABEL_59;
      }

      goto LABEL_88;
    }

    v9 = 255;
    v26 = 255;
    v10 = " Mf XchgData Request Failed ..";
    goto LABEL_68;
  }

  if (v7 == 50)
  {
    if (*(a1 + 4672) != 50)
    {
      v9 = 255;
      v26 = 255;
      v10 = " Unexpected Mf Read Response Received ..";
      goto LABEL_68;
    }

    v17 = v5[1];
    *(a1 + 4677) = v17;
    if (v17)
    {
      v9 = 255;
      v26 = 255;
      v10 = " Mf ReadN Request Failed ..";
      goto LABEL_68;
    }

    v26 = 0;
    sub_297E4E0B0(1, a1 + 6524, 3, 4u, " Mf ReadN Request is Successful!! ..");
    v9 = 0;
    if ((*(a1 + 3808) - 2) > *(a1 + 4600))
    {
      goto LABEL_70;
    }

    phOsalNfc_MemCopy();
LABEL_64:
    v9 = 0;
    goto LABEL_70;
  }

  if (v7 != 51)
  {
    if (v7 == 64)
    {
      if (*(a1 + 4672) == 64)
      {
        v8 = v5[1];
        *(a1 + 4677) = v8;
        if (v8)
        {
          v9 = 255;
          v26 = 255;
          v10 = " Mf Auth Fail ..";
LABEL_68:
          v21 = a1 + 6524;
          goto LABEL_69;
        }

        v26 = 0;
        v22 = " Mf Auth Pass ..";
LABEL_63:
        sub_297E4E0B0(1, a1 + 6524, 3, 4u, v22);
        goto LABEL_64;
      }

      goto LABEL_46;
    }

    goto LABEL_52;
  }

  if (*(a1 + 4672) != 51)
  {
    goto LABEL_46;
  }

  v18 = v5[1];
  *(a1 + 4677) = v18;
  if (v18)
  {
    v9 = 255;
    v26 = 255;
    v10 = " Mf WriteN Request Failed ..";
LABEL_60:
    v21 = a1 + 6524;
LABEL_69:
    sub_297E4E0B0(1, v21, 3, 4u, v10);
    goto LABEL_70;
  }

  v26 = 0;
  sub_297E4E0B0(1, a1 + 6524, 3, 4u, " Mf Sector select Request is Successful!! ..");
  v20 = *(a1 + 3808) - 2;
  if (v20 > *(a1 + 4600))
  {
LABEL_59:
    v9 = 8;
    v26 = 8;
    v10 = " Mf XchgData,More Data available than requested  ..";
    goto LABEL_60;
  }

LABEL_88:
  phOsalNfc_MemCopy();
  v9 = 0;
  *(a1 + 4600) = v20;
LABEL_70:
  v23 = *(a1 + 4677);
  if (v23 > 0xB0)
  {
    if (v23 == 177)
    {
      v9 = 183;
      v26 = 183;
      v24 = "PH_NCINFC_STATUS_RF_PROTOCOL_ERROR Detected by NFCC during Data Exchange ";
      goto LABEL_83;
    }

    if (v23 != 178)
    {
      if (v23 == 179)
      {
        v9 = 184;
        v26 = 184;
        v24 = "PH_NCINFC_STATUS_RF_UNEXPECTED_DAT Detected by NFCC during Data Exchange ";
        goto LABEL_83;
      }

      goto LABEL_80;
    }

    v9 = 178;
    v26 = 178;
    v11 = "PH_NCINFC_STATUS_RF_TIMEOUT_ERROR Detected by NFCC during Data Exchange ";
LABEL_15:
    sub_297E4E0B0(1, a1 + 6524, 3, 4u, v11);
    goto LABEL_84;
  }

  if (!*(a1 + 4677))
  {
    goto LABEL_84;
  }

  if (v23 == 2)
  {
    v9 = 181;
    v26 = 181;
    v24 = "PH_NCINFC_STATUS_RF_FRAME_CORRUPTED Detected by NFCC during Data Exchange ";
    goto LABEL_83;
  }

  if (v23 == 176)
  {
    v9 = 182;
    v26 = 182;
    v24 = "PH_NCINFC_STATUS_RF_TRANSMISSION_ERROR Detected by NFCC during Data Exchange ";
    goto LABEL_83;
  }

LABEL_80:
  if (v7 == 64)
  {
    goto LABEL_84;
  }

  v9 = 185;
  v26 = 185;
  sub_297E96818(*(a1 + 6528), v23);
  v24 = "Unknown RF related error Detected by NFCC during Data Exchange ";
LABEL_83:
  sub_297E4E0B0(1, a1 + 6524, 3, 2u, v24);
LABEL_84:
  *(a1 + 4632) = v9;
  if (*(a1 + 4640))
  {
    *(a1 + 4648) = 0;
    sub_297E4E0B0(1, a1 + 6524, 3, 4u, " Freeing Send Request Payload Buffer..");
    phOsalNfc_FreeMemory();
    *(a1 + 4640) = 0;
  }

LABEL_86:
  sub_297E4DFAC(2, a1, 3, 5u, "phNciNfc_RecvMfResp");
  return v26;
}

uint64_t sub_297EBD044(uint64_t a1)
{
  sub_297E4E1B4(3, a1, 3, 5u, "phNciNfc_CoreInitRecverStateMachine");
  if (a1)
  {
    v2 = 0;
    *(a1 + 2264) = off_2A1A92878;
    *(a1 + 2272) = &unk_2A13A5CA0;
    *(a1 + 2280) = &unk_2A1A92898;
    *(a1 + 2256) = 0x500000000;
    v3 = *(a1 + 984);
    if (v3)
    {
      if (v3 != 0xFFFFFFFFFFFFLL)
      {
        v2 = phOsalNfc_Timer_Delete();
        if (v2)
        {
          sub_297E4E0B0(1, a1 + 2460, 3, 1u, "phNciNfc_CoreInitRecverStateMachine:Response Timer Delete failed");
        }
      }
    }

    *(a1 + 984) = 0xFFFFFFFFFFFFLL;
    v4 = phOsalNfc_Timer_Create();
    if (v4 != 0xFFFFFFFFFFFFLL && (v5 = v4) != 0)
    {
      sub_297E4E0B0(1, a1 + 2460, 3, 4u, "Response Timer Created Successfully");
      *(a1 + 984) = v5;
      *(a1 + 992) = 0;
      if (!v2)
      {
        sub_297E4E0B0(3, a1, 3, 4u, "phNciNfc_CoreInitRecverStateMachine: SUCCESS");
        goto LABEL_12;
      }
    }

    else
    {
      sub_297E4E0B0(1, a1 + 2460, 3, 1u, "Response Timer Create failed");
      v2 = 12;
    }
  }

  else
  {
    v2 = 1;
  }

  sub_297E4E0B0(3, a1, 3, 1u, "phNciNfc_CoreInitRecverStateMachine: FAILED");
LABEL_12:
  sub_297E4DFAC(3, a1, 3, 5u, "phNciNfc_CoreInitRecverStateMachine");
  return v2;
}

uint64_t sub_297EBD1D0(uint64_t a1)
{
  sub_297E4E1B4(3, a1, 3, 5u, "phNciNfc_CoreReleaseRecverStateMachine");
  if (a1)
  {
    v2 = *(a1 + 984);
    if (v2)
    {
      v3 = v2 == 0xFFFFFFFFFFFFLL;
    }

    else
    {
      v3 = 1;
    }

    if (v3)
    {
      v4 = 0;
    }

    else
    {
      phOsalNfc_Timer_Delete();
      v4 = 0;
      *(a1 + 984) = 0xFFFFFFFFFFFFLL;
      *(a1 + 992) = 0;
    }
  }

  else
  {
    v4 = 1;
  }

  sub_297E4DFAC(3, a1, 3, 5u, "phNciNfc_CoreReleaseRecverStateMachine");
  return v4;
}

uint64_t sub_297EBD270(uint64_t a1)
{
  v10 = 0;
  sub_297E4E1B4(3, a1, 3, 5u, "phNciNfc_CoreRecvChkExptdPktType");
  if (!a1)
  {
    goto LABEL_6;
  }

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
    sub_297E4E0B0(1, a1 + 2460, 3, 4u, "Connector - Check Expected Packet Type");
    v6 = sub_297ED5B58(a1, &v10);
    v7 = v10;
    if (v6)
    {
      v8 = 1;
    }

    else
    {
      v8 = v10 > 2u;
    }

    v5 = v8;
    if (v5)
    {
      v7 = -1;
    }

    *(a1 + 952) = v7;
  }

  else
  {
LABEL_6:
    v5 = 255;
  }

  sub_297E4DFAC(3, a1, 3, 5u, "phNciNfc_CoreRecvChkExptdPktType");
  return v5;
}

uint64_t sub_297EBD364(uint64_t a1)
{
  v7 = 0;
  sub_297E4E1B4(3, a1, 3, 5u, "phNciNfc_CoreRecvChkNewEntry");
  if (a1)
  {
    sub_297E4E0B0(1, a1 + 2460, 3, 4u, "Connector - Check New Entry");
    v2 = sub_297ED5C84(a1, &v7);
    v3 = v7;
    if (v2)
    {
      v4 = 1;
    }

    else
    {
      v4 = v7 > 2u;
    }

    v5 = v4;
    if (v5)
    {
      v3 = 0;
    }

    *(a1 + 952) = v3;
  }

  else
  {
    v5 = 0;
  }

  sub_297E4DFAC(3, a1, 3, 5u, "phNciNfc_CoreRecvChkNewEntry");
  return v5;
}

uint64_t sub_297EBD420(uint64_t *a1)
{
  sub_297E4E1B4(3, a1, 3, 5u, "phNciNfc_StateRecv2Recv");
  if (!a1)
  {
    goto LABEL_21;
  }

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
  if (v4 != a1 || *(a1 + 992) != 1)
  {
    goto LABEL_21;
  }

  v5 = 0;
  v6 = *(a1 + 242);
  if (v6 != *(a1 + 228))
  {
    goto LABEL_22;
  }

  v7 = *a1;
  if (!*a1)
  {
    goto LABEL_22;
  }

  v8 = *(v7 + 4800);
  if (!v8)
  {
    goto LABEL_21;
  }

  v5 = 0;
  v9 = *v8;
  v11 = v9 == sub_297EE81B0 || v9 == sub_297EAADF8;
  if (v6 || !v11)
  {
    goto LABEL_22;
  }

  if (*(a1 + 980) != *(a1 + 924))
  {
LABEL_21:
    v5 = 0;
    goto LABEL_22;
  }

  phOsalNfc_Timer_Stop();
  *(v7 + 6512) = 0;
  v5 = phOsalNfc_Timer_Start();
  if (v5)
  {
    *(a1 + 992) = 0;
    sub_297E4E0B0(1, a1 + 2460, 3, 1u, "Response Timer ReStart failed!!!");
  }

  else
  {
    v13 = &gphNfc_DebugInfo_Sec;
    if (!*(a1 + 615))
    {
      v13 = &gphNfc_DebugInfo_Prim;
    }

    v13[1] &= ~0x10u;
    sub_297E4E0B0(1, a1 + 2460, 3, 4u, "Response timer re-started");
    *(a1 + 992) = 1;
  }

LABEL_22:
  sub_297E4DFAC(3, a1, 3, 5u, "phNciNfc_StateRecv2Recv");
  return v5;
}

uint64_t sub_297EBD5EC(uint64_t a1, uint64_t a2)
{
  v16 = 0;
  sub_297E4E1B4(3, a2, 3, 5u, "phNciNfc_RspTimeOutCb");
  if (a2)
  {
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
    if (v5 == a2)
    {
      v7 = *a2;
      if (*a2)
      {
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
          if (!*(v7 + 6512))
          {
            phOsalNfc_Timer_Stop();
            if (!phOsalNfc_Timer_Start())
            {
              sub_297E4E0B0(1, a2 + 2460, 3, 4u, "Response timer re-started with extended time");
              *(v7 + 6512) = 1;
              return sub_297E4DFAC(3, a2, 3, 5u, "phNciNfc_RspTimeOutCb");
            }

            sub_297E4E0B0(1, a2 + 2460, 3, 1u, "Response Timer extended time ReStart failed!!!");
          }

          *(v7 + 6512) = 0;
          *(a2 + 992) = 0;
          v11 = *(a2 + 968);
          if (v11)
          {
            if (v11 != 2)
            {
              v14 = 1;
              sub_297E4E0B0(1, a2 + 2460, 3, 1u, "Timer expired - Should never enter here");
              sub_297E96818(*(a2 + 632), 1);
              v13 = 0;
              goto LABEL_22;
            }

            v12 = "phNciNfc_RspTimeOutCb: Timer expired before response is received!";
          }

          else
          {
            v12 = "phNciNfc_RspTimeOutCb: Timer expired before data is received!";
          }

          v13 = 1;
          sub_297E4E0B0(1, a2 + 2460, 3, 1u, v12);
          sub_297E8CBD4(v7, 0);
          v14 = 44;
          sub_297E96818(*(a2 + 632), 44);
          phTmlNfc_ReadAbort();
          phTmlNfc_FlushTxRxBuffers();
          *(a2 + 2432) = 0;
          *(a2 + 2440) = 0;
          sub_297E54838(a2);
          if (sub_297E4EE00(a2, 0, 3) != 13)
          {
            sub_297E4E0B0(1, a2 + 2460, 3, 1u, "phNciNfc_RspTimeOutCb: Tml Read request failed!");
          }

LABEL_22:
          if (*(v7 + 6616) != 1)
          {
            if (sub_297E5A99C(*(v7 + 6528), &v16))
            {
              sub_297E4E0B0(1, a2 + 2460, 3, 1u, "phNciNfc_CoreRecvManager4-Failed to retrieve bIgnoreWkUpRet");
LABEL_25:
              v14 = 255;
              sub_297E96818(*(a2 + 632), 255);
              goto LABEL_26;
            }

            if (sub_297E5AA54(*(a2 + 632), 20))
            {
              if (v16 != 1)
              {
                sub_297E4E0B0(1, a2 + 2460, 3, 1u, "phNciNfc_CoreRecvManager4-Fialed to De-Assert Wake Up Line");
                if ((v13 & 1) == 0)
                {
                  goto LABEL_25;
                }
              }
            }
          }

LABEL_26:
          if (*(a2 + 2460))
          {
            v15 = &gphNfc_DebugInfo_Sec;
          }

          else
          {
            v15 = &gphNfc_DebugInfo_Prim;
          }

          v15[1] |= 0x10u;
          *(a2 + 2288) = v14;
          sub_297E51240(a2, 2u);
        }
      }
    }
  }

  return sub_297E4DFAC(3, a2, 3, 5u, "phNciNfc_RspTimeOutCb");
}

uint64_t sub_297EBD910(uint64_t *a1)
{
  sub_297E4E1B4(3, a1, 3, 5u, "phNciNfc_StateIdle2Recv");
  if (!a1)
  {
    goto LABEL_21;
  }

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
  if (v4 != a1 || *(a1 + 992) != 1)
  {
    goto LABEL_21;
  }

  v5 = 0;
  v6 = *(a1 + 242);
  if (v6 != *(a1 + 228))
  {
    goto LABEL_22;
  }

  v7 = *a1;
  if (!*a1)
  {
    goto LABEL_22;
  }

  v8 = *(v7 + 4800);
  if (!v8)
  {
    goto LABEL_21;
  }

  v5 = 0;
  v9 = *v8;
  v11 = v9 == sub_297EE81B0 || v9 == sub_297EAADF8;
  if (v6 || !v11)
  {
    goto LABEL_22;
  }

  if (*(a1 + 980) != *(a1 + 924))
  {
LABEL_21:
    v5 = 0;
    goto LABEL_22;
  }

  phOsalNfc_Timer_Stop();
  *(v7 + 6512) = 0;
  v5 = phOsalNfc_Timer_Start();
  if (v5)
  {
    *(a1 + 992) = 0;
    sub_297E4E0B0(1, a1 + 2460, 3, 1u, "Response Timer ReStart failed!!!");
  }

  else
  {
    v13 = &gphNfc_DebugInfo_Sec;
    if (!*(a1 + 615))
    {
      v13 = &gphNfc_DebugInfo_Prim;
    }

    v13[1] &= ~0x10u;
    sub_297E4E0B0(1, a1 + 2460, 3, 4u, "Response timer re-started");
    *(a1 + 992) = 1;
  }

LABEL_22:
  sub_297E4DFAC(3, a1, 3, 5u, "phNciNfc_StateIdle2Recv");
  return v5;
}