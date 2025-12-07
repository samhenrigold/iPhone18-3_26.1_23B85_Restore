@interface SetProperty
@end

@implementation SetProperty

void __httpconnection_SetProperty_block_invoke(void *a1)
{
  v2 = a1[5];
  v3 = a1[6];
  v4 = a1[7];
  v21 = 0;
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  if (CFEqual(v3, @"TransportDevice"))
  {
    if (*(DerivedStorage + 224))
    {
      __httpconnection_SetProperty_block_invoke_cold_1(&v21);
    }

    else if (v4 && (v6 = CFGetTypeID(v4), v6 == APTransportDeviceGetTypeID(v6, v7)))
    {
      *(DerivedStorage + 248) = CFRetain(v4);
    }

    else
    {
      __httpconnection_SetProperty_block_invoke_cold_2();
    }

    goto LABEL_67;
  }

  if (CFEqual(v3, @"RemoteNetworkIPAddress"))
  {
    if (v4 && (v8 = CFGetTypeID(v4), v8 == APSNetworkAddressGetTypeID()))
    {
      APSNetworkAddressGetSocketAddr();
      *(DerivedStorage + 164) = *v20;
      *(DerivedStorage + 176) = *&v20[12];
    }

    else
    {
      __httpconnection_SetProperty_block_invoke_cold_3();
    }

    goto LABEL_67;
  }

  if (CFEqual(v3, @"RemoteNetworkPort"))
  {
    *(DerivedStorage + 192) = CFGetInt64();
    if (v21)
    {
      __httpconnection_SetProperty_block_invoke_cold_4(v21);
    }

    goto LABEL_67;
  }

  if (CFEqual(v3, @"BoundInterfaceIndex"))
  {
    *(DerivedStorage + 196) = CFGetInt64();
    if (v21)
    {
      __httpconnection_SetProperty_block_invoke_cold_5(v21);
    }

    goto LABEL_67;
  }

  if (CFEqual(v3, @"ConnectedSocket"))
  {
    if (*(DerivedStorage + 224))
    {
      if (v4 && (v9 = CFGetTypeID(v4), v9 == APTransportSocketGetTypeID(v9, v10)))
      {
        *(DerivedStorage + 248) = APTransportSocketGetSocket(v4);
      }

      else
      {
        __httpconnection_SetProperty_block_invoke_cold_6();
      }
    }

    else
    {
      __httpconnection_SetProperty_block_invoke_cold_7(&v21);
    }

    goto LABEL_67;
  }

  if (CFEqual(v3, @"DACPID"))
  {
    *(DerivedStorage + 328) = CFGetInt64();
    if (v21)
    {
      __httpconnection_SetProperty_block_invoke_cold_8(v21);
    }

    goto LABEL_67;
  }

  if (CFEqual(v3, @"DACPRemoteID"))
  {
    *(DerivedStorage + 336) = CFGetInt64();
    if (v21)
    {
      __httpconnection_SetProperty_block_invoke_cold_9(v21);
    }

    goto LABEL_67;
  }

  if (CFEqual(v3, @"DoNotWakeDevice"))
  {
    *(DerivedStorage + 340) = CFGetInt64() != 0;
    if (v21)
    {
      __httpconnection_SetProperty_block_invoke_cold_10(v21);
    }

    goto LABEL_67;
  }

  if (CFEqual(v3, @"PackageSendTimeout"))
  {
    *(DerivedStorage + 344) = CFGetInt64Ranged();
    if (v21)
    {
      __httpconnection_SetProperty_block_invoke_cold_11(v21);
    }

    else
    {
      v11 = *(DerivedStorage + 264);
      if (*(DerivedStorage + 256))
      {
        if (v11)
        {
          HTTPConnectionSetTimeout();
        }
      }

      else if (v11)
      {
        HTTPClientSetTimeout();
      }

      if (gLogCategory_APTransportConnectionHTTP <= 40 && (gLogCategory_APTransportConnectionHTTP != -1 || _LogCategory_Initialize()))
      {
        LogPrintF(&gLogCategory_APTransportConnectionHTTP, "OSStatus httpconnection_setPropertyInternal(CMBaseObjectRef, CFStringRef, CFTypeRef)", 33554472, "[%{ptr}] Package send timeout set to %d seconds", v2, *(DerivedStorage + 344));
      }
    }

    goto LABEL_67;
  }

  if (CFEqual(v3, @"SessionUUID"))
  {
    if (v4 && (v12 = CFGetTypeID(v4), v12 == CFUUIDGetTypeID()))
    {
      *(DerivedStorage + 128) = CFRetain(v4);
    }

    else
    {
      __httpconnection_SetProperty_block_invoke_cold_12();
    }

    goto LABEL_67;
  }

  if (CFEqual(v3, @"UserName"))
  {
    if (v4)
    {
      v13 = CFGetTypeID(v4);
      if (v13 != CFStringGetTypeID())
      {
        __httpconnection_SetProperty_block_invoke_cold_13();
        goto LABEL_67;
      }

      v14 = *(DerivedStorage + 352);
      *(DerivedStorage + 352) = v4;
      goto LABEL_57;
    }

    v14 = *(DerivedStorage + 352);
    *(DerivedStorage + 352) = 0;
    goto LABEL_65;
  }

  if (CFEqual(v3, @"Password"))
  {
    if (v4)
    {
      v15 = CFGetTypeID(v4);
      if (v15 != CFStringGetTypeID())
      {
        __httpconnection_SetProperty_block_invoke_cold_14();
        goto LABEL_67;
      }

      v14 = *(DerivedStorage + 360);
      *(DerivedStorage + 360) = v4;
LABEL_57:
      CFRetain(v4);
      goto LABEL_65;
    }

    v14 = *(DerivedStorage + 360);
    *(DerivedStorage + 360) = 0;
LABEL_65:
    if (v14)
    {
      CFRelease(v14);
    }

    goto LABEL_67;
  }

  if (CFEqual(v3, @"UseRFC2617DigestAuth"))
  {
    *(DerivedStorage + 368) = CFGetInt64() != 0;
    if (v21)
    {
      __httpconnection_SetProperty_block_invoke_cold_15(v21);
    }
  }

  else if (CFEqual(v3, @"UserAgent"))
  {
    if (v4 && (v16 = CFGetTypeID(v4), v16 != CFStringGetTypeID()))
    {
      __httpconnection_SetProperty_block_invoke_cold_16();
    }

    else
    {
      v19 = *(DerivedStorage + 32);
      v18 = (DerivedStorage + 32);
      v17 = v19;
      if (v19)
      {
        free(v17);
        *v18 = 0;
      }

      if (v4)
      {
        ASPrintF(v18, "%@", v4);
      }
    }
  }

  else
  {
    v21 = -12784;
  }

LABEL_67:
  *(*(a1[4] + 8) + 24) = v21;
}

uint64_t __tcpconnection_SetProperty_block_invoke(void *a1)
{
  v2 = a1[5];
  v3 = a1[6];
  v4 = a1[7];
  v11 = 0;
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  if (*DerivedStorage)
  {
    __tcpconnection_SetProperty_block_invoke_cold_1(&v11);
  }

  else
  {
    v6 = DerivedStorage;
    if (CFEqual(v3, @"PackageType"))
    {
      if (FigCFEqual())
      {
        *(v6 + 26) = APTransportPackageTCPGetPayloadSize;
        *(v6 + 27) = APTransportPackageTCPCreateWithBBuf;
        *(v6 + 28) = APTransportPackageTCPCreate;
        *(v6 + 29) = APTransportPackageTCPCreateWithMessageSize;
        APTransportPackageTCPGetHeaderSize(v6 + 50);
        goto LABEL_16;
      }

      if (FigCFEqual())
      {
        *(v6 + 26) = APTPackageMusicDataGetPayloadSize;
        *(v6 + 27) = APTPackageMusicDataCreateWithBBuf;
        *(v6 + 28) = APTPackageMusicDataCreate;
        *(v6 + 29) = APTPackageMusicDataCreateWithMessageSize;
        APTPackageMusicDataGetHeaderSize(v6 + 50);
        goto LABEL_16;
      }

      if (FigCFEqual())
      {
        *(v6 + 26) = 0;
        *(v6 + 27) = 0;
        *(v6 + 28) = APTransportPackageRTPCreate;
        *(v6 + 29) = APTransportPackageRTPCreateWithMessageSize;
        goto LABEL_16;
      }

      if (gLogCategory_APTransportConnectionTCP <= 90 && (gLogCategory_APTransportConnectionTCP != -1 || _LogCategory_Initialize()))
      {
        LogPrintF(&gLogCategory_APTransportConnectionTCP, "OSStatus tcpconnection_setPropertyInternal(CMBaseObjectRef, CFStringRef, CFTypeRef)", 33554522, "[%{ptr}] Unhandled package type %'@.", v2, v4);
      }

      v9 = -12780;
      goto LABEL_31;
    }

    if (CFEqual(v3, @"RemoteNetworkIPAddress"))
    {
      if (*(v6 + 19))
      {
        __tcpconnection_SetProperty_block_invoke_cold_2();
      }

      else
      {
        if (v4)
        {
          v7 = CFGetTypeID(v4);
          if (v7 == APSNetworkAddressGetTypeID())
          {
            APSNetworkAddressGetSocketAddr();
            *(v6 + 92) = *v10;
            *(v6 + 104) = *&v10[12];
LABEL_15:
            SockAddrSetPort();
            goto LABEL_16;
          }
        }

        __tcpconnection_SetProperty_block_invoke_cold_3();
      }
    }

    else if (CFEqual(v3, @"RemoteNetworkPort"))
    {
      if (*(v6 + 19))
      {
        __tcpconnection_SetProperty_block_invoke_cold_4();
      }

      else
      {
        *(v6 + 30) = CFGetInt64();
        if (!v11)
        {
          goto LABEL_15;
        }

        __tcpconnection_SetProperty_block_invoke_cold_5(v11);
      }
    }

    else
    {
      if (!CFEqual(v3, @"BoundInterfaceIndex"))
      {
        v9 = -12784;
LABEL_31:
        v11 = v9;
        goto LABEL_16;
      }

      if (*(v6 + 19))
      {
        __tcpconnection_SetProperty_block_invoke_cold_6();
      }

      else
      {
        *(v6 + 31) = CFGetInt64();
        if (v11)
        {
          __tcpconnection_SetProperty_block_invoke_cold_7(v11);
        }
      }
    }
  }

LABEL_16:
  *(*(a1[4] + 8) + 24) = v11;
  result = FigCFEqual();
  if (!result)
  {
    *(*(a1[4] + 8) + 24) = 0;
  }

  return result;
}

uint64_t __stream_SetProperty_block_invoke(void *a1)
{
  v2 = a1[6];
  v3 = a1[7];
  if (*(CMBaseObjectGetDerivedStorage() + 24))
  {
    result = __stream_SetProperty_block_invoke_cold_1();
    v8 = -16617;
    goto LABEL_7;
  }

  APTransportConnectionGetCMBaseObject();
  v5 = v4;
  v6 = *(*(CMBaseObjectGetVTable() + 8) + 56);
  if (!v6)
  {
    v8 = -12782;
LABEL_6:
    result = APSLogErrorAt();
    goto LABEL_7;
  }

  result = v6(v5, v2, v3);
  v8 = result;
  if (result)
  {
    goto LABEL_6;
  }

LABEL_7:
  *(*(a1[4] + 8) + 24) = v8;
  return result;
}

void __unbufnw_SetProperty_block_invoke(uint64_t a1)
{
  unbufnwGuts_connectionReceivePackages(*(a1 + 32));
  v2 = *(a1 + 32);

  CFRelease(v2);
}

uint64_t __httpconnection_SetProperty_block_invoke_cold_1(_DWORD *a1)
{
  result = APSLogErrorAt();
  *a1 = -72321;
  return result;
}

uint64_t __httpconnection_SetProperty_block_invoke_cold_7(_DWORD *a1)
{
  result = APSLogErrorAt();
  *a1 = -72321;
  return result;
}

uint64_t __tcpconnection_SetProperty_block_invoke_cold_1(_DWORD *a1)
{
  OUTLINED_FUNCTION_2();
  APSLogErrorAt();
  *a1 = -12785;

  return APSSignalErrorAt();
}

uint64_t __tcpconnection_SetProperty_block_invoke_cold_2()
{
  OUTLINED_FUNCTION_2();
  APSLogErrorAt();
  OUTLINED_FUNCTION_1_1();
  OUTLINED_FUNCTION_1_5();

  return APSSignalErrorAt();
}

uint64_t __tcpconnection_SetProperty_block_invoke_cold_3()
{
  OUTLINED_FUNCTION_2();
  APSLogErrorAt();
  OUTLINED_FUNCTION_1_1();
  OUTLINED_FUNCTION_1_5();

  return APSSignalErrorAt();
}

uint64_t __tcpconnection_SetProperty_block_invoke_cold_4()
{
  OUTLINED_FUNCTION_2();
  APSLogErrorAt();
  OUTLINED_FUNCTION_1_1();
  OUTLINED_FUNCTION_1_5();

  return APSSignalErrorAt();
}

uint64_t __tcpconnection_SetProperty_block_invoke_cold_6()
{
  OUTLINED_FUNCTION_2();
  APSLogErrorAt();
  OUTLINED_FUNCTION_1_1();
  OUTLINED_FUNCTION_1_5();

  return APSSignalErrorAt();
}

@end