void sub_100301E10()
{
  if (sub_10000C240())
  {
    sub_10000AF54("Send set encryption on");
    v7 = sub_10000C050(0x37u);
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 136446210;
      v12 = sub_10000C0FC();
      _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, " %{public}s", buf, 0xCu);
    }
  }

  v8 = sub_1000D6178(0x10u, v0, v1, v2, v3, v4, v5, v6, qword_100B6B658);
  if (v8)
  {
    v9 = v8;
    if (sub_10000C240())
    {
      sub_10000AF54("OI_HCICMD_SetConnectionEncryption %!", v9, 1);
      v10 = sub_10000C050(0x37u);
      if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
      {
        sub_10080F604();
      }
    }

    sub_1002FD8A0(v9);
  }

  else
  {
    dword_100B6B690 = 2;
  }
}

void sub_100301F48()
{
  if (sub_10000C240())
  {
    sub_10000AF54("Send authentication request");
    v7 = sub_10000C050(0x37u);
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 136446210;
      v12 = sub_10000C0FC();
      _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, " %{public}s", buf, 0xCu);
    }
  }

  v8 = sub_1000D6178(0xFu, v0, v1, v2, v3, v4, v5, v6, qword_100B6B658);
  if (v8)
  {
    v9 = v8;
    if (sub_10000C240())
    {
      sub_10000AF54("OI_HCICMD_AuthenticationRequested %!", v9);
      v10 = sub_10000C050(0x37u);
      if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
      {
        sub_10080F604();
      }
    }

    sub_1002FD8A0(v9);
  }

  else
  {
    dword_100B6B690 = 1;
  }
}

void sub_10030207C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  if (a1)
  {
    if (sub_10000C240())
    {
      sub_10000AF54("bondingDisconnectCb %!", a1);
      v9 = sub_10000C050(0x37u);
      if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
      {
        sub_10080F604();
      }
    }
  }

  sub_1002FDA90(a1, a2, a3, a4, a5, a6, a7, a8);
}

void sub_1003020F4(uint64_t a1)
{
  if (dword_100B6B644 != 2)
  {
    sub_1000D660C();
  }

  if (!xmmword_100B6B668)
  {
    sub_1000D660C();
  }

  if (!HIDWORD(xmmword_100B6B668))
  {
    HIDWORD(xmmword_100B6B668) = a1;
  }

  sub_10023BD68();
  DWORD2(xmmword_100B6B668) = 6;
  v2.n128_f64[0] = sub_1002FD3CC(1);
  v3 = xmmword_100B6B668;
  if (xmmword_100B6B668)
  {
    v4 = HIDWORD(xmmword_100B6B668);

    v3(v4, v2);
  }

  else if (sub_10000C240())
  {
    sub_10000AF54("bondingFinishWriteAuthCB %!, %!", a1, 123);
    v5 = sub_10000C050(0x37u);
    if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
    {
      sub_10080F604();
    }
  }
}

__int16 *sub_1003021E8(unint64_t a1)
{
  word_100B6B6C8 = 30768;
  v1 = a0123456789abcd[(a1 >> 8) & 0xF];
  byte_100B6B6CA = a0123456789abcd[a1 >> 12];
  byte_100B6B6CB = v1;
  byte_100B6B6CC = a0123456789abcd[a1 >> 4];
  byte_100B6B6CD = a0123456789abcd[a1 & 0xF];
  byte_100B6B6CE = 0;
  return &word_100B6B6C8;
}

const char *sub_100302240(unsigned int *a1)
{
  if (!a1)
  {
    return "invalid";
  }

  if (*a1 == 0x10000000000001 && *(a1 + 1) == 0x20000EE02000080)
  {
    return "SyncMLServer";
  }

  if (*a1 == 0x10000000000002 && *(a1 + 1) == 0x20000EE02000080)
  {
    return "SyncMLClient";
  }

  if (*a1 == 0xFECACADE00000000 && *(a1 + 1) == 0xFECACADEFECACADELL)
  {
    return "D2D";
  }

  if (*a1 == 0xDEFACADE00000000 && *(a1 + 1) == 0xFECACADEAFDECADELL)
  {
    return "WiapGateWay";
  }

  if (*a1 == 0xDEFACADE00000000 && *(a1 + 1) == 0xFFCACADEAFDECADELL)
  {
    return "WiapSink";
  }

  if (*a1 == 0x5F41191DC327ED08 && *(a1 + 1) == 0x770A6A10A222F286)
  {
    return "WiapGateWay_v2";
  }

  if (*a1 == 0x5F41191DC327ED08 && *(a1 + 1) == 0x780A6A10A222F286)
  {
    return "WiapSink_v2";
  }

  if (*a1 == 0x14DAD0B74EC2172 && *(a1 + 1) == 0x2A72E02B7B99778FLL)
  {
    return "AapServer";
  }

  if (*a1 == 0xDE49F4074B7C6F4BLL && *(a1 + 1) == 0x298F720443ABB9B0)
  {
    return "AapService";
  }

  if (*a1 == 0x364B2E573619F31FLL && *(a1 + 1) == 0xF4A61A9B40B2BFA2)
  {
    return "AapClient";
  }

  if (*a1 == 0x2A43B1001E0DE104 && *(a1 + 1) == 0x41F93A98BADD64B7)
  {
    return "Magnet";
  }

  if (*a1 == 0xA24041CD484388ECLL && *(a1 + 1) == 0xD31FBF505D572797)
  {
    return "Carplay";
  }

  if (*a1 == 0x1C454DE166248D2DLL && *(a1 + 1) == 0x1A29EAAB0173BC88)
  {
    return "CarplayGateway";
  }

  if (*(a1 + 1) == 0x8000008000100000 && a1[3] == -80438433)
  {
    return sub_10030253C(*a1);
  }

  else
  {
    return "unknown";
  }
}

const char *sub_10030253C(unint64_t a1)
{
  if (a1 > 4352)
  {
    if (a1 <= 4607)
    {
      switch(a1)
      {
        case 4353:
          result = "SerialPort";
          break;
        case 4354:
          result = "LANAccessUsingPPP";
          break;
        case 4355:
          result = "DialupNetworking";
          break;
        case 4356:
          result = "IrMCSync";
          break;
        case 4357:
          result = "OBEXObjectPush";
          break;
        case 4358:
          result = "OBEXFileTransfer";
          break;
        case 4359:
          result = "IrMCSyncCommand";
          break;
        case 4360:
          result = "Headset";
          break;
        case 4361:
          result = "CordlessTelephony";
          break;
        case 4362:
          result = "AudioSource";
          break;
        case 4363:
          result = "AudioSink";
          break;
        case 4364:
          result = "AV_RemoteControlTarget";
          break;
        case 4365:
          result = "AdvancedAudioDistribution";
          break;
        case 4366:
          result = "AV_RemoteControl";
          break;
        case 4367:
          result = "AV_RemoteControlController";
          break;
        case 4368:
          result = "Intercom";
          break;
        case 4369:
          result = "Fax";
          break;
        case 4370:
          result = "HeadsetAudioGateway";
          break;
        case 4371:
          result = "WAP";
          break;
        case 4372:
          result = "WAP_CLIENT";
          break;
        case 4373:
          result = "PANU";
          break;
        case 4374:
          result = "NAP";
          break;
        case 4375:
          result = "GN";
          break;
        case 4376:
          result = "DirectPrinting";
          break;
        case 4377:
          result = "ReferencePrinting";
          break;
        case 4378:
          result = "Imaging";
          break;
        case 4379:
          result = "ImagingResponder";
          break;
        case 4380:
          result = "ImagingAutomaticArchive";
          break;
        case 4381:
          result = "ImagingReferencedObjects";
          break;
        case 4382:
          result = "Handsfree";
          break;
        case 4383:
          result = "HandsfreeAudioGateway";
          break;
        case 4384:
          result = "DirectPrintingReferenceObjectsService";
          break;
        case 4385:
          result = "ReflectedUI";
          break;
        case 4386:
          result = "BasicPrinting";
          break;
        case 4387:
          result = "PrintingStatus";
          break;
        case 4388:
          result = "HumanInterfaceDeviceService";
          break;
        case 4389:
          result = "HardcopyCableReplacement";
          break;
        case 4390:
          result = "HCR_Print";
          break;
        case 4391:
          result = "HCR_Scan";
          break;
        case 4392:
          result = "Common_ISDN_Access";
          break;
        case 4393:
          result = "VideoConferencingGW";
          break;
        case 4394:
          result = "UID_MT";
          break;
        case 4395:
          result = "UID_TA";
          break;
        case 4396:
          result = "Audio_Video";
          break;
        case 4397:
          result = "SIM_Access";
          break;
        case 4398:
          result = "PhonebookAccessClient";
          break;
        case 4399:
          result = "PhonebookAccessServer";
          break;
        case 4400:
          result = "PhonebookAccess";
          break;
        case 4401:
          result = "Headset_HS";
          break;
        case 4402:
          result = "Message_Access_Server";
          break;
        case 4403:
          result = "OI_UUID_Message_Notification_Server";
          break;
        case 4404:
          result = "OI_UUID_Message_Access_Profile";
          break;
        default:
          goto LABEL_122;
      }

      return result;
    }

    if (a1 <= 4864)
    {
      if (a1 <= 4611)
      {
        if (a1 > 4609)
        {
          if (a1 == 4610)
          {
            return "GenericFileTransfer";
          }

          else
          {
            return "GenericAudio";
          }
        }

        else if (a1 == 4608)
        {
          return "PnPInformation";
        }

        else
        {
          return "GenericNetworking";
        }
      }

      if (a1 <= 4613)
      {
        if (a1 == 4612)
        {
          return "GenericTelephony";
        }

        else
        {
          return "UPNP_Service";
        }
      }

      if (a1 == 4614)
      {
        return "UPNP_IP_Service";
      }

      if (a1 == 4864)
      {
        return "ESDP_UPNP_IP_PAN";
      }
    }

    else
    {
      if (a1 <= 4868)
      {
        if (a1 > 4866)
        {
          if (a1 == 4867)
          {
            return "VideoSource";
          }

          else
          {
            return "VideoSink";
          }
        }

        else if (a1 == 4865)
        {
          return "ESDP_UPNP_IP_LAP";
        }

        else
        {
          return "ESDP_UPNP_IP_L2CAP";
        }
      }

      if (a1 <= 5120)
      {
        if (a1 == 4869)
        {
          return "VideoDistribution";
        }

        if (a1 == 5120)
        {
          return "Health_Device_Profile";
        }
      }

      else
      {
        switch(a1)
        {
          case 0x1401:
            return "Health_Device_Profile_Source";
          case 0x1402:
            return "Health_Device_Profile_Sink";
          case 0x1801:
            return "GATT";
        }
      }
    }

LABEL_122:
    result = &word_100B6B6C8;
    word_100B6B6C8 = 30768;
    byte_100B6B6CA = a0123456789abcd[a1 >> 12];
    byte_100B6B6CB = a0123456789abcd[(a1 >> 8) & 0xF];
    byte_100B6B6CC = a0123456789abcd[a1 >> 4];
    byte_100B6B6CD = a0123456789abcd[a1 & 0xF];
    byte_100B6B6CE = 0;
    return result;
  }

  if (a1 > 255)
  {
    if (a1 > 4096)
    {
      if (a1 == 4097)
      {
        return "BrowseGroupDescriptorServiceClassID";
      }

      if (a1 == 4098)
      {
        return "PublicBrowseGroup";
      }
    }

    else
    {
      if (a1 == 256)
      {
        return "L2CAP";
      }

      if (a1 == 4096)
      {
        return "ServiceDiscoveryServerServiceClassID";
      }
    }

    goto LABEL_122;
  }

  result = "NULL";
  switch(a1)
  {
    case 0:
      return result;
    case 1:
      result = "SDP";
      break;
    case 2:
      result = "UDP";
      break;
    case 3:
      result = "RFCOMM";
      break;
    case 4:
      result = "TCP";
      break;
    case 5:
      result = "TCS_BIN";
      break;
    case 6:
      result = "TCS_AT";
      break;
    case 8:
      result = "OBEX";
      break;
    case 9:
      result = "IP";
      break;
    case 10:
      result = "FTP";
      break;
    case 12:
      result = "HTTP";
      break;
    case 14:
      result = "WSP";
      break;
    case 15:
      result = "BNEP";
      break;
    case 16:
      result = "UPNP";
      break;
    case 17:
      result = "HIDP";
      break;
    case 18:
      result = "HardcopyControlChannel";
      break;
    case 20:
      result = "HardcopyDataChannel";
      break;
    case 22:
      result = "HardcopyNotification";
      break;
    case 23:
      result = "AVCTP";
      break;
    case 25:
      result = "AVDTP";
      break;
    default:
      goto LABEL_122;
  }

  return result;
}

void sub_100302BB4(uint64_t a1)
{
  v2 = a1 + 16;
  v1 = *(a1 + 16);
  if (v1)
  {
    do
    {
      *(a1 + 16) = v1[1];
      v4 = *(a1 + 8);
      if (v4)
      {
        v4(*v1);
      }

      sub_10000C1E8(v1);
      v1 = *v2;
    }

    while (*v2);
  }

  *v2 = 0;
  *(v2 + 8) = 0;
  *(v2 + 16) = 0;
}

void *sub_100302C18(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = sub_1000BBD40(a1, a2, a3);
  if (result)
  {
    v5 = *(a1 + 24);
    result[1] = *(a1 + 16);
    *(a1 + 16) = result;
    if (!v5)
    {
      *(a1 + 24) = result;
    }

    ++*(a1 + 32);
  }

  return result;
}

uint64_t sub_100302C60(uint64_t a1, int a2)
{
  v2 = (a1 + 16);
  if (!*(a1 + 16))
  {
    return 0;
  }

  v4 = *(a1 + 24);
  v5 = *v4;
  if (a2)
  {
    v6 = *(a1 + 8);
    if (v6)
    {
      v6(*v4);
      v4 = *(a1 + 24);
    }
  }

  sub_10000C1E8(v4);
  v8 = *(a1 + 16);
  v7 = *(a1 + 24);
  if (v8 == v7)
  {
    v9 = 0;
  }

  else
  {
    do
    {
      v9 = v8;
      v8 = *(v8 + 8);
    }

    while (v8 != v7);
    v2 = (v9 + 8);
  }

  *v2 = 0;
  *(a1 + 24) = v9;
  --*(a1 + 32);
  return v5;
}

void sub_100302D00(void *a1, void *ptr, int a3)
{
  v4 = a1[2];
  if (v4 == ptr)
  {

    sub_100302BB4(a1);
  }

  else
  {
    v6 = ptr;
    do
    {
      v7 = v4;
      v4 = v4[1];
      if (v4)
      {
        v8 = v4 == ptr;
      }

      else
      {
        v8 = 1;
      }
    }

    while (!v8);
    if (v4)
    {
      v7[1] = 0;
      a1[3] = v7;
      if (ptr)
      {
        do
        {
          v9 = v6;
          v6 = v6[1];
          if (a3)
          {
            v10 = a1[1];
            if (v10)
            {
              v10(*v9);
            }
          }

          sub_10000C1E8(v9);
        }

        while (v6);
      }
    }
  }
}

double sub_100302DAC(uint64_t a1)
{
  result = -3.59869635e230;
  *a1 = xmmword_1008A53A0;
  *(a1 + 16) = 0;
  return result;
}

void *sub_100302DC0(uint64_t a1, __int128 *__src, size_t a3)
{
  v3 = a3;
  v4 = __src;
  v6 = *(a1 + 16);
  *(a1 + 16) = v6 + a3;
  if (__CFADD__(v6, a3))
  {
    ++*(a1 + 20);
  }

  v7 = v6 & 0x3F;
  v8 = 64 - v7;
  if (64 - v7 <= a3)
  {
    memmove((a1 - v8 + 88), __src, v8);
    v10 = 0;
    do
    {
      v10 += 4;
    }

    while (v10 != 64);
    sub_100302EE4(a1, (a1 + 24));
    v4 = (v4 + v8);
    v11 = v3 - v8;
    if (v11 >= 0x40u)
    {
      do
      {
        v12 = 0;
        v13 = *v4;
        v14 = v4[1];
        v15 = v4[2];
        *(a1 + 72) = v4[3];
        *(a1 + 56) = v15;
        *(a1 + 40) = v14;
        *(a1 + 24) = v13;
        do
        {
          v12 += 4;
        }

        while (v12 != 64);
        sub_100302EE4(a1, (a1 + 24));
        v4 += 4;
        v11 -= 64;
      }

      while (v11 > 0x3Fu);
    }

    v9 = (a1 + 24);
    a3 = v11;
  }

  else
  {
    a3 = a3;
    v9 = (a1 - v8 + 88);
  }

  return memmove(v9, v4, a3);
}

_DWORD *sub_100302EE4(_DWORD *result, int *a2)
{
  v2 = result[1];
  v4 = result[2];
  v3 = result[3];
  v6 = *a2;
  v5 = a2[1];
  HIDWORD(v7) = *result + *a2 - 680876936 + (v4 & v2 | v3 & ~v2);
  LODWORD(v7) = HIDWORD(v7);
  v8 = (v7 >> 25) + v2;
  HIDWORD(v7) = v3 + v5 - 389564586 + (v2 & v8 | v4 & ~v8);
  LODWORD(v7) = HIDWORD(v7);
  v9 = (v7 >> 20) + v8;
  v10 = a2[2];
  v11 = a2[3];
  HIDWORD(v7) = v4 + v10 + 606105819 + (v8 & v9 | v2 & ~v9);
  LODWORD(v7) = HIDWORD(v7);
  v12 = (v7 >> 15) + v9;
  HIDWORD(v7) = v2 + v11 - 1044525330 + (v9 & v12 | v8 & ~v12);
  LODWORD(v7) = HIDWORD(v7);
  v13 = (v7 >> 10) + v12;
  v15 = a2[4];
  v14 = a2[5];
  HIDWORD(v7) = v15 + v8 - 176418897 + (v12 & v13 | v9 & ~v13);
  LODWORD(v7) = HIDWORD(v7);
  v16 = (v7 >> 25) + v13;
  HIDWORD(v7) = v14 + v9 + 1200080426 + (v13 & v16 | v12 & ~v16);
  LODWORD(v7) = HIDWORD(v7);
  v17 = (v7 >> 20) + v16;
  v18 = a2[6];
  v19 = a2[7];
  HIDWORD(v7) = v18 + v12 - 1473231341 + (v16 & v17 | v13 & ~v17);
  LODWORD(v7) = HIDWORD(v7);
  v20 = (v7 >> 15) + v17;
  HIDWORD(v7) = v19 + v13 - 45705983 + (v17 & v20 | v16 & ~v20);
  LODWORD(v7) = HIDWORD(v7);
  v21 = (v7 >> 10) + v20;
  v22 = a2[8];
  v23 = a2[9];
  HIDWORD(v7) = v22 + v16 + 1770035416 + (v20 & v21 | v17 & ~v21);
  LODWORD(v7) = HIDWORD(v7);
  v24 = (v7 >> 25) + v21;
  HIDWORD(v7) = v23 + v17 - 1958414417 + (v21 & v24 | v20 & ~v24);
  LODWORD(v7) = HIDWORD(v7);
  v25 = (v7 >> 20) + v24;
  v27 = a2[10];
  v26 = a2[11];
  HIDWORD(v7) = v27 + v20 - 42063 + (v24 & v25 | v21 & ~v25);
  LODWORD(v7) = HIDWORD(v7);
  v28 = (v7 >> 15) + v25;
  HIDWORD(v7) = v26 + v21 - 1990404162 + (v25 & v28 | v24 & ~v28);
  LODWORD(v7) = HIDWORD(v7);
  v29 = (v7 >> 10) + v28;
  v31 = a2[12];
  v30 = a2[13];
  HIDWORD(v7) = v31 + v24 + 1804603682 + (v28 & v29 | v25 & ~v29);
  LODWORD(v7) = HIDWORD(v7);
  v32 = (v7 >> 25) + v29;
  HIDWORD(v7) = v30 + v25 - 40341101 + (v29 & v32 | v28 & ~v32);
  LODWORD(v7) = HIDWORD(v7);
  v33 = (v7 >> 20) + v32;
  v35 = a2[14];
  v34 = a2[15];
  HIDWORD(v7) = v35 + v28 - 1502002290 + (v32 & v33 | v29 & ~v33);
  LODWORD(v7) = HIDWORD(v7);
  v36 = (v7 >> 15) + v33;
  HIDWORD(v7) = v34 + v29 + 1236535329 + (v33 & v36 | v32 & ~v36);
  LODWORD(v7) = HIDWORD(v7);
  v37 = (v7 >> 10) + v36;
  HIDWORD(v7) = v5 + v32 - 165796510 + (v37 & v33 | v36 & ~v33);
  LODWORD(v7) = HIDWORD(v7);
  v38 = (v7 >> 27) + v37;
  HIDWORD(v7) = v18 + v33 - 1069501632 + (v38 & v36 | v37 & ~v36);
  LODWORD(v7) = HIDWORD(v7);
  v39 = (v7 >> 23) + v38;
  HIDWORD(v7) = v26 + v36 + 643717713 + (v39 & v37 | v38 & ~v37);
  LODWORD(v7) = HIDWORD(v7);
  v40 = (v7 >> 18) + v39;
  HIDWORD(v7) = v6 + v37 - 373897302 + (v40 & v38 | v39 & ~v38);
  LODWORD(v7) = HIDWORD(v7);
  v41 = (v7 >> 12) + v40;
  HIDWORD(v7) = v14 + v38 - 701558691 + (v41 & v39 | v40 & ~v39);
  LODWORD(v7) = HIDWORD(v7);
  v42 = (v7 >> 27) + v41;
  HIDWORD(v7) = v27 + v39 + 38016083 + (v42 & v40 | v41 & ~v40);
  LODWORD(v7) = HIDWORD(v7);
  v43 = (v7 >> 23) + v42;
  HIDWORD(v7) = v34 + v40 - 660478335 + (v43 & v41 | v42 & ~v41);
  LODWORD(v7) = HIDWORD(v7);
  v44 = (v7 >> 18) + v43;
  HIDWORD(v7) = v15 + v41 - 405537848 + (v44 & v42 | v43 & ~v42);
  LODWORD(v7) = HIDWORD(v7);
  v45 = (v7 >> 12) + v44;
  HIDWORD(v7) = v23 + v42 + 568446438 + (v45 & v43 | v44 & ~v43);
  LODWORD(v7) = HIDWORD(v7);
  v46 = (v7 >> 27) + v45;
  HIDWORD(v7) = v35 + v43 - 1019803690 + (v46 & v44 | v45 & ~v44);
  LODWORD(v7) = HIDWORD(v7);
  v47 = (v7 >> 23) + v46;
  HIDWORD(v7) = v11 + v44 - 187363961 + (v47 & v45 | v46 & ~v45);
  LODWORD(v7) = HIDWORD(v7);
  v48 = (v7 >> 18) + v47;
  HIDWORD(v7) = v22 + v45 + 1163531501 + (v48 & v46 | v47 & ~v46);
  LODWORD(v7) = HIDWORD(v7);
  v49 = (v7 >> 12) + v48;
  HIDWORD(v7) = v30 + v46 - 1444681467 + (v49 & v47 | v48 & ~v47);
  LODWORD(v7) = HIDWORD(v7);
  v50 = (v7 >> 27) + v49;
  HIDWORD(v7) = v10 + v47 - 51403784 + (v50 & v48 | v49 & ~v48);
  LODWORD(v7) = HIDWORD(v7);
  v51 = (v7 >> 23) + v50;
  HIDWORD(v7) = v19 + v48 + 1735328473 + (v51 & v49 | v50 & ~v49);
  LODWORD(v7) = HIDWORD(v7);
  v52 = (v7 >> 18) + v51;
  HIDWORD(v7) = v31 + v49 - 1926607734 + ((v52 ^ v51) & v50 ^ v51);
  LODWORD(v7) = HIDWORD(v7);
  v53 = (v7 >> 12) + v52;
  HIDWORD(v7) = v14 + v50 - 378558 + (v52 ^ v51 ^ v53);
  LODWORD(v7) = HIDWORD(v7);
  v54 = (v7 >> 28) + v53;
  HIDWORD(v7) = v22 + v51 - 2022574463 + (v53 ^ v52 ^ v54);
  LODWORD(v7) = HIDWORD(v7);
  v55 = (v7 >> 21) + v54;
  HIDWORD(v7) = v26 + v52 + 1839030562 + (v54 ^ v53 ^ v55);
  LODWORD(v7) = HIDWORD(v7);
  v56 = (v7 >> 16) + v55;
  HIDWORD(v7) = v35 + v53 - 35309556 + (v55 ^ v54 ^ v56);
  LODWORD(v7) = HIDWORD(v7);
  v57 = (v7 >> 9) + v56;
  HIDWORD(v7) = v5 + v54 - 1530992060 + (v56 ^ v55 ^ v57);
  LODWORD(v7) = HIDWORD(v7);
  v58 = (v7 >> 28) + v57;
  HIDWORD(v7) = v15 + v55 + 1272893353 + (v57 ^ v56 ^ v58);
  LODWORD(v7) = HIDWORD(v7);
  v59 = (v7 >> 21) + v58;
  HIDWORD(v7) = v19 + v56 - 155497632 + (v58 ^ v57 ^ v59);
  LODWORD(v7) = HIDWORD(v7);
  v60 = (v7 >> 16) + v59;
  HIDWORD(v7) = v27 + v57 - 1094730640 + (v59 ^ v58 ^ v60);
  LODWORD(v7) = HIDWORD(v7);
  v61 = (v7 >> 9) + v60;
  HIDWORD(v7) = v30 + v58 + 681279174 + (v60 ^ v59 ^ v61);
  LODWORD(v7) = HIDWORD(v7);
  v62 = (v7 >> 28) + v61;
  HIDWORD(v7) = v6 + v59 - 358537222 + (v61 ^ v60 ^ v62);
  LODWORD(v7) = HIDWORD(v7);
  v63 = (v7 >> 21) + v62;
  HIDWORD(v7) = v11 + v60 - 722521979 + (v62 ^ v61 ^ v63);
  LODWORD(v7) = HIDWORD(v7);
  v64 = (v7 >> 16) + v63;
  HIDWORD(v7) = v18 + v61 + 76029189 + (v63 ^ v62 ^ v64);
  LODWORD(v7) = HIDWORD(v7);
  v65 = (v7 >> 9) + v64;
  HIDWORD(v7) = v23 + v62 - 640364487 + (v64 ^ v63 ^ v65);
  LODWORD(v7) = HIDWORD(v7);
  v66 = (v7 >> 28) + v65;
  HIDWORD(v7) = v31 + v63 - 421815835 + (v65 ^ v64 ^ v66);
  LODWORD(v7) = HIDWORD(v7);
  v67 = (v7 >> 21) + v66;
  HIDWORD(v7) = v34 + v64 + 530742520 + (v66 ^ v65 ^ v67);
  LODWORD(v7) = HIDWORD(v7);
  v68 = (v7 >> 16) + v67;
  HIDWORD(v7) = v10 + v65 - 995338651 + (v67 ^ v66 ^ v68);
  LODWORD(v7) = HIDWORD(v7);
  v69 = (v7 >> 9) + v68;
  HIDWORD(v7) = v6 + v66 - 198630844 + ((v69 | ~v67) ^ v68);
  LODWORD(v7) = HIDWORD(v7);
  v70 = (v7 >> 26) + v69;
  HIDWORD(v7) = v19 + v67 + 1126891415 + ((v70 | ~v68) ^ v69);
  LODWORD(v7) = HIDWORD(v7);
  v71 = (v7 >> 22) + v70;
  HIDWORD(v7) = v35 + v68 - 1416354905 + ((v71 | ~v69) ^ v70);
  LODWORD(v7) = HIDWORD(v7);
  v72 = (v7 >> 17) + v71;
  HIDWORD(v7) = v14 + v69 - 57434055 + ((v72 | ~v70) ^ v71);
  LODWORD(v7) = HIDWORD(v7);
  v73 = (v7 >> 11) + v72;
  HIDWORD(v7) = v31 + v70 + 1700485571 + ((v73 | ~v71) ^ v72);
  LODWORD(v7) = HIDWORD(v7);
  v74 = (v7 >> 26) + v73;
  HIDWORD(v7) = v11 + v71 - 1894986606 + ((v74 | ~v72) ^ v73);
  LODWORD(v7) = HIDWORD(v7);
  v75 = (v7 >> 22) + v74;
  HIDWORD(v7) = v27 + v72 - 1051523 + ((v75 | ~v73) ^ v74);
  LODWORD(v7) = HIDWORD(v7);
  v76 = (v7 >> 17) + v75;
  HIDWORD(v7) = v5 + v73 - 2054922799 + ((v76 | ~v74) ^ v75);
  LODWORD(v7) = HIDWORD(v7);
  v77 = (v7 >> 11) + v76;
  HIDWORD(v7) = v22 + v74 + 1873313359 + ((v77 | ~v75) ^ v76);
  LODWORD(v7) = HIDWORD(v7);
  v78 = (v7 >> 26) + v77;
  HIDWORD(v7) = v34 + v75 - 30611744 + ((v78 | ~v76) ^ v77);
  LODWORD(v7) = HIDWORD(v7);
  v79 = (v7 >> 22) + v78;
  HIDWORD(v7) = v18 + v76 - 1560198380 + ((v79 | ~v77) ^ v78);
  LODWORD(v7) = HIDWORD(v7);
  v80 = (v7 >> 17) + v79;
  HIDWORD(v7) = v30 + v77 + 1309151649 + ((v80 | ~v78) ^ v79);
  LODWORD(v7) = HIDWORD(v7);
  v81 = (v7 >> 11) + v80;
  HIDWORD(v7) = v15 + v78 - 145523070 + ((v81 | ~v79) ^ v80);
  LODWORD(v7) = HIDWORD(v7);
  v82 = (v7 >> 26) + v81;
  HIDWORD(v7) = v26 + v79 - 1120210379 + ((v82 | ~v80) ^ v81);
  LODWORD(v7) = HIDWORD(v7);
  v83 = (v7 >> 22) + v82;
  HIDWORD(v7) = v10 + v80 + 718787259 + ((v83 | ~v81) ^ v82);
  LODWORD(v7) = HIDWORD(v7);
  v84 = (v7 >> 17) + v83;
  HIDWORD(v7) = v23 + v81 - 343485551 + ((v84 | ~v82) ^ v83);
  LODWORD(v7) = HIDWORD(v7);
  *result += v82;
  result[1] = v84 + v2 + (v7 >> 11);
  result[2] = v84 + v4;
  result[3] = v83 + v3;
  return result;
}

double sub_1003038C0(_OWORD *a1, uint64_t a2)
{
  v4 = *(a2 + 16) & 0x3F;
  v5 = (a2 + 24);
  v6 = (a2 + 24 + v4);
  *v6 = 0x80;
  v7 = (v6 + 1);
  if (v4 < 0x38)
  {
    v9 = 55 - v4;
  }

  else
  {
    bzero(v7, v4 ^ 0x3F);
    v8 = 0;
    do
    {
      v8 += 4;
    }

    while (v8 != 64);
    sub_100302EE4(a2, v5);
    v9 = 56;
    v7 = v5;
  }

  bzero(v7, (v9 + 8));
  v10 = 0;
  do
  {
    v10 += 4;
  }

  while (v10 != 56);
  *(a2 + 80) = 8 * *(a2 + 16);
  sub_100302EE4(a2, v5);
  v11 = 0;
  do
  {
    v11 += 4;
  }

  while (v11 != 16);
  *a1 = *a2;
  *(a2 + 80) = 0;
  result = 0.0;
  *(a2 + 48) = 0u;
  *(a2 + 64) = 0u;
  *(a2 + 16) = 0u;
  *(a2 + 32) = 0u;
  *a2 = 0u;
  return result;
}

void *sub_1003039A4(size_t size)
{
  v1 = size;
  result = sub_100007618(size, 0x67EAE618uLL);
  if (result)
  {
    v3 = result;
    result = sub_100007618(0x10uLL, 0x1010040FDD9F14CuLL);
    if (result)
    {
      if (!v1)
      {
        sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/corestack/support/oi_bytestream.c", 25, "(len) > 0");
      }

      *(result + 15) = 0;
      *result = v3;
      *(result + 4) = v1;
      *(result + 5) = v1;
    }

    else
    {
      sub_10000C1E8(v3);
      return 0;
    }
  }

  return result;
}

void sub_100303A34(void **a1)
{
  if (!a1)
  {
    sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/corestack/support/oi_bytestream.c", 35, "bs");
  }

  sub_10000C1E8(*a1);

  sub_10000C1E8(a1);
}

void sub_100303A8C(const char *a1, int a2, const char *a3)
{
  if (sub_10000C240())
  {
    sub_10000AF54("WARNING!!! ByteStream_NumReadBytesAvail fault at File:%s, Line:%d, Func:%s", a1, a2, a3);
    v6 = sub_10000C050(0x39u);
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 136446210;
      v8 = sub_10000C0FC();
      _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, " %{public}s", buf, 0xCu);
    }
  }
}

uint64_t sub_100303B64(uint64_t *a1, unsigned int a2, uint64_t a3, unsigned int a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  if (!a1)
  {
    sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/corestack/support/oi_bytestream.c", 142, "bs");
  }

  if (!*a1)
  {
    sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/corestack/support/oi_bytestream.c", 143, "ByteStream_GetDataPointer(*bs)");
  }

  v75 = &a9;
  if (a4)
  {
    v10 = a3;
    v12 = 0;
    v13 = a4;
    v14 = "OI_STATUS ByteStream_Parse(OI_BYTE_STREAM *, int, const char *, unsigned int, ...)";
    while (1)
    {
      v15 = *(v10 + v12);
      if (v15 > 9)
      {
        break;
      }

      if (*(v10 + v12) > 3u)
      {
        if (v15 - 4 >= 2)
        {
          if (v15 - 6 >= 2)
          {
            goto LABEL_118;
          }

LABEL_28:
          v21 = v75++;
          if (*(a1 + 14) != 1)
          {
            v69 = "(*bs).__RWFlag == BYTESTREAM_READ";
LABEL_107:
            sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/corestack/support/oi_bytestream.c", 168, v69);
          }

          if (a2 >= 2)
          {
            v69 = "((byteorder) == OI_BIG_ENDIAN_BYTE_ORDER) || ((byteorder) == OI_LITTLE_ENDIAN_BYTE_ORDER)";
            goto LABEL_107;
          }

          if (*(a1 + 15))
          {
            v19 = 168;
            goto LABEL_90;
          }

          v24 = *(a1 + 6);
          if (*(a1 + 5) - v24 >= 4)
          {
            v25 = *a1;
            if (a2)
            {
              v26 = *(v25 + v24);
            }

            else
            {
              v26 = bswap32(*(v25 + v24));
            }

            **v21 = v26;
            v31 = v24 + 4;
            goto LABEL_98;
          }

LABEL_91:
          *(a1 + 15) = 1;
          goto LABEL_92;
        }

        v23 = v75++;
        if (*(a1 + 14) != 1)
        {
          v71 = "(*bs).__RWFlag == BYTESTREAM_READ";
          goto LABEL_110;
        }

        if (a2 >= 2)
        {
          v71 = "((byteorder) == OI_BIG_ENDIAN_BYTE_ORDER) || ((byteorder) == OI_LITTLE_ENDIAN_BYTE_ORDER)";
LABEL_110:
          sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/corestack/support/oi_bytestream.c", 162, v71);
        }

        if (!*(a1 + 15))
        {
          v46 = *(a1 + 6);
          if (*(a1 + 5) - v46 >= 3)
          {
            v47 = (*a1 + v46);
            if (a2)
            {
              v49 = *v47++;
              v48 = v49;
            }

            else
            {
              v48 = __rev16(*(v47 + 1));
            }

            **v23 = v48 | (*v47 << 16);
            v31 = v46 + 3;
            goto LABEL_98;
          }

          goto LABEL_91;
        }

        v19 = 162;
        goto LABEL_90;
      }

      v16 = v15 >= 2;
      v17 = v15 - 2;
      if (v16)
      {
        if (v17 >= 2)
        {
          goto LABEL_118;
        }

        goto LABEL_15;
      }

      v22 = v75++;
      if (*(a1 + 14) != 1)
      {
        sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/corestack/support/oi_bytestream.c", 151, "(*bs).__RWFlag == BYTESTREAM_READ");
      }

      if (*(a1 + 15))
      {
        v19 = 151;
        goto LABEL_90;
      }

      v43 = *(a1 + 6);
      if (*(a1 + 5) <= v43)
      {
        goto LABEL_91;
      }

      v44 = *v22;
      v45 = *a1;
      *(a1 + 6) = v43 + 1;
      *v44 = *(v45 + v43);
LABEL_92:
      if (++v12 == v13)
      {
        goto LABEL_99;
      }
    }

    if (*(v10 + v12) > 0xCu)
    {
      if (v15 == 13)
      {
        goto LABEL_28;
      }

      if (v15 != 14)
      {
        if (v15 != 16)
        {
LABEL_118:
          sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/corestack/support/oi_bytestream.c", 192, "FALSE");
        }

        v20 = v75++;
        if (*(a1 + 14) != 1)
        {
          sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/corestack/support/oi_bytestream.c", 188, "(*bs).__RWFlag == BYTESTREAM_READ");
        }

        if (*(a1 + 15))
        {
          v19 = 188;
          goto LABEL_90;
        }

        v60 = *(a1 + 6);
        if (*(a1 + 5) - v60 >= 16)
        {
          v61 = 0;
          v62 = *v20;
          v63 = *a1 + v60;
          do
          {
            *(v62 + v61) = *(v63 + v61);
            ++v61;
          }

          while (v61 != 16);
          v31 = *(a1 + 6) + 16;
LABEL_98:
          *(a1 + 6) = v31;
          goto LABEL_92;
        }

        goto LABEL_91;
      }

      v41 = v75++;
      if (*(a1 + 14) != 1)
      {
        sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/corestack/support/oi_bytestream.c", 182, "(*bs).__RWFlag == BYTESTREAM_READ");
      }

      if (*(a1 + 15))
      {
        sub_100303A8C("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/corestack/support/oi_bytestream.c", 182, v14);
        v42 = *(a1 + 14);
        *(a1 + 15) = 1;
        if (v42 != 1)
        {
          sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/corestack/support/oi_bytestream.c", 183, "(*bs).__RWFlag == BYTESTREAM_READ");
        }
      }

      else
      {
        v53 = *(a1 + 6);
        if (*(a1 + 5) - v53 > 3)
        {
          v54 = *v41;
          v55 = *a1;
          *v54 = bswap32(*(*a1 + v53));
          v56 = v53 + 4;
          *(a1 + 6) = v53 + 4;
          if (*(a1 + 5) - (v53 + 4) >= 0xC)
          {
            v57 = 0;
            v58 = v55 + v56;
            v59 = v54 + 1;
            do
            {
              *(v59 + v57) = *(v58 + v57);
              ++v57;
            }

            while (v57 != 12);
            v31 = *(a1 + 6) + 12;
            goto LABEL_98;
          }

          goto LABEL_91;
        }

        *(a1 + 15) = 1;
      }

      v19 = 183;
    }

    else
    {
      if (v15 == 10)
      {
        v32 = v75;
        v33 = *v75;
        v75 += 2;
        if (*(a1 + 14) != 1)
        {
          sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/corestack/support/oi_bytestream.c", 174, "(*bs).__RWFlag == BYTESTREAM_READ");
        }

        v34 = v14;
        v35 = v32[1];
        v73 = *a1;
        v36 = *(a1 + 6);
        v37 = *v35;
        if (*(a1 + 15))
        {
          sub_100303A8C("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/corestack/support/oi_bytestream.c", 174, v34);
          v38 = 0;
        }

        else
        {
          v38 = *(a1 + 5) - v36;
        }

        v39 = *v35;
        if (v38 >= v39)
        {
          if (v37)
          {
            v50 = (v73 + v36);
            v51 = &v33[v37];
            do
            {
              v52 = *v50++;
              *v33++ = v52;
            }

            while (v33 < v51);
            LOWORD(v39) = *v35;
          }

          *(a1 + 6) += v39;
        }

        else
        {
          *(a1 + 15) = 1;
        }

        v14 = v34;
        v10 = a3;
        goto LABEL_92;
      }

      if (v15 != 11)
      {
        if (v15 != 12)
        {
          goto LABEL_118;
        }

LABEL_15:
        v18 = v75++;
        if (*(a1 + 14) != 1)
        {
          v70 = "(*bs).__RWFlag == BYTESTREAM_READ";
          goto LABEL_105;
        }

        if (a2 >= 2)
        {
          v70 = "((byteorder) == OI_BIG_ENDIAN_BYTE_ORDER) || ((byteorder) == OI_LITTLE_ENDIAN_BYTE_ORDER)";
LABEL_105:
          sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/corestack/support/oi_bytestream.c", 157, v70);
        }

        if (*(a1 + 15))
        {
          v19 = 157;
          goto LABEL_90;
        }

        v27 = *(a1 + 6);
        if (*(a1 + 5) - v27 >= 2)
        {
          v28 = *v18;
          v29 = (*a1 + v27);
          if (a2)
          {
            v30 = v29 + 1;
          }

          else
          {
            v30 = v29;
          }

          if (!a2)
          {
            ++v29;
          }

          *v28 = *v29 | (*v30 << 8);
          v31 = *(a1 + 6) + 2;
          goto LABEL_98;
        }

        goto LABEL_91;
      }

      v40 = v75++;
      if (*(a1 + 14) != 1)
      {
        v72 = "(*bs).__RWFlag == BYTESTREAM_READ";
        goto LABEL_116;
      }

      if (a2 >= 2)
      {
        v72 = "((byteorder) == OI_BIG_ENDIAN_BYTE_ORDER) || ((byteorder) == OI_LITTLE_ENDIAN_BYTE_ORDER)";
LABEL_116:
        sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/corestack/support/oi_bytestream.c", 178, v72);
      }

      if (!*(a1 + 15))
      {
        v64 = *(a1 + 6);
        if (*(a1 + 5) - v64 >= 6)
        {
          v65 = *v40;
          v66 = *a1 + v64;
          if (a2)
          {
            sub_1000075EC(v65, v66, 6uLL);
          }

          else
          {
            v67 = *v66;
            *(v65 + 4) = *(v66 + 4);
            *v65 = v67;
          }

          v31 = *(a1 + 6) + 6;
          goto LABEL_98;
        }

        goto LABEL_91;
      }

      v19 = 178;
    }

LABEL_90:
    sub_100303A8C("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/corestack/support/oi_bytestream.c", v19, v14);
    goto LABEL_91;
  }

LABEL_99:
  if (*(a1 + 15))
  {
    return 1031;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_10030423C(void *a1)
{
  if (!dword_100BCE2D4)
  {
    v2 = xmmword_1008A49A0;
    v3 = &qword_100B6B6E0;
    v4 = 6;
    v5 = vdupq_n_s64(5uLL);
    v6 = vdupq_n_s64(2uLL);
    do
    {
      if (vmovn_s64(vcgtq_u64(v5, v2)).u8[0])
      {
        *(v3 - 2) = 0;
      }

      if (vmovn_s64(vcgtq_u64(vdupq_n_s64(5uLL), *&v2)).i32[1])
      {
        *v3 = 0;
      }

      v2 = vaddq_s64(v2, v6);
      v3 += 4;
      v4 -= 2;
    }

    while (v4);
    dword_100BCE2D4 = 1;
  }

  if (!*a1)
  {
    sub_1000D660C();
  }

  if (!a1[1])
  {
    sub_1000D660C();
  }

  if (sub_10028A978())
  {
    (*a1)(0);
    return 0;
  }

  else
  {
    v8 = 0;
    v9 = -5;
    v10 = &qword_100B6B710;
    do
    {
      v11 = v10;
      if (*v10)
      {
        v11 = v8;
        if (*v10 == a1)
        {
          sub_1000D660C();
          return 105;
        }
      }

      v10 -= 2;
      v8 = v11;
    }

    while (!__CFADD__(v9++, 1));
    if (v11)
    {
      *v11 = a1;
      v11[1] = 0x100000001;
      v13 = a1[1];
      if (v13)
      {
        *(v11 + 2) = 2;
        v13(v11);
        if (*(v11 + 3) != 2)
        {
          result = 0;
          *(v11 + 3) = 3;
          return result;
        }
      }

      else
      {
        *(v11 + 3) = 2;
      }

      if (sub_10000C240())
      {
        sub_10000AF54("Command chain initiation failed in first command");
        v14 = sub_10000C050(0x29u);
        if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
        {
          sub_100815DE4(v14);
        }
      }

      *v11 = 0;
      *(v11 + 3) = 0;
      return 1023;
    }

    else
    {
      sub_1000D660C();
      return 104;
    }
  }
}

void sub_1003043EC(void (**a1)(void))
{
  if (!dword_100BCE2D4)
  {
    sub_1000D660C();
  }

  v2 = &dword_100B6B6DC;
  v3 = 5;
  while (1)
  {
    v4 = *(v2 - 3);
    if (v4 == a1)
    {
      break;
    }

    v2 += 4;
    if (!--v3)
    {

      sub_1000D660C();
      return;
    }
  }

  v5 = *(v2 - 1);
  v6 = v4[v5];
  if (v6)
  {
    *(v2 - 1) = v5 + 1;

    v6();
  }

  else if (*v2 == 1)
  {
    *v2 = 2;
  }

  else
  {
    v7 = *v4;
    *(v2 - 3) = 0;
    *v2 = 0;

    v7(0);
  }
}

void sub_1003044D0(void (**a1)(uint64_t), uint64_t a2)
{
  if (!dword_100BCE2D4)
  {
    sub_1000D660C();
  }

  v4 = &dword_100B6B6DC;
  v5 = 5;
  while (1)
  {
    v6 = *(v4 - 3);
    if (v6 == a1)
    {
      break;
    }

    v4 += 4;
    if (!--v5)
    {

      sub_1000D660C();
      return;
    }
  }

  if (*v4 == 1)
  {
    *v4 = 2;
  }

  else
  {
    v7 = *v6;
    *(v4 - 3) = 0;
    *v4 = 0;

    v7(a2);
  }
}

uint64_t sub_1003045A0(unsigned int a1)
{
  if (a1 >= 0x47)
  {
    sub_1000D660C();
  }

  result = qword_100B6B720[a1];
  if (!result)
  {
    sub_1000D660C();
    return qword_100B6B720[a1];
  }

  return result;
}

void sub_1003045E4(uint64_t a1, uint64_t a2)
{
  v2 = a2;
  if (a2 >= 0x47)
  {
    sub_1000D660C();
  }

  if (sub_100305158(v2))
  {
    sub_1000D660C();
  }

  if (sub_100305158(v2))
  {
    if (sub_10000C240())
    {
      sub_10000AF54("OI_ConfigTable_SetConfig fail: module %d is already initialized", v2);
      v4 = sub_10000C050(0x39u);
      if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
      {
LABEL_8:
        sub_10080F7A0();
      }
    }
  }

  else if (v2 == 40 && !sub_100305190())
  {
    if (sub_10000C240())
    {
      sub_10000AF54("OI_ConfigTable_SetConfig fail: cannot set Common Configuration");
      v5 = sub_10000C050(0x39u);
      if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
      {
        goto LABEL_8;
      }
    }
  }

  else
  {
    qword_100B6B720[v2] = a1;
  }
}

char *sub_1003046D8(char *result, int a2, _WORD *a3)
{
  LOWORD(v3) = *a3;
  if (a2)
  {
    do
    {
      --a2;
      v4 = *result++;
      v3 = word_1008A53B0[(v4 ^ v3)] ^ ((v3 & 0xFF00) >> 8);
    }

    while (a2);
  }

  *a3 = v3;
  return result;
}

unint64_t sub_100304714(unint64_t result, _BYTE *a2)
{
  *a2 = byte_1008A55B0[result >> 4] | (16 * byte_1008A55B0[result & 0xF]);
  a2[1] = byte_1008A55B0[result >> 12] | (16 * byte_1008A55B0[(result >> 8) & 0xF]);
  return result;
}

uint64_t sub_100304754()
{
  if (qword_100B6B968)
  {
    free(qword_100B6B968);
  }

  qword_100B6B968 = 0;
  dword_100B6B960 = 0;
  result = qword_100B6B970;
  if (qword_100B6B970)
  {
    result = munmap(qword_100B6B970, dword_100B6B95C);
    qword_100B6B970 = 0;
  }

  if (dword_100B53F70 != -1)
  {
    shm_unlink("com.apple.bluetooth.magnet.shm");
    result = close(dword_100B53F70);
    dword_100B53F70 = -1;
  }

  return result;
}

char *sub_1003047D4(unsigned int a1)
{
  if (a1 <= 0x5C)
  {
    return off_100AEA540[a1];
  }

  else
  {
    return 0;
  }
}

uint64_t sub_100304810(uint64_t a1)
{
  v2 = unk_100AEA828;
  sub_1003078F4(&v2, "%:", a1);
  return sub_100307920(&v2);
}

uint64_t sub_100304858(uint64_t a1, uint64_t a2)
{
  v3 = unk_100AEA828;
  sub_1003078F4(&v3, "%@", a1, a2);
  return sub_100307920(&v3);
}

void sub_1003048A0(unsigned __int8 *a1, const char **a2)
{
  v6 = unk_100AEA838;
  v3 = sub_10000AFD4(&v6, a1, a2);
  if (v3)
  {
    WORD2(v6) = 0;
    sub_1003078F4(&v6, "Invalid parameter in debug output %! %s", v3, a1);
  }

  v4 = sub_10000C050(0x5Cu);
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    v5 = sub_100307920(&v6);
    *buf = 136446210;
    v8 = v5;
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "%{public}s", buf, 0xCu);
  }
}

void sub_100304984(unsigned __int8 *a1, const char **a2)
{
  v6 = unk_100AEA838;
  v3 = sub_10000AFD4(&v6, a1, a2);
  if (v3)
  {
    WORD2(v6) = 0;
    sub_1003078F4(&v6, "Invalid parameter in debug output %! %s", v3, a1);
  }

  v4 = sub_10000C050(0x58u);
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    v5 = sub_100307920(&v6);
    *buf = 136446210;
    v8 = v5;
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "%{public}s", buf, 0xCu);
  }
}

uint64_t sub_100304A68(uint64_t a1, int a2, unsigned __int8 *a3, const char **a4)
{
  result = 0xFFFFFFFFLL;
  if (a1 && a2)
  {
    v6[0] = 0;
    v6[1] = a1;
    *(v6 + 2) = (a2 - 1);
    if (sub_10000AFD4(v6, a3, a4))
    {
      return 0xFFFFFFFFLL;
    }

    else
    {
      result = WORD2(v6[0]);
      *(a1 + WORD2(v6[0])) = 0;
    }
  }

  return result;
}

const char *sub_100304B50(unsigned int a1)
{
  if (a1 > 2)
  {
    return "unknown";
  }

  else
  {
    return off_100AEA848[a1];
  }
}

const char *sub_100304B74(int a1)
{
  if (a1 <= 1)
  {
    if (!a1)
    {
      return "sco";
    }

    if (a1 == 1)
    {
      return "acl";
    }
  }

  else
  {
    switch(a1)
    {
      case 2:
        return "esco";
      case 240:
        return "acl-hdr";
      case 241:
        return "acl-hdr-hrb";
    }
  }

  return "unknown";
}

const char *sub_100304BE8(unsigned int a1)
{
  if (a1 > 2)
  {
    return "unknown";
  }

  else
  {
    return off_100AEA860[a1];
  }
}

const char *sub_100304C0C(int a1)
{
  v1 = "unknown";
  if (a1 == 1)
  {
    v1 = "peripheral";
  }

  if (a1)
  {
    return v1;
  }

  else
  {
    return "central";
  }
}

uint64_t sub_100304C44()
{
  if (off_100B6D178)
  {
    return off_100B6D178();
  }

  return result;
}

void *sub_100304C58(uint64_t a1, uint64_t (*a2)(void))
{
  if (dword_100BCE2D8)
  {
    if (sub_10000C240())
    {
      sub_10000AF54("OI_Dispatch_Init: %!", 140);
      v4 = sub_10000C050(0x2Au);
      if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
      {
        sub_10080F7A0();
      }
    }

    sub_1000D660C();
  }

  if (a1)
  {
    if (sub_10000C240())
    {
      sub_10000AF54("OI_Dispatch_Init: configuration parameter is deprecated");
      v5 = sub_10000C050(0x2Au);
      if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
      {
        sub_10080F7A0();
      }
    }

    sub_1003045E4(a1, 42);
  }

  if (!sub_1003045A0(0x2Au))
  {
    sub_1000D660C();
  }

  byte_100B6D188 = 0;
  byte_100B6D190 = 0;
  word_100B6D19C = *sub_1003045A0(0x2Au);
  result = sub_1001BBBD8(24 * word_100B6D19C, 0x1092040C7B4450DuLL);
  qword_100B6D1A8 = result;
  word_100B6D198 = -1;
  off_100B6D1B0 = a2;
  dword_100B6D1B8 = -1;
  dword_100BCE2D8 = 1;
  return result;
}

uint64_t sub_100304DC4(uint64_t a1, int a2)
{
  v3 = a1;
  if (!sub_10002260C(a1))
  {
    return 1001;
  }

  v4 = qword_100B6D1A8;
  v7 = 0;
  sub_100016250(&v7);
  v5 = (SWORD2(v7) + 99) / 100 + 10 * v7;
  *(v4 + 24 * HIWORD(v3) + 2) = v5 + a2;
  if (a2 <= (word_100B6D1A0 - v5))
  {
    word_100B6D1A0 = v5 + a2;
    if (off_100B6D1B0)
    {
      off_100B6D1B0((100 * a2));
    }
  }

  return 0;
}

uint64_t sub_100304E90(uint64_t a1, _WORD *a2)
{
  v3 = a1;
  if (!sub_10002260C(a1))
  {
    return 1001;
  }

  v4 = qword_100B6D1A8;
  v6 = 0;
  sub_100016250(&v6);
  result = 0;
  *a2 = *(v4 + 24 * HIWORD(v3) + 2) + (SWORD2(v6) + 99) / -100 - 10 * v6;
  return result;
}

uint64_t sub_100304F30(uint64_t a1)
{
  v1 = a1;
  if (!sub_10002260C(a1))
  {
    return 1001;
  }

  v6 = 0;
  v7 = 0;
  v2 = qword_100B6D1A8 + 24 * HIWORD(v1);
  *v2 = 1;
  v3 = *(v2 + 6);
  if (*(v2 + 6))
  {
    LOWORD(v6) = *(v2 + 6);
    v4 = (v2 + 16);
    if (v3 >= 9)
    {
      v4 = *v4;
    }

    v7 = v4;
    (*(v2 + 8))(&v6);
  }

  else
  {
    (*(v2 + 8))(0);
  }

  sub_10002256C(v1 >> 16);
  return 0;
}

void sub_100304FCC()
{
  v10 = 0;
  sub_100016250(&v10);
  v0 = v10;
  v1 = SWORD2(v10);
  sub_100304AF8("Dispatcher dump:\n");
  sub_100304AF8("   Running\t\t%d\n", byte_100B6D188);
  sub_100304AF8("   TableSize\t  %d\n", word_100B6D19C);
  sub_100304AF8("   max_used_count %d\n", dword_100B6D1B8);
  v2 = word_100B6D19C;
  if (word_100B6D19C)
  {
    v3 = 0;
    v4 = 0;
    v5 = (((1374389535 * (v1 + 99)) >> 37) + ((1374389535 * (v1 + 99)) >> 63) + 10 * v0);
    v6 = qword_100B6D1A8;
    do
    {
      v7 = *(v6 + v3 + 8);
      if (v7)
      {
        v8 = *(v6 + v3);
        v9 = "unknown state";
        if (v8 <= 2)
        {
          v9 = off_100AEA878[v8];
        }

        sub_100304AF8("entry %2d: %18s timeout %d, CBFunc 0x%x\n", v4, v9, *(v6 + v3 + 2) - v5, v7);
        v6 = qword_100B6D1A8;
        v2 = word_100B6D19C;
      }

      ++v4;
      v3 += 24;
    }

    while (v4 < v2);
  }
}

double sub_10030511C()
{
  result = 0.0;
  xmmword_100BCE320 = 0u;
  unk_100BCE330 = 0u;
  xmmword_100BCE300 = 0u;
  unk_100BCE310 = 0u;
  xmmword_100BCE2E0 = 0u;
  unk_100BCE2F0 = 0u;
  xmmword_100BCE2C0 = 0u;
  unk_100BCE2D0 = 0u;
  unk_100BCE2A0 = 0u;
  unk_100BCE2B0 = 0u;
  unk_100BCE280 = 0u;
  *&dword_100BCE290 = 0u;
  unk_100BCE260 = 0u;
  *&dword_100BCE270 = 0u;
  xmmword_100BCE240 = 0u;
  unk_100BCE250 = 0u;
  *dword_100BCE230 = 0u;
  xmmword_100BCE33C = 0u;
  return result;
}

uint64_t sub_100305158(unsigned int a1)
{
  if (a1 >= 0x47)
  {
    sub_1000D660C();
  }

  return dword_100BCE230[a1];
}

BOOL sub_100305190()
{
  if (dword_100BCE230[0])
  {
    return 0;
  }

  v1 = 0;
  do
  {
    v2 = v1;
    if (v1 == 70)
    {
      break;
    }
  }

  while (!dword_100BCE230[++v1]);
  return v2 > 0x45;
}

void *sub_1003051D8(void *result)
{
  *result = result;
  result[1] = result;
  return result;
}

void *sub_1003051E0(void *result, uint64_t *a2)
{
  v2 = *a2;
  *a2 = result;
  *result = v2;
  result[1] = a2;
  *(v2 + 8) = result;
  return result;
}

void *sub_1003051F4(void *result, uint64_t a2)
{
  v2 = *(a2 + 8);
  *v2 = result;
  *result = a2;
  result[1] = v2;
  *(a2 + 8) = result;
  return result;
}

void sub_100305208(void *result)
{
  v1 = result[1];
  if (*v1 == result && (v2 = *result, *(*result + 8) == result))
  {
    *v1 = v2;
    *(v2 + 8) = v1;
  }

  else if (sub_10000C240())
  {
    sub_10000AF54("Attempt to delete element not in list\n");
    v3 = sub_10000C050(0x39u);
    if (os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
    {
      sub_100810070(v3);
    }
  }
}

uint64_t *sub_10030528C(uint64_t **a1)
{
  v1 = *a1;
  if (*a1 == a1)
  {
    return 0;
  }

  sub_100305208(*a1);
  return v1;
}

void sub_1003052C8(unsigned __int8 *ptr, void *a2, _WORD *a3)
{
  if (!ptr || !a2 || !a3)
  {
    sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/corestack/support/oi_mbuf.c", 331, "mbuf && data && len");
  }

  v6 = *ptr;
  if (v6 >= 2)
  {
    sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/corestack/support/oi_mbuf.c", 332, "mbuf->allocCells <= 1");
  }

  if (ptr[2] != v6)
  {
    sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/corestack/support/oi_mbuf.c", 333, "mbuf->usedCells == mbuf->allocCells");
  }

  if (v6 == 1)
  {
    if (ptr[16])
    {
      if (ptr[16] == 2)
      {
        *a2 = *(ptr + 3);
        v7 = *(ptr + 9);
        goto LABEL_12;
      }
    }

    else
    {
      sub_10000C1E8(*(ptr + 3));
    }
  }

  v7 = 0;
  *a2 = 0;
LABEL_12:
  *a3 = v7;

  sub_10000C1E8(ptr);
}

void *sub_1003053B4(char *a1, size_t a2, int a3)
{
  if (a1 && a2)
  {
    v6 = sub_100007618(0x28uLL, 0x11AD2B49uLL);
    v7 = v6;
    if (v6)
    {
      *v6 = 1;
      v6[3] = 0;
      *(v6 + 2) = 1;
      v6[2] = a2;
      v8 = sub_10001FE4C((v6 + 8), a1, a2, a3);
      if (v8)
      {
        v9 = v8;
        if (sub_10000C240())
        {
          sub_10000AF54("OI_MBUF_Wrap - InitCell failed %!", v9);
          v10 = sub_10000C050(0x30u);
          if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
          {
            sub_10080F7A0();
          }
        }

        sub_1000B7B40(v7);
        sub_10000C1E8(v7);
        return 0;
      }
    }
  }

  else
  {
    v11 = sub_100007618(0x10uLL, 0x11AD2B49uLL);
    v7 = v11;
    if (v11)
    {
      *v11 = 0;
      *(v11 + 2) = 0;
      *(v11 + 1) = 0;
    }
  }

  return v7;
}

uint64_t sub_1003054C0(unsigned __int8 *a1, char *a2, size_t size, unsigned int a4)
{
  if (!a1)
  {
    sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/corestack/support/oi_mbuf.c", 403, "mbuf");
  }

  if (!a2)
  {
    sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/corestack/support/oi_mbuf.c", 404, "buf");
  }

  if (*(a1 + 3))
  {
    sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/corestack/support/oi_mbuf.c", 405, "mbuf->currPos == 0");
  }

  if (a4 > 2)
  {
    return 101;
  }

  v6 = size;
  if (!size)
  {
    return 0;
  }

  v7 = a1[2];
  if (v7 >= *a1)
  {
    if (sub_10000C240())
    {
      sub_10000AF54("MBUF Prepend overflow: alloc %d", *a1);
      v10 = sub_10000C050(0x30u);
      if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
      {
        sub_10080F7A0();
      }
    }

    return 124;
  }

  else
  {
    if (a1[2])
    {
      v8 = &a1[24 * a1[2] + 16];
      v9 = a1[2];
      do
      {
        *v8 = *(v8 - 24);
        *(v8 + 2) = *(v8 - 1);
        v8 -= 24;
        --v9;
      }

      while (v9);
    }

    a1[2] = v7 + 1;
    result = sub_10001FE4C((a1 + 16), a2, size, a4);
    if (!result)
    {
      *(a1 + 2) += v6;
    }
  }

  return result;
}

uint64_t sub_100305614(uint64_t a1, uint64_t a2)
{
  if (!a1)
  {
    sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/corestack/support/oi_mbuf.c", 582, "mbuf");
  }

  v2 = *(a1 + 4);
  if (v2 > a2)
  {
    *(a1 + 4) = a2;
    v2 = a2;
  }

  *(a1 + 6) = 0;
  *(a1 + 1) = 0;
  return v2;
}

uint64_t sub_100305660(uint64_t a1, unsigned int a2)
{
  if (!a1)
  {
    sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/corestack/support/oi_mbuf.c", 605, "mbuf");
  }

  v2 = *(a1 + 1);
  v3 = *(a1 + 2);
  if (v2 >= v3)
  {
    sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/corestack/support/oi_mbuf.c", 606, "mbuf->currCell < mbuf->usedCells");
  }

  v4 = *(a1 + 6) + *(a1 + 4);
  *(a1 + 6) = v4;
  v5 = a1 + 16;
  v6 = *(a1 + 16 + 24 * v2 + 2);
  if (v6 <= v4)
  {
    v7 = (a1 + 24 * v2 + 42);
    v8 = v2 + 1;
    do
    {
      LOBYTE(v2) = v8;
      v4 -= v6;
      if (v3 == v8)
      {
        break;
      }

      v9 = *v7;
      v7 += 12;
      LOWORD(v6) = v9;
      ++v8;
    }

    while (v9 <= v4);
    *(a1 + 6) = v4;
    *(a1 + 1) = v2;
  }

  if (v2 == v3)
  {
    v10 = 0;
    v11 = v3 - 1;
    *(a1 + 1) = v11;
    *(a1 + 6) = *(v5 + 24 * v11 + 2);
  }

  else
  {
    v12 = *(v5 + 24 * v2 + 2);
    v13 = v12 >= v4;
    v14 = v12 - v4;
    if (!v13)
    {
      sub_1000E78B4("/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Stack/corestack/support/oi_mbuf.c", 638, "mbuf->cells[mbuf->currCell].len >= mbuf->currPos");
    }

    if (v2 + 1 < v3)
    {
      v15 = (a1 + 24 * v2 + 42);
      v16 = ~v2 + v3;
      do
      {
        v17 = *v15;
        v15 += 12;
        v14 += v17;
        --v16;
      }

      while (v16);
    }

    if (v14 >= a2)
    {
      v10 = a2;
    }

    else
    {
      v10 = v14;
    }
  }

  *(a1 + 4) = v10;
  return v10;
}

void sub_1003057B4(uint64_t a1, _BYTE *a2, _WORD *a3)
{
  v6 = *(sub_1003045A0(0x2Cu) + 10);
  if (a1)
  {
    if (a2)
    {
      goto LABEL_3;
    }

LABEL_24:
    sub_1000D660C();
    if (a3)
    {
      goto LABEL_4;
    }

    goto LABEL_25;
  }

  sub_1000D660C();
  if (!a2)
  {
    goto LABEL_24;
  }

LABEL_3:
  if (a3)
  {
    goto LABEL_4;
  }

LABEL_25:
  sub_1000D660C();
LABEL_4:
  if (!dword_100BCE2F4)
  {
    if (sub_10000C240())
    {
      sub_10000AF54("OI_POLICYMGR_GetDevmgrPolicy");
      v13 = sub_10000C050(0x31u);
      if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
      {
        sub_100814AEC();
      }
    }

    goto LABEL_29;
  }

  if (!*(qword_100B6D1C0 + 20))
  {
LABEL_29:
    v7 = 0;
    goto LABEL_30;
  }

  v7 = 0;
  v8 = *(qword_100B6D1C0 + 24);
  v9 = *(qword_100B6D1C0 + 20);
  do
  {
    if (*(v8 + 56) >> 18 >= 0x69u && *(v8 + 56) < *(qword_100B6D1C0 + 20) && *a1 == *v8 && *(a1 + 4) == *(v8 + 4))
    {
      v7 |= *(v8 + 24);
      v12 = v6 & 0xFFFFFFFD;
      if ((*(v8 + 40) & 1) == 0)
      {
        v12 = v6;
      }

      if ((*(v8 + 40) & 2) != 0)
      {
        v6 = v12 & 0xFFFFFFFB;
      }

      else
      {
        v6 = v12;
      }
    }

    v8 += 64;
    --v9;
  }

  while (v9);
LABEL_30:
  *a2 = v7 & 1;
  *a3 = v6;
}

void sub_1003058F8(uint64_t a1, char a2)
{
  if (!a1)
  {
    sub_1000D660C();
  }

  if (dword_100BCE2F4)
  {
    v4 = *(qword_100B6D1C0 + 20);
    if (*(qword_100B6D1C0 + 20))
    {
      v5 = *(qword_100B6D1C0 + 24);
      v6 = *(qword_100B6D1C0 + 20);
      do
      {
        if (*(v5 + 56) >> 18 >= 0x69u && *(v5 + 56) < v4 && *a1 == *v5 && *(a1 + 4) == *(v5 + 4))
        {
          *(v5 + 40) = a2;
        }

        v5 += 64;
        --v6;
      }

      while (v6);
    }
  }

  else if (sub_10000C240())
  {
    sub_10000AF54("OI_POLICYMGR_UpdatePowerSavingDisables");
    v9 = sub_10000C050(0x31u);
    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      sub_100814AEC();
    }
  }
}

uint64_t sub_1003059D4(uint64_t a1)
{
  if (a1)
  {
    if (sub_10000C240())
    {
      sub_10000AF54("OI_POLICYMGR_Init: configuration parameter is deprecated");
      v2 = sub_10000C050(0x31u);
      if (os_log_type_enabled(v2, OS_LOG_TYPE_ERROR))
      {
        sub_1000E09C0();
      }
    }

    sub_1003045E4(a1, 49);
  }

  if (dword_100BCE2F4)
  {
    return 140;
  }

  v4 = sub_1003045A0(0x31u);
  if (v4)
  {
    v5 = v4;
    v6 = sub_1001BBBD8(0x30uLL, 0x10A00409B90FC43uLL);
    qword_100B6D1C0 = v6;
    if (v6)
    {
      v6[4] = 0;
      v7 = *v5;
      *(v6 + 10) = v7;
      v8 = sub_1001BBBD8(v7 << 6, 0x10F20405841EDF5uLL);
      v9 = qword_100B6D1C0;
      *(qword_100B6D1C0 + 24) = v8;
      if (!v8)
      {
        sub_1000D660C();
        v9 = qword_100B6D1C0;
      }

      v10 = *(v9 + 20);
      if (*(v9 + 20))
      {
        v11 = (v10 + 3) & 0x1FFFC;
        v12 = vdupq_n_s64(v10 - 1);
        v13 = xmmword_1008A4990;
        v14 = xmmword_1008A49A0;
        v15 = (*(v9 + 24) + 184);
        v16 = vdupq_n_s64(4uLL);
        do
        {
          v17 = vmovn_s64(vcgeq_u64(v12, v14));
          if (vuzp1_s16(v17, *v12.i8).u8[0])
          {
            *(v15 - 32) = 0;
          }

          if (vuzp1_s16(v17, *&v12).i8[2])
          {
            *(v15 - 16) = 0;
          }

          if (vuzp1_s16(*&v12, vmovn_s64(vcgeq_u64(v12, *&v13))).i32[1])
          {
            *v15 = 0;
            v15[16] = 0;
          }

          v13 = vaddq_s64(v13, v16);
          v14 = vaddq_s64(v14, v16);
          v15 += 64;
          v11 -= 4;
        }

        while (v11);
      }

      result = 0;
      *(v9 + 32) = 420;
      *(v9 + 16) = 1;
      *(v9 + 40) = 0;
      dword_100BCE2F4 = 1;
    }

    else
    {
      return 106;
    }
  }

  else
  {
    sub_1000D660C();
    return 127;
  }

  return result;
}

void sub_100305B9C(uint64_t a1)
{
  if (!dword_100BCE2F4)
  {
    sub_1000D660C();
  }

  *(qword_100B6D1C0 + 40) = a1;
}

uint64_t sub_100305BDC(uint64_t a1, int *a2, __int128 *a3, int *a4, char a5)
{
  if (a3 && a2 && a4)
  {
    if (dword_100BCE2F4)
    {
      v25[0] = 0;
      v23 = 0;
      v24[0] = 0;
      result = sub_10023DB58(a2, &v23);
      if (!result)
      {
        v11 = qword_100B6D1C0;
        v12 = (*(qword_100B6D1C0 + 32) + 1);
        if (v12 <= 0x1A4)
        {
          v13 = 420;
        }

        else
        {
          v13 = *(qword_100B6D1C0 + 32) + 1;
        }

        *(qword_100B6D1C0 + 32) = v13;
        v14 = *(v11 + 20);
        if (*(v11 + 20))
        {
          v15 = *(v11 + 24);
          if (v12 <= 0x1A4)
          {
            v16 = 420;
          }

          else
          {
            v16 = v12;
          }

          v17 = v16 << 16;
          v18 = v15 + 56;
          while (*v18)
          {
            ++v17;
            v18 += 64;
            if (!--v14)
            {
              goto LABEL_16;
            }
          }

          *v18 = v17;
          v20 = *a2;
          *(v18 - 52) = *(a2 + 2);
          *(v18 - 56) = v20;
          *(v18 + 4) = a5;
          v21 = a3[2];
          v22 = *a3;
          *(v18 - 32) = a3[1];
          *(v18 - 16) = v21;
          *(v18 - 48) = v22;
          v24[1] = a1;
          LODWORD(v24[0]) = v17;
          *a4 = v17;
          v25[1] = v24;
          LOWORD(v25[0]) = 16;
          return sub_1000228C0(sub_100305D6C, v25, 0);
        }

        else
        {
LABEL_16:
          if (sub_10000C240())
          {
            sub_10000AF54("OI_POLICYMGR_NewConnection: connection list full!");
            v19 = sub_10000C050(0x31u);
            if (os_log_type_enabled(v19, OS_LOG_TYPE_ERROR))
            {
              sub_1000E09C0();
            }
          }

          return 104;
        }
      }
    }

    else
    {
      return 103;
    }
  }

  else
  {
    sub_1000D660C();
    return 101;
  }

  return result;
}

void sub_100305D6C(uint64_t a1)
{
  v25 = 0;
  v26 = 0;
  v1 = *(a1 + 8);
  if (sub_10000C240())
  {
    sub_10000AF54("Trace deferredEnforcerCB, handle 0x%x", *v1);
    v2 = sub_10000C050(0x31u);
    if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 136446210;
      v28 = sub_10000C0FC();
      _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEFAULT, " %{public}s", buf, 0xCu);
    }
  }

  v3 = sub_1002D772C(*(qword_100B6D1C0 + 24) + (*v1 << 6));
  if (*(qword_100B6D1C0 + 16) != 1 || v3)
  {
    v24 = 0;
    sub_100016250(&v24);
    v5 = sub_100306CF0(&dword_100B6D1C8, &v24);
    if (dword_100B6D1C8 && v5 >= 0x258)
    {
      sub_1001BAA68(1501, "Policy enforcement timeout");
    }

    if (sub_10000C240())
    {
      v6 = sub_1003067D4(*(qword_100B6D1C0 + 16));
      sub_10000AF54("deferredEnforcerCB busy, reposting request, pmanState %s", v6);
      v7 = sub_10000C050(0x31u);
      if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
      {
        v8 = sub_10000C0FC();
        *buf = 136446210;
        v28 = v8;
        _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, " %{public}s", buf, 0xCu);
      }
    }

    v26 = v1;
    LOWORD(v25) = 16;
    v9 = sub_10002195C(sub_100305D6C, &v25, 1, 0);
    if (v9)
    {
      v10 = v9;
      if (sub_10000C240())
      {
        sub_10000AF54("OI_Dispatch_RegisterTimedFunc failed %!", v10);
        v11 = sub_10000C050(0x31u);
        if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
        {
          sub_1000E09C0();
        }
      }

      (*(v1 + 1))(*v1, v10, 0);
    }

    return;
  }

  sub_100016250(&dword_100B6D1C8);
  v12 = qword_100B6D1C0;
  *qword_100B6D1C0 = *v1;
  v13 = *(v12 + 24) + (*v12 << 6);
  if (*(v13 + 56) != *v12)
  {
    if (sub_10000C240())
    {
      sub_10000AF54("startSecurityPolicyEnforcement, handle %d no longer valid", *qword_100B6D1C0);
      v19 = sub_10000C050(0x31u);
      if (os_log_type_enabled(v19, OS_LOG_TYPE_ERROR))
      {
        sub_1000E09C0();
      }
    }

    v17 = 122;
    v18 = 0;
    goto LABEL_28;
  }

  v14 = sub_100300CD8(sub_1003067F8, v13, *(v13 + 8), *(v13 + 16), *v12, *(v13 + 60));
  if (v14)
  {
    v15 = v14;
    if (sub_10000C240())
    {
      sub_10000AF54("OI_SECMGR_EnforcePolicy failed addr %:, status %!", v13, v15);
      v16 = sub_10000C050(0x31u);
      if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
      {
        sub_10080FEE0();
      }
    }

    v17 = v15;
    v18 = 1;
LABEL_28:
    sub_100306640(v17, v18);
    return;
  }

  if (sub_10000C240())
  {
    v20 = *(v13 + 56);
    v21 = sub_1003067D4(*(qword_100B6D1C0 + 16));
    sub_10000AF54("Trace startSecurityPolicyEnforcement handle %#x : %s --------------------> %s\n\n\n\n", v20, v21, "PMAN_ST_DEVMGR_ENFORCE");
    v22 = sub_10000C050(0x31u);
    if (os_log_type_enabled(v22, OS_LOG_TYPE_DEFAULT))
    {
      v23 = sub_10000C0FC();
      *buf = 136446210;
      v28 = v23;
      _os_log_impl(&_mh_execute_header, v22, OS_LOG_TYPE_DEFAULT, " %{public}s", buf, 0xCu);
    }
  }

  *(qword_100B6D1C0 + 16) = 2;
}

uint64_t sub_100306154(uint64_t a1, int *a2, __int128 *a3, int *a4)
{
  if (!dword_100BCE2F4)
  {
    return 103;
  }

  result = 101;
  if (a2 && a3)
  {
    if (a4)
    {
      return sub_100305BDC(a1, a2, a3, a4, 0);
    }
  }

  return result;
}

void sub_100306190(uint64_t a1)
{
  v11 = 0;
  v10 = 0;
  v8[0] = 0;
  v7[0] = 0;
  if (dword_100BCE2F4)
  {
    v1 = a1;
    if (a1)
    {
      if (a1 >> 18 < 0x69 || a1 >= *(qword_100B6D1C0 + 20))
      {
        if (sub_10000C240())
        {
          sub_10000AF54("OI_POLICYMGR_Disconnect invalid handle 0x%x", v1);
          v6 = sub_10000C050(0x31u);
          if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
          {
            sub_1000E09C0();
          }
        }
      }

      else if (sub_100306348(a1, &v10))
      {
        v9 = 0;
        if (sub_1000E1248(&v10, &v9))
        {
          v7[1] = nullsub_148;
          LODWORD(v7[0]) = *(*(qword_100B6D1C0 + 24) + (v9 << 6) + 56);
          v8[1] = v7;
          LOWORD(v8[0]) = 16;
          v2 = sub_1000228C0(sub_100306440, v8, 0);
          if (v2)
          {
            v3 = v2;
            if (sub_10000C240())
            {
              sub_10000AF54("OI_Dispatch_RegisterFunc failed %!", v3);
              v4 = sub_10000C050(0x31u);
              if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
              {
                sub_1000E09C0();
              }
            }
          }
        }
      }
    }
  }

  else if (sub_10000C240())
  {
    sub_10000AF54("OI_POLICYMGR_Disconnect");
    v5 = sub_10000C050(0x31u);
    if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
    {
      sub_100814AEC();
    }
  }
}

uint64_t sub_100306348(unsigned int a1, uint64_t a2)
{
  if (a1 >> 18 < 0x69 || (v3 = qword_100B6D1C0, a1 >= *(qword_100B6D1C0 + 20)))
  {
    result = sub_10000C240();
    if (!result)
    {
      return result;
    }

    sub_10000AF54("Invalid handle 0x%x", a1);
    v7 = sub_10000C050(0x31u);
    result = os_log_type_enabled(v7, OS_LOG_TYPE_ERROR);
    if (!result)
    {
      return result;
    }

    sub_1000E09C0();
    return 0;
  }

  v4 = *(qword_100B6D1C0 + 24) + (a1 << 6);
  if (*(v4 + 56) != a1)
  {
    return 0;
  }

  *(v4 + 56) = 0;
  if (a2)
  {
    v5 = *v4;
    *(a2 + 4) = *(v4 + 4);
    *a2 = v5;
  }

  if (*(v3 + 40))
  {
    v8 = 0;
    if (!sub_10023DB58(*(v3 + 24) + (a1 << 6), &v8))
    {
      (*(qword_100B6D1C0 + 40))(v8);
    }
  }

  return 1;
}

void sub_100306440(uint64_t a1)
{
  v16 = 0;
  v15 = 0;
  v14[0] = 0;
  v1 = *(a1 + 8);
  v2 = sub_1002D772C(*(qword_100B6D1C0 + 24) + (*v1 << 6));
  v3 = qword_100B6D1C0;
  if (*(qword_100B6D1C0 + 16) == 1 && !v2)
  {
    *qword_100B6D1C0 = *v1;
    v8 = *(v3 + 24);
    v9 = *v3;
    v10 = v8 + (v9 << 6);
    if (*(v10 + 56) == v9)
    {
      sub_1003057B4(v10, &v15, &v16);
      v11 = sub_100246F98(sub_1003069E0, v10, v15, v16, *(v10 + 56));
      if (v11)
      {
        v12 = v11;
        if (sub_10000C240())
        {
          sub_10000AF54("OI_DEVMGR_EnforceLinkPolicy failed %!", v12, v14[0]);
          v13 = sub_10000C050(0x31u);
          if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
          {
            sub_1000E09C0();
          }
        }
      }

      else
      {
        *(qword_100B6D1C0 + 16) = 3;
      }
    }
  }

  else
  {
    v14[1] = v1;
    LOWORD(v14[0]) = 16;
    v5 = sub_10002195C(sub_100306440, v14, 1, 0);
    if (v5)
    {
      v6 = v5;
      if (sub_10000C240())
      {
        sub_10000AF54("OI_Dispatch_RegisterTimedFunc failed %!", v6);
        v7 = sub_10000C050(0x31u);
        if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
        {
          sub_1000E09C0();
        }
      }
    }
  }
}

void sub_1003065C8(uint64_t a1)
{
  if (!dword_100BCE2F4)
  {
    if (sub_10000C240())
    {
      sub_10000AF54("OI_POLICYMGR_RemoveConnectionPolicy");
      v2 = sub_10000C050(0x31u);
      if (os_log_type_enabled(v2, OS_LOG_TYPE_ERROR))
      {
        sub_100814AEC();
      }
    }
  }

  sub_100306190(a1);
}

uint64_t sub_100306640(uint64_t a1, uint64_t a2)
{
  if (!*(qword_100B6D1C0 + 8))
  {
    sub_1000D660C();
  }

  if (sub_10000C240())
  {
    v4 = *qword_100B6D1C0;
    v5 = sub_1003067D4(*(qword_100B6D1C0 + 16));
    sub_10000AF54("Trace finishEnforcementEffort handle %#x : %s --------------------> %s\n\n\n\n", v4, v5, "PMAN_ST_IDLE");
    v6 = sub_10000C050(0x31u);
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 136446210;
      v11 = sub_10000C0FC();
      _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, " %{public}s", buf, 0xCu);
    }
  }

  v7 = qword_100B6D1C0;
  *(qword_100B6D1C0 + 16) = 1;
  dword_100B6D1C8 = 0;
  word_100B6D1CC = 0;
  if (a1)
  {
    if ((sub_100306348(*v7, 0) & 1) == 0)
    {
      if (sub_10000C240())
      {
        sub_10000AF54("Orphaned policy, handle 0x%x", *qword_100B6D1C0);
        v8 = sub_10000C050(0x31u);
        if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
        {
          sub_1000E09C0();
        }
      }
    }
  }

  return (*(qword_100B6D1C0 + 8))(*qword_100B6D1C0, a1, a2);
}

const char *sub_1003067D4(unsigned int a1)
{
  if (a1 > 5)
  {
    return "unknown";
  }

  else
  {
    return off_100AEAAE0[a1];
  }
}

void sub_1003067F8(uint64_t a1, int a2)
{
  v4 = qword_100B6D1C0;
  if (*(qword_100B6D1C0 + 16) != 2)
  {
    sub_1000D660C();
    v4 = qword_100B6D1C0;
  }

  if (*v4 == a2)
  {
    if (a1)
    {

      sub_100306640(a1, 1);
    }

    else
    {
      v13 = 0;
      v12 = 0;
      v6 = *(v4 + 24) + (a2 << 6);
      if (*(v6 + 56) == a2)
      {
        sub_1003057B4(v6, &v12, &v13);
        v7 = sub_100246F98(sub_1003069E0, v6, v12, v13, *(v6 + 56));
        if (!v7)
        {
          *(qword_100B6D1C0 + 16) = 3;
          return;
        }

        v8 = v7;
        if (sub_10000C240())
        {
          sub_10000AF54("OI_DEVMGR_EnforceLinkPolicy failed %!", v8);
          v9 = sub_10000C050(0x31u);
          if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
          {
            sub_1000E09C0();
          }
        }

        v10 = v8;
      }

      else
      {
        if (sub_10000C240())
        {
          sub_10000AF54("startDevmgrPolicyEnforcement, handle %d no longer valid", *qword_100B6D1C0);
          v11 = sub_10000C050(0x31u);
          if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
          {
            sub_1000E09C0();
          }
        }

        v10 = 122;
      }

      sub_100306640(v10, 0);
    }
  }

  else if (sub_10000C240())
  {
    sub_10000AF54("cookie does not match current enforcement (%d vs 0x%x)", a2, *qword_100B6D1C0);
    v5 = sub_10000C050(0x31u);
    if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
    {
      sub_1000E09C0();
    }
  }
}

void sub_1003069E0(uint64_t a1, uint64_t a2, int a3)
{
  if (*(qword_100B6D1C0 + 16) != 3)
  {
    if (!sub_10000C240())
    {
      return;
    }

    sub_10000AF54("Policy Enforce State == %d", *(qword_100B6D1C0 + 16));
    v4 = sub_10000C050(0x31u);
    if (!os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
    {
      return;
    }

LABEL_9:
    sub_1000E09C0();
    return;
  }

  if (*qword_100B6D1C0 != a3)
  {
    if (!sub_10000C240())
    {
      return;
    }

    sub_10000AF54("cookie does not match current enforcement (0x%x vs 0x%x)", a3, *qword_100B6D1C0);
    v5 = sub_10000C050(0x31u);
    if (!os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
    {
      return;
    }

    goto LABEL_9;
  }

  if (a1)
  {
LABEL_4:

    sub_100306640(a1, 0);
    return;
  }

  if (*(*(qword_100B6D1C0 + 24) + (a3 << 6) + 56) == a3)
  {
    a1 = sub_1000228C0(sub_100306B88, 0, 0);
    if (!a1)
    {
      *(qword_100B6D1C0 + 16) = 4;
      return;
    }

    goto LABEL_4;
  }

  if (sub_10000C240())
  {
    sub_10000AF54("startPowerPolicyEnforcement, handle %d no longer valid", *qword_100B6D1C0);
    v6 = sub_10000C050(0x31u);
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      sub_1000E09C0();
    }
  }

  sub_100306640(122, 0);
}

uint64_t sub_100306B88()
{
  v0 = qword_100B6D1C0;
  if (*(qword_100B6D1C0 + 16) != 4)
  {
    sub_1000D660C();
    v0 = qword_100B6D1C0;
  }

  v1 = *(v0 + 3);
  v2 = v1 + (*v0 << 6);
  v3 = v0[10];
  if (v3)
  {
    v4 = 0;
    v5 = v3;
    do
    {
      if (*(v1 + 56) >> 18 >= 0x69u && *(v1 + 56) < v3 && *v2 == *v1 && *(v2 + 4) == *(v1 + 4))
      {
        v8 = *(v1 + 48);
        if (v8)
        {
          if (!v4 || *v8 > *v4 || *(v8 + 4) < *(v4 + 4) || *(v8 + 10) > *(v4 + 10))
          {
            v4 = *(v1 + 48);
          }
        }
      }

      v1 += 64;
      --v5;
    }

    while (v5);
  }

  else
  {
    v4 = 0;
  }

  sub_100242ABC(v2, v4);

  return sub_100306640(0, 0);
}

uint64_t sub_100306C80(uint64_t a1, uint64_t a2)
{
  if (!a1 || !a2)
  {
    sub_1000D660C();
  }

  if (*a1 >= *a2)
  {
    if (*a1 <= *a2)
    {
      v5 = *(a1 + 4);
      v6 = *(a2 + 4);
      v7 = v5 < v6;
      v4 = v5 > v6;
      if (v7)
      {
        return -1;
      }
    }

    else
    {
      return 1;
    }
  }

  else
  {
    return -1;
  }

  return v4;
}

uint64_t sub_100306CF0(int *a1, int *a2)
{
  v4 = *a2;
  v5 = *a1;
  v6 = *(a2 + 2);
  v7 = *(a1 + 2);
  v8 = *a2 - *a1;
  if (*a2 < *a1)
  {
    sub_1000D660C();
    v4 = *a2;
    v5 = *a1;
  }

  if (v4 == v5 && *(a2 + 2) < *(a1 + 2))
  {
    sub_1000D660C();
  }

  v9 = v6 - v7;
  v10 = (v6 - v7);
  if (v10 < 0)
  {
    v9 = v6 - v7 + 1000;
  }

  v11 = 10 * v9;
  v13 = v11 + 512;
  v12 = v11 < -512;
  v14 = v11 + 1535;
  if (!v12)
  {
    v14 = v13;
  }

  return (10 * (v8 + (v10 >> 15)) + (v14 >> 10));
}

uint64_t sub_100306DA4(int *a1, int *a2)
{
  v4 = *a2;
  v5 = *a1;
  v6 = *(a2 + 2);
  v7 = *(a1 + 2);
  v8 = *a2 - *a1;
  if (*a2 < *a1)
  {
    sub_1000D660C();
    v4 = *a2;
    v5 = *a1;
  }

  if (v4 == v5 && *(a2 + 2) < *(a1 + 2))
  {
    sub_1000D660C();
  }

  v9 = v6 - v7;
  v10 = (v6 - v7);
  if (v10 < 0)
  {
    v9 = v6 - v7 + 1000;
  }

  return (1000 * (v8 + (v10 >> 15)) + v9);
}

BOOL sub_100306E3C(uint64_t a1)
{
  v3 = 0;
  sub_100016250(&v3);
  return (sub_100306C80(&v3, a1) & 0x8000) == 0;
}

uint64_t sub_100306E84(unsigned __int8 *a1, int a2, _WORD *a3, int a4)
{
  v7 = a3;
  v8 = a1;
  if (a1 && a2 > 0 && a3 && a4 > 0)
  {
    v4 = &a3[a4];
    v5 = sub_1001A4A8C(&v8, &a1[a2], &v7, v4, 0);
    if (v5)
    {
      return dword_1008A55D0[v5];
    }

    else if (v7 >= v4)
    {
      if (v7 == v4)
      {
        if (*(v7 - 1))
        {
          return 3202;
        }

        else
        {
          return 0;
        }
      }

      else
      {
        return 0;
      }
    }

    else
    {
      result = 0;
      *v7 = 0;
    }
  }

  else
  {
    sub_1000D660C();
    return 101;
  }

  return result;
}

uint64_t sub_100306F34(unint64_t a1, unsigned int a2, _BYTE *a3, int a4)
{
  v7 = a3;
  v8 = a1;
  if (a1 && a2 > 0 && a3 && a4 > 0)
  {
    v4 = &a3[a4];
    v5 = sub_1001A484C(&v8, a1 + 2 * a2, &v7, v4, 0);
    if (v5)
    {
      return dword_1008A55D0[v5];
    }

    else if (v7 >= v4)
    {
      if (v7 == v4)
      {
        if (*(v7 - 1))
        {
          return 3202;
        }

        else
        {
          return 0;
        }
      }

      else
      {
        return 0;
      }
    }

    else
    {
      result = 0;
      *v7 = 0;
    }
  }

  else
  {
    sub_1000D660C();
    return 101;
  }

  return result;
}

uint64_t sub_100306FE4(unsigned __int16 *a1)
{
  v1 = a1;
  if (!a1)
  {
    sub_1000D660C();
  }

  LODWORD(result) = -1;
  do
  {
    v3 = *v1++;
    result = (result + 1);
  }

  while (v3);
  return result;
}

uint64_t sub_10030701C(unsigned __int16 *a1, unsigned __int16 *a2)
{
  if (a1)
  {
    if (a2)
    {
      goto LABEL_3;
    }
  }

  else
  {
    sub_1000D660C();
    if (a2)
    {
      goto LABEL_3;
    }
  }

  sub_1000D660C();
LABEL_3:
  v4 = *a1;
  v5 = *a2;
  if (v4 < v5)
  {
    return 0xFFFFFFFFLL;
  }

  v6 = a2 + 1;
  v7 = a1 + 1;
  while (1)
  {
    if (v4 > v5)
    {
      return 1;
    }

    if (!v4)
    {
      break;
    }

    v8 = *v7++;
    v4 = v8;
    v9 = *v6++;
    v5 = v9;
    if (v4 < v9)
    {
      return 0xFFFFFFFFLL;
    }
  }

  return 0;
}

uint64_t sub_1003070A0(unsigned __int16 *a1, unsigned __int16 *a2, int a3)
{
  v4 = a2;
  v5 = a1;
  if (a1)
  {
    if (a2)
    {
      goto LABEL_3;
    }
  }

  else
  {
    sub_1000D660C();
    if (v4)
    {
LABEL_3:
      if (a3)
      {
        goto LABEL_4;
      }

      return 0;
    }
  }

  sub_1000D660C();
  if (!a3)
  {
    return 0;
  }

  while (1)
  {
LABEL_4:
    LOWORD(a3) = a3 - 1;
    v6 = *v5;
    v7 = *v4;
    if (v6 < v7)
    {
      return 0xFFFFFFFFLL;
    }

    if (v6 > v7)
    {
      break;
    }

    ++v5;
    ++v4;
    if (v6)
    {
      v8 = a3 == 0;
    }

    else
    {
      v8 = 1;
    }

    if (v8)
    {
      return 0;
    }
  }

  return 1;
}

unsigned __int8 *sub_100307134(unsigned __int8 *result, int *a2)
{
  if (result && a2)
  {
    for (i = result + 1; ; ++i)
    {
      v3 = *(i - 1);
      if (v3 != 9 && v3 != 32)
      {
        break;
      }
    }

    if (v3 == 45)
    {
      v3 = *i;
      v4 = 1;
    }

    else
    {
      v4 = 0;
      --i;
    }

    if ((v3 - 48) <= 9)
    {
      if (v3 == 48 && i[1] == 120)
      {
        v5 = i[2];
        result = i + 2;
        v6 = 0;
        if (i[2])
        {
          do
          {
            if ((v5 - 48) > 9)
            {
              if ((v5 - 97) > 5)
              {
                if ((v5 - 65) > 5)
                {
                  break;
                }

                v6 = v5 + 16 * v6 - 55;
              }

              else
              {
                v6 = v5 + 16 * v6 - 87;
              }
            }

            else
            {
              v6 = v5 + 16 * v6 - 48;
            }

            v7 = *++result;
            v5 = v7;
          }

          while (v7);
        }
      }

      else
      {
        v8 = 0;
        do
        {
          result = i;
          v6 = v8;
          v9 = *i;
          if (!v9)
          {
            break;
          }

          v10 = v9 - 48;
          v8 = v9 - 48 + 10 * v8;
          i = result + 1;
        }

        while (v10 < 0xA);
      }

      if (v4)
      {
        v11 = -v6;
      }

      else
      {
        v11 = v6;
      }

      *a2 = v11;
    }
  }

  return result;
}

uint64_t sub_100307234(unsigned __int8 *a1, unsigned __int8 *a2, int a3)
{
  v4 = a2;
  v5 = a1;
  if (a1)
  {
    if (a2)
    {
      goto LABEL_3;
    }
  }

  else
  {
    sub_1000D660C();
    if (v4)
    {
LABEL_3:
      if (!a3)
      {
        return 0;
      }

      goto LABEL_7;
    }
  }

  sub_1000D660C();
  if (!a3)
  {
    return 0;
  }

LABEL_7:
  for (i = a3 - 1; ; --i)
  {
    v7 = *v5;
    if ((v7 - 97) < 0x1A)
    {
      LOBYTE(v7) = v7 - 32;
    }

    v8 = *v4;
    if ((v8 - 97) < 0x1A)
    {
      LOBYTE(v8) = v8 - 32;
    }

    if (v7 < v8)
    {
      return 0xFFFFFFFFLL;
    }

    if (v7 > v8)
    {
      break;
    }

    ++v5;
    ++v4;
    if (v7)
    {
      v9 = i == 0;
    }

    else
    {
      v9 = 1;
    }

    if (v9)
    {
      return 0;
    }
  }

  return 1;
}

uint64_t sub_1003072F0(unsigned __int8 *a1)
{
  v2 = 0;
  if (sub_100307134(a1, &v2) == a1)
  {
    return 0;
  }

  else
  {
    return v2;
  }
}

uint64_t sub_100307330(unsigned __int8 *a1, unsigned __int8 *a2)
{
  if (a1)
  {
    if (a2)
    {
      goto LABEL_3;
    }
  }

  else
  {
    sub_1000D660C();
    if (a2)
    {
      goto LABEL_3;
    }
  }

  sub_1000D660C();
LABEL_3:
  v4 = *a1;
  if ((v4 - 97) < 0x1A)
  {
    LOBYTE(v4) = v4 - 32;
  }

  v5 = *a2;
  if ((v5 - 97) >= 0x1A)
  {
    v6 = *a2;
  }

  else
  {
    v6 = v5 - 32;
  }

  if (v4 < v6)
  {
    return 0xFFFFFFFFLL;
  }

  v7 = a1 + 1;
  v8 = a2 + 1;
  while (1)
  {
    if (v4 > v6)
    {
      return 1;
    }

    if (!v4)
    {
      break;
    }

    v9 = *v7++;
    LOBYTE(v4) = v9;
    v10 = v9 - 32;
    if ((v9 - 97) < 0x1A)
    {
      LOBYTE(v4) = v10;
    }

    v11 = *v8++;
    v6 = v11;
    v12 = v11 - 32;
    if ((v11 - 97) < 0x1A)
    {
      v6 = v12;
    }

    if (v4 < v6)
    {
      return 0xFFFFFFFFLL;
    }
  }

  return 0;
}

uint64_t sub_100307404(uint64_t a1, size_t size)
{
  v2 = size;
  *a1 = 1;
  *(a1 + 4) = 0;
  v4 = sub_100007618(size, 0x9425A9BDuLL);
  *(a1 + 8) = v4;
  if (v4)
  {
    v5 = v2;
  }

  else
  {
    v5 = 0;
  }

  if (v4)
  {
    result = 0;
  }

  else
  {
    result = 106;
  }

  *(a1 + 2) = v5;
  return result;
}

void sub_10030745C(uint64_t a1)
{
  if ((*a1 & 1) == 0)
  {
    sub_1000D660C();
  }

  sub_10000C1E8(*(a1 + 8));
  *(a1 + 8) = 0;
  *(a1 + 2) = 0;
}

uint64_t sub_100307498(uint64_t a1, char *a2, int a3)
{
  result = 0;
  if (a2)
  {
    v5 = a3;
    if (a3)
    {
      v6 = a2;
      while (1)
      {
        v7 = *v6;
        if (!*v6)
        {
          return 0;
        }

        if (!*(a1 + 2) || (v8 = *(a1 + 4), *(a1 + 2) - 1 <= v8))
        {
          if (*a1 != 1)
          {
            return 0;
          }

          if (!sub_1000D5E38(a1))
          {
            return 106;
          }

          v7 = *v6;
          v8 = *(a1 + 4);
        }

        --v5;
        ++v6;
        v9 = *(a1 + 8);
        *(a1 + 4) = v8 + 1;
        *(v9 + v8) = v7;
        if (!v5)
        {
          return 0;
        }
      }
    }
  }

  return result;
}

uint64_t sub_100307540(uint64_t a1, _BYTE *a2)
{
  if (!a2)
  {
    return 0;
  }

  v2 = *a2;
  if (!*a2)
  {
    return 0;
  }

  v4 = a2 + 1;
  while (*(a1 + 2) && *(a1 + 2) - 1 > *(a1 + 4))
  {
LABEL_9:
    if (v2 == 10)
    {
      v5 = a1;
      v6 = "<lf>";
    }

    else
    {
      if (v2 != 13)
      {
        v7 = *(a1 + 8);
        v8 = *(a1 + 4);
        *(a1 + 4) = v8 + 1;
        *(v7 + v8) = v2;
        goto LABEL_15;
      }

      v5 = a1;
      v6 = "<cr>";
    }

    sub_100062468(v5, v6);
LABEL_15:
    v9 = *v4++;
    v2 = v9;
    if (!v9)
    {
      return 0;
    }
  }

  if (*a1 != 1)
  {
    return 0;
  }

  if (sub_1000D5E38(a1))
  {
    v2 = *(v4 - 1);
    goto LABEL_9;
  }

  return 106;
}

uint64_t sub_10030761C(uint64_t a1, _BYTE *a2, int a3)
{
  result = 0;
  if (a2)
  {
    v5 = a3;
    if (a3)
    {
      for (i = a2; ; ++i)
      {
        if (!*(a1 + 2) || *(a1 + 2) - 1 <= *(a1 + 4))
        {
          if (*a1 != 1)
          {
            return 0;
          }

          if (!sub_1000D5E38(a1))
          {
            return 106;
          }
        }

        v7 = *i;
        if (*i)
        {
          if (v7 == 10)
          {
            v8 = a1;
            v9 = "<lf>";
          }

          else
          {
            if (v7 != 13)
            {
              v10 = *(a1 + 8);
              v11 = *(a1 + 4);
              *(a1 + 4) = v11 + 1;
              *(v10 + v11) = v7;
              goto LABEL_16;
            }

            v8 = a1;
            v9 = "<cr>";
          }
        }

        else
        {
          v8 = a1;
          v9 = "<null>";
        }

        sub_100062468(v8, v9);
LABEL_16:
        if (!--v5)
        {
          return 0;
        }
      }
    }
  }

  return result;
}

uint64_t sub_100307718(uint64_t a1, unsigned int a2)
{
  if (a2 == 0x80000000)
  {

    return sub_100062468(a1, "-2147483648");
  }

  else
  {
    v4 = a2;
    if ((a2 & 0x80000000) != 0)
    {
      sub_100062468(a1, "-");
      v4 = -v4;
    }

    v7 = 0;
    v5 = &v8;
    v8 = 0;
    do
    {
      *--v5 = a0123456789abcd_0[v4 % 0xA];
      v6 = v4 > 9;
      v4 /= 0xAu;
    }

    while (v6);
    return sub_100062468(a1, v5);
  }
}

uint64_t sub_100307828(uint64_t result, unsigned __int16 *a2, int a3)
{
  v10 = a2;
  if (a2)
  {
    v3 = a3;
    v5 = result;
    if (sub_100306FE4(a2) <= a3)
    {
      v3 = sub_100306FE4(a2);
    }

    v6 = &a2[v3];
    do
    {
      v7 = *(v5 + 8);
      v9 = v7 + *(v5 + 4);
      v8 = v7 + *(v5 + 2) - 1;
      result = sub_1001A484C(&v10, v6, &v9, v7 + *(v5 + 2) - 1, 0);
      *(v5 + 4) = ~v8 + *(v5 + 2) + v9;
      if (result != 2)
      {
        break;
      }

      if (*v5 != 1)
      {
        break;
      }

      result = sub_1000D5E38(v5);
    }

    while ((result & 1) != 0);
  }

  return result;
}

uint64_t sub_100307920(uint64_t a1)
{
  v1 = *(a1 + 8);
  if (!v1)
  {
    return 0;
  }

  v3 = *(a1 + 4);
  if (v3 >= *(a1 + 2))
  {
    sub_1000D660C();
    v1 = *(a1 + 8);
    v3 = *(a1 + 4);
  }

  *(v1 + v3) = 0;
  return *(a1 + 8);
}

uint64_t sub_100307990(void *a1, _WORD *a2)
{
  *a2 = 0;
  *a1 = 0;
  return 102;
}

uint64_t sub_1003079A0(NSObject *a1, uint64_t (*a2)(void, void))
{
  if (a1 && a2)
  {
    v4 = IOServiceMatching("AppleBluetoothModule");
    MatchingService = IOServiceGetMatchingService(kIOMainPortDefault, v4);
    if (MatchingService)
    {
      v7 = MatchingService;
      v8 = IONotificationPortCreate(kIOMainPortDefault);
      if (v8)
      {
        v10 = v8;
        notification = 0;
        dispatch_retain(a1);
        off_100B6D1E8 = a2;
        IONotificationPortSetDispatchQueue(v10, a1);
        v11 = IOServiceAddInterestNotification(v10, v7, "IOGeneralInterest", sub_1000A1538, 0, &notification);
        if (!v11)
        {
          return 1;
        }

        sub_100304AF8("Could not add interest notification on service: %#x\n", v11);
        IONotificationPortDestroy(v10);
        dispatch_release(a1);
      }

      else
      {
        sub_100304AF8("Cannot create notification port\n", v9);
      }
    }

    else
    {
      sub_100304AF8("Cannot find AppleBluetoothModule service\n", v6);
    }
  }

  else
  {
    sub_100304AF8("Invalid parameter\n", a2);
  }

  return 0;
}

void *sub_100307ABC(unsigned __int16 *a1, uint64_t a2)
{
  result = sub_1000B7EDC(sub_100307B6C, *a1, 0, a2, 0);
  if (*(a2 + 4))
  {
    v5 = *(a1 + 14);
    v6 = sub_1001BBBD8(8uLL, 0x2004093837F09uLL);
    sub_1000B8BE0(v6, a2, 0);

    return sub_100302C18(v5, v6, 8);
  }

  return result;
}

void sub_100307B6C(int a1, void *a2, uint64_t a3, uint64_t a4)
{
  v6 = sub_1001C0E7C(a1);
  sub_1001C10D8(v6, a2, a4);
  if (sub_10000C248(*(v6 + 14)))
  {
    v7 = sub_1000BB054(*(v6 + 14), 0);
    sub_100307ABC(v6, *v7);

    sub_10000C1E8(v7);
  }
}

uint64_t sub_100307BF8(uint64_t a1)
{
  if (!a1)
  {
    sub_1000D660C();
    return 114;
  }

  v2 = *(a1 + 112);
  if (!v2)
  {
    sub_1000D660C();
    v2 = *(a1 + 112);
    if (!v2)
    {
      return 114;
    }
  }

  if (sub_10000C248(v2))
  {
    v3 = *(a1 + 112);
    v4 = *(a1 + 40);
    v5 = sub_1001BBBD8(8uLL, 0x2004093837F09uLL);
    sub_1000B8BE0(v5, v4, 0);
    sub_1000B8B8C(v3, v5, 8);
    sub_1000BB9CC(*(a1 + 40));
    result = 0;
    *(a1 + 40) = 0;
  }

  else
  {
    sub_100307ABC(a1, *(a1 + 40));
    return 0;
  }

  return result;
}

uint64_t sub_100307CB0(uint64_t a1, uint64_t a2, int a3, unsigned __int16 *a4, uint64_t a5, char a6)
{
  sub_100296BCC(a4);
  v12 = sub_1002967FC(*a4, sub_100307ED0);
  if (v12)
  {
    v13 = v12;
    if (sub_10000C240())
    {
      sub_10000AF54("OI_L2CAP_Register failed with result %!", v13);
      v14 = sub_10000C050(0x18u);
      if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
      {
        sub_10080F7A0();
      }
    }
  }

  else
  {
    if (sub_10000C240())
    {
      sub_10000AF54("Registered PSM %d", *a4);
      v15 = sub_10000C050(0x18u);
      if (os_log_type_enabled(v15, OS_LOG_TYPE_INFO))
      {
        *buf = 136446210;
        v20 = sub_10000C0FC();
        _os_log_impl(&_mh_execute_header, v15, OS_LOG_TYPE_INFO, " %{public}s", buf, 0xCu);
      }
    }

    v16 = sub_1001BBBD8(0xD8uLL, 0x10700402832AF65uLL);
    v16[18] = a2;
    *(v16 + 38) = a3;
    *(v16 + 100) = 0;
    *(v16 + 51) = 0;
    *(v16 + 98) = *a4;
    if (a1)
    {
      v16[17] = *(a1 + 8);
      *(v16 + 64) = *a1;
    }

    v16[23] = a5;
    *(v16 + 192) = a6;
    v16[8] = 0;
    v16[1] = 0;
    v13 = sub_1001C100C(v16);
    if (v13)
    {
      if (sub_10000C240())
      {
        sub_10000AF54("AddConnection failed with result %!", v13);
        v17 = sub_10000C050(0x18u);
        if (os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
        {
          sub_10080F7A0();
        }
      }
    }

    else
    {
      ++dword_100BCE290;
    }
  }

  return v13;
}

void sub_100307ED0(int a1, int *a2, unsigned int a3)
{
  v5 = sub_1001C0F0C(a1);
  if (*(v5 + 204))
  {
    if (sub_10000C240())
    {
      sub_10000AF54("Rejecting the L2CAP connection");
      v6 = sub_10000C050(0x18u);
      if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
      {
        sub_10080F7A0();
      }
    }

    sub_100290164(0, 0, 0, a3, 0, 0, 0);
  }

  else
  {
    v7 = v5;
    v8 = *(v5 + 8);
    if (v8)
    {
      sub_10000C1E8(v8);
    }

    *(v7 + 112) = 0;
    *(v7 + 80) = 0u;
    *(v7 + 96) = 0u;
    *(v7 + 48) = 0u;
    *(v7 + 64) = 0u;
    *(v7 + 16) = 0u;
    *(v7 + 32) = 0u;
    *v7 = 0u;
    v9 = *a2;
    *(v7 + 108) = *(a2 + 2);
    *(v7 + 104) = v9;
    *v7 = a3;
    *(v7 + 4) = 1;
    *(v7 + 112) = sub_1000BAE38(0, 0);
    v10 = sub_100290164(sub_1003080D8, sub_1003082E8, sub_100308408, a3, &unk_100AEAB10, 1, *(v7 + 184));
    if (v10)
    {
      v11 = v10;
      if (sub_10000C240())
      {
        sub_10000AF54("OI_L2CAP_Accept failed with result %!", v11);
        v12 = sub_10000C050(0x18u);
        if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
        {
          sub_10080F7A0();
        }
      }
    }

    else
    {
      *(v7 + 204) = 1;
    }
  }
}

uint64_t sub_100308060(uint64_t a1)
{
  sub_1001C0F9C(a1);

  return sub_1002969F8(a1);
}

uint64_t sub_100308098(unsigned int a1, _WORD *a2)
{
  v3 = sub_1001C10A0(a1);
  if (!v3)
  {
    return 1709;
  }

  v4 = v3;
  result = 0;
  *a2 = *(v4 + 196);
  return result;
}

void sub_1003080D8(int a1, unsigned int a2, unsigned __int16 a3, uint64_t a4)
{
  v7 = sub_1001C0E7C(a1);
  v8 = v7;
  v20[0] = 0;
  if (a4)
  {
    if (sub_10000C240())
    {
      sub_10000AF54("L2CAPConnectCB failed with result %!", a4);
      v9 = sub_10000C050(0x18u);
      if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
      {
        sub_10080F7A0();
      }
    }

    *(v8 + 51) = 0;
    v10 = *(v8 + 1);
    if (v10)
    {
      sub_10000C1E8(v10);
      *(v8 + 1) = 0;
    }
  }

  else
  {
    *(v7 + 51) = 2;
    v7[36] = a3;
    v7[38] = a3;
    v7[37] = a2;
    v11 = sub_1001BBBD8(a2, 0x8EDEFF74uLL);
    v13 = v8 + 88;
    v12 = *(v8 + 44);
    *(v8 + 1) = v11;
    if (v12)
    {
      if (sub_10000C240())
      {
        sub_10000AF54("Cancelling timeout countdown");
        v14 = sub_10000C050(0x18u);
        if (os_log_type_enabled(v14, OS_LOG_TYPE_INFO))
        {
          *buf = 136446210;
          v22 = sub_10000C0FC();
          _os_log_impl(&_mh_execute_header, v14, OS_LOG_TYPE_INFO, " %{public}s", buf, 0xCu);
        }
      }

      sub_10002242C(*v13);
      *v13 = 0;
    }

    v15 = *(v8 + 38) != 0;
    v16 = *(sub_1003045A0(0x18u) + 2 * v15);
    v20[1] = v8 + 104;
    LOWORD(v20[0]) = 2;
    v17 = sub_10002195C(sub_100308448, v20, v16, v8 + 44);
    if (v17)
    {
      v18 = v17;
      if (sub_10000C240())
      {
        sub_10000AF54("OI_Dispatch_RegisterTimedFunc failed with result %!", v18);
        v19 = sub_10000C050(0x18u);
        if (os_log_type_enabled(v19, OS_LOG_TYPE_ERROR))
        {
          sub_10080F7A0();
        }
      }
    }
  }
}

void sub_1003082E8(uint64_t a1, uint64_t a2)
{
  v4 = sub_1001C0E7C(a1);
  if (v4)
  {
    v5 = v4;
    sub_1000BBDD0(*(v4 + 14));
    *(v5 + 112) = 0;
    *buf = 0;
    if (!sub_1000ABC7C(a1, buf))
    {
      sub_10028E908(*buf);
    }

    sub_1001C2348(v5);
  }

  else if (sub_10000C240())
  {
    sub_10000AF54("IGNORING L2CAPDisconnectCB as connection was NULL (cid = %d, reason = %!)", a1, a2);
    v6 = sub_10000C050(0x18u);
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 136446210;
      *&buf[4] = sub_10000C0FC();
      _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, " %{public}s", buf, 0xCu);
    }
  }
}

void sub_100308408(int a1, void *a2, size_t a3)
{
  v5 = sub_1001C0E7C(a1);

  sub_1001C2418(v5, a2, a3);
}

uint64_t sub_100308448(uint64_t a1)
{
  v1 = **(a1 + 8);
  v2 = sub_1001C10A0(v1);
  if (*(v2 + 204) == 5)
  {
    sub_1000D660C();
  }

  *(v2 + 176) = 0;

  return sub_1001C3364(v1);
}

void *sub_1003084A0(uint64_t a1)
{
  if (sub_10000C240())
  {
    sub_10000AF54("HandsfreeAoS_Register");
    v2 = sub_10000C050(0x5Au);
    if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
    {
      v4 = 136446210;
      v5 = sub_10000C0FC();
      _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEFAULT, " %{public}s", &v4, 0xCu);
    }
  }

  result = malloc_type_calloc(1uLL, 0x88uLL, 0xA004050197E0BuLL);
  qword_100B6D1F0 = result;
  result[16] = a1;
  return result;
}

uint64_t sub_100308588(uint64_t a1)
{
  if (sub_10000C240())
  {
    sub_10000AF54("HandsfreeAoS_Connect - addr:%:", a1);
    v2 = sub_10000C050(0x5Au);
    if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 136446210;
      v8 = sub_10000C0FC();
      _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEFAULT, " %{public}s", buf, 0xCu);
    }
  }

  if (sub_100308710(a1))
  {
    return 126;
  }

  v5 = sub_10030875C(a1);
  v3 = sub_10028F454(sub_1003087D8, sub_1003088FC, sub_100308A00, 4099, a1, &xmmword_1008A55F8, (v5 + 128), &unk_100AEAB30);
  if (v3)
  {
    sub_100308A34(*(v5 + 128));
    if (sub_10000C240())
    {
      sub_10000AF54("L2CAP connection attempt failed %!", v3);
      v6 = sub_10000C050(0x5Au);
      if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
      {
        sub_10080F7A0();
      }
    }
  }

  return v3;
}

uint64_t sub_100308710(uint64_t a1)
{
  v1 = 0;
  while (1)
  {
    v2 = *(qword_100B6D1F0 + v1);
    if (v2)
    {
      if (**v2 == *a1 && *(*v2 + 4) == *(a1 + 4))
      {
        break;
      }
    }

    v1 += 8;
    if (v1 == 128)
    {
      return 0;
    }
  }

  return v2;
}

uint64_t sub_10030875C(uint64_t a1)
{
  v2 = 0;
  while (*(qword_100B6D1F0 + v2))
  {
    v2 += 8;
    if (v2 == 128)
    {
      return 0;
    }
  }

  v4 = malloc_type_calloc(1uLL, 0x88uLL, 0x10F20404C52702AuLL);
  v5 = qword_100B6D1F0;
  *(qword_100B6D1F0 + v2) = v4;
  *v4 = a1;
  return *(v5 + v2);
}

void sub_1003087D8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (sub_10000C240())
  {
    sub_10000AF54("L2CAPConnectCB - cid:%d inMTU:%d outMTU:%d result:%!", a1, a2, a3, a4);
    v8 = sub_10000C050(0x5Au);
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 136446210;
      v13 = sub_10000C0FC();
      _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, " %{public}s", buf, 0xCu);
    }
  }

  if (a4)
  {
    sub_100308A34(a1);
  }

  else
  {
    for (i = 0; ; i += 8)
    {
      v10 = *(qword_100B6D1F0 + i);
      if (v10)
      {
        if (*(v10 + 128) == a1)
        {
          break;
        }
      }
    }

    v11 = sub_1000E1FE8(*v10);
    *(v10 + 8) = sub_100216D00(v11);
  }
}

void sub_1003088FC(uint64_t a1, uint64_t a2)
{
  if (sub_10000C240())
  {
    sub_10000AF54("L2CAPDisconnectCB - cid:%d reason:%!", a1, a2);
    v4 = sub_10000C050(0x5Au);
    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 136446210;
      v8 = sub_10000C0FC();
      _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, " %{public}s", buf, 0xCu);
    }
  }

  for (i = 0; ; i += 8)
  {
    v6 = *(qword_100B6D1F0 + i);
    if (v6)
    {
      if (*(v6 + 128) == a1)
      {
        break;
      }
    }
  }

  sub_1002167D4(*(v6 + 8), 0);
  sub_100308A34(a1);
}

uint64_t sub_100308A00(int a1)
{
  for (i = 0; ; i += 8)
  {
    v2 = *(qword_100B6D1F0 + i);
    if (v2)
    {
      if (*(v2 + 128) == a1)
      {
        break;
      }
    }
  }

  return (*(qword_100B6D1F0 + 128))(*v2);
}

void sub_100308A34(int a1)
{
  v1 = 0;
  v2 = qword_100B6D1F0;
  while (1)
  {
    v3 = *(qword_100B6D1F0 + v1);
    if (v3)
    {
      if (*(v3 + 128) == a1)
      {
        break;
      }
    }

    v1 += 8;
    if (v1 == 128)
    {
      return;
    }
  }

  free(*(qword_100B6D1F0 + v1));
  *(v2 + v1) = 0;
}

void sub_100308A8C(uint64_t a1, char *a2, size_t a3)
{
  v6 = sub_100308710(a1);
  if (v6)
  {
    v7 = v6;
    v8 = sub_10001FF10(v6 + 16, 1u);
    if (v8)
    {
      v9 = v8;
      if (sub_10000C240())
      {
        sub_10000AF54("Failed to initialize mbuf - result:%!", v9);
        v10 = sub_10000C050(0x5Au);
        if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
        {
          sub_10080F7A0();
        }
      }
    }

    v11 = sub_10001F968((v7 + 16), a2, a3, 2u);
    if (v11)
    {
      v12 = v11;
      if (sub_10000C240())
      {
        sub_10000AF54("Failed to append mbuf - result:%!", v12);
        v13 = sub_10000C050(0x5Au);
        if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
        {
          sub_10080F7A0();
        }
      }
    }

    v14 = sub_1000B7EDC(0, *(v7 + 128), 0, v7 + 16, 0);
    if (v14)
    {
      v15 = v14;
      if (v14 != 412)
      {
        if (sub_10000C240())
        {
          sub_10000AF54("Failed to send HandsfreeAoS data - result:%!", v15);
          v16 = sub_10000C050(0x5Au);
          if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
          {
            goto LABEL_17;
          }
        }
      }
    }
  }

  else if (sub_10000C240())
  {
    sub_10000AF54("Trying to send audio data to nonexistent connection - addr:%: length:%d", a1, a3);
    v17 = sub_10000C050(0x5Au);
    if (os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
    {
LABEL_17:
      sub_10080F7A0();
    }
  }
}

uint64_t sub_100308C54(uint64_t a1)
{
  if (sub_10000C240())
  {
    sub_10000AF54("HandsfreeAoS_Disconnect - addr:%:", a1);
    v2 = sub_10000C050(0x5Au);
    if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 136446210;
      v8 = sub_10000C0FC();
      _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEFAULT, " %{public}s", buf, 0xCu);
    }
  }

  v3 = sub_100308710(a1);
  v4 = sub_10029104C(*(v3 + 128), 436);
  if (v4)
  {
    if (sub_10000C240())
    {
      sub_10000AF54("HandsfreeAoS failed to disconnect, reason %!", v4);
      v5 = sub_10000C050(0x5Au);
      if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
      {
        sub_10080F7A0();
      }
    }
  }

  return v4;
}

uint64_t sub_100308D7C()
{
  if (sub_10000C240())
  {
    sub_10000AF54("HandsfreeAoS_Deregister");
    v0 = sub_10000C050(0x5Au);
    if (os_log_type_enabled(v0, OS_LOG_TYPE_DEFAULT))
    {
      v4 = 136446210;
      v5 = sub_10000C0FC();
      _os_log_impl(&_mh_execute_header, v0, OS_LOG_TYPE_DEFAULT, " %{public}s", &v4, 0xCu);
    }
  }

  if (*qword_100B6D1F0)
  {
    return 126;
  }

  v2 = 1;
  while (v2 != 16)
  {
    if (*(qword_100B6D1F0 + 8 * v2++))
    {
      if ((v2 - 2) < 0xF)
      {
        return 126;
      }

      break;
    }
  }

  free(qword_100B6D1F0);
  result = 0;
  qword_100B6D1F0 = 0;
  return result;
}

uint64_t sub_100308E80(uint64_t a1)
{
  if (!qword_100B6D1F0)
  {
    return 0;
  }

  v1 = 0;
  while (1)
  {
    v2 = *(qword_100B6D1F0 + v1);
    if (v2)
    {
      if (**v2 == *a1 && *(*v2 + 4) == *(a1 + 4))
      {
        break;
      }
    }

    v1 += 8;
    if (v1 == 128)
    {
      return 0;
    }
  }

  return v2[64];
}

uint64_t sub_100308ED4(uint64_t a1, _WORD *a2)
{
  if (sub_10000C240())
  {
    sub_10000AF54("HandsfreeAoS_FastConnect_CreateChannel - addr:%:", a1);
    v4 = sub_10000C050(0x5Au);
    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 136446210;
      *&buf[4] = sub_10000C0FC();
      _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, " %{public}s", buf, 0xCu);
    }
  }

  if (sub_100308710(a1))
  {
    return 126;
  }

  *buf = xmmword_1008A55F8;
  v9 = unk_1008A5608;
  v5 = sub_10028EA9C(4099, buf, a1, sub_1003087D8, sub_1003088FC, sub_100308A00, a2, &unk_100AEAB30);
  if (v5)
  {
    if (sub_10000C240())
    {
      sub_10000AF54("HandsfreeAoS_FastConnect_CreateChannel error creating L2CAP channel, reason %!", v5);
      v6 = sub_10000C050(0x5Au);
      if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
      {
        sub_10080F7A0();
      }
    }

    sub_1000D660C();
  }

  *(sub_10030875C(a1) + 128) = *a2;
  return v5;
}

void sub_100309078(uint64_t a1, unsigned int a2)
{
  if (sub_10000C240())
  {
    sub_10000AF54("HandsfreeAoS_FastConnect_DestroyChannel");
    v4 = sub_10000C050(0x5Au);
    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 136446210;
      *&buf[4] = sub_10000C0FC();
      _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, " %{public}s", buf, 0xCu);
    }
  }

  v5 = sub_100308710(a1);
  if (v5)
  {
    sub_100308A34(*(v5 + 128));
  }

  else if (sub_10000C240())
  {
    sub_10000AF54("HandsfreeAoS_FastConnect_DestroyChannel no connection exists for addr:%:", a1);
    v6 = sub_10000C050(0x5Au);
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      sub_10080F7A0();
    }
  }

  *buf = 0;
  if (sub_1000ABC7C(a2, buf) || !*buf)
  {
    if (sub_10000C240())
    {
      sub_10000AF54("HandsfreeAoS_FastConnect_DestroyChannel failed to get channel, cid:%d", a2);
      v8 = sub_10000C050(0x5Au);
      if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
      {
LABEL_18:
        sub_10080F7A0();
      }
    }
  }

  else
  {
    sub_10028E908(*buf);
    v7 = sub_1000E1FE8(a1);
    if (v7)
    {
      sub_1000D27D8(v7);
      return;
    }

    if (sub_10000C240())
    {
      sub_10000AF54("HandsfreeAoS_FastConnect_DestroyChannel NULL Handle");
      v9 = sub_10000C050(0x5Au);
      if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
      {
        goto LABEL_18;
      }
    }
  }
}

void sub_100309258(uint64_t a1)
{
  if ((*(a1 + 30) & 1) == 0)
  {
    v10[0] = 0;
    v10[1] = v10;
    v10[2] = 0x3032000000;
    v10[3] = sub_100042274;
    v10[4] = sub_1000425CC;
    v11 = 0;
    v8[0] = 0;
    v8[1] = v8;
    v8[2] = 0x2020000000;
    v9 = 0;
    v2 = dispatch_semaphore_create(0);
    v3 = qword_100BCEAC8;
    if (os_log_type_enabled(qword_100BCEAC8, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "Set LPM flags for White Glove Tests", buf, 2u);
    }

    v4 = +[NFHardwareManager sharedHardwareManager];
    v6[0] = _NSConcreteStackBlock;
    v6[1] = 3221225472;
    v6[2] = sub_100309414;
    v6[3] = &unk_100AEAB68;
    v6[6] = a1;
    v6[7] = v2;
    v6[4] = v10;
    v6[5] = v8;
    v5 = [v4 startLPEMConfigSession:v6];

    dispatch_semaphore_wait(v2, 0xFFFFFFFFFFFFFFFFLL);
    _Block_object_dispose(v8, 8);
    _Block_object_dispose(v10, 8);
  }
}

void sub_1003093DC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, ...)
{
  va_start(va, a18);

  _Block_object_dispose(va, 8);
  _Block_object_dispose((v19 - 80), 8);

  _Unwind_Resume(a1);
}

void sub_100309414(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  if (v6)
  {
    objc_storeStrong((*(*(a1 + 32) + 8) + 40), a3);
    dispatch_semaphore_signal(*(a1 + 56));
    v7 = qword_100BCEAC8;
    if (os_log_type_enabled(qword_100BCEAC8, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412290;
      v30 = v6;
      _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "Start session error (error=%@)", buf, 0xCu);
    }
  }

  else
  {
    v8 = *(a1 + 48);
    if (!std::string::compare(v8 + 3, "Alisha"))
    {
      v12 = qword_100BCEAC8;
      if (os_log_type_enabled(qword_100BCEAC8, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_DEFAULT, "Set lpm1 flag", buf, 2u);
      }

      v13 = *(*(a1 + 32) + 8);
      v28 = *(v13 + 40);
      v14 = [v5 enableLPEMFeature:2 error:&v28];
      objc_storeStrong((v13 + 40), v28);
      *(*(*(a1 + 40) + 8) + 24) = v14;
      v15 = qword_100BCEAC8;
      if ((*(*(*(a1 + 40) + 8) + 24) & 1) == 0 && os_log_type_enabled(qword_100BCEAC8, OS_LOG_TYPE_ERROR))
      {
        *buf = 138412290;
        v30 = 0;
        _os_log_error_impl(&_mh_execute_header, v15, OS_LOG_TYPE_ERROR, "Failed to set lpm1 flag with error %@", buf, 0xCu);
        v15 = qword_100BCEAC8;
      }

      if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        _os_log_impl(&_mh_execute_header, v15, OS_LOG_TYPE_DEFAULT, "Clear lpm2 flag", buf, 2u);
      }

      v16 = *(*(a1 + 32) + 8);
      v27 = *(v16 + 40);
      v17 = [v5 disableLPEMFeature:4 error:&v27];
      objc_storeStrong((v16 + 40), v27);
      *(*(*(a1 + 40) + 8) + 24) = v17;
      if ((*(*(*(a1 + 40) + 8) + 24) & 1) == 0 && os_log_type_enabled(qword_100BCEAC8, OS_LOG_TYPE_ERROR))
      {
        sub_100815F68();
      }
    }

    else if (!std::string::compare(v8 + 3, "FindMy"))
    {
      v18 = qword_100BCEAC8;
      if (os_log_type_enabled(qword_100BCEAC8, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        _os_log_impl(&_mh_execute_header, v18, OS_LOG_TYPE_DEFAULT, "Set lpm2 flags", buf, 2u);
      }

      v19 = *(*(a1 + 32) + 8);
      v26 = *(v19 + 40);
      v20 = [v5 enableLPEMFeature:4 error:&v26];
      objc_storeStrong((v19 + 40), v26);
      *(*(*(a1 + 40) + 8) + 24) = v20;
      v21 = qword_100BCEAC8;
      if ((*(*(*(a1 + 40) + 8) + 24) & 1) == 0 && os_log_type_enabled(qword_100BCEAC8, OS_LOG_TYPE_ERROR))
      {
        *buf = 138412290;
        v30 = 0;
        _os_log_error_impl(&_mh_execute_header, v21, OS_LOG_TYPE_ERROR, "Failed to set lpm2 flag with error %@", buf, 0xCu);
        v21 = qword_100BCEAC8;
      }

      if (os_log_type_enabled(v21, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        _os_log_impl(&_mh_execute_header, v21, OS_LOG_TYPE_DEFAULT, "Clear lpm1 flag", buf, 2u);
      }

      v22 = *(*(a1 + 32) + 8);
      v25 = *(v22 + 40);
      v23 = [v5 disableLPEMFeature:2 error:&v25];
      objc_storeStrong((v22 + 40), v25);
      *(*(*(a1 + 40) + 8) + 24) = v23;
      if ((*(*(*(a1 + 40) + 8) + 24) & 1) == 0 && os_log_type_enabled(qword_100BCEAC8, OS_LOG_TYPE_ERROR))
      {
        sub_100815EF4();
      }
    }

    else if (!std::string::compare(v8 + 3, "All"))
    {
      v9 = qword_100BCEAC8;
      if (os_log_type_enabled(qword_100BCEAC8, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEFAULT, "Set All flags", buf, 2u);
      }

      v10 = *(*(a1 + 32) + 8);
      obj = *(v10 + 40);
      v11 = [v5 enableLPEMFeature:31 error:&obj];
      objc_storeStrong((v10 + 40), obj);
      *(*(*(a1 + 40) + 8) + 24) = v11;
      if ((*(*(*(a1 + 40) + 8) + 24) & 1) == 0 && os_log_type_enabled(qword_100BCEAC8, OS_LOG_TYPE_ERROR))
      {
        sub_100815E80();
      }
    }

    dispatch_semaphore_signal(*(a1 + 56));
    [v5 endSessionWithCompletion:0];
  }
}

void sub_100309928(const std::string *a1)
{
  if (!std::string::compare(a1 + 4, "All"))
  {
    v2 = qword_100BCEAC8;
    if (os_log_type_enabled(qword_100BCEAC8, OS_LOG_TYPE_DEFAULT))
    {
      *v4 = 0;
      _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEFAULT, "Set All flags", v4, 2u);
    }

    v3 = +[NFHardwareManager sharedHardwareManager];
    v1 = [v3 enableLPEMFeature:31];

    if (v1 && os_log_type_enabled(qword_100BCEAC8, OS_LOG_TYPE_ERROR))
    {
      sub_100815FDC();
    }
  }

  else
  {
    v1 = 0;
  }
}

void sub_100309A18(uint64_t a1)
{
  if (!*(a1 + 224))
  {
    sub_100088DD4(6, 10, 1);
  }
}

void sub_100309B0C(uint64_t a1)
{
  v1 = *(a1 + 224);
  if (v1)
  {
    v3 = qword_100BCE9C8;
    if (!os_log_type_enabled(qword_100BCE9C8, OS_LOG_TYPE_DEFAULT) || (v4 = (*(*v1 + 16))(v1), v5 = 136446210, v6 = v4, _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "Destroying %{public}s", &v5, 0xCu), (v1 = *(a1 + 224)) != 0))
    {
      (*(*v1 + 8))(v1);
    }

    *(a1 + 224) = 0;
  }
}

double sub_100309C1C(uint64_t a1)
{
  *a1 = off_100AEAB98;
  *(a1 + 8) = off_100AEAC00;
  *(a1 + 16) = &off_100AEAC30;
  *(a1 + 24) = 1;
  *(a1 + 33) = 0;
  *(a1 + 37) = 0;
  *(a1 + 25) = 0;
  *(a1 + 29) = 0;
  *(a1 + 48) = 0;
  *(a1 + 56) = 0;
  *(a1 + 40) = 0;
  *(a1 + 64) = 0;
  *(a1 + 72) = 0u;
  *(a1 + 88) = 0u;
  *(a1 + 104) = 0u;
  *(a1 + 120) = 0u;
  *(a1 + 136) = 0;
  *(a1 + 144) = xmmword_1008A5660;
  *(a1 + 176) = 0;
  *(a1 + 168) = 0;
  *(a1 + 160) = a1 + 168;
  *(a1 + 184) = 0;
  *(a1 + 192) = 0;
  *(a1 + 200) = 0;
  *(a1 + 216) = -1;
  *(a1 + 224) = 0;
  *&result = 96;
  *(a1 + 232) = 96;
  *(a1 + 240) = 0;
  *(a1 + 30) = 0;
  *(a1 + 32) = 0;
  *(a1 + 248) = 0;
  *(a1 + 256) = 0;
  return result;
}

void sub_100309D08(uint64_t a1)
{
  v2 = sub_10000E92C();
  sub_100007E30(buf, "LPM");
  sub_100007E30(__p, "Enable");
  (*(*v2 + 72))(v2, buf, __p, a1 + 24);
  if (v39 < 0)
  {
    operator delete(__p[0]);
  }

  if (v43 < 0)
  {
    operator delete(*buf);
  }

  v3 = sub_10000E92C();
  sub_100007E30(buf, "LPM");
  sub_100007E30(__p, "EnableHCI");
  v4 = (*(*v3 + 72))(v3, buf, __p, a1 + 26);
  if (v39 < 0)
  {
    operator delete(__p[0]);
  }

  if (v43 < 0)
  {
    operator delete(*buf);
  }

  v6 = sub_10000C7D0(v4, v5);
  *(a1 + 25) = sub_1004113F4(v6, v7);
  v8 = sub_10000E92C();
  sub_100007E30(buf, "LPM");
  sub_100007E30(__p, "ConfigFlag");
  (*(*v8 + 128))(v8, buf, __p, a1 + 144);
  if (v39 < 0)
  {
    operator delete(__p[0]);
  }

  if (v43 < 0)
  {
    operator delete(*buf);
  }

  v9 = sub_10000E92C();
  sub_100007E30(buf, "LPM");
  sub_100007E30(__p, "ScanWindow");
  (*(*v9 + 128))(v9, buf, __p, a1 + 152);
  if (v39 < 0)
  {
    operator delete(__p[0]);
  }

  if (v43 < 0)
  {
    operator delete(*buf);
  }

  v10 = sub_10000E92C();
  sub_100007E30(buf, "LPM");
  sub_100007E30(__p, "ScanInterval");
  (*(*v10 + 128))(v10, buf, __p, a1 + 156);
  if (v39 < 0)
  {
    operator delete(__p[0]);
  }

  if (v43 < 0)
  {
    operator delete(*buf);
  }

  v11 = sub_10000E92C();
  sub_100007E30(buf, "LPM");
  sub_100007E30(__p, "LoggingMode");
  (*(*v11 + 128))(v11, buf, __p, a1 + 148);
  if (v39 < 0)
  {
    operator delete(__p[0]);
  }

  if (v43 < 0)
  {
    operator delete(*buf);
  }

  v12 = sub_10000E92C();
  sub_100007E30(buf, "LPM");
  sub_100007E30(__p, "ConfigFlagAdv");
  (*(*v12 + 128))(v12, buf, __p, a1 + 184);
  if (v39 < 0)
  {
    operator delete(__p[0]);
  }

  if (v43 < 0)
  {
    operator delete(*buf);
  }

  v13 = sub_10000E92C();
  sub_100007E30(buf, "LPM");
  sub_100007E30(__p, "WhiteGloveMode");
  v14 = (a1 + 72);
  (*(*v13 + 56))(v13, buf, __p, a1 + 72);
  if (v39 < 0)
  {
    operator delete(__p[0]);
  }

  if (v43 < 0)
  {
    operator delete(*buf);
  }

  v15 = sub_10000E92C();
  sub_100007E30(buf, "LPM");
  sub_100007E30(__p, "FactoryMode");
  v16 = (a1 + 96);
  (*(*v15 + 56))(v15, buf, __p, a1 + 96);
  if (v39 < 0)
  {
    operator delete(__p[0]);
  }

  if (v43 < 0)
  {
    operator delete(*buf);
  }

  v17 = sub_10000E92C();
  sub_100007E30(buf, "LPM");
  sub_100007E30(__p, "EnableCentauriDebug");
  (*(*v17 + 72))(v17, buf, __p, a1 + 31);
  if (v39 < 0)
  {
    operator delete(__p[0]);
  }

  if (v43 < 0)
  {
    operator delete(*buf);
  }

  v18 = sub_10000E92C();
  sub_100007E30(buf, "LPM");
  sub_100007E30(__p, "LocalBDAddr");
  (*(*v18 + 56))(v18, buf, __p, a1 + 120);
  if (v39 < 0)
  {
    operator delete(__p[0]);
  }

  if (v43 < 0)
  {
    operator delete(*buf);
  }

  v19 = sub_10000E92C();
  sub_100007E30(buf, "LPM");
  sub_100007E30(__p, "HowManyKeys");
  (*(*v19 + 128))(v19, buf, __p, a1 + 232);
  if (v39 < 0)
  {
    operator delete(__p[0]);
  }

  if (v43 < 0)
  {
    operator delete(*buf);
  }

  v20 = sub_10000E92C();
  sub_100007E30(buf, "LPM");
  sub_100007E30(__p, "EnableHostDebugLogging");
  v21 = (*(*v20 + 72))(v20, buf, __p, a1 + 29);
  if (v39 < 0)
  {
    operator delete(__p[0]);
  }

  if (v43 < 0)
  {
    operator delete(*buf);
  }

  *(a1 + 208) = 0;
  if (*(a1 + 24) != 1 || *(a1 + 25) != 1)
  {
    goto LABEL_79;
  }

  v23 = qword_100BCEAC8;
  if (os_log_type_enabled(qword_100BCEAC8, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v23, OS_LOG_TYPE_DEFAULT, "LPM mode is supported and enabled.", buf, 2u);
    v23 = qword_100BCEAC8;
  }

  if (os_log_type_enabled(v23, OS_LOG_TYPE_INFO))
  {
    v24 = *(a1 + 144);
    v25 = *(a1 + 152);
    v26 = *(a1 + 156);
    *buf = 67109632;
    *&buf[4] = v24;
    *&buf[8] = 1024;
    *&buf[10] = v25;
    v41 = 1024;
    v42 = v26;
    _os_log_impl(&_mh_execute_header, v23, OS_LOG_TYPE_INFO, "LPM ConfigFlag: %d ScanWindow: %d ScanInterval:%d", buf, 0x14u);
  }

  if (qword_100B50AA0 != -1)
  {
    sub_10081604C();
  }

  sub_100312650(off_100B50A98 + 64, a1);
  v27 = sub_100017E6C();
  sub_1003128B0(v27 + 384, a1 + 8);
  v30 = sub_10009BD9C(v28, v29);
  v21 = (*(*v30 + 32))(v30, a1 + 33);
  if ((*(a1 + 95) & 0x8000000000000000) == 0)
  {
    if (!*(a1 + 95))
    {
      goto LABEL_70;
    }

LABEL_65:
    v21 = IsAppleInternalBuild();
    if (v21)
    {
      *(a1 + 144) |= 0x10u;
      *(a1 + 27) = 1;
      v31 = qword_100BCEAC8;
      v21 = os_log_type_enabled(qword_100BCEAC8, OS_LOG_TYPE_DEFAULT);
      if (v21)
      {
        if (*(a1 + 95) < 0)
        {
          v14 = *v14;
        }

        *buf = 136315138;
        *&buf[4] = v14;
        _os_log_impl(&_mh_execute_header, v31, OS_LOG_TYPE_DEFAULT, "LPM White Glove mode: %s is enabled.", buf, 0xCu);
      }
    }

    goto LABEL_70;
  }

  if (*(a1 + 80))
  {
    goto LABEL_65;
  }

LABEL_70:
  if ((*(a1 + 119) & 0x8000000000000000) != 0)
  {
    if (!*(a1 + 104))
    {
      goto LABEL_79;
    }
  }

  else if (!*(a1 + 119))
  {
    goto LABEL_79;
  }

  v21 = IsAppleInternalBuild();
  if (v21)
  {
    *(a1 + 28) = 1;
    v32 = qword_100BCEAC8;
    v21 = os_log_type_enabled(qword_100BCEAC8, OS_LOG_TYPE_DEFAULT);
    if (v21)
    {
      if (*(a1 + 119) < 0)
      {
        v16 = *v16;
      }

      *buf = 136315138;
      *&buf[4] = v16;
      _os_log_impl(&_mh_execute_header, v32, OS_LOG_TYPE_DEFAULT, "LPM Factory Test mode: %s is enabled.", buf, 0xCu);
    }
  }

LABEL_79:
  if ((*(sub_10000C7D0(v21, v22) + 800) - 3000) <= 0x3E7)
  {
    *(a1 + 30) = 1;
  }

  if (notify_register_check("com.apple.bluetooth.low-power-mode", (a1 + 216)))
  {
    if (os_log_type_enabled(qword_100BCEAC8, OS_LOG_TYPE_ERROR))
    {
      sub_100816074();
    }
  }

  v33 = sub_100017E6C();
  sub_100312B50(v33 + 304, a1 + 16);
  v34 = sub_10030A75C(0);
  v35 = qword_100BCEAC8;
  v36 = os_log_type_enabled(qword_100BCEAC8, OS_LOG_TYPE_DEFAULT);
  if (v34)
  {
    if (!v36)
    {
      return;
    }

    *buf = 0;
    v37 = "Failed to clear BT_FW_OK flag.";
  }

  else
  {
    if (!v36)
    {
      return;
    }

    *buf = 0;
    v37 = "BT_FW_OK flag is cleared.";
  }

  _os_log_impl(&_mh_execute_header, v35, OS_LOG_TYPE_DEFAULT, v37, buf, 2u);
}

void sub_10030A6C0(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15, void *a16, uint64_t a17, int a18, __int16 a19, char a20, char a21)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  if (a21 < 0)
  {
    operator delete(a16);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_10030A75C(int a1)
{
  v2 = sub_10030E3C8();
  if (!v2)
  {
LABEL_5:
    if (os_log_type_enabled(qword_100BCEAC8, OS_LOG_TYPE_ERROR))
    {
      sub_1008160B0();
    }

    return 1;
  }

  v3 = v2;
  valuePtr = a1;
  v4 = CFNumberCreate(kCFAllocatorDefault, kCFNumberSInt32Type, &valuePtr);
  if (!v4 || (v5 = v4, v6 = IORegistryEntrySetCFProperty(v3, @"IOPMUBootLPMFWOK", v4), CFRelease(v5), v6))
  {
    IOObjectRelease(v3);
    goto LABEL_5;
  }

  v8 = qword_100BCEAC8;
  if (os_log_type_enabled(qword_100BCEAC8, OS_LOG_TYPE_INFO))
  {
    *buf = 67109120;
    v11 = a1;
    _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_INFO, "Set IOPMUBootLPMFWOK to %d", buf, 8u);
  }

  IOObjectRelease(v3);
  return 0;
}

uint64_t sub_10030A8A0(uint64_t a1, unsigned int a2)
{
  if (*(a1 + 24) != 1 || (*(a1 + 25) & 1) == 0)
  {
    if (os_log_type_enabled(qword_100BCEAC8, OS_LOG_TYPE_ERROR))
    {
      sub_1008160EC();
    }

    return 11;
  }

  v4 = qword_100BCEAC8;
  if (os_log_type_enabled(qword_100BCEAC8, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 67109120;
    *&buf[4] = a2;
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "Triggering LPM with reason: %d", buf, 8u);
  }

  *(a1 + 32) = 1;
  v5 = sub_10030E3C8();
  v6 = v5;
  if (!v5)
  {
    goto LABEL_21;
  }

  v7 = IORegistryEntrySearchCFProperty(v5, "IOService", @"IOPMUBootLPMFWOK", kCFAllocatorDefault, 1u);
  v8 = v7;
  if (!v7)
  {
LABEL_20:
    IOObjectRelease(v6);
LABEL_21:
    v20 = qword_100BCEAC8;
    v12 = os_log_type_enabled(qword_100BCEAC8, OS_LOG_TYPE_INFO);
    if (!v12)
    {
      goto LABEL_24;
    }

    *buf = 0;
    v15 = "Failed to get IOPMUBootLPMFWOK flag";
    v16 = v20;
    v17 = OS_LOG_TYPE_INFO;
    goto LABEL_23;
  }

  valuePtr = 0;
  v9 = CFGetTypeID(v7);
  if (v9 != CFNumberGetTypeID() || !CFNumberGetValue(v8, kCFNumberSInt32Type, &valuePtr))
  {
    CFRelease(v8);
    goto LABEL_20;
  }

  v10 = valuePtr;
  v11 = qword_100BCEAC8;
  if (os_log_type_enabled(qword_100BCEAC8, OS_LOG_TYPE_INFO))
  {
    *buf = 67109120;
    *&buf[4] = v10 != 0;
    _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_INFO, "Get IOPMUBootLPMFWOK: %d", buf, 8u);
  }

  CFRelease(v8);
  v12 = IOObjectRelease(v6);
  if (v10)
  {
    v12 = sub_10030A75C(0);
    if (!v12)
    {
      v14 = qword_100BCEAC8;
      v12 = os_log_type_enabled(qword_100BCEAC8, OS_LOG_TYPE_DEFAULT);
      if (v12)
      {
        *buf = 0;
        v15 = "BT_FW_OK flag is cleared.";
        v16 = v14;
        v17 = OS_LOG_TYPE_DEFAULT;
LABEL_23:
        _os_log_impl(&_mh_execute_header, v16, v17, v15, buf, 2u);
      }
    }
  }

LABEL_24:
  if (*(a1 + 27) == 1)
  {
    sub_100309258(a1);
    if (!std::string::compare((a1 + 72), "Alisha") || !std::string::compare((a1 + 72), "All"))
    {
      v21 = qword_100BCEAC8;
      if (os_log_type_enabled(qword_100BCEAC8, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        _os_log_impl(&_mh_execute_header, v21, OS_LOG_TYPE_DEFAULT, "Fake alisha device", buf, 2u);
      }

      v22 = [[NSUUID alloc] initWithUUIDString:@"4DA4C51F-95BF-4550-82B7-F1CC159E0DB7"];
      v87 = 0;
      memset(&buf[8], 0, 32);
      *buf = ((*(a1 + 33) << 40) | (*(a1 + 34) << 32) | (*(a1 + 35) << 24) | (*(a1 + 36) << 16) | (*(a1 + 37) << 8) | *(a1 + 38)) + 1;
      if (qword_100B508C0 != -1)
      {
        sub_100816128();
      }

      sub_10000C704(&buf[8], off_100B508B8 + 184, 0x10uLL);
      if (qword_100B508C0 != -1)
      {
        sub_100816128();
      }

      sub_10000C704(&buf[24], off_100B508B8 + 184, 0x10uLL);
      LODWORD(v87) = 0;
      BYTE4(v87) = 1;
      sub_10004DFB4(&valuePtr, v22);
      p_valuePtr = &valuePtr;
      v23 = sub_100313288((a1 + 160), &valuePtr, &unk_1008A9BD0, &p_valuePtr, &v80 + 1);
      v23[6] = *buf;
      sub_10000AE20((v23 + 7), &buf[8]);
      sub_10000AE20((v23 + 9), &buf[24]);
      *(v23 + 22) = v87;
      *(v23 + 92) = BYTE4(v87);
      *&buf[24] = &off_100AE0A78;
      if (*&buf[32])
      {
        sub_10000C808(*&buf[32]);
      }

      *&buf[8] = &off_100AE0A78;
      if (*&buf[16])
      {
        sub_10000C808(*&buf[16]);
      }
    }

    if (!std::string::compare((a1 + 72), "FindMy") || (v12 = std::string::compare((a1 + 72), "All"), !v12))
    {
      v24 = qword_100BCEAC8;
      if (os_log_type_enabled(qword_100BCEAC8, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        _os_log_impl(&_mh_execute_header, v24, OS_LOG_TYPE_DEFAULT, "Fake FindMy keys", buf, 2u);
      }

      v25 = +[NSMutableArray array];
      if (*(a1 + 232))
      {
        v26 = 0;
        do
        {
          memset(buf, 0, 37);
          arc4random_buf(buf, 0x25uLL);
          v27 = [NSData dataWithBytes:buf length:36];
          [v25 addObject:v27];

          ++v26;
        }

        while (v26 < *(a1 + 232));
      }

      objc_storeStrong((a1 + 192), v25);
      *(a1 + 208) = 15;
    }
  }

  if (*(a1 + 28) == 1)
  {
    v28 = qword_100BCEAC8;
    if (os_log_type_enabled(qword_100BCEAC8, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v28, OS_LOG_TYPE_DEFAULT, "LPM Factory Test mode: set flags.", buf, 2u);
    }

    sub_100309928(a1);
  }

  v29 = sub_10000C7D0(v12, v13);
  (*(*v29 + 3464))(v29, 20, 0, 1);
  v30 = sub_10030BAFC(1);
  v31 = sub_10030BAFC(2);
  v32 = sub_10030BAFC(3);
  v34 = v32;
  v35 = !v30;
  if (a2 != 1)
  {
    v35 = 1;
  }

  if ((v35 & 1) == 0)
  {
    *(a1 + 64) |= 1u;
  }

  if (v31)
  {
    if (_os_feature_enabled_impl())
    {
      *(a1 + 64) |= 2u;
    }

    v32 = _os_feature_enabled_impl();
    if ((v32 & 1) == 0)
    {
      if (os_log_type_enabled(qword_100BCEAC8, OS_LOG_TYPE_ERROR))
      {
        sub_1008161C8();
      }

      return 1405;
    }

    goto LABEL_62;
  }

  if (v30)
  {
LABEL_62:
    if (v34)
    {
      v32 = _os_feature_enabled_impl();
      if (v32)
      {
        if (os_log_type_enabled(qword_100BCEAC8, OS_LOG_TYPE_ERROR))
        {
          sub_1008166A0();
        }

        return 1407;
      }
    }

    v36 = 1;
    goto LABEL_78;
  }

  v37 = *(a1 + 248);
  if (v37)
  {
    if ((v32 & 1) == 0)
    {
      if ((*(v37 + 1) & 0x10) == 0)
      {
        goto LABEL_98;
      }

LABEL_77:
      v36 = 0;
      goto LABEL_78;
    }
  }

  else if ((v32 & 1) == 0)
  {
LABEL_98:
    if (os_log_type_enabled(qword_100BCEAC8, OS_LOG_TYPE_ERROR))
    {
      sub_100816150();
    }

    return 1400;
  }

  v32 = _os_feature_enabled_impl();
  if ((v32 & 1) == 0)
  {
    goto LABEL_77;
  }

  v38 = sub_10000C7D0(v32, v33);
  v32 = (*(*v38 + 4240))(v38);
  if (v32 && !*(a1 + 248))
  {
    if (os_log_type_enabled(qword_100BCEAC8, OS_LOG_TYPE_ERROR))
    {
      sub_10081618C();
    }

    return 3;
  }

  v36 = 0;
  *(a1 + 64) |= 4u;
LABEL_78:
  v39 = sub_10000C7D0(v32, v33);
  if (*(v39 + 800) >> 3 >= 0x271u)
  {
    v41 = sub_10000C7D0(v39, v40);
    v42 = v36 ^ 1;
    if (*(v41 + 800) >> 4 > 0x176u)
    {
      v42 = 1;
    }

    if ((v42 & 1) == 0)
    {
      if (os_log_type_enabled(qword_100BCEAC8, OS_LOG_TYPE_ERROR))
      {
        sub_100816664();
      }

      return 11;
    }
  }

  if (*(a1 + 64))
  {
    if ((*(a1 + 64) & 1) != 0 && !*(a1 + 176) && (*(a1 + 144) & 0x10) != 0)
    {
      if (os_log_type_enabled(qword_100BCEAC8, OS_LOG_TYPE_ERROR))
      {
        sub_100816204();
      }

      return 1401;
    }

    else
    {
      v43 = dispatch_source_create(&_dispatch_source_type_timer, 0, 0, 0);
      v44 = dispatch_time(0, 4000000000);
      dispatch_source_set_timer(v43, v44, 0xFFFFFFFFFFFFFFFFLL, 0x3B9ACA00uLL);
      dispatch_source_set_event_handler(v43, &stru_100AEAC38);
      dispatch_resume(v43);
      if (qword_100B512C8 != -1)
      {
        sub_100816240();
      }

      v18 = sub_10057A688(off_100B512C0);
      dispatch_source_cancel(v43);
      dispatch_release(v43);
      if (v18)
      {
        v45 = qword_100BCEAC8;
        if (os_log_type_enabled(qword_100BCEAC8, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 67109120;
          *&buf[4] = v18;
          _os_log_impl(&_mh_execute_header, v45, OS_LOG_TYPE_DEFAULT, "PowerManager::getInstance()->powerHostlessMode failed with error %d", buf, 8u);
        }

        byte_100BCE3C0 = 0;
LABEL_94:
        *(a1 + 32) = 0;
        return v18;
      }

      v46 = *(a1 + 216);
      v47 = qword_100BCEAC8;
      if (v46 == -1)
      {
        if (os_log_type_enabled(qword_100BCEAC8, OS_LOG_TYPE_ERROR))
        {
          sub_100816360();
        }
      }

      else
      {
        if (os_log_type_enabled(qword_100BCEAC8, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 136315138;
          *&buf[4] = "com.apple.bluetooth.low-power-mode";
          _os_log_impl(&_mh_execute_header, v47, OS_LOG_TYPE_DEFAULT, "Notifying %s", buf, 0xCu);
          v46 = *(a1 + 216);
        }

        if (notify_set_state(v46, a2))
        {
          if (os_log_type_enabled(qword_100BCEAC8, OS_LOG_TYPE_ERROR))
          {
            sub_100816268();
          }
        }

        else if (notify_post("com.apple.bluetooth.low-power-mode") && os_log_type_enabled(qword_100BCEAC8, OS_LOG_TYPE_ERROR))
        {
          sub_1008162E4();
        }
      }

      Current = CFAbsoluteTimeGetCurrent();
      if ((*(a1 + 64) & 2) != 0)
      {
        v49 = qword_100BCEAC8;
        if (os_log_type_enabled(qword_100BCEAC8, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 0;
          _os_log_impl(&_mh_execute_header, v49, OS_LOG_TYPE_DEFAULT, "Waiting for offline ADV data", buf, 2u);
        }

        *buf = 0;
        *&buf[8] = 0;
        sub_100007F88(buf, &stru_100BCE380);
        if (byte_100BCE3C0 == 1 && (*(a1 + 27) & 1) == 0 && (*(a1 + 28) & 1) == 0)
        {
          v50 = qword_100BCEAC8;
          if (os_log_type_enabled(qword_100BCEAC8, OS_LOG_TYPE_DEFAULT))
          {
            LOWORD(valuePtr) = 0;
            _os_log_impl(&_mh_execute_header, v50, OS_LOG_TYPE_DEFAULT, "fOfflineADVDataPending = true", &valuePtr, 2u);
          }

          if (!sub_10002220C(&stru_100BCE350, buf, 0x1F40uLL))
          {
            if (os_log_type_enabled(qword_100BCEAC8, OS_LOG_TYPE_ERROR))
            {
              sub_1008163E0();
            }

            sub_1000088CC(buf);
            return 1403;
          }
        }

        sub_10000801C(buf);
        v51 = qword_100BCEAC8;
        if (os_log_type_enabled(qword_100BCEAC8, OS_LOG_TYPE_DEFAULT))
        {
          v52 = [*(a1 + 192) count];
          v53 = [*(a1 + 200) count];
          valuePtr = 67109376;
          v83 = v52;
          v84 = 1024;
          v85 = v53;
          _os_log_impl(&_mh_execute_header, v51, OS_LOG_TYPE_DEFAULT, "Done waiting, count set1Data:%d, count set2Data:%d", &valuePtr, 0xEu);
        }

        sub_1000088CC(buf);
      }

      v54 = CFAbsoluteTimeGetCurrent();
      v80 = 0;
      v79 = 0;
      v78 = 0;
      LODWORD(p_valuePtr) = 0;
      v55 = sub_100017E6C();
      v56 = (*(*v55 + 56))(v55, &v80 + 1, &v80, &v79 + 1, &v79, &v78, &p_valuePtr);
      v58 = (v54 - Current) * 1000.0;
      if (v58 < 8000.0)
      {
        v59 = 8000 - v58;
        v60 = qword_100BCEAC8;
        v56 = os_log_type_enabled(qword_100BCEAC8, OS_LOG_TYPE_DEFAULT);
        if (v56)
        {
          *buf = 67109376;
          *&buf[4] = v79;
          *&buf[8] = 1024;
          *&buf[10] = v59;
          _os_log_impl(&_mh_execute_header, v60, OS_LOG_TYPE_DEFAULT, "wifiIsOn:%d duration:%u", buf, 0xEu);
        }

        if (v79 == 1)
        {
          *buf = 0;
          *&buf[8] = 0;
          sub_100007F88(buf, &stru_100BCE3F8);
          byte_100BCE438 = 1;
          v61 = qword_100BCEAC8;
          if (os_log_type_enabled(qword_100BCEAC8, OS_LOG_TYPE_DEFAULT))
          {
            LOWORD(valuePtr) = 0;
            _os_log_impl(&_mh_execute_header, v61, OS_LOG_TYPE_DEFAULT, "fWaitForWifiOffPending = true", &valuePtr, 2u);
          }

          if (!sub_10002220C(&stru_100BCE3C8, buf, v59) && os_log_type_enabled(qword_100BCEAC8, OS_LOG_TYPE_ERROR))
          {
            sub_10081641C();
          }

          v56 = sub_1000088CC(buf);
        }
      }

      if (*(a1 + 28) == 1)
      {
        sub_10030BCD8(a1);
      }

      else
      {
        v62 = sub_10000C7D0(v56, v57);
        if (*(v62 + 800))
        {
          v64 = sub_10000C7D0(v62, v63);
          v65 = v36 ^ 1;
          if (*(v64 + 800) > 0x7CFu)
          {
            v65 = 1;
          }

          if ((v65 & 1) == 0)
          {
            v18 = sub_10030BE18(a1);
            if (v18)
            {
              if (os_log_type_enabled(qword_100BCEAC8, OS_LOG_TYPE_ERROR))
              {
                sub_100816458();
              }

              goto LABEL_94;
            }
          }
        }
      }

      *buf = 0;
      *&buf[8] = 0;
      sub_100007F88(buf, &stru_100BCE440);
      v66 = qword_100BCEAC8;
      if (os_log_type_enabled(qword_100BCEAC8, OS_LOG_TYPE_DEFAULT))
      {
        valuePtr = 67109120;
        v83 = byte_100BCE439;
        _os_log_impl(&_mh_execute_header, v66, OS_LOG_TYPE_DEFAULT, "fIsSystemSleep = %d", &valuePtr, 8u);
      }

      if (byte_100BCE439 == 1)
      {
        v67 = 1000 * (CFAbsoluteTimeGetCurrent() - Current);
        v68 = qword_100BCEAC8;
        if (os_log_type_enabled(qword_100BCEAC8, OS_LOG_TYPE_DEFAULT))
        {
          valuePtr = 67109120;
          v83 = v67;
          _os_log_impl(&_mh_execute_header, v68, OS_LOG_TYPE_DEFAULT, "fIsSystemSleep = true, lpmEntryTimeUsedMs=%u", &valuePtr, 8u);
        }

        if (v67 >> 6 <= 0x7C && !sub_10002220C(&stru_100BCE480, buf, 8000 - v67) && os_log_type_enabled(qword_100BCEAC8, OS_LOG_TYPE_ERROR))
        {
          sub_1008164C8();
        }
      }

      sub_10000801C(buf);
      if (*(a1 + 30) == 1)
      {
        CFAbsoluteTimeGetCurrent();
        v71 = sub_10030C1CC(a1);
      }

      else
      {
        v72 = sub_10000C7D0(v69, v70);
        if (*(v72 + 800) >> 3 < 0x271u || *(sub_10000C7D0(v72, v73) + 800) >> 4 > 0x176u)
        {
          if (v34 && _os_feature_enabled_impl())
          {
            v71 = sub_10030D294(a1);
          }

          else
          {
            v71 = sub_10030D99C(a1);
          }
        }

        else
        {
          v71 = sub_10030CB90(a1);
        }
      }

      v18 = v71;
      if (v71)
      {
        if (os_log_type_enabled(qword_100BCEAC8, OS_LOG_TYPE_ERROR))
        {
          sub_100816504();
        }

        v74 = sub_10000E92C();
        (*(*v74 + 504))(v74, "LPMConfig(BlueTool)Failed");
      }

      else
      {
        if (*(a1 + 26) == 1 && ((*(a1 + 144) & 1) == 0 || (*(a1 + 184) & 8) != 0))
        {
          v75 = qword_100BCEAC8;
          if (os_log_type_enabled(qword_100BCEAC8, OS_LOG_TYPE_INFO))
          {
            LOWORD(valuePtr) = 0;
            _os_log_impl(&_mh_execute_header, v75, OS_LOG_TYPE_INFO, "Enable sniff mode only", &valuePtr, 2u);
          }

          if (!sub_10022DD7C() && os_log_type_enabled(qword_100BCEAC8, OS_LOG_TYPE_ERROR))
          {
            sub_100816574();
          }

          if ((sub_1001C42E0() & 1) == 0 && os_log_type_enabled(qword_100BCEAC8, OS_LOG_TYPE_ERROR))
          {
            sub_1008165B0();
          }
        }

        v76 = sub_10030A75C(1);
        v77 = qword_100BCEAC8;
        if (v76)
        {
          if (os_log_type_enabled(qword_100BCEAC8, OS_LOG_TYPE_ERROR))
          {
            sub_1008165EC();
          }

          v18 = 1;
        }

        else
        {
          if (os_log_type_enabled(qword_100BCEAC8, OS_LOG_TYPE_DEFAULT))
          {
            LOWORD(valuePtr) = 0;
            _os_log_impl(&_mh_execute_header, v77, OS_LOG_TYPE_DEFAULT, "BT_FW_OK flag is set. Entering LPM...", &valuePtr, 2u);
          }

          if (*(a1 + 27) == 1)
          {
            sub_100309258(a1);
          }

          if (*(a1 + 28) == 1)
          {
            sub_100309928(a1);
          }

          v18 = 0;
        }
      }

      *(a1 + 32) = 0;
      sub_1000088CC(buf);
    }
  }

  else
  {
    if (os_log_type_enabled(qword_100BCEAC8, OS_LOG_TYPE_ERROR))
    {
      sub_100816628();
    }

    return 1402;
  }

  return v18;
}

void sub_10030B99C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  sub_1000088CC(va);
  _Unwind_Resume(a1);
}

uint64_t sub_10030BA30(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;
  sub_10000AE20(a1 + 8, a2 + 8);
  sub_10000AE20(a1 + 24, a2 + 24);
  v4 = *(a2 + 44);
  *(a1 + 40) = *(a2 + 40);
  *(a1 + 44) = v4;
  return a1;
}

void *sub_10030BA80(void *a1)
{
  a1[3] = &off_100AE0A78;
  v2 = a1[4];
  if (v2)
  {
    sub_10000C808(v2);
  }

  a1[1] = &off_100AE0A78;
  v3 = a1[2];
  if (v3)
  {
    sub_10000C808(v3);
  }

  return a1;
}

BOOL sub_10030BAFC(int a1)
{
  valuePtr = 0;
  v1 = CFStringCreateWithCString(kCFAllocatorDefault, off_100B53FA0[a1], 0x8000100u);
  v2 = sub_10030E3C8();
  if (v2)
  {
    v3 = v2;
    v4 = IORegistryEntrySearchCFProperty(v2, "IOService", @"IOPMUBootLPMCtrl", kCFAllocatorDefault, 1u);
    if (v4)
    {
      v5 = v4;
      v6 = CFGetTypeID(v4);
      if (v6 == CFDictionaryGetTypeID())
      {
        Value = CFDictionaryGetValue(v5, v1);
        if (Value)
        {
          CFNumberGetValue(Value, kCFNumberSInt32Type, &valuePtr);
          CFRelease(v5);
          IOObjectRelease(v3);
          CFRelease(v1);
          return valuePtr != 0;
        }
      }

      CFRelease(v5);
    }

    IOObjectRelease(v3);
  }

  CFRelease(v1);
  result = os_log_type_enabled(qword_100BCEAC8, OS_LOG_TYPE_ERROR);
  if (result)
  {
    sub_1008166DC();
    return 0;
  }

  return result;
}

void sub_10030BC34(id a1)
{
  if (os_log_type_enabled(qword_100BCEAC8, OS_LOG_TYPE_ERROR))
  {
    sub_100816754();
  }

  v1 = sub_10000E92C();
  sub_100007E30(__p, "LPM stack shutdown stuck");
  sub_100693FC4(v1, __p, 3172327085);
  if (v3 < 0)
  {
    operator delete(__p[0]);
  }
}

void sub_10030BCBC(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_10030BCD8(_BYTE *a1)
{
  sub_10030EDB0(a1, 1, 0);
  v2 = sub_10030EDB0(a1, 0, 0);
  if ((*(sub_10000C7D0(v2, v3) + 800) & 0xFFFFFFFC) == 0x14)
  {
    v4 = 3;
  }

  else
  {
    v4 = 2;
  }

  sub_10030EDB0(a1, v4, 0);
  sub_10030EDB0(a1, 4, 0);
  sub_10030EDB0(a1, 5, 0);
  sub_10030EDB0(a1, 6, 0);
  sub_10030EDB0(a1, 7, 0);
  sub_10030EDB0(a1, 16, 0);
  sub_10030EDB0(a1, 18, 0);
  sub_10030EDB0(a1, 19, 0);
  sub_10030EDB0(a1, 20, 0);
  sub_10030EDB0(a1, 21, 0);
  sub_10030EDB0(a1, 14, 0);
  sub_10030EDB0(a1, 22, 0);
  if (a1[26] == 1 && ((a1[144] & 1) == 0 || (a1[184] & 8) != 0))
  {
    sub_10030EDB0(a1, 15, 0);
  }

  return 0;
}

uint64_t sub_10030BE18(uint64_t a1)
{
  sub_10030EDB0(a1, 1, 0);
  v2 = sub_10030EDB0(a1, 0, 0);
  v4 = sub_10000C7D0(v2, v3);
  v5 = *(v4 + 800);
  memset(&v21, 0, sizeof(v21));
  v7 = sub_10000C7D0(v4, v6);
  v8 = (*(*v7 + 16))(&v21);
  memset(&__p, 0, sizeof(__p));
  v10 = sub_10000C7D0(v8, v9);
  (*(*v10 + 24))(&__p);
  if ((v5 & 0xFFFFFFFE) == 0x14)
  {
    goto LABEL_2;
  }

  if (v5 != 23)
  {
    if (v5 == 22 && std::string::compare(&v21, "C2") < 1)
    {
      goto LABEL_2;
    }

LABEL_8:
    v11 = 2;
    goto LABEL_9;
  }

  if (std::string::compare(&__p, "C0") > 0)
  {
    goto LABEL_8;
  }

LABEL_2:
  v11 = 3;
LABEL_9:
  sub_10030EDB0(a1, v11, 0);
  sub_10030EDB0(a1, 4, 0);
  sub_10030EDB0(a1, 5, 0);
  sub_10030EDB0(a1, 6, 0);
  sub_10030EDB0(a1, 7, 0);
  if (*(a1 + 64))
  {
    sub_10030EDB0(a1, 8, 0);
    v12 = *(a1 + 160);
    if (v12 != (a1 + 168))
    {
      do
      {
        v24 = 0u;
        v25 = 0u;
        v22 = 0u;
        v23 = 0u;
        sub_10030F7AC(&v22, (v12 + 4));
        sub_10030EDB0(a1, 9, &v23);
        *(&v24 + 1) = &off_100AE0A78;
        if (v25)
        {
          sub_10000C808(v25);
        }

        *(&v23 + 1) = &off_100AE0A78;
        if (v24)
        {
          sub_10000C808(v24);
        }

        v13 = v12[1];
        if (v13)
        {
          do
          {
            v14 = v13;
            v13 = *v13;
          }

          while (v13);
        }

        else
        {
          do
          {
            v14 = v12[2];
            v15 = *v14 == v12;
            v12 = v14;
          }

          while (!v15);
        }

        v12 = v14;
      }

      while (v14 != (a1 + 168));
    }
  }

  if ((*(a1 + 64) & 2) != 0)
  {
    sub_10030EDB0(a1, 11, 0);
    while (1)
    {
      v16 = word_100BCE3C2;
      v17 = [*(a1 + 192) count];
      if (&v17[[*(a1 + 200) count]] <= v16)
      {
        break;
      }

      v18 = sub_10030EDB0(a1, 12, 0);
      if (v18)
      {
        goto LABEL_32;
      }
    }

    sub_10030EDB0(a1, 13, 0);
  }

  sub_10030EDB0(a1, 14, 0);
  sub_10030EDB0(a1, 10, 0);
  if (*(a1 + 26) == 1 && ((*(a1 + 144) & 1) == 0 || (*(a1 + 184) & 8) != 0))
  {
    sub_10030EDB0(a1, 15, 0);
  }

  v18 = 0;
LABEL_32:
  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v21.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v21.__r_.__value_.__l.__data_);
  }

  return v18;
}

uint64_t sub_10030C1CC(uint64_t a1)
{
  v2 = qword_100BCEAC8;
  if (os_log_type_enabled(qword_100BCEAC8, OS_LOG_TYPE_DEFAULT))
  {
    LOWORD(buf.__sig) = 0;
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEFAULT, "LPMManager::sendVSCommandsACI", &buf, 2u);
  }

  v29 = 0;
  v30 = &v29;
  v31 = 0x2020000000;
  v32 = 0;
  v3 = objc_opt_new();
  v28 = 1;
  v27 = 5;
  v26 = 6;
  v25 = 0;
  memset(&v24, 0, sizeof(v24));
  sub_100007E30(&v24, "");
  [v3 appendBytes:&v28 length:1];
  [v3 appendBytes:&v27 length:1];
  [v3 appendBytes:&v26 length:2];
  if (*(a1 + 64))
  {
    v25 = -648;
    sub_10030F9EC(a1);
  }

  if ((*(a1 + 64) & 2) != 0)
  {
    sub_10030EDB0(a1, 11, 0);
    v25 = -648;
    sub_10030FF54(a1);
  }

  v23 = 0;
  v22 = [v3 length] - 4;
  [v3 replaceBytesInRange:2 withBytes:{2, &v22}];
  v4 = [v3 length];
  v22 = v4;
  v5 = v3;
  v6 = [v3 mutableBytes];
  v7 = v23;
  if ((v4 & 0xFFFE) != 0)
  {
    v8 = 0;
    v9 = v6 + 1;
    do
    {
      v7 += *(v9 - 1);
      v23 = v7;
      v8 += 2;
      v9 += 2;
    }

    while (v8 < (v4 & 0xFFFEu));
  }

  if ((v4 & 0xFFFEu) < v22)
  {
    v23 = v7 + v6[v4 & 0xFFFE];
  }

  [v3 appendBytes:&v23 length:2];
  v10 = qword_100BCEAC8;
  if (os_log_type_enabled(qword_100BCEAC8, OS_LOG_TYPE_DEFAULT))
  {
    LODWORD(buf.__sig) = 138412290;
    *(&buf.__sig + 4) = v3;
    _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEFAULT, "LPMManager::Data to be Sent:%@", &buf, 0xCu);
  }

  v11 = *(v30 + 6);
  if (!v11)
  {
    if ((atomic_load_explicit(&qword_100B6D258, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_100B6D258))
    {
      sub_100364534(&stru_100B6D228);
      __cxa_atexit(sub_1003645A0, &stru_100B6D228, &_mh_execute_header);
      __cxa_guard_release(&qword_100B6D258);
    }

    v12 = qword_100BCEAC8;
    if (os_log_type_enabled(qword_100BCEAC8, OS_LOG_TYPE_DEFAULT))
    {
      v13 = *(a1 + 31);
      LODWORD(buf.__sig) = 67109120;
      HIDWORD(buf.__sig) = v13;
      _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_DEFAULT, "LPMManager::CENRebootIntoLowPowerMode fEnableCentauriDebug %d", &buf, 8u);
    }

    if (&_CENRebootIntoLowPowerModeAsync)
    {
      if (os_log_type_enabled(qword_100BCEAC8, OS_LOG_TYPE_ERROR))
      {
        sub_1008167D0();
      }

      *(v30 + 6) = 1;
      v17 = _NSConcreteStackBlock;
      v18 = 3221225472;
      v19 = sub_100310FD8;
      v20 = &unk_100AEACB0;
      v21 = &v29;
      CENRebootIntoLowPowerModeAsync();
      memset(&buf, 0, sizeof(buf));
      sub_100044BBC(&buf);
      *v33 = 0;
      v34[0] = 0;
      sub_100007F88(v33, &buf);
      if (!sub_10002220C(&stru_100B6D228, v33, 0x1F40uLL))
      {
        v14 = qword_100BCEAC8;
        if (os_log_type_enabled(qword_100BCEAC8, OS_LOG_TYPE_DEFAULT))
        {
          *v16 = 0;
          _os_log_impl(&_mh_execute_header, v14, OS_LOG_TYPE_DEFAULT, "CENRebootIntoLowPowerModeAsync: not completed within time", v16, 2u);
        }
      }

      sub_10000801C(v33);
      sub_1000088CC(v33);
      sub_10007A068(&buf);
      v11 = *(v30 + 6);
    }

    else
    {
      v11 = 114;
      *(v30 + 6) = 114;
    }
  }

  if (SHIBYTE(v24.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v24.__r_.__value_.__l.__data_);
  }

  _Block_object_dispose(&v29, 8);
  return v11;
}

void sub_10030CAE8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, void *__p, uint64_t a20, int a21, __int16 a22, char a23, char a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, char a30, uint64_t a31, uint64_t a32, uint64_t a33, char a34)
{
  __cxa_guard_abort(&qword_100B6D258);
  if (a24 < 0)
  {
    operator delete(__p);
  }

  _Block_object_dispose(&a26, 8);
  _Unwind_Resume(a1);
}

uint64_t sub_10030CB90(uint64_t a1)
{
  v49 = 0;
  v48 = 0;
  v45 = 0;
  v46 = 0;
  v47 = 0;
  v2 = sub_100017E6C();
  sub_100007E30(__p, ".bin");
  v3 = (*(*v2 + 448))(v2, __p, &v48, &v49, &v45, 1);
  v4 = v3;
  if (v44 < 0)
  {
    operator delete(__p[0]);
    if (v4)
    {
      goto LABEL_3;
    }

LABEL_8:
    v42 = 0;
    sub_1000216B4(&v42);
    v5 = sub_10022DE20();
    sub_100022214(&v42);
    if (v5)
    {
      if (v5 == 1220)
      {
        v4 = 2411;
      }

      else
      {
        v4 = 2410;
      }

      if (v48)
      {
        free(v48);
      }

      goto LABEL_19;
    }

    if (v48)
    {
      free(v48);
    }

    if (SHIBYTE(v47) < 0)
    {
      if (!v46)
      {
        goto LABEL_33;
      }

      v6 = v45;
    }

    else
    {
      if (!HIBYTE(v47))
      {
        goto LABEL_33;
      }

      v6 = &v45;
    }

    v8 = [NSString stringWithUTF8String:v6];
    v9 = [v8 lastPathComponent];

    memset(buf, 0, sizeof(buf));
    v41 = 0;
    v10 = v9;
    v11 = sub_100007E30(v50, [v9 UTF8String]);
    v12 = std::string::insert(v11, 0, "Firmware Filename: ");
    v13 = *&v12->__r_.__value_.__l.__data_;
    v41 = v12->__r_.__value_.__r.__words[2];
    *buf = v13;
    v12->__r_.__value_.__l.__size_ = 0;
    v12->__r_.__value_.__r.__words[2] = 0;
    v12->__r_.__value_.__r.__words[0] = 0;
    if (v51 < 0)
    {
      operator delete(*v50);
    }

    if (v41 >= 0)
    {
      v14 = buf;
    }

    else
    {
      v14 = *buf;
    }

    sub_1001C429C(v14);
    if (SHIBYTE(v41) < 0)
    {
      operator delete(*buf);
    }

LABEL_33:
    v15 = qword_100BCEAC8;
    v16 = os_log_type_enabled(qword_100BCEAC8, OS_LOG_TYPE_DEFAULT);
    if (v16)
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v15, OS_LOG_TYPE_DEFAULT, "PCIe successfully transferred firmware image file", buf, 2u);
    }

    v39 = 0;
    v38 = 0;
    v18 = sub_10009BD9C(v16, v17);
    (*(*v18 + 32))(v18, &v38);
    sub_10024E444(&v38);
    v19 = qword_100BCEAC8;
    if (os_log_type_enabled(qword_100BCEAC8, OS_LOG_TYPE_DEFAULT))
    {
      sub_1000BE6F8(&v38, buf);
      v20 = v41 >= 0 ? buf : *buf;
      *v50 = 136315138;
      *&v50[4] = v20;
      _os_log_impl(&_mh_execute_header, v19, OS_LOG_TYPE_DEFAULT, "Providing the local device address of %s", v50, 0xCu);
      if (SHIBYTE(v41) < 0)
      {
        operator delete(*buf);
      }
    }

    sub_1000618AC(&v42);
    v4 = sub_10022DC98();
    sub_100022214(&v42);
    if (v4)
    {
      if (os_log_type_enabled(qword_100BCEAC8, OS_LOG_TYPE_ERROR))
      {
        sub_10081684C();
      }
    }

    else
    {
      if (qword_100B50AA0 != -1)
      {
        sub_10081604C();
      }

      sub_1005A1714();
      if (qword_100B50AA0 != -1)
      {
        sub_10081604C();
      }

      sub_1005A0B4C();
      if (qword_100B50AA0 != -1)
      {
        sub_10081604C();
      }

      sub_1005A0DF4();
      if ((*(a1 + 64) & 4) != 0)
      {
        v24 = *(a1 + 248);
        if (!v24)
        {
          if (os_log_type_enabled(qword_100BCEAC8, OS_LOG_TYPE_ERROR))
          {
            sub_10081618C();
          }

          v4 = 3;
          goto LABEL_19;
        }

        if ((*(v24 + 1) & 0x10) != 0)
        {
          v25 = sub_10000C7D0(v21, v22);
          v26 = (*(*v25 + 4200))(v25, 0, 2);
          v28 = sub_10000C7D0(v26, v27);
          v29 = (*(*v28 + 4208))(v28);
          v31 = sub_10000C7D0(v29, v30);
          v21 = (*(*v31 + 4200))(v31, 2, 2);
        }

        v32 = sub_10000C7D0(v21, v22);
        v21 = (*(*v32 + 4240))(v32);
        if (v21)
        {
          v33 = sub_100310BB0(a1);
          v35 = sub_10000C7D0(v33, v34);
          v21 = (*(*v35 + 4256))(v35, *(a1 + 248));
          v4 = v21;
          if (v21)
          {
            if (os_log_type_enabled(qword_100BCEAC8, OS_LOG_TYPE_ERROR))
            {
              sub_1008168BC();
            }

            goto LABEL_19;
          }
        }

        if ((*(*(a1 + 248) + 1) & 8) != 0)
        {
          v36 = sub_10000C7D0(v21, v22);
          v21 = (*(*v36 + 4248))(v36);
          if (v21)
          {
            v37 = sub_10000C7D0(v21, v22);
            v21 = (*(*v37 + 4264))(v37, *(a1 + 256));
            v4 = v21;
            if (v21)
            {
              if (os_log_type_enabled(qword_100BCEAC8, OS_LOG_TYPE_ERROR))
              {
                sub_10081692C();
              }

              goto LABEL_19;
            }
          }
        }
      }

      v23 = sub_10000C7D0(v21, v22);
      v4 = (*(*v23 + 4272))(v23);
      if (v4 && os_log_type_enabled(qword_100BCEAC8, OS_LOG_TYPE_ERROR))
      {
        sub_10081699C();
      }
    }

LABEL_19:
    sub_10002249C(&v42);
    goto LABEL_20;
  }

  if (!v3)
  {
    goto LABEL_8;
  }

LABEL_3:
  if (os_log_type_enabled(qword_100BCEAC8, OS_LOG_TYPE_FAULT))
  {
    sub_10081680C();
  }

  if (v48)
  {
    free(v48);
  }

LABEL_20:
  if (SHIBYTE(v47) < 0)
  {
    operator delete(v45);
  }

  return v4;
}

void sub_10030D1EC(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, void *a11, uint64_t a12, int a13, __int16 a14, char a15, char a16, int a17, __int16 a18, char a19, char a20, void *a21, uint64_t a22, int a23, __int16 a24, char a25, char a26, void *__p, uint64_t a28, int a29, __int16 a30, char a31, char a32)
{
  sub_10002249C(&a20);
  if (a32 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

uint64_t sub_10030D294(uint64_t a1)
{
  v42 = 0;
  v40 = 0;
  v41 = 0;
  v38 = 0;
  v39 = 0;
  v2 = sub_100017E6C();
  sub_100007E30(__p, ".bin");
  v3 = (*(*v2 + 448))(v2, __p, &v41, &v42, &v38, 0);
  if (v37 < 0)
  {
    operator delete(__p[0]);
  }

  v4 = qword_100BCEAC8;
  if (os_log_type_enabled(qword_100BCEAC8, OS_LOG_TYPE_DEFAULT))
  {
    v5 = &v38;
    if (v40 < 0)
    {
      v5 = v38;
    }

    *buf = 136315138;
    *&buf[4] = v5;
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "Found FW file: %s", buf, 0xCu);
  }

  if (!v3)
  {
    v35 = 0;
    sub_1000216B4(&v35);
    v6 = sub_10022DE20();
    sub_100022214(&v35);
    if (v6)
    {
      if (v6 == 1220)
      {
        v3 = 2411;
      }

      else
      {
        v3 = 2410;
      }

      if (v41)
      {
        free(v41);
      }

      goto LABEL_23;
    }

    if (v41)
    {
      free(v41);
    }

    if (SHIBYTE(v40) < 0)
    {
      if (!v39)
      {
        goto LABEL_37;
      }

      v7 = v38;
    }

    else
    {
      if (!HIBYTE(v40))
      {
        goto LABEL_37;
      }

      v7 = &v38;
    }

    v9 = [NSString stringWithUTF8String:v7];
    v10 = [v9 lastPathComponent];

    memset(buf, 0, sizeof(buf));
    v45 = 0;
    v11 = v10;
    sub_100007E30(&v43, [v10 UTF8String]);
    v12 = std::string::insert(&v43, 0, "Firmware Filename: ");
    v13 = *&v12->__r_.__value_.__l.__data_;
    v45 = v12->__r_.__value_.__r.__words[2];
    *buf = v13;
    v12->__r_.__value_.__l.__size_ = 0;
    v12->__r_.__value_.__r.__words[2] = 0;
    v12->__r_.__value_.__r.__words[0] = 0;
    if (SHIBYTE(v43.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v43.__r_.__value_.__l.__data_);
    }

    if (v45 >= 0)
    {
      v14 = buf;
    }

    else
    {
      v14 = *buf;
    }

    sub_1001C429C(v14);
    if (SHIBYTE(v45) < 0)
    {
      operator delete(*buf);
    }

LABEL_37:
    v15 = qword_100BCEAC8;
    v16 = os_log_type_enabled(qword_100BCEAC8, OS_LOG_TYPE_DEFAULT);
    if (v16)
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v15, OS_LOG_TYPE_DEFAULT, "PCIe successfully transferred firmware image file", buf, 2u);
    }

    v34 = 0;
    v33 = 0;
    v18 = sub_10009BD9C(v16, v17);
    (*(*v18 + 32))(v18, &v33);
    sub_10024E444(&v33);
    v19 = qword_100BCEAC8;
    if (os_log_type_enabled(qword_100BCEAC8, OS_LOG_TYPE_DEFAULT))
    {
      sub_1000BE6F8(&v33, buf);
      v20 = v45 >= 0 ? buf : *buf;
      LODWORD(v43.__r_.__value_.__l.__data_) = 136315138;
      *(v43.__r_.__value_.__r.__words + 4) = v20;
      _os_log_impl(&_mh_execute_header, v19, OS_LOG_TYPE_DEFAULT, "Providing the local device address of %s", &v43, 0xCu);
      if (SHIBYTE(v45) < 0)
      {
        operator delete(*buf);
      }
    }

    sub_1000618AC(&v35);
    v3 = sub_10022DC98();
    sub_100022214(&v35);
    if (v3)
    {
      if (os_log_type_enabled(qword_100BCEAC8, OS_LOG_TYPE_ERROR))
      {
        sub_10081684C();
      }
    }

    else
    {
      if (qword_100B50AA0 != -1)
      {
        sub_10081604C();
      }

      sub_1005A1714();
      if (qword_100B50AA0 != -1)
      {
        sub_10081604C();
      }

      sub_1005A0B4C();
      if (qword_100B50AA0 != -1)
      {
        sub_10081604C();
      }

      sub_1005A0DF4();
      if ((*(a1 + 64) & 4) != 0)
      {
        if (!*(a1 + 248))
        {
          if (os_log_type_enabled(qword_100BCEAC8, OS_LOG_TYPE_ERROR))
          {
            sub_10081618C();
          }

          v3 = 3;
          goto LABEL_23;
        }

        v26 = sub_10000C7D0(v21, v22);
        v21 = (*(*v26 + 4240))(v26);
        if (v21)
        {
          v27 = sub_100310BB0(a1);
          v29 = sub_10000C7D0(v27, v28);
          v21 = (*(*v29 + 4256))(v29, *(a1 + 248));
          v3 = v21;
          if (v21)
          {
            if (os_log_type_enabled(qword_100BCEAC8, OS_LOG_TYPE_ERROR))
            {
              sub_1008168BC();
            }

            goto LABEL_23;
          }
        }

        if ((*(*(a1 + 248) + 1) & 8) != 0)
        {
          v31 = sub_10000C7D0(v21, v22);
          v21 = (*(*v31 + 4248))(v31);
          if (v21)
          {
            v32 = sub_10000C7D0(v21, v22);
            v21 = (*(*v32 + 4264))(v32, *(a1 + 256));
            v3 = v21;
            if (v21)
            {
              if (os_log_type_enabled(qword_100BCEAC8, OS_LOG_TYPE_ERROR))
              {
                sub_10081692C();
              }

              goto LABEL_23;
            }
          }
        }
      }

      v23 = sub_10000C7D0(v21, v22);
      v24 = (*(*v23 + 528))(v23, 1);
      v3 = v24;
      if (v24)
      {
        if (os_log_type_enabled(qword_100BCEAC8, OS_LOG_TYPE_ERROR))
        {
          sub_100816A0C();
        }
      }

      else
      {
        v30 = sub_10000C7D0(v24, v25);
        v3 = (*(*v30 + 4272))(v30);
        if (v3 && os_log_type_enabled(qword_100BCEAC8, OS_LOG_TYPE_ERROR))
        {
          sub_10081699C();
        }
      }
    }

LABEL_23:
    sub_10002249C(&v35);
    goto LABEL_24;
  }

  if (os_log_type_enabled(qword_100BCEAC8, OS_LOG_TYPE_FAULT))
  {
    sub_10081680C();
  }

  if (v41)
  {
    free(v41);
  }

LABEL_24:
  if (SHIBYTE(v40) < 0)
  {
    operator delete(v38);
  }

  return v3;
}

void sub_10030D8F8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, int a10, __int16 a11, char a12, char a13, void *a14, uint64_t a15, int a16, __int16 a17, char a18, char a19, void *__p, uint64_t a21, int a22, __int16 a23, char a24, char a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, int a30, __int16 a31, char a32, char a33)
{
  sub_10002249C(&a13);
  if (a25 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

uint64_t sub_10030D99C(uint64_t a1)
{
  v2 = qword_100BCEAC8;
  if (os_log_type_enabled(qword_100BCEAC8, OS_LOG_TYPE_INFO))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_INFO, "Initialization for hostless mode", buf, 2u);
  }

  v4 = *(a1 + 40);
  v3 = *(a1 + 48);
  if (v4 == v3)
  {
    return 0;
  }

  v5 = "0x%hhx";
  v30 = a1;
  while (1)
  {
    v38 = 0;
    memset(v37, 0, sizeof(v37));
    LODWORD(v37[0]) = *v4;
    if (*(v4 + 31) < 0)
    {
      sub_100008904(&v37[1], *(v4 + 8), *(v4 + 16));
    }

    else
    {
      v6 = *(v4 + 8);
      v37[3] = *(v4 + 24);
      *&v37[1] = v6;
    }

    v38 = *(v4 + 32);
    v7 = HIBYTE(v37[3]);
    if (SHIBYTE(v37[3]) < 0)
    {
      v7 = v37[2];
    }

    if (!v7)
    {
LABEL_49:
      v13 = 1;
      goto LABEL_50;
    }

    bzero(buf, 0x800uLL);
    v10 = sub_10009BD9C(v8, v9);
    if (SHIBYTE(v37[3]) >= 0)
    {
      v11 = &v37[1];
    }

    else
    {
      v11 = v37[1];
    }

    v12 = (*(*v10 + 128))(v10, v11, buf, 2048, *(a1 + 29));
    if (v12)
    {
      v13 = 0;
      v31 = v12;
      goto LABEL_50;
    }

    __p = 0;
    v35 = 0;
    v36 = 0;
    v14 = strlen(buf);
    if (v14)
    {
      if (v14 <= 2048)
      {
        if (v14 >= 4)
        {
          v15 = v14 + 5;
          v16 = buf;
          while (1)
          {
            v41 = 0;
            if (!sscanf(v16, v5, &v41))
            {
              break;
            }

            v17 = v35;
            if (v35 >= v36)
            {
              v19 = __p;
              v20 = (v35 - __p);
              v21 = v35 - __p + 1;
              if (v21 < 0)
              {
                sub_1000C7698();
              }

              v22 = v5;
              v23 = v36 - __p;
              if (2 * (v36 - __p) > v21)
              {
                v21 = 2 * v23;
              }

              if (v23 >= 0x3FFFFFFFFFFFFFFFLL)
              {
                v24 = 0x7FFFFFFFFFFFFFFFLL;
              }

              else
              {
                v24 = v21;
              }

              if (v24)
              {
                operator new();
              }

              v25 = v35 - __p;
              *v20 = v41;
              v18 = v20 + 1;
              memcpy(0, v19, v25);
              __p = 0;
              v35 = v20 + 1;
              v36 = 0;
              if (v19)
              {
                operator delete(v19);
              }

              v5 = v22;
            }

            else
            {
              *v35 = v41;
              v18 = v17 + 1;
            }

            v35 = v18;
            v16 += 5;
            v15 -= 5;
            if (v15 <= 8)
            {
              goto LABEL_40;
            }
          }

          if (os_log_type_enabled(qword_100BCEAC8, OS_LOG_TYPE_ERROR))
          {
            sub_100816A7C(&v39, v40);
          }
        }
      }

      else if (os_log_type_enabled(qword_100BCEAC8, OS_LOG_TYPE_ERROR))
      {
        sub_100816AB0(&v42, v43);
      }
    }

LABEL_40:
    if (!v38)
    {
      goto LABEL_44;
    }

    v26 = __p;
    if (v35 != __p)
    {
      v27 = v38(&__p);
      if (v27)
      {
        v28 = 0;
        v31 = v27;
      }

      else
      {
LABEL_44:
        v28 = 1;
      }

      a1 = v30;
LABEL_46:
      v26 = __p;
      if (!__p)
      {
        goto LABEL_48;
      }

LABEL_47:
      v35 = v26;
      operator delete(v26);
      goto LABEL_48;
    }

    if (os_log_type_enabled(qword_100BCEAC8, OS_LOG_TYPE_ERROR))
    {
      sub_100816AE4(&v32, v33);
      a1 = v30;
      v28 = 0;
      v31 = 112;
      goto LABEL_46;
    }

    v28 = 0;
    v31 = 112;
    a1 = v30;
    if (v26)
    {
      goto LABEL_47;
    }

LABEL_48:
    if (v28)
    {
      goto LABEL_49;
    }

    v13 = 0;
LABEL_50:
    if (SHIBYTE(v37[3]) < 0)
    {
      operator delete(v37[1]);
    }

    if ((v13 & 1) == 0)
    {
      return v31;
    }

    v4 += 40;
    if (v4 == v3)
    {
      return 0;
    }
  }
}

void sub_10030DD9C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, void *__p, uint64_t a15, uint64_t a16, uint64_t a17, void *a18, uint64_t a19, int a20, __int16 a21, char a22, char a23)
{
  if (__p)
  {
    operator delete(__p);
  }

  if (a23 < 0)
  {
    operator delete(a18);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_10030DDDC()
{
  v0 = qword_100BCEAC8;
  if (os_log_type_enabled(qword_100BCEAC8, OS_LOG_TYPE_DEFAULT))
  {
    LOWORD(v2[0]) = 0;
    _os_log_impl(&_mh_execute_header, v0, OS_LOG_TYPE_DEFAULT, "LPMManager::powerManagementEventSystemWillSleep", v2, 2u);
  }

  v2[0] = 0;
  v2[1] = 0;
  sub_100007F88(v2, &stru_100BCE440);
  byte_100BCE439 = 1;
  return sub_1000088CC(v2);
}

uint64_t sub_10030DE70(uint64_t a1)
{
  v2 = qword_100BCEAC8;
  if (os_log_type_enabled(qword_100BCEAC8, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEFAULT, "LPMManager::powerManagementEventSystemWillShutDown", buf, 2u);
  }

  if (*(a1 + 24) == 1 && *(a1 + 25) == 1)
  {
    v3 = qword_100BCEAC8;
    if (os_log_type_enabled(qword_100BCEAC8, OS_LOG_TYPE_DEFAULT))
    {
      *v5 = 0;
      _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "LPMManager::powerManagementEventSystemWillShutDown fOfflineADVDataPending = true", v5, 2u);
    }

    byte_100BCE3C0 = 1;
  }

  return 1;
}

uint64_t sub_10030DF68(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v10[0] = a2;
  v10[1] = a3;
  v3 = qword_100BCEAC8;
  if (os_log_type_enabled(qword_100BCEAC8, OS_LOG_TYPE_DEFAULT))
  {
    sub_1000151C0(v10);
    v4 = v9 >= 0 ? __p : __p[0];
    *buf = 136315138;
    v12 = v4;
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "wifiStateChanged:%s", buf, 0xCu);
    if (v9 < 0)
    {
      operator delete(__p[0]);
    }
  }

  __p[0] = 0;
  __p[1] = 0;
  sub_100007F88(__p, &stru_100BCE3F8);
  if (byte_100BCE438 == 1 && LOBYTE(v10[0]) == 0)
  {
    v6 = qword_100BCEAC8;
    if (os_log_type_enabled(qword_100BCEAC8, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "wifiStateChanged and wifi power is off", buf, 2u);
    }

    byte_100BCE438 = 0;
    sub_10002286C(&stru_100BCE3C8);
  }

  return sub_1000088CC(__p);
}

void sub_10030E0C4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  sub_1000088CC(va);
  _Unwind_Resume(a1);
}

void sub_10030E0E4(uint64_t a1)
{
  v2 = qword_100BCEAC8;
  if (os_log_type_enabled(qword_100BCEAC8, OS_LOG_TYPE_DEFAULT))
  {
    LOWORD(buf) = 0;
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEFAULT, "LPMManager::getLPEMBluetoothLog", &buf, 2u);
  }

  if (*(a1 + 24) == 1 && *(a1 + 25) == 1)
  {
    if (_os_feature_enabled_impl())
    {
      v3 = sub_10030E3C8();
      v4 = v3;
      if (v3)
      {
        v5 = IORegistryEntrySearchCFProperty(v3, "IOService", @"IOPMUBootReasonLPMSU", kCFAllocatorDefault, 1u);
        v6 = v5;
        if (v5)
        {
          LODWORD(valuePtr[0]) = 0;
          v7 = CFGetTypeID(v5);
          if (v7 == CFNumberGetTypeID())
          {
            if (CFNumberGetValue(v6, kCFNumberSInt32Type, valuePtr))
            {
              v8 = qword_100BCEAC8;
              if (os_log_type_enabled(qword_100BCEAC8, OS_LOG_TYPE_DEFAULT))
              {
                if (LODWORD(valuePtr[0]))
                {
                  v9 = "is";
                }

                else
                {
                  v9 = "is NOT";
                }

                LODWORD(buf) = 136315138;
                *(&buf + 4) = v9;
                _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "Boot reason %s Bluetooth", &buf, 0xCu);
              }
            }
          }

          CFRelease(v6);
        }

        IOObjectRelease(v4);
      }
    }
  }

  valuePtr[0] = 0;
  valuePtr[1] = valuePtr;
  valuePtr[2] = 0x3032000000;
  valuePtr[3] = sub_100042274;
  valuePtr[4] = sub_1000425CC;
  v12 = 0;
  *&buf = 0;
  *(&buf + 1) = &buf;
  v14 = 0x4812000000;
  v15 = sub_10030E50C;
  v16 = nullsub_149;
  v17 = "";
  v18 = 0;
  v19 = 0;
  v20 = 0;
  v10[0] = _NSConcreteStackBlock;
  v10[1] = 3221225472;
  v10[2] = sub_10030E524;
  v10[3] = &unk_100AEAC88;
  v10[4] = valuePtr;
  v10[5] = &buf;
  [NFHardwareManager sharedHardwareManagerWithNoUI:v10];
  _Block_object_dispose(&buf, 8);
  _Block_object_dispose(valuePtr, 8);
}

void sub_10030E394(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va1, a13);
  va_start(va, a13);
  v14 = va_arg(va1, void);
  v16 = va_arg(va1, void);
  v17 = va_arg(va1, void);
  v18 = va_arg(va1, void);
  v19 = va_arg(va1, void);
  v20 = va_arg(va1, id);
  _Block_object_dispose(va1, 8);
  _Block_object_dispose(va, 8);

  _Unwind_Resume(a1);
}

uint64_t sub_10030E3C8()
{
  existing = 0;
  v0 = IOServiceNameMatching("AppleDialogSPMIPMU");
  if (IOServiceGetMatchingServices(kIOMainPortDefault, v0, &existing))
  {
    if (os_log_type_enabled(qword_100BCEAC8, OS_LOG_TYPE_ERROR))
    {
      sub_100816B18();
    }

    return 0;
  }

  v2 = existing;
  if (!existing)
  {
    if (os_log_type_enabled(qword_100BCEAC8, OS_LOG_TYPE_ERROR))
    {
      sub_100816BC4();
    }

    return 0;
  }

  do
  {
    if (!IOIteratorIsValid(v2))
    {
      break;
    }

    v3 = IOIteratorNext(existing);
    v1 = v3;
    if (!v3)
    {
      goto LABEL_16;
    }

    CFProperty = IORegistryEntryCreateCFProperty(v3, @"IOPMUPrimary", 0, 0);
    if (CFProperty)
    {
      CFRelease(CFProperty);
      goto LABEL_16;
    }

    IOObjectRelease(v1);
    v2 = existing;
  }

  while (existing);
  if (os_log_type_enabled(qword_100BCEAC8, OS_LOG_TYPE_ERROR))
  {
    sub_100816B88();
  }

  v1 = 0;
LABEL_16:
  IOObjectRelease(existing);
  return v1;
}

__n128 sub_10030E50C(__n128 *a1, __n128 *a2)
{
  result = a2[3];
  a1[4].n128_u32[0] = a2[4].n128_u32[0];
  a1[3] = result;
  return result;
}

id sub_10030E524(uint64_t a1, void *a2)
{
  v3[0] = _NSConcreteStackBlock;
  v3[1] = 3221225472;
  v3[2] = sub_10030E5A0;
  v3[3] = &unk_100AEAC60;
  v4 = *(a1 + 32);
  return [a2 startLPEMConfigSession:v3];
}

void sub_10030E5A0(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v7 = *(*(a1 + 32) + 8);
  if (v6)
  {
    objc_storeStrong((v7 + 40), a3);
    v8 = qword_100BCEAC8;
    if (os_log_type_enabled(qword_100BCEAC8, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412290;
      v37 = v6;
      _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "Start session error (error=%@)", buf, 0xCu);
    }

    v9 = [*(*(*(a1 + 32) + 8) + 40) code];
    *(*(*(a1 + 40) + 8) + 48) = v9;
    v11 = sub_10000F034(v9, v10);
    (*(*v11 + 696))(v11, *(*(a1 + 40) + 8) + 48);
  }

  else
  {
    obj = *(v7 + 40);
    v12 = [v5 getAndClearLPEMBluetoothLogWithError:&obj];
    objc_storeStrong((v7 + 40), obj);
    if (v12)
    {
      CFDictionaryGetTypeID();
      v13 = CFDictionaryGetTypedValue();
      if (v13)
      {
        CFDataGetTypeID();
        v14 = CFDictionaryGetTypedValue();
        v15 = [v14 length];
        if (v14)
        {
          v16 = v15;
          if (v15 - 1 <= 0x1F)
          {
            __dst = 0u;
            v81 = 0u;
            v17 = v14;
            memcpy(&__dst, [v14 bytes], v16);
            v18 = qword_100BCEAC8;
            v19 = os_log_type_enabled(qword_100BCEAC8, OS_LOG_TYPE_DEFAULT);
            if (v19)
            {
              v21 = *(*(*(a1 + 32) + 8) + 40);
              *buf = 138417922;
              v37 = v21;
              v38 = 1024;
              *v39 = __dst;
              *&v39[4] = 1024;
              *&v39[6] = BYTE1(__dst);
              v40 = 1024;
              v41 = BYTE2(__dst);
              v42 = 1024;
              v43 = BYTE3(__dst);
              v44 = 1024;
              v45 = BYTE4(__dst);
              v46 = 1024;
              v47 = BYTE5(__dst);
              v48 = 1024;
              v49 = BYTE6(__dst);
              v50 = 1024;
              v51 = BYTE7(__dst);
              v52 = 1024;
              v53 = BYTE8(__dst);
              v54 = 1024;
              v55 = BYTE9(__dst);
              v56 = 1024;
              v57 = BYTE10(__dst);
              v58 = 1024;
              v59 = BYTE11(__dst);
              v60 = 1024;
              v61 = BYTE12(__dst);
              v62 = 1024;
              v63 = BYTE13(__dst);
              v64 = 1024;
              v65 = BYTE14(__dst);
              v66 = 1024;
              v67 = HIBYTE(__dst);
              v68 = 1024;
              v69 = v81;
              v70 = 1024;
              v71 = BYTE1(v81);
              v72 = 1024;
              v73 = BYTE2(v81);
              v74 = 1024;
              v75 = BYTE3(v81);
              v76 = 1024;
              v77 = BYTE4(v81);
              v78 = 1024;
              v79 = BYTE5(v81);
              _os_log_impl(&_mh_execute_header, v18, OS_LOG_TYPE_DEFAULT, "Get LPM Bluetooth log succeed (error=%@)\nlog: BT connection counter = 0x%02x, BT connection time = 0x%02x%02x%02x%02x, \nSEP2 Ranging setup counter = 0x%02x, SEP2 Clock info = 0x%02x%02x%02x%02x, \nSEP2 based unlock counter = 0x%02x, SEP2 based lock counter = 0x%02x, \nBT SE reset counter = 0x%02x,RPA rollover counter = 0x%02x, \nBT entry counter = 0x%02x, BT Exit counter = 0x%02x, \nBTFMKeyError = 0x%02x, BTError = 0x%02x, BTFMKeysAdv = 0x%02x%02x\n GPIO Assert = 0x%02x, BTCErrorWake = 0x%02x\n", buf, 0x90u);
            }

            *(*(*(a1 + 40) + 8) + 48) = 0;
            *(*(*(a1 + 40) + 8) + 52) = __dst;
            *(*(*(a1 + 40) + 8) + 56) = bswap32(*(&__dst + 1));
            *(*(*(a1 + 40) + 8) + 60) = BYTE14(__dst);
            *(*(*(a1 + 40) + 8) + 64) = HIBYTE(__dst);
            v22 = sub_10000F034(v19, v20);
            (*(*v22 + 696))(v22, *(*(a1 + 40) + 8) + 48);
          }
        }
      }

      else
      {
        v25 = qword_100BCEAC8;
        if (os_log_type_enabled(qword_100BCEAC8, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 0;
          _os_log_impl(&_mh_execute_header, v25, OS_LOG_TYPE_DEFAULT, "Get LPM Bluetooth log no FixBuf", buf, 2u);
        }
      }

      CFDictionaryGetTypeID();
      v26 = CFDictionaryGetTypedValue();
      if (v26)
      {
        CFDataGetTypeID();
        v27 = CFDictionaryGetTypedValue();
        v28 = [v27 length];
        if (v27)
        {
          if ((v28 - 1) >> 8 <= 0x7C)
          {
            v29 = qword_100BCEAC8;
            if (os_log_type_enabled(qword_100BCEAC8, OS_LOG_TYPE_DEFAULT))
            {
              v30 = *(*(*(a1 + 32) + 8) + 40);
              *buf = 138412546;
              v37 = v30;
              v38 = 2112;
              *v39 = v27;
              _os_log_impl(&_mh_execute_header, v29, OS_LOG_TYPE_DEFAULT, "Get Debug Cyclic buffer log succeed (error=%@)\nlog: %@", buf, 0x16u);
            }
          }
        }

        CFDataGetTypeID();
        v31 = CFDictionaryGetTypedValue();
        v32 = [v31 length];
        if (v31)
        {
          if (v32 - 1 <= 0x2FF)
          {
            v33 = qword_100BCEAC8;
            if (os_log_type_enabled(qword_100BCEAC8, OS_LOG_TYPE_DEFAULT))
            {
              v34 = *(*(*(a1 + 32) + 8) + 40);
              *buf = 138412546;
              v37 = v34;
              v38 = 2112;
              *v39 = v31;
              _os_log_impl(&_mh_execute_header, v33, OS_LOG_TYPE_DEFAULT, "Get Debug Fixed buffer log succeed (error=%@)\nlog: %@", buf, 0x16u);
            }
          }
        }
      }
    }

    else
    {
      v23 = qword_100BCEAC8;
      if (os_log_type_enabled(qword_100BCEAC8, OS_LOG_TYPE_DEFAULT))
      {
        v24 = *(*(*(a1 + 32) + 8) + 40);
        *buf = 138412290;
        v37 = v24;
        _os_log_impl(&_mh_execute_header, v23, OS_LOG_TYPE_DEFAULT, "Get LPM Bluetooth log failed (error=%@)", buf, 0xCu);
      }
    }

    [v5 endSessionWithCompletion:0];
  }
}

void sub_10030EC68(uint64_t a1)
{
  v2 = qword_100BCEAC8;
  if (os_log_type_enabled(qword_100BCEAC8, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEFAULT, "LPMManager::stackDidStart", buf, 2u);
  }

  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_10030ED40;
  block[3] = &unk_100ADF8F8;
  block[4] = a1;
  if (qword_100B6D1F8 != -1)
  {
    dispatch_once(&qword_100B6D1F8, block);
  }
}

void sub_10030ED48()
{
  v0 = qword_100BCEAC8;
  if (os_log_type_enabled(qword_100BCEAC8, OS_LOG_TYPE_DEFAULT))
  {
    *v1 = 0;
    _os_log_impl(&_mh_execute_header, v0, OS_LOG_TYPE_DEFAULT, "LPMManager::stackWillStop", v1, 2u);
  }
}

uint64_t sub_10030EDB0(uint64_t a1, int a2, uint64_t *a3)
{
  bzero(__str, 0x800uLL);
  v16.__r_.__value_.__r.__words[2] = 0;
  v17 = 0;
  v18 = 0;
  v6 = sub_100007E30(&v16.__r_.__value_.__r.__words[2], "");
  switch(a2)
  {
    case 0:
      *buf = 0;
      sub_100007E30(&v20[4], "device -D");
      v22 = 0;
      sub_10030F8EC((a1 + 40), buf);
      goto LABEL_46;
    case 1:
      *buf = 1;
      sub_100007E30(&v20[4], "power off");
      v22 = 0;
      sub_10030F8EC((a1 + 40), buf);
      goto LABEL_46;
    case 2:
      *buf = 2;
      sub_100007E30(&v20[4], "bcm -W");
      v22 = 0;
      sub_10030F8EC((a1 + 40), buf);
      goto LABEL_46;
    case 3:
      *buf = 3;
      sub_100007E30(&v20[4], "bcm -L");
      v22 = 0;
      sub_10030F8EC((a1 + 40), buf);
      goto LABEL_46;
    case 4:
      *buf = 4;
      sub_100007E30(&v20[4], "bcm -A");
      v22 = 0;
      sub_10030F8EC((a1 + 40), buf);
      goto LABEL_46;
    case 5:
      *buf = 5;
      sub_100007E30(&v20[4], "bcm -Q");
      v22 = 0;
      sub_10030F8EC((a1 + 40), buf);
      goto LABEL_46;
    case 6:
      *buf = 6;
      sub_100007E30(&v20[4], "bcm -x");
      v22 = 0;
      sub_10030F8EC((a1 + 40), buf);
      goto LABEL_46;
    case 7:
      *buf = 7;
      sub_100007E30(&v20[4], "hci reset");
      v22 = sub_10030F954;
      sub_10030F8EC((a1 + 40), buf);
      goto LABEL_46;
    case 8:
      sub_10030F9EC(a1);
    case 9:
      sub_10030FD98(v6, a3);
    case 10:
      v16.__r_.__value_.__s.__data_[8] = 4;
      sub_10030FC50(&v16.__r_.__value_.__r.__words[1], 1u, &v16.__r_.__value_.__r.__words[2]);
      if (v18 >= 0)
      {
        v9 = &v16.__r_.__value_.__s.__data_[16];
      }

      else
      {
        v9 = v16.__r_.__value_.__r.__words[2];
      }

      snprintf(__str, 0x800uLL, "hci cmd 0x%04X %s", 65122, v9);
      *buf = 10;
      sub_100007E30(&v20[4], __str);
      v22 = sub_10030FD00;
      sub_10030F8EC((a1 + 40), buf);
      goto LABEL_46;
    case 11:
      sub_10030FF54(a1);
    case 12:
      LODWORD(v16.__r_.__value_.__r.__words[1]) = 0;
      sub_1003100A0(a1, &v16.__r_.__value_.__r.__words[1]);
    case 13:
      v16.__r_.__value_.__s.__data_[10] = 1;
      LOWORD(v16.__r_.__value_.__r.__words[1]) = 7;
      sub_10030FC50(&v16.__r_.__value_.__r.__words[1], 3u, &v16.__r_.__value_.__r.__words[2]);
      if (v18 >= 0)
      {
        v8 = &v16.__r_.__value_.__s.__data_[16];
      }

      else
      {
        v8 = v16.__r_.__value_.__r.__words[2];
      }

      snprintf(__str, 0x800uLL, "hci cmd 0x%04X %s", 65122, v8);
      *buf = 13;
      sub_100007E30(&v20[4], __str);
      v22 = sub_10030FD00;
      sub_10030F8EC((a1 + 40), buf);
      goto LABEL_46;
    case 14:
      *buf = 14;
      sub_100007E30(&v20[4], "bcm -s 0x0f,0x00,0x02,0x00,0x01,0x00,0x00,0x00,0x00,0x00,0x00,0x00");
      v22 = 0;
      sub_10030F8EC((a1 + 40), buf);
      goto LABEL_46;
    case 15:
      *buf = 15;
      sub_100007E30(&v20[4], "quit");
      v22 = 0;
      sub_10030F8EC((a1 + 40), buf);
      goto LABEL_46;
    case 16:
      v7 = (a1 + 120);
      if (*(a1 + 143) < 0)
      {
        if (*(a1 + 128))
        {
          WORD2(v16.__r_.__value_.__r.__words[1]) = 0;
          LODWORD(v16.__r_.__value_.__r.__words[1]) = 0;
          WORD2(v16.__r_.__value_.__r.__words[0]) = 0;
          LODWORD(v16.__r_.__value_.__l.__data_) = 0;
          v7 = *v7;
LABEL_35:
          if (!sub_10009D058(v7, &v16.__r_.__value_.__l.__size_))
          {
            v10 = 0;
            v11 = &v16.__r_.__value_.__s.__data_[13];
            do
            {
              v12 = *v11--;
              v16.__r_.__value_.__s.__data_[v10++] = v12;
            }

            while (v10 != 6);
            sub_10030FC50(&v16, 6u, &v16.__r_.__value_.__r.__words[2]);
            if (v18 >= 0)
            {
              v13 = &v16.__r_.__value_.__s.__data_[16];
            }

            else
            {
              v13 = v16.__r_.__value_.__r.__words[2];
            }

            snprintf(__str, 0x800uLL, "hci cmd 0xfc01 %s", v13);
            *buf = 16;
            sub_100007E30(&v20[4], __str);
            v22 = 0;
            sub_10030F8EC((a1 + 40), buf);
            if (v21 < 0)
            {
              operator delete(*&v20[4]);
            }

            v14 = qword_100BCEAC8;
            if (os_log_type_enabled(qword_100BCEAC8, OS_LOG_TYPE_DEFAULT))
            {
              *buf = 136315138;
              *v20 = __str;
              _os_log_impl(&_mh_execute_header, v14, OS_LOG_TYPE_DEFAULT, "BCM_WRITE_BDADDR:%s", buf, 0xCu);
            }
          }

          goto LABEL_48;
        }
      }

      else if (*(a1 + 143))
      {
        WORD2(v16.__r_.__value_.__r.__words[1]) = 0;
        LODWORD(v16.__r_.__value_.__r.__words[1]) = 0;
        WORD2(v16.__r_.__value_.__r.__words[0]) = 0;
        LODWORD(v16.__r_.__value_.__l.__data_) = 0;
        goto LABEL_35;
      }

      *buf = 16;
      sub_100007E30(&v20[4], "hci cmd 0xfc01 0x98 0x98 0x98 0xC2 0x87 0x43");
      v22 = 0;
      sub_10030F8EC((a1 + 40), buf);
LABEL_46:
      if (v21 < 0)
      {
        operator delete(*&v20[4]);
      }

LABEL_48:
      if (SHIBYTE(v18) < 0)
      {
        operator delete(v16.__r_.__value_.__r.__words[2]);
      }

      return 0;
    case 17:
      *buf = 17;
      sub_100007E30(&v20[4], "hci cmd 0x2011 0x00 0x12 0x12 0x12 0xB0 0x68 0x43");
      v22 = 0;
      sub_10030F8EC((a1 + 40), buf);
      goto LABEL_46;
    case 18:
      *buf = 18;
      sub_100007E30(&v20[4], "hci cmd 0x2006 0x20 0x03 0x20 0x03 0x00 0x00 0x00 0x00 0x00 0x00 0x00 0x00 0x00 0x07 0x00");
      v22 = 0;
      sub_10030F8EC((a1 + 40), buf);
      goto LABEL_46;
    case 19:
      *buf = 19;
      sub_100007E30(&v20[4], "hci cmd 0x2008 0x03 0x31 0x32 0x33");
      v22 = 0;
      sub_10030F8EC((a1 + 40), buf);
      goto LABEL_46;
    case 20:
      *buf = 20;
      sub_100007E30(&v20[4], "hci cmd 0x2024 0xFB 0x00 0x48 0x08");
      v22 = 0;
      sub_10030F8EC((a1 + 40), buf);
      goto LABEL_46;
    case 21:
      *buf = 21;
      sub_100007E30(&v20[4], "hci cmd 0x200A 0x01");
      v22 = 0;
      sub_10030F8EC((a1 + 40), buf);
      goto LABEL_46;
    case 22:
      *buf = 22;
      sub_100007E30(&v20[4], "hci cmd 0xFE45 0x01 0x01");
      v22 = 0;
      sub_10030F8EC((a1 + 40), buf);
      goto LABEL_46;
    default:
      goto LABEL_48;
  }
}

void sub_10030F69C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, void *a14, uint64_t a15, int a16, __int16 a17, char a18, char a19, uint64_t a20, void *__p, uint64_t a22, int a23, __int16 a24, char a25, char a26)
{
  if (a26 < 0)
  {
    operator delete(__p);
  }

  if (a19 < 0)
  {
    operator delete(a14);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_10030F7AC(uint64_t a1, uint64_t a2)
{
  uuid_copy(a1, a2);
  *(a1 + 16) = *(a2 + 16);
  v4 = *(a2 + 32);
  *(a1 + 24) = &off_100AE0A78;
  *(a1 + 32) = v4;
  if (v4)
  {
    sub_10000C69C(v4);
  }

  v5 = *(a2 + 48);
  *(a1 + 40) = &off_100AE0A78;
  *(a1 + 48) = v5;
  if (v5)
  {
    sub_10000C69C(v5);
  }

  v6 = *(a2 + 56);
  *(a1 + 60) = *(a2 + 60);
  *(a1 + 56) = v6;
  return a1;
}

void sub_10030F854(_Unwind_Exception *exception_object)
{
  *(v1 + 24) = v2;
  v4 = *(v1 + 32);
  if (v4)
  {
    sub_10000C808(v4);
  }

  _Unwind_Resume(exception_object);
}

void *sub_10030F870(void *a1)
{
  a1[5] = &off_100AE0A78;
  v2 = a1[6];
  if (v2)
  {
    sub_10000C808(v2);
  }

  a1[3] = &off_100AE0A78;
  v3 = a1[4];
  if (v3)
  {
    sub_10000C808(v3);
  }

  return a1;
}

uint64_t sub_10030F8EC(unint64_t *a1, uint64_t a2)
{
  v3 = a1[1];
  if (v3 >= a1[2])
  {
    result = sub_1003134D0(a1, a2);
  }

  else
  {
    *v3 = *a2;
    v4 = *(a2 + 8);
    *(v3 + 24) = *(a2 + 24);
    *(v3 + 8) = v4;
    *(a2 + 16) = 0;
    *(a2 + 24) = 0;
    *(a2 + 8) = 0;
    *(v3 + 32) = *(a2 + 32);
    result = v3 + 40;
  }

  a1[1] = result;
  return result;
}

uint64_t sub_10030F954(uint64_t a1)
{
  v2 = *a1;
  v1 = *(a1 + 8);
  if (v1 - *a1 != 6)
  {
    return 3;
  }

  if (*v2 != 14 || v2[1] != 4)
  {
    return 3;
  }

  if (!*(v1 - 1))
  {
    return 0;
  }

  if (os_log_type_enabled(qword_100BCEAC8, OS_LOG_TYPE_ERROR))
  {
    sub_100816C44();
  }

  return 112;
}

std::string *sub_10030FC50(std::string *result, unsigned int a2, std::string *a3)
{
  if (result)
  {
    if (a2 >= 1)
    {
      v4 = result;
      v5 = a2;
      do
      {
        v10 = 0;
        *__str = 0;
        v6 = v4->__r_.__value_.__s.__data_[0];
        v4 = (v4 + 1);
        snprintf(__str, 6uLL, "0x%02x ", v6);
        result = std::string::append(a3, __str);
        --v5;
      }

      while (v5);
    }

    v7 = SHIBYTE(a3->__r_.__value_.__r.__words[2]);
    if (v7 < 0)
    {
      v8 = a3->__r_.__value_.__l.__size_ - 1;
      a3->__r_.__value_.__l.__size_ = v8;
      a3 = a3->__r_.__value_.__r.__words[0];
    }

    else
    {
      v8 = v7 - 1;
      *(&a3->__r_.__value_.__s + 23) = v8 & 0x7F;
    }

    a3->__r_.__value_.__s.__data_[v8] = 0;
  }

  return result;
}

uint64_t sub_10030FD00(uint64_t a1)
{
  v1 = *a1;
  if (*(a1 + 8) - *a1 != 7)
  {
    return 3;
  }

  if (*v1 != 14 || v1[1] != 5)
  {
    return 3;
  }

  if (!v1[5])
  {
    return 0;
  }

  if (os_log_type_enabled(qword_100BCEAC8, OS_LOG_TYPE_ERROR))
  {
    sub_100816F98();
  }

  return 112;
}

uint64_t sub_1003102EC(uint64_t a1, uint64_t a2, void *a3)
{
  v3 = a2;
  v4 = a3;
  v5 = v4;
  v6 = qword_100BCEAC8;
  if (v3 == 3 && v4)
  {
    if (os_log_type_enabled(qword_100BCEAC8, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 67109378;
      v13 = 3;
      v14 = 2112;
      v15 = v5;
      _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "LPM: params reason %d, %@", buf, 0x12u);
    }

    v7 = [v5 dataBlob];
    if (v7)
    {
      v8 = [v5 dataBlob];
      v9 = [v8 length] > 0xA;

      if (!v9)
      {
        operator new();
      }
    }

    if (os_log_type_enabled(qword_100BCEAC8, OS_LOG_TYPE_ERROR))
    {
      v10 = [v5 dataBlob];
      sub_100817388(v10, buf);
    }
  }

  else if (os_log_type_enabled(qword_100BCEAC8, OS_LOG_TYPE_ERROR))
  {
    sub_100817314();
  }

  return 0;
}

void sub_1003109D0(uint64_t a1, void *a2)
{
  v2 = a2;
  v3 = qword_100BCEAC8;
  if (os_log_type_enabled(qword_100BCEAC8, OS_LOG_TYPE_DEFAULT))
  {
    *v4 = 0;
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "LPM: Setting host wake Tx Diag Parameters", v4, 2u);
  }

  operator new();
}

uint64_t sub_100310BB0(uint64_t a1)
{
  v2 = qword_100BCEAC8;
  if (os_log_type_enabled(qword_100BCEAC8, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEFAULT, "LPM: update set host wake offload scan Parameters timestamp", buf, 2u);
  }

  v3 = sub_10000E92C();
  sub_100007E30(buf, "LPM");
  sub_100007E30(__p, "TimestampOverride");
  v4 = (*(*v3 + 128))(v3, buf, __p, a1 + 236);
  if (v30 < 0)
  {
    operator delete(__p[0]);
  }

  if ((v33[9] & 0x80000000) != 0)
  {
    operator delete(*buf);
    if (v4)
    {
      goto LABEL_7;
    }
  }

  else if (v4)
  {
LABEL_7:
    v5 = *(a1 + 236);
    *(*(a1 + 248) + 109) = v5;
    v6 = qword_100BCEAC8;
    v7 = os_log_type_enabled(qword_100BCEAC8, OS_LOG_TYPE_DEFAULT);
    result = 0;
    if (!v7)
    {
      return result;
    }

    *buf = 67109120;
    *&buf[4] = v5;
    v9 = "setLpmHostWakeScanParameter timestamp defaults override 0x%08X";
    v10 = v6;
    v11 = 8;
    goto LABEL_28;
  }

  Current = CFAbsoluteTimeGetCurrent();
  __p[0] = 0xBFF0000000000000;
  v13 = Current;
  if (TMGetReferenceTime())
  {
    v14 = __p[0];
    v15 = qword_100BCEAC8;
    if (os_log_type_enabled(qword_100BCEAC8, OS_LOG_TYPE_DEFAULT))
    {
      v16 = [NSDate dateWithTimeIntervalSinceReferenceDate:*&v14];
      v17 = [v16 description];
      v18 = v17;
      v19 = [v17 UTF8String];
      *buf = 134219010;
      *&buf[4] = v14;
      v32 = 2080;
      *v33 = v19;
      *&v33[8] = 2048;
      v34 = *&v14 - v13;
      v35 = 2048;
      v36 = 0xBFF0000000000000;
      v37 = 1024;
      v38 = -1;
      _os_log_impl(&_mh_execute_header, v15, OS_LOG_TYPE_DEFAULT, "System reference time for DeviceID calculation %f, (%s). delta: %f ±%f reliability %d", buf, 0x30u);

      v14 = __p[0];
    }

    v13 = *&v14;
  }

  else
  {
    v20 = qword_100BCEAC8;
    if (os_log_type_enabled(qword_100BCEAC8, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v20, OS_LOG_TYPE_DEFAULT, "System reference time for DeviceID calculation not available", buf, 2u);
    }
  }

  v21 = *(a1 + 240);
  v22 = v13 - v21;
  if (v13 < v21)
  {
    if (os_log_type_enabled(qword_100BCEAC8, OS_LOG_TYPE_ERROR))
    {
      sub_1008173DC();
    }

    v22 = 0;
  }

  v23 = *(a1 + 248);
  v24 = *(v23 + 113);
  if (!*(v23 + 113))
  {
LABEL_26:
    v26 = v22 >> *(v23 + 115);
    *(v23 + 109) = v26;
    v27 = qword_100BCEAC8;
    if (!os_log_type_enabled(qword_100BCEAC8, OS_LOG_TYPE_DEFAULT))
    {
      return 0;
    }

    v28 = *(a1 + 240);
    *buf = 134218496;
    *&buf[4] = v22;
    v32 = 1024;
    *v33 = v26;
    *&v33[4] = 1024;
    *&v33[6] = v28;
    v9 = "setLpmHostWakeScanParameter timestamp (current) parameter: (%llu ticks) 0x%08X, clock drift %u";
    v10 = v27;
    v11 = 24;
LABEL_28:
    _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEFAULT, v9, buf, v11);
    return 0;
  }

  if (v24 == 128)
  {
    v25 = 24000000;
    goto LABEL_25;
  }

  if (v24 == 64)
  {
    v25 = 1000000;
LABEL_25:
    v22 *= v25;
    goto LABEL_26;
  }

  if (os_log_type_enabled(qword_100BCEAC8, OS_LOG_TYPE_ERROR))
  {
    sub_10081745C();
  }

  return 3;
}

void sub_100310FD8(uint64_t a1, uint64_t a2)
{
  v4 = qword_100BCEAC8;
  if (os_log_type_enabled(qword_100BCEAC8, OS_LOG_TYPE_DEFAULT))
  {
    v5 = 134217984;
    v6 = a2;
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "CENRebootIntoLowPowerModeAsync: cenResult %ld", &v5, 0xCu);
  }

  *(*(*(a1 + 32) + 8) + 24) = a2 != 0;
  sub_100364600(&stru_100B6D228);
}

uint64_t sub_1003110A8(uint64_t a1, void *a2)
{
  v3 = a2;
  if (*(a1 + 24) == 1 && (*(a1 + 25) & 1) != 0)
  {
    if (*(a1 + 176) >= 8uLL)
    {
      if (os_log_type_enabled(qword_100BCEAC8, OS_LOG_TYPE_ERROR))
      {
        sub_1008176B4();
      }

LABEL_26:
      v4 = 1;
      goto LABEL_27;
    }

    sub_10004DFB4(uu2, v3);
    if (a1 + 168 != sub_10004E34C(a1 + 160, uu2))
    {
      if (os_log_type_enabled(qword_100BCEAC8, OS_LOG_TYPE_ERROR))
      {
        sub_1008174CC();
      }

      goto LABEL_26;
    }

    if (qword_100B508C0 != -1)
    {
      sub_100816128();
    }

    if (!sub_10004EE74(off_100B508B8, v3))
    {
      if (os_log_type_enabled(qword_100BCEAC8, OS_LOG_TYPE_ERROR))
      {
        sub_10081753C();
      }

      goto LABEL_26;
    }

    v37 = 0;
    memset(v36, 0, sizeof(v36));
    *uu2 = 0u;
    if (qword_100B508C0 != -1)
    {
      sub_100816128();
    }

    sub_1007C5A1C(off_100B508B8, v3, uu2);
    v20 = 0u;
    v21 = 0u;
    v19 = 0u;
    if (qword_100B508D0 != -1)
    {
      sub_1008175AC();
    }

    *&v19 = sub_100046458(off_100B508C8, v3, 0);
    sub_10000C704(&v19 + 1, &v36[2] + 8, 0x10uLL);
    sub_10000C704(&v20 + 1, v36 + 12, 0x10uLL);
    v5 = *(a1 + 176);
    DWORD2(v21) = v5;
    BYTE12(v21) = v5 == 0;
    if (v19)
    {
      if (!sub_10000D26C(&v19 + 8) && !sub_10000D26C(&v20 + 8))
      {
        sub_10004DFB4(buf, v3);
        v17[0] = buf;
        v7 = sub_100313288((a1 + 160), buf, &unk_1008A9BD0, v17, __p);
        sub_10030BA30((v7 + 6), &v19);
        v8 = qword_100BCEAC8;
        if (os_log_type_enabled(qword_100BCEAC8, OS_LOG_TYPE_DEBUG))
        {
          sub_10004DFB4(uu1, v3);
          v17[0] = uu1;
          v9 = sub_100313288((a1 + 160), uu1, &unk_1008A9BD0, v17, __p);
          v10 = sub_100063D0C(v9[6]);
          sub_10004DFB4(v25, v3);
          __p[0] = v25;
          v11 = sub_100313288((a1 + 160), v25, &unk_1008A9BD0, __p, v24);
          v12 = v17;
          sub_10000C250((v11 + 7), v17);
          if (v18 < 0)
          {
            v12 = v17[0];
          }

          sub_10004DFB4(v24, v3);
          v23 = v24;
          v13 = sub_100313288((a1 + 160), v24, &unk_1008A9BD0, &v23, &v22);
          sub_10000C250((v13 + 9), __p);
          if (v16 >= 0)
          {
            v14 = __p;
          }

          else
          {
            v14 = __p[0];
          }

          *buf = 138413058;
          v28 = v3;
          v29 = 2112;
          v30 = v10;
          v31 = 2080;
          v32 = v12;
          v33 = 2080;
          v34 = v14;
          _os_log_debug_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEBUG, "Device %@ is added to the list with address: %@, irk: %s, ltk: %s", buf, 0x2Au);
          if (v16 < 0)
          {
            operator delete(__p[0]);
          }

          if (v18 < 0)
          {
            operator delete(v17[0]);
          }
        }

        v4 = 0;
        goto LABEL_31;
      }

      if (os_log_type_enabled(qword_100BCEAC8, OS_LOG_TYPE_ERROR))
      {
        sub_1008175D4();
      }
    }

    else if (os_log_type_enabled(qword_100BCEAC8, OS_LOG_TYPE_ERROR))
    {
      sub_100817644();
    }

    v4 = 1;
LABEL_31:
    *(&v20 + 1) = &off_100AE0A78;
    if (v21)
    {
      sub_10000C808(v21);
    }

    *(&v19 + 1) = &off_100AE0A78;
    if (v20)
    {
      sub_10000C808(v20);
    }

    goto LABEL_27;
  }

  if (os_log_type_enabled(qword_100BCEAC8, OS_LOG_TYPE_ERROR))
  {
    sub_1008160EC();
  }

  v4 = 11;
LABEL_27:

  return v4;
}

void sub_100311594(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, void *__p, uint64_t a13, int a14, __int16 a15, char a16, char a17, uint64_t a18, uint64_t a19, uint64_t a20)
{
  if (a17 < 0)
  {
    operator delete(__p);
  }

  sub_10030BA80(&a18);
  _Unwind_Resume(a1);
}

uint64_t sub_100311628(uint64_t a1, void *a2)
{
  v3 = a2;
  if (*(a1 + 24) == 1 && (*(a1 + 25) & 1) != 0)
  {
    sub_10004DFB4(uu2, v3);
    v4 = sub_10004E34C(a1 + 160, uu2);
    if ((a1 + 168) == v4)
    {
      if (os_log_type_enabled(qword_100BCEAC8, OS_LOG_TYPE_ERROR))
      {
        sub_1008176F0();
      }

      v5 = 1;
    }

    else
    {
      sub_1003137F8((a1 + 160), v4);
      v5 = 0;
    }
  }

  else
  {
    if (os_log_type_enabled(qword_100BCEAC8, OS_LOG_TYPE_ERROR))
    {
      sub_1008160EC();
    }

    v5 = 11;
  }

  return v5;
}

uint64_t sub_10031174C(uint64_t a1, void *a2)
{
  if (*(a1 + 24) == 1 && (*(a1 + 25) & 1) != 0)
  {
    v2 = *(a1 + 160);
    v3 = (a1 + 168);
    if (v2 != (a1 + 168))
    {
      do
      {
        v24 = 0u;
        v25 = 0u;
        v22 = 0u;
        v23 = 0u;
        sub_10030F7AC(&v22, (v2 + 4));
        v5 = sub_10004DF60(&v22);
        v7 = a2[1];
        v6 = a2[2];
        if (v7 >= v6)
        {
          v9 = (v7 - *a2) >> 3;
          if ((v9 + 1) >> 61)
          {
            sub_1000C7698();
          }

          v10 = v6 - *a2;
          v11 = v10 >> 2;
          if (v10 >> 2 <= (v9 + 1))
          {
            v11 = v9 + 1;
          }

          if (v10 >= 0x7FFFFFFFFFFFFFF8)
          {
            v12 = 0x1FFFFFFFFFFFFFFFLL;
          }

          else
          {
            v12 = v11;
          }

          v21 = a2;
          if (v12)
          {
            sub_1003138F4(a2, v12);
          }

          v17 = 0;
          v18 = (8 * v9);
          v20 = 0;
          *v18 = v5;
          v19 = 8 * v9 + 8;
          sub_100313844(a2, &v17);
          v8 = a2[1];
          sub_10031393C(&v17);
        }

        else
        {
          *v7 = v5;
          v8 = v7 + 1;
          a2[1] = v8;
        }

        a2[1] = v8;
        *(&v24 + 1) = &off_100AE0A78;
        if (v25)
        {
          sub_10000C808(v25);
        }

        *(&v23 + 1) = &off_100AE0A78;
        if (v24)
        {
          sub_10000C808(v24);
        }

        v13 = v2[1];
        if (v13)
        {
          do
          {
            v14 = v13;
            v13 = *v13;
          }

          while (v13);
        }

        else
        {
          do
          {
            v14 = v2[2];
            v15 = *v14 == v2;
            v2 = v14;
          }

          while (!v15);
        }

        v2 = v14;
      }

      while (v14 != v3);
    }

    return 0;
  }

  else
  {
    if (os_log_type_enabled(qword_100BCEAC8, OS_LOG_TYPE_ERROR))
    {
      sub_1008160EC();
    }

    return 11;
  }
}

void sub_100311970(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);

  sub_10030F870(va);
  _Unwind_Resume(a1);
}

uint64_t sub_1003119A8(uint64_t a1)
{
  if (*(a1 + 24) == 1 && (*(a1 + 25) & 1) != 0)
  {
    v1 = (a1 + 168);
    sub_100313024(a1 + 160, *(a1 + 168));
    result = 0;
    *v1 = 0;
    v1[1] = 0;
    *(v1 - 1) = v1;
  }

  else
  {
    if (os_log_type_enabled(qword_100BCEAC8, OS_LOG_TYPE_ERROR))
    {
      sub_1008160EC();
    }

    return 11;
  }

  return result;
}

uint64_t sub_100311A24(uint64_t a1, uint64_t a2, void *a3)
{
  v3 = a2;
  v5 = a3;
  v6 = qword_100BCEAC8;
  if (os_log_type_enabled(qword_100BCEAC8, OS_LOG_TYPE_DEFAULT))
  {
    v7 = *(a1 + 248);
    *buf = 67109634;
    *&buf[4] = v3;
    *v28 = 2048;
    *&v28[2] = v7;
    *&v28[10] = 2112;
    *&v28[12] = v5;
    _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "LPM: setControllerLowPowerModeParams reason %d, %p, input %@", buf, 0x1Cu);
  }

  if (_os_feature_enabled_impl())
  {
    if (v3 == 3)
    {
      if (v5)
      {
        *buf = 0;
        *v28 = buf;
        *&v28[8] = 0x3032000000;
        *&v28[16] = sub_100042274;
        v29 = sub_1000425CC;
        v30 = 0;
        v25[0] = 0;
        v25[1] = v25;
        v25[2] = 0x2020000000;
        v26 = 0;
        v8 = dispatch_semaphore_create(0);
        v9 = qword_100BCEAC8;
        if (os_log_type_enabled(qword_100BCEAC8, OS_LOG_TYPE_DEFAULT))
        {
          *v24 = 0;
          _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEFAULT, "Set seaship flag for SEP logging", v24, 2u);
        }

        v10 = +[NFHardwareManager sharedHardwareManager];
        v23[0] = _NSConcreteStackBlock;
        v23[1] = 3221225472;
        v23[2] = sub_100311EE4;
        v23[3] = &unk_100AEACD8;
        v23[4] = buf;
        v23[5] = v25;
        v23[6] = v8;
        v11 = [v10 startLPEMConfigSession:v23];

        dispatch_semaphore_wait(v8, 0xFFFFFFFFFFFFFFFFLL);
        v12 = sub_10000E92C();
        v13 = (*(*v12 + 8))(v12);
        if ((v13 & 1) == 0)
        {
          v15 = sub_10000E92C();
          v13 = (*(*v15 + 24))(v15);
          if ((v13 & 1) == 0)
          {
            v13 = [v5 configFlags];
            if ((v13 & 0x10) != 0)
            {
              v16 = qword_100BCEAC8;
              if (os_log_type_enabled(qword_100BCEAC8, OS_LOG_TYPE_DEFAULT))
              {
                *v24 = 0;
                _os_log_impl(&_mh_execute_header, v16, OS_LOG_TYPE_DEFAULT, "Disabling DebugMode configuration flag", v24, 2u);
              }

              v13 = [v5 setConfigFlags:{objc_msgSend(v5, "configFlags") & 0xFFFFFFEF}];
            }
          }
        }

        v17 = sub_10000C7D0(v13, v14);
        v18 = (*(*v17 + 4248))(v17);
        if (v18)
        {
          if (*(a1 + 256))
          {
            operator delete();
          }

          sub_1003109D0(0, v5);
        }

        v20 = sub_10000C7D0(v18, v19);
        if ((*(*v20 + 4240))(v20))
        {
          if (*(a1 + 248))
          {
            operator delete();
          }

          *(a1 + 248) = sub_1003102EC(0, 3, v5);
          *(a1 + 240) = [v5 maxClockDriftSeconds];
          if (*(a1 + 248))
          {
            v21 = 0;
          }

          else
          {
            v21 = 3;
          }
        }

        else
        {
          if (os_log_type_enabled(qword_100BCEAC8, OS_LOG_TYPE_ERROR))
          {
            sub_10081780C();
          }

          v21 = 1405;
        }

        _Block_object_dispose(v25, 8);
        _Block_object_dispose(buf, 8);
      }

      else
      {
        if (os_log_type_enabled(qword_100BCEAC8, OS_LOG_TYPE_ERROR))
        {
          sub_100817848();
        }

        v21 = 3;
      }
    }

    else
    {
      if (os_log_type_enabled(qword_100BCEAC8, OS_LOG_TYPE_ERROR))
      {
        sub_10081779C();
      }

      v21 = 11;
    }
  }

  else
  {
    if (os_log_type_enabled(qword_100BCEAC8, OS_LOG_TYPE_ERROR))
    {
      sub_100817760();
    }

    v21 = 1405;
  }

  return v21;
}

void sub_100311E98(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, id a28)
{
  _Block_object_dispose(&a19, 8);
  _Block_object_dispose(&a23, 8);

  _Unwind_Resume(a1);
}