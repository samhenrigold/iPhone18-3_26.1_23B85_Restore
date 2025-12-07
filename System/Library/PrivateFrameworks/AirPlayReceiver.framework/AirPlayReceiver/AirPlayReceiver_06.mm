uint64_t APReceiverRequestProcessorCopyProperty(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = *(*(CMBaseObjectGetVTable() + 16) + 64);
  if (!v6)
  {
    return 0;
  }

  return v6(a1, a2, a3);
}

uint64_t _CreateHTTPServerForPort(uint64_t a1, int a2)
{
  if (HTTPServerCreate())
  {
    APSLogErrorAt();
  }

  else
  {
    MEMORY[0xEC] = -a2;
    if (gLogCategory_AirPlayReceiverServer <= 50 && (gLogCategory_AirPlayReceiverServer != -1 || _LogCategory_Initialize()))
    {
      LogPrintF(&gLogCategory_AirPlayReceiverServer, "HTTPServerRef _CreateHTTPServerForPort(AirPlayReceiverServerRef, int)", 33554482, "Starting HTTP server on port %d\n", a2);
    }

    HTTPServerSetDispatchQueue();
  }

  return 0;
}

void _HandleHTTPConnectionCreated(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t a4)
{
  *&v11.sa_len = 0;
  *&v11.sa_data[6] = 0;
  v13 = 0;
  v12 = 0;
  *&v8.sa_len = 0;
  *&v8.sa_data[6] = 0;
  v10 = 0;
  v9 = 0;
  v7 = 28;
  getsockname(*(a2 + 136), &v11, &v7);
  v7 = 28;
  getpeername(*(a2 + 136), &v8, &v7);
  if (gLogCategory_AirPlayReceiverServer <= 50 && (gLogCategory_AirPlayReceiverServer != -1 || _LogCategory_Initialize()))
  {
    LogPrintF(&gLogCategory_AirPlayReceiverServer, "void _HandleHTTPConnectionCreated(HTTPServerRef, HTTPConnectionRef, void *, void *)", 33554482, "*** [%{ptr}] HTTP connection from %##a to %##a created [%{ptr}]\n", a4, &v8, &v11, a2);
  }

  *a3 = a4;
  a3[1] = a2;
  a3[2] = 0;
  v14 = 0;
  v16 = 0;
  v20 = 0;
  v22 = 0u;
  v15 = a3;
  v17 = _HandleHTTPConnectionInitialize;
  v18 = _HandleHTTPConnectionFinalize;
  v19 = _HandleHTTPConnectionClose;
  v21 = _HandleHTTPConnectionMessage;
  HTTPConnectionSetDelegate();
  _UpdateIdleTimeoutTimer(a4);
}

void _UpdateIdleTimeoutTimer(uint64_t a1)
{
  v2 = *(a1 + 80);
  if (v2 && *(v2 + 56) || (v3 = *(a1 + 96)) != 0 && *(v3 + 56))
  {
    if (!*(a1 + 136))
    {
      v4 = dispatch_source_create(MEMORY[0x277D85D38], 0, 0, *(a1 + 88));
      *(a1 + 136) = v4;
      if (v4)
      {
        CFRetain(a1);
        dispatch_set_context(*(a1 + 136), a1);
        dispatch_source_set_event_handler_f(*(a1 + 136), _HandleIdleTimeoutTimerFired);
        dispatch_source_set_cancel_handler_f(*(a1 + 136), _HandleIdleTimeoutTimerCanceled);
        v5 = *(a1 + 136);
        v6 = dispatch_time(0, 90000000000);
        dispatch_source_set_timer(v5, v6, 0x14F46B0400uLL, 0x53D1AC100uLL);
        v7 = *(a1 + 136);

        dispatch_resume(v7);
      }

      else
      {

        APSLogErrorAt();
      }
    }
  }

  else
  {
    v8 = *(a1 + 136);
    if (v8)
    {
      dispatch_source_cancel(*(a1 + 136));
      dispatch_release(v8);
      *(a1 + 136) = 0;
    }
  }
}

uint64_t _HandleIdleTimeoutTimerFired(void *a1)
{
  v2 = mach_absolute_time();
  v3 = a1[10];
  if (v3)
  {
    _TimeoutIdleHTTPConnections(v3, a1[19], v2);
  }

  result = a1[12];
  if (result)
  {
    v5 = a1[19];

    return _TimeoutIdleHTTPConnections(result, v5, v2);
  }

  return result;
}

uint64_t _TimeoutIdleHTTPConnections(uint64_t result, unint64_t a2, uint64_t a3)
{
  v3 = *(result + 56);
  if (v3)
  {
    v6 = result;
    do
    {
      v7 = v3;
      v3 = *(v3 + 16);
      result = *(*(v7 + 40) + 280);
      if (result)
      {
        result = CFObjectGetInt64();
        if (result)
        {
          continue;
        }
      }

      if (a3 - *(v7 + 408) > a2)
      {
        if (gLogCategory_AirPlayReceiverServer <= 50 && (gLogCategory_AirPlayReceiverServer != -1 || _LogCategory_Initialize()))
        {
          LogPrintF(&gLogCategory_AirPlayReceiverServer, "void _TimeoutIdleHTTPConnections(HTTPServerRef, uint64_t, uint64_t)", 33554482, "Timing out connection %##a -> %##a\n", v7 + 256, v7 + 228);
        }

        result = _DestroyHTTPConnection(v6, v7);
      }
    }

    while (v3);
  }

  return result;
}

uint64_t _HandleHTTPConnectionMessage(uint64_t a1, void *a2, CFTypeRef *a3)
{
  v5 = a1;
  v131 = *MEMORY[0x277D85DE8];
  v6 = *(a1 + 304);
  v7 = a2[1030];
  v8 = a2[1031];
  v99 = a2[1044];
  v100 = a2[1043];
  mach_absolute_time();
  if (!a3)
  {
    APSLogErrorAt();
    return -6705;
  }

  v9 = (a2 + 3);
  a3[2] = a3[2] + 1;
  v10 = strnicmp_prefix();
  v11 = "RTSP/1.0";
  if (!v10)
  {
    v11 = "HTTP/1.1";
  }

  *(v5 + 48) = v11;
  v96 = v7;
  if (strnicmpx() && (strnicmpx() || strnicmp_suffix()) || gLogCategory_AirPlayReceiverServerHTTP <= 10 && (gLogCategory_AirPlayReceiverServerHTTP != -1 || _LogCategory_Initialize()))
  {
    LogHTTP();
    v97 = 0;
  }

  else
  {
    if (!IsAppleInternalBuild())
    {
      v12 = a2 + 1027;
      HTTPGetHeaderField();
      v97 = 1;
      v98 = 1;
      goto LABEL_18;
    }

    v97 = 1;
  }

  v12 = a2 + 1027;
  HTTPGetHeaderField();
  if (gLogCategory_AirPlayReceiverServerHTTP <= 50 && (gLogCategory_AirPlayReceiverServerHTTP != -1 || _LogCategory_Initialize()))
  {
    LogPrintF(&gLogCategory_AirPlayReceiverServerHTTP, "OSStatus _HandleHTTPConnectionMessage(HTTPConnectionRef, HTTPMessageRef, void *)", 33554482, "Request received from %##a on connection [%{ptr}], Header %zu bytes, Body %zu bytes, ID 0x%04llX%?{end}, queryReason=%.*s", v5 + 256, v5, a2[1027], a2[1066], a3[2], 1, 0, 0);
  }

  v98 = 0;
LABEL_18:
  HTTPGetHeaderField();
  HTTPScanFHeaderValue((a2 + 3), *v12, "X-Apple-Device-ID", "%llx", a3 + 5);
  v13 = a3[5];
  if (!v13)
  {
    v13 = SockAddrToDeviceID();
    a3[5] = v13;
  }

  v101 = v6;
  if (a3[35])
  {
LABEL_54:
    if (!*(a3 + 48))
    {
      *buffer = 0;
      cf[0] = 0;
      HTTPGetHeaderField();
    }

    if (!strnicmp_suffix() && IsAppleInternalBuild())
    {
      LODWORD(cf[0]) = 0;
      *buffer = 0;
      CFDictionaryGetTypeID();
      v33 = CFCreateWithPlistBytes();
      v34 = gLogCategory_AirPlayReceiverServer;
      if (gLogCategory_AirPlayReceiverServer <= 50)
      {
        if (gLogCategory_AirPlayReceiverServer == -1)
        {
          if (!_LogCategory_Initialize())
          {
            goto LABEL_269;
          }

          v34 = gLogCategory_AirPlayReceiverServer;
        }

        if (v34 > 20)
        {
          v35 = 0;
        }

        else
        {
          v35 = v34 != -1 || _LogCategory_Initialize() != 0;
        }

        LogPrintF(&gLogCategory_AirPlayReceiverServer, "HTTPStatus _requestProcessPerf(AirPlayReceiverConnectionRef, HTTPMessageRef)", 33554482, "Perf %?@\n", v35, v33);
      }

LABEL_269:
      Value = CFDictionaryGetValue(v33, @"controlCommand");
      if (!Value || (v71 = CFGetTypeID(Value), v71 != CFStringGetTypeID()) || (v72 = CFDictionaryGetValue(v33, @"controlParams")) != 0 && (v73 = CFGetTypeID(v72), v73 != CFDictionaryGetTypeID()))
      {
        APSLogErrorAt();
        v37 = 400;
        if (!v33)
        {
          goto LABEL_288;
        }

        goto LABEL_287;
      }

      if (!a3[4] && (LODWORD(cf[0]) = NetPerfCreate()) != 0 || (LODWORD(cf[0]) = CFObjectControlSync()) != 0)
      {
        APSLogErrorAt();
        v37 = 500;
        if (!v33)
        {
          goto LABEL_288;
        }

        goto LABEL_287;
      }

      v74 = *(a3[1] + 38);
      if (!*(v74 + 8216))
      {
        strnicmp_prefix();
        inited = HTTPHeader_InitResponse();
        if (inited)
        {
          v76 = inited;
          APSLogErrorAt();
          v37 = 500;
          goto LABEL_284;
        }

        *(v74 + 8528) = 0;
      }

      v76 = HTTPMessageSetBody();
      if (v76)
      {
        APSLogErrorAt();
        v37 = 500;
      }

      else
      {
        v37 = 200;
      }

      v9 = (a2 + 3);
LABEL_284:
      LODWORD(cf[0]) = v76;
      if (*buffer)
      {
        CFRelease(*buffer);
      }

      if (!v33)
      {
        goto LABEL_288;
      }

LABEL_287:
      CFRelease(v33);
LABEL_288:
      if (v37 != 200 && gLogCategory_AirPlayReceiverServer <= 60 && (gLogCategory_AirPlayReceiverServer != -1 || _LogCategory_Initialize()))
      {
        LogPrintF(&gLogCategory_AirPlayReceiverServer, "HTTPStatus _requestProcessPerf(AirPlayReceiverConnectionRef, HTTPMessageRef)", 33554492, "### Perf failed: %d\n");
      }

      goto LABEL_292;
    }

    Int64 = CFObjectGetInt64();
    if (!Int64)
    {
      if (*(*(*a3 + 20) + 316) == 2 || APSIsRestrictiveHKAccessControl())
      {
        if (_IsRequestUnrestricted(v96, v8, v100, v99))
        {
          goto LABEL_61;
        }

LABEL_256:
        if (gLogCategory_AirPlayReceiverServer <= 50 && (gLogCategory_AirPlayReceiverServer != -1 || _LogCategory_Initialize()))
        {
          LogPrintF(&gLogCategory_AirPlayReceiverServer, "OSStatus _HandleHTTPConnectionMessage(HTTPConnectionRef, HTTPMessageRef, void *)", 33554482, "### Unverified RTSP request denied: %.*s %.*s\n", v8, v96, v99, v100);
        }

        *buffer = 0;
        cf[0] = 0;
        HTTPGetHeaderField();
        if (gLogCategory_AirPlayReceiverServer <= 50 && (gLogCategory_AirPlayReceiverServer != -1 || _LogCategory_Initialize()))
        {
          LogPrintF(&gLogCategory_AirPlayReceiverServer, "void _requestReportIfIncompatibleSender(AirPlayReceiverConnectionRef, HTTPMessageRef)", 33554482, "### Reporting incompatible sender: '%.*s'\n", SLODWORD(cf[0]), *buffer);
        }

        v37 = 403;
        goto LABEL_345;
      }

      v95 = v8;
      v47 = 1;
      if (!CFObjectGetPropertyInt64Sync())
      {
        v47 = CFObjectGetPropertyInt64Sync() != 0;
      }

      PropertyInt64Sync = CFObjectGetPropertyInt64Sync();
      if (!PropertyInt64Sync || v47)
      {
        v69 = PropertyInt64Sync != 0 || v47;
        v8 = v95;
        if (!v69)
        {
          goto LABEL_61;
        }
      }

      else
      {
        v49 = *(a3[1] + 48);
        v8 = v95;
        if (v49 != 4 && v49 != 64 && v49 != 128)
        {
          goto LABEL_61;
        }
      }

      if (!_IsRequestUnrestricted(v96, v8, v100, v99) && (strnicmpx() || strnicmp_suffix() && strnicmp_suffix() && strnicmp_suffix() && strnicmp_suffix()))
      {
        goto LABEL_256;
      }
    }

LABEL_61:
    v32 = CFObjectGetInt64();
    if (Int64 && v32)
    {
LABEL_63:
      *(a3 + 193) = 1;
      goto LABEL_71;
    }

    if (*(a3 + 193))
    {
      goto LABEL_71;
    }

    if (strnicmpx())
    {
      v9 = (a2 + 3);
      if (strnicmpx())
      {
LABEL_106:
        v129 = 0u;
        v130 = 0u;
        v127 = 0u;
        v128 = 0u;
        v125 = 0u;
        v126 = 0u;
        v123 = 0u;
        v124 = 0u;
        v121 = 0u;
        v122 = 0u;
        v119 = 0u;
        v120 = 0u;
        v117 = 0u;
        v118 = 0u;
        *cf = 0u;
        v116 = 0u;
        CFObjectGetPropertyCStringSync();
        v38 = a3[37];
        if (v38)
        {
          v39 = *(*(CMBaseObjectGetVTable() + 16) + 16);
          if (v39)
          {
            v39(v38);
          }
        }

        goto LABEL_63;
      }

      if (strnicmp_suffix() && strnicmp_suffix())
      {
LABEL_251:
        if (!strnicmp_suffix())
        {
          goto LABEL_71;
        }

        goto LABEL_106;
      }
    }

    else
    {
      v9 = (a2 + 3);
      if (strnicmp_suffix() && strnicmp_suffix() && strnicmp_suffix() && strnicmp_suffix() && strnicmp_suffix() && strnicmp_suffix() && strnicmp_suffix() && strnicmp_suffix() && strnicmp_suffix())
      {
        goto LABEL_251;
      }
    }

LABEL_71:
    if (*(*a3 + 250) && CFObjectGetInt64())
    {
      *buffer = 0;
      LODWORD(cf[0]) = 0;
      if (HTTPScanFHeaderValue(v9, *v12, "DACP-ID", "%llX", buffer) == 1)
      {
        if (gAirTunesDACPClient && *gAirTunesDACPClient == 1684104048)
        {
          *(gAirTunesDACPClient + 41456) = *buffer;
        }

        else
        {
          APSLogErrorAt();
        }
      }

      if (HTTPScanFHeaderValue(v9, *v12, "Active-Remote", "%u", cf) == 1)
      {
        if (gAirTunesDACPClient && *gAirTunesDACPClient == 1684104048)
        {
          *(gAirTunesDACPClient + 41464) = cf[0];
        }

        else
        {
          APSLogErrorAt();
        }
      }
    }

    v102 = HTTPHeader_InitResponse();
    if (v102)
    {
      goto LABEL_373;
    }

    *(v6 + 8528) = 0;
    if (!strnicmpx())
    {
      v36 = 1869640819;
      goto LABEL_111;
    }

    if (!strnicmpx())
    {
      v36 = 1936749165;
      goto LABEL_110;
    }

    if (!strnicmpx())
    {
      v36 = 1718383464;
      goto LABEL_110;
    }

    v9 = (a2 + 3);
    if (!strnicmpx())
    {
      v36 = 1718839394;
      goto LABEL_111;
    }

    if (!strnicmpx())
    {
      v36 = 1835100003;
      goto LABEL_111;
    }

    if (!strnicmpx())
    {
      v36 = 1634624360;
      goto LABEL_110;
    }

    v36 = 1937012080;
    if (!strnicmpx())
    {
      v36 = 1937011316;
      goto LABEL_110;
    }

    if (!strnicmpx())
    {
      v36 = 1936875892;
      goto LABEL_110;
    }

    if (!strnicmpx())
    {
      v36 = 1936027749;
      goto LABEL_110;
    }

    if (!strnicmpx())
    {
      v36 = 1936027768;
      goto LABEL_110;
    }

    if (!strnicmpx())
    {
      v36 = 1735422573;
      goto LABEL_110;
    }

    if (!strnicmpx())
    {
      v36 = 1919119972;
      goto LABEL_110;
    }

    if (!strnicmpx())
    {
      v36 = 1634627171;
      goto LABEL_110;
    }

    if (strnicmpx())
    {
      v9 = (a2 + 3);
      if (strnicmpx())
      {
        if (strnicmpx())
        {
          if (strnicmpx())
          {
            if (!*(*a3 + 248) || strnicmpx())
            {
              v37 = 501;
LABEL_423:
              v6 = v101;
              goto LABEL_345;
            }

            if (strnicmp_suffix())
            {
              if (strnicmp_suffix())
              {
                if (strnicmp_suffix())
                {
                  if (strnicmp_suffix())
                  {
                    goto LABEL_420;
                  }

LABEL_458:
                  v36 = 1886679924;
                  goto LABEL_110;
                }

                v36 = 1886611505;
              }

              else
              {
                v36 = 1936748658;
              }
            }

            else
            {
              v36 = 1886414964;
            }

LABEL_110:
            v9 = (a2 + 3);
            goto LABEL_111;
          }

          if (strnicmp_suffix())
          {
            if (!strnicmp_suffix())
            {
              v36 = 1668247142;
              goto LABEL_110;
            }

            if (!strnicmp_suffix())
            {
              v36 = 1801807216;
              goto LABEL_110;
            }

            if (!strnicmp_suffix())
            {
              v36 = 1634562925;
              goto LABEL_110;
            }

            if (strnicmp_suffix())
            {
              if (!*(*a3 + 248) || strnicmp_suffix())
              {
                if (!strnicmp_suffix())
                {
                  v36 = 1768842863;
                  goto LABEL_110;
                }

                if (!strnicmp_suffix())
                {
                  v36 = 1836348024;
                  goto LABEL_110;
                }

                if (!strnicmp_suffix())
                {
                  v36 = 1886613612;
                  goto LABEL_110;
                }

                if (!strnicmp_suffix())
                {
                  v36 = 1702064240;
                  goto LABEL_110;
                }

                if (!strnicmp_suffix())
                {
                  v36 = 1886417780;
                  goto LABEL_110;
                }

                if (!strnicmp_suffix())
                {
                  v36 = 1885434725;
                  goto LABEL_110;
                }

                if (!strnicmp_suffix())
                {
                  v36 = 1885435493;
                  goto LABEL_110;
                }

                if (strnicmp_suffix())
                {
                  if (strnicmp_suffix())
                  {
                    if (!strnicmp_suffix())
                    {
                      v36 = 1885432944;
                      goto LABEL_110;
                    }

                    if (!strnicmp_suffix())
                    {
                      v37 = 551;
                      goto LABEL_421;
                    }

                    if (!*(*a3 + 248))
                    {
                      goto LABEL_420;
                    }

                    if (!strnicmp_suffix())
                    {
                      v36 = 1633907822;
                      goto LABEL_110;
                    }

                    if (!strnicmp_suffix())
                    {
                      v36 = 1885435252;
                      goto LABEL_110;
                    }

                    if (!strnicmp_suffix())
                    {
                      v36 = 1735422066;
                      goto LABEL_110;
                    }

                    if (!strnicmp_suffix())
                    {
                      v36 = 1886151033;
                      goto LABEL_110;
                    }

                    if (!strnicmp_suffix())
                    {
                      v36 = 1886545267;
                      goto LABEL_110;
                    }

                    if (strnicmp_suffix())
                    {
                      if (strnicmp_suffix())
                      {
                        if (!strnicmp_suffix())
                        {
                          v36 = 1920168547;
                          goto LABEL_110;
                        }

                        if (!strnicmp_suffix())
                        {
                          v36 = 1920365171;
                          goto LABEL_110;
                        }

                        if (!strnicmp_suffix())
                        {
                          v36 = 1936941938;
                          goto LABEL_110;
                        }

                        if (!strnicmp_suffix())
                        {
                          v36 = 1937010544;
                          goto LABEL_110;
                        }

                        if (!strnicmp_suffix())
                        {
                          goto LABEL_458;
                        }

                        if (!strnicmp_suffix())
                        {
                          v36 = 1886809964;
                          goto LABEL_110;
                        }

                        goto LABEL_420;
                      }

                      v90 = 24948;
                    }

                    else
                    {
                      v90 = 29797;
                    }

                    v36 = v90 | 0x72610000u;
                    goto LABEL_110;
                  }

                  v89 = 29296;
                }

                else
                {
                  v89 = 24944;
                }

                v36 = v89 | 0x70610000u;
                goto LABEL_110;
              }

              v88 = 29490;
            }

            else
            {
              v88 = 12853;
            }

            v36 = v88 | 0x66700000u;
            goto LABEL_110;
          }

          v36 = 1668246893;
        }

        else
        {
          if (strnicmp_suffix())
          {
            if (!*(*a3 + 248))
            {
              v37 = 404;
              goto LABEL_423;
            }

            v36 = 1735615346;
            if (!strnicmp_suffix())
            {
              v36 = 1735616870;
              goto LABEL_110;
            }

            if (!strnicmp_suffix())
            {
              v36 = 1735616614;
              goto LABEL_110;
            }

            if (!strnicmp_suffix())
            {
              v36 = 1735616561;
              goto LABEL_110;
            }

            if (!strnicmp_suffix())
            {
              v36 = 1886283375;
              goto LABEL_110;
            }

            if (!strnicmp_suffix())
            {
              goto LABEL_110;
            }

            if (!strnicmp_suffix())
            {
              v36 = 1735222134;
              goto LABEL_110;
            }

            if (!strnicmp_suffix())
            {
              v36 = 1735684980;
              goto LABEL_110;
            }

LABEL_420:
            v37 = 404;
LABEL_421:
            v9 = (a2 + 3);
            v6 = v101;
            goto LABEL_345;
          }

          v36 = 1768842863;
        }
      }

      else
      {
        v36 = 1952741230;
      }
    }

    else
    {
      *buffer = 0;
      cf[0] = 0;
      v9 = (a2 + 3);
      HTTPGetHeaderField();
      if (strnicmpx() && strnicmpx())
      {
        if (URLGetNextPathSegment())
        {
          APSLogErrorAt();
        }

        else
        {
          *buffer = "audio";
          cf[0] = 5;
          URLGetNextPathSegment();
          if (!strnicmpx())
          {
            v36 = 1936942192;
            goto LABEL_111;
          }
        }

        v37 = 400;
        goto LABEL_423;
      }
    }

LABEL_111:
    v103 = 0;
    if (!a3[35])
    {
      APSLogErrorAt();
      v37 = 400;
      v6 = v101;
      goto LABEL_238;
    }

    v104 = 0;
    Dictionary = HTTPMessageCreateDictionary();
    v41 = MEMORY[0x277CEA360];
    MutableCopy = CFDictionaryCreateMutableCopy(0, 0, Dictionary);
    if (MutableCopy)
    {
      CFDictionarySetData();
      CFDictionarySetCString();
      if (v36 <= 1918989412)
      {
        if (v36 == 1718383464)
        {
          LOWORD(cf[0]) = 0;
          *buffer = 0;
          v104 = HTTPParseRTPInfo();
          if (!v104)
          {
            CFDictionarySetInt64();
LABEL_175:
            CFDictionarySetInt64();
            goto LABEL_176;
          }

LABEL_448:
          APSLogErrorAt();
          goto LABEL_176;
        }

        if (v36 == 1885435252)
        {
          *buffer = 0;
          cf[0] = 0;
          v104 = HTTPGetHeaderField();
          if (!v104)
          {
            v104 = CFDictionarySetCString();
            if (!v104)
            {
              goto LABEL_176;
            }
          }

          goto LABEL_448;
        }

        if (v36 != 1886809964)
        {
LABEL_176:
          v50 = v104;
          goto LABEL_177;
        }

        _GetFloatValueFromHTTPMessageURL(a2, "volume", &v104);
        if (v104)
        {
          goto LABEL_448;
        }
      }

      else
      {
        if (v36 <= 1936941937)
        {
          if (v36 != 1918989413)
          {
            if (v36 == 1936749165)
            {
              *buffer = 0;
              cf[0] = 0;
              HTTPGetHeaderField();
              if (!cf[0] && !a2[1068])
              {
                v104 = 0;
                goto LABEL_176;
              }

              if (strnicmp_prefix() && strnicmpx())
              {
                if (strnicmpx() && strnicmpx() && strnicmpx())
                {
                  if (gLogCategory_AirPlayReceiverServer <= 90 && (gLogCategory_AirPlayReceiverServer != -1 || _LogCategory_Initialize()))
                  {
                    LogPrintF(&gLogCategory_AirPlayReceiverServer, "CFDictionaryRef _ConvertHTTPMessageToDictionary(HTTPMessageRef, OSType, OSStatus *)", 33554522, "### Bad Content-Type: '%.*s'\n", SLODWORD(cf[0]), *buffer);
                  }

                  v104 = -6705;
                }

                goto LABEL_176;
              }

              LODWORD(v107) = 0;
              v104 = HTTPParseRTPInfo();
              if (!v104)
              {
                goto LABEL_175;
              }

              goto LABEL_448;
            }

            goto LABEL_176;
          }

          _GetFloatValueFromHTTPMessageURL(a2, "value", &v104);
          if (v104)
          {
            goto LABEL_448;
          }

          CFDictionarySetDouble();
          cf[0] = 0;
          v107 = 0;
          __n = 0;
          v106 = 0;
          v45 = HTTPMessageGetOrCopyFormVariable();
          if (v45)
          {
            v46 = v45;
            if (v45 != -6727)
            {
              APSLogErrorAt();
            }
          }

          else if (v107 < 0x40 && (__strlcpy_chk(), sscanf(buffer, "%d", &v106) == 1))
          {
            v46 = 0;
          }

          else
          {
            APSLogErrorAt();
            v46 = -6705;
          }

          v104 = v46;
          if (__n)
          {
            free(__n);
            v46 = v104;
          }

          if (!v46 && v106 >= 1)
          {
            v44 = *MEMORY[0x277CBED28];
            v43 = @"forInterstitial";
            goto LABEL_147;
          }

          v50 = 0;
          v104 = 0;
LABEL_177:
          v51 = v50;
          if (Dictionary)
          {
            CFRelease(Dictionary);
            v51 = v104;
          }

          if (MutableCopy && v51)
          {
            CFRelease(MutableCopy);
            MutableCopy = 0;
          }

          if (v50)
          {
            APSLogErrorAt();
            v37 = 400;
          }

          else
          {
            v52 = -71934;
            v53 = a3[35];
            v54 = *(*(CMBaseObjectGetVTable() + 16) + 24);
            if (v54)
            {
              v52 = v54(v53, v36, MutableCopy, &v103);
            }

            v37 = _MapReqProcReturnCodeToHTTPReturnCode(v52);
            if (gLogCategory_AirPlayReceiverServer <= 10 && (gLogCategory_AirPlayReceiverServer != -1 || _LogCategory_Initialize()))
            {
              LogPrintF(&gLogCategory_AirPlayReceiverServer, "HTTPStatus _RequestProcessorHandler(HTTPConnectionRef, AirPlayReceiverConnectionRef, HTTPMessageRef, void *, HTTPMessageRef, uint32_t, const char *)", 33554442, "Return from _RequestProcessHandler(%d): %d. reqProcStatus: %d\n", v36, v37, v52);
            }

            if (v37 == 200)
            {
              v55 = v103;
              v106 = 0;
              __n = 0;
              if (!a3[35])
              {
                goto LABEL_325;
              }

              v113 = 0u;
              v114 = 0u;
              v111 = 0u;
              v112 = 0u;
              v109 = 0u;
              v110 = 0u;
              memset(buffer, 0, sizeof(buffer));
              v121 = 0u;
              v122 = 0u;
              v119 = 0u;
              v120 = 0u;
              v117 = 0u;
              v118 = 0u;
              *cf = 0u;
              v116 = 0u;
              v107 = 0;
              if (v103)
              {
                CFStringGetTypeID();
                TypedValue = CFDictionaryGetTypedValue();
                CFDictionaryGetData();
                if (TypedValue)
                {
                  CFStringGetCString(TypedValue, buffer, 128, 0x8000100u);
                }
              }

              time(0);
              v57 = HTTPMakeDateString();
              HTTPHeader_SetField(v101 + 24, "Date", "%s", v57);
              if (HTTPMessageSetBody())
              {
                APSLogErrorAt();
                goto LABEL_327;
              }

              if (v36 > 1885434724)
              {
                if (v36 <= 1919119971)
                {
                  if ((v36 == 1885434725 || v36 == 1885435493) && v55 && CFDictionaryGetValue(v55, *MEMORY[0x277CEA368]))
                  {
                    Data = CFDictionaryGetData();
                    memcpy(a3 + 209, Data, __n);
                    v65 = CFDictionaryGetData();
                    memcpy(a3 + 241, v65, __n);
                    CFRetain(a3[1]);
                    *(v101 + 9672) = a3[1];
                    *(v101 + 9712) = _HandlePairVerifyCoreUtilsCompletion;
                  }

                  goto LABEL_234;
                }

                if (v36 == 1919119972)
                {
                  v66 = CFDictionaryGetInt64();
                  if (v106)
                  {
                    goto LABEL_327;
                  }

                  v106 = HTTPHeader_SetField(v101 + 24, "Audio-Latency", "%u", v66);
                  if (v106)
                  {
                    goto LABEL_327;
                  }

                  goto LABEL_234;
                }

                if (v36 != 1920365171)
                {
                  if (v36 == 1936942192)
                  {
                    v106 = _HTTPSetField(v55, @"Transport", v101);
                    if (v106)
                    {
                      goto LABEL_327;
                    }

                    v106 = _HTTPSetField(v55, @"Session", v101);
                    if (v106)
                    {
                      goto LABEL_327;
                    }

                    v106 = _HTTPSetField(v55, @"Audio-Jack-Status", v101);
                    if (v106)
                    {
                      goto LABEL_327;
                    }
                  }

                  goto LABEL_234;
                }

                v67 = CFDictionaryGetInt64();
                if (!v106)
                {
                  v68 = _MapReqProcReturnCodeToHTTPReturnCode(v67);
                  if (v68 != 200)
                  {
                    v37 = v68;
                    APSLogErrorAt();
                    goto LABEL_328;
                  }

                  v106 = HTTPHeader_InitResponse();
                  if (!v106)
                  {
                    HTTPHeader_SetField(v101 + 24, "Upgrade", "PTTH/1.0");
                    HTTPHeader_SetField(v101 + 24, "Connection", "Upgrade");
                    goto LABEL_234;
                  }
                }

LABEL_327:
                APSLogErrorAt();
                v37 = 500;
LABEL_328:
                v9 = (a2 + 3);
LABEL_329:
                APSLogErrorAt();
                if (!MutableCopy)
                {
                  goto LABEL_237;
                }

                goto LABEL_236;
              }

              if (v36 > 1718839393)
              {
                if (v36 != 1718839394)
                {
                  if (v36 == 1869640819)
                  {
                    v106 = _HTTPSetField(v55, @"Public", v101);
                    if (v106)
                    {
                      goto LABEL_327;
                    }
                  }

                  goto LABEL_234;
                }
              }

              else if (v36 != 1718383464)
              {
                if (v36 != 1718645554)
                {
LABEL_234:
                  v37 = 200;
                  goto LABEL_235;
                }

                if (!v55)
                {
                  goto LABEL_327;
                }

                v58 = CFDictionaryGetValue(v55, *v41);
                if (!v58)
                {
                  goto LABEL_327;
                }

                v59 = v58;
                CFRetain(v58);
                Length = CFDataGetLength(v59);
                v61 = CFDictionaryGetInt64();
                if (!v106)
                {
                  CFRetain(v5);
                  v62 = *(v5 + 304);
                  v62[1209] = v5;
                  v62[1210] = v59;
                  v62[1211] = Length;
                  v62[1212] = v61;
                  v62[1214] = _FPSetup2ResponseCompletionHandler;
                  v63 = CFDictionaryGetInt64();
                  if (!v106)
                  {
                    v37 = _MapReqProcReturnCodeToHTTPReturnCode(v63);
                    v106 = HTTPHeader_InitResponse();
                    v106 = HTTPMessageSetBody();
                    v9 = (a2 + 3);
                    if (v106)
                    {
                      APSLogErrorAt();
                      v37 = 500;
                    }

                    else if (v37 == 200)
                    {
                      v37 = 200;
                      if (!MutableCopy)
                      {
                        goto LABEL_237;
                      }

                      goto LABEL_236;
                    }

                    goto LABEL_329;
                  }

                  goto LABEL_327;
                }

LABEL_325:
                APSLogErrorAt();
                goto LABEL_234;
              }

              if (CFDictionaryContainsKey(v55, @"RTP-Info"))
              {
                v106 = _HTTPSetField(v55, @"RTP-Info", v101);
                if (v106)
                {
                  goto LABEL_327;
                }
              }

              goto LABEL_234;
            }

            APSLogErrorAt();
          }

LABEL_235:
          v9 = (a2 + 3);
          if (!MutableCopy)
          {
LABEL_237:
            v6 = v101;
LABEL_238:
            if (v103)
            {
              CFRelease(v103);
            }

            if (v37 != 200 && gLogCategory_AirPlayReceiverServer <= 90 && (gLogCategory_AirPlayReceiverServer != -1 || _LogCategory_Initialize()))
            {
              LogPrintF(&gLogCategory_AirPlayReceiverServer, "HTTPStatus _RequestProcessorHandler(HTTPConnectionRef, AirPlayReceiverConnectionRef, HTTPMessageRef, void *, HTTPMessageRef, uint32_t, const char *)", 33554522, "_RequestProcessHandler returned %d");
            }

LABEL_292:
            if (v37 == 200)
            {
              v37 = 200;
LABEL_347:
              ShortVersionLength = APSVersionUtilsGetShortVersionLength();
              v102 = HTTPHeader_SetField(v6 + 24, "Server", "AirTunes/%.*s", ShortVersionLength, "920.10.1");
              if (!v102 && (v37 != 401 || (v102 = HTTPMakeTimedNonce()) == 0 && (v102 = HTTPHeader_SetField(v6 + 24, "WWW-Authenticate", "Digest realm=airplay, nonce=%s", buffer)) == 0))
              {
                mach_absolute_time();
                UpTicksToSecondsF();
                v80 = v79;
                if (v79 > 2.0)
                {
                  v81 = a2[1027];
                  LODWORD(v82) = v9;
                  if (v81 >= 1)
                  {
                    v83 = a2 + v81 + 24;
                    v82 = v9;
                    do
                    {
                      v84 = *v82;
                      if (v84 == 10 || v84 == 13)
                      {
                        break;
                      }

                      ++v82;
                    }

                    while (v82 < v83);
                  }

                  if (gLogCategory_AirPlayReceiverServer <= 60 && (gLogCategory_AirPlayReceiverServer != -1 || _LogCategory_Initialize()))
                  {
                    LogPrintF(&gLogCategory_AirPlayReceiverServer, "OSStatus _HandleHTTPConnectionMessage(HTTPConnectionRef, HTTPMessageRef, void *)", 33554492, "### HTTP request took too long to process (%.5f seconds): %.*s\n", v80, v82 - v9, v9);
                  }
                }

                if ((v97 & 1) == 0)
                {
                  LogHTTP();
                }

                if ((v98 & 1) == 0 && gLogCategory_AirPlayReceiverServerHTTP <= 50 && (gLogCategory_AirPlayReceiverServerHTTP != -1 || _LogCategory_Initialize()))
                {
                  LogPrintF(&gLogCategory_AirPlayReceiverServerHTTP, "OSStatus _HandleHTTPConnectionMessage(HTTPConnectionRef, HTTPMessageRef, void *)", 33554482, "Sending response to %##a on connection [%{ptr}], Header %zu bytes, Body %zu bytes, ID 0x%04llX, status %d\n", v5 + 256, v5, *(v6 + 8216), *(v6 + 8528), a3[2], v37);
                }

                HTTPHeader_SetField(v6 + 24, "X-Apple-ProcessingTime", "%llu", (v80 * 1000.0));
                v86 = UpTicksToMilliseconds();
                HTTPHeader_SetField(v6 + 24, "X-Apple-RequestReceivedTimestamp", "%llu", v86);
                v102 = HTTPConnectionSendResponse();
                if (!v102)
                {
                  a3[3] = a3[3] + 1;
                  return v102;
                }
              }

LABEL_373:
              APSLogErrorAt();
              return v102;
            }

LABEL_345:
            v102 = HTTPHeader_InitResponse();
            if (v102)
            {
              goto LABEL_373;
            }

            *(v6 + 8528) = 0;
            v102 = HTTPHeader_SetField(v6 + 24, "Content-Length", "0");
            if (v102)
            {
              goto LABEL_373;
            }

            goto LABEL_347;
          }

LABEL_236:
          CFRelease(MutableCopy);
          goto LABEL_237;
        }

        if (v36 != 1936941938)
        {
          if (v36 != 1936942192)
          {
            goto LABEL_176;
          }

          v43 = @"SDPSessionType";
          v44 = @"audio";
LABEL_147:
          CFDictionarySetValue(MutableCopy, v43, v44);
          goto LABEL_176;
        }

        _GetFloatValueFromHTTPMessageURL(a2, "position", &v104);
        if (v104)
        {
          goto LABEL_448;
        }
      }

      CFDictionarySetDouble();
      goto LABEL_176;
    }

    APSLogErrorAt();
    v50 = -6728;
    v104 = -6728;
    goto LABEL_177;
  }

  v93 = v12;
  v94 = v8;
  v14 = a3[37];
  v16 = *a3;
  v15 = a3[1];
  v17 = *(*a3 + 3);
  v18 = *(v15 + 48);
  v19 = *(*a3 + 27);
  *buffer = *(v15 + 228);
  *&buffer[12] = *(v15 + 15);
  cf[0] = 0;
  v92 = v17;
  if (APReceiverRequestProcessorGetClassID_once != -1)
  {
    dispatch_once(&APReceiverRequestProcessorGetClassID_once, &__block_literal_global_303);
  }

  v20 = CMDerivedObjectCreate();
  if (v20)
  {
    APSLogErrorAt();
    v12 = v93;
    v8 = v94;
    goto LABEL_50;
  }

  v91 = v19;
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  *(DerivedStorage + 568) = mach_absolute_time();
  *(DerivedStorage + 8) = v14;
  *(DerivedStorage + 16) = v5;
  *DerivedStorage = v16;
  if (v14)
  {
    CFRetain(v14);
    v22 = v5;
    v23 = (v5 + 140);
    v24 = CFStringCreateWithCString(*MEMORY[0x277CBECE8], v23, 0x8000100u);
    if (APSIsDirectLinkInterface())
    {
      if (gLogCategory_APReceiverRequestProcessorAirPlay <= 50 && (gLogCategory_APReceiverRequestProcessorAirPlay != -1 || _LogCategory_Initialize()))
      {
        LogPrintF(&gLogCategory_APReceiverRequestProcessorAirPlay, "OSStatus APReceiverRequestProcessorAirPlayCreate(CFAllocatorRef, HTTPConnectionRef, AirPlayReceiverServerRef, APReceiverUIControllerRef, dispatch_queue_t, NetTransportType, uint64_t, sockaddr_ip, APReceiverSessionManagerRef, APReceiverRequestProcessorRef *)", 33554482, "%{ptr}: direct wired link on %@\n", cf[0], v24);
      }

      v25 = *(*(CMBaseObjectGetVTable() + 8) + 56);
      if (v25)
      {
        v25(v14, @"IsWiredLink", *MEMORY[0x277CBED28]);
      }
    }

    v26 = *(v22 + 192);
    if (v26 != 4 && v26 != 128 && v26 != 64)
    {
      goto LABEL_43;
    }

    if (gLogCategory_APReceiverRequestProcessorAirPlay <= 50 && (gLogCategory_APReceiverRequestProcessorAirPlay != -1 || _LogCategory_Initialize()))
    {
      LogPrintF(&gLogCategory_APReceiverRequestProcessorAirPlay, "OSStatus APReceiverRequestProcessorAirPlayCreate(CFAllocatorRef, HTTPConnectionRef, AirPlayReceiverServerRef, APReceiverUIControllerRef, dispatch_queue_t, NetTransportType, uint64_t, sockaddr_ip, APReceiverSessionManagerRef, APReceiverRequestProcessorRef *)", 33554482, "%{ptr}: P2P WiFi on %s\n", cf[0], v23);
    }

    v27 = *(*(CMBaseObjectGetVTable() + 8) + 56);
    if (v27)
    {
      v5 = v22;
      v27(v14, @"IsP2PWiFi", *MEMORY[0x277CBED28]);
    }

    else
    {
LABEL_43:
      v5 = v22;
    }
  }

  else
  {
    v24 = CFStringCreateWithCString(*MEMORY[0x277CBECE8], (v5 + 140), 0x8000100u);
  }

  *(DerivedStorage + 424) = v92;
  *(DerivedStorage + 24) = v18;
  v8 = v94;
  if (gLogCategory_APReceiverRequestProcessorAirPlay <= 50 && (gLogCategory_APReceiverRequestProcessorAirPlay != -1 || _LogCategory_Initialize()))
  {
    LogPrintF(&gLogCategory_APReceiverRequestProcessorAirPlay, "OSStatus APReceiverRequestProcessorAirPlayCreate(CFAllocatorRef, HTTPConnectionRef, AirPlayReceiverServerRef, APReceiverUIControllerRef, dispatch_queue_t, NetTransportType, uint64_t, sockaddr_ip, APReceiverSessionManagerRef, APReceiverRequestProcessorRef *)", 33554482, "RequestProcessor [%{ptr}] created with connection [%{ptr}]\n", cf[0], v5);
  }

  v28 = *(v5 + 256);
  v29 = *buffer;
  *(DerivedStorage + 288) = *(v5 + 268);
  *(DerivedStorage + 304) = v29;
  *(DerivedStorage + 276) = v28;
  *(DerivedStorage + 316) = *&buffer[12];
  *(DerivedStorage + 120) = v13;
  *(DerivedStorage + 432) = v91;
  v30 = cf[0];
  a3[35] = cf[0];
  cf[0] = 0;
  v12 = v93;
  if (v24)
  {
    CFRelease(v24);
LABEL_50:
    v102 = v20;
    v6 = v101;
    if (v20)
    {
      goto LABEL_373;
    }

    v30 = a3[35];
    goto LABEL_53;
  }

  v6 = v101;
LABEL_53:
  v9 = (a2 + 3);
  if (v30)
  {
    goto LABEL_54;
  }

  APSLogErrorAt();
  return -6728;
}

BOOL _IsRequestUnrestricted(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (!strnicmpx() && !strnicmp_suffix())
  {
    return 1;
  }

  if (strnicmpx())
  {
    return 0;
  }

  return strnicmp_suffix() == 0;
}

uint64_t APReceiverUIControllerShowPIN(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = *(*(CMBaseObjectGetVTable() + 16) + 8);
  if (!v8)
  {
    return 4294954514;
  }

  return v8(a1, a2, a3, a4);
}

float _GetFloatValueFromHTTPMessageURL(uint64_t a1, uint64_t a2, int *a3)
{
  v12 = *MEMORY[0x277D85DE8];
  v9 = 0;
  v10 = 0;
  v8 = 0;
  v7 = 0.0;
  v4 = HTTPMessageGetOrCopyFormVariable();
  if (v4)
  {
    v5 = v4;
    if (v4 != -6727)
    {
      APSLogErrorAt();
    }
  }

  else
  {
    __strlcpy_chk();
    if (sscanf(v11, "%f", &v7) == 1)
    {
      v5 = 0;
    }

    else
    {
      APSLogErrorAt();
      v5 = -6705;
    }
  }

  if (a3)
  {
    *a3 = v5;
  }

  if (v8)
  {
    free(v8);
  }

  return v7;
}

uint64_t _MapReqProcReturnCodeToHTTPReturnCode(int a1)
{
  result = 400;
  switch(a1)
  {
    case -71954:
    case -71951:
    case -71941:
      result = 451;
      break;
    case -71953:
      result = 472;
      break;
    case -71952:
    case -71931:
      result = 455;
      break;
    case -71950:
    case -71946:
      result = 507;
      break;
    case -71949:
    case -71948:
    case -71947:
      return result;
    case -71945:
      result = 412;
      break;
    case -71944:
      result = 471;
      break;
    case -71943:
      result = 466;
      break;
    case -71942:
      result = 422;
      break;
    case -71940:
      result = 470;
      break;
    case -71939:
      result = 520;
      break;
    case -71938:
      result = 454;
      break;
    case -71937:
      result = 453;
      break;
    case -71936:
      result = 406;
      break;
    case -71935:
      result = 501;
      break;
    case -71934:
      result = 500;
      break;
    case -71933:
      result = 403;
      break;
    case -71932:
      result = 456;
      break;
    default:
      if (a1)
      {
        v3 = 400;
      }

      else
      {
        v3 = 200;
      }

      if (a1 == 204)
      {
        result = 204;
      }

      else
      {
        result = v3;
      }

      break;
  }

  return result;
}

uint64_t _HTTPSetField(uint64_t a1, const __CFString *a2, uint64_t a3)
{
  v10 = *MEMORY[0x277D85DE8];
  CFStringGetTypeID();
  TypedValue = CFDictionaryGetTypedValue();
  v8 = CFStringCopyUTF8CString();
  if (v8)
  {
    goto LABEL_10;
  }

  if (!CFStringGetLength(TypedValue))
  {
    APSLogErrorAt();
    return -6712;
  }

  if (!CFStringGetCString(a2, buffer, 256, 0x8000100u))
  {
    APSLogErrorAt();
    return -6762;
  }

  v8 = HTTPHeader_SetField(a3 + 24, buffer, "%s", 0);
  if (v8)
  {
LABEL_10:
    APSLogErrorAt();
  }

  return v8;
}

void _HandlePairVerifyCoreUtilsCompletion(uint64_t a1)
{
  v1 = *(a1 + 9672);
  v2 = v1[5];
  v3 = NetTransportChaCha20Poly1305Configure();
  if (v3)
  {
    v5 = v3;
    APSLogErrorAt();
    if (gLogCategory_AirPlayReceiverServer < 61 && (gLogCategory_AirPlayReceiverServer != -1 || _LogCategory_Initialize()))
    {
      LogPrintF(&gLogCategory_AirPlayReceiverServer, "void _HandlePairVerifyCoreUtilsCompletion(HTTPMessageRef)", 33554492, "[%{ptr}] ### Pair-verify CU completion failed: %#m\n", *v2, v5, 0, 0, 0, 0, 0);
    }
  }

  else
  {
    for (i = 209; i != 241; ++i)
    {
      *(v2 + i) = 0;
    }

    do
    {
      *(v2 + i++) = 0;
    }

    while (i != 273);
    HTTPConnectionSetTransportDelegate();
    if (gLogCategory_AirPlayReceiverServer <= 50 && (gLogCategory_AirPlayReceiverServer != -1 || _LogCategory_Initialize()))
    {
      LogPrintF(&gLogCategory_AirPlayReceiverServer, "void _HandlePairVerifyCoreUtilsCompletion(HTTPMessageRef)", 33554482, "[%{ptr}] Pair-verify CU succeeded\n", *v2, v6, 0, 0, 0, 0, 0);
    }
  }

  CFRelease(v1);
}

void _FPSetup2ResponseCompletionHandler(void *a1)
{
  v1 = a1[1209];
  v2 = v1[5];
  v3 = a1[1210];
  v4 = a1[1211];
  v12 = 0;
  v10 = 0u;
  v11 = 0u;
  v9 = 0;
  v5 = a1[1212];
  v6 = *(v2 + 280);
  v7 = *(*(CMBaseObjectGetVTable() + 16) + 32);
  if (!v7 || v7(v6, v5, &v9))
  {
    goto LABEL_13;
  }

  if (v9 && (v4 & 0xFFFFFFC0) != 0)
  {
    if (v3)
    {
      v8 = CFGetTypeID(v3);
      if (v8 == CFDataGetTypeID())
      {
        CFDataGetBytePtr(v3);
        if (!NetTransportGCMConfigure())
        {
          HTTPConnectionSetTransportDelegate();
          CFObjectSetValue();
          CFObjectSetValue();
          if (*(v2 + 200))
          {
            IPaI1oem5iL();
            *(v2 + 200) = 0;
          }

          if (gLogCategory_AirPlayReceiverServer <= 50 && (gLogCategory_AirPlayReceiverServer != -1 || _LogCategory_Initialize()))
          {
            LogPrintF(&gLogCategory_AirPlayReceiverServer, "void _FPSetup2ResponseCompletionHandler(HTTPMessageRef)", 33554482, "FP-Setup2 Complete\n");
          }

          goto LABEL_15;
        }

        goto LABEL_20;
      }
    }

LABEL_13:
    APSLogErrorAt();
    goto LABEL_14;
  }

LABEL_20:
  APSLogErrorAt();
  if (gLogCategory_AirPlayReceiverServer <= 60 && (gLogCategory_AirPlayReceiverServer != -1 || _LogCategory_Initialize()))
  {
    LogPrintF(&gLogCategory_AirPlayReceiverServer, "void _FPSetup2ResponseCompletionHandler(HTTPMessageRef)", 33554492, "### FP-Setup2 Failed: %d, %#m\n", 500);
  }

LABEL_14:
  if (v3)
  {
LABEL_15:
    CFRelease(v3);
  }

  CFRelease(v1);
}

uint64_t APReceiverRequestProcessorSetProperty(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = *(*(CMBaseObjectGetVTable() + 16) + 72);
  if (!v6)
  {
    return 4294954514;
  }

  return v6(a1, a2, a3);
}

uint64_t _requestHTTPAuthorization_CopyPassword(uint64_t a1, char **a2)
{
  v21 = *MEMORY[0x277D85DE8];
  v19 = 0u;
  v20 = 0u;
  v17 = 0u;
  v18 = 0u;
  v15 = 0u;
  v16 = 0u;
  v13 = 0u;
  v14 = 0u;
  v11 = 0u;
  v12 = 0u;
  v9 = 0u;
  v10 = 0u;
  v7 = 0u;
  v8 = 0u;
  *__s1 = 0u;
  v6 = 0u;
  CFObjectGetPropertyCStringSync();
  v3 = strdup(__s1);
  if (v3)
  {
    *a2 = v3;
    return 200;
  }

  else
  {
    APSLogErrorAt();
    return 500;
  }
}

void _HandleHTTPConnectionClose(uint64_t a1, uint64_t *a2)
{
  if (a1 && a2)
  {
    if (gLogCategory_AirPlayReceiverServer <= 50 && (gLogCategory_AirPlayReceiverServer != -1 || _LogCategory_Initialize()))
    {
      LogPrintF(&gLogCategory_AirPlayReceiverServer, "void _HandleHTTPConnectionClose(HTTPConnectionRef, void *)", 33554482, "*** [%{ptr}] HTTP connection from %##a to %##a closed [%{ptr}], last request ID 0x%04llX/0x%04llX\n", *a2, a1 + 256, a1 + 228, a1, a2[2], a2[3]);
    }

    v4 = a2[35];
    if (v4)
    {
      v6 = a1 + 328;
      v5 = *(*(CMBaseObjectGetVTable() + 16) + 16);
      if (!v5 || v5(v4, @"HTTPConnectionClose", &v6))
      {
        APSLogErrorAt();
      }

      else
      {
        if (a2[4])
        {
          CFObjectControlSync();
          CFRelease(a2[4]);
          a2[4] = 0;
        }

        _UpdateIdleTimeoutTimer(*a2);
      }
    }
  }

  else
  {

    APSLogErrorAt();
  }
}

void _HandleHTTPConnectionFinalize(uint64_t a1, uint64_t a2)
{
  *a2 = 0;
  if (*(a2 + 200))
  {
    IPaI1oem5iL();
    *(a2 + 200) = 0;
  }

  *(a2 + 208) = 0;
  v3 = *(a2 + 280);
  if (v3)
  {
    CFRelease(v3);
    *(a2 + 280) = 0;
  }

  v4 = *(a2 + 296);
  if (v4)
  {
    CFRelease(v4);
    *(a2 + 296) = 0;
  }
}

uint64_t _HandleHTTPConnectionInitialize(uint64_t a1, void *a2)
{
  *(a2 + 49) = 0;
  APSSettingsGetInt64();
  SocketSetKeepAlive();
  if (*(*a2 + 249))
  {
    v3 = *(*a2 + 232);
    if (v3)
    {
      a2[37] = v3(0);
    }

    else
    {
      if (APReceiverUIControllerGetShared_once[0] != -1)
      {
        dispatch_once(APReceiverUIControllerGetShared_once, &__block_literal_global_3265);
      }

      v4 = APReceiverUIControllerGetShared_ui;
      a2[37] = APReceiverUIControllerGetShared_ui;
      if (v4)
      {
        CFRetain(v4);
      }
    }

    if (gLogCategory_AirPlayReceiverServer <= 50 && (gLogCategory_AirPlayReceiverServer != -1 || _LogCategory_Initialize()))
    {
      v5 = "created";
      if (!*(*a2 + 232))
      {
        v5 = "shared";
      }

      LogPrintF(&gLogCategory_AirPlayReceiverServer, "OSStatus _HandleHTTPConnectionInitialize(HTTPConnectionRef, void *)", 33554482, "[%{ptr}] Connection [%{ptr}] %s UI controller [%{ptr}]", *a2, a2[1], v5, a2[37]);
    }
  }

  return 0;
}

void _HandleVolumeUpdate(void *a1)
{
  cf = 0;
  APReceiverSessionManagerCopyAirPlaySessionWithAttribute(*(*a1 + 216), 0, 0, &cf);
  if (cf)
  {
    AirPlayReceiverSessionHandleVolumeUpdate(cf, a1[1]);
  }

  v2 = *(*(*a1 + 216) + 48);
  if (v2)
  {
    v3 = APReceiverRequestProcessorCopyReceiverSession(v2);
    v4 = v3;
    v5 = v3 == 0;
    if (v3)
    {
      v6 = v3 == cf;
    }

    else
    {
      v6 = 1;
    }

    if (!v6)
    {
      AirPlayReceiverSessionHandleVolumeUpdate(v3, a1[1]);
    }
  }

  else
  {
    v4 = 0;
    v5 = 1;
  }

  if (*a1)
  {
    CFRelease(*a1);
  }

  v7 = a1[1];
  if (v7)
  {
    CFRelease(v7);
  }

  if (cf)
  {
    CFRelease(cf);
  }

  if (!v5)
  {
    CFRelease(v4);
  }

  free(a1);
}

void _HandleDenyInterruptionsStatusChanged(void *cf)
{
  if (*(cf + 249) && !cf[29])
  {
    if (APReceiverUIControllerGetShared_once[0] != -1)
    {
      dispatch_once(APReceiverUIControllerGetShared_once, &__block_literal_global_3265);
    }

    v2 = APReceiverUIControllerGetShared_ui;
    if (APReceiverUIControllerGetShared_ui)
    {
      v3 = (CFObjectGetPropertyInt64Sync() ? MEMORY[0x277CBED28] : MEMORY[0x277CBED10]);
      v4 = *(*(CMBaseObjectGetVTable() + 8) + 56);
      if (v4)
      {
        v4(v2, @"denyInterruptions", *v3);
      }
    }
  }

  CFRelease(cf);
}

void _HandleEnableAirPlayStatusChanged(const void *a1)
{
  _StartOrStopServersIfNeeded(a1);

  CFRelease(a1);
}

void _NotifySessionsSystemInfoChange(uint64_t a1)
{
  v1 = APReceiverSessionManagerCopyAllSessions(*(a1 + 216));
  if (v1)
  {
    v2 = v1;
    if (CFArrayGetCount(v1) >= 1)
    {
      CFArrayApplyBlock();
    }

    CFRelease(v2);
  }
}

void _HandleAdvertisingDeviceSettingChanged(void *a1)
{
  _RestartAdvertising(a1);
  CFRetain(a1);
  v2 = a1[11];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = ___HandleAdvertisingDeviceSettingChanged_block_invoke;
  block[3] = &__block_descriptor_40_e5_v8__0l;
  block[4] = a1;
  dispatch_async(v2, block);
  CFRelease(a1);
}

uint64_t AirPlayReceiverServerCreate(const __CFDictionary *a1, uint64_t *a2)
{
  v181[5] = *MEMORY[0x277D85DE8];
  v140 = 1;
  if (a1)
  {
    FigCFDictionaryGetBooleanIfPresent();
  }

  if (gAirPlayReceiverInitOnce != -1)
  {
    dispatch_once_f(&gAirPlayReceiverInitOnce, 0, _GlobalInitialize);
  }

  if (gAirPlayReceiverServerInitOnce != -1)
  {
    dispatch_once_f(&gAirPlayReceiverServerInitOnce, 0, _GetTypeID);
  }

  Instance = _CFRuntimeCreateInstance();
  if (!Instance)
  {
    APSLogErrorAt();
    return 4294960568;
  }

  v5 = Instance;
  *(Instance + 16) = 0u;
  v6 = Instance + 16;
  *(Instance + 288) = 0;
  *(Instance + 256) = 0u;
  *(Instance + 272) = 0u;
  *(Instance + 224) = 0u;
  *(Instance + 240) = 0u;
  *(Instance + 192) = 0u;
  *(Instance + 208) = 0u;
  *(Instance + 160) = 0u;
  *(Instance + 176) = 0u;
  *(Instance + 128) = 0u;
  *(Instance + 144) = 0u;
  *(Instance + 96) = 0u;
  *(Instance + 112) = 0u;
  *(Instance + 64) = 0u;
  *(Instance + 80) = 0u;
  *(Instance + 48) = 0u;
  *(Instance + 32) = 0u;
  v7 = (Instance + 32);
  *(Instance + 24) = dispatch_queue_create("AirPlayReceiverServerQueue", 0);
  v8 = dispatch_queue_attr_make_with_qos_class(0, QOS_CLASS_USER_INITIATED, 0);
  *(v6 + 72) = dispatch_queue_create("AirPlayReceiverServerHTTPQueue", v8);
  *v7 = -1;
  RandomBytes();
  *(v6 + 104) = 0;
  *(v6 + 241) = 0;
  v9 = *MEMORY[0x277CBECE8];
  Mutable = CFDictionaryCreateMutable(*MEMORY[0x277CBECE8], 0, MEMORY[0x277CBF138], MEMORY[0x277CBF150]);
  if (!Mutable)
  {
    APSLogErrorAt();
LABEL_356:
    CFRelease(v5);
    return 4294960568;
  }

  v11 = Mutable;
  out_token = v7;
  v131 = v6;
  v12 = MEMORY[0x277CBED28];
  v13 = MEMORY[0x277CBED10];
  v135 = a2;
  if (a1)
  {
    FigCFDictionaryGetBooleanIfPresent();
    if (*(v5 + 257))
    {
      v14 = v12;
    }

    else
    {
      v14 = v13;
    }

    CFDictionarySetValue(v11, @"UGLRCServerMode", *v14);
    *(v5 + 258) = APSSettingsIsFeatureEnabled();
    v138 = APSSettingsGetIntWithDefault() != 0;
    FigCFDictionarySetValueFromKeyInDict();
    FigCFDictionarySetValueFromKeyInDict();
    FigCFDictionarySetValueFromKeyInDict();
    Value = FigCFDictionaryGetValue();
    FigCFDictionarySetValueFromKeyInDict();
    FigCFDictionarySetValueFromKeyInDict();
    FigCFDictionarySetValueFromKeyInDict();
    FigCFDictionarySetValueFromKeyInDict();
    if (CFDictionaryGetInt64())
    {
      v15 = 0;
    }

    else
    {
      v15 = 7000;
    }

    *(v5 + 272) = v15;
    if (APSSettingsGetUInt16IfPresent() && gLogCategory_AirPlayReceiverServer <= 50 && (gLogCategory_AirPlayReceiverServer != -1 || _LogCategory_Initialize()))
    {
      LogPrintF(&gLogCategory_AirPlayReceiverServer, "OSStatus AirPlayReceiverServerCreate(CFDictionaryRef, AirPlayReceiverServerRef *)", 33554482, "Using receiver port: %hu from prefs.\n", *(v5 + 272));
    }

    v17 = CFDictionaryGetValue(a1, @"SBufConsumer");
    *(v5 + 224) = v17;
    if (v17)
    {
      CFRetain(v17);
      v16 = 1;
    }

    else
    {
      v16 = 0;
    }

    *(v5 + 232) = CFDictionaryGetInt64();
    if (*(v5 + 53))
    {
      if (gLogCategory_AirPlayReceiverServer <= 50 && (gLogCategory_AirPlayReceiverServer != -1 || _LogCategory_Initialize()))
      {
        LogPrintF(&gLogCategory_AirPlayReceiverServer, "OSStatus AirPlayReceiverServerCreate(CFDictionaryRef, AirPlayReceiverServerRef *)", 33554482, "Will start server in assisted mode\n");
      }

      v16 = 2;
    }

    *(v5 + 254) = CFDictionaryGetInt64() != 0;
    v18 = CFDictionaryGetValue(a1, @"InterfaceName");
    *(v5 + 264) = v18;
    if (v18)
    {
      CFRetain(v18);
    }

    FigCFDictionaryGetBooleanIfPresent();
    FigCFDictionaryGetBooleanIfPresent();
  }

  else
  {
    v16 = 0;
    Value = 0;
    v138 = 0;
  }

  BooleanIfPresent = APSSettingsGetBooleanIfPresent();
  if (gLogCategory_AirPlayReceiverServer <= 50)
  {
    v20 = BooleanIfPresent;
    if (gLogCategory_AirPlayReceiverServer != -1 || _LogCategory_Initialize())
    {
      v21 = "yes";
      if (*(v5 + 64))
      {
        v22 = "yes";
      }

      else
      {
        v22 = "no";
      }

      if (!v20)
      {
        v21 = "no";
      }

      LogPrintF(&gLogCategory_AirPlayReceiverServer, "OSStatus AirPlayReceiverServerCreate(CFDictionaryRef, AirPlayReceiverServerRef *)", 33554482, "Use alt advertising: %s from prefs: %s\n", v22, v21);
    }
  }

  v23 = *v12;
  v24 = *v13;
  if (*(v5 + 64))
  {
    v25 = *v12;
  }

  else
  {
    v25 = *v13;
  }

  CFDictionarySetValue(v11, @"UseAltAdvertising", v25);
  v26 = APSSettingsGetBooleanIfPresent();
  if (gLogCategory_AirPlayReceiverServer <= 50)
  {
    v27 = v26;
    if (gLogCategory_AirPlayReceiverServer != -1 || _LogCategory_Initialize())
    {
      v28 = "yes";
      if (*(v5 + 251))
      {
        v29 = "yes";
      }

      else
      {
        v29 = "no";
      }

      if (!v27)
      {
        v28 = "no";
      }

      LogPrintF(&gLogCategory_AirPlayReceiverServer, "OSStatus AirPlayReceiverServerCreate(CFDictionaryRef, AirPlayReceiverServerRef *)", 33554482, "Enable media audio mixing: %s from prefs: %s\n", v29, v28);
    }
  }

  CFDictionarySetInt64();
  if (IsAppleTV() || APSIsAPMSpeaker() || CFDictionaryGetInt64())
  {
    v136 = 1;
  }

  else
  {
    Int64 = APSSettingsGetInt64();
    v136 = Int64 != 0;
    if (!Int64)
    {
      v23 = v24;
    }
  }

  CFDictionarySetValue(v11, @"SupportsRemoteControl", v23);
  v132 = v16;
  if (APReceiverSystemInfoGetTypeID_once != -1)
  {
    dispatch_once(&APReceiverSystemInfoGetTypeID_once, &__block_literal_global_2138);
  }

  v139 = v9;
  v30 = _CFRuntimeCreateInstance();
  bzero((v30 + 16), 0x2F0uLL);
  *(v30 + 16) = dispatch_queue_create("APReceiverSystemInfoQueue", 0);
  *(v30 + 576) = dispatch_queue_create("APReceiverSystemInfoDisplayQueue", 0);
  v31 = *MEMORY[0x277CBF3A8];
  *(v30 + 672) = -4294967236;
  *(v30 + 680) = 0;
  *(v30 + 592) = v31;
  *(v30 + 608) = v31;
  v133 = v31;
  *(v30 + 624) = v31;
  *(v30 + 640) = 0;
  *(v30 + 120) = 0;
  if (gLogCategory_APReceiverSystemInfo <= 50 && (gLogCategory_APReceiverSystemInfo != -1 || _LogCategory_Initialize()))
  {
    LogPrintF(&gLogCategory_APReceiverSystemInfo, "APReceiverSystemInfoRef APReceiverSystemInfoCreate(CFDictionaryRef)", 50, "Creation options: %@\n", v11);
  }

  *(v30 + 568) = CFDictionaryGetInt64();
  v32 = CFDictionaryGetInt64();
  *(v30 + 312) = CFDictionaryGetInt64() != 0;
  *(v30 + 400) = CFDictionaryCopyCString();
  v33 = CFDictionaryCopyCString();
  if (v33)
  {
    v34 = v33;
    v35 = TextToHardwareAddress() != 0;
    free(v34);
  }

  else
  {
    v35 = 1;
  }

  v36 = CFDictionaryGetValue(v11, @"FeatureMask");
  if (v36)
  {
    v37 = v36;
    v38 = CFGetTypeID(v36);
    if (v38 == CFDataGetTypeID())
    {
      *(v30 + 760) = CFRetain(v37);
    }
  }

  v39 = CFDictionaryGetValue(v11, @"DisplaySizeOverride");
  if (v39)
  {
    v40 = v39;
    v41 = CFGetTypeID(v39);
    if (v41 == CFDictionaryGetTypeID())
    {
      size = v133;
      CGSizeMakeWithDictionaryRepresentation(v40, &size);
      if (gLogCategory_APReceiverSystemInfo <= 50 && (gLogCategory_APReceiverSystemInfo != -1 || _LogCategory_Initialize()))
      {
        LogPrintF(&gLogCategory_APReceiverSystemInfo, "APReceiverSystemInfoRef APReceiverSystemInfoCreate(CFDictionaryRef)", 33554482, "Setting display size override to %d x %d\n", size.width, size.height);
      }

      *(v30 + 608) = size;
    }
  }

  v42 = CFDictionaryGetValue(v11, @"DisplaySizeMaxOverride");
  if (v42)
  {
    v43 = v42;
    v44 = CFGetTypeID(v42);
    if (v44 == CFDictionaryGetTypeID())
    {
      size = v133;
      CGSizeMakeWithDictionaryRepresentation(v43, &size);
      if (gLogCategory_APReceiverSystemInfo <= 50 && (gLogCategory_APReceiverSystemInfo != -1 || _LogCategory_Initialize()))
      {
        LogPrintF(&gLogCategory_APReceiverSystemInfo, "APReceiverSystemInfoRef APReceiverSystemInfoCreate(CFDictionaryRef)", 33554482, "Setting display size max override to %d x %d\n", size.width, size.height);
      }

      *(v30 + 624) = size;
    }
  }

  v45 = CFDictionaryGetValue(v11, @"DisplayHDRModeOverride");
  if (v45)
  {
    v46 = v45;
    v47 = CFGetTypeID(v45);
    if (v47 == CFStringGetTypeID())
    {
      if (gLogCategory_APReceiverSystemInfo <= 50 && (gLogCategory_APReceiverSystemInfo != -1 || _LogCategory_Initialize()))
      {
        LogPrintF(&gLogCategory_APReceiverSystemInfo, "APReceiverSystemInfoRef APReceiverSystemInfoCreate(CFDictionaryRef)", 33554482, "Setting display HDR mode override to %@\n", v46);
      }

      *(v30 + 640) = CFRetain(v46);
    }
  }

  *(v30 + 424) = CFDictionaryGetInt64() != 0;
  *(v30 + 314) = CFDictionaryGetInt64() != 0;
  *(v30 + 313) = APSSettingsIsFeatureEnabled();
  IntWithDefault = APSSettingsGetIntWithDefault();
  if (*(v30 + 314))
  {
    v49 = IntWithDefault == 0;
  }

  else
  {
    v49 = 1;
  }

  v50 = !v49;
  *(v30 + 315) = v50;
  if (v35)
  {
    v51 = 9;
    while (!APSGetDeviceID())
    {
      sleep(1u);
      if (!--v51)
      {
        if (gLogCategory_APReceiverSystemInfo <= 90 && (gLogCategory_APReceiverSystemInfo != -1 || _LogCategory_Initialize()))
        {
          LogPrintF(&gLogCategory_APReceiverSystemInfo, "APReceiverSystemInfoRef APReceiverSystemInfoCreate(CFDictionaryRef)", 33554522, "Unable to obtain device ID: %#m\n", 0);
        }

        break;
      }
    }
  }

  *(v30 + 110) = 0;
  *(v30 + 102) = 0;
  *(v30 + 112) = *(v30 + 96);
  *(v30 + 116) = *(v30 + 100);
  *(v30 + 128) = APSSettingsIsFeatureEnabledInDomain();
  *(v30 + 129) = APSMultiPrimariesEnabled();
  *(v30 + 130) = APSNowPlayingSessionDataSourceEnabled();
  if (gLogCategory_APReceiverSystemInfo <= 50 && (gLogCategory_APReceiverSystemInfo != -1 || _LogCategory_Initialize()))
  {
    v53 = APSIsProximityReceiverEnabled();
    v54 = "";
    if (!v53)
    {
      v54 = " not";
    }

    LogPrintF(&gLogCategory_APReceiverSystemInfo, "APReceiverSystemInfoRef APReceiverSystemInfoCreate(CFDictionaryRef)", 33554482, "AirPlay proximity receiver is%s enabled\n", v54);
  }

  *(v30 + 120) = MGCopyAnswer();
  if (!APSIsValidDeviceEnclosureColorString())
  {
    if (gLogCategory_APReceiverSystemInfo <= 60 && (gLogCategory_APReceiverSystemInfo != -1 || _LogCategory_Initialize()))
    {
      LogPrintF(&gLogCategory_APReceiverSystemInfo, "APReceiverSystemInfoRef APReceiverSystemInfoCreate(CFDictionaryRef)", 33554492, "Invalid device enclosure color: %@\n", *(v30 + 120));
    }

    v55 = *(v30 + 120);
    if (v55)
    {
      CFRelease(v55);
      *(v30 + 120) = 0;
    }
  }

  if (!*(v30 + 315))
  {
    v58 = APSCopyPairingIdentity();
    v141 = v58;
    if (v58 && gLogCategory_APReceiverSystemInfo <= 60)
    {
      if (gLogCategory_APReceiverSystemInfo == -1)
      {
        if (!_LogCategory_Initialize())
        {
          goto LABEL_136;
        }

        v58 = v141;
      }

      LogPrintF(&gLogCategory_APReceiverSystemInfo, "APReceiverSystemInfoRef APReceiverSystemInfoCreate(CFDictionaryRef)", 33554492, "Failed to get public AirPlay pairing identity: %#m\n", v58);
    }

LABEL_136:
    v59 = APSCopyPairingIdentity();
    v142 = v59;
    if (v59 && gLogCategory_APReceiverSystemInfo <= 60)
    {
      if (gLogCategory_APReceiverSystemInfo == -1)
      {
        if (!_LogCategory_Initialize())
        {
          goto LABEL_141;
        }

        v59 = v142;
      }

      LogPrintF(&gLogCategory_APReceiverSystemInfo, "APReceiverSystemInfoRef APReceiverSystemInfoCreate(CFDictionaryRef)", 33554492, "Failed to get public system pairing identity: %#m\n", v59);
    }

    goto LABEL_141;
  }

  v56 = [objc_msgSend(MEMORY[0x277CCAD78] "UUID")];
  if (v56)
  {
    v56 = CFRetain(v56);
  }

  *(v30 + 464) = v56;
  v57 = [objc_msgSend(MEMORY[0x277CCAD78] "UUID")];
  if (v57)
  {
    v57 = CFRetain(v57);
  }

  *(v30 + 456) = v57;
  if (gLogCategory_APReceiverSystemInfo <= 50)
  {
    if (gLogCategory_APReceiverSystemInfo == -1)
    {
      if (!_LogCategory_Initialize())
      {
        goto LABEL_141;
      }

      v57 = *(v30 + 456);
    }

    LogPrintF(&gLogCategory_APReceiverSystemInfo, "APReceiverSystemInfoRef APReceiverSystemInfoCreate(CFDictionaryRef)", 33554482, "Generated random airPlayPairingIdentity: %@, systemPairingIdentity: %@\n", *(v30 + 464), v57);
  }

LABEL_141:
  v60 = APSPowerAssertionCreate();
  *(v30 + 736) = v60;
  if (!v60 && gLogCategory_APReceiverSystemInfo <= 90 && (gLogCategory_APReceiverSystemInfo != -1 || _LogCategory_Initialize()))
  {
    LogPrintF(&gLogCategory_APReceiverSystemInfo, "APReceiverSystemInfoRef APReceiverSystemInfoCreate(CFDictionaryRef)", 33554522, "### Failed to create APSPowerAssertion!\n");
  }

  if ((*(v30 + 568) - 1) <= 1)
  {
    *(v30 + 64) = 1;
    *(v30 + 80) = 1;
    *(v30 + 310) = 0;
    *(v30 + 316) = 0;
    *(v30 + 240) = 0;
    *(v30 + 248) = 0;
    *(v30 + 176) = 0;
    *(v30 + 192) = 0;
    *(v30 + 184) = 0;
    *(v30 + 208) = 0;
    *(v30 + 308) = 0;
    *(v30 + 256) = 0;
    *(v30 + 264) = 0;
    *(v30 + 272) = 0;
    *(v30 + 288) = 0;
    *(v30 + 296) = 0;
    *(v30 + 280) = 0;
    *(v30 + 304) = 0;
    *(v30 + 311) = 1;
    *(v30 + 408) = APSIsAPMSpeaker() == 0;
    *(v30 + 410) = 0;
    *(v30 + 416) = 0;
    *(v30 + 432) = 256;
    *(v30 + 480) = 0;
    *(v30 + 472) = 0;
    *(v30 + 428) = 1;
    *(v30 + 560) = 0;
    *(v30 + 564) = 30;
    goto LABEL_204;
  }

  LODWORD(size.width) = 0;
  APSSettingsSynchronize();
  v61 = APSSettingsGetIntWithDefault();
  *(v30 + 64) = v61;
  if (gLogCategory_APReceiverSystemInfo <= 50)
  {
    if (gLogCategory_APReceiverSystemInfo == -1)
    {
      if (!_LogCategory_Initialize())
      {
        goto LABEL_156;
      }

      v62 = *(v30 + 64);
    }

    else
    {
      v62 = v61;
    }

    if (v62)
    {
      v63 = "yes";
    }

    else
    {
      v63 = "no";
    }

    LogPrintF(&gLogCategory_APReceiverSystemInfo, "void sysInfo_initFromPrefs(APReceiverSystemInfoRef)", 33554482, "Initial config: enabled %s\n", v63);
  }

LABEL_156:
  if (*(v30 + 315) || APSGetAccessControlConfig())
  {
    *(v30 + 316) = 0;
  }

  *(v30 + 80) = APSSettingsGetInt64() != 0;
  *(v30 + 310) = APSSettingsGetInt64() != 0;
  APSCopyPersistentGroupInfo();
  if (*(v30 + 256))
  {
    *(v30 + 306) = IsAppleTV();
    if (gLogCategory_APReceiverSystemInfo <= 50 && (gLogCategory_APReceiverSystemInfo != -1 || _LogCategory_Initialize()))
    {
      v64 = "yes";
      if (!*(v30 + 272))
      {
        v64 = "no";
      }

      LogPrintF(&gLogCategory_APReceiverSystemInfo, "void sysInfo_initFromPrefs(APReceiverSystemInfoRef)", 33554482, "Initial config: Persistent Group UUID %@, isLeader %s, size %u, type %u, model: %@, leaderUUID: %@, memberID: %@, groupName: %@\n", *(v30 + 256), v64, *(v30 + 240), *(v30 + 248), *(v30 + 296), *(v30 + 264), *(v30 + 280), *(v30 + 288));
    }
  }

  APSCopyTightSyncInfo();
  if (!*(v30 + 176))
  {
LABEL_175:
    if (gLogCategory_APReceiverSystemInfo > 50 || gLogCategory_APReceiverSystemInfo == -1 && !_LogCategory_Initialize())
    {
      goto LABEL_188;
    }

    if (*(v30 + 256))
    {
      v66 = 288;
    }

    else
    {
      v67 = *(v30 + 176);
      if (!v67)
      {
LABEL_184:
        if (*(v30 + 306))
        {
          v68 = "yes";
        }

        else
        {
          v68 = "no";
        }

        LogPrintF(&gLogCategory_APReceiverSystemInfo, "void sysInfo_initFromPrefs(APReceiverSystemInfoRef)", 33554482, "Initial config: Group Public Name '%@', isClusterLeader %s\n", v67, v68);
        goto LABEL_188;
      }

      v66 = 208;
    }

    v67 = *(v30 + v66);
    goto LABEL_184;
  }

  if (!*(v30 + 256))
  {
    *(v30 + 306) = APSSettingsGetInt64() != 0;
  }

  if (gLogCategory_APReceiverSystemInfo <= 50)
  {
    if (gLogCategory_APReceiverSystemInfo != -1 || _LogCategory_Initialize())
    {
      v65 = "yes";
      if (!*(v30 + 184))
      {
        v65 = "no";
      }

      LogPrintF(&gLogCategory_APReceiverSystemInfo, "void sysInfo_initFromPrefs(APReceiverSystemInfoRef)", 33554482, "Initial config: Tight Sync Group UUID %@, isLeader %s, model: %@, leaderUUID: %@, groupName: %@\n", *(v30 + 176), v65, *(v30 + 200), *(v30 + 192), *(v30 + 208));
    }

    goto LABEL_175;
  }

LABEL_188:
  *(v30 + 304) = APSSettingsGetInt64() != 0;
  *(v30 + 308) = APSSettingsGetInt64() != 0;
  *(v30 + 311) = APSSettingsGetIntWithDefault();
  *(v30 + 408) = APSGetP2PAllow();
  *(v30 + 409) = APSSettingsGetIntWithDefault();
  *(v30 + 410) = APSSettingsGetIntWithDefault();
  *(v30 + 416) = APSSettingsCopyValue();
  if (*(v30 + 315))
  {
    *(v30 + 432) = 1;
  }

  else
  {
    *(v30 + 432) = APSSettingsGetInt64() != 0;
    APSIsAPMSpeaker();
    *(v30 + 433) = APSSettingsGetIntWithDefault();
    *(v30 + 480) = APSSettingsGetInt64() != 0;
    *(v30 + 472) = 0;
    *(v30 + 481) = 0;
    APSSettingsGetCString();
    if (*(v30 + 480))
    {
      v69 = 3;
    }

    else if (*(v30 + 481))
    {
      v69 = 2;
    }

    else
    {
      if (!*(v30 + 433))
      {
        *(v30 + 428) = 0;
        goto LABEL_197;
      }

      v69 = 1;
    }

    *(v30 + 428) = v69;
  }

LABEL_197:
  *(v30 + 560) = APSSettingsGetInt64() != 0;
  v70 = APSSettingsGetInt64();
  if (v70 >= 1 && LODWORD(size.width) == 0)
  {
    v72 = v70;
  }

  else
  {
    v72 = 30;
  }

  *(v30 + 564) = v72;
  *(v30 + 712) = APSSettingsGetInt64() != 0;
LABEL_204:
  *(v30 + 88) = 0;
  v73 = APSCopyBootUUID();
  v143 = v73;
  if (v73 && gLogCategory_APReceiverSystemInfo <= 50)
  {
    if (gLogCategory_APReceiverSystemInfo != -1)
    {
LABEL_207:
      LogPrintF(&gLogCategory_APReceiverSystemInfo, "APReceiverSystemInfoRef APReceiverSystemInfoCreate(CFDictionaryRef)", 33554482, "### Failed to get bootUUID: %#m\n", v73);
      goto LABEL_209;
    }

    if (_LogCategory_Initialize())
    {
      v73 = v143;
      goto LABEL_207;
    }
  }

LABEL_209:
  if (IsAppleTV())
  {
    *(v30 + 688) = 1;
  }

  *(v30 + 24) = -1;
  *(v30 + 40) = -1;
  *(v30 + 48) = -1;
  *(v30 + 32) = -1;
  if (!*(v30 + 568))
  {
    if (IsAppleTV() || APSIsAPMSpeaker())
    {
      *(v30 + 728) = [[BluetoothAddressMonitor alloc] initWithSystemInfo:v30 queue:*(v30 + 16)];
      v74 = *(v30 + 16);
      handler = MEMORY[0x277D85DD0];
      v176 = 3221225472;
      v177 = __sysInfo_registerForNotificationsAsNeeded_block_invoke;
      v178 = &__block_descriptor_40_e8_v12__0i8l;
      v179 = v30;
      notify_register_dispatch("kAirPlayWHANotification_BreakAwayFromCurrentGroup", (v30 + 36), v74, &handler);
    }

    v75 = *(v30 + 16);
    v159 = MEMORY[0x277D85DD0];
    v160 = 3221225472;
    v161 = __sysInfo_registerForNotificationsAsNeeded_block_invoke_2;
    v162 = &__block_descriptor_40_e8_v12__0i8l;
    v163 = v30;
    notify_register_dispatch("com.apple.airplay.cloudConnectivity", (v30 + 24), v75, &v159);
    v76 = *(v30 + 16);
    v154 = MEMORY[0x277D85DD0];
    v155 = 3221225472;
    v156 = __sysInfo_registerForNotificationsAsNeeded_block_invoke_3;
    v157 = &__block_descriptor_40_e8_v12__0i8l;
    v158 = v30;
    notify_register_dispatch("com.apple.airplay.conferenceRoomMode", (v30 + 28), v76, &v154);
    v77 = *(v30 + 16);
    *&size.width = MEMORY[0x277D85DD0];
    *&size.height = 3221225472;
    v171 = __sysInfo_registerForNotificationsAsNeeded_block_invoke_4;
    v172 = &__block_descriptor_41_e8_v12__0i8l;
    v173 = v30;
    LOBYTE(v174) = v32 == 0;
    notify_register_dispatch("com.apple.airplay.prefsChanged", (v30 + 40), v77, &size);
    v78 = *(v30 + 16);
    v149 = MEMORY[0x277D85DD0];
    v150 = 3221225472;
    v151 = __sysInfo_registerForNotificationsAsNeeded_block_invoke_5;
    v152 = &__block_descriptor_40_e8_v12__0i8l;
    v153 = v30;
    notify_register_dispatch("com.apple.airplay.psgInfoChanged", (v30 + 44), v78, &v149);
    if (!IsAppleTV() && APSIsAPMSpeaker())
    {
      v79 = *(v30 + 16);
      v144 = MEMORY[0x277D85DD0];
      v145 = 3221225472;
      v146 = __sysInfo_registerForNotificationsAsNeeded_block_invoke_6;
      v147 = &__block_descriptor_40_e8_v12__0i8l;
      v148 = v30;
      notify_register_dispatch("kAirPlayWHANotification_GroupMemberInterruptedByPreWHASender", (v30 + 48), v79, &v144);
    }

    if (IsAppleTV())
    {
      v80 = *(v30 + 576);
      v181[0] = MEMORY[0x277D85DD0];
      v181[1] = 3221225472;
      v181[2] = __sysInfo_registerForNotificationsAsNeeded_block_invoke_7;
      v181[3] = &__block_descriptor_40_e8_v12__0i8l;
      v181[4] = v30;
      notify_register_dispatch("com.apple.TVSPowerManager.deviceWillChangeSleepStateNotification", (v30 + 32), v80, v181);
    }

    v81 = [*MEMORY[0x277D25CA0] UTF8String];
    v82 = *(v30 + 16);
    v180[0] = MEMORY[0x277D85DD0];
    v180[1] = 3221225472;
    v180[2] = __sysInfo_registerForNotificationsAsNeeded_block_invoke_8;
    v180[3] = &__block_descriptor_40_e8_v12__0i8l;
    v180[4] = v30;
    notify_register_dispatch(v81, (v30 + 40), v82, v180);
    if (!*(v30 + 328))
    {
      v83 = objc_opt_new();
      if (v83)
      {
        v84 = v83;
        [v83 setDispatchQueue:*(v30 + 16)];
        v164 = MEMORY[0x277D85DD0];
        v165 = 3221225472;
        v166 = __sysInfo_deviceNameChangeListenerStart_block_invoke;
        v167 = &__block_descriptor_40_e5_v8__0l;
        v168 = v30;
        [v84 setSystemNameChangedHandler:&v164];
        [v84 activateWithCompletion:0];
        *(v30 + 328) = v84;
      }

      else
      {
        APSLogErrorAt();
      }
    }
  }

  v85 = *(v30 + 16);
  *&size.width = MEMORY[0x277D85DD0];
  *&size.height = 3221225472;
  v171 = __APReceiverSystemInfoCreate_block_invoke;
  v172 = &__block_descriptor_40_e5_v8__0l;
  v173 = v30;
  dispatch_sync(v85, &size);
  *(v5 + 160) = v30;
  if (v136 && Value && APSFeaturesHasFeature() && APSFeaturesHasFeature() && APSFeaturesHasFeature() && APSFeaturesHasFeature() && APSFeaturesHasFeature() && APSFeaturesHasFeature())
  {
    *(v5 + 256) = 1;
  }

  v86 = v139;
  if (gLogCategory_AirPlayReceiverServer <= 50 && (gLogCategory_AirPlayReceiverServer != -1 || _LogCategory_Initialize()))
  {
    if (*(v5 + 256))
    {
      v87 = "yes";
    }

    else
    {
      v87 = "no";
    }

    LogPrintF(&gLogCategory_AirPlayReceiverServer, "OSStatus AirPlayReceiverServerCreate(CFDictionaryRef, AirPlayReceiverServerRef *)", 33554482, "Is RC-only server: %s\n", v87);
  }

  if (*(v5 + 224))
  {
    *(v5 + 253) = 1;
  }

  else
  {
    *(v5 + 248) = 257;
    if (*(v5 + 232))
    {
      if (!IsAppleTV())
      {
        APSIsAPMSpeaker();
      }

      v140 = APSSettingsGetIntWithDefault();
      FigCFDictionaryGetIntIfPresent();
    }

    else if (APReceiverUIControllerGetShared_once[0] != -1)
    {
      dispatch_once(APReceiverUIControllerGetShared_once, &__block_literal_global_3265);
    }

    if (v132 != 2)
    {
      *(v5 + 250) = 1;
      *(v5 + 252) = *(v5 + 272) == 7000;
    }
  }

  if (*(v5 + 257) != 0 && v138)
  {
    *(v5 + 253) = 1;
  }

  if (APReceiverSessionManagerGetTypeID_once != -1)
  {
    dispatch_once(&APReceiverSessionManagerGetTypeID_once, &__block_literal_global_7471);
  }

  v88 = _CFRuntimeCreateInstance();
  if (v88)
  {
    v89 = v88;
    *(v88 + 16) = -1;
    v90 = v88 + 16;
    *(v88 + 68) = 0u;
    *(v88 + 148) = 0;
    *(v88 + 132) = 0u;
    *(v88 + 116) = 0u;
    *(v88 + 100) = 0u;
    *(v88 + 84) = 0u;
    *(v88 + 52) = 0u;
    *(v88 + 36) = 0u;
    *(v88 + 20) = 0u;
    *(v88 + 72) = v140;
    v91 = MEMORY[0x277CBF128];
    *(v88 + 64) = CFArrayCreateMutable(v139, 0, MEMORY[0x277CBF128]);
    *(v90 + 64) = CFArrayCreateMutable(0, 0, v91);
    *(v90 + 8) = v5;
    *(v90 + 24) = v136;
    if (pthread_mutex_init((v90 + 72), 0))
    {
      APSLogErrorAt();
      CFRelease(v89);
    }

    else
    {
      if (IsAppleTV() || APSIsAPMSpeaker())
      {
        notify_register_check("com.apple.airplay.active", v90);
        notify_set_state(*(v89 + 16), *(v89 + 32));
        notify_post("com.apple.airplay.active");
        CMNotificationCenterGetDefaultLocalCenter();
        v92 = CMNotificationCenterAddListener();
        sessionManager_handleSenderSessionStateChangeNotification(v92, v89);
      }

      if (gLogCategory_APReceiverSessionManager <= 10 && (gLogCategory_APReceiverSessionManager != -1 || _LogCategory_Initialize()))
      {
        LogPrintF(&gLogCategory_APReceiverSessionManager, "OSStatus APReceiverSessionManagerCreate(AirPlayReceiverServerRef, int, Boolean, APReceiverSessionManagerRef *)", 33554442, "Receiver Session Manager %{ptr} created\n", v89);
      }

      *(v5 + 216) = v89;
    }
  }

  else
  {
    APSLogErrorAt();
  }

  v93 = objc_alloc_init(AirPlayReceiverPlatform);
  if (!v93 || (v94 = v93, v93->_server = v5, *(v5 + 16) = v93, *&v93->_uiErrorNotifyToken = -1, p_uiErrorNotifyToken = &v93->_uiErrorNotifyToken, *&v93->_playbackPreventNotifyToken = -1, p_playbackPreventNotifyToken = &v93->_playbackPreventNotifyToken, getpid(), proc_set_wakemon_params(), v97 = CFSetCreateMutable(v139, 0, MEMORY[0x277CBF158]), (*(p_uiErrorNotifyToken - 14) = v97) == 0) || (v98 = CFSetCreateMutable(v139, 0, MEMORY[0x277CBF158]), (v94->_state.mediaVideoSessions = v98) == 0) || (v99 = CFSetCreateMutable(v139, 0, MEMORY[0x277CBF158]), (v94->_state.screenSessions = v99) == 0) || (v100 = CFSetCreateMutable(v139, 0, MEMORY[0x277CBF158]), (v94->_state.auxAudioSessions = v100) == 0))
  {
LABEL_351:
    APSLogErrorAt();
    if (gLogCategory_AirPlayReceiverPlatform <= 90 && (gLogCategory_AirPlayReceiverPlatform != -1 || _LogCategory_Initialize()))
    {
      LogPrintF(&gLogCategory_AirPlayReceiverPlatform, "OSStatus AirPlayReceiverServerPlatformInitialize(AirPlayReceiverServerRef)", 33554522, "### Platform init failed: %#m\n", 4294960568);
    }

    AirPlayReceiverServerPlatformFinalize(*v131);
    APSLogErrorAt();
    CFRelease(v11);
    goto LABEL_356;
  }

  if (*(v5 + 250))
  {
    notify_register_check("com.apple.airplay.dacp.error", p_uiErrorNotifyToken);
  }

  notify_register_dispatch("com.apple.ManagedConfiguration.profileListChanged", &v94->_managedDefaultsChangedNotificationToken, MEMORY[0x277D85CD0], &__block_literal_global_1612);
  AirPlayManagedDefaultsLogging_HandleReceiverManagedDefaultsLoggingChanged();
  if (*(v5 + 250))
  {
    var15 = v94->_server->var15;
    *&size.width = MEMORY[0x277D85DD0];
    *&size.height = 3221225472;
    v171 = __AirPlayReceiverServerPlatformInitialize_block_invoke_2;
    v172 = &unk_278C5FB98;
    v173 = v94;
    v174 = v5;
    notify_register_dispatch("com.apple.airplay.playbackAllow", p_uiErrorNotifyToken + 1, var15, &size);
    v102 = v94->_server->var15;
    v164 = MEMORY[0x277D85DD0];
    v165 = 3221225472;
    v166 = __AirPlayReceiverServerPlatformInitialize_block_invoke_3;
    v167 = &unk_278C5FB98;
    v168 = v94;
    v169 = v5;
    notify_register_dispatch("com.apple.airplay.playbackPrevent", p_playbackPreventNotifyToken, v102, &v164);
  }

  v159 = MEMORY[0x277D85DD0];
  v160 = 3221225472;
  v161 = __AirPlayReceiverServerPlatformInitialize_block_invoke_4;
  v162 = &__block_descriptor_40_e8_v12__0i8l;
  v163 = v5;
  v103 = MEMORY[0x277D85CD0];
  notify_register_dispatch("com.apple.airplay.prefsChanged", p_uiErrorNotifyToken + 3, MEMORY[0x277D85CD0], &v159);
  v104 = objc_alloc_init(AirPlayControllerServer);
  v94->_controllerServer = v104;
  [(AirPlayControllerServer *)v104 setDispatchQueue:v103];
  v154 = MEMORY[0x277D85DD0];
  v155 = 3221225472;
  v156 = __AirPlayReceiverServerPlatformInitialize_block_invoke_5;
  v157 = &__block_descriptor_40_e28_i40__0__NSString_8_16_24__32l;
  v158 = v5;
  [(AirPlayControllerServer *)v94->_controllerServer setPerformCommandBlock:&v154];
  v149 = MEMORY[0x277D85DD0];
  v150 = 3221225472;
  v151 = __AirPlayReceiverServerPlatformInitialize_block_invoke_6;
  v152 = &__block_descriptor_40_e25__32__0__NSString_8_16_i24l;
  v153 = v5;
  [(AirPlayControllerServer *)v94->_controllerServer setCopyPropertyBlock:&v149];
  v144 = MEMORY[0x277D85DD0];
  v145 = 3221225472;
  v146 = __AirPlayReceiverServerPlatformInitialize_block_invoke_7;
  v147 = &__block_descriptor_40_e24_i32__0__NSString_8_16_24l;
  v148 = v5;
  [(AirPlayControllerServer *)v94->_controllerServer setSetPropertyBlock:&v144];
  [(AirPlayControllerServer *)v94->_controllerServer startWithXPCName:@"com.apple.airplay.receiver.xpc"];
  if (APSIsWHAParallelSetupProcessingEnabled())
  {
    v105 = dispatch_queue_attr_make_with_qos_class(0, QOS_CLASS_USER_INITIATED, 0);
    v94->_mediaAVAudioSessionActivationQueue = dispatch_queue_create("APReceiverMediaAVAudioSessionActivation", v105);
  }

  v106 = MEMORY[0x277CEA3A0];
  if (*(v5 + 257) || IsAppleTV() || APSIsAPMSpeaker())
  {
    v180[0] = *v106;
    v181[0] = @"com.apple.airplay.receiver.mediaremote.services";
    [MEMORY[0x277CBEAC0] dictionaryWithObjects:v181 forKeys:v180 count:1];
    gAPReceiverMediaRemoteService_0 = CFRetain(v5);
    gAPReceiverMediaRemoteService_1 = CFDictionaryCreateMutable(v139, 0, MEMORY[0x277CBF138], MEMORY[0x277CBF150]);
    if (!gAPReceiverMediaRemoteService_1 || (gAPReceiverMediaRemoteService_5 = FigSimpleMutexCreate()) == 0 || (gAPReceiverMediaRemoteService_4 = FigSimpleMutexCreate(), gAPReceiverMediaRemoteService_3 = CFArrayCreateMutable(v139, 0, 0), gAPReceiverMediaRemoteService_7 = FigSimpleMutexCreate(), APSXPCServerAddCommandHandler()) || APSXPCServerAddCommandHandler() || (APSXPCServerAddCommandHandler(), APSXPCServerAddCommandHandler()) || APSXPCServerStart())
    {
      APSLogErrorAt();
    }

    else
    {
      LocalCenter = CFNotificationCenterGetLocalCenter();
      DisconnectNotificationName = APSXPCServerGetDisconnectNotificationName();
      CFNotificationCenterAddObserver(LocalCenter, 0, aprmrc_handleClientDeath, DisconnectNotificationName, 0, CFNotificationSuspensionBehaviorDeliverImmediately);
      v109 = CFNotificationCenterGetLocalCenter();
      v110 = APSXPCClientGetDisconnectNotificationName();
      CFNotificationCenterAddObserver(v109, 0, _HandleAgentServiceDisconnect, v110, 0, CFNotificationSuspensionBehaviorDeliverImmediately);
    }
  }

  if (!*(v5 + 256))
  {
    [+[APAVAudioSessionManager mediaSessionManager](APAVAudioSessionManager setUpSessionWithIsMixable:"setUpSessionWithIsMixable:", v94->_server->var41 != 0];
    v94->_state.mediaAVAudioSessionID = -[AVAudioSession opaqueSessionID]([+[APAVAudioSessionManager mediaSessionManager](APAVAudioSessionManager session], "opaqueSessionID");
    v111 = [MEMORY[0x277CCAB98] defaultCenter];
    v112 = *MEMORY[0x277CB8068];
    [v111 addObserver:v94 selector:sel__handleAVAudioSessionInterruption_ name:*MEMORY[0x277CB8068] object:{-[APAVAudioSessionManager session](+[APAVAudioSessionManager mediaSessionManager](APAVAudioSessionManager, "mediaSessionManager"), "session")}];
    v113 = [MEMORY[0x277CCAB98] defaultCenter];
    [v113 addObserver:v94 selector:sel__handleAVAudioSessionServicesReset_ name:*MEMORY[0x277CB80A0] object:{-[APAVAudioSessionManager session](+[APAVAudioSessionManager mediaSessionManager](APAVAudioSessionManager, "mediaSessionManager"), "session")}];
    v114 = [MEMORY[0x277CCAB98] defaultCenter];
    v115 = *MEMORY[0x277CB8098];
    v116 = [+[APAVAudioSessionManager mediaSessionManager](APAVAudioSessionManager session];
    v117 = v115;
    v86 = v139;
    [v114 addObserver:v94 selector:sel__handleAVAudioSessionServicesLost_ name:v117 object:v116];
    [+[APAVAudioSessionManager ambientSessionManager](APAVAudioSessionManager setUpSessionWithIsMixable:"setUpSessionWithIsMixable:", 1];
    [objc_msgSend(MEMORY[0x277CCAB98] "defaultCenter")];
    _NotifyIsPlayingAmbientAudio(0);
    [(AirPlayReceiverPlatform *)v94 _registerAVSystemControllerNotifications];
    [(AirPlayReceiverPlatform *)v94 _fetchInitialStates];
  }

  if (!v94->_server->var46)
  {
    if (gLogCategory_AirPlayReceiverPlatform <= 50 && (gLogCategory_AirPlayReceiverPlatform != -1 || _LogCategory_Initialize()))
    {
      v124 = APSNowPlayingSessionDataSourceEnabled();
      v125 = "";
      if (!v124)
      {
        v125 = " not";
      }

      LogPrintF(&gLogCategory_AirPlayReceiverPlatform, "OSStatus AirPlayReceiverServerPlatformInitialize(AirPlayReceiverServerRef)", 33554482, "Now Playing Session Manager data source is%s enabled\n", v125);
    }

    v128 = APSSettingsGetIntWithDefault();
    v94->_useMediaRemotePerPlayerAPI = v128;
    if (v128)
    {
      if (gLogCategory_AirPlayReceiverPlatform <= 50 && (gLogCategory_AirPlayReceiverPlatform != -1 || _LogCategory_Initialize()))
      {
        LogPrintF(&gLogCategory_AirPlayReceiverPlatform, "OSStatus AirPlayReceiverServerPlatformInitialize(AirPlayReceiverServerRef)", 33554482, "Use MediaRemote per-player API\n");
      }

      goto LABEL_288;
    }

    v129 = [[AirPlayReceiverMediaRemoteHelper alloc] initWithPlayerID:0 withSystemInfo:v94->_server->var26 withReceiverServer:?];
    v94->_mediaRemoteHelper = v129;
    if (v129)
    {
      [objc_msgSend(MEMORY[0x277CCAB98] "defaultCenter")];
      goto LABEL_288;
    }

    goto LABEL_351;
  }

LABEL_288:
  v118 = v11;
  v119 = dispatch_queue_create("AirPlayReceiverServerWiFiDELoadQueue", 0);
  if (v119)
  {
    CFRetain(v94->_server);
    handler = MEMORY[0x277D85DD0];
    v176 = 3221225472;
    v177 = ___LoadWiFiDEAsync_block_invoke;
    v178 = &unk_278C608C8;
    v179 = v94;
    dispatch_async(v119, &handler);
  }

  dispatch_release(v119);
  notify_register_check("com.apple.airplay.advertisingDidChange", out_token);
  gAirPlayReceiverServer = v5;
  CMNotificationCenterGetDefaultLocalCenter();
  CMNotificationCenterAddListener();
  CMNotificationCenterAddListener();
  CMNotificationCenterAddListener();
  CMNotificationCenterAddListener();
  CMNotificationCenterAddListener();
  CMNotificationCenterAddListener();
  if (APSIsAPMSpeaker())
  {
    CMNotificationCenterAddListener();
    CMNotificationCenterAddListener();
  }

  *(v5 + 144) = 90;
  *(v5 + 152) = SecondsToUpTicks();
  v120 = MEMORY[0x23EF18CD0]();
  if (!IsAppleTV() && !APSIsAPMSpeaker())
  {
    v121 = 0;
    v126 = 0;
    goto LABEL_318;
  }

  if (v120)
  {
    v121 = CFDictionaryCreateMutable(v86, 1, 0, 0);
    FigCFDictionarySetValue();
    v122 = APSXPCServerStart();
    if (v122)
    {
      if (gLogCategory_AirPlayReceiverServer <= 90)
      {
        v123 = v122;
        if (gLogCategory_AirPlayReceiverServer != -1 || _LogCategory_Initialize())
        {
          LogPrintF(&gLogCategory_AirPlayReceiverServer, "void _startReceiverXPCServices(void)", 33554522, "failed to start receiver agent: err %#m", v123);
        }
      }
    }
  }

  else
  {
    v121 = 0;
  }

  if (IsAppleTV())
  {
    APSXPCClientAddEventHandler();
  }

  APSXPCClientAddEventHandler();
  v126 = APSXPCClientSendCommandCreatingReply();
  if (v126 && gLogCategory_AirPlayReceiverServer <= 90 && (gLogCategory_AirPlayReceiverServer != -1 || _LogCategory_Initialize()))
  {
    LogPrintF(&gLogCategory_AirPlayReceiverServer, "void _startReceiverXPCServices(void)", 33554522, "TriggerLocalSenderStateUpdate failed with error: %#m\n", v126);
  }

  if (!v120)
  {
    CMNotificationCenterGetDefaultLocalCenter();
    APSXPCServerGetDisconnectNotificationName();
    CMNotificationCenterAddListener();
    goto LABEL_318;
  }

  v126 = APSXPCServerAddCommandHandler();
  if (!v126)
  {
LABEL_318:
    v127 = v135;
LABEL_319:
    if (gLogCategory_AirPlayReceiverServer <= 50 && (gLogCategory_AirPlayReceiverServer != -1 || _LogCategory_Initialize()))
    {
      LogPrintF(&gLogCategory_AirPlayReceiverServer, "void _startReceiverXPCServices(void)", 33554482, "started receiver xpc services: err %#m", v126);
    }

    goto LABEL_323;
  }

  v127 = v135;
  if (gLogCategory_AirPlayReceiverServer <= 90)
  {
    if (gLogCategory_AirPlayReceiverServer != -1 || _LogCategory_Initialize())
    {
      LogPrintF(&gLogCategory_AirPlayReceiverServer, "void _startReceiverXPCServices(void)", 33554522, "failed to add agent command handler: err %#m", v126);
    }

    goto LABEL_319;
  }

LABEL_323:
  if (v121)
  {
    CFRelease(v121);
  }

  CFRetain(v5);
  dispatch_async_f(MEMORY[0x277D85CD0], v5, _HandleDenyInterruptionsStatusChanged);
  if (IsAppleInternalBuild())
  {
    if (!*(v5 + 257))
    {
      DebugIPC_EnsureInitialized();
      if (gLogCategory_AirPlayReceiverServer <= 50 && (gLogCategory_AirPlayReceiverServer != -1 || _LogCategory_Initialize()))
      {
        LogPrintF(&gLogCategory_AirPlayReceiverServer, "OSStatus AirPlayReceiverServerCreate(CFDictionaryRef, AirPlayReceiverServerRef *)", 33554482, "[%{ptr}] Set up debug handler\n", v5);
      }
    }
  }

  APSRTCReportingAgentCreate();
  *v127 = v5;
  CFRelease(v118);
  return 0;
}

uint64_t _HandleDebug(const __CFDictionary *a1, CFMutableDictionaryRef *a2)
{
  v27 = 0;
  v25 = 0u;
  v26 = 0u;
  v24 = 0u;
  cf = 0;
  theDict = 0;
  if (gAirPlayReceiverServer && (v3 = *(gAirPlayReceiverServer + 216)) != 0)
  {
    APReceiverSessionManagerCopyAirPlaySessionWithAttribute(v3, 0, 0, &cf);
    if (cf)
    {
      v7 = AirPlayReceiverSessionCopyProperty(cf, v5, @"mediaAudioSession", v6, 0);
    }

    else
    {
      v7 = 0;
    }

    DataBuffer_Init();
    Value = CFDictionaryGetValue(a1, @"command");
    if (Value)
    {
      v9 = Value;
      v10 = CFGetTypeID(Value);
      if (v10 == CFStringGetTypeID())
      {
        v11 = CFDictionaryGetValue(a1, @"value");
        if (v11)
        {
          v12 = v11;
          Length = CFStringGetLength(v11);
          v14 = malloc_type_calloc(1uLL, Length + 1, 0x100004077774924uLL);
          if (!v14)
          {
            APSLogErrorAt();
            v18 = 4294960568;
            goto LABEL_39;
          }

          v15 = v14;
          CFStringGetCString(v12, v14, Length + 1, 0x8000100u);
        }

        else
        {
          v15 = 0;
        }

        if (CFEqual(v9, @"show"))
        {
          Int64 = CFDictionaryGetInt64();
          context[0] = gAirPlayReceiverServer;
          context[1] = Int64;
          context[2] = &v24;
          if (gAirPlayReceiverServer)
          {
            dispatch_sync_f(*(gAirPlayReceiverServer + 24), context, _AirPlayReceiverServerDebugShow);
          }

          Formatted = CFPropertyListCreateFormatted(0, &theDict, "{%kO=%.*s}", @"value", v26, *(&v25 + 1));
          if (Formatted)
          {
            v18 = Formatted;
            APSLogErrorAt();
            goto LABEL_24;
          }

          goto LABEL_20;
        }

        if (!CFEqual(v9, @"control"))
        {
          v18 = 4294960582;
          goto LABEL_24;
        }

        if (v15)
        {
          v19 = CFPropertyListCreateFormatted(0, &theDict, "{%kO=%.*s}", @"value", v26, *(&v25 + 1));
          if (v19)
          {
            v18 = v19;
            APSLogErrorAt();
            DataBuffer_Free();
LABEL_25:
            free(v15);
            goto LABEL_26;
          }

LABEL_20:
          if (theDict)
          {
            CFDictionarySetValue(theDict, @"responseType", v9);
            v20 = theDict;
          }

          else
          {
            v20 = 0;
          }

          v18 = 0;
          *a2 = v20;
          theDict = 0;
LABEL_24:
          DataBuffer_Free();
          if (!v15)
          {
            goto LABEL_26;
          }

          goto LABEL_25;
        }

        APSLogErrorAt();
        v18 = 0;
      }

      else
      {
        APSLogErrorAt();
        v18 = 4294960540;
      }
    }

    else
    {
      v18 = 4294960582;
    }
  }

  else
  {
    APSLogErrorAt();
    v7 = 0;
    v18 = 4294960587;
  }

LABEL_39:
  DataBuffer_Free();
LABEL_26:
  if (theDict)
  {
    CFRelease(theDict);
  }

  if (cf)
  {
    CFRelease(cf);
  }

  if (v7)
  {
    CFRelease(v7);
  }

  return v18;
}

void _AirPlayReceiverServerDebugShow(unsigned int *a1)
{
  v28 = 0;
  DataBuffer_AppendF(*(a1 + 2), "\n");
  DataBuffer_AppendF(*(a1 + 2), "+-+ AirPlay Server state +-+\n");
  DataBuffer_AppendF(*(a1 + 2), "\n");
  if (CFObjectGetPropertyInt64Sync())
  {
    v2 = "yes";
  }

  else
  {
    v2 = "no";
  }

  DataBuffer_AppendF(*(a1 + 2), " AirPlayEnabled=%s", v2);
  if (*(*a1 + 48))
  {
    v3 = "yes";
  }

  else
  {
    v3 = "no";
  }

  DataBuffer_AppendF(*(a1 + 2), " allowFullBonjourAdvertisingOverAWDL=%s", v3);
  if (*(*a1 + 49))
  {
    v4 = "yes";
  }

  else
  {
    v4 = "no";
  }

  DataBuffer_AppendF(*(a1 + 2), " allowPartialBonjourAdvertisingOverAWDL=%s", v4);
  if (*(*a1 + 50))
  {
    v5 = "yes";
  }

  else
  {
    v5 = "no";
  }

  DataBuffer_AppendF(*(a1 + 2), " allowOpenFullNANAdvertising=%s", v5);
  if (*(*a1 + 51))
  {
    v6 = "yes";
  }

  else
  {
    v6 = "no";
  }

  DataBuffer_AppendF(*(a1 + 2), " allowOpenPartialNANAdvertising=%s", v6);
  if (*(*a1 + 52))
  {
    v7 = "yes";
  }

  else
  {
    v7 = "no";
  }

  DataBuffer_AppendF(*(a1 + 2), " allowSecurePartialNANAdvertising=%s", v7);
  if (*(*a1 + 124))
  {
    v8 = "yes";
  }

  else
  {
    v8 = "no";
  }

  DataBuffer_AppendF(*(a1 + 2), " playing=%s", v8);
  DataBuffer_AppendF(*(a1 + 2), " playingOverAWDLCount=%d", *(*a1 + 128));
  v9 = *(a1 + 2);
  if (CFObjectGetPropertyInt64Sync())
  {
    v10 = "yes";
  }

  else
  {
    v10 = "no";
  }

  DataBuffer_AppendF(v9, " denyInterruptions=%s", v10);
  PropertyInt64Sync = CFObjectGetPropertyInt64Sync();
  v12 = CFObjectGetPropertyInt64Sync();
  if (PropertyInt64Sync)
  {
    v13 = "yes";
  }

  else
  {
    v13 = "no";
  }

  DataBuffer_AppendF(*(a1 + 2), " ReceiverSessionIsActive=%s", v13);
  if (v12)
  {
    v14 = "yes";
  }

  else
  {
    v14 = "no";
  }

  DataBuffer_AppendF(*(a1 + 2), " ReceiverDeviceIsPlaying=%s", v14);
  v15 = *(a1 + 2);
  if (APSMultiPrimariesEnabled())
  {
    v16 = "yes";
  }

  else
  {
    v16 = "no";
  }

  DataBuffer_AppendF(v15, " MultiPlayerEnabled=%s", v16);
  v17 = *(a1 + 2);
  if (APSNowPlayingSessionDataSourceEnabled())
  {
    v18 = "yes";
  }

  else
  {
    v18 = "no";
  }

  DataBuffer_AppendF(v17, " NowPlayingSessionDataSourceEnabled=%s", v18);
  DataBuffer_AppendF(*(a1 + 2), "\n");
  v20 = APReceiverSystemInfoCopyProperty(*(*a1 + 160), v19, @"AdvertiserInfo", 0, &v28);
  v23 = APAdvertiserInfoCopyProperty(v20, v21, @"featuresEx", v22, &v28);
  APSFeaturesCopyStringRepresentation();
  DataBuffer_AppendF(*(a1 + 2), "Features=%@", 0);
  if (v23)
  {
    CFRelease(v23);
  }

  v24 = CFObjectGetPropertyInt64Sync();
  DataBuffer_AppendF(*(a1 + 2), " SystemFlags=0x%04X\n", v24);
  if (v20)
  {
    CFRelease(v20);
  }

  v25 = *(*a1 + 40);
  if (v25)
  {
    v26 = a1[2];
    v27 = *(a1 + 2);
    context[3] = 0;
    context[0] = v25;
    context[1] = v26;
    context[2] = v27;
    dispatch_sync_f(*(v25 + 16), context, _APAdvertiserDebugShow);
  }
}

void _handleSenderProcessDidDisconnect()
{
  if (gAirPlayReceiverServer && (v0 = *(gAirPlayReceiverServer + 160)) != 0)
  {
    APReceiverSystemInfoHandleAPServicesReset(v0);
    v1 = 0;
  }

  else
  {
    v1 = 4294960578;
    APSLogErrorAt();
  }

  if (gLogCategory_AirPlayReceiverServer <= 50 && (gLogCategory_AirPlayReceiverServer != -1 || _LogCategory_Initialize()))
  {
    LogPrintF(&gLogCategory_AirPlayReceiverServer, "void _handleSenderProcessDidDisconnect(CMNotificationCenterRef, const void *, CFStringRef, const void *, const void *)", 33554482, "handled sender process did terminate: err %#m", v1);
  }
}

uint64_t _handleSenderProcessDidLaunch()
{
  if (gAirPlayReceiverServer && (v0 = *(gAirPlayReceiverServer + 160)) != 0)
  {
    APReceiverSystemInfoHandleAPServicesReset(v0);
    v1 = 0;
  }

  else
  {
    v1 = 4294960578;
    APSLogErrorAt();
  }

  if (gLogCategory_AirPlayReceiverServer <= 50 && (gLogCategory_AirPlayReceiverServer != -1 || _LogCategory_Initialize()))
  {
    LogPrintF(&gLogCategory_AirPlayReceiverServer, "OSStatus _handleSenderProcessDidLaunch(CFStringRef, CFDictionaryRef, CFDictionaryRef *)", 33554482, "handled sender process did launch command: err %#m", v1);
  }

  return v1;
}

void _handleAPReceiverServicesEvents(__CFString *cf1, const __CFDictionary *a2)
{
  v2 = gAirPlayReceiverServer;
  if (gAirPlayReceiverServer)
  {
    if (cf1 == @"nonPersistentReceiverSessionStartedOnHTSecondary")
    {
      goto LABEL_20;
    }

    if (!cf1)
    {
      return;
    }

    if (CFEqual(cf1, @"nonPersistentReceiverSessionStartedOnHTSecondary"))
    {
LABEL_20:
      if (APSIsATVInHTGroup())
      {
        v9 = 0;
        v10 = 0;
        v8 = CFRetain(v2);
        if (gLogCategory_AirPlayReceiverServer <= 50 && (gLogCategory_AirPlayReceiverServer != -1 || _LogCategory_Initialize()))
        {
          LogPrintF(&gLogCategory_AirPlayReceiverServer, "void _handleAPReceiverServicesEvents(CFStringRef, CFDictionaryRef)", 33554482, "*** Receiver session started on HT secondary\n", v8, v9, v10);
        }

        if (a2)
        {
          Value = CFDictionaryGetValue(a2, @"HijackID");
          v10 = Value;
          if (Value)
          {
            CFRetain(Value);
          }

          LODWORD(v9) = CFDictionaryGetInt64();
        }

        APSDispatchAsyncFHelper();
      }
    }

    else if (cf1 == @"LocalSenderStateChanged" || CFEqual(cf1, @"LocalSenderStateChanged"))
    {
      v5 = v2[20];
      CFRetain(a2);
      CFRetain(v5);
      v6 = v5[2];
      v8 = MEMORY[0x277D85DD0];
      v9 = 3221225472;
      v10 = __APReceiverSystemInfoHandleLocalSenderStateChanged_block_invoke;
      v11 = &__block_descriptor_48_e5_v8__0l;
      v12 = v5;
      v13 = a2;
      dispatch_async(v6, &v8);
    }
  }
}

void _HandleReceiverSessionStartedOnHTSecondary(uint64_t a1)
{
  v1 = *a1;
  v2 = *(a1 + 8);
  v3 = *(a1 + 16);
  v7 = 0;
  cf = 0;
  v4 = 0;
  if (!APSIsATVInHTGroup() || v2 == 2)
  {
LABEL_17:
    v5 = cf;
    goto LABEL_18;
  }

  APReceiverSessionManagerCopyAirPlaySessionWithAttribute(v1[27], 4, &cf, &v7);
  v4 = 0;
  v5 = cf;
  if (cf && v7)
  {
    v6 = *(*(CMBaseObjectGetVTable() + 16) + 64);
    if (v6)
    {
      v4 = v6(v5, @"hijackID", 0);
    }

    else
    {
      v4 = 0;
    }

    if (v4 != v3 && (!v4 || !v3 || !CFEqual(v4, v3)))
    {
      if (gLogCategory_AirPlayReceiverServer <= 50 && (gLogCategory_AirPlayReceiverServer != -1 || _LogCategory_Initialize()))
      {
        LogPrintF(&gLogCategory_AirPlayReceiverServer, "void _HandleReceiverSessionStartedOnHTSecondary(void *)", 33554482, "*** Closing main connection [%{ptr}] (hijackID: %@) on HT-unaware session started on HT secondary (hijackID: %@)\n", cf, v4, v3);
      }

      AirPlayReceiverServerCloseConnection(v1, cf);
    }

    goto LABEL_17;
  }

LABEL_18:
  if (v5)
  {
    CFRelease(v5);
  }

  if (v7)
  {
    CFRelease(v7);
  }

  if (v4)
  {
    CFRelease(v4);
  }

  if (v3)
  {
    CFRelease(v3);
  }

  CFRelease(v1);
}

uint64_t _GlobalInitialize()
{
  gAirPlayTransaction = os_transaction_create();
  signal(13, 1);
  LogSetAppID();
  if (IsAppleInternalBuild())
  {
    LogControl();
  }

  return LogControl();
}

CFStringRef AirPlayReceiverServerCopyProperty(uint64_t a1, int a2, CFTypeRef cf1, uint64_t a4, _DWORD *a5)
{
  v28 = 0;
  cf = 0;
  v27 = 0;
  if (CFEqual(cf1, @"audioBufferInfo"))
  {
    APReceiverSessionManagerCopyAirPlaySessionWithAttribute(*(a1 + 216), 0, 0, &cf);
    if (cf)
    {
      Int64 = AirPlayReceiverSessionCopyProperty(cf, v8, cf1, v9, &v28);
LABEL_4:
      v27 = Int64;
      goto LABEL_34;
    }

    APSLogErrorAt();
    v14 = -6709;
    goto LABEL_33;
  }

  if (CFEqual(cf1, @"playing"))
  {
    if (*(a1 + 124))
    {
      v11 = MEMORY[0x277CBED28];
    }

    else
    {
      v11 = MEMORY[0x277CBED10];
    }

    v27 = *v11;
    CFRetain(v27);
    goto LABEL_34;
  }

  if (CFEqual(cf1, @"sourceVersion"))
  {
    v12 = *MEMORY[0x277CBECE8];
    ShortVersionLength = APSVersionUtilsGetShortVersionLength();
    v27 = CFStringCreateWithBytesNoCopy(v12, "920.10.1", ShortVersionLength, 0x600u, 0, *MEMORY[0x277CBED00]);
    if (v27)
    {
      goto LABEL_34;
    }

    APSLogErrorAt();
    v14 = -6762;
    goto LABEL_33;
  }

  if (CFEqual(cf1, @"deviceInfo"))
  {
    v31 = 0;
    format = 0;
    data = 0;
    v16 = APReceiverSystemInfoCopyProperty(*(a1 + 160), v15, @"AdvertiserInfo", 0, &v31);
    if (!v31)
    {
      v31 = APAdvertiserInfoCreateData(v16, &data);
      if (!v31)
      {
        v17 = CFPropertyListCreateWithData(*MEMORY[0x277CBECE8], data, 0, &format, 0);
        v27 = v17;
        if (v17)
        {
          if (gLogCategory_AirPlayReceiverServer <= 50 && ((v18 = v17, gLogCategory_AirPlayReceiverServer != -1) || _LogCategory_Initialize()))
          {
            LogPrintF(&gLogCategory_AirPlayReceiverServer, "OSStatus _createDeviceInfoDictionary(AirPlayReceiverServerRef, CFDictionaryRef *)", 50, "Created device info: %@\n", v18);
            if (!v16)
            {
              goto LABEL_30;
            }
          }

          else if (!v16)
          {
LABEL_30:
            if (data)
            {
              CFRelease(data);
            }

            v14 = v31;
LABEL_33:
            v28 = v14;
            goto LABEL_34;
          }

LABEL_29:
          CFRelease(v16);
          goto LABEL_30;
        }

        v31 = -6762;
      }
    }

    APSLogErrorAt();
    if (!v16)
    {
      goto LABEL_30;
    }

    goto LABEL_29;
  }

  if (CFEqual(cf1, @"listeningPort"))
  {
    Int64 = CFNumberCreateInt64();
    goto LABEL_4;
  }

  if (CFEqual(cf1, @"assistedModeAdvertisingInfo"))
  {
    v19 = *(a1 + 40);
    if (v19)
    {
      v28 = APAdvertiserCopyProperty(v19, @"assistedModeInfo", &v27);
      if (v28)
      {
        APSLogErrorAt();
      }
    }
  }

  else
  {
    if (!CFEqual(cf1, @"uglServerInfo"))
    {
      Int64 = AirPlayReceiverServerPlatformCopyProperty(0, v21, cf1, v22, &v28);
      goto LABEL_4;
    }

    if (*(a1 + 257))
    {
      Mutable = CFDictionaryCreateMutable(0, 0, MEMORY[0x277CBF138], MEMORY[0x277CBF150]);
      v24 = *(a1 + 80);
      if (v24)
      {
        if (gLogCategory_AirPlayReceiverServer <= 50)
        {
          if (gLogCategory_AirPlayReceiverServer != -1 || (v25 = _LogCategory_Initialize(), v24 = *(a1 + 80), v25))
          {
            LogPrintF(&gLogCategory_AirPlayReceiverServer, "CFTypeRef AirPlayReceiverServerCopyProperty(CFTypeRef, uint32_t, CFStringRef, CFTypeRef, OSStatus *)", 33554482, "<APUGLPort> Setting UGL server port in UGLServerInfo: %d\n", *(v24 + 48));
          }
        }

        FigCFDictionarySetInt64();
        FigCFDictionarySetValue();
      }

      v27 = Mutable;
    }
  }

LABEL_34:
  if (cf)
  {
    CFRelease(cf);
  }

  if (a5)
  {
    *a5 = v28;
  }

  return v27;
}

uint64_t AirPlayReceiverServerSetProperty(uint64_t a1, int a2, CFTypeRef cf1, uint64_t a4, uint64_t a5)
{
  if (!a1)
  {
    APSLogErrorAt();
    return 4294960587;
  }

  if (gLogCategory_AirPlayReceiverServer <= 50 && (gLogCategory_AirPlayReceiverServer != -1 || _LogCategory_Initialize()))
  {
    LogPrintF(&gLogCategory_AirPlayReceiverServer, "OSStatus AirPlayReceiverServerSetProperty(CFTypeRef, uint32_t, CFStringRef, CFTypeRef, CFTypeRef)", 33554482, "%{ptr} set propertyKey: '%@'\n", a1, cf1);
  }

  if (CFEqual(cf1, @"playing"))
  {
    v8 = 0;
    *(a1 + 124) = CFGetInt64() != 0;
    return v8;
  }

  if (CFEqual(cf1, @"playPassword"))
  {
    APReceiverSystemInfoSetProperty(*(a1 + 160), v9, @"Password", v10, a5);
    return 0;
  }

  if (CFEqual(cf1, @"canRecordScreen"))
  {
    v8 = APReceiverSystemInfoSetProperty(*(a1 + 160), v11, @"CanRecordScreenStream", v12, a5);
    if (!v8)
    {
      return v8;
    }

LABEL_37:
    APSLogErrorAt();
    return v8;
  }

  if (CFEqual(cf1, @"screenDemoMode"))
  {
    v8 = APReceiverSystemInfoSetProperty(*(a1 + 160), v13, @"ScreenDemoMode", v14, a5);
    if (!v8)
    {
      return v8;
    }

    goto LABEL_37;
  }

  if (CFEqual(cf1, @"forwardFrameUserData"))
  {
    v8 = APReceiverSystemInfoSetProperty(*(a1 + 160), v15, @"ForwardFrameUserData", v16, a5);
    if (!v8)
    {
      return v8;
    }

    goto LABEL_37;
  }

  if (CFEqual(cf1, @"displayHDRMode"))
  {
    v8 = APReceiverSystemInfoSetProperty(*(a1 + 160), v17, @"DisplayHDRModeOverride", v18, a5);
    if (!v8)
    {
      return v8;
    }

    goto LABEL_37;
  }

  if (CFEqual(cf1, @"displaySizeMax"))
  {
    v8 = APReceiverSystemInfoSetProperty(*(a1 + 160), v19, @"DisplaySizeMaxOverride", v20, a5);
    if (!v8)
    {
      return v8;
    }

    goto LABEL_37;
  }

  if (CFEqual(cf1, @"usePTPClock"))
  {
    v8 = APReceiverSystemInfoSetProperty(*(a1 + 160), v21, @"UsePTPClock", v22, a5);
    if (!v8)
    {
      return v8;
    }

    goto LABEL_37;
  }

  if (CFEqual(cf1, @"denyInterruptions"))
  {
    v8 = APReceiverSystemInfoSetProperty(*(a1 + 160), v23, @"DenyInterruptions", v24, a5);
    if (!v8)
    {
      return v8;
    }

    goto LABEL_37;
  }

  if (CFEqual(cf1, @"supportsSenderUIEvents"))
  {
    v8 = APReceiverSystemInfoSetProperty(*(a1 + 160), v25, @"SupportsSenderUIEvents", v26, a5);
    if (!v8)
    {
      return v8;
    }

    goto LABEL_37;
  }

  if (CFEqual(cf1, @"groupUUID"))
  {
    v8 = APReceiverSystemInfoSetProperty(*(a1 + 160), v27, @"AirPlayGroupID", v28, a5);
    if (!v8)
    {
      return v8;
    }

    goto LABEL_37;
  }

  if (!CFEqual(cf1, @"forcePermissionDialog"))
  {
    return 4294960582;
  }

  v30 = *MEMORY[0x277CBED28] == a5;
  v8 = 0;
  v31 = v30;
  *(a1 + 255) = v31;
  return v8;
}

void AirPlayReceiverServerUpdateStatus(void *a1, CFTypeRef cf)
{
  CFRetain(cf);
  CFRetain(a1);
  v4 = a1[3];
  v5[0] = MEMORY[0x277D85DD0];
  v5[1] = 3221225472;
  v5[2] = __AirPlayReceiverServerUpdateStatus_block_invoke;
  v5[3] = &__block_descriptor_48_e5_v8__0l;
  v5[4] = a1;
  v5[5] = cf;
  dispatch_async(v4, v5);
}

void __AirPlayReceiverServerUpdateStatus_block_invoke(uint64_t a1)
{
  if (gLogCategory_AirPlayReceiverServer <= 30 && (gLogCategory_AirPlayReceiverServer != -1 || _LogCategory_Initialize()))
  {
    LogPrintF(&gLogCategory_AirPlayReceiverServer, "OSStatus AirPlayReceiverServerUpdateStatus(AirPlayReceiverServerRef, CFStringRef)_block_invoke", 33554462, "%{ptr} updating status '%@'\n", *(a1 + 32), *(a1 + 40));
  }

  if (CFEqual(*(a1 + 40), @"StartingPlaying"))
  {
    if (!*(*(a1 + 32) + 250))
    {
      goto LABEL_17;
    }

    v2 = gAirTunesDACPClient;
    if (gAirTunesDACPClient && *gAirTunesDACPClient == 1684104048)
    {
      pthread_mutex_lock((gAirTunesDACPClient + 8));
      *(v2 + 161) = 1;
      pthread_mutex_unlock((v2 + 8));
      goto LABEL_17;
    }

    goto LABEL_26;
  }

  if (CFEqual(*(a1 + 40), @"StoppedPlaying"))
  {
    if (!*(*(a1 + 32) + 250))
    {
LABEL_17:
      CFObjectSetProperty();
      goto LABEL_18;
    }

    v3 = gAirTunesDACPClient;
    if (gAirTunesDACPClient && *gAirTunesDACPClient == 1684104048)
    {
      pthread_mutex_lock((gAirTunesDACPClient + 8));
      v4 = *(v3 + 161);
      *(v3 + 161) = 0;
      pthread_mutex_unlock((v3 + 8));
      if (v4)
      {
        _AirTunesDACPClient_ScheduleCommandInternal(v3, "stopSession", 1);
      }

      goto LABEL_17;
    }

LABEL_26:
    APSLogErrorAt();
    goto LABEL_17;
  }

  if (CFEqual(*(a1 + 40), @"StartedPlayingOverAWDL"))
  {
    v6 = *(a1 + 32);
    v7 = @"startedPlayingOverAWDL";
  }

  else
  {
    if (!CFEqual(*(a1 + 40), @"StoppedPlayingOverAWDL"))
    {
      goto LABEL_18;
    }

    v6 = *(a1 + 32);
    v7 = @"stoppedPlayingOverAWDL";
  }

  AirPlayReceiverServerControl(v6, 1, v7, 0, 0, 0);
LABEL_18:
  CFRelease(*(a1 + 40));
  v5 = *(a1 + 32);

  CFRelease(v5);
}

uint64_t AirPlayReceiverServerHijackConnection(uint64_t result, uint64_t a2, uint64_t a3)
{
  v7 = 0;
  if (result && a2 && a3)
  {
    v4 = result;
    HTTPConnectionForSession = _FindHTTPConnectionForSession(result, a2, &v7);
    result = _FindHTTPConnectionForSession(v4, a3, 0);
    v6 = result;
    if (gLogCategory_AirPlayReceiverServer <= 30)
    {
      if (gLogCategory_AirPlayReceiverServer != -1 || (result = _LogCategory_Initialize(), result))
      {
        result = LogPrintF(&gLogCategory_AirPlayReceiverServer, "void AirPlayReceiverServerHijackConnection(AirPlayReceiverServerRef, CFTypeRef, CFTypeRef)", 33554462, "Attempting to hijack active connection %{ptr}, hijacker connection %{ptr}\n", HTTPConnectionForSession, v6);
      }
    }

    if (HTTPConnectionForSession && v6 && HTTPConnectionForSession != v6)
    {
      if (gLogCategory_AirPlayReceiverServer <= 50 && (gLogCategory_AirPlayReceiverServer != -1 || _LogCategory_Initialize()))
      {
        LogPrintF(&gLogCategory_AirPlayReceiverServer, "void AirPlayReceiverServerHijackConnection(AirPlayReceiverServerRef, CFTypeRef, CFTypeRef)", 33554482, "*** Hijacking connection %##a for %##a\n", HTTPConnectionForSession + 256, v6 + 256);
      }

      return _DestroyHTTPConnection(v7, HTTPConnectionForSession);
    }
  }

  return result;
}

uint64_t AirPlayReceiverServerStoreReverseConnectionContext(uint64_t a1, uint64_t a2, const void *a3)
{
  if (!*(a1 + 192))
  {
    Mutable = CFDictionaryCreateMutable(0, 0, MEMORY[0x277CBF138], MEMORY[0x277CBF150]);
    *(a1 + 192) = Mutable;
    if (!Mutable)
    {
      APSLogErrorAt();
      return 4294960568;
    }
  }

  v6 = UUIDtoCString();
  v7 = CFStringCreateWithCString(0, v6, 0x8000100u);
  Value = CFDictionaryGetValue(*(a1 + 192), v7);
  if (Value)
  {
    v9 = Value;
    CFRetain(Value);
  }

  else
  {
    v9 = CFArrayCreateMutable(0, 0, MEMORY[0x277CBF128]);
    if (!v9)
    {
      APSLogErrorAt();
      v10 = 4294960568;
      if (!v7)
      {
        return v10;
      }

      goto LABEL_7;
    }
  }

  CFArrayAppendValue(v9, a3);
  CFDictionarySetValue(*(a1 + 192), v7, v9);
  CFRelease(v9);
  v10 = 0;
  if (v7)
  {
LABEL_7:
    CFRelease(v7);
  }

  return v10;
}

void _HandleConnectionDetached(uint64_t a1, const void *a2, const void *a3, NSObject *a4)
{
  v44 = *MEMORY[0x277D85DE8];
  v20 = 0;
  v19[0] = 0;
  v19[1] = 0;
  Int64 = CFObjectGetInt64();
  v8 = CFObjectGetInt64() != 0;
  v42 = 0u;
  v43 = 0u;
  v40 = 0u;
  v41 = 0u;
  v38 = 0u;
  v39 = 0u;
  v36 = 0u;
  v37 = 0u;
  CString = CFObjectGetCString();
  v34 = 0u;
  v35 = 0u;
  v32 = 0u;
  v33 = 0u;
  v30 = 0u;
  v31 = 0u;
  v28 = 0u;
  v29 = 0u;
  Bytes = CFObjectGetBytes();
  v11 = *(*(CMBaseObjectGetVTable() + 16) + 56);
  if (!v11)
  {
    v20 = -71934;
    goto LABEL_18;
  }

  v20 = v11(a3, v19);
  if (v20)
  {
LABEL_18:
    APSLogErrorAt();
    v14 = 0;
    goto LABEL_19;
  }

  v12 = v19[0];
  cf = 0;
  if (gAirPlayReceiverReverseConnectionInitOnce != -1)
  {
    dispatch_once_f(&gAirPlayReceiverReverseConnectionInitOnce, 0, _AirPlayReceiverReverseConnectionGetTypeID);
  }

  Instance = _CFRuntimeCreateInstance();
  if (!Instance)
  {
    APSLogErrorAt();
    v18 = -6728;
LABEL_32:
    v20 = v18;
    goto LABEL_18;
  }

  v14 = Instance;
  if (!Bytes || !CString || !v12)
  {
    APSLogErrorAt();
    v18 = -6705;
LABEL_31:
    CFRelease(v14);
    goto LABEL_32;
  }

  *(Instance + 80) = 0;
  *(Instance + 48) = 0u;
  *(Instance + 64) = 0u;
  *(Instance + 16) = 0u;
  *(Instance + 32) = 0u;
  dispatch_retain(a4);
  *(v14 + 72) = a4;
  v15 = HTTPClientCreateWithSocket();
  v27 = v15;
  if (v15)
  {
    v18 = v15;
    APSLogErrorAt();
    if (cf)
    {
      HTTPClientInvalidate();
      CFRelease(cf);
      cf = 0;
    }

    goto LABEL_31;
  }

  HTTPClientSetDispatchQueue();
  APSLogUtilsGetHTTPClientCoreLogCategory();
  HTTPClientSetLogging();
  APSLogUtilsGetAsyncCnxLogCategory();
  HTTPClientSetConnectionLogging();
  APSSettingsGetInt64();
  HTTPClientSetTimeout();
  if (Int64)
  {
    HTTPClientSetTransportDelegate();
  }

  v23 = 0;
  v24 = 0;
  v25 = 0;
  CFRetain(v14);
  v21 = v14;
  v22 = _HandleReverseConnectionInvalidated;
  HTTPClientSetDelegate();
  HTTPClientSetFlags();
  *(v14 + 64) = cf;
  *(v14 + 80) = 0;
  *(v14 + 20) = v8;
  *(v14 + 38) = *Bytes;
  *(v14 + 22) = *CString;
  v20 = 0;
  if (!Int64)
  {
LABEL_15:
    v20 = AirPlayReceiverServerStoreReverseConnectionContext(a2, Bytes, v14);
    if (!v20)
    {
      v20 = 0;
      goto LABEL_19;
    }

    goto LABEL_26;
  }

  v16 = *(*(CMBaseObjectGetVTable() + 16) + 48);
  if (v16)
  {
    v20 = v16(a3, 0);
    if (!v20)
    {
      goto LABEL_15;
    }
  }

  else
  {
    v20 = -71934;
  }

LABEL_26:
  APSLogErrorAt();
LABEL_19:
  CFRelease(a2);
  CFRelease(a3);
  dispatch_release(a4);
  if (v14)
  {
    CFRelease(v14);
  }

  v17 = v20;
  if (v20 && gLogCategory_AirPlayReceiverServer <= 60)
  {
    if (gLogCategory_AirPlayReceiverServer != -1)
    {
LABEL_24:
      LogPrintF(&gLogCategory_AirPlayReceiverServer, "void _HandleConnectionDetached(SocketRef, void *, void *, void *)", 33554492, "### Connection reverse failed: %#m\n", v17);
      return;
    }

    if (_LogCategory_Initialize())
    {
      v17 = v20;
      goto LABEL_24;
    }
  }
}

void _HandleReverseConnectionInvalidated(uint64_t a1, char *a2)
{
  if (a2)
  {
    v3 = a2 + 38;
    if (*(gAirPlayReceiverServer + 192))
    {
      ReverseConnectionsForSession = _GetReverseConnectionsForSession(gAirPlayReceiverServer, (a2 + 38));
      if (!ReverseConnectionsForSession)
      {
        goto LABEL_9;
      }

      v5 = 0;
      do
      {
        v6 = v5;
        if (v5 >= CFArrayGetCount(ReverseConnectionsForSession))
        {
          break;
        }

        ValueAtIndex = CFArrayGetValueAtIndex(ReverseConnectionsForSession, v6);
        v5 = v6 + 1;
      }

      while (ValueAtIndex != a2);
      if (v6 < CFArrayGetCount(ReverseConnectionsForSession))
      {
        CFArrayRemoveValueAtIndex(ReverseConnectionsForSession, v6);
        ReverseConnectionsForSession = 0;
        goto LABEL_9;
      }
    }

    else
    {
      APSLogErrorAt();
    }

    ReverseConnectionsForSession = 4294960534;
LABEL_9:
    if (gLogCategory_AirPlayReceiverServer <= 30 && (gLogCategory_AirPlayReceiverServer != -1 || _LogCategory_Initialize()))
    {
      LogPrintF(&gLogCategory_AirPlayReceiverServer, "OSStatus _RemoveReverseConnectionContext(AirPlayReceiverServerRef, const uint8_t *, void *)", 33554462, "_RemoveReverseConnectionContext: inSessionUUID %#U err %d\n", v3, ReverseConnectionsForSession);
    }

    CFRelease(a2);
    return;
  }

  if (gLogCategory_AirPlayReceiverServer <= 50 && (gLogCategory_AirPlayReceiverServer != -1 || _LogCategory_Initialize()))
  {

    LogPrintF(&gLogCategory_AirPlayReceiverServer, "void _HandleReverseConnectionInvalidated(OSStatus, void *)", 33554482, "### Reverse connection context is invalid\n");
  }
}

const void *_GetReverseConnectionsForSession(uint64_t a1, uint64_t a2)
{
  if (!*(a1 + 192))
  {
    return 0;
  }

  v3 = UUIDtoCString();
  v4 = CFStringCreateWithCString(0, v3, 0x8000100u);
  Value = CFDictionaryGetValue(*(a1 + 192), v4);
  if (v4)
  {
    CFRelease(v4);
  }

  return Value;
}

uint64_t _AirPlayReceiverReverseConnectionGetTypeID()
{
  result = _CFRuntimeRegisterClass();
  gAirPlayReceiverReverseConnectionTypeID = result;
  return result;
}

void _AirPlayReceiverReverseConnectionFinalize(uint64_t a1)
{
  v2 = *(a1 + 80);
  v3 = *(a1 + 64);
  if (!v2)
  {
    if (!v3)
    {
      goto LABEL_7;
    }

    HTTPClientInvalidate();
    v3 = *(a1 + 64);
    goto LABEL_6;
  }

  if (v3)
  {
LABEL_6:
    CFRelease(v3);
    *(a1 + 64) = 0;
  }

LABEL_7:
  v4 = *(a1 + 72);
  if (v4)
  {
    dispatch_release(v4);
    *(a1 + 72) = 0;
  }
}

uint64_t AirPlayReceiverServerHoldPowerAssertion(uint64_t result)
{
  v1 = *(result + 204);
  *(result + 204) = v1 + 1;
  if (!__PAIR64__(*(result + 208), v1))
  {
    result = IOPMAssertionCreateWithName(@"PreventUserIdleSystemSleep", 0xFFu, @"com.apple.airplay.mediacontrol", (result + 208));
    if (gLogCategory_AirPlayReceiverServer <= 40)
    {
      if (gLogCategory_AirPlayReceiverServer != -1 || (result = _LogCategory_Initialize(), result))
      {

        return LogPrintF(&gLogCategory_AirPlayReceiverServer, "void AirPlayReceiverServerHoldPowerAssertion(AirPlayReceiverServerRef)", 33554472, "Preventing idle sleep\n");
      }
    }
  }

  return result;
}

uint64_t AirPlayReceiverServerPostMediaControlEvent(dispatch_queue_t *a1, const void *a2)
{
  if (gLogCategory_AirPlayReceiverServer <= 10 && (gLogCategory_AirPlayReceiverServer != -1 || _LogCategory_Initialize()))
  {
    LogPrintF(&gLogCategory_AirPlayReceiverServer, "OSStatus AirPlayReceiverServerPostMediaControlEvent(AirPlayReceiverServerRef, CFDictionaryRef)", 33554442, "Posting event:\n%@\n", a2);
  }

  v4 = malloc_type_calloc(1uLL, 0x20uLL, 0x1060040FB77E0C5uLL);
  if (v4)
  {
    v5 = v4;
    *v4 = CFDictionaryGetInt64();
    Data = CFPropertyListCreateData(0, a2, kCFPropertyListXMLFormat_v1_0, 0, 0);
    v5[1] = Data;
    if (Data)
    {
      CFRetain(a2);
      v5[2] = a2;
      CFRetain(a1);
      v5[3] = a1;
      dispatch_async_f(a1[11], v5, _AirPlayReceiverServerPostMediaControlEvent);
      return 0;
    }

    else
    {
      APSLogErrorAt();
      free(v5);
      return 4294960596;
    }
  }

  else
  {
    APSLogErrorAt();
    return 4294960568;
  }
}

void _AirPlayReceiverServerPostMediaControlEvent(unsigned int *a1)
{
  v26 = *MEMORY[0x277D85DE8];
  cf = *(a1 + 1);
  v1 = *a1;
  v2 = *(a1 + 3);
  v25 = 0;
  v24[1] = 0;
  v3 = *(v2 + 200) + 1;
  *(v2 + 200) = v3;
  v4 = *(*(v2 + 80) + 56);
  if (v4)
  {
    v5 = 0;
    do
    {
      v24[0] = 0;
      v6 = *(*(v4 + 40) + 280);
      if (v6)
      {
        v7 = *(*(CMBaseObjectGetVTable() + 16) + 40);
        if (!v7)
        {
          v25 = -12782;
LABEL_28:
          APSLogErrorAt();
          goto LABEL_30;
        }

        v25 = v7(v6, v1, v24);
        if (v25)
        {
          goto LABEL_28;
        }

        if (v24[0])
        {
          Bytes = CFObjectGetBytes();
          if (v25)
          {
            goto LABEL_28;
          }

          ReverseConnectionsForSession = _GetReverseConnectionsForSession(v2, Bytes);
          if (ReverseConnectionsForSession)
          {
            v10 = ReverseConnectionsForSession;
            if (CFArrayGetCount(ReverseConnectionsForSession))
            {
              Count = CFArrayGetCount(v10);
              if (Count >= 1)
              {
                v12 = Count;
                for (i = 0; i != v12; ++i)
                {
                  ValueAtIndex = CFArrayGetValueAtIndex(v10, i);
                  v15 = *(ValueAtIndex + 8);
                  memset(v22, 0, sizeof(v22));
                  v23 = 0;
                  if (v15)
                  {
                    v16 = ValueAtIndex;
                    if (*(ValueAtIndex + 4) != v3 && !strcmp(ValueAtIndex + 22, "event"))
                    {
                      Int64 = CFObjectGetInt64();
                      if (v25)
                      {
                        goto LABEL_28;
                      }

                      HTTPClientGetPeerAddress();
                      if (gLogCategory_AirPlayReceiverServer <= 50 && (gLogCategory_AirPlayReceiverServer != -1 || _LogCategory_Initialize()))
                      {
                        LogPrintF(&gLogCategory_AirPlayReceiverServer, "void _AirPlayReceiverServerPostMediaControlEvent(void *)", 33554482, "Posting session %u event to %##a (V=%u, %#U):\n%@\n", v1, v22, Int64, v16 + 38, *(a1 + 2));
                      }

                      *(v16 + 4) = v3;
                      CFRetain(cf);
                      CFRetain(v16);
                      v18 = *(v16 + 9);
                      block[0] = MEMORY[0x277D85DD0];
                      block[1] = 3221225472;
                      block[2] = ___AirPlayReceiverServerPostMediaControlEvent_block_invoke;
                      block[3] = &__block_descriptor_48_e5_v8__0l;
                      block[4] = v16;
                      block[5] = cf;
                      dispatch_async(v18, block);
                      v5 = 1;
                    }
                  }
                }
              }
            }
          }
        }
      }

      v4 = *(v4 + 16);
    }

    while (v4);
    if (v5)
    {
      goto LABEL_30;
    }
  }

  if (gLogCategory_AirPlayReceiverServer <= 50 && (gLogCategory_AirPlayReceiverServer != -1 || _LogCategory_Initialize()))
  {
    LogPrintF(&gLogCategory_AirPlayReceiverServer, "void _AirPlayReceiverServerPostMediaControlEvent(void *)", 33554482, "### Session %u event not posted:\n%1@\n", v1, *(a1 + 2));
  }

LABEL_30:
  CFRelease(cf);
  CFRelease(*(a1 + 2));
  CFRelease(*(a1 + 3));
  free(a1);
}

uint64_t _DoEventTransactionCompletion(uint64_t result)
{
  v1 = *(result + 9648);
  if (v1 || ((v2 = *(result + 8456), v3 = v2 - 300, v4 = v2 == 199, v1 = (v2 + 200000), v4 || v3 < 0xFFFFFF9B) ? (v4 = v1 == 0) : (v4 = 1), !v4))
  {
    if (gLogCategory_AirPlayReceiverServer <= 60)
    {
      if (gLogCategory_AirPlayReceiverServer != -1)
      {
        return LogPrintF(&gLogCategory_AirPlayReceiverServer, "void _DoEventTransactionCompletion(HTTPMessageRef)", 33554492, "### Event transaction failed: %#m\n", v1);
      }

      v5 = v1;
      result = _LogCategory_Initialize();
      v1 = v5;
      if (result)
      {
        return LogPrintF(&gLogCategory_AirPlayReceiverServer, "void _DoEventTransactionCompletion(HTTPMessageRef)", 33554492, "### Event transaction failed: %#m\n", v1);
      }
    }
  }

  return result;
}

void AirPlayReceiverServerSendMediaRemoteCommand(uint64_t a1, uint64_t a2)
{
  cf = 0;
  APReceiverSessionManagerCopyAirPlaySessionWithAttribute(a1, 0, 0, &cf);
  if (cf)
  {
    if (AirPlayReceiverSessionSendMediaRemoteCommand(cf, -1, a2, 0))
    {
      APSLogErrorAt();
    }

    if (cf)
    {
      CFRelease(cf);
    }
  }
}

uint64_t AirPlayReceiverServerSendDACPCommands(uint64_t a1, int a2, uint64_t a3)
{
  v17 = *MEMORY[0x277D85DE8];
  *__str = 0u;
  memset(v16, 0, sizeof(v16));
  v14 = 0;
  ASPrintF(&v14, "%C", a1);
  v5 = v14;
  if (!v14)
  {
    APSLogErrorAt();
    v11 = 4294960568;
    goto LABEL_77;
  }

  if (a1 > 1886151032)
  {
    if (a1 > 1919967587)
    {
      if (a1 <= 1936225382)
      {
        switch(a1)
        {
          case 0x72706164:
            v6 = "repeatadv";
            goto LABEL_72;
          case 0x72736974:
            v6 = "restartitem";
            goto LABEL_72;
          case 0x7368736E:
            v6 = "shufflesongs";
            goto LABEL_72;
        }
      }

      else if (a1 > 1986815085)
      {
        if (a1 == 1986815086)
        {
          v6 = "volumedown";
          goto LABEL_72;
        }

        if (a1 == 1986819440)
        {
          v6 = "volumeup";
          goto LABEL_72;
        }
      }

      else
      {
        if (a1 == 1936225383)
        {
          v6 = "shuffletoggle";
          goto LABEL_72;
        }

        if (a1 == 1937010544)
        {
          v6 = "stop";
          goto LABEL_72;
        }
      }
    }

    else if (a1 <= 1886152561)
    {
      switch(a1)
      {
        case 0x706C6179:
          v6 = "play";
          goto LABEL_72;
        case 0x706C6368:
          v6 = "prevchapter";
          goto LABEL_72;
        case 0x706C636E:
          v6 = "prevcontainer";
          goto LABEL_72;
      }
    }

    else if (a1 > 1886155378)
    {
      if (a1 == 1886155379)
      {
        v6 = "playresume";
        goto LABEL_72;
      }

      if (a1 == 1886155632)
      {
        v6 = "playspec";
        goto LABEL_72;
      }
    }

    else
    {
      if (a1 == 1886152562)
      {
        v6 = "prevgroup";
        goto LABEL_72;
      }

      if (a1 == 1886154867)
      {
        v6 = "playpause";
        goto LABEL_72;
      }
    }

LABEL_67:
    if (gLogCategory_AirPlayReceiverServer <= 60)
    {
      if (gLogCategory_AirPlayReceiverServer == -1)
      {
        if (!_LogCategory_Initialize())
        {
          goto LABEL_81;
        }

        v5 = v14;
      }

      LogPrintF(&gLogCategory_AirPlayReceiverServer, "OSStatus AirPlayReceiverServerSendDACPCommands(uint32_t, Boolean, CFDictionaryRef)", 33554492, "DACP match for command '%s' ('%C') not found\n", v5, a1);
    }

LABEL_81:
    v11 = 4294960569;
LABEL_82:
    APSLogErrorAt();
    goto LABEL_77;
  }

  if (a1 > 1852011629)
  {
    if (a1 <= 1885435250)
    {
      switch(a1)
      {
        case 0x6E63746E:
          v6 = "nextcontainer";
          goto LABEL_72;
        case 0x6E647270:
          v6 = "nextgroup";
          goto LABEL_72;
        case 0x6E69746D:
          v6 = "nextitem";
          goto LABEL_72;
      }
    }

    else if (a1 > 1885499505)
    {
      if (a1 == 1885499506)
      {
        v6 = "setproperty?dmcp.device-prevent-playback=1";
        goto LABEL_72;
      }

      if (a1 == 1885959277)
      {
        v6 = "previtem";
        goto LABEL_72;
      }
    }

    else
    {
      if (a1 == 1885435251)
      {
        v6 = "pause";
        goto LABEL_72;
      }

      if (a1 == 1885495660)
      {
        v6 = "setproperty?dmcp.device-prevent-playback=0";
        goto LABEL_72;
      }
    }

    goto LABEL_67;
  }

  if (a1 <= 1685482594)
  {
    switch(a1)
    {
      case 0x62666664:
        v6 = "beginff";
        goto LABEL_72;
      case 0x62727764:
        v6 = "beginrew";
        goto LABEL_72;
      case 0x64706175:
        v6 = "discrete-pause";
        goto LABEL_72;
    }

    goto LABEL_67;
  }

  if (a1 != 1685482595)
  {
    if (a1 == 1836414068)
    {
      v6 = "mutetoggle";
      goto LABEL_72;
    }

    if (a1 == 1852008560)
    {
      v6 = "nextchapter";
      goto LABEL_72;
    }

    goto LABEL_67;
  }

  CFDictionaryGetDouble();
  v8 = v7;
  if (a2)
  {
    APSVolumeConvertSliderValueToDB();
    v13 = v9;
    v10 = "setproperty?dmcp.device-volume=%.4f";
  }

  else
  {
    v13 = (v8 * 100.0);
    v10 = "setproperty?dmcp.volume=%.4f";
  }

  v6 = __str;
  snprintf(__str, 0x2CuLL, v10, *&v13);
LABEL_72:
  v11 = _AirTunesDACPClient_ScheduleCommandInternal(gAirTunesDACPClient, v6, 0);
  if (gLogCategory_AirPlayReceiverServer <= 50 && (gLogCategory_AirPlayReceiverServer != -1 || _LogCategory_Initialize()))
  {
    LogPrintF(&gLogCategory_AirPlayReceiverServer, "OSStatus AirPlayReceiverServerSendDACPCommands(uint32_t, Boolean, CFDictionaryRef)", 33554482, "Sent DACP command with value '%s' back to client, err = %m\n", v6);
  }

  if (v11)
  {
    goto LABEL_82;
  }

LABEL_77:
  if (v14)
  {
    free(v14);
  }

  return v11;
}

void _AirPlayReceiverUI_HandleServerReset(uint64_t a1)
{
  *(a1 + 24) = 0;
  dispatch_retain(*a1);
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = ___AirPlayReceiverUI_HandleServerReset_block_invoke;
  block[3] = &__block_descriptor_40_e5_v8__0l;
  block[4] = a1;
  dispatch_async(MEMORY[0x277D85CD0], block);
}

void _AirPlayReceiverUI_CleanupPresentation(uint64_t a1, int a2, uint64_t a3)
{
  if (a2 && *(a1 + 40))
  {
    if (gLogCategory_AirPlayReceiverUIXPCServerCore <= 30 && (gLogCategory_AirPlayReceiverUIXPCServerCore != -1 || _LogCategory_Initialize()))
    {
      LogPrintF(&gLogCategory_AirPlayReceiverUIXPCServerCore, "void _AirPlayReceiverUI_CleanupPresentation(AirPlayReceiverUIRef, Boolean, CFDictionaryRef)", 33554462, "Sending stop presentation to server\n");
    }

    v5 = xpc_dictionary_create(0, 0, 0);
    xpc_dictionary_set_string(v5, "function", "stopPresentation");
    if (a3)
    {
      xpc_dictionary_set_cf_object();
    }

    _AirPlayReceiverUI_SendMessageWithReplySync(a1, v5, 0);
    xpc_release(v5);
  }

  [objc_msgSend(*(a1 + 136) layer];
  [*(a1 + 136) invalidate];

  *(a1 + 120) = 0;
  *(a1 + 128) = 0;
  *(a1 + 136) = 0;
  *(a1 + 143) = 0;
  if (gLogCategory_AirPlayReceiverUIXPCServerCore <= 30 && (gLogCategory_AirPlayReceiverUIXPCServerCore != -1 || _LogCategory_Initialize()))
  {

    LogPrintF(&gLogCategory_AirPlayReceiverUIXPCServerCore, "void _AirPlayReceiverUI_CleanupPresentation(AirPlayReceiverUIRef, Boolean, CFDictionaryRef)", 33554462, "Presentation cleaned up\n");
  }
}

uint64_t _AirPlayReceiverUI_ActiveSessionsStopped(uint64_t a1)
{
  result = mach_absolute_time();
  *(a1 + 88) = result;
  for (i = *(a1 + 48); i; i = *i)
  {
    result = (i[2])("sessionsStopped", 0, i[3]);
  }

  return result;
}

uint64_t _AirPlayReceiverUI_SendMessageWithReplySync(NSObject **a1, uint64_t a2, void *a3)
{
  v21 = 0;
  v22 = &v21;
  v23 = 0x2020000000;
  v24 = 0;
  v15 = 0;
  v16 = &v15;
  v17 = 0x3052000000;
  v18 = __Block_byref_object_copy__2916;
  v19 = __Block_byref_object_dispose__2917;
  v20 = 0;
  v6 = dispatch_semaphore_create(0);
  if (v6)
  {
    v7 = v6;
    *(v22 + 6) = -6700;
    v8 = *a1;
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = ___AirPlayReceiverUI_SendMessageWithReplySync_block_invoke;
    block[3] = &unk_278C60020;
    block[7] = &v15;
    block[8] = a1;
    block[5] = v7;
    block[6] = &v21;
    block[4] = a2;
    dispatch_async(v8, block);
    dispatch_semaphore_wait(v7, 0xFFFFFFFFFFFFFFFFLL);
    dispatch_release(v7);
    if (*(v22 + 6))
    {
      APSLogErrorAt();
    }

    else if (MEMORY[0x23EF1BE90](v16[5]) == MEMORY[0x277D86480])
    {
      APSLogErrorAt();
      *(v22 + 6) = -6753;
      if (gLogCategory_AirPlayReceiverUIXPCServerCore <= 60 && (gLogCategory_AirPlayReceiverUIXPCServerCore != -1 || _LogCategory_Initialize()))
      {
        LogPrintF(&gLogCategory_AirPlayReceiverUIXPCServerCore, "OSStatus _AirPlayReceiverUI_SendMessageWithReplySync(AirPlayReceiverUIRef, xpc_object_t, xpc_object_t *)", 33554492, "### XPC reply error:\n%1{xpc}\n", v16[5]);
      }
    }

    else
    {
      int64 = xpc_dictionary_get_int64(v16[5], "error");
      *(v22 + 6) = int64;
      if (a3 && !int64)
      {
        v10 = v16;
        *a3 = v16[5];
        v10[5] = 0;
      }
    }
  }

  else
  {
    APSLogErrorAt();
    *(v22 + 6) = -6728;
  }

  v11 = v16[5];
  if (v11)
  {
    xpc_release(v11);
  }

  v12 = *(v22 + 6);
  _Block_object_dispose(&v15, 8);
  _Block_object_dispose(&v21, 8);
  return v12;
}

void sub_23EA17954(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, ...)
{
  va_start(va, a18);
  _Block_object_dispose(va, 8);
  _Block_object_dispose((v18 - 80), 8);
  _Unwind_Resume(a1);
}

void _AirPlayReceiverUI_HandleStateEvent(void *a1)
{
  if (AirPlayReceiverUI_GetShared_once != -1)
  {
    dispatch_once(&AirPlayReceiverUI_GetShared_once, &__block_literal_global_2889);
  }

  v2 = AirPlayReceiverUI_GetShared_ui;
  v3 = [MEMORY[0x277CBEB38] dictionary];
  [v3 setObject:@"video" forKey:@"category"];
  string = xpc_dictionary_get_string(a1, "eventType");
  if (string && ((v5 = string, !strcmp(string, "ended")) ? ([v3 setObject:@"stopped" forKey:@"state"], v6 = @"ended", v7 = @"reason") : (v6 = objc_msgSend(MEMORY[0x277CCACA8], "stringWithUTF8String:", v5), v7 = @"state"), objc_msgSend(v3, "setObject:forKey:", v6, v7), (v8 = xpc_dictionary_copy_cf_object()) != 0))
  {
    v9 = v8;
    v10 = CFGetTypeID(v8);
    if (v10 == CFDictionaryGetTypeID())
    {
      MutableCopy = CFDictionaryCreateMutableCopy(0, 0, v9);
      if (MutableCopy)
      {
        v12 = MutableCopy;
        CFDictionaryRemoveValue(MutableCopy, @"sessionID");
        if (CFDictionaryGetCount(v12) >= 1)
        {
          [v3 setObject:v12 forKey:@"params"];
        }

        CFRelease(v12);
      }

      Value = CFDictionaryGetValue(v9, @"sessionID");
      if (Value)
      {
        [v3 setObject:Value forKey:@"sessionID"];
      }

      v14[0] = MEMORY[0x277D85DD0];
      v14[1] = 3221225472;
      v14[2] = ___AirPlayReceiverUI_HandleStateEvent_block_invoke;
      v14[3] = &unk_278C60A58;
      v14[4] = v3;
      v14[5] = v2;
      dispatch_async(MEMORY[0x277D85CD0], v14);
    }

    else
    {
      APSLogErrorAt();
    }

    CFRelease(v9);
  }

  else
  {

    APSLogErrorAt();
  }
}

void _AirPlayReceiverUI_HandleFailedURLRequest(uint64_t a1)
{
  if (AirPlayReceiverUI_GetShared_once != -1)
  {
    dispatch_once(&AirPlayReceiverUI_GetShared_once, &__block_literal_global_2889);
  }

  v1 = AirPlayReceiverUI_GetShared_ui;
  v2 = [MEMORY[0x277CBEB38] dictionary];
  [v2 setObject:@"unhandledURLRequest" forKey:@"type"];
  v3 = xpc_dictionary_copy_cf_object();
  if (v3)
  {
    v4 = v3;
    v5 = CFGetTypeID(v3);
    if (v5 == CFDictionaryGetTypeID())
    {
      [v2 setObject:v4 forKey:@"request"];
      Value = CFDictionaryGetValue(v4, @"sessionID");
      if (Value)
      {
        [v2 setObject:Value forKey:@"sessionID"];
      }

      v7[0] = MEMORY[0x277D85DD0];
      v7[1] = 3221225472;
      v7[2] = ___AirPlayReceiverUI_HandleFailedURLRequest_block_invoke;
      v7[3] = &unk_278C60A58;
      v7[4] = v2;
      v7[5] = v1;
      dispatch_async(MEMORY[0x277D85CD0], v7);
    }

    else
    {
      APSLogErrorAt();
    }

    CFRelease(v4);
  }

  else
  {

    APSLogErrorAt();
  }
}

void _AirPlayReceiverUI_HandleMetaDataEvent(uint64_t a1)
{
  if (AirPlayReceiverUI_GetShared_once != -1)
  {
    dispatch_once(&AirPlayReceiverUI_GetShared_once, &__block_literal_global_2889);
  }

  v1 = AirPlayReceiverUI_GetShared_ui;
  v2 = [MEMORY[0x277CBEB38] dictionary];
  [v2 setObject:@"video" forKey:@"category"];
  [v2 setObject:@"timedMetadata" forKey:@"type"];
  v3 = xpc_dictionary_copy_cf_object();
  if (v3)
  {
    v4 = v3;
    v5 = CFGetTypeID(v3);
    if (v5 == CFDictionaryGetTypeID())
    {
      Value = CFDictionaryGetValue(v4, @"sessionID");
      if (Value)
      {
        [v2 setObject:Value forKey:@"sessionID"];
      }

      v7[0] = MEMORY[0x277D85DD0];
      v7[1] = 3221225472;
      v7[2] = ___AirPlayReceiverUI_HandleMetaDataEvent_block_invoke;
      v7[3] = &unk_278C60A58;
      v7[4] = v2;
      v7[5] = v1;
      dispatch_async(MEMORY[0x277D85CD0], v7);
    }

    else
    {
      APSLogErrorAt();
    }

    CFRelease(v4);
  }

  else
  {

    APSLogErrorAt();
  }
}

void _AirPlayReceiverUI_HandleAudioStop(dispatch_object_t *a1, uint64_t a2)
{
  v3 = xpc_dictionary_copy_cf_object();
  if (v3)
  {
    v4 = v3;
    v5 = CFGetTypeID(v3);
    if (v5 == CFDictionaryGetTypeID())
    {
      Int64 = CFDictionaryGetInt64();
      dispatch_retain(*a1);
      v7[0] = MEMORY[0x277D85DD0];
      v7[1] = 3221225472;
      v7[2] = ___AirPlayReceiverUI_HandleAudioStop_block_invoke;
      v7[3] = &__block_descriptor_44_e5_v8__0l;
      v7[4] = a1;
      v8 = Int64;
      dispatch_async(MEMORY[0x277D85CD0], v7);
    }

    else
    {
      APSLogErrorAt();
    }

    CFRelease(v4);
  }

  else
  {

    APSLogErrorAt();
  }
}

void _AirPlayReceiverUI_HandleUserEvent(void *a1)
{
  if (AirPlayReceiverUI_GetShared_once != -1)
  {
    dispatch_once(&AirPlayReceiverUI_GetShared_once, &__block_literal_global_2889);
  }

  v2 = AirPlayReceiverUI_GetShared_ui;
  v3 = [MEMORY[0x277CBEB38] dictionary];
  string = xpc_dictionary_get_string(a1, "eventType");
  if (!string)
  {
    goto LABEL_38;
  }

  v5 = string;
  if (gLogCategory_AirPlayReceiverUIXPCServerCore <= 40 && (gLogCategory_AirPlayReceiverUIXPCServerCore != -1 || _LogCategory_Initialize()))
  {
    LogPrintF(&gLogCategory_AirPlayReceiverUIXPCServerCore, "void _AirPlayReceiverUI_HandleUserEvent(xpc_object_t)", 33554472, "User event: %s\n", v5);
  }

  if (!strcmp(v5, "userNext"))
  {
    [v3 setObject:@"next" forKey:@"action"];
    v6 = 0;
    v7 = @"kAirPlaySlideshowNotification_UserNext";
    goto LABEL_27;
  }

  if (!strcmp(v5, "userPrevious"))
  {
    [v3 setObject:@"previous" forKey:@"action"];
    v6 = 0;
    v7 = @"kAirPlaySlideshowNotification_UserPrevious";
    goto LABEL_27;
  }

  if (!strcmp(v5, "userUp"))
  {
    v8 = @"up";
LABEL_22:
    [v3 setObject:v8 forKey:@"action"];
LABEL_23:
    v7 = 0;
    v6 = 0;
    goto LABEL_27;
  }

  if (!strcmp(v5, "userDown"))
  {
    v8 = @"down";
    goto LABEL_22;
  }

  if (!strcmp(v5, "userSelect"))
  {
    v9 = @"select";
LABEL_26:
    [v3 setObject:v9 forKey:@"action"];
    v6 = 0;
    v7 = @"kAirPlaySlideshowNotification_UserPlayPause";
    goto LABEL_27;
  }

  if (!strcmp(v5, "userPlayPause"))
  {
    v9 = @"play";
    goto LABEL_26;
  }

  if (strcmp(v5, "userStop"))
  {
    if (gLogCategory_AirPlayReceiverUIXPCServerCore <= 50 && (gLogCategory_AirPlayReceiverUIXPCServerCore != -1 || _LogCategory_Initialize()))
    {
      LogPrintF(&gLogCategory_AirPlayReceiverUIXPCServerCore, "void _AirPlayReceiverUI_HandleUserEvent(xpc_object_t)", 33554482, "### Unhandled user event: %s\n", v5);
    }

    goto LABEL_23;
  }

  [v3 setObject:@"stopped" forKey:@"state"];
  [v3 setObject:@"photo" forKey:@"category"];
  v6 = 1;
  v7 = @"kAirPlaySlideshowNotification_UserStop";
LABEL_27:
  v10 = xpc_dictionary_copy_cf_object();
  if (v10)
  {
    v11 = v10;
    v12 = CFGetTypeID(v10);
    if (v12 == CFDictionaryGetTypeID())
    {
      Value = CFDictionaryGetValue(v11, @"sessionID");
      if (Value)
      {
        [v3 setObject:Value forKey:@"sessionID"];
      }

      v14 = CFDictionaryGetValue(v11, @"userExit");
      if (v14)
      {
        [v3 setObject:v14 forKey:@"userExit"];
      }

      block[0] = MEMORY[0x277D85DD0];
      block[1] = 3221225472;
      block[2] = ___AirPlayReceiverUI_HandleUserEvent_block_invoke;
      block[3] = &unk_278C5FFD0;
      block[4] = v7;
      block[5] = v3;
      block[6] = v2;
      v16 = v6;
      dispatch_async(MEMORY[0x277D85CD0], block);
    }

    else
    {
      APSLogErrorAt();
    }

    CFRelease(v11);
    return;
  }

LABEL_38:

  APSLogErrorAt();
}

void _AirPlayReceiverUI_HandlePlaylistEvent(void *a1)
{
  if (AirPlayReceiverUI_GetShared_once != -1)
  {
    dispatch_once(&AirPlayReceiverUI_GetShared_once, &__block_literal_global_2889);
  }

  v2 = AirPlayReceiverUI_GetShared_ui;
  v3 = [MEMORY[0x277CBEB38] dictionary];
  [v3 setObject:@"video" forKey:@"category"];
  string = xpc_dictionary_get_string(a1, "eventType");
  if (string && ([v3 setObject:objc_msgSend(MEMORY[0x277CCACA8] forKey:{"stringWithUTF8String:", string), @"type"}], (v5 = xpc_dictionary_copy_cf_object()) != 0))
  {
    v6 = v5;
    v7 = CFGetTypeID(v5);
    if (v7 == CFDictionaryGetTypeID())
    {
      Value = CFDictionaryGetValue(v6, @"item");
      if (Value)
      {
        [v3 setObject:Value forKey:@"item"];
      }

      v9 = CFDictionaryGetValue(v6, @"sessionID");
      if (v9)
      {
        [v3 setObject:v9 forKey:@"sessionID"];
      }

      v10 = CFDictionaryGetValue(v6, @"uuid");
      if (v10)
      {
        [v3 setObject:v10 forKey:@"uuid"];
      }

      v11[0] = MEMORY[0x277D85DD0];
      v11[1] = 3221225472;
      v11[2] = ___AirPlayReceiverUI_HandlePlaylistEvent_block_invoke;
      v11[3] = &unk_278C60A58;
      v11[4] = v3;
      v11[5] = v2;
      dispatch_async(MEMORY[0x277D85CD0], v11);
    }

    else
    {
      APSLogErrorAt();
    }

    CFRelease(v6);
  }

  else
  {

    APSLogErrorAt();
  }
}

void _AirPlayReceiverUI_HandleDateRangeEvent(uint64_t a1)
{
  if (AirPlayReceiverUI_GetShared_once != -1)
  {
    dispatch_once(&AirPlayReceiverUI_GetShared_once, &__block_literal_global_2889);
  }

  v1 = AirPlayReceiverUI_GetShared_ui;
  v2 = [MEMORY[0x277CBEB38] dictionary];
  [v2 setObject:@"video" forKey:@"category"];
  [v2 setObject:@"dateRange" forKey:@"type"];
  v3 = xpc_dictionary_copy_cf_object();
  if (v3)
  {
    v4 = v3;
    v5 = CFGetTypeID(v3);
    if (v5 == CFDictionaryGetTypeID())
    {
      Value = CFDictionaryGetValue(v4, @"dateRangeArray");
      if (Value)
      {
        [v2 setObject:Value forKey:@"dateRangeArray"];
      }

      v7 = CFDictionaryGetValue(v4, @"uuid");
      if (v7)
      {
        [v2 setObject:v7 forKey:@"uuid"];
      }

      v8 = CFDictionaryGetValue(v4, @"sessionID");
      if (v8)
      {
        [v2 setObject:v8 forKey:@"sessionID"];
      }

      v9[0] = MEMORY[0x277D85DD0];
      v9[1] = 3221225472;
      v9[2] = ___AirPlayReceiverUI_HandleDateRangeEvent_block_invoke;
      v9[3] = &unk_278C60A58;
      v9[4] = v2;
      v9[5] = v1;
      dispatch_async(MEMORY[0x277D85CD0], v9);
    }

    else
    {
      APSLogErrorAt();
    }

    CFRelease(v4);
  }

  else
  {

    APSLogErrorAt();
  }
}

void _AirPlayReceiverUI_HandleFPSSecureStopGenerated(uint64_t a1)
{
  v1 = xpc_dictionary_copy_cf_object();
  if (v1)
  {
    v2 = v1;
    v3 = CFGetTypeID(v1);
    if (v3 == CFDictionaryGetTypeID())
    {
      CFRetain(v2);
      block[0] = MEMORY[0x277D85DD0];
      block[1] = 3221225472;
      block[2] = ___AirPlayReceiverUI_HandleFPSSecureStopGenerated_block_invoke;
      block[3] = &__block_descriptor_40_e5_v8__0l;
      block[4] = v2;
      dispatch_async(MEMORY[0x277D85CD0], block);
    }

    else
    {
      APSLogErrorAt();
    }

    CFRelease(v2);
  }

  else
  {

    APSLogErrorAt();
  }
}

void _AirPlayReceiverUI_HandleOtherEvent(void *a1)
{
  if (AirPlayReceiverUI_GetShared_once != -1)
  {
    dispatch_once(&AirPlayReceiverUI_GetShared_once, &__block_literal_global_2889);
  }

  v2 = AirPlayReceiverUI_GetShared_ui;
  v3 = [MEMORY[0x277CBEB38] dictionary];
  string = xpc_dictionary_get_string(a1, "eventType");
  if (string)
  {
    v5 = [MEMORY[0x277CCACA8] stringWithUTF8String:string];
    if (v5)
    {
      [v3 setObject:v5 forKey:@"type"];
    }
  }

  v6 = xpc_dictionary_copy_cf_object();
  if (v6 && (v7 = v6, v8 = CFGetTypeID(v6), v8 == CFDictionaryGetTypeID()))
  {
    Value = CFDictionaryGetValue(v7, @"sessionID");
    if (Value)
    {
      [v3 setObject:Value forKey:@"sessionID"];
    }

    MutableCopy = CFDictionaryCreateMutableCopy(0, 0, v7);
    if (MutableCopy)
    {
      v11 = MutableCopy;
      CFDictionaryRemoveValue(MutableCopy, @"sessionID");
      if (CFDictionaryGetCount(v11) >= 1)
      {
        [v3 setObject:v11 forKey:@"params"];
      }

      CFRelease(v11);
    }

    CFRelease(v7);
  }

  else
  {
    APSLogErrorAt();
  }

  v12[0] = MEMORY[0x277D85DD0];
  v12[1] = 3221225472;
  v12[2] = ___AirPlayReceiverUI_HandleOtherEvent_block_invoke;
  v12[3] = &unk_278C60A58;
  v12[4] = v3;
  v12[5] = v2;
  dispatch_async(MEMORY[0x277D85CD0], v12);
}

void _AirPlayReceiverUI_NotifyObserversF(uint64_t a1, uint64_t a2, const char *a3, ...)
{
  if (a3 && CFPropertyListCreateFormattedVAList())
  {
    APSLogErrorAt();
  }

  else
  {
    for (i = *(a1 + 48); i; i = *i)
    {
      (i[2])(a2, 0, i[3]);
    }
  }
}

NSObject **AirPlayReceiverUI_CopyProperty(uint64_t a1, uint64_t a2, uint64_t a3, unsigned int *a4)
{
  v5 = a1;
  if (!a1)
  {
    APSLogErrorAt();
    v11 = -6745;
LABEL_15:
    v13 = v11;
    goto LABEL_9;
  }

  if (!*(a1 + 40))
  {
    v5 = 0;
    v13 = 0;
    goto LABEL_9;
  }

  v7 = xpc_dictionary_create(0, 0, 0);
  if (!v7)
  {
    APSLogErrorAt();
    v5 = 0;
    v11 = -6728;
    goto LABEL_15;
  }

  v8 = v7;
  xpc_dictionary_set_string(v7, "function", "getProperty");
  xpc_dictionary_set_cf_object();
  if (a3)
  {
    xpc_dictionary_set_cf_object();
  }

  object = 0;
  v9 = _AirPlayReceiverUI_SendMessageWithReplySync(v5, v8, &object);
  v13 = v9;
  xpc_release(v8);
  if (v9)
  {
    v5 = 0;
  }

  else
  {
    v5 = xpc_dictionary_copy_cf_object();
    xpc_release(object);
    if (v13)
    {
      APSLogErrorAt();
    }
  }

LABEL_9:
  if (a4)
  {
    *a4 = v13;
  }

  return v5;
}

uint64_t AirPlayReceiverUI_SetProperty(uint64_t a1, CFStringRef theString1, uint64_t a3, const void *a4)
{
  if (a1)
  {
    if (!*(a1 + 40))
    {
      return 0;
    }

    if (CFStringCompare(theString1, @"denyInterruptions", 0) == kCFCompareEqualTo)
    {
      *(a1 + 56) = CFGetInt64() != 0;
      return 0;
    }

    if (CFStringCompare(theString1, @"rate", 0))
    {
      if (CFStringCompare(theString1, @"audioMode", 0) == kCFCompareEqualTo)
      {
        if (*(a1 + 160))
        {
          v8 = *(a1 + 168);
          if (a4)
          {
            CFRetain(a4);
          }

          *(a1 + 168) = a4;
          if (v8)
          {
            CFRelease(v8);
            a4 = *(a1 + 168);
          }

          if (a4)
          {
            if (gLogCategory_AirPlayReceiverUIXPCServerCore <= 50)
            {
              if (gLogCategory_AirPlayReceiverUIXPCServerCore != -1 || (v15 = _LogCategory_Initialize(), a4 = *(a1 + 168), v15))
              {
                LogPrintF(&gLogCategory_AirPlayReceiverUIXPCServerCore, "OSStatus AirPlayReceiverUI_SetProperty(AirPlayReceiverUIRef, CFStringRef, CFTypeRef, CFTypeRef)", 33554482, "Updating audioMode to %@, because sender set it\n", a4);
                a4 = *(a1 + 168);
              }
            }

            _AirPlayReceiverUI_NotifyObserversF(a1, "updateAudioMode", "{%kO=%O}", @"audioMode", a4);
          }
        }

        return 0;
      }
    }

    else
    {
      CFGetDouble();
      *&v10 = v10;
      if (*&v10 == 1.0)
      {
        v11 = *(a1 + 168);
        if (v11)
        {
          if (gLogCategory_AirPlayReceiverUIXPCServerCore <= 50)
          {
            if (gLogCategory_AirPlayReceiverUIXPCServerCore != -1 || (v12 = _LogCategory_Initialize(), v11 = *(a1 + 168), v12))
            {
              LogPrintF(&gLogCategory_AirPlayReceiverUIXPCServerCore, "OSStatus AirPlayReceiverUI_SetProperty(AirPlayReceiverUIRef, CFStringRef, CFTypeRef, CFTypeRef)", 33554482, "Updating audioMode on SetRate(1) to %@\n", v11);
              v11 = *(a1 + 168);
            }
          }

          _AirPlayReceiverUI_NotifyObserversF(a1, "updateAudioMode", "{%kO=%O}", @"audioMode", v11);
        }
      }
    }

    v13 = xpc_dictionary_create(0, 0, 0);
    xpc_dictionary_set_string(v13, "function", "setProperty");
    xpc_dictionary_set_cf_object();
    if (a3)
    {
      xpc_dictionary_set_cf_object();
    }

    if (a4)
    {
      xpc_dictionary_set_cf_object();
    }

    v14 = _AirPlayReceiverUI_SendMessageWithReplySync(a1, v13, 0);
    xpc_release(v13);
    return v14;
  }

  else
  {
    APSLogErrorAt();
    return 4294960551;
  }
}

uint64_t AirPlayReceiverUI_Perform(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t *a4)
{
  if (!a1)
  {
    APSLogErrorAt();
    return 4294960551;
  }

  if (!*(a1 + 40))
  {
    return 0;
  }

  v7 = xpc_dictionary_create(0, 0, 0);
  xpc_dictionary_set_string(v7, "function", "perform");
  xpc_dictionary_set_cf_object();
  if (a3)
  {
    xpc_dictionary_set_cf_object();
  }

  object = 0;
  v8 = _AirPlayReceiverUI_SendMessageWithReplySync(a1, v7, &object);
  xpc_release(v7);
  if (!v8)
  {
    if (a4)
    {
      *a4 = xpc_dictionary_copy_cf_object();
    }

    xpc_release(object);
    return 0;
  }

  return v8;
}

uint64_t AirPlayReceiverUI_StartPresentation(uint64_t a1, __CFString *theDict, __CFDictionary **a3)
{
  v56 = 0;
  v54 = 0;
  v6 = 0x281309000uLL;
  if (gLogCategory_AirPlayReceiverUIXPCServerCore <= 30 && (gLogCategory_AirPlayReceiverUIXPCServerCore != -1 || _LogCategory_Initialize()))
  {
    v7 = "\n";
    if (!theDict)
    {
      v7 = " ";
    }

    v8 = @"<<no params>>";
    if (theDict)
    {
      v8 = theDict;
    }

    LogPrintF(&gLogCategory_AirPlayReceiverUIXPCServerCore, "OSStatus AirPlayReceiverUI_StartPresentation(AirPlayReceiverUIRef, CFDictionaryRef, CFDictionaryRef *)", 33554462, "Starting presentation:%s%1@\n", v7, v8);
  }

  v53 = 0;
  xdict = 0;
  if (a1)
  {
    if (*(a1 + 40))
    {
      if (theDict)
      {
        MutableCopy = CFDictionaryCreateMutableCopy(0, 0, theDict);
      }

      else
      {
        MutableCopy = CFDictionaryCreateMutable(0, 0, MEMORY[0x277CBF138], MEMORY[0x277CBF150]);
      }

      v10 = MutableCopy;
      if (MutableCopy)
      {
        v52 = a3;
        Int64 = CFDictionaryGetInt64();
        v15 = CFDictionaryGetInt64();
        v16 = CFDictionaryGetInt64();
        Value = CFDictionaryGetValue(v10, @"presentationType");
        if (Value)
        {
          v18 = Value;
        }

        else
        {
          v18 = @"photo";
        }

        v19 = CFGetTypeID(v18);
        if (v19 == CFStringGetTypeID())
        {
          if (CFStringCompare(v18, @"mirror", 0))
          {
            if (CFStringCompare(v18, @"photo", 0))
            {
              if (CFStringCompare(v18, @"slideshow", 0))
              {
                if (gLogCategory_AirPlayReceiverUIXPCServerCore <= 60 && (gLogCategory_AirPlayReceiverUIXPCServerCore != -1 || _LogCategory_Initialize()))
                {
                  LogPrintF(&gLogCategory_AirPlayReceiverUIXPCServerCore, "OSStatus AirPlayReceiverUI_StartPresentation(AirPlayReceiverUIRef, CFDictionaryRef, CFDictionaryRef *)", 33554492, "### Start bad internal presentation type '%@'\n", v18);
                }

                v11 = 0;
                v12 = 0;
                v13 = 4294960591;
                goto LABEL_40;
              }

              v20 = 146;
            }

            else
            {
              v20 = 145;
            }
          }

          else
          {
            v20 = 144;
          }

          v22 = (a1 + 128);
          v21 = *(a1 + 128);
          if (!v21 || (v23 = *(a1 + 120), v23 == Int64))
          {
LABEL_50:
            v26 = *(a1 + 160);
            if (v26 && !*(a1 + 164) && (!v16 || *(a1 + 152) != Int64))
            {
              if (*(a1 + 56))
              {
                if (gLogCategory_AirPlayReceiverUIXPCServerCore <= 50 && (gLogCategory_AirPlayReceiverUIXPCServerCore != -1 || _LogCategory_Initialize()))
                {
                  LogPrintF(&gLogCategory_AirPlayReceiverUIXPCServerCore, "OSStatus AirPlayReceiverUI_StartPresentation(AirPlayReceiverUIRef, CFDictionaryRef, CFDictionaryRef *)", 33554482, "### Denying interruption of video from device 0x%llx for presentation from device 0x%llx\n");
                }

                goto LABEL_73;
              }

              if (gLogCategory_AirPlayReceiverUIXPCServerCore <= 50)
              {
                if (gLogCategory_AirPlayReceiverUIXPCServerCore != -1 || (v48 = _LogCategory_Initialize(), v26 = *(a1 + 160), v48))
                {
                  v30 = "(hijack aware)";
                  if (!v16)
                  {
                    v30 = "(not hijack aware)";
                  }

                  LogPrintF(&gLogCategory_AirPlayReceiverUIXPCServerCore, "OSStatus AirPlayReceiverUI_StartPresentation(AirPlayReceiverUIRef, CFDictionaryRef, CFDictionaryRef *)", 33554482, "*** Hijacking video session ID %u, device 0x%llx for %@ presentation device 0x%llx %s\n", v26, *(a1 + 152), v18, Int64, v30);
                  v26 = *(a1 + 160);
                }
              }

              _AirPlayReceiverUI_NotifyObserversF(a1, "stopVideo", "{%kO=%i%kO=%O}", @"sessionID", v26, @"hijacked", *MEMORY[0x277CBED28]);
            }

            if (!v15)
            {
LABEL_88:
              v51 = v20;
              v32 = *(a1 + 136);
              v33 = Int64;
              if (v32)
              {
                v11 = 0;
              }

              else
              {
                v35 = *(a1 + 96);
                *(a1 + 96) = v35 + 1;
                LODWORD(v56) = v35 + 1;
                if (v35 == -1)
                {
                  *(a1 + 96) = 1;
                  LODWORD(v56) = 1;
                }

                CFDictionarySetNumber();
                CAContextForRemoteHosting = CreateCAContextForRemoteHosting();
                v11 = CAContextForRemoteHosting;
                if (!CAContextForRemoteHosting)
                {
                  APSLogErrorAt();
                  v12 = 0;
                  goto LABEL_132;
                }

                [objc_msgSend(CAContextForRemoteHosting "layer")];
                [objc_msgSend(v11 "layer")];
                [MEMORY[0x277CD9FF0] flush];
                [MEMORY[0x277CD9FF0] synchronize];
                v37 = xpc_dictionary_create(0, 0, 0);
                xpc_dictionary_set_string(v37, "function", "startPresentation");
                xpc_dictionary_set_cf_object();
                xpc_dictionary_set_uint64(v37, "presentationContextID", [v11 contextId]);
                v13 = _AirPlayReceiverUI_SendMessageWithReplySync(a1, v37, &xdict);
                HIDWORD(v56) = v13;
                xpc_release(v37);
                if (v13)
                {
                  APSLogErrorAt();
                  v12 = 0;
                  goto LABEL_137;
                }

                v12 = xpc_dictionary_copy_cf_object();
                if (HIDWORD(v56))
                {
                  APSLogErrorAt();
                  v13 = HIDWORD(v56);
                  v6 = 0x281309000;
                  if (!HIDWORD(v56))
                  {
                    goto LABEL_116;
                  }

                  goto LABEL_41;
                }

                string = xpc_dictionary_get_string(xdict, "presentationFrame");
                if (!string)
                {
                  APSLogErrorAt();
                  v13 = 4294960584;
                  HIDWORD(v56) = -6712;
                  goto LABEL_137;
                }

                sscanf(string, "%f,%f,%f,%f", &v54 + 4, &v54, &v53 + 4, &v53);
                v39 = *(&v54 + 1);
                v40 = *&v54;
                v41 = *(&v53 + 1);
                v42 = *&v53;
                [MEMORY[0x277CD9FF0] begin];
                [MEMORY[0x277CD9FF0] setDisableActions:1];
                [objc_msgSend(v11 "layer")];
                [MEMORY[0x277CD9FF0] commit];
                *(a1 + 136) = v11;
                *(a1 + 120) = v33;
                *(a1 + 128) = v56;
                if (v12)
                {
                  Mutable = CFDictionaryCreateMutableCopy(0, 0, v12);
                  if (Mutable)
                  {
                    goto LABEL_91;
                  }

LABEL_101:
                  APSLogErrorAt();
LABEL_132:
                  v13 = 4294960596;
                  HIDWORD(v56) = -6700;
LABEL_137:
                  v6 = 0x281309000;
                  goto LABEL_41;
                }
              }

              Mutable = CFDictionaryCreateMutable(0, 0, MEMORY[0x277CBF138], MEMORY[0x277CBF150]);
              v12 = 0;
              if (Mutable)
              {
LABEL_91:
                CFDictionarySetValue(Mutable, @"presentationContext", *(a1 + 136));
                CFDictionarySetNumber();
                if (v52)
                {
                  *v52 = Mutable;
                }

                else
                {
                  CFRelease(Mutable);
                }

                *(a1 + v51) = 1;
                if (gLogCategory_AirPlayReceiverUIXPCServerCore <= 50 && (gLogCategory_AirPlayReceiverUIXPCServerCore != -1 || _LogCategory_Initialize()))
                {
                  v43 = "reused";
                  if (!v32)
                  {
                    v43 = "new";
                  }

                  v50 = v43;
                  v44 = 83;
                  if (!*(a1 + 146))
                  {
                    v44 = 115;
                  }

                  v45 = 80;
                  if (!*(a1 + 145))
                  {
                    v45 = 112;
                  }

                  v46 = 77;
                  if (!*(a1 + 144))
                  {
                    v46 = 109;
                  }

                  LogPrintF(&gLogCategory_AirPlayReceiverUIXPCServerCore, "OSStatus AirPlayReceiverUI_StartPresentation(AirPlayReceiverUIRef, CFDictionaryRef, CFDictionaryRef *)", 33554482, "Started %@ presentation session %u, device 0x%llx (%c%c%c, %s)\n", v18, *(a1 + 128), v33, v46, v45, v44, v50);
                }

                HIDWORD(v56) = 0;
                goto LABEL_116;
              }

              goto LABEL_101;
            }

            v27 = *(a1 + 112);
            if (v27 && *(a1 + 104) != Int64)
            {
              if (!*(a1 + 56))
              {
LABEL_74:
                if (gLogCategory_AirPlayReceiverUIXPCServerCore <= 50)
                {
                  if (gLogCategory_AirPlayReceiverUIXPCServerCore != -1 || (v31 = _LogCategory_Initialize(), v27 = *(a1 + 112), v31))
                  {
                    LogPrintF(&gLogCategory_AirPlayReceiverUIXPCServerCore, "OSStatus AirPlayReceiverUI_StartPresentation(AirPlayReceiverUIRef, CFDictionaryRef, CFDictionaryRef *)", 33554482, "*** Hijacking audio session ID %u, device 0x%llx for %@ presentation device 0x%llx\n", v27, *(a1 + 104), v18, Int64);
                    v27 = *(a1 + 112);
                  }
                }

                _AirPlayReceiverUI_NotifyObserversF(a1, "stopAudio", "{%kO=%i%kO=%O}", @"sessionID", v27, @"hijacked", *MEMORY[0x277CBED28]);
                goto LABEL_88;
              }
            }

            else
            {
              v28 = *(a1 + 160);
              if (!v28)
              {
                goto LABEL_88;
              }

              v29 = *(a1 + 152);
              if (v29 == Int64 || !*(a1 + 164))
              {
                goto LABEL_88;
              }

              if (!*(a1 + 56))
              {
                if (!v27)
                {
                  if (gLogCategory_AirPlayReceiverUIXPCServerCore <= 50)
                  {
                    if (gLogCategory_AirPlayReceiverUIXPCServerCore == -1)
                    {
                      v49 = _LogCategory_Initialize();
                      v28 = *(a1 + 160);
                      if (!v49)
                      {
                        goto LABEL_127;
                      }

                      v29 = *(a1 + 152);
                    }

                    LogPrintF(&gLogCategory_AirPlayReceiverUIXPCServerCore, "OSStatus AirPlayReceiverUI_StartPresentation(AirPlayReceiverUIRef, CFDictionaryRef, CFDictionaryRef *)", 33554482, "*** Hijacking music mode video session ID %u, device 0x%llx for %@ presentation device 0x%llx\n", v28, v29, v18, Int64);
                    v28 = *(a1 + 160);
                  }

LABEL_127:
                  _AirPlayReceiverUI_NotifyObserversF(a1, "stopVideo", "{%kO=%i%kO=%O}", @"sessionID", v28, @"hijacked", *MEMORY[0x277CBED28]);
                  goto LABEL_88;
                }

                goto LABEL_74;
              }
            }

            if (gLogCategory_AirPlayReceiverUIXPCServerCore <= 50 && (gLogCategory_AirPlayReceiverUIXPCServerCore != -1 || _LogCategory_Initialize()))
            {
              LogPrintF(&gLogCategory_AirPlayReceiverUIXPCServerCore, "OSStatus AirPlayReceiverUI_StartPresentation(AirPlayReceiverUIRef, CFDictionaryRef, CFDictionaryRef *)", 33554482, "### Denying interruption of audio from device 0x%llx for presentation with %s from device 0x%llx\n");
            }

            goto LABEL_73;
          }

          if (*(a1 + 56))
          {
            if (gLogCategory_AirPlayReceiverUIXPCServerCore <= 50 && (gLogCategory_AirPlayReceiverUIXPCServerCore != -1 || _LogCategory_Initialize()))
            {
              LogPrintF(&gLogCategory_AirPlayReceiverUIXPCServerCore, "OSStatus AirPlayReceiverUI_StartPresentation(AirPlayReceiverUIRef, CFDictionaryRef, CFDictionaryRef *)", 33554482, "### Denying interruption of presentation from device 0x%llx for presentation from device 0x%llx\n");
            }

LABEL_73:
            v12 = 0;
            v11 = 0;
            HIDWORD(v56) = 200453;
            goto LABEL_116;
          }

          if (gLogCategory_AirPlayReceiverUIXPCServerCore <= 50)
          {
            if (gLogCategory_AirPlayReceiverUIXPCServerCore == -1)
            {
              v25 = _LogCategory_Initialize();
              v21 = *v22;
              if (!v25)
              {
                goto LABEL_49;
              }

              v23 = *(a1 + 120);
            }

            LogPrintF(&gLogCategory_AirPlayReceiverUIXPCServerCore, "OSStatus AirPlayReceiverUI_StartPresentation(AirPlayReceiverUIRef, CFDictionaryRef, CFDictionaryRef *)", 33554482, "*** Hijacking presentation session ID %u, device 0x%llx for %@ presentation device 0x%llx\n", v21, v23, v18, Int64);
            v21 = *v22;
          }

LABEL_49:
          _AirPlayReceiverUI_NotifyObserversF(a1, "stopPresentation", "{%kO=%i%kO=%O}", @"sessionID", v21, @"hijacked", *MEMORY[0x277CBED28]);
          _AirPlayReceiverUI_CleanupPresentation(a1, 1, 0);
          goto LABEL_50;
        }

        APSLogErrorAt();
        v11 = 0;
        v12 = 0;
        v13 = 4294960540;
      }

      else
      {
        APSLogErrorAt();
        v11 = 0;
        v12 = 0;
        v13 = 4294960568;
      }
    }

    else
    {
      APSLogErrorAt();
      v10 = 0;
      v11 = 0;
      v12 = 0;
      v13 = 4294960596;
    }
  }

  else
  {
    APSLogErrorAt();
    v10 = 0;
    v11 = 0;
    v12 = 0;
    v13 = 4294960551;
  }

LABEL_40:
  HIDWORD(v56) = v13;
LABEL_41:
  v24 = *(v6 + 3616);
  if (v24 > 60)
  {
    goto LABEL_116;
  }

  if (v24 != -1)
  {
    goto LABEL_43;
  }

  if (_LogCategory_Initialize())
  {
    v13 = HIDWORD(v56);
LABEL_43:
    LogPrintF(&gLogCategory_AirPlayReceiverUIXPCServerCore, "OSStatus AirPlayReceiverUI_StartPresentation(AirPlayReceiverUIRef, CFDictionaryRef, CFDictionaryRef *)", 33554492, "### Start presentation failed: %#m\n", v13);
  }

LABEL_116:

  if (xdict)
  {
    xpc_release(xdict);
  }

  if (v10)
  {
    CFRelease(v10);
  }

  if (v12)
  {
    CFRelease(v12);
  }

  return HIDWORD(v56);
}

uint64_t AirPlayReceiverUI_StopPresentation(uint64_t a1, __CFString *a2)
{
  if (gLogCategory_AirPlayReceiverUIXPCServerCore <= 30 && (gLogCategory_AirPlayReceiverUIXPCServerCore != -1 || _LogCategory_Initialize()))
  {
    v4 = "\n";
    if (!a2)
    {
      v4 = " ";
    }

    v5 = @"<<no params>>";
    if (a2)
    {
      v5 = a2;
    }

    LogPrintF(&gLogCategory_AirPlayReceiverUIXPCServerCore, "OSStatus AirPlayReceiverUI_StopPresentation(AirPlayReceiverUIRef, CFDictionaryRef)", 33554462, "Stopping presentation:%s%1@\n", v4, v5);
  }

  if (!a1)
  {
    APSLogErrorAt();
    v18 = 4294960551;
    goto LABEL_59;
  }

  if (!*(a1 + 40))
  {
    return 0;
  }

  if (a2)
  {
    Int64 = CFDictionaryGetInt64();
    v7 = CFDictionaryGetInt64();
    Value = CFDictionaryGetValue(a2, @"presentationType");
    v9 = v7;
  }

  else
  {
    v9 = 0;
    Int64 = 0;
    Value = 0;
  }

  if (Value)
  {
    v10 = Value;
  }

  else
  {
    v10 = @"photo";
  }

  v11 = CFGetTypeID(v10);
  if (v11 != CFStringGetTypeID())
  {
    APSLogErrorAt();
    v18 = 4294960540;
    goto LABEL_59;
  }

  if (CFStringCompare(v10, @"mirror", 0) == kCFCompareEqualTo)
  {
    v12 = 144;
    if (v9)
    {
      goto LABEL_29;
    }

    goto LABEL_30;
  }

  if (CFStringCompare(v10, @"photo", 0) == kCFCompareEqualTo)
  {
    v12 = 145;
    if (v9)
    {
      goto LABEL_29;
    }

LABEL_30:
    v14 = !*(a1 + 112) && !*(a1 + 128) && *(a1 + 160) == 0;
    *(a1 + v12) = 0;
    if (!*(a1 + 144) && !*(a1 + 145) && !*(a1 + 146))
    {
      _AirPlayReceiverUI_CleanupPresentation(a1, 1, a2);
    }

    if (gLogCategory_AirPlayReceiverUIXPCServerCore <= 50 && (gLogCategory_AirPlayReceiverUIXPCServerCore != -1 || _LogCategory_Initialize()))
    {
      v15 = 83;
      if (!*(a1 + 146))
      {
        v15 = 115;
      }

      v16 = 80;
      if (!*(a1 + 145))
      {
        v16 = 112;
      }

      v17 = 77;
      if (!*(a1 + 144))
      {
        v17 = 109;
      }

      LogPrintF(&gLogCategory_AirPlayReceiverUIXPCServerCore, "OSStatus AirPlayReceiverUI_StopPresentation(AirPlayReceiverUIRef, CFDictionaryRef)", 33554482, "Stopped %@ presentation session %u, device 0x%llx (%c%c%c)\n", v10, v9, Int64, v17, v16, v15);
    }

    if (!v14 && !*(a1 + 112) && !*(a1 + 128) && !*(a1 + 160))
    {
      _AirPlayReceiverUI_ActiveSessionsStopped(a1);
    }

    return 0;
  }

  if (CFStringCompare(v10, @"slideshow", 0) == kCFCompareEqualTo)
  {
    v12 = 146;
    if (!v9)
    {
      goto LABEL_30;
    }

LABEL_29:
    v13 = *(a1 + 128);
    if (v9 == v13)
    {
      goto LABEL_30;
    }

    if (gLogCategory_AirPlayReceiverUIXPCServerCore <= 50)
    {
      if (gLogCategory_AirPlayReceiverUIXPCServerCore == -1)
      {
        if (!_LogCategory_Initialize())
        {
          return 0;
        }

        v13 = *(a1 + 128);
      }

      LogPrintF(&gLogCategory_AirPlayReceiverUIXPCServerCore, "OSStatus AirPlayReceiverUI_StopPresentation(AirPlayReceiverUIRef, CFDictionaryRef)", 33554482, "Ignoring stop %@ presentation with stale session ID %u, device 0x%llx (current session ID %u, device 0x%llx)\n", v10, v9, Int64, v13, *(a1 + 120));
    }

    return 0;
  }

  if (gLogCategory_AirPlayReceiverUIXPCServerCore > 60)
  {
    return 4294960591;
  }

  if (gLogCategory_AirPlayReceiverUIXPCServerCore != -1 || _LogCategory_Initialize())
  {
    LogPrintF(&gLogCategory_AirPlayReceiverUIXPCServerCore, "OSStatus AirPlayReceiverUI_StopPresentation(AirPlayReceiverUIRef, CFDictionaryRef)", 33554492, "### Stop bad internal presentation type '%@'\n", v10);
  }

  v18 = 4294960591;
LABEL_59:
  if (gLogCategory_AirPlayReceiverUIXPCServerCore <= 60 && (gLogCategory_AirPlayReceiverUIXPCServerCore != -1 || _LogCategory_Initialize()))
  {
    LogPrintF(&gLogCategory_AirPlayReceiverUIXPCServerCore, "OSStatus AirPlayReceiverUI_StopPresentation(AirPlayReceiverUIRef, CFDictionaryRef)", 33554492, "### Stop presentation failed: %#m\n", v18);
  }

  return v18;
}

uint64_t AirPlayReceiverUI_StartAudio(uint64_t a1, __CFString *theDict, CFMutableDictionaryRef *a3)
{
  if (gLogCategory_AirPlayReceiverUIXPCServerCore <= 30 && (gLogCategory_AirPlayReceiverUIXPCServerCore != -1 || _LogCategory_Initialize()))
  {
    v6 = "\n";
    if (!theDict)
    {
      v6 = " ";
    }

    v7 = @"<<no params>>";
    if (theDict)
    {
      v7 = theDict;
    }

    LogPrintF(&gLogCategory_AirPlayReceiverUIXPCServerCore, "OSStatus AirPlayReceiverUI_StartAudio(AirPlayReceiverUIRef, CFDictionaryRef, CFDictionaryRef *)", 33554462, "Starting audio:%s%1@\n", v6, v7);
  }

  v39 = 0;
  object = 0;
  if (!a1)
  {
    APSLogErrorAt();
    v9 = 0;
    v14 = 4294960551;
LABEL_96:
    if (gLogCategory_AirPlayReceiverUIXPCServerCore <= 60 && (gLogCategory_AirPlayReceiverUIXPCServerCore != -1 || _LogCategory_Initialize()))
    {
      LogPrintF(&gLogCategory_AirPlayReceiverUIXPCServerCore, "OSStatus AirPlayReceiverUI_StartAudio(AirPlayReceiverUIRef, CFDictionaryRef, CFDictionaryRef *)", 33554492, "### Start audio failed: %#m\n", v14, v35, v37);
    }

    goto LABEL_80;
  }

  if (!*(a1 + 40))
  {
    v14 = 0;
    v9 = 0;
    goto LABEL_80;
  }

  if (theDict)
  {
    MutableCopy = CFDictionaryCreateMutableCopy(0, 0, theDict);
  }

  else
  {
    MutableCopy = CFDictionaryCreateMutable(0, 0, MEMORY[0x277CBF138], MEMORY[0x277CBF150]);
  }

  v9 = MutableCopy;
  if (!MutableCopy)
  {
    APSLogErrorAt();
    v14 = 4294960568;
    goto LABEL_96;
  }

  Int64 = CFDictionaryGetInt64();
  v11 = Int64;
  if (*(a1 + 144))
  {
    v12 = *(a1 + 128);
    if (v12)
    {
      v13 = *(a1 + 120);
      if (v13 != Int64)
      {
        if (*(a1 + 56))
        {
          v14 = 200453;
          if (gLogCategory_AirPlayReceiverUIXPCServerCore > 50)
          {
            goto LABEL_80;
          }

          if (gLogCategory_AirPlayReceiverUIXPCServerCore == -1)
          {
            if (!_LogCategory_Initialize())
            {
              goto LABEL_80;
            }

            v13 = *(a1 + 120);
          }

          v34 = v13;
          v36 = v11;
          v15 = "### Denying interruption of audio from device 0x%llx for presentation from device 0x%llx\n";
          goto LABEL_61;
        }

        if (gLogCategory_AirPlayReceiverUIXPCServerCore > 50)
        {
          goto LABEL_28;
        }

        if (gLogCategory_AirPlayReceiverUIXPCServerCore == -1)
        {
          v16 = _LogCategory_Initialize();
          v12 = *(a1 + 128);
          if (!v16)
          {
            goto LABEL_28;
          }

          v13 = *(a1 + 120);
        }

        LogPrintF(&gLogCategory_AirPlayReceiverUIXPCServerCore, "OSStatus AirPlayReceiverUI_StartAudio(AirPlayReceiverUIRef, CFDictionaryRef, CFDictionaryRef *)", 33554482, "*** Hijacking presentation session ID %u, device 0x%llx for audio device 0x%llx\n", v12, v13, v11);
        v12 = *(a1 + 128);
LABEL_28:
        _AirPlayReceiverUI_NotifyObserversF(a1, "stopPresentation", "{%kO=%i%kO=%O}", @"sessionID", v12, @"hijacked", *MEMORY[0x277CBED28]);
      }
    }
  }

  v17 = *(a1 + 160);
  if (v17)
  {
    v18 = *(a1 + 152);
    if (v18 != v11 && !*(a1 + 164))
    {
      if (*(a1 + 56))
      {
        v14 = 200453;
        if (gLogCategory_AirPlayReceiverUIXPCServerCore > 50)
        {
          goto LABEL_80;
        }

        if (gLogCategory_AirPlayReceiverUIXPCServerCore == -1)
        {
          if (!_LogCategory_Initialize())
          {
            goto LABEL_80;
          }

          v18 = *(a1 + 152);
        }

        v34 = v18;
        v36 = v11;
        v15 = "### Denying interruption of audio from device 0x%llx for video from device 0x%llx\n";
LABEL_61:
        LogPrintF(&gLogCategory_AirPlayReceiverUIXPCServerCore, "OSStatus AirPlayReceiverUI_StartAudio(AirPlayReceiverUIRef, CFDictionaryRef, CFDictionaryRef *)", 33554482, v15, v34, v36, v37);
        goto LABEL_80;
      }

      if (gLogCategory_AirPlayReceiverUIXPCServerCore > 50)
      {
        goto LABEL_88;
      }

      if (gLogCategory_AirPlayReceiverUIXPCServerCore == -1)
      {
        v32 = _LogCategory_Initialize();
        v17 = *(a1 + 160);
        if (!v32)
        {
          goto LABEL_88;
        }

        v18 = *(a1 + 152);
      }

      LogPrintF(&gLogCategory_AirPlayReceiverUIXPCServerCore, "OSStatus AirPlayReceiverUI_StartAudio(AirPlayReceiverUIRef, CFDictionaryRef, CFDictionaryRef *)", 33554482, "*** Hijacking video session ID %u, device 0x%llx for audio device 0x%llx\n", v17, v18, v11);
      v17 = *(a1 + 160);
LABEL_88:
      _AirPlayReceiverUI_NotifyObserversF(a1, "stopVideo", "{%kO=%i%kO=%O}", @"sessionID", v17, @"hijacked", *MEMORY[0x277CBED28]);
    }
  }

  v19 = *(a1 + 112);
  if (!v19 || *(a1 + 104) == v11)
  {
    v20 = *(a1 + 160);
    if (!v20)
    {
      goto LABEL_64;
    }

    v21 = *(a1 + 152);
    if (v21 == v11 || !*(a1 + 164))
    {
      goto LABEL_64;
    }

    if (!*(a1 + 56))
    {
      if (!v19)
      {
        if (gLogCategory_AirPlayReceiverUIXPCServerCore <= 50)
        {
          if (gLogCategory_AirPlayReceiverUIXPCServerCore == -1)
          {
            v33 = _LogCategory_Initialize();
            v20 = *(a1 + 160);
            if (!v33)
            {
              goto LABEL_90;
            }

            v21 = *(a1 + 152);
          }

          LogPrintF(&gLogCategory_AirPlayReceiverUIXPCServerCore, "OSStatus AirPlayReceiverUI_StartAudio(AirPlayReceiverUIRef, CFDictionaryRef, CFDictionaryRef *)", 33554482, "*** Hijacking music mode video session ID %u, device 0x%llx for audio device 0x%llx\n", v20, v21, v11);
          v20 = *(a1 + 160);
        }

LABEL_90:
        _AirPlayReceiverUI_NotifyObserversF(a1, "stopVideo", "{%kO=%i%kO=%O}", @"sessionID", v20, @"hijacked", *MEMORY[0x277CBED28]);
        goto LABEL_64;
      }

      goto LABEL_48;
    }

LABEL_43:
    v14 = 200453;
    if (gLogCategory_AirPlayReceiverUIXPCServerCore > 50)
    {
      goto LABEL_80;
    }

    if (gLogCategory_AirPlayReceiverUIXPCServerCore == -1)
    {
      if (!_LogCategory_Initialize())
      {
        goto LABEL_80;
      }

      LODWORD(v19) = *(a1 + 112);
    }

    v22 = "audio";
    if (v19)
    {
      v19 = v19;
    }

    else
    {
      v22 = "music mode video";
      v19 = *(a1 + 152);
    }

    v36 = v19;
    v37 = v11;
    v34 = v22;
    v15 = "### Denying interruption of %s from device 0x%llx for audio from device 0x%llx\n";
    goto LABEL_61;
  }

  if (*(a1 + 56))
  {
    goto LABEL_43;
  }

LABEL_48:
  if (gLogCategory_AirPlayReceiverUIXPCServerCore <= 50)
  {
    if (gLogCategory_AirPlayReceiverUIXPCServerCore != -1 || (v23 = _LogCategory_Initialize(), v19 = *(a1 + 112), v23))
    {
      LogPrintF(&gLogCategory_AirPlayReceiverUIXPCServerCore, "OSStatus AirPlayReceiverUI_StartAudio(AirPlayReceiverUIRef, CFDictionaryRef, CFDictionaryRef *)", 33554482, "*** Hijacking audio session ID %u, device 0x%llx for audio device 0x%llx\n", v19, *(a1 + 104), v11);
      v19 = *(a1 + 112);
    }
  }

  _AirPlayReceiverUI_NotifyObserversF(a1, "stopAudio", "{%kO=%i%kO=%O}", @"sessionID", v19, @"hijacked", *MEMORY[0x277CBED28]);
LABEL_64:
  *(a1 + 104) = v11;
  v24 = *(a1 + 96);
  v25 = v24 + 1;
  *(a1 + 96) = v24 + 1;
  v39 = v24 + 1;
  if (v24 == -1)
  {
    *(a1 + 96) = 1;
    v39 = 1;
    v25 = 1;
  }

  *(a1 + 112) = v25;
  CFDictionarySetNumber();
  v26 = xpc_dictionary_create(0, 0, 0);
  xpc_dictionary_set_string(v26, "function", "startAudio");
  xpc_dictionary_set_cf_object();
  v14 = _AirPlayReceiverUI_SendMessageWithReplySync(a1, v26, &object);
  xpc_release(v26);
  if (v14)
  {
    APSLogErrorAt();
    goto LABEL_96;
  }

  v27 = xpc_dictionary_copy_cf_object();
  if (v27)
  {
    v28 = v27;
    v29 = CFDictionaryCreateMutableCopy(0, 0, v27);
    CFRelease(v28);
    if (!v29)
    {
      goto LABEL_95;
    }
  }

  else
  {
    Mutable = CFDictionaryCreateMutable(0, 0, MEMORY[0x277CBF138], MEMORY[0x277CBF150]);
    if (!Mutable)
    {
LABEL_95:
      APSLogErrorAt();
      v14 = 4294960596;
      goto LABEL_96;
    }

    v29 = Mutable;
  }

  CFDictionarySetNumber();
  if (a3)
  {
    *a3 = v29;
  }

  else
  {
    CFRelease(v29);
  }

  if (gLogCategory_AirPlayReceiverUIXPCServerCore <= 30 && (gLogCategory_AirPlayReceiverUIXPCServerCore != -1 || _LogCategory_Initialize()))
  {
    LogPrintF(&gLogCategory_AirPlayReceiverUIXPCServerCore, "OSStatus AirPlayReceiverUI_StartAudio(AirPlayReceiverUIRef, CFDictionaryRef, CFDictionaryRef *)", 33554462, "Started audio session %u, device 0x%llx\n", v39, v11);
  }

  v14 = 0;
LABEL_80:
  if (object)
  {
    xpc_release(object);
  }

  if (v9)
  {
    CFRelease(v9);
  }

  return v14;
}

uint64_t AirPlayReceiverUI_StopAudio(uint64_t a1, __CFString *a2)
{
  if (gLogCategory_AirPlayReceiverUIXPCServerCore <= 30 && (gLogCategory_AirPlayReceiverUIXPCServerCore != -1 || _LogCategory_Initialize()))
  {
    v4 = "\n";
    if (!a2)
    {
      v4 = " ";
    }

    v5 = @"<<no params>>";
    if (a2)
    {
      v5 = a2;
    }

    LogPrintF(&gLogCategory_AirPlayReceiverUIXPCServerCore, "OSStatus AirPlayReceiverUI_StopAudio(AirPlayReceiverUIRef, CFDictionaryRef)", 33554462, "Stopping audio:%s%1@\n", v4, v5);
  }

  if (!a1)
  {
    APSLogErrorAt();
    return 4294960551;
  }

  if (*(a1 + 40))
  {
    if (a2)
    {
      Int64 = CFDictionaryGetInt64();
      v7 = CFDictionaryGetInt64();
      v8 = v7;
      v10 = (a1 + 112);
      v9 = *(a1 + 112);
      if (v9 == v7)
      {
        if (v7)
        {
          goto LABEL_22;
        }

        goto LABEL_20;
      }
    }

    else
    {
      v10 = (a1 + 112);
      v9 = *(a1 + 112);
      if (!v9)
      {
LABEL_20:
        if (!*(a1 + 128))
        {
          v8 = 0;
          v11 = *(a1 + 160) == 0;
          goto LABEL_26;
        }

        v8 = 0;
LABEL_22:
        v11 = 0;
LABEL_26:
        v12 = xpc_dictionary_create(0, 0, 0);
        xpc_dictionary_set_string(v12, "function", "stopAudio");
        if (a2)
        {
          xpc_dictionary_set_cf_object();
        }

        v13 = _AirPlayReceiverUI_SendMessageWithReplySync(a1, v12, 0);
        xpc_release(v12);
        if (v13)
        {
          APSLogErrorAt();
          return v13;
        }

        if (gLogCategory_AirPlayReceiverUIXPCServerCore <= 30 && (gLogCategory_AirPlayReceiverUIXPCServerCore != -1 || _LogCategory_Initialize()))
        {
          LogPrintF(&gLogCategory_AirPlayReceiverUIXPCServerCore, "OSStatus AirPlayReceiverUI_StopAudio(AirPlayReceiverUIRef, CFDictionaryRef)", 33554462, "Stopped audio session %u, device 0x%llx\n", v8, *(a1 + 104));
        }

        *(a1 + 104) = 0;
        *(a1 + 112) = 0;
        if (!v11 && !*(a1 + 128) && !*(a1 + 160))
        {
          _AirPlayReceiverUI_ActiveSessionsStopped(a1);
        }

        return 0;
      }

      v8 = 0;
      Int64 = 0;
    }

    if (gLogCategory_AirPlayReceiverUIXPCServerCore <= 50)
    {
      if (gLogCategory_AirPlayReceiverUIXPCServerCore == -1)
      {
        if (!_LogCategory_Initialize())
        {
          return 0;
        }

        v9 = *v10;
      }

      LogPrintF(&gLogCategory_AirPlayReceiverUIXPCServerCore, "OSStatus AirPlayReceiverUI_StopAudio(AirPlayReceiverUIRef, CFDictionaryRef)", 33554482, "Ignoring stop audio with stale session ID %u, device 0x%llux (current session ID %u, device 0x%llx)\n", v8, Int64, v9, *(a1 + 104));
    }
  }

  return 0;
}

uint64_t AirPlayReceiverUI_UpdateAudioMetaData(uint64_t a1, uint64_t a2)
{
  if (a1)
  {
    if (*(a1 + 40))
    {
      v3 = xpc_dictionary_create(0, 0, 0);
      xpc_dictionary_set_string(v3, "function", "updateAudioMetaData");
      xpc_dictionary_set_cf_object();
      v4 = _AirPlayReceiverUI_SendMessageWithReplySync(a1, v3, 0);
      xpc_release(v3);
      if (v4)
      {
        APSLogErrorAt();
      }
    }

    else
    {
      return 0;
    }
  }

  else
  {
    APSLogErrorAt();
    return 4294960551;
  }

  return v4;
}

uint64_t AirPlayReceiverUI_UpdateAudioProgress(uint64_t a1, double a2, double a3)
{
  if (a1)
  {
    if (*(a1 + 40))
    {
      v6 = xpc_dictionary_create(0, 0, 0);
      xpc_dictionary_set_string(v6, "function", "updateAudioProgress");
      xpc_dictionary_set_double(v6, "position", a2);
      xpc_dictionary_set_double(v6, "duration", a3);
      v7 = _AirPlayReceiverUI_SendMessageWithReplySync(a1, v6, 0);
      xpc_release(v6);
      if (v7)
      {
        APSLogErrorAt();
      }
    }

    else
    {
      return 0;
    }
  }

  else
  {
    APSLogErrorAt();
    return 4294960551;
  }

  return v7;
}

uint64_t AirPlayReceiverUI_StartVideo(uint64_t a1, uint64_t a2, uint64_t a3, CFDictionaryRef theDict, CFMutableDictionaryRef *a5)
{
  v55 = 0;
  object = 0;
  if (!a1)
  {
    APSLogErrorAt();
    v11 = 0;
    v21 = 4294960551;
LABEL_129:
    if (gLogCategory_AirPlayReceiverUIXPCServerCore <= 60 && (gLogCategory_AirPlayReceiverUIXPCServerCore != -1 || _LogCategory_Initialize()))
    {
      LogPrintF(&gLogCategory_AirPlayReceiverUIXPCServerCore, "OSStatus AirPlayReceiverUI_StartVideo(AirPlayReceiverUIRef, AirPlayReceiverMediaControlEventHandler, const void *, CFDictionaryRef, CFDictionaryRef *)", 33554492, "### Start video failed: %#m\n", v21, v49, v51);
    }

    goto LABEL_115;
  }

  if (!*(a1 + 40))
  {
    v11 = 0;
    goto LABEL_107;
  }

  if (theDict)
  {
    MutableCopy = CFDictionaryCreateMutableCopy(0, 0, theDict);
  }

  else
  {
    MutableCopy = CFDictionaryCreateMutable(0, 0, MEMORY[0x277CBF138], MEMORY[0x277CBF150]);
  }

  v11 = MutableCopy;
  if (!MutableCopy)
  {
    APSLogErrorAt();
    v21 = 4294960568;
    goto LABEL_129;
  }

  v52 = a3;
  Int64 = CFDictionaryGetInt64();
  CFStringGetTypeID();
  TypedValue = CFDictionaryGetTypedValue();
  CFStringGetTypeID();
  v14 = CFDictionaryGetTypedValue();
  v53 = a5;
  if (CFDictionaryGetInt64() || v14 == @"music")
  {
    v15 = 1;
  }

  else if (v14)
  {
    v15 = CFEqual(v14, @"music") != 0;
  }

  else
  {
    v15 = 0;
  }

  if (gLogCategory_AirPlayReceiverUIXPCServerCore <= 30 && (gLogCategory_AirPlayReceiverUIXPCServerCore != -1 || _LogCategory_Initialize()))
  {
    LogPrintF(&gLogCategory_AirPlayReceiverUIXPCServerCore, "OSStatus AirPlayReceiverUI_StartVideo(AirPlayReceiverUIRef, AirPlayReceiverMediaControlEventHandler, const void *, CFDictionaryRef, CFDictionaryRef *)", 33554462, "AudioMode from input parameters: %@\n", TypedValue);
  }

  if (!TypedValue || !CFEqual(@"default", TypedValue) && !CFEqual(@"moviePlayback", TypedValue))
  {
    if (!v15 && (!v14 || v14 == @"movie" || CFEqual(v14, @"movie") || v14 == @"tvshow" || CFEqual(v14, @"tvshow")))
    {
      TypedValue = @"moviePlayback";
    }

    else
    {
      TypedValue = @"default";
    }
  }

  if (gLogCategory_AirPlayReceiverUIXPCServerCore <= 30 && (gLogCategory_AirPlayReceiverUIXPCServerCore != -1 || _LogCategory_Initialize()))
  {
    v16 = " (music mode)";
    if (!v15)
    {
      v16 = "";
    }

    v17 = "\n";
    if (!theDict)
    {
      v17 = " ";
    }

    v18 = @"<<no params>>";
    if (theDict)
    {
      v18 = theDict;
    }

    LogPrintF(&gLogCategory_AirPlayReceiverUIXPCServerCore, "OSStatus AirPlayReceiverUI_StartVideo(AirPlayReceiverUIRef, AirPlayReceiverMediaControlEventHandler, const void *, CFDictionaryRef, CFDictionaryRef *)", 33554462, "Starting video%s:%s%1@\n", v16, v17, v18);
  }

  v19 = *(a1 + 128);
  if (v19)
  {
    v20 = *(a1 + 120);
    if (v20 != Int64 && !v15)
    {
      if (*(a1 + 56))
      {
        v21 = 200453;
        if (gLogCategory_AirPlayReceiverUIXPCServerCore > 50)
        {
          goto LABEL_115;
        }

        if (gLogCategory_AirPlayReceiverUIXPCServerCore == -1)
        {
          if (!_LogCategory_Initialize())
          {
            goto LABEL_115;
          }

          v20 = *(a1 + 120);
        }

        v48 = v20;
        v50 = Int64;
        v22 = "### Denying interruption of presentation from device 0x%llx for video from device 0x%llx\n";
        goto LABEL_76;
      }

      if (gLogCategory_AirPlayReceiverUIXPCServerCore > 50)
      {
        goto LABEL_51;
      }

      if (gLogCategory_AirPlayReceiverUIXPCServerCore == -1)
      {
        v23 = _LogCategory_Initialize();
        v19 = *(a1 + 128);
        if (!v23)
        {
          goto LABEL_51;
        }

        v20 = *(a1 + 120);
      }

      LogPrintF(&gLogCategory_AirPlayReceiverUIXPCServerCore, "OSStatus AirPlayReceiverUI_StartVideo(AirPlayReceiverUIRef, AirPlayReceiverMediaControlEventHandler, const void *, CFDictionaryRef, CFDictionaryRef *)", 33554482, "*** Hijacking presentation session ID %u, device 0x%llx for video device 0x%llx\n", v19, v20, Int64);
      v19 = *(a1 + 128);
LABEL_51:
      _AirPlayReceiverUI_NotifyObserversF(a1, "stopPresentation", "{%kO=%i%kO=%O}", @"sessionID", v19, @"hijacked", *MEMORY[0x277CBED28]);
    }
  }

  v24 = *(a1 + 160);
  if (v24 && !*(a1 + 164))
  {
    if (*(a1 + 56))
    {
      v21 = 200453;
      if (gLogCategory_AirPlayReceiverUIXPCServerCore > 50 || gLogCategory_AirPlayReceiverUIXPCServerCore == -1 && !_LogCategory_Initialize())
      {
        goto LABEL_115;
      }

      v48 = *(a1 + 152);
      v50 = Int64;
      v22 = "### Denying interruption of video from device 0x%llx for video from device 0x%llx\n";
LABEL_76:
      LogPrintF(&gLogCategory_AirPlayReceiverUIXPCServerCore, "OSStatus AirPlayReceiverUI_StartVideo(AirPlayReceiverUIRef, AirPlayReceiverMediaControlEventHandler, const void *, CFDictionaryRef, CFDictionaryRef *)", 33554482, v22, v48, v50, v51);
      goto LABEL_115;
    }

    if (gLogCategory_AirPlayReceiverUIXPCServerCore <= 50)
    {
      if (gLogCategory_AirPlayReceiverUIXPCServerCore != -1 || (v46 = _LogCategory_Initialize(), v24 = *(a1 + 160), v46))
      {
        LogPrintF(&gLogCategory_AirPlayReceiverUIXPCServerCore, "OSStatus AirPlayReceiverUI_StartVideo(AirPlayReceiverUIRef, AirPlayReceiverMediaControlEventHandler, const void *, CFDictionaryRef, CFDictionaryRef *)", 33554482, "*** Hijacking video session ID %u, device 0x%llx for video device 0x%llx\n", v24, *(a1 + 152), Int64);
        v24 = *(a1 + 160);
      }
    }

    _AirPlayReceiverUI_NotifyObserversF(a1, "stopVideo", "{%kO=%i%kO=%O}", @"sessionID", v24, @"hijacked", *MEMORY[0x277CBED28]);
  }

  v25 = *(a1 + 112);
  if (!v25 || *(a1 + 104) == Int64)
  {
    v26 = *(a1 + 160);
    if (!v26)
    {
      goto LABEL_89;
    }

    v27 = *(a1 + 152);
    if (v27 == Int64 || !*(a1 + 164))
    {
      goto LABEL_89;
    }

    v28 = gLogCategory_AirPlayReceiverUIXPCServerCore;
    if (!*(a1 + 56))
    {
      if (!v25)
      {
        if (gLogCategory_AirPlayReceiverUIXPCServerCore <= 50)
        {
          if (gLogCategory_AirPlayReceiverUIXPCServerCore == -1)
          {
            v47 = _LogCategory_Initialize();
            v26 = *(a1 + 160);
            if (!v47)
            {
              goto LABEL_123;
            }

            v27 = *(a1 + 152);
          }

          LogPrintF(&gLogCategory_AirPlayReceiverUIXPCServerCore, "OSStatus AirPlayReceiverUI_StartVideo(AirPlayReceiverUIRef, AirPlayReceiverMediaControlEventHandler, const void *, CFDictionaryRef, CFDictionaryRef *)", 33554482, "*** Hijacking music mode video session ID %u, device 0x%llx for music mode video device 0x%llx\n", v26, v27, Int64);
          v26 = *(a1 + 160);
        }

LABEL_123:
        _AirPlayReceiverUI_NotifyObserversF(a1, "stopVideo", "{%kO=%i%kO=%O}", @"sessionID", v26, @"hijacked", *MEMORY[0x277CBED28]);
        goto LABEL_89;
      }

      goto LABEL_77;
    }

    goto LABEL_65;
  }

  v28 = gLogCategory_AirPlayReceiverUIXPCServerCore;
  if (*(a1 + 56))
  {
LABEL_65:
    v21 = 200453;
    if (v28 > 50)
    {
      goto LABEL_115;
    }

    if (v28 == -1)
    {
      if (!_LogCategory_Initialize())
      {
        goto LABEL_115;
      }

      LODWORD(v25) = *(a1 + 112);
    }

    v29 = v25 == 0;
    v30 = 104;
    if (v29)
    {
      v30 = 152;
    }

    v31 = *(a1 + v30);
    v32 = "audio";
    if (v29)
    {
      v32 = "music mode video";
    }

    v50 = v32;
    v51 = Int64;
    v48 = v31;
    v22 = "### Denying interruption of audio from device 0x%llx for %s from device 0x%llx\n";
    goto LABEL_76;
  }

LABEL_77:
  if (v28 <= 50)
  {
    if (v28 != -1 || (v33 = _LogCategory_Initialize(), v25 = *(a1 + 112), v33))
    {
      LogPrintF(&gLogCategory_AirPlayReceiverUIXPCServerCore, "OSStatus AirPlayReceiverUI_StartVideo(AirPlayReceiverUIRef, AirPlayReceiverMediaControlEventHandler, const void *, CFDictionaryRef, CFDictionaryRef *)", 33554482, "*** Hijacking audio session ID %u, device 0x%llx for video device 0x%llx\n", v25, *(a1 + 104), Int64);
      v25 = *(a1 + 112);
    }
  }

  _AirPlayReceiverUI_NotifyObserversF(a1, "stopAudio", "{%kO=%i%kO=%O}", @"sessionID", v25, @"hijacked", *MEMORY[0x277CBED28]);
LABEL_89:
  *(a1 + 184) = a2;
  *(a1 + 192) = v52;
  *(a1 + 152) = Int64;
  v34 = *(a1 + 96);
  v35 = v34 + 1;
  *(a1 + 96) = v34 + 1;
  v55 = v34 + 1;
  if (v34 == -1)
  {
    *(a1 + 96) = 1;
    v55 = 1;
    v35 = 1;
  }

  *(a1 + 160) = v35;
  *(a1 + 164) = v15;
  v36 = *(a1 + 168);
  CFRetain(TypedValue);
  *(a1 + 168) = TypedValue;
  if (v36)
  {
    CFRelease(v36);
  }

  CFDictionarySetNumber();
  _AirPlayReceiverUI_NotifyObserversF(a1, "startingVideo", "{%kO=%O}", @"audioMode", *(a1 + 168));
  v37 = xpc_dictionary_create(0, 0, 0);
  xpc_dictionary_set_string(v37, "function", "startVideo");
  xpc_dictionary_set_cf_object();
  v21 = _AirPlayReceiverUI_SendMessageWithReplySync(a1, v37, &object);
  xpc_release(v37);
  if (v21)
  {
    APSLogErrorAt();
    goto LABEL_129;
  }

  v38 = xpc_dictionary_copy_cf_object();
  if (v38)
  {
    v39 = v38;
    v40 = CFDictionaryCreateMutableCopy(0, 0, v38);
    CFRelease(v39);
    if (!v40)
    {
      goto LABEL_128;
    }
  }

  else
  {
    Mutable = CFDictionaryCreateMutable(0, 0, MEMORY[0x277CBF138], MEMORY[0x277CBF150]);
    if (!Mutable)
    {
LABEL_128:
      APSLogErrorAt();
      v21 = 4294960596;
      goto LABEL_129;
    }

    v40 = Mutable;
  }

  CFDictionarySetNumber();
  if (v53)
  {
    *v53 = v40;
  }

  else
  {
    CFRelease(v40);
  }

  if (gLogCategory_AirPlayReceiverUIXPCServerCore <= 50 && (gLogCategory_AirPlayReceiverUIXPCServerCore != -1 || _LogCategory_Initialize()))
  {
    LogPrintF(&gLogCategory_AirPlayReceiverUIXPCServerCore, "OSStatus AirPlayReceiverUI_StartVideo(AirPlayReceiverUIRef, AirPlayReceiverMediaControlEventHandler, const void *, CFDictionaryRef, CFDictionaryRef *)", 33554482, "Started video session %u, device 0x%llx\n", v55, Int64);
  }

  v42 = CFDictionaryGetInt64();
  v43 = v42 != 0;
  if (*(a1 + 176) == v43)
  {
LABEL_107:
    v21 = 0;
    goto LABEL_115;
  }

  v44 = *(a1 + 48);
  if (v42)
  {
    for (; v44; v44 = *v44)
    {
      (v44[2])("startPlayingOverP2P", 0, v44[3]);
    }
  }

  else
  {
    for (; v44; v44 = *v44)
    {
      (v44[2])("stopPlayingOverP2P", 0, v44[3]);
    }
  }

  v21 = 0;
  *(a1 + 176) = v43;
LABEL_115:
  if (object)
  {
    xpc_release(object);
  }

  if (v11)
  {
    CFRelease(v11);
  }

  return v21;
}

uint64_t AirPlayReceiverUI_StopVideo(uint64_t a1, __CFString *a2)
{
  if (gLogCategory_AirPlayReceiverUIXPCServerCore <= 30 && (gLogCategory_AirPlayReceiverUIXPCServerCore != -1 || _LogCategory_Initialize()))
  {
    v4 = "\n";
    if (!a2)
    {
      v4 = " ";
    }

    v5 = @"<<no params>>";
    if (a2)
    {
      v5 = a2;
    }

    LogPrintF(&gLogCategory_AirPlayReceiverUIXPCServerCore, "OSStatus AirPlayReceiverUI_StopVideo(AirPlayReceiverUIRef, CFDictionaryRef)", 33554462, "Stopping video:%s%1@\n", v4, v5);
  }

  if (!a1)
  {
    APSLogErrorAt();
    return 4294960551;
  }

  if (!*(a1 + 40))
  {
    return 0;
  }

  if (a2)
  {
    Int64 = CFDictionaryGetInt64();
    v7 = CFDictionaryGetInt64();
  }

  else
  {
    Int64 = 0;
    v7 = 0;
  }

  v8 = *(a1 + 160);
  if (v7 != v8)
  {
    if (gLogCategory_AirPlayReceiverUIXPCServerCore <= 50)
    {
      if (gLogCategory_AirPlayReceiverUIXPCServerCore == -1)
      {
        if (!_LogCategory_Initialize())
        {
          return 0;
        }

        v8 = *(a1 + 160);
      }

      LogPrintF(&gLogCategory_AirPlayReceiverUIXPCServerCore, "OSStatus AirPlayReceiverUI_StopVideo(AirPlayReceiverUIRef, CFDictionaryRef)", 33554482, "Ignoring stop video with stale session ID %u, device 0x%llux (current session ID %u, device 0x%llx)\n", v7, Int64, v8, *(a1 + 152));
    }

    return 0;
  }

  for (i = *(a1 + 48); i; i = *i)
  {
    (i[2])("stoppingVideo", 0, i[3]);
  }

  v10 = !*(a1 + 112) && !*(a1 + 128) && *(a1 + 160) == 0;
  if (*(a1 + 144))
  {
    if (a2)
    {
      MutableCopy = CFDictionaryCreateMutableCopy(0, 0, a2);
    }

    else
    {
      MutableCopy = CFDictionaryCreateMutable(0, 0, MEMORY[0x277CBF138], MEMORY[0x277CBF150]);
    }

    a2 = MutableCopy;
    if (!MutableCopy)
    {
      APSLogErrorAt();
      return 4294960568;
    }

    CFDictionarySetValue(MutableCopy, @"closeAll", *MEMORY[0x277CBED28]);
    v12 = a2;
  }

  else
  {
    v12 = 0;
  }

  v13 = xpc_dictionary_create(0, 0, 0);
  xpc_dictionary_set_string(v13, "function", "stopVideo");
  if (a2)
  {
    xpc_dictionary_set_cf_object();
  }

  v14 = _AirPlayReceiverUI_SendMessageWithReplySync(a1, v13, 0);
  xpc_release(v13);
  if (v14)
  {
    APSLogErrorAt();
    if (!v12)
    {
      return v14;
    }

    goto LABEL_48;
  }

  if (*(a1 + 176))
  {
    for (j = *(a1 + 48); j; j = *j)
    {
      (j[2])("stopPlayingOverP2P", 0, j[3]);
    }

    *(a1 + 176) = 0;
  }

  if (gLogCategory_AirPlayReceiverUIXPCServerCore <= 50 && (gLogCategory_AirPlayReceiverUIXPCServerCore != -1 || _LogCategory_Initialize()))
  {
    LogPrintF(&gLogCategory_AirPlayReceiverUIXPCServerCore, "OSStatus AirPlayReceiverUI_StopVideo(AirPlayReceiverUIRef, CFDictionaryRef)", 33554482, "Stopped video session %u, device 0x%llx\n", v7, *(a1 + 152));
  }

  *(a1 + 152) = 0;
  *(a1 + 160) = 0;
  *(a1 + 164) = 0;
  if (!v10 && !*(a1 + 112) && !*(a1 + 128))
  {
    _AirPlayReceiverUI_ActiveSessionsStopped(a1);
  }

  if (v12)
  {
LABEL_48:
    CFRelease(v12);
  }

  return v14;
}

uint64_t AirPlayReceiverUI_EnsurePINVisible(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (!*(a1 + 40))
  {
    return 0;
  }

  if (!*(a1 + 56))
  {
    goto LABEL_13;
  }

  v6 = *(a1 + 112);
  if (v6)
  {
    if (*(a1 + 104) != a3)
    {
      goto LABEL_24;
    }

    if (!*(a1 + 128))
    {
      goto LABEL_11;
    }
  }

  else if (!*(a1 + 128))
  {
    if (!*(a1 + 160))
    {
      goto LABEL_13;
    }

    goto LABEL_11;
  }

  if (*(a1 + 120) != a3)
  {
    goto LABEL_24;
  }

LABEL_11:
  if (*(a1 + 160) && *(a1 + 152) != a3)
  {
LABEL_24:
    if (gLogCategory_AirPlayReceiverUIXPCServerCore <= 50)
    {
      if (gLogCategory_AirPlayReceiverUIXPCServerCore != -1)
      {
LABEL_26:
        v20 = 86;
        if (!*(a1 + 160))
        {
          v20 = 118;
        }

        v21 = 80;
        if (!*(a1 + 128))
        {
          v21 = 112;
        }

        v22 = v6 == 0;
        v23 = 65;
        if (v22)
        {
          v23 = 97;
        }

        LogPrintF(&gLogCategory_AirPlayReceiverUIXPCServerCore, "OSStatus AirPlayReceiverUI_EnsurePINVisible(AirPlayReceiverUIRef, const char *, uint64_t, const char *, size_t)", 33554482, "Rejecting PIN UI for device 0x%llx while session(s) are active (%c%c%c)\n", a3, v23, v21, v20);
        return 4294960575;
      }

      if (_LogCategory_Initialize())
      {
        v6 = *(a1 + 112);
        goto LABEL_26;
      }
    }

    return 4294960575;
  }

LABEL_13:
  Mutable = CFDictionaryCreateMutable(0, 0, MEMORY[0x277CBF138], MEMORY[0x277CBF150]);
  if (Mutable)
  {
    v8 = Mutable;
    CFDictionarySetCString();
    CFDictionarySetCString();
    v9 = mach_absolute_time();
    v10 = *(a1 + 88);
    v11 = SecondsToUpTicks();
    v12 = *(a1 + 72);
    CFRetain(v8);
    *(a1 + 72) = v8;
    if (v12)
    {
      CFRelease(v12);
    }

    v13 = *(a1 + 64);
    if (v13)
    {
      dispatch_source_cancel(*(a1 + 64));
      dispatch_release(v13);
      *(a1 + 64) = 0;
    }

    v14 = dispatch_source_create(MEMORY[0x277D85D38], 0, 0, MEMORY[0x277D85CD0]);
    *(a1 + 64) = v14;
    if (v14)
    {
      v15 = v9 - v10;
      dispatch_set_context(v14, a1);
      dispatch_source_set_event_handler_f(*(a1 + 64), _ShowPINTimerFired);
      v16 = *(a1 + 64);
      if (v15 >= v11)
      {
        v17 = 1000000000;
      }

      else
      {
        v17 = 3000000000;
      }

      v18 = dispatch_time(0, v17);
      dispatch_source_set_timer(v16, v18, 0x7FFFFFFFFFFFFFFFuLL, 0x3B9ACA00uLL);
      dispatch_resume(*(a1 + 64));
      v19 = 0;
    }

    else
    {
      APSLogErrorAt();
      v19 = 4294960596;
    }

    CFRelease(v8);
  }

  else
  {
    APSLogErrorAt();
    return 4294960568;
  }

  return v19;
}

void _ShowPINTimerFired(uint64_t a1)
{
  v2 = *(a1 + 64);
  if (v2)
  {
    dispatch_source_cancel(*(a1 + 64));
    dispatch_release(v2);
    *(a1 + 64) = 0;
  }

  v3 = *(a1 + 72);
  if (v3)
  {
    if (!AirPlayReceiverUI_Perform(a1, @"showPIN", v3, 0))
    {
      *(a1 + 80) = 1;
      *(a1 + 88) = mach_absolute_time();
    }

    CFRelease(*(a1 + 72));
    *(a1 + 72) = 0;
  }
}

uint64_t AirPlayReceiverUI_EnsurePINHidden(uint64_t a1)
{
  if (!*(a1 + 40))
  {
    return 0;
  }

  v2 = *(a1 + 64);
  if (v2)
  {
    dispatch_source_cancel(*(a1 + 64));
    dispatch_release(v2);
    *(a1 + 64) = 0;
  }

  if (!*(a1 + 80))
  {
    return 0;
  }

  *(a1 + 80) = 0;
  *(a1 + 88) = mach_absolute_time();

  return AirPlayReceiverUI_Perform(a1, @"hidePIN", 0, 0);
}

uint64_t AirPlayReceiverUI_UpdateStatus(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  bytes = 0;
  if (!*(a1 + 40))
  {
    return 0;
  }

  v9 = a2;
  v27 = 0;
  v10 = a2;
  if (a2 < gLogCategory_AirPlayReceiverUIVisualStatus || gLogCategory_AirPlayReceiverUIVisualStatus == -1 && !_LogCategory_Initialize())
  {
    v11 = 0;
    goto LABEL_24;
  }

  v27 = &a9;
  VASPrintF(&bytes, "%@", &a9);
  v13 = bytes;
  if (!bytes)
  {
    APSLogErrorAt();
    v11 = 4294960596;
    goto LABEL_24;
  }

  if (v10 >= gLogCategory_AirPlayReceiverUIVisualStatus)
  {
    if (gLogCategory_AirPlayReceiverUIVisualStatus == -1)
    {
      if (!_LogCategory_Initialize())
      {
        goto LABEL_11;
      }

      v13 = bytes;
    }

    LogPrintF(&gLogCategory_AirPlayReceiverUIVisualStatus, "OSStatus AirPlayReceiverUI_UpdateStatus(AirPlayReceiverUIRef, int32_t, const char *, ...)", v9 | 0x2000000u, "Visual Status: %{sline}\n", v13, -1);
  }

LABEL_11:
  Mutable = CFArrayCreateMutable(0, 0, MEMORY[0x277CBF128]);
  if (Mutable)
  {
    v15 = Mutable;
    v16 = bytes;
    v17 = *bytes;
    if (*bytes)
    {
      v18 = bytes;
      while (1)
      {
        while (v17 && v17 != 10)
        {
          v19 = *++v18;
          v17 = v19;
        }

        v20 = CFStringCreateWithBytes(0, v16, v18 - v16, 0x8000100u, 0);
        if (!v20)
        {
          break;
        }

        v21 = v20;
        CFArrayAppendValue(v15, v20);
        CFRelease(v21);
        if (v17)
        {
          v22 = *++v18;
          v17 = v22;
          v16 = v18;
          if (v22)
          {
            continue;
          }
        }

        goto LABEL_20;
      }
    }

    else
    {
LABEL_20:
      v23 = CFDictionaryCreateMutable(0, 0, MEMORY[0x277CBF138], MEMORY[0x277CBF150]);
      if (v23)
      {
        v24 = v23;
        CFDictionarySetValue(v23, @"text", v15);
        v11 = AirPlayReceiverUI_Perform(a1, @"showStatus", v24, 0);
        CFRelease(v24);
        if (v11)
        {
          APSLogErrorAt();
        }

        goto LABEL_23;
      }
    }

    APSLogErrorAt();
    v11 = 4294960568;
LABEL_23:
    CFRelease(v15);
    goto LABEL_24;
  }

  APSLogErrorAt();
  v11 = 4294960568;
LABEL_24:
  if (bytes)
  {
    free(bytes);
  }

  return v11;
}

uint64_t APReceiverUIControllerGetShared()
{
  if (APReceiverUIControllerGetShared_once[0] != -1)
  {
    dispatch_once(APReceiverUIControllerGetShared_once, &__block_literal_global_3265);
  }

  return APReceiverUIControllerGetShared_ui;
}

void __APReceiverUIControllerGetShared_block_invoke()
{
  if (AirPlayReceiverUI_GetShared_once != -1)
  {
    dispatch_once(&AirPlayReceiverUI_GetShared_once, &__block_literal_global_2889);
  }

  v0 = AirPlayReceiverUI_GetShared_ui;
  if (AirPlayReceiverUI_GetShared_ui)
  {
    if (APReceiverUIControllerGetClassID_once != -1)
    {
      dispatch_once(&APReceiverUIControllerGetClassID_once, &__block_literal_global_3701);
    }

    if (CMDerivedObjectCreate())
    {
      APSLogErrorAt();
    }

    else
    {
      *CMBaseObjectGetDerivedStorage() = v0;
      v1 = malloc_type_calloc(1uLL, 0x20uLL, 0xB004060A01B80uLL);
      if (v1)
      {
        v2 = v1;
        v3 = strdup("APReceiverUIControllerShared");
        v2[1] = v3;
        if (v3)
        {
          v2[2] = sharedUI_HandleUIEvent;
          v2[3] = 0;
          *v2 = *(v0 + 48);
          *(v0 + 48) = v2;
        }

        else
        {
          APSLogErrorAt();
          free(v2);
        }
      }

      else
      {
        APSLogErrorAt();
      }

      if (gLogCategory_AirPlayReceiverUIXPCServerCore <= 50 && (gLogCategory_AirPlayReceiverUIXPCServerCore != -1 || _LogCategory_Initialize()))
      {
        LogPrintF(&gLogCategory_AirPlayReceiverUIXPCServerCore, "APReceiverUIControllerRef sharedUI_Create(void)", 33554482, "Created UIControllerShared\n");
      }
    }
  }

  else if (gLogCategory_AirPlayReceiverUIXPCServerCore <= 50 && (gLogCategory_AirPlayReceiverUIXPCServerCore != -1 || _LogCategory_Initialize()))
  {
    LogPrintF(&gLogCategory_AirPlayReceiverUIXPCServerCore, "APReceiverUIControllerRef sharedUI_Create(void)", 33554482, "No shared UI\n");
  }

  APReceiverUIControllerGetShared_ui = 0;
}

uint64_t sharedUI_HandleUIEvent(char *cStr, uint64_t a2, uint64_t a3)
{
  v3 = CFStringCreateWithCString(*MEMORY[0x277CBECE8], cStr, 0x8000100u);
  if (gLogCategory_AirPlayReceiverUIXPCServerCore <= 50 && (gLogCategory_AirPlayReceiverUIXPCServerCore != -1 || _LogCategory_Initialize()))
  {
    LogPrintF(&gLogCategory_AirPlayReceiverUIXPCServerCore, "OSStatus sharedUI_HandleUIEvent(const char *, CFDictionaryRef, void *)", 33554482, "UIControllerShared: posting '%@' notification\n", v3);
  }

  CMNotificationCenterGetDefaultLocalCenter();
  CMNotificationCenterPostNotification();
  if (v3)
  {
    CFRelease(v3);
  }

  return 0;
}

uint64_t sharedUI_SetPropertyWithQualifier(uint64_t a1, const __CFString *a2, uint64_t a3, const void *a4)
{
  v11 = 0;
  v12 = &v11;
  v13 = 0x2000000000;
  v14 = 0;
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  if (pthread_main_np())
  {
    v8 = AirPlayReceiverUI_SetProperty(*DerivedStorage, a2, a3, a4);
    *(v12 + 6) = v8;
  }

  else
  {
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 0x40000000;
    block[2] = __sharedUI_SetPropertyWithQualifier_block_invoke;
    block[3] = &unk_278C602E0;
    block[4] = &v11;
    block[5] = DerivedStorage;
    block[6] = a2;
    block[7] = a3;
    block[8] = a4;
    dispatch_sync(MEMORY[0x277D85CD0], block);
    v8 = *(v12 + 6);
  }

  _Block_object_dispose(&v11, 8);
  return v8;
}

uint64_t sharedUI_CopyPropertyForQualifier(uint64_t a1, uint64_t a2, uint64_t a3, NSObject ***a4)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  v11 = 0;
  v12 = &v11;
  v13 = 0x2000000000;
  v14 = 0;
  if (pthread_main_np())
  {
    *a4 = AirPlayReceiverUI_CopyProperty(*DerivedStorage, a2, a3, v12 + 6);
  }

  else
  {
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 0x40000000;
    block[2] = __sharedUI_CopyPropertyForQualifier_block_invoke;
    block[3] = &unk_278C602B8;
    block[6] = DerivedStorage;
    block[7] = a2;
    block[8] = a3;
    block[4] = &v11;
    block[5] = a4;
    dispatch_sync(MEMORY[0x277D85CD0], block);
  }

  v8 = v12[6];
  _Block_object_dispose(&v11, 8);
  return v8;
}

uint64_t sharedUI_ControlVideoPlaybackV1(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t *a4)
{
  v11 = 0;
  v12 = &v11;
  v13 = 0x2000000000;
  v14 = 0;
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  if (pthread_main_np())
  {
    v8 = AirPlayReceiverUI_Perform(*DerivedStorage, a2, a3, a4);
    *(v12 + 6) = v8;
  }

  else
  {
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 0x40000000;
    block[2] = __sharedUI_ControlVideoPlaybackV1_block_invoke;
    block[3] = &unk_278C60290;
    block[4] = &v11;
    block[5] = DerivedStorage;
    block[6] = a2;
    block[7] = a3;
    block[8] = a4;
    dispatch_sync(MEMORY[0x277D85CD0], block);
    v8 = *(v12 + 6);
  }

  _Block_object_dispose(&v11, 8);
  return v8;
}

uint64_t sharedUI_StopVideoPlaybackV1(uint64_t a1, __CFString *a2)
{
  v7 = 0;
  v8 = &v7;
  v9 = 0x2000000000;
  v10 = 0;
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  if (pthread_main_np())
  {
    v4 = AirPlayReceiverUI_StopVideo(*DerivedStorage, a2);
    *(v8 + 6) = v4;
  }

  else
  {
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 0x40000000;
    block[2] = __sharedUI_StopVideoPlaybackV1_block_invoke;
    block[3] = &unk_278C60268;
    block[4] = &v7;
    block[5] = DerivedStorage;
    block[6] = a2;
    dispatch_sync(MEMORY[0x277D85CD0], block);
    v4 = *(v8 + 6);
  }

  _Block_object_dispose(&v7, 8);
  return v4;
}

uint64_t sharedUI_StartVideoPlaybackV1(uint64_t a1, uint64_t a2, uint64_t a3, const __CFDictionary *a4, CFMutableDictionaryRef *a5)
{
  v13 = 0;
  v14 = &v13;
  v15 = 0x2000000000;
  v16 = 0;
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  if (pthread_main_np())
  {
    started = AirPlayReceiverUI_StartVideo(*DerivedStorage, a2, a3, a4, a5);
    *(v14 + 6) = started;
  }

  else
  {
    v12[0] = MEMORY[0x277D85DD0];
    v12[1] = 0x40000000;
    v12[2] = __sharedUI_StartVideoPlaybackV1_block_invoke;
    v12[3] = &unk_278C60240;
    v12[4] = &v13;
    v12[5] = DerivedStorage;
    v12[6] = a2;
    v12[7] = a3;
    v12[8] = a4;
    v12[9] = a5;
    dispatch_sync(MEMORY[0x277D85CD0], v12);
    started = *(v14 + 6);
  }

  _Block_object_dispose(&v13, 8);
  return started;
}

uint64_t sharedUI_StopSession(uint64_t a1, __CFString *a2)
{
  v9 = 0;
  v10 = &v9;
  v11 = 0x2000000000;
  v12 = 0;
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  if (a2)
  {
    v4 = DerivedStorage;
    if (pthread_main_np())
    {
      v5 = AirPlayReceiverUI_StopAudio(*v4, a2);
      *(v10 + 6) = v5;
    }

    else
    {
      block[0] = MEMORY[0x277D85DD0];
      block[1] = 0x40000000;
      block[2] = __sharedUI_StopSession_block_invoke;
      block[3] = &unk_278C60218;
      block[4] = &v9;
      block[5] = v4;
      block[6] = a2;
      dispatch_sync(MEMORY[0x277D85CD0], block);
    }
  }

  v6 = *(v10 + 6);
  _Block_object_dispose(&v9, 8);
  return v6;
}

uint64_t sharedUI_StartSession(uint64_t a1, __CFString *a2, CFMutableDictionaryRef *a3)
{
  v11 = 0;
  v12 = &v11;
  v13 = 0x2000000000;
  v14 = 0;
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  if (a2)
  {
    v6 = DerivedStorage;
    if (pthread_main_np())
    {
      started = AirPlayReceiverUI_StartAudio(*v6, a2, a3);
      *(v12 + 6) = started;
    }

    else
    {
      v10[0] = MEMORY[0x277D85DD0];
      v10[1] = 0x40000000;
      v10[2] = __sharedUI_StartSession_block_invoke;
      v10[3] = &unk_278C601F0;
      v10[4] = &v11;
      v10[5] = v6;
      v10[6] = a2;
      v10[7] = a3;
      dispatch_sync(MEMORY[0x277D85CD0], v10);
    }
  }

  v8 = *(v12 + 6);
  _Block_object_dispose(&v11, 8);
  return v8;
}

uint64_t sharedUI_StopScreenPresentation(uint64_t a1, const __CFDictionary *a2)
{
  v11 = 0;
  v12 = &v11;
  v13 = 0x2000000000;
  v14 = 0;
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  v4 = *MEMORY[0x277CBECE8];
  if (a2)
  {
    MutableCopy = CFDictionaryCreateMutableCopy(v4, 0, a2);
  }

  else
  {
    MutableCopy = CFDictionaryCreateMutable(v4, 0, MEMORY[0x277CBF138], MEMORY[0x277CBF150]);
  }

  v6 = MutableCopy;
  CFDictionarySetValue(MutableCopy, @"presentationType", @"mirror");
  if (gLogCategory_AirPlayReceiverUIXPCServerCore <= 30 && (gLogCategory_AirPlayReceiverUIXPCServerCore != -1 || _LogCategory_Initialize()))
  {
    LogPrintF(&gLogCategory_AirPlayReceiverUIXPCServerCore, "OSStatus sharedUI_StopScreenPresentation(APReceiverUIControllerRef, CFDictionaryRef)", 30, "UIControllerShared: stopping screen presentation with params: %@\n", v6);
  }

  if (!pthread_main_np())
  {
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 0x40000000;
    block[2] = __sharedUI_StopScreenPresentation_block_invoke;
    block[3] = &unk_278C601C8;
    block[4] = &v11;
    block[5] = DerivedStorage;
    block[6] = v6;
    dispatch_sync(MEMORY[0x277D85CD0], block);
    if (!v6)
    {
      goto LABEL_11;
    }

    goto LABEL_10;
  }

  v7 = AirPlayReceiverUI_StopPresentation(*DerivedStorage, v6);
  *(v12 + 6) = v7;
  if (v6)
  {
LABEL_10:
    CFRelease(v6);
  }

LABEL_11:
  v8 = *(v12 + 6);
  _Block_object_dispose(&v11, 8);
  return v8;
}

uint64_t sharedUI_StartScreenPresentation(uint64_t a1, const __CFDictionary *a2, __CFDictionary **a3)
{
  v14 = 0;
  v15 = &v14;
  v16 = 0x2000000000;
  v17 = 0;
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  v6 = *MEMORY[0x277CBECE8];
  if (a2)
  {
    MutableCopy = CFDictionaryCreateMutableCopy(v6, 0, a2);
  }

  else
  {
    MutableCopy = CFDictionaryCreateMutable(v6, 0, MEMORY[0x277CBF138], MEMORY[0x277CBF150]);
  }

  v8 = MutableCopy;
  v9 = *MEMORY[0x277CBED28];
  CFDictionarySetValue(MutableCopy, @"hasAudio", *MEMORY[0x277CBED28]);
  CFDictionarySetValue(v8, @"presentationType", @"mirror");
  CFDictionarySetValue(v8, @"hijackAware", v9);
  if (gLogCategory_AirPlayReceiverUIXPCServerCore <= 30 && (gLogCategory_AirPlayReceiverUIXPCServerCore != -1 || _LogCategory_Initialize()))
  {
    LogPrintF(&gLogCategory_AirPlayReceiverUIXPCServerCore, "OSStatus sharedUI_StartScreenPresentation(APReceiverUIControllerRef, CFDictionaryRef, CFDictionaryRef *)", 30, "UIControllerShared: starting screen presentation with params: %@\n", v8);
  }

  if (!pthread_main_np())
  {
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 0x40000000;
    block[2] = __sharedUI_StartScreenPresentation_block_invoke;
    block[3] = &unk_278C601A0;
    block[4] = &v14;
    block[5] = DerivedStorage;
    block[6] = v8;
    block[7] = a3;
    dispatch_sync(MEMORY[0x277D85CD0], block);
    if (!v8)
    {
      goto LABEL_11;
    }

    goto LABEL_10;
  }

  started = AirPlayReceiverUI_StartPresentation(*DerivedStorage, v8, a3);
  *(v15 + 6) = started;
  if (v8)
  {
LABEL_10:
    CFRelease(v8);
  }

LABEL_11:
  v11 = *(v15 + 6);
  _Block_object_dispose(&v14, 8);
  return v11;
}

uint64_t sharedUI_ShowMessage(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v16 = 0;
  v17 = &v16;
  v18 = 0x2000000000;
  v19 = 0;
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  if (gLogCategory_AirPlayReceiverUIXPCServerCore <= a2 && (gLogCategory_AirPlayReceiverUIXPCServerCore != -1 || _LogCategory_Initialize()))
  {
    LogPrintF(&gLogCategory_AirPlayReceiverUIXPCServerCore, "OSStatus sharedUI_ShowMessage(APReceiverUIControllerRef, int32_t, CFStringRef)", a2, "UIController: %@\n", a3);
  }

  if (pthread_main_np())
  {
    updated = AirPlayReceiverUI_UpdateStatus(*DerivedStorage, a2, v6, v7, v8, v9, v10, v11, a3);
    *(v17 + 6) = updated;
  }

  else
  {
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 0x40000000;
    block[2] = __sharedUI_ShowMessage_block_invoke;
    block[3] = &unk_278C60178;
    block[4] = &v16;
    block[5] = DerivedStorage;
    v15 = a2;
    block[6] = a3;
    dispatch_sync(MEMORY[0x277D85CD0], block);
    updated = *(v17 + 6);
  }

  _Block_object_dispose(&v16, 8);
  return updated;
}

uint64_t sharedUI_HidePIN(uint64_t a1)
{
  v5 = 0;
  v6 = &v5;
  v7 = 0x2000000000;
  v8 = 0;
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  if (gLogCategory_AirPlayReceiverUIXPCServerCore <= 30 && (gLogCategory_AirPlayReceiverUIXPCServerCore != -1 || _LogCategory_Initialize()))
  {
    LogPrintF(&gLogCategory_AirPlayReceiverUIXPCServerCore, "OSStatus sharedUI_HidePIN(APReceiverUIControllerRef)", 33554462, "UIControllerShared: hide PIN\n");
  }

  if (pthread_main_np())
  {
    v2 = AirPlayReceiverUI_EnsurePINHidden(*DerivedStorage);
    *(v6 + 6) = v2;
  }

  else
  {
    v4[0] = MEMORY[0x277D85DD0];
    v4[1] = 0x40000000;
    v4[2] = __sharedUI_HidePIN_block_invoke;
    v4[3] = &unk_278C60150;
    v4[4] = &v5;
    v4[5] = DerivedStorage;
    dispatch_sync(MEMORY[0x277D85CD0], v4);
    v2 = *(v6 + 6);
  }

  _Block_object_dispose(&v5, 8);
  return v2;
}

uint64_t sharedUI_ShowPIN(uint64_t a1, const char *a2, uint64_t a3, const char *a4)
{
  v11 = 0;
  v12 = &v11;
  v13 = 0x2000000000;
  v14 = 0;
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  if (gLogCategory_AirPlayReceiverUIXPCServerCore <= 30 && (gLogCategory_AirPlayReceiverUIXPCServerCore != -1 || _LogCategory_Initialize()))
  {
    LogPrintF(&gLogCategory_AirPlayReceiverUIXPCServerCore, "OSStatus sharedUI_ShowPIN(APReceiverUIControllerRef, const char *, uint64_t, const char *)", 30, "UIControllerShared: show PIN '%s' for client '%s'\n", a2, a4);
  }

  if (pthread_main_np())
  {
    v8 = AirPlayReceiverUI_EnsurePINVisible(*DerivedStorage, a2, a3, a4);
    *(v12 + 6) = v8;
  }

  else
  {
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 0x40000000;
    block[2] = __sharedUI_ShowPIN_block_invoke;
    block[3] = &unk_278C60128;
    block[4] = &v11;
    block[5] = DerivedStorage;
    block[6] = a2;
    block[7] = a3;
    block[8] = a4;
    dispatch_sync(MEMORY[0x277D85CD0], block);
    v8 = *(v12 + 6);
  }

  _Block_object_dispose(&v11, 8);
  return v8;
}

uint64_t sharedUI_SetProperty(uint64_t a1, const __CFString *a2, const void *a3)
{
  v18 = 0;
  v19 = &v18;
  v20 = 0x2000000000;
  v21 = 0;
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  if (gLogCategory_AirPlayReceiverUIXPCServerCore <= 30 && (gLogCategory_AirPlayReceiverUIXPCServerCore != -1 || _LogCategory_Initialize()))
  {
    LogPrintF(&gLogCategory_AirPlayReceiverUIXPCServerCore, "OSStatus sharedUI_SetProperty(CMBaseObjectRef, CFStringRef, CFTypeRef)", 33554462, "UIControllerShared: set propertyKey: '%@'\n", a2);
  }

  if (!CFEqual(a2, @"ClientName") && !CFEqual(a2, @"IsWiredLink") && !CFEqual(a2, @"IsP2PWiFi") && !CFEqual(a2, @"SessionReceiverAddress"))
  {
    if (CFEqual(a2, @"AudioMetadata"))
    {
      if (pthread_main_np())
      {
        updated = AirPlayReceiverUI_UpdateAudioMetaData(*DerivedStorage, a3);
LABEL_23:
        *(v19 + 6) = updated;
        goto LABEL_13;
      }

      v17[0] = MEMORY[0x277D85DD0];
      v17[1] = 0x40000000;
      v17[2] = __sharedUI_SetProperty_block_invoke;
      v17[3] = &unk_278C600B0;
      v17[4] = &v18;
      v17[5] = DerivedStorage;
      v17[6] = a3;
      v13 = MEMORY[0x277D85CD0];
      v14 = v17;
    }

    else if (CFEqual(a2, @"AudioProgress"))
    {
      CFDictionaryGetDouble();
      v10 = v9;
      CFDictionaryGetDouble();
      v12 = v11;
      if (pthread_main_np())
      {
        updated = AirPlayReceiverUI_UpdateAudioProgress(*DerivedStorage, v10, v12);
        goto LABEL_23;
      }

      v16[0] = MEMORY[0x277D85DD0];
      v16[1] = 0x40000000;
      v16[2] = __sharedUI_SetProperty_block_invoke_2;
      v16[3] = &unk_278C600D8;
      v16[4] = &v18;
      v16[5] = DerivedStorage;
      *&v16[6] = v10;
      *&v16[7] = v12;
      v13 = MEMORY[0x277D85CD0];
      v14 = v16;
    }

    else
    {
      if (pthread_main_np())
      {
        updated = AirPlayReceiverUI_SetProperty(*DerivedStorage, a2, 0, a3);
        goto LABEL_23;
      }

      block[0] = MEMORY[0x277D85DD0];
      block[1] = 0x40000000;
      block[2] = __sharedUI_SetProperty_block_invoke_3;
      block[3] = &unk_278C60100;
      block[4] = &v18;
      block[5] = DerivedStorage;
      block[6] = a2;
      block[7] = a3;
      v13 = MEMORY[0x277D85CD0];
      v14 = block;
    }

    dispatch_sync(v13, v14);
    goto LABEL_13;
  }

  if (gLogCategory_AirPlayReceiverUIXPCServerCore <= 30 && (gLogCategory_AirPlayReceiverUIXPCServerCore != -1 || _LogCategory_Initialize()))
  {
    LogPrintF(&gLogCategory_AirPlayReceiverUIXPCServerCore, "OSStatus sharedUI_SetProperty(CMBaseObjectRef, CFStringRef, CFTypeRef)", 30, "UIControllerShared: set '%@' to '%@'\n", a2, a3);
  }

LABEL_13:
  v6 = *(v19 + 6);
  _Block_object_dispose(&v18, 8);
  return v6;
}

uint64_t sharedUI_CopyProperty(uint64_t a1, const void *a2, uint64_t a3, void *a4)
{
  v13 = 0;
  v14 = &v13;
  v15 = 0x2000000000;
  v16 = 0;
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  if (gLogCategory_AirPlayReceiverUIXPCServerCore <= 30 && (gLogCategory_AirPlayReceiverUIXPCServerCore != -1 || _LogCategory_Initialize()))
  {
    LogPrintF(&gLogCategory_AirPlayReceiverUIXPCServerCore, "OSStatus sharedUI_CopyProperty(CMBaseObjectRef, CFStringRef, CFAllocatorRef, void *)", 33554462, "UIControllerShared: copy propertyKey: '%@'\n", a2);
  }

  if (CFEqual(a2, @"SBufConsumer"))
  {
    *(v14 + 6) = -12784;
  }

  else
  {
    if (CFEqual(a2, @"HasActiveSession"))
    {
      v7 = *DerivedStorage;
      if (*(*DerivedStorage + 112))
      {
        v8 = MEMORY[0x277CBED28];
      }

      else
      {
        v8 = MEMORY[0x277CBED28];
        if (!*(v7 + 128) && !*(v7 + 160))
        {
          v8 = MEMORY[0x277CBED10];
        }
      }

      v9 = CFRetain(*v8);
    }

    else
    {
      if (!pthread_main_np())
      {
        block[0] = MEMORY[0x277D85DD0];
        block[1] = 0x40000000;
        block[2] = __sharedUI_CopyProperty_block_invoke;
        block[3] = &unk_278C60088;
        block[6] = DerivedStorage;
        block[7] = a2;
        block[4] = &v13;
        block[5] = a4;
        dispatch_sync(MEMORY[0x277D85CD0], block);
        goto LABEL_17;
      }

      v9 = AirPlayReceiverUI_CopyProperty(*DerivedStorage, a2, 0, v14 + 6);
    }

    *a4 = v9;
  }

LABEL_17:
  v10 = *(v14 + 6);
  _Block_object_dispose(&v13, 8);
  return v10;
}

void sharedUI_Finalize()
{
  if (gLogCategory_AirPlayReceiverUIXPCServerCore > 100 || gLogCategory_AirPlayReceiverUIXPCServerCore == -1 && !_LogCategory_Initialize())
  {
    __break(1u);
  }

  LogPrintF(&gLogCategory_AirPlayReceiverUIXPCServerCore, "void sharedUI_Finalize(CMBaseObjectRef)", 33554532, "### Shared APReceiverUIController object was overreleased!\n");
  __break(1u);
}

void rcsSenderUIEventsChannel_handleMediaDataControlFailure(uint64_t a1, uint64_t a2, const void *a3)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  if (gLogCategory_APReceiverRemoteControlSessionSenderUIEventsChannel <= 90 && (gLogCategory_APReceiverRemoteControlSessionSenderUIEventsChannel != -1 || _LogCategory_Initialize()))
  {
    LogPrintF(&gLogCategory_APReceiverRemoteControlSessionSenderUIEventsChannel, "void rcsSenderUIEventsChannel_handleMediaDataControlFailure(APMediaDataControlServerRef, OSStatus, CFTypeRef)", 33554522, "### [%{ptr}] MediaDataControlServer [%{ptr}] failed with error %#m\n", a3, a1, a2);
  }

  CFRetain(a3);
  v7 = *(DerivedStorage + 64);
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 0x40000000;
  block[2] = __rcsSenderUIEventsChannel_handleMediaDataControlFailure_block_invoke;
  block[3] = &__block_descriptor_tmp_29_3311;
  block[4] = a3;
  v9 = a2;
  dispatch_async(v7, block);
}

void __rcsSenderUIEventsChannel_handleMediaDataControlFailure_block_invoke(uint64_t a1)
{
  rcsSenderUIEventsChannel_callDelegateHandleFailed(*(a1 + 32), *(a1 + 40));
  v2 = *(a1 + 32);

  CFRelease(v2);
}

void rcsSenderUIEventsChannel_callDelegateHandleFailed(uint64_t a1, uint64_t a2)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  if (!*(DerivedStorage + 40))
  {
    return;
  }

  v5 = DerivedStorage;
  if (*(DerivedStorage + 48))
  {
    v6 = FigCFWeakReferenceHolderCopyReferencedObject();
    if (!v6)
    {
      if (gLogCategory_APReceiverRemoteControlSessionSenderUIEventsChannel <= 90 && (gLogCategory_APReceiverRemoteControlSessionSenderUIEventsChannel != -1 || _LogCategory_Initialize()))
      {
        LogPrintF(&gLogCategory_APReceiverRemoteControlSessionSenderUIEventsChannel, "void rcsSenderUIEventsChannel_callDelegateHandleFailed(APReceiverRemoteControlSessionRef, OSStatus)", 33554522, "[%{ptr}] %###s weakDelegateContext is not NULL, but delegateContext is NULL.\n", a1, "void rcsSenderUIEventsChannel_callDelegateHandleFailed(APReceiverRemoteControlSessionRef, OSStatus)");
      }

      return;
    }
  }

  else
  {
    v6 = 0;
  }

  if (gLogCategory_APReceiverRemoteControlSessionSenderUIEventsChannel <= 50 && (gLogCategory_APReceiverRemoteControlSessionSenderUIEventsChannel != -1 || _LogCategory_Initialize()))
  {
    LogPrintF(&gLogCategory_APReceiverRemoteControlSessionSenderUIEventsChannel, "void rcsSenderUIEventsChannel_callDelegateHandleFailed(APReceiverRemoteControlSessionRef, OSStatus)", 33554482, "[%{ptr}] Calling delegate handleFailed for %#m.\n", a1, a2);
  }

  (*(v5 + 40))(v6, a1, a2);
  if (v6)
  {

    CFRelease(v6);
  }
}

uint64_t rcsSenderUIEventsChannel_handleMediaDataControlRequest(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  if (gLogCategory_APReceiverRemoteControlSessionSenderUIEventsChannel <= 30 && (gLogCategory_APReceiverRemoteControlSessionSenderUIEventsChannel != -1 || _LogCategory_Initialize()))
  {
    LogPrintF(&gLogCategory_APReceiverRemoteControlSessionSenderUIEventsChannel, "void rcsSenderUIEventsChannel_handleMediaDataControlRequest(APMediaDataControlServerRef, CFNumberRef, APMediaDataControlMessageType, uint64_t, CFDictionaryRef, CFTypeRef)", 33554462, "[%{ptr}] Received message - messageType: %'C, groupID: %llu, replyToken: %@, message: %1.64@\n", a6, a3, a4, a2, a5);
  }

  v12 = *(*(CMBaseObjectGetVTable() + 16) + 16);
  if (v12)
  {
    v13 = v12(a6, a5);
    if (!v13)
    {
      goto LABEL_13;
    }
  }

  else
  {
    v13 = 4294954514;
  }

  if (gLogCategory_APReceiverRemoteControlSessionSenderUIEventsChannel <= 90 && (gLogCategory_APReceiverRemoteControlSessionSenderUIEventsChannel != -1 || _LogCategory_Initialize()))
  {
    LogPrintF(&gLogCategory_APReceiverRemoteControlSessionSenderUIEventsChannel, "void rcsSenderUIEventsChannel_handleMediaDataControlRequest(APMediaDataControlServerRef, CFNumberRef, APMediaDataControlMessageType, uint64_t, CFDictionaryRef, CFTypeRef)", 33554522, "### [%{ptr}] Failed to process message with error: %d\n", a6, v13);
  }

LABEL_13:

  return APMediaDataControlServerSendResponse(a1, a2, a4, 0, v13);
}

uint64_t rcsSenderUIEventsChannel_SendOutgoingMessage(const void *a1, const void *a2)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  FigSimpleMutexLock();
  if (!*(DerivedStorage + 88))
  {
    APSLogErrorAt();
    v9 = 4294960587;
    goto LABEL_4;
  }

  v12 = 0;
  v13 = &v12;
  v14 = 0x2000000000;
  v15 = 0;
  v5 = CMBaseObjectGetDerivedStorage();
  if (!*(v5 + 88))
  {
    APSLogErrorAt();
    v9 = 4294960587;
    *(v13 + 6) = -6709;
    _Block_object_dispose(&v12, 8);
    goto LABEL_7;
  }

  v6 = v5;
  v7 = *(v5 + 104) + 1;
  *(v5 + 104) = v7;
  CFRetain(a1);
  CFRetain(a2);
  v8 = *(v6 + 64);
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 0x40000000;
  block[2] = __rcsSenderUIEventsChannel_sendOutgoingMessageInternal_block_invoke;
  block[3] = &unk_278C60328;
  block[6] = v6;
  block[7] = v7;
  block[8] = a2;
  block[4] = &v12;
  block[5] = a1;
  dispatch_async(v8, block);
  v9 = *(v13 + 6);
  _Block_object_dispose(&v12, 8);
  if (v9)
  {
LABEL_7:
    APSLogErrorAt();
  }

LABEL_4:
  FigSimpleMutexUnlock();
  return v9;
}

void __rcsSenderUIEventsChannel_sendOutgoingMessageInternal_block_invoke(void *a1)
{
  if (gLogCategory_APReceiverRemoteControlSessionSenderUIEventsChannel <= 40 && (gLogCategory_APReceiverRemoteControlSessionSenderUIEventsChannel != -1 || _LogCategory_Initialize()))
  {
    LogPrintF(&gLogCategory_APReceiverRemoteControlSessionSenderUIEventsChannel, "OSStatus rcsSenderUIEventsChannel_sendOutgoingMessageInternal(APReceiverRemoteControlSessionRef, CFDictionaryRef)_block_invoke", 33554472, "[%{ptr}] Sending outgoing message with socket [%{ptr}] (message #%llu): %.64@\n", a1[5], *(a1[6] + 72), a1[7], a1[8]);
  }

  v2 = *(a1[6] + 72);
  v3 = a1[8];
  v4 = dispatch_time(0, 3000000000);
  *(*(a1[4] + 8) + 24) = APMediaDataControlServerSendRequestSync(v2, v3, v4);
  if (*(*(a1[4] + 8) + 24))
  {
    APSLogErrorAt();
    v6 = a1[4];
    v7 = *(*(v6 + 8) + 24);
    if (v7)
    {
      if (gLogCategory_APReceiverRemoteControlSessionSenderUIEventsChannel <= 90)
      {
        if (gLogCategory_APReceiverRemoteControlSessionSenderUIEventsChannel == -1)
        {
          v8 = _LogCategory_Initialize();
          v6 = a1[4];
          if (!v8)
          {
            goto LABEL_14;
          }

          v7 = *(*(v6 + 8) + 24);
        }

        LogPrintF(&gLogCategory_APReceiverRemoteControlSessionSenderUIEventsChannel, "OSStatus rcsSenderUIEventsChannel_sendOutgoingMessageInternal(APReceiverRemoteControlSessionRef, CFDictionaryRef)_block_invoke", 33554522, "### [%{ptr}] Failed to send outgoing message with socket due to err: %#m (message #%llu)\n", a1[5], v7, a1[7]);
        v6 = a1[4];
      }

LABEL_14:
      rcsSenderUIEventsChannel_callDelegateHandleFailed(a1[5], *(*(v6 + 8) + 24));
    }
  }

  CFRelease(a1[5]);
  v5 = a1[8];

  CFRelease(v5);
}

uint64_t rcsSenderUIEventsChannel_HandleIncomingMessage(uint64_t a1, const __CFDictionary *a2)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  FigSimpleMutexLock();
  if (!*(DerivedStorage + 88))
  {
    APSLogErrorAt();
    v10 = 4294960587;
    goto LABEL_10;
  }

  if (!a2)
  {
    APSLogErrorAt();
LABEL_23:
    v10 = 4294960591;
    goto LABEL_10;
  }

  ++*(DerivedStorage + 96);
  Value = CFDictionaryGetValue(a2, @"params");
  if (!Value)
  {
    if (gLogCategory_APReceiverRemoteControlSessionSenderUIEventsChannel <= 90 && (gLogCategory_APReceiverRemoteControlSessionSenderUIEventsChannel != -1 || _LogCategory_Initialize()))
    {
      LogPrintF(&gLogCategory_APReceiverRemoteControlSessionSenderUIEventsChannel, "OSStatus rcsSenderUIEventsChannel_HandleIncomingMessage(APReceiverRemoteControlSessionRef, CFDictionaryRef)", 33554522, "### [%{ptr}] Params not found in message #%llu\n", a1, *(DerivedStorage + 96));
    }

    goto LABEL_23;
  }

  v6 = CFDictionaryGetValue(Value, @"data");
  if (!v6)
  {
    if (gLogCategory_APReceiverRemoteControlSessionSenderUIEventsChannel <= 90 && (gLogCategory_APReceiverRemoteControlSessionSenderUIEventsChannel != -1 || _LogCategory_Initialize()))
    {
      LogPrintF(&gLogCategory_APReceiverRemoteControlSessionSenderUIEventsChannel, "OSStatus rcsSenderUIEventsChannel_HandleIncomingMessage(APReceiverRemoteControlSessionRef, CFDictionaryRef)", 33554522, "### [%{ptr}] Data not found in params for message #%llu\n", a1, *(DerivedStorage + 96));
    }

    goto LABEL_23;
  }

  v7 = v6;
  if (gLogCategory_APReceiverRemoteControlSessionSenderUIEventsChannel <= 30 && (gLogCategory_APReceiverRemoteControlSessionSenderUIEventsChannel != -1 || _LogCategory_Initialize()))
  {
    Length = CFDataGetLength(v7);
    LogPrintF(&gLogCategory_APReceiverRemoteControlSessionSenderUIEventsChannel, "OSStatus rcsSenderUIEventsChannel_HandleIncomingMessage(APReceiverRemoteControlSessionRef, CFDictionaryRef)", 33554462, "[%{ptr}] Received incoming message %d bytes (message #%llu)\n", a1, Length, *(DerivedStorage + 96));
  }

  CFRetain(v7);
  v9 = *(DerivedStorage + 56);
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 0x40000000;
  block[2] = __rcsSenderUIEventsChannel_HandleIncomingMessage_block_invoke;
  block[3] = &__block_descriptor_tmp_3329;
  block[4] = DerivedStorage;
  block[5] = v7;
  dispatch_async(v9, block);
  v10 = 0;
LABEL_10:
  FigSimpleMutexUnlock();
  return v10;
}

uint64_t rcsSenderUIEventsChannel_Start(uint64_t a1)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  FigSimpleMutexLock();
  if (*(DerivedStorage + 88))
  {
    APSLogErrorAt();
    v4 = 4294960587;
LABEL_8:
    FigSimpleMutexUnlock();
    rcsSenderUIEventsChannel_stop(a1);
    return v4;
  }

  v3 = *(DerivedStorage + 72);
  if (v3)
  {
    v6 = *(DerivedStorage + 72);
    v7 = 0;
    dispatch_sync_f(*(v3 + 112), &v6, controlServer_startInternal);
    v4 = v7;
    if (v7)
    {
      APSLogErrorAt();
      goto LABEL_8;
    }
  }

  *(DerivedStorage + 88) = 1;
  FigSimpleMutexUnlock();
  return 0;
}

void rcsSenderUIEventsChannel_stop(uint64_t a1)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  v2 = *(DerivedStorage + 72);
  if (v2)
  {
    v3[0] = *(DerivedStorage + 72);
    v3[1] = 0;
    dispatch_sync_f(*(v2 + 112), v3, controlServer_stopInternal);
  }
}

uint64_t CMBaseObjectNotificationBarrier_3336(uint64_t a1)
{
  v2 = *(CMBaseObjectGetVTable() + 8);
  if (*v2 < 2uLL)
  {
    return 4294954514;
  }

  v3 = v2[8];
  if (!v3)
  {
    return 4294954514;
  }

  return v3(a1);
}

uint64_t rcsSenderUIEventsChannel_SetProperty(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
    return 0;
  }

  APSLogErrorAt();
  return 4294960591;
}

uint64_t rcsSenderUIEventsChannel_CopyProperty(uint64_t a1, const void *a2, uint64_t a3, uint64_t *a4)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  FigSimpleMutexLock();
  if (!a2 || !a4)
  {
    APSLogErrorAt();
    v8 = 4294960591;
    goto LABEL_7;
  }

  if (CFEqual(a2, @"RRCS::Property::SessionID"))
  {
    SInt32 = CFRetain(*(DerivedStorage + 16));
  }

  else
  {
    if (!CFEqual(a2, @"RRCS::Property::ListenPort"))
    {
      v8 = 4294960569;
      goto LABEL_7;
    }

    if (!*(DerivedStorage + 72))
    {
      SInt32 = 0;
      v8 = 4294960561;
      goto LABEL_6;
    }

    SInt32 = FigCFNumberCreateSInt32();
    if (!SInt32)
    {
      APSLogErrorAt();
      v8 = 4294960568;
      goto LABEL_7;
    }
  }

  v8 = 0;
LABEL_6:
  *a4 = SInt32;
LABEL_7:
  FigSimpleMutexUnlock();
  return v8;
}

uint64_t rcsSenderUIEventsChannel_Finalize(uint64_t a1)
{
  result = CMBaseObjectGetDerivedStorage();
  v3 = result;
  if (gLogCategory_APReceiverRemoteControlSessionSenderUIEventsChannel <= 50)
  {
    if (gLogCategory_APReceiverRemoteControlSessionSenderUIEventsChannel != -1 || (result = _LogCategory_Initialize(), result))
    {
      result = LogPrintF(&gLogCategory_APReceiverRemoteControlSessionSenderUIEventsChannel, "void rcsSenderUIEventsChannel_Finalize(CMBaseObjectRef)", 33554482, "[%{ptr}] Finalize\n", a1);
    }
  }

  if (*(v3 + 89))
  {
    v4 = *(v3 + 16);
    if (v4)
    {
      CFRelease(v4);
      *(v3 + 16) = 0;
    }

    v5 = *(v3 + 48);
    if (v5)
    {
      CFRelease(v5);
      *(v3 + 48) = 0;
    }

    v6 = *(v3 + 72);
    if (v6)
    {
      CFRelease(v6);
      *(v3 + 72) = 0;
    }

    v7 = *(v3 + 80);
    if (v7)
    {
      CFRelease(v7);
      *(v3 + 80) = 0;
    }

    v8 = *(v3 + 56);
    if (v8)
    {
      dispatch_release(v8);
      *(v3 + 56) = 0;
    }

    v9 = *(v3 + 64);
    if (v9)
    {
      dispatch_release(v9);
      *(v3 + 64) = 0;
    }

    result = FigSimpleMutexDestroy();
    *(v3 + 112) = 0;
  }

  else
  {
    if (gLogCategory_APReceiverRemoteControlSessionSenderUIEventsChannel <= 100)
    {
      if (gLogCategory_APReceiverRemoteControlSessionSenderUIEventsChannel != -1 || (result = _LogCategory_Initialize(), result))
      {
        result = LogPrintF(&gLogCategory_APReceiverRemoteControlSessionSenderUIEventsChannel, "void rcsSenderUIEventsChannel_Finalize(CMBaseObjectRef)", 33554532, "### [%{ptr}]: RCS must be invalidated before deallocation!\n", a1);
      }
    }

    __break(1u);
  }

  return result;
}

uint64_t rcsSenderUIEventsChannel_Invalidate(uint64_t a1)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  FigSimpleMutexLock();
  if (*(DerivedStorage + 89))
  {
    APSLogErrorAt();
    goto LABEL_9;
  }

  if (gLogCategory_APReceiverRemoteControlSessionSenderUIEventsChannel <= 50 && (gLogCategory_APReceiverRemoteControlSessionSenderUIEventsChannel != -1 || _LogCategory_Initialize()))
  {
    LogPrintF(&gLogCategory_APReceiverRemoteControlSessionSenderUIEventsChannel, "OSStatus rcsSenderUIEventsChannel_Invalidate(CMBaseObjectRef)", 33554482, "[%{ptr}] Invalidate\n", a1);
  }

  if (!*(DerivedStorage + 88))
  {
    *(DerivedStorage + 89) = 1;
LABEL_9:
    FigSimpleMutexUnlock();
    return 0;
  }

  *(DerivedStorage + 88) = 256;
  FigSimpleMutexUnlock();
  rcsSenderUIEventsChannel_stop(a1);
  return 0;
}

uint64_t APReceiverScreenSinkCreateAirPlay(uint64_t a1, CFTypeRef *a2)
{
  if (APReceiverScreenSinkCreateAirPlay_initOnce == -1)
  {
    if (a2)
    {
      goto LABEL_3;
    }

LABEL_17:
    APSLogErrorAt();
    return 4294895165;
  }

  dispatch_once(&APReceiverScreenSinkCreateAirPlay_initOnce, &__block_literal_global_3348);
  if (!a2)
  {
    goto LABEL_17;
  }

LABEL_3:
  if (gLogCategory_APReceiverScreenSinkAirPlay <= 30 && (gLogCategory_APReceiverScreenSinkAirPlay != -1 || _LogCategory_Initialize()))
  {
    LogPrintF(&gLogCategory_APReceiverScreenSinkAirPlay, "OSStatus APReceiverScreenSinkCreateAirPlay(CFAllocatorRef, APReceiverScreenSinkRef *)", 33554462, "Creating AirPlay screen sink\n");
  }

  if (APReceiverScreenSinkGetClassID_once != -1)
  {
    dispatch_once(&APReceiverScreenSinkGetClassID_once, &__block_literal_global_5885);
  }

  v3 = CMDerivedObjectCreate();
  if (v3)
  {
    v5 = v3;
    APSLogErrorAt();
  }

  else
  {
    DerivedStorage = CMBaseObjectGetDerivedStorage();
    *(DerivedStorage + 179) = FigSupportsIOSurfaceTimingInfo();
    if (gLogCategory_APReceiverScreenSinkAirPlay <= 30 && (gLogCategory_APReceiverScreenSinkAirPlay != -1 || _LogCategory_Initialize()))
    {
      LogPrintF(&gLogCategory_APReceiverScreenSinkAirPlay, "OSStatus APReceiverScreenSinkCreateAirPlay(CFAllocatorRef, APReceiverScreenSinkRef *)", 33554462, "Created AirPlay screen sink %{ptr}\n", 0);
    }

    v5 = 0;
    *a2 = 0;
  }

  return v5;
}

uint64_t apsink_updateStats(uint64_t a1, const void *a2)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  if (gLogCategory_APReceiverScreenSinkAirPlay <= 30 && (gLogCategory_APReceiverScreenSinkAirPlay != -1 || _LogCategory_Initialize()))
  {
    LogPrintF(&gLogCategory_APReceiverScreenSinkAirPlay, "OSStatus apsink_updateStats(APReceiverScreenSinkRef, CFDictionaryRef)", 33554462, "Sink %{ptr}: updating stats\n", a1);
  }

  if (*(DerivedStorage + 176))
  {
    if (atomic_fetch_add_explicit(sServerDisconnectCount, 0, memory_order_relaxed) == *(DerivedStorage + 168))
    {
      v5 = *DerivedStorage;
      if (*DerivedStorage)
      {
        v6 = v5[2];
        block[0] = MEMORY[0x277D85DD0];
        block[1] = 3221225472;
        block[2] = __APReceiverStatsCollectorUpdateSenderStats_block_invoke;
        block[3] = &__block_descriptor_48_e5_v8__0l;
        block[4] = v5;
        block[5] = a2;
        dispatch_sync(v6, block);
        if (*(DerivedStorage + 164))
        {
          block[0] = 0;
          CMBaseObject = FigVideoQueueGetCMBaseObject();
          v8 = *(*(CMBaseObjectGetVTable() + 8) + 48);
          if (v8)
          {
            v8(CMBaseObject, *MEMORY[0x277CD6518], *MEMORY[0x277CBECE8], block);
            v9 = block[0];
          }

          else
          {
            v9 = 0;
          }

          APReceiverStatsCollectorUpdateVideoPerformanceStats(*DerivedStorage, v9);
          if (block[0])
          {
            CFRelease(block[0]);
          }
        }

        APReceiverStatsCollectorShowStats(*DerivedStorage);
      }

      return 0;
    }

    else
    {
      v10 = 4294895163;
      APSLogErrorAt();
    }
  }

  else
  {
    APSLogErrorAt();
    return 4294895164;
  }

  return v10;
}

uint64_t apsink_clearScreen(uint64_t a1)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  v13 = 0;
  if (gLogCategory_APReceiverScreenSinkAirPlay <= 30 && (gLogCategory_APReceiverScreenSinkAirPlay != -1 || _LogCategory_Initialize()))
  {
    LogPrintF(&gLogCategory_APReceiverScreenSinkAirPlay, "OSStatus apsink_clearScreen(APReceiverScreenSinkRef)", 33554462, "Sink %{ptr}: clearing screen\n", a1);
  }

  memset(&sampleTimingArray, 0, sizeof(sampleTimingArray));
  if (*(DerivedStorage + 176))
  {
    if (atomic_fetch_add_explicit(sServerDisconnectCount, 0, memory_order_relaxed) == *(DerivedStorage + 168))
    {
      if (*(DerivedStorage + 56) <= mach_absolute_time())
      {
        v3 = UpTicksToNanoseconds();
      }

      else
      {
        v3 = UpTicksToNanoseconds() + 10000000;
      }

      *&sampleTimingArray.duration.value = *MEMORY[0x277CC08F0];
      sampleTimingArray.duration.epoch = *(MEMORY[0x277CC08F0] + 16);
      CMTimeMake(&sampleTimingArray.presentationTimeStamp, v3, 1000000000);
      sampleTimingArray.decodeTimeStamp = **&MEMORY[0x277CC0898];
      v4 = CMSampleBufferCreate(*MEMORY[0x277CBECE8], 0, 1u, 0, 0, 0, 0, 1, &sampleTimingArray, 0, 0, &v13);
      if (v4)
      {
        v10 = v4;
      }

      else
      {
        v5 = *MEMORY[0x277CBED28];
        CMSetAttachment(v13, *MEMORY[0x277CC06D8], *MEMORY[0x277CBED28], 1u);
        CMSetAttachment(v13, *MEMORY[0x277CC06B8], v5, 1u);
        v6 = *(DerivedStorage + 32);
        v7 = v13;
        v8 = *(*(CMBaseObjectGetVTable() + 16) + 16);
        if (v8)
        {
          v9 = v8(v6, v7, 0, *MEMORY[0x277CBF3A0], *(MEMORY[0x277CBF3A0] + 8), *(MEMORY[0x277CBF3A0] + 16), *(MEMORY[0x277CBF3A0] + 24), *MEMORY[0x277CBF3A0], *(MEMORY[0x277CBF3A0] + 8), *(MEMORY[0x277CBF3A0] + 16), *(MEMORY[0x277CBF3A0] + 24));
        }

        else
        {
          v9 = 4294954514;
        }

        v10 = apsink_remapEnqueueError(a1, v9);
        if (!v10)
        {
          goto LABEL_15;
        }
      }
    }

    else
    {
      v10 = 4294895163;
    }

    APSLogErrorAt();
  }

  else
  {
    APSLogErrorAt();
    v10 = 4294895164;
  }

LABEL_15:
  if (v13)
  {
    CFRelease(v13);
  }

  return v10;
}

uint64_t apsink_remapEnqueueError(uint64_t a1, uint64_t a2)
{
  if (a2 == -12083)
  {
    v3 = 4294895163;
    if (gLogCategory_APReceiverScreenSinkAirPlay <= 90 && (gLogCategory_APReceiverScreenSinkAirPlay != -1 || _LogCategory_Initialize()))
    {
      LogPrintF(&gLogCategory_APReceiverScreenSinkAirPlay, "OSStatus apsink_remapEnqueueError(APReceiverScreenSinkRef, OSStatus)", 33554522, "### Sink %{ptr}: server connection lost\n", a1);
    }
  }

  else
  {
    v3 = a2;
    if (a2)
    {
      if (gLogCategory_APReceiverScreenSinkAirPlay <= 60 && (gLogCategory_APReceiverScreenSinkAirPlay != -1 || _LogCategory_Initialize()))
      {
        LogPrintF(&gLogCategory_APReceiverScreenSinkAirPlay, "OSStatus apsink_remapEnqueueError(APReceiverScreenSinkRef, OSStatus)", 33554492, "### Sink %{ptr}: frame enqueue error: %d, ignoring it...\n", a1, v3);
      }

      return 0;
    }
  }

  return v3;
}

uint64_t apsink_updateVideoConfig(uint64_t a1, uint64_t a2, uint64_t a3, double a4, double a5, double a6, double a7, double a8, double a9, double a10, double a11, double a12, double a13, double a14, double a15)
{
  v18 = a3;
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  if (gLogCategory_APReceiverScreenSinkAirPlay <= 30 && (gLogCategory_APReceiverScreenSinkAirPlay != -1 || _LogCategory_Initialize()))
  {
    LogPrintF(&gLogCategory_APReceiverScreenSinkAirPlay, "OSStatus apsink_updateVideoConfig(APReceiverScreenSinkRef, CMBlockBufferRef, CGSize, CGRect, CGRect, uint32_t)", 33554462, "Sink %{ptr}: updating video config\n", a1);
  }

  if (!*(DerivedStorage + 176))
  {
    APSLogErrorAt();
    return 4294895164;
  }

  if (!a2)
  {
    v36 = 4294895165;
LABEL_24:
    APSLogErrorAt();
    return v36;
  }

  if (atomic_fetch_add_explicit(sServerDisconnectCount, 0, memory_order_relaxed) != *(DerivedStorage + 168))
  {
    APSLogErrorAt();
    return 4294895163;
  }

  v28 = *(DerivedStorage + 172);
  if (v28)
  {
    if (v28 != 2)
    {
      v36 = 4294895165;
      goto LABEL_24;
    }
  }

  else
  {
    *(DerivedStorage + 172) = 2;
  }

  v31 = *(DerivedStorage + 40);
  v30 = (DerivedStorage + 40);
  v29 = v31;
  if (v31)
  {
    CFRelease(v29);
    *v30 = 0;
  }

  v32 = APSVideoFormatDescriptionCreateFromBlockBuffer();
  if (v32)
  {
    v36 = v32;
    goto LABEL_24;
  }

  if (*v30)
  {
    MediaSubType = CMFormatDescriptionGetMediaSubType(*v30);
  }

  else
  {
    MediaSubType = 0;
  }

  apsink_updateVideoConfigCommon(a1, v18, MediaSubType, a4, a5, a6, a7, a8, a9, v33, v34, a12, a13, a14, a15);
  return 0;
}

void apsink_updateVideoConfigCommon(uint64_t a1, int a2, int a3, double a4, double a5, double a6, double a7, double a8, double a9, double a10, double a11, double a12, double a13, double a14, double a15)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  *(DerivedStorage + 80) = a4;
  *(DerivedStorage + 88) = a5;
  *(DerivedStorage + 160) = a2;
  *(DerivedStorage + 96) = a6;
  *(DerivedStorage + 104) = a7;
  *(DerivedStorage + 112) = a8;
  *(DerivedStorage + 120) = a9;
  [*(DerivedStorage + 24) bounds];
  v26 = v25;
  v28 = v27;
  v29 = v25 / *(DerivedStorage + 64);
  v30 = v27 / *(DerivedStorage + 72);
  *(DerivedStorage + 128) = a12 * v29;
  *(DerivedStorage + 136) = a13 * v30;
  v31 = a14 * v29;
  v32 = a15 * v30;
  *(DerivedStorage + 144) = a14 * v29;
  *(DerivedStorage + 152) = a15 * v30;
  if (gLogCategory_APReceiverScreenSinkAirPlay <= 50)
  {
    if (gLogCategory_APReceiverScreenSinkAirPlay != -1 || (v33 = _LogCategory_Initialize(), v31 = *(DerivedStorage + 144), v32 = *(DerivedStorage + 152), v33))
    {
      LogPrintF(&gLogCategory_APReceiverScreenSinkAirPlay, "void apsink_updateVideoConfigCommon(APReceiverScreenSinkRef, CGSize, CGRect, CGRect, uint32_t, OSType)", 33554482, "Sink %{ptr}: layer size: %g x %g, scaleX: %g, scaleY: %g, dest rect size: %g x %g\n", a1, *&v26, *&v28, *&v29, *&v30, *&v31, *&v32);
      v31 = *(DerivedStorage + 144);
      v32 = *(DerivedStorage + 152);
    }
  }

  APReceiverStatsCollectorUpdateVideoSizes(*DerivedStorage, *(DerivedStorage + 112), *(DerivedStorage + 120), v31, v32, *(DerivedStorage + 128), *(DerivedStorage + 136));
  v34 = *DerivedStorage;

  APReceiverStatsCollectorUpdateVideoCodec(v34, a3);
}

uint64_t apsink_updateH264VideoConfig(uint64_t a1, const void *a2, int a3, double a4, double a5, double a6, double a7, double a8, double a9, double a10, double a11, double a12, double a13, double a14, double a15)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  if (gLogCategory_APReceiverScreenSinkAirPlay <= 30 && (gLogCategory_APReceiverScreenSinkAirPlay != -1 || _LogCategory_Initialize()))
  {
    LogPrintF(&gLogCategory_APReceiverScreenSinkAirPlay, "OSStatus apsink_updateH264VideoConfig(APReceiverScreenSinkRef, CFDataRef, CGSize, CGRect, CGRect, uint32_t)", 33554462, "Sink %{ptr}: updating H.264 video config\n", a1);
  }

  if (!*(DerivedStorage + 176))
  {
    APSLogErrorAt();
    return 4294895164;
  }

  if (!a2)
  {
    v29 = 4294895165;
    goto LABEL_19;
  }

  if (atomic_fetch_add_explicit(sServerDisconnectCount, 0, memory_order_relaxed) != *(DerivedStorage + 168))
  {
    APSLogErrorAt();
    return 4294895163;
  }

  v25 = *(DerivedStorage + 172);
  if (v25)
  {
    if (v25 == 1)
    {
      goto LABEL_11;
    }

    v29 = 4294895165;
LABEL_19:
    APSLogErrorAt();
    return v29;
  }

  *(DerivedStorage + 172) = 1;
LABEL_11:
  v26 = *(DerivedStorage + 48);
  *(DerivedStorage + 48) = a2;
  CFRetain(a2);
  if (v26)
  {
    CFRelease(v26);
  }

  apsink_updateVideoConfigCommon(a1, a3, 1635148593, a4, a5, a6, a7, a8, a9, v27, v28, a12, a13, a14, a15);
  return 0;
}