void sub_100002EF0(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = a3;
  v5 = *(a1 + 32);
  v6 = *(v5 + 368);
  v8[0] = _NSConcreteStackBlock;
  v8[1] = 3221225472;
  v8[2] = sub_100003070;
  v8[3] = &unk_1002B6D18;
  v8[4] = v5;
  v9 = v4;
  v7 = v4;
  dispatch_async(v6, v8);
}

void sub_100002F8C(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = a3;
  v5 = [*(a1 + 32) dispatchQueue];
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_100003210;
  v7[3] = &unk_1002B6D18;
  v7[4] = *(a1 + 32);
  v8 = v4;
  v6 = v4;
  dispatch_async(v5, v7);
}

void *sub_10000304C(uint64_t a1, uint64_t a2)
{
  result = *(a1 + 32);
  if (result[9] == *(a1 + 40))
  {
    return [result _shareAudioActionScannerDeviceFound:a2];
  }

  return result;
}

void sub_100003070(uint64_t a1)
{
  if (*(*(a1 + 32) + 1312))
  {
    v12 = 0u;
    v13 = 0u;
    v10 = 0u;
    v11 = 0u;
    v2 = [*(a1 + 40) elements];
    v3 = [v2 countByEnumeratingWithState:&v10 objects:v14 count:16];
    if (v3)
    {
      v4 = v3;
      v5 = 0;
      v6 = *v11;
      do
      {
        for (i = 0; i != v4; i = i + 1)
        {
          if (*v11 != v6)
          {
            objc_enumerationMutation(v2);
          }

          v8 = [*(*(&v10 + 1) + 8 * i) identifier];
          v9 = v8;
          if (v8)
          {
            v5 |= [v8 isEqual:@"com.apple.HeadphoneProxService"];
          }
        }

        v4 = [v2 countByEnumeratingWithState:&v10 objects:v14 count:16];
      }

      while (v4);
    }

    else
    {
      LOBYTE(v5) = 0;
    }

    if (*(*(a1 + 32) + 1320) != (v5 & 1))
    {
      if (dword_1002F6778 <= 30 && (dword_1002F6778 != -1 || _LogCategory_Initialize()))
      {
        sub_1001E83BC();
      }

      *(*(a1 + 32) + 1320) = v5 & 1;
      [*(a1 + 32) _update];
    }
  }
}

void sub_100003210(uint64_t a1)
{
  v2 = [*(a1 + 32) systemUIMonitor];

  if (v2 && *(a1 + 40))
  {
    v3 = *(a1 + 32);

    [v3 _systemUIUpdatedWithLayout:?];
  }
}

void sub_10000327C(uint64_t a1, void *a2)
{
  v6 = a2;
  v3 = *(a1 + 32);
  v4 = [*(a1 + 40) cbDiscovery];

  if (v3 == v4)
  {
    v5 = [v6 bleAppleManufacturerData];

    if (v5)
    {
      [*(a1 + 40) _cbDeviceFound:v6];
    }
  }
}

void *sub_100003498(uint64_t a1, uint64_t a2)
{
  result = *(a1 + 32);
  if (result[9] == *(a1 + 40))
  {
    return [result _shareAudioActionScannerDeviceLost:a2];
  }

  return result;
}

void sub_1000034BC(uint64_t a1, void *a2)
{
  v5 = a2;
  v3 = *(a1 + 32);
  v4 = [*(a1 + 40) cbDiscovery];

  if (v3 == v4)
  {
    [*(a1 + 40) _cbDeviceLost:v5];
  }
}

uint64_t sub_100003530()
{
  if (qword_1002FA030 != -1)
  {
    sub_1001D2264();
  }

  return atomic_fetch_add(&unk_1002FA038, 1u) + 1;
}

uint64_t sub_1000038B8(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

uint64_t sub_1000038C8(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

uint64_t sub_1000038D8(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

uint64_t sub_1000038E8(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

uint64_t sub_1000038F8(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

uint64_t sub_100003908(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

uint64_t sub_100003918(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

uint64_t sub_100003928(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

uint64_t sub_100003938(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

uint64_t sub_100003948(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

uint64_t sub_100003958(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

uint64_t sub_100003968(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

uint64_t sub_100003978(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

uint64_t sub_100003988(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

uint64_t sub_100003998(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

uint64_t sub_1000039A8(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

uint64_t sub_1000039B8(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

uint64_t sub_1000039C8(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

uint64_t sub_1000039D8(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

uint64_t sub_1000039E8(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

uint64_t sub_1000039F8(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

uint64_t sub_100003A08(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_100003A18(uint64_t a1, uint64_t a2, void *a3)
{
  v3 = a2;
  v5 = a3;
  v8 = *(a1 + 40);
  v7 = a1 + 40;
  v6 = v8;
  v12 = v5;
  if (*(v7 - 8) == *(v8 + 1160))
  {
    if (v3)
    {
      v9 = v3 < 11;
    }

    else
    {
      v9 = 0;
    }

    v10 = v9;
    *(v6 + 1152) = v10;
    *(*v7 + 1168) = v3;
    if (dword_1002F6778 <= 30 && (dword_1002F6778 != -1 || _LogCategory_Initialize()))
    {
      sub_100003AFC(v3, v7);
    }

    v11 = *v7;
    if (*(*v7 + 1152) == 1)
    {
      [v11 _clearAllDisconnectTicks];
      v11 = *v7;
    }

    [v11 _update];
    v5 = v12;
  }

  if (v5)
  {
    v5[2](v12);
    v5 = v12;
  }
}

uint64_t sub_100003AFC(int a1, uint64_t a2)
{
  v2 = "Unknown";
  v3 = "Sleep";
  v4 = "DarkWake";
  v5 = "FullWake";
  v6 = "Restart";
  v7 = "PowerOff";
  if (a1 != 50)
  {
    v7 = "?";
  }

  if (a1 != 40)
  {
    v6 = v7;
  }

  if (a1 != 30)
  {
    v5 = v6;
  }

  if (a1 != 20)
  {
    v4 = v5;
  }

  if (a1 != 10)
  {
    v3 = v4;
  }

  if (a1)
  {
    v2 = v3;
  }

  if (*(*a2 + 1152))
  {
    v8 = "yes";
  }

  else
  {
    v8 = "no";
  }

  return LogPrintF(&dword_1002F6778, "[BTSmartRoutingDaemon _powerMonitorEnsureStarted]_block_invoke_2", 30, "Sleep/wake state changed: %s, sleeping %s", v2, v8);
}

uint64_t sub_100004DFC()
{
  sub_100072F64();
  if (v3)
  {
    v4 = "yes";
  }

  else
  {
    v4 = "no";
  }

  if ([*v2 firstUnlocked])
  {
    v5 = "yes";
  }

  else
  {
    v5 = "no";
  }

  if (*(v0 + 1152))
  {
    v6 = "yes";
  }

  else
  {
    v6 = "no";
  }

  if ([*v1 screenOn])
  {
    v7 = "yes";
  }

  else
  {
    v7 = "no";
  }

  v8 = [*v1 screenState];
  if (v8)
  {
    switch(v8)
    {
      case 0xAu:
        v9 = @"Off";
        break;
      case 0x14u:
        v9 = @"InactiveOn";
        break;
      case 0x1Eu:
        v9 = @"ActiveDimmed";
        break;
      case 0x28u:
        v9 = @"ActiveOn";
        break;
      default:
        v9 = @"?";
        break;
    }
  }

  else
  {
    v9 = @"Unknown";
  }

  if ([*v1 screenActive])
  {
    v10 = "yes";
  }

  else
  {
    v10 = "no";
  }

  if ([*v1 screenLocked])
  {
    v11 = "yes";
  }

  else
  {
    v11 = "no";
  }

  if (*(v0 + 1112))
  {
    v12 = "yes";
  }

  else
  {
    v12 = "no";
  }

  return LogPrintF(&dword_1002F6778, "[BTSmartRoutingDaemon _update]", 30, "anySmartRouting %s _powerMonitor.firstUnlocked %s _sleeping %s, _powerMonitor.screenOn %s, _powerMonitor.screenState %@, _powerMonitor.screenActive %s, _powerMonitor.screenLocked %s, _screenLockedLingerTimer %s", v4, v5, v6, v7, v9, v10, v11, v12);
}

void sub_1000053C0(uint64_t a1, void *a2)
{
  v19 = *(a1 + 96);
  v18 = *(a1 + 100);
  v17 = *(a1 + 104);
  v20 = [*(a1 + 16) srDiscoveredDeviceMap];
  v4 = [v20 count];
  v5 = [*(a1 + 16) nearbyInfoDevices];
  v6 = [v5 count];
  if (*a2 > 0xAuLL)
  {
    v7 = "?";
  }

  else
  {
    v7 = off_1002BA268[*a2];
  }

  v8 = *(a1 + 40);
  if (v8 > 4)
  {
    v9 = "?";
  }

  else
  {
    v9 = off_1002BA2C0[v8];
  }

  v10 = *(a1 + 44);
  if (v10 > 0xF)
  {
    v11 = "?";
  }

  else
  {
    v11 = off_1002BA2E8[v10];
  }

  if (*(a1 + 24))
  {
    v12 = "yes";
  }

  else
  {
    v12 = "no";
  }

  v13 = [*(a1 + 48) intValue];
  if (*(a1 + 65))
  {
    v14 = "yes";
  }

  else
  {
    v14 = "no";
  }

  v15 = *(a1 + 72);
  if (v15 > 3)
  {
    v16 = "?";
  }

  else
  {
    v16 = (&off_1002BA400)[v15];
  }

  LogPrintF(&dword_1002F6E08, "[SRConnectionManager evaluateNearbyDevicesForConnection]", 30, "EvaluateNearbyDevicesForConnection paired %d connectedWx %d nearbyWx %d srDisDeviceCount %d nearbySource %d btState %s audioRoute %s tipiScore %s sourceSRcapable %s audioCategory %d callStarted %s OD %s", v19, v18, v17, v4, v6, v7, v9, v11, v12, v13, v14, v16);
}

void sub_100005700(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, ...)
{
  va_start(va, a18);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void *sub_100005AB8(void *result)
{
  v1 = result[5];
  v2 = *(*(v1 + 8) + 40);
  if (!v2)
  {
    return result;
  }

  v3 = result;
  if (dword_1002F6E08 <= 30)
  {
    if (dword_1002F6E08 == -1)
    {
      v4 = _LogCategory_Initialize();
      v1 = v3[5];
      if (!v4)
      {
        goto LABEL_7;
      }

      v2 = *(*(v1 + 8) + 40);
    }

    LogPrintF(&dword_1002F6E08, "[SRConnectionManager _findHeadphoneToConnectStart]_block_invoke", 30, "FindHeadphoneToConnectStart: Skip, reason: %@", v2);
    v1 = v3[5];
  }

LABEL_7:
  v5 = *(v3[4] + 16);
  v6 = *(*(v1 + 8) + 40);

  return [v5 logConnectionBackoffReason:v6 wxAddress:0];
}

void sub_100005B80(void *a1)
{
  [a1 btAddress];
  objc_claimAutoreleasedReturnValue();
  v1 = [sub_10007315C() tipiConnectType];
  if (v1 > 0xA)
  {
    v2 = "?";
  }

  else
  {
    v2 = off_1002B8FD0[v1];
  }

  LogPrintF(&dword_1002F6778, "[BTSmartRoutingDaemon _evaluateNearbyDevice]", 30, "EvaluateNearbyDevice wx %@ TipiConnect %s", v3, v2);
}

id sub_100005C14(const char *a1)
{
  if (qword_1002FA130 != -1)
  {
    sub_100005D00();
  }

  pthread_mutex_lock(&stru_1002F6BA8);
  v2 = [NSString stringWithUTF8String:a1];
  v3 = [qword_1002FA128 objectForKey:v2];
  if (!v3)
  {
    v3 = os_log_create("com.apple.bluetoothcloud", a1);
    [qword_1002FA128 setObject:v3 forKey:v2];
  }

  pthread_mutex_unlock(&stru_1002F6BA8);

  return v3;
}

void *sub_100005CDC(uint64_t a1, uint64_t a2)
{
  result = *(a1 + 32);
  if (result[5] == *(a1 + 40))
  {
    return [result _wxDeviceLost:a2];
  }

  return result;
}

void *sub_100005D84(uint64_t a1, uint64_t a2)
{
  result = *(a1 + 32);
  if (result[5] == *(a1 + 40))
  {
    return [result _wxDeviceFound:a2];
  }

  return result;
}

BOOL sub_100005EE8(void *a1, uint64_t *a2)
{
  v3 = *a2;
  v4 = *v2 & *a2;
  if (v4 != *a2)
  {
    *v2 |= v3;
  }

  *a1 = v3;
  return v4 != v3;
}

void *sub_100005F40@<X0>(void *result@<X0>, uint64_t a2@<X8>)
{
  *a2 = *result;
  *(a2 + 8) = 0;
  return result;
}

uint64_t sub_100005F70@<X0>(uint64_t *a1@<X8>)
{
  result = static String._unconditionallyBridgeFromObjectiveC(_:)();
  *a1 = result;
  a1[1] = v3;
  return result;
}

uint64_t sub_100005FC0(uint64_t a1, uint64_t a2, int *a3)
{
  v6 = type metadata accessor for UUID();
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = v6;
    v9 = *(v7 + 48);
    v10 = a1 + a3[5];

    return v9(v10, a2, v8);
  }

  else if (a2 == 0x7FFFFFFF)
  {
    v12 = *(a1 + a3[6] + 8);
    if (v12 >= 0xFFFFFFFF)
    {
      LODWORD(v12) = -1;
    }

    return (v12 + 1);
  }

  else
  {
    v13 = type metadata accessor for Date();
    v14 = *(*(v13 - 8) + 48);
    v15 = a1 + a3[12];

    return v14(v15, a2, v13);
  }
}

uint64_t sub_1000060EC(uint64_t a1, uint64_t a2, int a3, int *a4)
{
  result = type metadata accessor for UUID();
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = result;
    v11 = *(v9 + 56);
    v12 = a1 + a4[5];

    return v11(v12, a2, a2, v10);
  }

  else if (a3 == 0x7FFFFFFF)
  {
    *(a1 + a4[6] + 8) = (a2 - 1);
  }

  else
  {
    v13 = type metadata accessor for Date();
    v14 = *(*(v13 - 8) + 56);
    v15 = a1 + a4[12];

    return v14(v15, a2, a2, v13);
  }

  return result;
}

uint64_t sub_100006260()
{
  _Block_release(*(v0 + 16));

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_100006298()
{
  swift_unknownObjectWeakDestroy();

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_1000062D0()
{

  return _swift_deallocObject(v0, 48, 7);
}

uint64_t sub_10000631C()
{

  return _swift_deallocObject(v0, 48, 7);
}

uint64_t sub_10000649C(uint64_t a1, uint64_t a2, int *a3)
{
  if (a2 == 12)
  {
    v4 = *(a1 + 8) >> 60;
    if (((4 * v4) & 0xC) != 0)
    {
      return 16 - ((4 * v4) & 0xC | (v4 >> 2));
    }

    else
    {
      return 0;
    }
  }

  v8 = type metadata accessor for UUID();
  if (*(*(v8 - 8) + 84) == a2)
  {
    v9 = v8;
    v10 = *(v8 - 8);
    v11 = a3[5];
LABEL_9:
    v13 = *(v10 + 48);

    return v13(a1 + v11, a2, v9);
  }

  v12 = type metadata accessor for URL();
  if (*(*(v12 - 8) + 84) == a2)
  {
    v9 = v12;
    v10 = *(v12 - 8);
    v11 = a3[6];
    goto LABEL_9;
  }

  v14 = type metadata accessor for Date();
  v15 = *(*(v14 - 8) + 48);
  v16 = a1 + a3[7];

  return v15(v16, a2, v14);
}

char *sub_100006614(char *result, uint64_t a2, int a3, int *a4)
{
  v5 = result;
  if (a3 == 12)
  {
    *result = 0;
    *(result + 1) = (((-a2 >> 2) & 3) - 4 * a2) << 60;
    return result;
  }

  v8 = type metadata accessor for UUID();
  if (*(*(v8 - 8) + 84) == a3)
  {
    v9 = v8;
    v10 = *(v8 - 8);
    v11 = a4[5];
LABEL_7:
    v13 = *(v10 + 56);

    return v13(&v5[v11], a2, a2, v9);
  }

  v12 = type metadata accessor for URL();
  if (*(*(v12 - 8) + 84) == a3)
  {
    v9 = v12;
    v10 = *(v12 - 8);
    v11 = a4[6];
    goto LABEL_7;
  }

  v14 = type metadata accessor for Date();
  v15 = *(*(v14 - 8) + 56);
  v16 = &v5[a4[7]];

  return v15(v16, a2, a2, v14);
}

uint64_t sub_100006788(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    v4 = *(a1 + 16);
    if (v4 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    return (v4 + 1);
  }

  else
  {
    v8 = type metadata accessor for UUID();
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 24);

    return v9(v10, a2, v8);
  }
}

uint64_t sub_100006834(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 16) = (a2 - 1);
  }

  else
  {
    v7 = type metadata accessor for UUID();
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 24);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

uint64_t sub_1000068DC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = type metadata accessor for UUID();
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else if (a2 == 12)
  {
    v10 = *(a1 + *(a3 + 20) + 8) >> 60;
    if (((4 * v10) & 0xC) != 0)
    {
      return 16 - ((4 * v10) & 0xC | (v10 >> 2));
    }

    else
    {
      return 0;
    }
  }

  else
  {
    v11 = type metadata accessor for Date();
    v12 = *(*(v11 - 8) + 48);
    v13 = a1 + *(a3 + 28);

    return v12(v13, a2, v11);
  }
}

uint64_t sub_100006A10(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = type metadata accessor for UUID();
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, result);
  }

  else if (a3 == 12)
  {
    v11 = (a1 + *(a4 + 20));
    *v11 = 0;
    v11[1] = (((-a2 >> 2) & 3) - 4 * a2) << 60;
  }

  else
  {
    v12 = type metadata accessor for Date();
    v13 = *(*(v12 - 8) + 56);
    v14 = a1 + *(a4 + 28);

    return v13(v14, a2, a2, v12);
  }

  return result;
}

uint64_t sub_100006B48()
{
  swift_unknownObjectWeakDestroy();

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_100006B80()
{

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t sub_100006BB8()
{
  v1 = type metadata accessor for URL();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 40) & ~v3;
  v5 = *(v2 + 64);

  (*(v2 + 8))(v0 + v4, v1);

  return _swift_deallocObject(v0, v4 + v5, v3 | 7);
}

uint64_t sub_100006C84()
{

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t sub_100006CE0()
{

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t sub_100006D20()
{

  return _swift_deallocObject(v0, 48, 7);
}

uint64_t sub_100006D70()
{
  _Block_release(*(v0 + 16));

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_100006DA8()
{

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_100006EA4()
{

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_100006F50(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = type metadata accessor for UUID();
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else if (a2 == 0x7FFFFFFF)
  {
    v10 = *(a1 + *(a3 + 24) + 8);
    if (v10 >= 0xFFFFFFFF)
    {
      LODWORD(v10) = -1;
    }

    return (v10 + 1);
  }

  else
  {
    v11 = type metadata accessor for Date();
    v12 = *(*(v11 - 8) + 48);
    v13 = a1 + *(a3 + 120);

    return v12(v13, a2, v11);
  }
}

uint64_t sub_100007078(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = type metadata accessor for UUID();
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, result);
  }

  else if (a3 == 0x7FFFFFFF)
  {
    *(a1 + *(a4 + 24) + 8) = (a2 - 1);
  }

  else
  {
    v11 = type metadata accessor for Date();
    v12 = *(*(v11 - 8) + 56);
    v13 = a1 + *(a4 + 120);

    return v12(v13, a2, a2, v11);
  }

  return result;
}

uint64_t sub_1000071A4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = type metadata accessor for UUID();
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else if (a2 == 0x7FFFFFFF)
  {
    v10 = *(a1 + *(a3 + 24) + 8);
    if (v10 >= 0xFFFFFFFF)
    {
      LODWORD(v10) = -1;
    }

    return (v10 + 1);
  }

  else
  {
    v11 = type metadata accessor for URL();
    v12 = *(*(v11 - 8) + 48);
    v13 = a1 + *(a3 + 28);

    return v12(v13, a2, v11);
  }
}

uint64_t sub_1000072CC(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = type metadata accessor for UUID();
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, result);
  }

  else if (a3 == 0x7FFFFFFF)
  {
    *(a1 + *(a4 + 24) + 8) = (a2 - 1);
  }

  else
  {
    v11 = type metadata accessor for URL();
    v12 = *(*(v11 - 8) + 56);
    v13 = a1 + *(a4 + 28);

    return v12(v13, a2, a2, v11);
  }

  return result;
}

uint64_t sub_1000074A8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = type metadata accessor for UUID();
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else if (a2 == 0x7FFFFFFF)
  {
    v10 = *(a1 + *(a3 + 24) + 8);
    if (v10 >= 0xFFFFFFFF)
    {
      LODWORD(v10) = -1;
    }

    return (v10 + 1);
  }

  else
  {
    v11 = type metadata accessor for Date();
    v12 = *(*(v11 - 8) + 48);
    v13 = a1 + *(a3 + 64);

    return v12(v13, a2, v11);
  }
}

uint64_t sub_1000075D0(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = type metadata accessor for UUID();
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, result);
  }

  else if (a3 == 0x7FFFFFFF)
  {
    *(a1 + *(a4 + 24) + 8) = (a2 - 1);
  }

  else
  {
    v11 = type metadata accessor for Date();
    v12 = *(*(v11 - 8) + 56);
    v13 = a1 + *(a4 + 64);

    return v12(v13, a2, a2, v11);
  }

  return result;
}

uint64_t sub_1000076FC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = type metadata accessor for UUID();
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else if (a2 == 12)
  {
    v10 = *(a1 + *(a3 + 20) + 8) >> 60;
    if (((4 * v10) & 0xC) != 0)
    {
      return 16 - ((4 * v10) & 0xC | (v10 >> 2));
    }

    else
    {
      return 0;
    }
  }

  else
  {
    v11 = type metadata accessor for Date();
    v12 = *(*(v11 - 8) + 48);
    v13 = a1 + *(a3 + 28);

    return v12(v13, a2, v11);
  }
}

uint64_t sub_100007830(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = type metadata accessor for UUID();
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, result);
  }

  else if (a3 == 12)
  {
    v11 = (a1 + *(a4 + 20));
    *v11 = 0;
    v11[1] = (((-a2 >> 2) & 3) - 4 * a2) << 60;
  }

  else
  {
    v12 = type metadata accessor for Date();
    v13 = *(*(v12 - 8) + 56);
    v14 = a1 + *(a4 + 28);

    return v13(v14, a2, a2, v12);
  }

  return result;
}

uint64_t sub_1000079A8()
{

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_1000079E0()
{
  if (*(v0 + 24))
  {
  }

  return _swift_deallocObject(v0, 56, 7);
}

uint64_t sub_100007A2C()
{

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_100007A64()
{
  swift_weakDestroy();

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_100007AB4()
{
  if (*(v0 + 24))
  {
  }

  return _swift_deallocObject(v0, 72, 7);
}

uint64_t sub_100007B0C(uint64_t result, uint64_t a2)
{
  if (result)
  {
  }

  return result;
}

uint64_t sub_100007B2C()
{

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t sub_100007B68()
{

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t sub_100007BA4()
{
  v1 = type metadata accessor for Date();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 40) & ~v3;
  v5 = (v4 + *(v2 + 64)) & 0xFFFFFFFFFFFFFFF8;

  (*(v2 + 8))(v0 + v4, v1);

  return _swift_deallocObject(v0, v5 + 16, v3 | 7);
}

uint64_t sub_100007C84()
{
  v1 = type metadata accessor for Date();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 48) & ~v3;
  v5 = *(v2 + 64) + v4;

  (*(v2 + 8))(v0 + v4, v1);

  return _swift_deallocObject(v0, v5 + 1, v3 | 7);
}

uint64_t sub_100007D5C()
{
  v1 = type metadata accessor for Date();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 48) & ~v3;
  v5 = *(v2 + 64) + v4;

  (*(v2 + 8))(v0 + v4, v1);

  return _swift_deallocObject(v0, v5 + 1, v3 | 7);
}

uint64_t sub_100007E34()
{

  return _swift_deallocObject(v0, 48, 7);
}

uint64_t sub_100007E98()
{

  return _swift_deallocObject(v0, 56, 7);
}

uint64_t sub_100007F18()
{

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t sub_100007F58()
{

  swift_unknownObjectRelease();

  return _swift_deallocObject(v0, 56, 7);
}

uint64_t sub_100007FA8()
{

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t sub_100007FF8()
{

  return _swift_deallocObject(v0, 25, 7);
}

void sub_100008030(void *a1, char a2)
{
  if (a2)
  {
  }

  else
  {
  }
}

uint64_t sub_10000803C()
{

  return _swift_deallocObject(v0, 40, 7);
}

uint64_t sub_100008074()
{

  return _swift_deallocObject(v0, 33, 7);
}

uint64_t sub_1000080C0()
{

  return _swift_deallocObject(v0, 72, 7);
}

uint64_t sub_100008118()
{

  return _swift_deallocObject(v0, 64, 7);
}

uint64_t sub_100008198()
{

  return _swift_deallocObject(v0, 72, 7);
}

uint64_t sub_100008218()
{

  return _swift_deallocObject(v0, 64, 7);
}

uint64_t sub_100008260()
{

  return _swift_deallocObject(v0, 64, 7);
}

uint64_t sub_1000082B0()
{

  return _swift_deallocObject(v0, 56, 7);
}

uint64_t sub_1000082F8()
{

  return _swift_deallocObject(v0, 72, 7);
}

uint64_t sub_100008350()
{

  return _swift_deallocObject(v0, 56, 7);
}

uint64_t sub_1000083A0()
{

  return _swift_deallocObject(v0, 48, 7);
}

uint64_t sub_1000083E8()
{

  return _swift_deallocObject(v0, 48, 7);
}

uint64_t sub_100008428()
{

  return _swift_deallocObject(v0, 26, 7);
}

uint64_t sub_100008478()
{

  return _swift_deallocObject(v0, 50, 7);
}

uint64_t sub_1000084C8()
{

  sub_100162F68(*(v0 + 24), *(v0 + 32));

  return _swift_deallocObject(v0, 58, 7);
}

uint64_t sub_10000851C()
{
  swift_unknownObjectWeakDestroy();

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_100008660()
{
  swift_unknownObjectWeakDestroy();

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_10000869C()
{

  swift_unknownObjectRelease();

  return _swift_deallocObject(v0, 56, 7);
}

uint64_t sub_1000086F8()
{

  return _swift_deallocObject(v0, 64, 7);
}

uint64_t sub_100008748()
{

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_100008780()
{
  swift_unknownObjectRelease();

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t sub_1000087C0()
{
  sub_1000EF870(*(v0 + 16), *(v0 + 24));

  return _swift_deallocObject(v0, 64, 7);
}

uint64_t sub_100008808()
{
  sub_1000EF870(*(v0 + 16), *(v0 + 24));

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t sub_10000884C()
{
  _Block_release(*(v0 + 16));

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_100008884()
{
  swift_unknownObjectWeakDestroy();

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_1000088BC()
{

  return _swift_deallocObject(v0, 48, 7);
}

uint64_t sub_100008908()
{

  return _swift_deallocObject(v0, 48, 7);
}

uint64_t sub_100008964()
{
  _Block_release(*(v0 + 16));

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_10000899C()
{
  swift_unknownObjectWeakDestroy();

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_1000089D4()
{

  return _swift_deallocObject(v0, 48, 7);
}

uint64_t sub_100008A20()
{

  return _swift_deallocObject(v0, 48, 7);
}

uint64_t sub_100008A7C()
{
  _Block_release(*(v0 + 16));

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_100008AB4()
{

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t sub_100008B08()
{
  swift_weakDestroy();

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_100008B40()
{

  return _swift_deallocObject(v0, 40, 7);
}

uint64_t sub_100008B80()
{

  if (*(v0 + 48))
  {
  }

  return _swift_deallocObject(v0, 88, 7);
}

uint64_t sub_100008BE4()
{
  v1 = (type metadata accessor for SoundProfileRecord(0) - 8);
  v2 = *(*v1 + 80);
  v3 = (v2 + 16) & ~v2;
  v4 = (((((*(*v1 + 64) + v3 + 7) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8;
  v5 = v0 + v3;
  sub_1000EF870(*(v0 + v3), *(v0 + v3 + 8));
  v6 = v1[7];
  v7 = type metadata accessor for UUID();
  (*(*(v7 - 8) + 8))(v5 + v6, v7);
  v8 = v1[8];
  v9 = type metadata accessor for URL();
  (*(*(v9 - 8) + 8))(v5 + v8, v9);
  v10 = v1[9];
  v11 = type metadata accessor for Date();
  (*(*(v11 - 8) + 8))(v5 + v10, v11);

  return _swift_deallocObject(v0, v4 + 8, v2 | 7);
}

uint64_t sub_100008D88()
{
  v1 = (type metadata accessor for MagicPairingSettingsRecord(0) - 8);
  v2 = *(*v1 + 80);
  v3 = (v2 + 16) & ~v2;
  v4 = (*(*v1 + 64) + v3 + 7) & 0xFFFFFFFFFFFFFFF8;
  v5 = v0 + v3;
  v6 = type metadata accessor for UUID();
  (*(*(v6 - 8) + 8))(v5, v6);
  sub_1000EF870(*(v5 + v1[7]), *(v5 + v1[7] + 8));

  sub_1000EF870(*(v5 + v1[9]), *(v5 + v1[9] + 8));
  sub_1000EF870(*(v5 + v1[10]), *(v5 + v1[10] + 8));
  sub_1000EF870(*(v5 + v1[11]), *(v5 + v1[11] + 8));
  sub_1000EF870(*(v5 + v1[12]), *(v5 + v1[12] + 8));
  sub_1000EF870(*(v5 + v1[13]), *(v5 + v1[13] + 8));
  sub_1000EF870(*(v5 + v1[14]), *(v5 + v1[14] + 8));

  v7 = v1[32];
  v8 = type metadata accessor for Date();
  (*(*(v8 - 8) + 8))(v5 + v7, v8);

  return _swift_deallocObject(v0, v4 + 8, v2 | 7);
}

uint64_t sub_10000904C()
{
  v1 = (type metadata accessor for MagicPairingSettingsRecord(0) - 8);
  v2 = *(*v1 + 80);
  v3 = (v2 + 16) & ~v2;
  v4 = *(*v1 + 64);
  v5 = v0 + v3;
  v6 = type metadata accessor for UUID();
  (*(*(v6 - 8) + 8))(v0 + v3, v6);
  sub_1000EF870(*(v5 + v1[7]), *(v5 + v1[7] + 8));

  sub_1000EF870(*(v5 + v1[9]), *(v5 + v1[9] + 8));
  sub_1000EF870(*(v5 + v1[10]), *(v5 + v1[10] + 8));
  sub_1000EF870(*(v5 + v1[11]), *(v5 + v1[11] + 8));
  sub_1000EF870(*(v5 + v1[12]), *(v5 + v1[12] + 8));
  sub_1000EF870(*(v5 + v1[13]), *(v5 + v1[13] + 8));
  sub_1000EF870(*(v5 + v1[14]), *(v5 + v1[14] + 8));

  v7 = v1[32];
  v8 = type metadata accessor for Date();
  (*(*(v8 - 8) + 8))(v0 + v3 + v7, v8);

  return _swift_deallocObject(v0, v3 + v4, v2 | 7);
}

uint64_t sub_100009300()
{
  v1 = (type metadata accessor for DeviceRecord(0) - 8);
  v2 = *(*v1 + 80);
  v3 = (v2 + 16) & ~v2;
  v4 = (*(*v1 + 64) + v3 + 7) & 0xFFFFFFFFFFFFFFF8;
  v5 = v0 + v3;
  sub_1000EF870(*(v0 + v3), *(v0 + v3 + 8));
  v6 = v1[7];
  v7 = type metadata accessor for UUID();
  (*(*(v7 - 8) + 8))(v5 + v6, v7);

  v8 = v1[14];
  v9 = type metadata accessor for Date();
  (*(*(v9 - 8) + 8))(v5 + v8, v9);

  return _swift_deallocObject(v0, v4 + 8, v2 | 7);
}

uint64_t sub_100009498()
{
  v1 = (type metadata accessor for BTDeferredRecord(0) - 8);
  v2 = *(*v1 + 80);
  v3 = (v2 + 16) & ~v2;
  v4 = *(*v1 + 64);

  v5 = v1[8];
  v6 = type metadata accessor for UUID();
  (*(*(v6 - 8) + 8))(v0 + v3 + v5, v6);

  v7 = (v0 + v3 + v1[11]);
  v8 = v7[1];
  if (v8 >> 60 != 15)
  {
    sub_1000EF870(*v7, v8);
  }

  return _swift_deallocObject(v0, ((v4 + v3 + 7) & 0xFFFFFFFFFFFFFFF8) + 8, v2 | 7);
}

uint64_t sub_1000095D0()
{

  return _swift_deallocObject(v0, 40, 7);
}

uint64_t sub_100009618()
{
  v1 = type metadata accessor for Notification();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 16) & ~v3;
  v5 = (*(v2 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8;
  (*(v2 + 8))(v0 + v4, v1);

  return _swift_deallocObject(v0, v5 + 8, v3 | 7);
}

uint64_t sub_100009734()
{
  swift_weakDestroy();

  return _swift_deallocObject(v0, 24, 7);
}

void sub_100009958(id a1)
{
  if (GestaltGetDeviceClass() != 7)
  {
    v1 = objc_alloc_init(AudioDeviceManager);
    v2 = qword_1002FA010;
    qword_1002FA010 = v1;

    _objc_release_x1(v1, v2);
  }
}

id sub_100009B04(uint64_t a1)
{
  if (dword_1002F5DA0 <= 50 && (dword_1002F5DA0 != -1 || _LogCategory_Initialize()))
  {
    sub_1001D0FD0(a1);
  }

  v2 = *(a1 + 32);

  return [v2 _activate];
}

void sub_100009D80(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_100009D9C(uint64_t a1, void *a2)
{
  xdict = a2;
  if (xpc_get_type(xdict) == &_xpc_type_dictionary)
  {
    v9 = xpc_dictionary_get_value(xdict, "kBTAudioMsgArgAllPublishedUIDs");
    v10 = v9;
    if (v9 && xpc_get_type(v9) == &_xpc_type_array && xpc_array_get_count(v10))
    {
      v11 = 0;
      do
      {
        string = xpc_array_get_string(v10, v11);
        if (string)
        {
          v13 = string;
          if (dword_1002F5DA0 <= 50 && (dword_1002F5DA0 != -1 || _LogCategory_Initialize()))
          {
            sub_1001D1108(v13);
          }

          v14 = *(*(*(a1 + 40) + 8) + 40);
          v15 = [NSString stringWithUTF8String:v13];
          [v14 addObject:v15];
        }

        ++v11;
      }

      while (xpc_array_get_count(v10) > v11);
    }

    goto LABEL_30;
  }

  v5 = xdict;
  if (xdict == &_xpc_error_connection_interrupted)
  {
    if (dword_1002F5DA0 <= 90)
    {
      if (dword_1002F5DA0 != -1 || (v5 = _LogCategory_Initialize(), v5))
      {
        sub_1001D10EC(v5, v3, v4);
      }
    }
  }

  else
  {
    if (xdict != &_xpc_error_connection_invalid)
    {
      v6 = CUXPCDecodeNSErrorIfNeeded();
      v7 = v6;
      if (v6)
      {
        v8 = v6;
      }

      else
      {
        v8 = CBErrorF();
      }

      v10 = v8;

      if (dword_1002F5DA0 <= 90 && (dword_1002F5DA0 != -1 || _LogCategory_Initialize()))
      {
        sub_1001D1048(v10, xdict);
      }

LABEL_30:

      goto LABEL_31;
    }

    if (dword_1002F5DA0 <= 90)
    {
      if (dword_1002F5DA0 != -1 || (v5 = _LogCategory_Initialize(), v5))
      {
        sub_1001D10D0(v5, v3, v4);
      }
    }
  }

LABEL_31:
  v16 = [*(*(*(a1 + 40) + 8) + 40) copy];
  (*(*(a1 + 32) + 16))();
}

id sub_10000AAD8(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = [v1[3] bluetoothState];

  return [v1 _bluetoothStateUpdate:v2];
}

uint64_t sub_10000AB24(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = *(a1 + 32);
  v5 = v4[3];
  if (v5 == *(a1 + 40))
  {
    v9 = v3;
    if (v3)
    {
      if (dword_1002F5DA0 <= 90 && (dword_1002F5DA0 != -1 || _LogCategory_Initialize()))
      {
        sub_1001D1740(v9);
      }

      [*(*(a1 + 32) + 24) invalidate];
      v6 = *(a1 + 32);
      v7 = *(v6 + 24);
      *(v6 + 24) = 0;
    }

    else
    {
      v5 = [v4 _bluetoothStateUpdate:{objc_msgSend(v5, "bluetoothState")}];
    }

    v3 = v9;
  }

  return _objc_release_x1(v5, v3);
}

id sub_10000C184(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = a1;
  if (dword_1002F5DA0 <= 90)
  {
    if (dword_1002F5DA0 != -1 || (a1 = _LogCategory_Initialize(), a1))
    {
      sub_1001D1E9C(a1, a2, a3);
    }
  }

  v4 = *(v3 + 32);

  return [v4 activate:1];
}

uint64_t sub_10000C314(uint64_t a1, uint64_t a2, uint64_t a3, const char *a4)
{

  return LogPrintF(a1, a2, 90, a4);
}

void sub_10000C62C(uint64_t a1)
{
  *(*(a1 + 32) + 24) = *(a1 + 40);
  v2 = *(a1 + 32);
  if (*(v2 + 28) == 1)
  {
    v3 = qword_100300AE0;

    [v3 updateAudioSessionControl:?];
  }

  else
  {
    v5 = [*(v2 + 32) remoteObjectProxy];
    [v5 audioSessionControlUpdate:*(a1 + 32)];
  }
}

void sub_10000C86C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (*(*(a1 + 32) + 28) == 1)
  {
    if (dword_1002F5E10 <= 90 && (dword_1002F5E10 != -1 || _LogCategory_Initialize()))
    {
      sub_1001D1F50();
    }
  }

  else
  {
    v3 = a1;
    if (dword_1002F5E10 <= 30)
    {
      if (dword_1002F5E10 != -1 || (a1 = _LogCategory_Initialize(), a1))
      {
        sub_1001D1F34(a1, a2, a3);
      }
    }

    v4 = [*(*(v3 + 32) + 32) remoteObjectProxy];
    v5 = *(v3 + 48);
    v6 = *(v3 + 40);
    v7 = *(v3 + 68);
    v8[0] = *(v3 + 52);
    v8[1] = v7;
    [v4 setMuteAction:v5 auditToken:v8 bundleIdentifier:v6];
  }
}

void sub_10000C9D4(uint64_t a1)
{
  v2 = *(a1 + 32);
  if (*(v2 + 8) == 1)
  {
    v3 = NSErrorF(NSOSStatusErrorDomain, 4294960575, "Activate already called");
    v9 = v3;
    if (dword_1002F5E10 <= 90)
    {
      if (dword_1002F5E10 != -1 || (v4 = _LogCategory_Initialize(), v3 = v9, v4))
      {
        sub_1001D1F70(v3);
      }
    }

    (*(*(a1 + 40) + 16))();
  }

  else
  {
    *(v2 + 8) = 1;
    v5 = objc_retainBlock(*(a1 + 40));
    v6 = *(a1 + 32);
    v7 = *(v6 + 16);
    *(v6 + 16) = v5;

    v8 = *(a1 + 32);

    [v8 _activate:0];
  }
}

void sub_10000CCCC(uint64_t a1, void *a2)
{
  v3 = a2;
  v10 = v3;
  if (v3)
  {
    v4 = v3;
    if (dword_1002F5E10 <= 90)
    {
      if (dword_1002F5E10 != -1 || (v5 = _LogCategory_Initialize(), v4 = v10, v5))
      {
        sub_1001D1FFC(v4);
        v4 = v10;
      }
    }

    [*(a1 + 32) _reportError:v4];
    goto LABEL_17;
  }

  if (*(a1 + 40) == 1)
  {
    if (dword_1002F5E10 > 30 || dword_1002F5E10 == -1 && !_LogCategory_Initialize())
    {
      goto LABEL_14;
    }

    v6 = "Re-activated: %@\n";
  }

  else
  {
    if (dword_1002F5E10 > 30 || dword_1002F5E10 == -1 && !_LogCategory_Initialize())
    {
      goto LABEL_14;
    }

    v6 = "Activated: %@\n";
  }

  sub_1001D203C(a1, v6);
LABEL_14:
  v7 = objc_retainBlock(*(*(a1 + 32) + 16));
  v8 = *(a1 + 32);
  v9 = *(v8 + 16);
  *(v8 + 16) = 0;

  if (v7)
  {
    v7[2](v7, 0);
  }

LABEL_17:
}

void sub_10000CF04(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = *(*(a1 + 32) + 48);
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_10000CFBC;
  v7[3] = &unk_1002B6998;
  v5 = *(a1 + 40);
  v8 = v3;
  v9 = v5;
  v6 = v3;
  dispatch_async(v4, v7);
}

uint64_t sub_10000CFBC(uint64_t a1)
{
  result = *(a1 + 40);
  if (result)
  {
    return (*(result + 16))(result, *(a1 + 32));
  }

  return result;
}

void sub_10000D1D0(uint64_t a1, void *a2)
{
  v3 = a2;
  v6 = v3;
  if (*(a1 + 40) == 1)
  {
    if (dword_1002F5E10 <= 30)
    {
      if (dword_1002F5E10 != -1 || (v4 = _LogCategory_Initialize(), v3 = v6, v4))
      {
        sub_1001D215C(v3);
      }
    }
  }

  else if (dword_1002F5E10 <= 90)
  {
    if (dword_1002F5E10 != -1 || (v5 = _LogCategory_Initialize(), v3 = v6, v5))
    {
      sub_1001D211C(v3);
    }
  }

  (*(*(a1 + 32) + 16))();
}

id sub_10000D45C(uint64_t a1)
{
  v2 = *(a1 + 32);
  v3 = *(v2 + 32);
  *(v2 + 32) = 0;

  v4 = *(a1 + 32);

  return [v4 _invalidated];
}

void sub_10000D5E8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = *(a1 + 32);
  if ((*(v4 + 29) & 1) == 0)
  {
    v5 = a1;
    *(v4 + 29) = 1;
    if ((*(*(a1 + 32) + 30) & 1) == 0 && dword_1002F5E10 <= 30)
    {
      if (dword_1002F5E10 != -1 || (a1 = _LogCategory_Initialize(), a1))
      {
        sub_1001D21B8(a1, a2, a3);
      }
    }

    v6 = *(v5 + 32);
    if (*(v6 + 28) == 1)
    {
      [v6 _invalidateDirect];
      v6 = *(v5 + 32);
    }

    if (*(v6 + 32))
    {
      [*(v6 + 32) invalidate];
      v6 = *(v5 + 32);
    }

    v10 = objc_retainBlock(*(v6 + 16));
    v7 = *(v5 + 32);
    v8 = *(v7 + 16);
    *(v7 + 16) = 0;

    if (v10)
    {
      v9 = BTErrorF(4294896148, "Invalidate called");
      v10[2](v10, v9);
    }

    [*(v5 + 32) _invalidated];
  }
}

void sub_10000D784(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = *(v1 + 48);
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_10000D7F8;
  block[3] = &unk_1002B6880;
  block[4] = v1;
  dispatch_async(v2, block);
}

uint64_t sub_10000DAF8()
{
  if (qword_1002FA020 != -1)
  {
    sub_1001D2250();
  }

  return atomic_fetch_add(&unk_1002FA028, 1u) + 1;
}

void *sub_10000E278(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 32);
  result = *(a1 + 40);
  if (v3 == result[4])
  {
    return [result xpcReceivedMessage:a2];
  }

  return result;
}

char *sub_10000E3B8(char *result)
{
  v2 = (result + 32);
  v1 = *(result + 4);
  if ((*(v1 + 24) & 1) == 0)
  {
    *(v1 + 24) = 1;
    if (dword_1002F6000 <= 30 && (dword_1002F6000 != -1 || _LogCategory_Initialize()))
    {
      sub_1001D23F4(v2);
    }

    v3 = *v2;
    objc_sync_enter(v3);
    v4 = *(*v2 + 4);
    v5 = v4;
    if (v4)
    {
      xpc_connection_cancel(v4);
    }

    objc_sync_exit(v3);
    v6 = *v2;

    return [v6 _invalidated];
  }

  return result;
}

id sub_10000E6C0(void *a1)
{
  if (dword_1002F6000 <= 30 && (dword_1002F6000 != -1 || _LogCategory_Initialize()))
  {
    sub_1001D2458();
  }

  v3 = a1[4];
  v2 = a1[5];
  v4 = a1[6];
  v5 = a1[7];

  return [v2 _sendAccessoryEventMessage:v4 eventType:2 destinationIdentifier:v3 completionHandler:v5];
}

id sub_10000E818(void *a1)
{
  if (dword_1002F6000 <= 30 && (dword_1002F6000 != -1 || _LogCategory_Initialize()))
  {
    sub_1001D2498();
  }

  v3 = a1[4];
  v2 = a1[5];
  v4 = a1[6];
  v5 = a1[7];

  return [v2 _sendAccessoryEventMessage:v4 eventType:12 destinationIdentifier:v3 completionHandler:v5];
}

id sub_10000E970(void *a1)
{
  if (dword_1002F6000 <= 30 && (dword_1002F6000 != -1 || _LogCategory_Initialize()))
  {
    sub_1001D24D8();
  }

  v3 = a1[4];
  v2 = a1[5];
  v4 = a1[6];
  v5 = a1[7];

  return [v2 _sendAccessoryEventMessage:v4 eventType:4 destinationIdentifier:v3 completionHandler:v5];
}

id sub_10000EAC8(void *a1)
{
  if (dword_1002F6000 <= 30 && (dword_1002F6000 != -1 || _LogCategory_Initialize()))
  {
    sub_1001D2518();
  }

  v3 = a1[4];
  v2 = a1[5];
  v4 = a1[6];
  v5 = a1[7];

  return [v2 _sendAccessoryEventMessage:v4 eventType:5 destinationIdentifier:v3 completionHandler:v5];
}

id sub_10000EC20(void *a1)
{
  if (dword_1002F6000 <= 30 && (dword_1002F6000 != -1 || _LogCategory_Initialize()))
  {
    sub_1001D2558();
  }

  v3 = a1[4];
  v2 = a1[5];
  v4 = a1[6];
  v5 = a1[7];

  return [v2 _sendDeviceConfig:v4 destinationIdentifier:v3 completionHandler:v5];
}

void sub_10000ED54(uint64_t a1)
{
  v2 = [@"Send getTipiTable message" dataUsingEncoding:4];
  if (dword_1002F6000 <= 30 && (dword_1002F6000 != -1 || _LogCategory_Initialize()))
  {
    sub_1001D2598();
  }

  [*(a1 + 40) _sendAccessoryEventMessage:v2 eventType:6 destinationIdentifier:*(a1 + 32) completionHandler:*(a1 + 48)];
}

id sub_10000EED8(void *a1)
{
  if (dword_1002F6000 <= 30 && (dword_1002F6000 != -1 || _LogCategory_Initialize()))
  {
    sub_1001D25D8();
  }

  v3 = a1[4];
  v2 = a1[5];
  v4 = a1[6];
  v5 = a1[7];

  return [v2 _sendAccessoryEventMessage:v4 eventType:8 destinationIdentifier:v3 completionHandler:v5];
}

void sub_10000F230(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 32);
  v3 = CUXPCDecodeNSErrorIfNeeded();
  (*(v2 + 16))(v2, v3);
}

void sub_10000F4E8(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 32);
  v3 = CUXPCDecodeNSErrorIfNeeded();
  (*(v2 + 16))(v2, v3);
}

void sub_10000FD08(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, ...)
{
  va_start(va, a19);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t sub_10000FD48(uint64_t result)
{
  v1 = *(*(*(result + 32) + 8) + 40);
  if (v1 && dword_1002F6000 <= 90)
  {
    if (dword_1002F6000 != -1)
    {
      return LogPrintF(&dword_1002F6000, "[AAController _xpcReceivedAccessoryEvent:]_block_invoke", 90, "### XPC receive accessory event failed: %@", v1);
    }

    v2 = result;
    result = _LogCategory_Initialize();
    if (result)
    {
      v1 = *(*(*(v2 + 32) + 8) + 40);
      return LogPrintF(&dword_1002F6000, "[AAController _xpcReceivedAccessoryEvent:]_block_invoke", 90, "### XPC receive accessory event failed: %@", v1);
    }
  }

  return result;
}

void sub_10000FF78(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  (*(v13 + 16))(v13, a2, a3, a4, a5, a6, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t sub_10000FFB4(uint64_t result)
{
  v1 = *(*(*(result + 32) + 8) + 40);
  if (v1 && dword_1002F6000 <= 90)
  {
    if (dword_1002F6000 != -1)
    {
      return LogPrintF(&dword_1002F6000, "[AAController _xpcReceivedAudioAccessoryDeviceInfoChange:]_block_invoke", 90, "### XPC accessory info change receive failed: %@", v1);
    }

    v2 = result;
    result = _LogCategory_Initialize();
    if (result)
    {
      v1 = *(*(*(v2 + 32) + 8) + 40);
      return LogPrintF(&dword_1002F6000, "[AAController _xpcReceivedAudioAccessoryDeviceInfoChange:]_block_invoke", 90, "### XPC accessory info change receive failed: %@", v1);
    }
  }

  return result;
}

void sub_10001024C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, ...)
{
  va_start(va, a16);
  (*(v16 + 16))(v16, a2, a3, a4, a5, a6, a7, a8);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t sub_100010284(uint64_t result)
{
  v1 = *(*(*(result + 32) + 8) + 40);
  if (v1 && dword_1002F6000 <= 90)
  {
    if (dword_1002F6000 != -1)
    {
      return LogPrintF(&dword_1002F6000, "[AAController _batteryInfoMessageReceived:fromDevice:]_block_invoke", 90, "### XPC receive BatteryInfo message failed: %@", v1);
    }

    v2 = result;
    result = _LogCategory_Initialize();
    if (result)
    {
      v1 = *(*(*(v2 + 32) + 8) + 40);
      return LogPrintF(&dword_1002F6000, "[AAController _batteryInfoMessageReceived:fromDevice:]_block_invoke", 90, "### XPC receive BatteryInfo message failed: %@", v1);
    }
  }

  return result;
}

void sub_10001051C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, ...)
{
  va_start(va, a16);
  (*(v16 + 16))(v16, a2, a3, a4, a5, a6, a7, a8);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t sub_100010554(uint64_t result)
{
  v1 = *(*(*(result + 32) + 8) + 40);
  if (v1 && dword_1002F6000 <= 90)
  {
    if (dword_1002F6000 != -1)
    {
      return LogPrintF(&dword_1002F6000, "[AAController _conversationDetectMessageReceived:fromDevice:]_block_invoke", 90, "### XPC receive CD message failed: %@", v1);
    }

    v2 = result;
    result = _LogCategory_Initialize();
    if (result)
    {
      v1 = *(*(*(v2 + 32) + 8) + 40);
      return LogPrintF(&dword_1002F6000, "[AAController _conversationDetectMessageReceived:fromDevice:]_block_invoke", 90, "### XPC receive CD message failed: %@", v1);
    }
  }

  return result;
}

void sub_1000108E8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, ...)
{
  va_start(va, a15);
  (*(v15 + 16))(v15, a2, a3, a4, a5, a6, a7, a8);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t sub_100010924(uint64_t result)
{
  v1 = *(*(*(result + 32) + 8) + 40);
  if (v1 && dword_1002F6000 <= 90)
  {
    if (dword_1002F6000 != -1)
    {
      return LogPrintF(&dword_1002F6000, "[AAController _accessoryUsageSummaryMessageReceived:fromDevice:]_block_invoke", 90, "### XPC receive AccessoryUsageSummary message failed: %@", v1);
    }

    v2 = result;
    result = _LogCategory_Initialize();
    if (result)
    {
      v1 = *(*(*(v2 + 32) + 8) + 40);
      return LogPrintF(&dword_1002F6000, "[AAController _accessoryUsageSummaryMessageReceived:fromDevice:]_block_invoke", 90, "### XPC receive AccessoryUsageSummary message failed: %@", v1);
    }
  }

  return result;
}

void sub_100010BBC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, ...)
{
  va_start(va, a16);
  (*(v16 + 16))(v16, a2, a3, a4, a5, a6, a7, a8);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t sub_100010BF4(uint64_t result)
{
  v1 = *(*(*(result + 32) + 8) + 40);
  if (v1 && dword_1002F6000 <= 90)
  {
    if (dword_1002F6000 != -1)
    {
      return LogPrintF(&dword_1002F6000, "[AAController _multimodalContextMessageReceived:fromDevice:]_block_invoke", 90, "### XPC receive Multimodal message failed: %@", v1);
    }

    v2 = result;
    result = _LogCategory_Initialize();
    if (result)
    {
      v1 = *(*(*(v2 + 32) + 8) + 40);
      return LogPrintF(&dword_1002F6000, "[AAController _multimodalContextMessageReceived:fromDevice:]_block_invoke", 90, "### XPC receive Multimodal message failed: %@", v1);
    }
  }

  return result;
}

void sub_100010EA4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, ...)
{
  va_start(va, a16);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t sub_100010EDC(uint64_t result)
{
  v1 = *(*(*(result + 32) + 8) + 40);
  if (v1 && dword_1002F6000 <= 90)
  {
    if (dword_1002F6000 != -1)
    {
      return LogPrintF(&dword_1002F6000, "[AAController _personalTranslationMessageReceived:fromDevice:]_block_invoke", 90, "### XPC receive Personal Translation message failed: %@", v1);
    }

    v2 = result;
    result = _LogCategory_Initialize();
    if (result)
    {
      v1 = *(*(*(v2 + 32) + 8) + 40);
      return LogPrintF(&dword_1002F6000, "[AAController _personalTranslationMessageReceived:fromDevice:]_block_invoke", 90, "### XPC receive Personal Translation message failed: %@", v1);
    }
  }

  return result;
}

void sub_100011174(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, ...)
{
  va_start(va, a16);
  (*(v16 + 16))(v16, a2, a3, a4, a5, a6, a7, a8);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t sub_1000111AC(uint64_t result)
{
  v1 = *(*(*(result + 32) + 8) + 40);
  if (v1 && dword_1002F6000 <= 90)
  {
    if (dword_1002F6000 != -1)
    {
      return LogPrintF(&dword_1002F6000, "[AAController _pmeConfigDataReceived:fromDevice:]_block_invoke", 90, "### XPC receive PME config failed: %@", v1);
    }

    v2 = result;
    result = _LogCategory_Initialize();
    if (result)
    {
      v1 = *(*(*(v2 + 32) + 8) + 40);
      return LogPrintF(&dword_1002F6000, "[AAController _pmeConfigDataReceived:fromDevice:]_block_invoke", 90, "### XPC receive PME config failed: %@", v1);
    }
  }

  return result;
}

void sub_10001144C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, ...)
{
  va_start(va, a16);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t sub_100011484(uint64_t result)
{
  v1 = *(*(*(result + 32) + 8) + 40);
  if (v1 && dword_1002F6000 <= 90)
  {
    if (dword_1002F6000 != -1)
    {
      return LogPrintF(&dword_1002F6000, "[AAController _rawGestureMessageReceived:fromDevice:]_block_invoke", 90, "### XPC receive Raw Gestures message failed: %@", v1);
    }

    v2 = result;
    result = _LogCategory_Initialize();
    if (result)
    {
      v1 = *(*(*(v2 + 32) + 8) + 40);
      return LogPrintF(&dword_1002F6000, "[AAController _rawGestureMessageReceived:fromDevice:]_block_invoke", 90, "### XPC receive Raw Gestures message failed: %@", v1);
    }
  }

  return result;
}

void sub_10001171C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, ...)
{
  va_start(va, a16);
  (*(v16 + 16))(v16, a2, a3, a4, a5, a6, a7, a8);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t sub_100011754(uint64_t result)
{
  v1 = *(*(*(result + 32) + 8) + 40);
  if (v1 && dword_1002F6000 <= 90)
  {
    if (dword_1002F6000 != -1)
    {
      return LogPrintF(&dword_1002F6000, "[AAController _sleepDetectionMessageReceived:fromDevice:]_block_invoke", 90, "### XPC receive Sleep Detection message failed: %@", v1);
    }

    v2 = result;
    result = _LogCategory_Initialize();
    if (result)
    {
      v1 = *(*(*(v2 + 32) + 8) + 40);
      return LogPrintF(&dword_1002F6000, "[AAController _sleepDetectionMessageReceived:fromDevice:]_block_invoke", 90, "### XPC receive Sleep Detection message failed: %@", v1);
    }
  }

  return result;
}

void sub_1000119F8(id a1)
{
  v1 = objc_alloc_init(AAPairedDeviceDaemon);
  v2 = qword_1002FA040;
  qword_1002FA040 = v1;

  _objc_release_x1(v1, v2);
}

void sub_100011CB0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = *(*(a1 + 32) + 8);
  obj = *(v3 + 40);
  NSAppendPrintF(&obj, "    %@\n", a3);
  objc_storeStrong((v3 + 40), obj);
}

void sub_100012484(uint64_t a1)
{
  v2 = [*(a1 + 32) _deviceWithIdentifier:*(a1 + 40)];
  v3 = v2;
  if (v2)
  {
    if ([v2 updateWithAADeviceConfig:*(a1 + 48)])
    {
      [*(a1 + 32) _saveDeviceRecordForDevice:v3];
      if (dword_1002F6070 <= 30 && (dword_1002F6070 != -1 || _LogCategory_Initialize()))
      {
        sub_1001D32E8(v3);
      }

      [*(a1 + 32) _pairedDeviceUpdated:v3];
    }

    else if (dword_1002F6070 <= 90 && (dword_1002F6070 != -1 || _LogCategory_Initialize()))
    {
      sub_1001D32A8(v3);
    }
  }

  else
  {
    sub_1001D3328();
  }
}

uint64_t sub_1000126E8(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = v3;
  if (v3)
  {
    if (dword_1002F6070 > 90)
    {
      goto LABEL_11;
    }

    v6 = v3;
    if (dword_1002F6070 == -1)
    {
      v3 = _LogCategory_Initialize();
      v4 = v6;
      if (!v3)
      {
        goto LABEL_11;
      }
    }

    v3 = LogPrintF(&dword_1002F6070, "[AAPairedDeviceDaemon _unpairDeviceWithIdentifier:]_block_invoke", 90, "### CBController delete failed for %@ with error: %{error}\n", *(a1 + 32), v4);
LABEL_5:
    v4 = v6;
    goto LABEL_11;
  }

  if (dword_1002F6070 <= 30)
  {
    v6 = 0;
    if (dword_1002F6070 != -1 || (v3 = _LogCategory_Initialize(), v4 = 0, v3))
    {
      v3 = sub_1001D33A4(a1);
      goto LABEL_5;
    }
  }

LABEL_11:

  return _objc_release_x1(v3, v4);
}

void sub_1000128F8(id a1)
{
  if (dword_1002F6070 <= 30)
  {
    if (dword_1002F6070 != -1 || (a1 = _LogCategory_Initialize(), a1))
    {
      sub_1001D33E8(a1, v1, v2);
    }
  }
}

uint64_t sub_100012950(uint64_t a1, void *a2)
{
  v3 = a2;
  v5 = v3;
  if (*(a1 + 32) == *(*(a1 + 40) + 8))
  {
    if (v3)
    {
      v9 = v3;
      if (dword_1002F6070 <= 90 && (dword_1002F6070 != -1 || _LogCategory_Initialize()))
      {
        sub_1001D3404(v9);
      }

      [*(a1 + 32) invalidate];
      v6 = *(a1 + 40);
      v7 = *(v6 + 8);
      *(v6 + 8) = 0;

      goto LABEL_7;
    }

    if (dword_1002F6070 <= 30)
    {
      v9 = 0;
      if (dword_1002F6070 != -1 || (v3 = _LogCategory_Initialize(), v5 = 0, v3))
      {
        v3 = sub_1001D3444(v3, v5, v4);
LABEL_7:
        v5 = v9;
      }
    }
  }

  return _objc_release_x1(v3, v5);
}

id sub_100012B1C(uint64_t a1)
{
  if (dword_1002F6070 <= 30 && (dword_1002F6070 != -1 || _LogCategory_Initialize()))
  {
    sub_1001D3460(a1);
  }

  v3 = *(a1 + 32);
  v2 = *(a1 + 40);

  return [v2 _aaDeviceRecordsRemovedWithRecords:v3];
}

void sub_100012F5C(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = *(*(a1 + 32) + 56);
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_10001302C;
  block[3] = &unk_1002B6CF0;
  v7 = v3;
  v8 = *(a1 + 40);
  v9 = *(a1 + 48);
  v5 = v3;
  dispatch_async(v4, block);
}

void *sub_10001302C(void *result)
{
  v1 = result;
  if (dword_1002F6070 <= 30)
  {
    if (dword_1002F6070 != -1 || (result = _LogCategory_Initialize(), result))
    {
      result = sub_1001D35E8(v1);
    }
  }

  if (!v1[4])
  {
    v2 = v1[6];

    return [v2 setCloudRecordInfoLoaded:1];
  }

  return result;
}

void sub_10001318C(id a1)
{
  if (dword_1002F6070 <= 30)
  {
    if (dword_1002F6070 != -1 || (a1 = _LogCategory_Initialize(), a1))
    {
      sub_1001D362C(a1, v1, v2);
    }
  }
}

uint64_t sub_1000131D8(uint64_t a1, void *a2)
{
  v3 = a2;
  v5 = v3;
  if (*(a1 + 32) == *(*(a1 + 40) + 32))
  {
    if (v3)
    {
      v9 = v3;
      if (dword_1002F6070 <= 90 && (dword_1002F6070 != -1 || _LogCategory_Initialize()))
      {
        sub_1001D3648(v9);
      }

      [*(a1 + 32) invalidate];
      v6 = *(a1 + 40);
      v7 = *(v6 + 32);
      *(v6 + 32) = 0;

      goto LABEL_7;
    }

    if (dword_1002F6070 <= 30)
    {
      v9 = 0;
      if (dword_1002F6070 != -1 || (v3 = _LogCategory_Initialize(), v5 = 0, v3))
      {
        v3 = sub_1001D3688(v3, v5, v4);
LABEL_7:
        v5 = v9;
      }
    }
  }

  return _objc_release_x1(v3, v5);
}

void *sub_100013554(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 32);
  result = *(a1 + 40);
  if (v3 == result[3])
  {
    return [result _coreBluetoothDeviceFound:a2];
  }

  return result;
}

void *sub_100013570(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 32);
  result = *(a1 + 40);
  if (v3 == result[3])
  {
    return [result _coreBluetoothDeviceLost:a2];
  }

  return result;
}

uint64_t sub_10001358C(uint64_t result)
{
  v1 = *(*(result + 40) + 24);
  if (*(result + 32) == v1 && dword_1002F6070 <= 30)
  {
    if (dword_1002F6070 != -1)
    {
      return LogPrintF(&dword_1002F6070, "[AAPairedDeviceDaemon _cbDiscoveryEnsureStarted]_block_invoke_3", 30, "%@ Interrupted", v1);
    }

    v2 = result;
    result = _LogCategory_Initialize();
    if (result)
    {
      v1 = *(*(v2 + 40) + 24);
      return LogPrintF(&dword_1002F6070, "[AAPairedDeviceDaemon _cbDiscoveryEnsureStarted]_block_invoke_3", 30, "%@ Interrupted", v1);
    }
  }

  return result;
}

uint64_t sub_100013624(uint64_t result)
{
  if (dword_1002F6070 <= 30)
  {
    v1 = result;
    if (dword_1002F6070 != -1)
    {
      return sub_1001D36A4(v1);
    }

    result = _LogCategory_Initialize();
    if (result)
    {
      return sub_1001D36A4(v1);
    }
  }

  return result;
}

uint64_t sub_100013680(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = v3;
  v5 = *(a1 + 40);
  v6 = *(v5 + 24);
  if (*(a1 + 32) == v6)
  {
    if (v3)
    {
      v11 = v3;
      if (dword_1002F6070 <= 90)
      {
        if (dword_1002F6070 == -1)
        {
          v7 = _LogCategory_Initialize();
          v5 = *(a1 + 40);
          if (!v7)
          {
            goto LABEL_10;
          }

          v6 = *(v5 + 24);
          v3 = v11;
        }

        LogPrintF(&dword_1002F6070, "[AAPairedDeviceDaemon _cbDiscoveryEnsureStarted]_block_invoke_5", 90, "%@ ### Activate failed: %@", v6, v3);
        v5 = *(a1 + 40);
      }

LABEL_10:
      [*(v5 + 24) invalidate];
      v8 = *(a1 + 40);
      v9 = *(v8 + 24);
      *(v8 + 24) = 0;

      goto LABEL_11;
    }

    if (dword_1002F6070 > 30)
    {
      goto LABEL_12;
    }

    v11 = 0;
    if (dword_1002F6070 != -1)
    {
LABEL_8:
      v3 = LogPrintF(&dword_1002F6070, "[AAPairedDeviceDaemon _cbDiscoveryEnsureStarted]_block_invoke_5", 30, "%@ Activated", v6);
LABEL_11:
      v4 = v11;
      goto LABEL_12;
    }

    v3 = _LogCategory_Initialize();
    v4 = 0;
    if (v3)
    {
      v6 = *(*(a1 + 40) + 24);
      goto LABEL_8;
    }
  }

LABEL_12:

  return _objc_release_x1(v3, v4);
}

void sub_1000145AC(uint64_t a1)
{
  v2 = *(*(a1 + 32) + 64);
  if (!v2)
  {
    v3 = objc_alloc_init(NSMutableArray);
    v4 = *(a1 + 32);
    v5 = *(v4 + 64);
    *(v4 + 64) = v3;

    v2 = *(*(a1 + 32) + 64);
  }

  v6 = (a1 + 40);
  if (([v2 containsObject:*(a1 + 40)] & 1) == 0)
  {
    [*(*(a1 + 32) + 64) addObject:*(a1 + 40)];
    if (dword_1002F6070 <= 30 && (dword_1002F6070 != -1 || _LogCategory_Initialize()))
    {
      sub_1001D39E4((a1 + 40));
    }

    v15 = 0u;
    v16 = 0u;
    v13 = 0u;
    v14 = 0u;
    v7 = [*(a1 + 32) pairedDevices];
    v8 = [v7 allValues];

    v9 = [v8 countByEnumeratingWithState:&v13 objects:v17 count:16];
    if (v9)
    {
      v10 = v9;
      v11 = *v14;
      do
      {
        for (i = 0; i != v10; i = i + 1)
        {
          if (*v14 != v11)
          {
            objc_enumerationMutation(v8);
          }

          [*v6 pairedDeviceUpdated:*(*(&v13 + 1) + 8 * i)];
        }

        v10 = [v8 countByEnumeratingWithState:&v13 objects:v17 count:16];
      }

      while (v10);
    }
  }
}

void sub_1000147D4(uint64_t a1)
{
  v2 = *(*(a1 + 32) + 64);
  if (v2)
  {
    if ([v2 containsObject:*(a1 + 40)])
    {
      [*(*(a1 + 32) + 64) removeObject:*(a1 + 40)];
      if (dword_1002F6070 <= 30 && (dword_1002F6070 != -1 || _LogCategory_Initialize()))
      {
        sub_1001D3A44((a1 + 40));
      }
    }
  }
}

uint64_t sub_1000148D4(uint64_t a1, uint64_t a2, uint64_t a3, const char *a4)
{

  return LogPrintF(a1, a2, 30, a4);
}

uint64_t sub_1000148F4()
{

  return _LogCategory_Initialize();
}

void sub_100014984(id a1)
{
  if (GestaltGetDeviceClass() != 7)
  {
    v1 = objc_alloc_init(AAConversationDetectSessionManager);
    v2 = qword_1002FA050;
    qword_1002FA050 = v1;

    _objc_release_x1(v1, v2);
  }
}

id sub_100014E60(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = a1;
  if (dword_1002F61A0 <= 30)
  {
    if (dword_1002F61A0 != -1 || (a1 = _LogCategory_Initialize(), a1))
    {
      sub_1001D3B08(a1, a2, a3);
    }
  }

  v4 = *(v3 + 32);

  return [v4 _prefsChanged];
}

void *sub_100014EC8(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 32);
  result = *(a1 + 40);
  if (v3 == result[13])
  {
    return [result _deviceFound:a2];
  }

  return result;
}

void *sub_100014EE4(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 32);
  result = *(a1 + 40);
  if (v3 == result[13])
  {
    return [result _deviceLost:a2];
  }

  return result;
}

uint64_t sub_100014F00(uint64_t result)
{
  v1 = *(result + 32);
  if (v1 == *(*(result + 40) + 104) && dword_1002F61A0 <= 30)
  {
    if (dword_1002F61A0 != -1)
    {
      return LogPrintF(&dword_1002F61A0, "[AAConversationDetectSessionManager activate]_block_invoke_4", 30, "%@ Interrupted", v1);
    }

    v2 = result;
    result = _LogCategory_Initialize();
    if (result)
    {
      v1 = *(v2 + 32);
      return LogPrintF(&dword_1002F61A0, "[AAConversationDetectSessionManager activate]_block_invoke_4", 30, "%@ Interrupted", v1);
    }
  }

  return result;
}

uint64_t sub_100014F94(uint64_t result)
{
  if (dword_1002F61A0 <= 30)
  {
    v1 = result;
    if (dword_1002F61A0 != -1)
    {
      return sub_1001D3B24(v1);
    }

    result = _LogCategory_Initialize();
    if (result)
    {
      return sub_1001D3B24(v1);
    }
  }

  return result;
}

uint64_t sub_100014FF0(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = v3;
  v5 = *(a1 + 40);
  v6 = *(v5 + 104);
  if (*(a1 + 32) == v6)
  {
    if (v3)
    {
      v11 = v3;
      if (dword_1002F61A0 <= 90)
      {
        if (dword_1002F61A0 == -1)
        {
          v7 = _LogCategory_Initialize();
          v5 = *(a1 + 40);
          if (!v7)
          {
            goto LABEL_10;
          }

          v6 = *(v5 + 104);
          v3 = v11;
        }

        LogPrintF(&dword_1002F61A0, "[AAConversationDetectSessionManager activate]_block_invoke_6", 90, "%@ ### Activate failed: %@", v6, v3);
        v5 = *(a1 + 40);
      }

LABEL_10:
      [*(v5 + 104) invalidate];
      v8 = *(a1 + 40);
      v9 = *(v8 + 104);
      *(v8 + 104) = 0;

      goto LABEL_11;
    }

    if (dword_1002F61A0 > 30)
    {
      goto LABEL_12;
    }

    v11 = 0;
    if (dword_1002F61A0 != -1)
    {
LABEL_8:
      v3 = LogPrintF(&dword_1002F61A0, "[AAConversationDetectSessionManager activate]_block_invoke_6", 30, "%@ Activated", v6);
LABEL_11:
      v4 = v11;
      goto LABEL_12;
    }

    v3 = _LogCategory_Initialize();
    v4 = 0;
    if (v3)
    {
      v6 = *(*(a1 + 40) + 104);
      goto LABEL_8;
    }
  }

LABEL_12:

  return _objc_release_x1(v3, v4);
}

void sub_1000152A4(id a1)
{
  if (dword_1002F61A0 <= 30)
  {
    if (dword_1002F61A0 != -1 || (a1 = _LogCategory_Initialize(), a1))
    {
      sub_1001D3BA8(a1, v1, v2);
    }
  }
}

void *sub_1000152F0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = *(a1 + 32);
  result = *(a1 + 40);
  if (v4 == result[1])
  {
    return [result _conversationDetectMessageReceived:a3 fromDeviceIdentifier:a2];
  }

  return result;
}

uint64_t sub_10001530C(uint64_t a1, void *a2)
{
  v3 = a2;
  v5 = v3;
  if (*(a1 + 32) == *(*(a1 + 40) + 8))
  {
    if (v3)
    {
      v9 = v3;
      if (dword_1002F61A0 <= 90 && (dword_1002F61A0 != -1 || _LogCategory_Initialize()))
      {
        sub_1001D3BC4(v9);
      }

      [*(a1 + 32) invalidate];
      v6 = *(a1 + 40);
      v7 = *(v6 + 8);
      *(v6 + 8) = 0;

      goto LABEL_7;
    }

    if (dword_1002F61A0 <= 30)
    {
      v9 = 0;
      if (dword_1002F61A0 != -1 || (v3 = _LogCategory_Initialize(), v5 = 0, v3))
      {
        v3 = sub_1001D3C04(v3, v5, v4);
LABEL_7:
        v5 = v9;
      }
    }
  }

  return _objc_release_x1(v3, v5);
}

uint64_t sub_1000158A8(uint64_t a1)
{
  v2 = [*(a1 + 32) userInfo];
  v3 = v2;
  if (v2)
  {
    v7 = v2;
    v4 = [v2 objectForKeyedSubscript:@"AAConversationDetectKeyIdentifier"];
    v5 = [v7 objectForKeyedSubscript:@"AAConversationDetectKeyData"];
    [*(a1 + 40) _conversationDetectMessageReceived:v5 fromDeviceIdentifier:v4];

LABEL_3:
    v3 = v7;
    goto LABEL_7;
  }

  if (dword_1002F61A0 <= 90)
  {
    v7 = 0;
    if (dword_1002F61A0 != -1 || (v2 = _LogCategory_Initialize(), v3 = 0, v2))
    {
      v2 = sub_1001D3DB8();
      goto LABEL_3;
    }
  }

LABEL_7:

  return _objc_release_x1(v2, v3);
}

uint64_t sub_1000163E8(uint64_t a1, void *a2)
{
  v3 = a2;
  v8 = v3;
  if (v3)
  {
    if (dword_1002F61A0 > 90)
    {
      goto LABEL_11;
    }

    if (dword_1002F61A0 == -1)
    {
      v5 = _LogCategory_Initialize();
      v3 = v8;
      if (!v5)
      {
        goto LABEL_11;
      }
    }

    LogPrintF(&dword_1002F61A0, "[AAConversationDetectSessionManager _sendConversationDetectMessage:destinationIdentifier:completion:]_block_invoke", 90, "Send CD Message <%@> failed with error: %@\n", *(a1 + 32), v3);
LABEL_5:
    v3 = v8;
    goto LABEL_11;
  }

  if (dword_1002F61A0 <= 30)
  {
    if (dword_1002F61A0 != -1 || (v4 = _LogCategory_Initialize(), v3 = 0, v4))
    {
      sub_1001D3FC8(a1);
      goto LABEL_5;
    }
  }

LABEL_11:
  v6 = *(a1 + 48);
  if (v6)
  {
    v6 = (*(v6 + 16))(v6, v8);
    v3 = v8;
  }

  return _objc_release_x1(v6, v3);
}

id sub_10001661C(uint64_t a1)
{
  v2 = *(a1 + 40);
  v3 = *(a1 + 44);
  v5 = *(a1 + 48);
  v4 = *(a1 + 52);
  v7 = *(a1 + 56);
  v6 = *(a1 + 60);
  v9 = *(a1 + 64);
  v8 = *(a1 + 68);
  v10 = *(a1 + 72);
  v11 = *(a1 + 76);
  v12 = *(a1 + 77);
  v13 = *(a1 + 81);
  v14 = *(a1 + 85);
  v15 = *(a1 + 89);
  v16 = *(a1 + 93);
  v17 = *(a1 + 97);
  v18 = *(a1 + 101);
  v19 = *(a1 + 105);
  v20 = *(a1 + 109);
  v21 = *(a1 + 113);
  v22 = *(a1 + 114);
  v23 = *(a1 + 116);
  v24 = *(a1 + 122);
  v25 = *(a1 + 118);
  v26 = *(a1 + 139);
  v74 = *(a1 + 123);
  v75 = v26;
  v27 = *(a1 + 171);
  v76 = *(a1 + 155);
  v77 = v27;
  if (dword_1002F61A0 <= 30)
  {
    v60 = v11;
    v61 = v13;
    v62 = v12;
    v63 = v15;
    v64 = v14;
    v65 = v17;
    v66 = v16;
    v67 = v18;
    v68 = v19;
    v69 = v20;
    v70 = v21;
    v71 = v23;
    v72 = v22;
    if (dword_1002F61A0 != -1 || _LogCategory_Initialize())
    {
      *&v73[0] = 0;
      NSAppendPrintF(v73, "\n-- CD Decision Logic Tunings Begin --\n");
      v59 = v24;
      v28 = *&v73[0];
      v95[0] = v28;
      NSAppendPrintF(v95, "    OVAD threshold: %0.2f, TVAD threshold: %0.2f\n", v2, v3);
      v58 = v25;
      v29 = v95[0];

      v94 = v29;
      NSAppendPrintF(&v94, "    Short conversation quiesce duration: %lu ms\n", v5);
      v30 = v94;

      v93 = v30;
      NSAppendPrintF(&v93, "    Medium conversation quiesce duration: %lu ms\n", v4);
      v31 = v93;

      v92 = v31;
      NSAppendPrintF(&v92, "    Long conversation quiesce duration: %lu ms\n", v7);
      v32 = v92;

      v91 = v32;
      NSAppendPrintF(&v91, "    Short conversation ending to default duration: %lu ms\n", v6);
      v33 = v91;

      v90 = v33;
      NSAppendPrintF(&v90, "    Medium conversation ending to default duration: %lu ms\n", v9);
      v34 = v90;

      v89 = v34;
      NSAppendPrintF(&v89, "    Long conversation ending to default duration: %lu ms\n", v8);
      v35 = v89;

      v88 = v35;
      NSAppendPrintF(&v88, "    Conversation start to active duration: %lu ms\n", v10);
      v36 = v88;

      v87 = v36;
      if (v60)
      {
        v37 = "yes";
      }

      else
      {
        v37 = "no";
      }

      NSAppendPrintF(&v87, "    Is AT enabled: %s\n", v37);
      v38 = v87;

      v86 = v38;
      NSAppendPrintF(&v86, "    Short conversation quiesce duration Min: %lu, Max: %lu ms\n", v62, v61);
      v39 = v86;

      v85 = v39;
      NSAppendPrintF(&v85, "    Medium conversation quiesce duration Min: %lu, Max: %lu ms\n", v64, v63);
      v40 = v85;

      v84 = v40;
      NSAppendPrintF(&v84, "    Long conversation quiesce duration Min: %lu, Max: %lu ms\n", v66, v65);
      v41 = v84;

      v83 = v41;
      NSAppendPrintF(&v83, "    Max AT false transitions per minute - short conversation: %lu\n", v67);
      v42 = v83;

      v82 = v42;
      NSAppendPrintF(&v82, "    Max AT false transitions per minute - medium conversation: %lu\n", v68);
      v43 = v82;

      v81 = v43;
      NSAppendPrintF(&v81, "    Max AT false transitions per minute - long conversation: %lu\n", v69);
      v44 = v81;

      v80 = v44;
      if (v70)
      {
        v45 = "yes";
      }

      else
      {
        v45 = "no";
      }

      NSAppendPrintF(&v80, "    Is MTA enabled: %s\n", v45);
      v46 = v80;

      v79 = v46;
      NSAppendPrintF(&v79, "    Recommended MTA aperture, begin: %d degree, end: %d degree\n", v72, v71);
      v47 = v79;

      v78 = v47;
      NSAppendPrintF(&v78, "-- CD Decision Logic Tunings End --\n");
      v48 = v78;

      v25 = v58;
      LogPrintF(&dword_1002F61A0, "[AAConversationDetectSessionManager setCDTunings:]_block_invoke", 30, "%@", v48);

      v24 = v59;
    }

    if (dword_1002F61A0 <= 30 && (dword_1002F61A0 != -1 || _LogCategory_Initialize()))
    {
      v49 = v25 | (v24 << 32);
      v50 = (v49 >> 8);
      *&v73[0] = 0;
      NSAppendPrintF(v73, "\n-- CD Manual End-pointing Tunings Begin --\n");
      v51 = *&v73[0];
      v95[0] = v51;
      v52 = "no";
      if (v49)
      {
        v52 = "yes";
      }

      NSAppendPrintF(v95, "    Is MTA enabled: %s\n", v52);
      v53 = v95[0];

      v94 = v53;
      NSAppendPrintF(&v94, "    Manual end-pointing tuning threshold: %lu\n", v50);
      v54 = v94;

      v93 = v54;
      NSAppendPrintF(&v93, "-- CD Manual End-pointing Tunings End --\n");
      v55 = v93;

      LogPrintF(&dword_1002F61A0, "[AAConversationDetectSessionManager setCDTunings:]_block_invoke", 30, "%@", v55);
    }
  }

  v56 = *(a1 + 32);
  v73[0] = v74;
  v73[1] = v75;
  v73[2] = v76;
  v73[3] = v77;
  return [v56 _setCDSignalAudioTunings:{v73, v11}];
}

void sub_100017280(uint64_t a1, uint64_t a2, void *a3)
{
  v3 = *(a1 + 32);
  v4 = *(a1 + 40);
  v5 = [a3 identifier];
  [v3 _sendConversationDetectMessage:v4 destinationIdentifier:v5 completion:0];
}

void sub_1000173E4(uint64_t a1, uint64_t a2, void *a3)
{
  v3 = *(a1 + 32);
  v4 = *(a1 + 40);
  v5 = [a3 identifier];
  [v3 _sendConversationDetectMessage:v4 destinationIdentifier:v5 completion:0];
}

void sub_100017548(uint64_t a1, uint64_t a2, void *a3)
{
  v3 = *(a1 + 32);
  v4 = *(a1 + 40);
  v5 = [a3 identifier];
  [v3 _sendConversationDetectMessage:v4 destinationIdentifier:v5 completion:0];
}

void sub_100018B68(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, ...)
{
  va_start(va, a21);
  (*(v21 + 16))(v21, a2, a3, a4, a5, a6, a7, a8);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void *sub_100018BCC(void *result)
{
  v1 = *(*(result[5] + 8) + 40);
  if (!v1)
  {
    return result;
  }

  v2 = result;
  if (dword_1002F61A0 <= 90)
  {
    if (dword_1002F61A0 == -1)
    {
      if (!_LogCategory_Initialize())
      {
        goto LABEL_7;
      }

      v1 = *(*(v2[5] + 8) + 40);
    }

    LogPrintF(&dword_1002F61A0, "[AAConversationDetectSessionManager _requestSiriAnnounce]_block_invoke", 90, "### Siri Announce request failed: %{error}", v1);
  }

LABEL_7:
  *(v2[4] + 177) = 0;
  [v2[4] _audioSessionEnsureStopped];
  v3 = v2[4];

  return [v3 _cdSessionEnsureDeactivated:0];
}

id sub_100018C94(uint64_t a1, uint64_t a2)
{
  v2 = a2;
  *(*(a1 + 32) + 177) = 0;
  *(*(a1 + 32) + 209) = a2;
  CFPrefs_SetValue();
  if (dword_1002F61A0 <= 30 && (dword_1002F61A0 != -1 || _LogCategory_Initialize()))
  {
    sub_1001D4330(v2);
  }

  [*(a1 + 32) _audioSessionEnsureStopped];
  v4 = *(a1 + 32);

  return [v4 _cdSessionEnsureDeactivated:0];
}

void sub_100018E1C(uint64_t *a1)
{
  v2 = a1 + 4;
  obj = a1[4];
  objc_sync_enter(obj);
  v3 = *v2;
  if ((*(*v2 + 17) & 1) == 0)
  {
    if (dword_1002F61A0 <= 30 && (dword_1002F61A0 != -1 || _LogCategory_Initialize()))
    {
      LogPrintF(&dword_1002F61A0, "[AAConversationDetectSessionManager _asyncAudioSessionDuckWithLevel:completion:]_block_invoke", 30, "Queued Ramp: abandon, audio session terminated");
    }

    goto LABEL_24;
  }

  if (*(v3 + 224))
  {
    objc_sync_exit(obj);

    if (dword_1002F61A0 <= 10 && (dword_1002F61A0 != -1 || _LogCategory_Initialize()))
    {
      sub_1001D4388(a1, v2);
    }

    v4 = +[AVAudioSession sharedInstance];
    v5 = [NSNumber numberWithDouble:*(*v2 + 200)];
    v6 = [NSNumber numberWithDouble:*(*v2 + 200)];
    v15 = 0;
    [v4 setDuckingFadeOutDuration:v5 fadeInDuration:v6 error:&v15];
    v7 = v15;

    if (!v7)
    {
      v8 = +[AVAudioSession sharedInstance];
      v9 = a1[5];
      v14 = 0;
      [v8 setDuckToLevelScalar:0 unduckToLevelScalar:v9 error:&v14];
      v7 = v14;
    }

    v10 = a1[6];
    if (v10)
    {
      (*(v10 + 16))(v10, v7);
    }

    return;
  }

  if (dword_1002F61A0 <= 30)
  {
    if (dword_1002F61A0 != -1)
    {
LABEL_16:
      v11 = *(v3 + 20);
      if (v11 > 0xB)
      {
        v12 = "?";
      }

      else
      {
        v12 = (&off_1002B7018)[v11];
      }

      LogPrintF(&dword_1002F61A0, "[AAConversationDetectSessionManager _asyncAudioSessionDuckWithLevel:completion:]_block_invoke", 30, "Queued Ramp: abandon, current CD signal %s", v12);
      goto LABEL_24;
    }

    if (_LogCategory_Initialize())
    {
      v3 = *v2;
      goto LABEL_16;
    }
  }

LABEL_24:
  objc_sync_exit(obj);
}

id sub_100019120(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = a1;
  if (dword_1002F61A0 <= 30)
  {
    if (dword_1002F61A0 != -1 || (a1 = _LogCategory_Initialize(), a1))
    {
      sub_1001D43D8(a1, a2, a3);
    }
  }

  [*(v3 + 32) _deregisterFromAVAudioSessionSpeechDetectionStyleChanges];
  v4 = *(v3 + 32);

  return [v4 _registerForAVAudioSessionSpeechDetectionStyleChanges];
}

id sub_100019654(uint64_t a1, uint64_t a2)
{
  result = objc_retainBlock(*(a2 + 40));
  *(a1 + 40) = result;
  return result;
}

uint64_t sub_100019688(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = v3;
  if (!v3)
  {
    v5 = *(*(*(a1 + 48) + 8) + 24);
    v12 = 0;
    v3 = [*(a1 + 32) floatValue];
    v4 = 0;
    if (v5 >= v6)
    {
      goto LABEL_11;
    }

    *(*(*(a1 + 48) + 8) + 24) = *(*(*(a1 + 56) + 8) + 24) + *(*(*(a1 + 48) + 8) + 24);
    v7 = *(*(*(a1 + 48) + 8) + 24);
    [*(a1 + 32) floatValue];
    if (v7 > *&v8)
    {
      [*(a1 + 32) floatValue];
      *(*(*(a1 + 48) + 8) + 24) = LODWORD(v8);
    }

    v9 = *(a1 + 40);
    LODWORD(v8) = *(*(*(a1 + 48) + 8) + 24);
    v10 = [NSNumber numberWithFloat:v8];
    [v9 _asyncAudioSessionDuckWithLevel:v10 completion:*(*(*(a1 + 64) + 8) + 40)];

    goto LABEL_10;
  }

  if (dword_1002F61A0 <= 30)
  {
    v12 = v3;
    if (dword_1002F61A0 != -1 || (v3 = _LogCategory_Initialize(), v4 = v12, v3))
    {
      v3 = sub_1001D442C(a1, v12);
LABEL_10:
      v4 = v12;
    }
  }

LABEL_11:

  return _objc_release_x1(v3, v4);
}

id sub_100019894(uint64_t a1)
{
  result = [*(a1 + 32) isEqualToString:@"speechDetectionStyle"];
  if (result)
  {
    v3 = [*(a1 + 40) objectForKeyedSubscript:NSKeyValueChangeNewKey];
    v4 = [v3 unsignedIntValue];

    v5 = *(a1 + 48);

    return [v5 _speechDetectionStyleChanged:v4];
  }

  return result;
}

void sub_10001A14C(uint64_t a1, void *a2, void *a3)
{
  v7 = a2;
  v5 = a3;
  if (*(a1 + 32) == *(*(a1 + 40) + 184))
  {
    v6 = *(a1 + 48);
    if (v6)
    {
      (*(v6 + 16))(v6, v7, v5);
    }

    if (!v5)
    {
      if (dword_1002F61A0 <= 30 && (dword_1002F61A0 != -1 || _LogCategory_Initialize()))
      {
        sub_1001D485C();
      }

      [*(a1 + 32) clearFence:@"com.apple.audioaccessoryd.cdFence"];
      [*(a1 + 40) _setPedestrianFenceWithHandler:*(a1 + 48)];
    }
  }
}

void sub_10001A3B8(uint64_t a1, void *a2, void *a3)
{
  v6 = a2;
  v5 = a3;
  if (v5)
  {
    if (dword_1002F61A0 <= 90 && (dword_1002F61A0 != -1 || _LogCategory_Initialize()))
    {
      sub_1001D491C(v5);
    }

    [*(a1 + 32) _stopPedestrianFenceSession];
  }

  else
  {
    if (dword_1002F61A0 <= 30 && (dword_1002F61A0 != -1 || _LogCategory_Initialize()))
    {
      sub_1001D495C();
    }

    [*(a1 + 32) _updateAccessoriesWithMotionState:1];
  }
}

id sub_10001A7B0(uint64_t a1)
{
  if (dword_1002F61A0 <= 30 && (dword_1002F61A0 != -1 || _LogCategory_Initialize()))
  {
    sub_1001D4A18(a1);
  }

  result = [*(a1 + 32) headGesture];
  if (result == 1)
  {
    v3 = *(a1 + 40);

    return [v3 _updateAccessoriesWithMotionState:2];
  }

  return result;
}

uint64_t sub_10001A8AC(uint64_t result)
{
  if (dword_1002F61A0 <= 30)
  {
    v1 = result;
    if (dword_1002F61A0 != -1)
    {
      return sub_1001D4AB0(v1);
    }

    result = _LogCategory_Initialize();
    if (result)
    {
      return sub_1001D4AB0(v1);
    }
  }

  return result;
}

id sub_10001A9D4(uint64_t a1)
{
  v2 = *(*(a1 + 32) + 228);
  state64 = 0;
  notify_get_state(v2, &state64);
  v3 = state64;
  v4 = state64 != 0;
  if (dword_1002F61A0 <= 30 && (dword_1002F61A0 != -1 || _LogCategory_Initialize()))
  {
    sub_1001D4B28(v3 != 0);
  }

  *(*(a1 + 32) + 178) = v4;
  v5 = *(a1 + 32);
  if (v5[178] == 1)
  {
    v5[116] = 1;
    v5 = *(a1 + 32);
  }

  return [v5 _updatePauseState];
}

void sub_10001B624(id a1)
{
  v1 = objc_alloc_init(AADeviceManagerDaemon);
  v2 = qword_1002FA060;
  qword_1002FA060 = v1;

  _objc_release_x1(v1, v2);
}

void sub_10001B920(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = *(*(a1 + 32) + 8);
  obj = *(v3 + 40);
  NSAppendPrintF(&obj, "    %@\n", a3);
  objc_storeStrong((v3 + 40), obj);
}

id sub_10001BC54(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = a1;
  if (dword_1002F62E0 <= 30)
  {
    if (dword_1002F62E0 != -1 || (a1 = _LogCategory_Initialize(), a1))
    {
      sub_1001D5898(a1, a2, a3);
    }
  }

  v4 = *(v3 + 32);

  return [v4 _prefsChanged];
}

void sub_10001BF74(id a1)
{
  if (dword_1002F62E0 <= 30)
  {
    if (dword_1002F62E0 != -1 || (a1 = _LogCategory_Initialize(), a1))
    {
      sub_1001D594C(a1, v1, v2);
    }
  }
}

uint64_t sub_10001BFCC(uint64_t a1, void *a2)
{
  v3 = a2;
  v5 = v3;
  if (*(a1 + 32) == *(*(a1 + 40) + 8))
  {
    if (v3)
    {
      v9 = v3;
      if (dword_1002F62E0 <= 90 && (dword_1002F62E0 != -1 || _LogCategory_Initialize()))
      {
        sub_1001D5968(v9);
      }

      [*(a1 + 32) invalidate];
      v6 = *(a1 + 40);
      v7 = *(v6 + 8);
      *(v6 + 8) = 0;

      goto LABEL_7;
    }

    if (dword_1002F62E0 <= 30)
    {
      v9 = 0;
      if (dword_1002F62E0 != -1 || (v3 = _LogCategory_Initialize(), v5 = 0, v3))
      {
        v3 = sub_1001D59A8(v3, v5, v4);
LABEL_7:
        v5 = v9;
      }
    }
  }

  return _objc_release_x1(v3, v5);
}

uint64_t sub_10001C430(uint64_t a1, void *a2)
{
  v3 = a2;
  v8 = v3;
  if (v3)
  {
    if (dword_1002F62E0 <= 90)
    {
      if (dword_1002F62E0 != -1 || (v4 = _LogCategory_Initialize(), v3 = v8, v4))
      {
        sub_1001D59E0(v3);
LABEL_15:
        v3 = v8;
      }
    }
  }

  else if (dword_1002F62E0 <= 30)
  {
    if (dword_1002F62E0 != -1 || (v5 = _LogCategory_Initialize(), v3 = 0, v5))
    {
      sub_1001D5A20(a1);
      goto LABEL_15;
    }
  }

  v6 = *(a1 + 48);
  if (v6)
  {
    v6 = (*(v6 + 16))(v6, v8);
    v3 = v8;
  }

  return _objc_release_x1(v6, v3);
}

void sub_10001D120(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, ...)
{
  va_start(va, a26);
  (*(v26 + 16))(v26, a2, a3, a4, a5, a6, a7, a8);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t sub_10001D15C(void *a1)
{
  result = *(*(a1[6] + 8) + 40);
  if (result)
  {
    if (dword_1002F62E0 <= 90 && (dword_1002F62E0 != -1 || _LogCategory_Initialize()))
    {
      v3 = a1[4];
      v4 = CUPrintNSError();
      LogPrintF(&dword_1002F62E0, "[AADeviceManagerDaemon _sendDeviceConfig:identifier:completion:]_block_invoke", 90, "## Unable to send config to device with identifier: %@, error: %@", v3, v4);
    }

    result = a1[5];
    if (result)
    {
      v5 = *(result + 16);

      return v5();
    }
  }

  return result;
}

uint64_t sub_10001D254(uint64_t a1, void *a2)
{
  v3 = a2;
  if (v3)
  {
    v4 = *(a1 + 56);
    if (!v4)
    {
      goto LABEL_6;
    }

    v6 = v3;
    v4 = v4[2]();
  }

  else
  {
    v6 = 0;
    v4 = [*(a1 + 32) _sendConfigOverAAController:*(a1 + 40) device:*(a1 + 48) completion:*(a1 + 56)];
  }

  v3 = v6;
LABEL_6:

  return _objc_release_x1(v4, v3);
}

void sub_10001E178(uint64_t a1)
{
  v15 = 0u;
  v16 = 0u;
  v13 = 0u;
  v14 = 0u;
  v2 = [*(*(a1 + 32) + 40) allValues];
  v3 = [v2 countByEnumeratingWithState:&v13 objects:v17 count:16];
  if (v3)
  {
    v4 = v3;
    v5 = *v14;
    while (2)
    {
      for (i = 0; i != v4; i = i + 1)
      {
        if (*v14 != v5)
        {
          objc_enumerationMutation(v2);
        }

        v7 = *(*(&v13 + 1) + 8 * i);
        v8 = [*(a1 + 40) uppercaseString];
        v9 = [v7 bluetoothAddress];
        v10 = [v9 uppercaseString];
        v11 = [v8 isEqualToString:v10];

        if (v11)
        {
          if (*(a1 + 48) != [v7 farFieldSessionOnGoing])
          {
            if (dword_1002F62E0 <= 50 && (dword_1002F62E0 != -1 || _LogCategory_Initialize()))
            {
              sub_1001D5F3C((a1 + 40));
            }

            [v7 setFarFieldSessionOnGoing:*(a1 + 48)];
            v12 = +[AAServicesDaemon sharedAAServicesDaemon];
            [v12 reportDeviceFound:v7];
          }

          goto LABEL_15;
        }
      }

      v4 = [v2 countByEnumeratingWithState:&v13 objects:v17 count:16];
      if (v4)
      {
        continue;
      }

      break;
    }
  }

LABEL_15:
}

void sub_10001E508(id a1)
{
  if (dword_1002F62E0 <= 30)
  {
    if (dword_1002F62E0 != -1 || (a1 = _LogCategory_Initialize(), a1))
    {
      sub_1001D5FC0(a1, v1, v2);
    }
  }
}

uint64_t sub_10001E554(uint64_t a1, void *a2)
{
  v3 = a2;
  v5 = v3;
  if (*(a1 + 32) == *(*(a1 + 40) + 32))
  {
    if (v3)
    {
      v9 = v3;
      if (dword_1002F62E0 <= 90 && (dword_1002F62E0 != -1 || _LogCategory_Initialize()))
      {
        sub_1001D5FDC(v9);
      }

      [*(a1 + 32) invalidate];
      v6 = *(a1 + 40);
      v7 = *(v6 + 32);
      *(v6 + 32) = 0;

      goto LABEL_7;
    }

    if (dword_1002F62E0 <= 30)
    {
      v9 = 0;
      if (dword_1002F62E0 != -1 || (v3 = _LogCategory_Initialize(), v5 = 0, v3))
      {
        v3 = sub_1001D601C(v3, v5, v4);
LABEL_7:
        v5 = v9;
      }
    }
  }

  return _objc_release_x1(v3, v5);
}

void *sub_10001E8C4(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 32);
  result = *(a1 + 40);
  if (v3 == result[3])
  {
    return [result _coreBluetoothDeviceFound:a2];
  }

  return result;
}

void *sub_10001E8E0(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 32);
  result = *(a1 + 40);
  if (v3 == result[3])
  {
    return [result _coreBluetoothDeviceLost:a2];
  }

  return result;
}

uint64_t sub_10001E8FC(uint64_t result)
{
  v1 = *(*(result + 40) + 24);
  if (*(result + 32) == v1 && dword_1002F62E0 <= 30)
  {
    if (dword_1002F62E0 != -1)
    {
      return LogPrintF(&dword_1002F62E0, "[AADeviceManagerDaemon _cbDiscoveryEnsureStarted]_block_invoke_3", 30, "%@ Interrupted", v1);
    }

    v2 = result;
    result = _LogCategory_Initialize();
    if (result)
    {
      v1 = *(*(v2 + 40) + 24);
      return LogPrintF(&dword_1002F62E0, "[AADeviceManagerDaemon _cbDiscoveryEnsureStarted]_block_invoke_3", 30, "%@ Interrupted", v1);
    }
  }

  return result;
}

uint64_t sub_10001E994(uint64_t result)
{
  if (dword_1002F62E0 <= 30)
  {
    v1 = result;
    if (dword_1002F62E0 != -1)
    {
      return sub_1001D6038(v1);
    }

    result = _LogCategory_Initialize();
    if (result)
    {
      return sub_1001D6038(v1);
    }
  }

  return result;
}

uint64_t sub_10001E9F0(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = v3;
  v5 = *(a1 + 40);
  v6 = *(v5 + 24);
  if (*(a1 + 32) == v6)
  {
    if (v3)
    {
      v11 = v3;
      if (dword_1002F62E0 <= 90)
      {
        if (dword_1002F62E0 == -1)
        {
          v7 = _LogCategory_Initialize();
          v5 = *(a1 + 40);
          if (!v7)
          {
            goto LABEL_10;
          }

          v6 = *(v5 + 24);
          v3 = v11;
        }

        LogPrintF(&dword_1002F62E0, "[AADeviceManagerDaemon _cbDiscoveryEnsureStarted]_block_invoke_5", 90, "%@ ### Activate failed: %@", v6, v3);
        v5 = *(a1 + 40);
      }

LABEL_10:
      [*(v5 + 24) invalidate];
      v8 = *(a1 + 40);
      v9 = *(v8 + 24);
      *(v8 + 24) = 0;

      goto LABEL_11;
    }

    if (dword_1002F62E0 > 30)
    {
      goto LABEL_12;
    }

    v11 = 0;
    if (dword_1002F62E0 != -1)
    {
LABEL_8:
      v3 = LogPrintF(&dword_1002F62E0, "[AADeviceManagerDaemon _cbDiscoveryEnsureStarted]_block_invoke_5", 30, "%@ Activated", v6);
LABEL_11:
      v4 = v11;
      goto LABEL_12;
    }

    v3 = _LogCategory_Initialize();
    v4 = 0;
    if (v3)
    {
      v6 = *(*(a1 + 40) + 24);
      goto LABEL_8;
    }
  }

LABEL_12:

  return _objc_release_x1(v3, v4);
}

void sub_10001EF10(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_10001EF28(uint64_t a1, void *a2, _BYTE *a3)
{
  v8 = a2;
  v6 = [v8 coreBluetoothDevice];
  v7 = [v6 deviceFlags];

  if ((v7 & 0x40) != 0)
  {
    objc_storeStrong((*(*(a1 + 32) + 8) + 40), a2);
    *a3 = 1;
  }
}

uint64_t sub_10001EFBC(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = v3;
  if (v3)
  {
    if (dword_1002F62E0 > 90)
    {
      goto LABEL_11;
    }

    v7 = v3;
    if (dword_1002F62E0 == -1)
    {
      v3 = _LogCategory_Initialize();
      v4 = v7;
      if (!v3)
      {
        goto LABEL_11;
      }
    }

    v5 = [v4 localizedDescription];
    LogPrintF(&dword_1002F62E0, "[AADeviceManagerDaemon _sendDEOCTempDisableIntervalIfNeeded:]_block_invoke", 90, "Failed to send DEOC Temp disable interval: %@", v5);
LABEL_5:

    v4 = v7;
    goto LABEL_11;
  }

  if (dword_1002F62E0 <= 30)
  {
    v7 = 0;
    if (dword_1002F62E0 != -1 || (v3 = _LogCategory_Initialize(), v4 = 0, v3))
    {
      sub_1001D60FC(a1, &v8);
      v5 = v8;
      goto LABEL_5;
    }
  }

LABEL_11:

  return _objc_release_x1(v3, v4);
}

uint64_t sub_10001F0B4(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = v3;
  if (!v3)
  {
    v6 = 0;
    if (dword_1002F62E0 <= 30 && (dword_1002F62E0 != -1 || _LogCategory_Initialize()))
    {
      sub_1001D61B4(a1);
    }

    [*(a1 + 32) setDynamicEndOfChargeEnabled:1];
    v3 = [*(a1 + 40) _sendDEOCTempDisableIntervalIfNeeded:*(a1 + 32)];
    goto LABEL_10;
  }

  if (dword_1002F62E0 <= 90)
  {
    v6 = v3;
    if (dword_1002F62E0 != -1 || (v3 = _LogCategory_Initialize(), v4 = v6, v3))
    {
      sub_1001D6158(v4);
LABEL_10:
      v4 = v6;
    }
  }

  return _objc_release_x1(v3, v4);
}

uint64_t sub_10001F484(uint64_t a1, void *a2)
{
  v3 = a2;
  v7 = v3;
  if (v3)
  {
    if (dword_1002F62E0 <= 90)
    {
      if (dword_1002F62E0 != -1 || (v4 = _LogCategory_Initialize(), v3 = v7, v4))
      {
        LogPrintF(&dword_1002F62E0, "[AADeviceManagerDaemon _sendConfigOverCBController:device:completion:]_block_invoke", 90, "## sending CBDeviceSetting %@ failed: %@", *(a1 + 32), v3);
        v3 = v7;
      }
    }
  }

  v5 = *(a1 + 40);
  if (v5)
  {
    v5 = (*(v5 + 16))(v5, v7);
    v3 = v7;
  }

  return _objc_release_x1(v5, v3);
}

void sub_10001F698(uint64_t a1)
{
  v2 = (a1 + 32);
  if ([*(a1 + 32) headGesture] == 1)
  {
    v3 = 2;
    v4 = 1;
  }

  else
  {
    v5 = [*v2 headGesture];
    v4 = v5 == 2;
    if (v5 == 2)
    {
      v3 = 3;
    }

    else
    {
      v3 = 0;
    }
  }

  v7 = *(a1 + 40);
  v6 = a1 + 40;
  v8 = [v7 _getCurrentAudioOwner];
  v9 = v8;
  if (v4 && v8)
  {
    v12 = v8;
    if (dword_1002F62E0 <= 30)
    {
      if (dword_1002F62E0 != -1 || (v10 = _LogCategory_Initialize(), v9 = v12, v10))
      {
        sub_1001D6214(v2, v6, v3);
        v9 = v12;
      }
    }

    [v9 setDetectedHeadGesture:v3];
    v11 = +[AAServicesDaemon sharedAAServicesDaemon];
    [v11 reportHeadGestureDetected:v12];

    v9 = v12;
    *(*v6 + 76) = v3;
  }
}

uint64_t sub_10001F81C(uint64_t result)
{
  if (dword_1002F62E0 <= 30)
  {
    v1 = result;
    if (dword_1002F62E0 != -1)
    {
      return sub_1001D62F8(v1);
    }

    result = _LogCategory_Initialize();
    if (result)
    {
      return sub_1001D62F8(v1);
    }
  }

  return result;
}

uint64_t sub_10001FD2C(uint64_t a1)
{
  v2 = (a1 + 40);
  v3 = *(a1 + 32);
  v4 = [*(a1 + 40) identifier];
  v8 = [v3 _deviceWithIdentifier:v4];

  v6 = v8;
  if (v8)
  {
    [v8 updateWithPairedAADevice:*v2];
    if (dword_1002F62E0 <= 30 && (dword_1002F62E0 != -1 || _LogCategory_Initialize()))
    {
      sub_1001D6400(v8);
    }

    v5 = [*(a1 + 32) _accessoryDeviceLost:v8];
    goto LABEL_6;
  }

  if (dword_1002F62E0 <= 30)
  {
    if (dword_1002F62E0 != -1 || (v5 = _LogCategory_Initialize(), v6 = 0, v5))
    {
      v5 = sub_1001D6440(v2);
LABEL_6:
      v6 = v8;
    }
  }

  return _objc_release_x1(v5, v6);
}

void sub_10001FEE0(uint64_t a1)
{
  v2 = (a1 + 40);
  v3 = [*(a1 + 32) _deviceWithIdentifier:*(a1 + 40)];
  v7 = v3;
  if (v3)
  {
    v5 = *(a1 + 48);
    v4 = (a1 + 48);
    if (v5 != [v3 smartRoutingStateFlags])
    {
      if (dword_1002F62E0 <= 30 && (dword_1002F62E0 != -1 || _LogCategory_Initialize()))
      {
        sub_1001D6484(v2, v7, v4);
      }

      [v7 setSmartRoutingStateFlags:*v4];
      v6 = +[AAServicesDaemon sharedAAServicesDaemon];
      [v6 reportDeviceFound:v7];
    }
  }

  else
  {
    sub_1001D6530(v2);
  }
}

uint64_t sub_100020118(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = v3;
  if (v3)
  {
    if (dword_1002F62E0 <= 90)
    {
      v6 = v3;
      if (dword_1002F62E0 != -1 || (v3 = _LogCategory_Initialize(), v4 = v6, v3))
      {
        v3 = sub_1001D65B0(v4);
LABEL_13:
        v4 = v6;
      }
    }
  }

  else if (dword_1002F62E0 <= 30)
  {
    v6 = 0;
    if (dword_1002F62E0 != -1 || (v3 = _LogCategory_Initialize(), v4 = 0, v3))
    {
      sub_1001D65F0(a1);
      goto LABEL_13;
    }
  }

  return _objc_release_x1(v3, v4);
}

void sub_100020268(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = *(a1 + 32);
  v5 = *(v4 + 48);
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_100020304;
  v7[3] = &unk_1002B6D18;
  v8 = v3;
  v9 = v4;
  v6 = v3;
  dispatch_async(v5, v7);
}

void sub_100020304(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (*(a1 + 32))
  {
    if (dword_1002F62E0 <= 30)
    {
      if (dword_1002F62E0 != -1 || (a1 = _LogCategory_Initialize(), a1))
      {
        sub_1001D6664(a1, a2, a3);
      }
    }
  }

  else
  {
    [*(a1 + 40) _setHRTFAssetDownloadOTA];
    v7 = 0;
    v8 = &v7;
    v9 = 0x2050000000;
    v3 = qword_1002FA070;
    v10 = qword_1002FA070;
    if (!qword_1002FA070)
    {
      v6[0] = _NSConcreteStackBlock;
      v6[1] = 3221225472;
      v6[2] = sub_100020680;
      v6[3] = &unk_1002B6C00;
      v6[4] = &v7;
      sub_100020680(v6);
      v3 = v8[3];
    }

    v4 = v3;
    _Block_object_dispose(&v7, 8);
    v5 = [[v3 alloc] initWithCameraSession:0];
    [v5 downloadHRTFAsset:0 withCompletion:&stru_1002B7270];
  }
}

void sub_100020424(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_10002043C(id a1, BOOL a2, NSString *a3, NSError *a4)
{
  v5 = a2;
  v7 = a3;
  v6 = a4;
  if (dword_1002F62E0 <= 30 && (dword_1002F62E0 != -1 || _LogCategory_Initialize()))
  {
    LogPrintF(&dword_1002F62E0, "[AADeviceManagerDaemon downloadHRTFAsset]_block_invoke_3", 30, "Spatial Profile: downloadHRTFAsset isDownloaded %d, path %@ error %@", v5, v7, v6);
  }
}

Class sub_100020680(uint64_t a1)
{
  v4[0] = 0;
  if (!qword_1002FA078)
  {
    v4[1] = _NSConcreteStackBlock;
    v4[2] = 3221225472;
    v4[3] = sub_1000207C4;
    v4[4] = &unk_1002B72D0;
    v4[5] = v4;
    v5 = off_1002B72B8;
    v6 = 0;
    qword_1002FA078 = _sl_dlopen();
    v2 = v4[0];
    if (qword_1002FA078)
    {
      if (!v4[0])
      {
        goto LABEL_4;
      }
    }

    else
    {
      v2 = abort_report_np("%s", v4[0]);
    }

    free(v2);
  }

LABEL_4:
  result = objc_getClass("HRTFEnrollmentSession");
  *(*(*(a1 + 32) + 8) + 24) = result;
  if (!*(*(*(a1 + 32) + 8) + 24))
  {
    sub_1001D6680();
  }

  qword_1002FA070 = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

uint64_t sub_1000207C4(uint64_t a1)
{
  result = _sl_dlopen();
  qword_1002FA078 = result;
  return result;
}

void sub_10002096C(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  if (v6)
  {
    v7 = v6;
    if (dword_1002F6410 <= 90 && (dword_1002F6410 != -1 || _LogCategory_Initialize()))
    {
      sub_1001D66A8(v7);
    }

LABEL_11:
    v9 = *(a1 + 56);
    if (v9)
    {
      (*(v9 + 16))(v9, v7);
    }

    goto LABEL_24;
  }

  v8 = [v5 currentCampaign];

  if (v8)
  {
    if (dword_1002F6410 <= 30 && (dword_1002F6410 != -1 || _LogCategory_Initialize()))
    {
      sub_1001D66E8();
    }

    v7 = [NSError errorWithDomain:@"AAFeedbackErrorDomain" code:1 userInfo:0];
    goto LABEL_11;
  }

  v10 = [v5 errors];
  v11 = [v10 lastObject];

  if ([v5 declineCount] < 1)
  {
    v13 = [[FBKSForm alloc] initWithIdentifier:*(a1 + 32)];
    [v13 setAuthenticationMethod:2];
    v14 = [[FBKSDraftLauncher alloc] initWithFeedbackForm:v13];
    v15 = objc_alloc_init(FBKSLaunchConfiguration);
    v16 = v15;
    if (*(a1 + 40))
    {
      [v15 setLocalizedPromptTitle:?];
    }

    else
    {
      v17 = [*(a1 + 48) _feedbackCampainLocalizedTitleForCampain:*(a1 + 72)];
      [v16 setLocalizedPromptTitle:v17];
    }

    [v16 setPromptStyle:*(a1 + 64)];
    v18[0] = _NSConcreteStackBlock;
    v18[1] = 3221225472;
    v18[2] = sub_100020C40;
    v18[3] = &unk_1002B6A10;
    v19 = *(a1 + 56);
    [v14 collectFeedbackWithLaunchConfiguration:v16 completion:v18];

    v7 = 0;
  }

  else
  {
    if (dword_1002F6410 <= 30 && (dword_1002F6410 != -1 || _LogCategory_Initialize()))
    {
      sub_1001D6708(v5);
    }

    v7 = [NSError errorWithDomain:@"AAFeedbackErrorDomain" code:2 userInfo:0];
    v12 = *(a1 + 56);
    if (v12)
    {
      (*(v12 + 16))(v12, v7);
    }
  }

LABEL_24:
}

uint64_t sub_100020C40(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = v3;
  if (!v3)
  {
    v6 = *(a1 + 32);
    if (!v6)
    {
      goto LABEL_10;
    }

    v7 = *(v6 + 16);
    v9 = 0;
    goto LABEL_9;
  }

  v9 = v3;
  if (dword_1002F6410 <= 90)
  {
    if (dword_1002F6410 != -1 || (v5 = _LogCategory_Initialize(), v4 = v9, v5))
    {
      sub_1001D674C(v4);
      v4 = v9;
    }
  }

  v6 = *(a1 + 32);
  if (v6)
  {
    v7 = *(v6 + 16);
LABEL_9:
    v6 = v7();
    v4 = v9;
  }

LABEL_10:

  return _objc_release_x1(v6, v4);
}

void sub_100020DDC(id a1)
{
  v1 = objc_alloc_init(AAServicesDaemon);
  v2 = qword_1002FA080;
  qword_1002FA080 = v1;

  _objc_release_x1(v1, v2);
}

id sub_100021828(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = a1;
  if (dword_1002F6480 <= 30)
  {
    if (dword_1002F6480 != -1 || (a1 = _LogCategory_Initialize(), a1))
    {
      sub_1001D6E04(a1, a2, a3);
    }
  }

  v4 = *(v3 + 32);

  return [v4 _activate];
}

id sub_100021F54(uint64_t a1)
{
  v2 = *(*(a1 + 32) + 200);
  state64 = 0;
  notify_get_state(v2, &state64);
  if (dword_1002F6480 <= 30)
  {
    v3 = state64;
    if (dword_1002F6480 != -1 || _LogCategory_Initialize())
    {
      sub_1001D6E70(v3);
    }
  }

  return [*(a1 + 32) _muteStateChanged];
}

id sub_100021FD4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = a1;
  if (dword_1002F6480 <= 30)
  {
    if (dword_1002F6480 != -1 || (a1 = _LogCategory_Initialize(), a1))
    {
      sub_1001D6EB0(a1, a2, a3);
    }
  }

  v4 = *(v3 + 32);

  return [v4 _prefsChanged];
}

void *sub_100022058(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 32);
  result = *(a1 + 40);
  if (v3 == result[8])
  {
    return [result _deviceFound:a2];
  }

  return result;
}

void *sub_100022074(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 32);
  result = *(a1 + 40);
  if (v3 == result[8])
  {
    return [result _deviceLost:a2];
  }

  return result;
}

uint64_t sub_100022090(uint64_t result)
{
  v1 = *(result + 32);
  if (v1 == *(*(result + 40) + 64) && dword_1002F6480 <= 30)
  {
    if (dword_1002F6480 != -1)
    {
      return LogPrintF(&dword_1002F6480, "[AAServicesDaemon _activate]_block_invoke_6", 30, "%@ Interrupted", v1);
    }

    v2 = result;
    result = _LogCategory_Initialize();
    if (result)
    {
      v1 = *(v2 + 32);
      return LogPrintF(&dword_1002F6480, "[AAServicesDaemon _activate]_block_invoke_6", 30, "%@ Interrupted", v1);
    }
  }

  return result;
}

void sub_100022124(uint64_t result)
{
  if (dword_1002F6480 <= 30 && (dword_1002F6480 != -1 || _LogCategory_Initialize()))
  {
    sub_1001D6ECC();
  }
}

uint64_t sub_100022180(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = v3;
  v5 = *(a1 + 40);
  v6 = *(v5 + 64);
  if (*(a1 + 32) == v6)
  {
    if (v3)
    {
      v11 = v3;
      if (dword_1002F6480 <= 90)
      {
        if (dword_1002F6480 == -1)
        {
          v7 = _LogCategory_Initialize();
          v5 = *(a1 + 40);
          if (!v7)
          {
            goto LABEL_10;
          }

          v6 = *(v5 + 64);
          v3 = v11;
        }

        LogPrintF(&dword_1002F6480, "[AAServicesDaemon _activate]_block_invoke_8", 90, "%@ ### Activate failed: %@", v6, v3);
        v5 = *(a1 + 40);
      }

LABEL_10:
      [*(v5 + 64) invalidate];
      v8 = *(a1 + 40);
      v9 = *(v8 + 64);
      *(v8 + 64) = 0;

      goto LABEL_11;
    }

    if (dword_1002F6480 > 30)
    {
      goto LABEL_12;
    }

    v11 = 0;
    if (dword_1002F6480 != -1)
    {
LABEL_8:
      v3 = LogPrintF(&dword_1002F6480, "[AAServicesDaemon _activate]_block_invoke_8", 30, "%@ Activated", v6);
LABEL_11:
      v4 = v11;
      goto LABEL_12;
    }

    v3 = _LogCategory_Initialize();
    v4 = 0;
    if (v3)
    {
      v6 = *(*(a1 + 40) + 64);
      goto LABEL_8;
    }
  }

LABEL_12:

  return _objc_release_x1(v3, v4);
}

void sub_100022334(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = a1;
  if (dword_1002F6480 <= 30)
  {
    if (dword_1002F6480 != -1 || (a1 = _LogCategory_Initialize(), a1))
    {
      sub_1001D6F0C(a1, a2, a3);
    }
  }

  v4 = +[AAConversationDetectSessionManager sharedCDSessionManager];
  [v4 invalidate];

  v5 = +[AADeviceManagerDaemon sharedAADeviceManagerDaemon];
  [v5 invalidate];

  v6 = +[AAPairedDeviceDaemon sharedAAPairedDeviceDaemon];
  [v6 invalidate];

  v7 = +[AASensorServiceDaemon sharedAASensorServiceDaemon];
  [v7 invalidate];

  if (_os_feature_enabled_impl())
  {
    v8 = +[AAManagedSettingsDaemon sharedAAManagedSettingsDaemon];
    [v8 invalidate];
  }

  if (_os_feature_enabled_impl())
  {
    v9 = +[AABatteryMonitorDaemon sharedAABatteryMonitorDaemon];
    [v9 unsubscribeFromBatteryInfoUpdates:*(v3 + 32)];
  }

  v10 = +[AAXPCEventPublisherDaemon sharedAAXPCEventPublisherDaemon];
  [v10 invalidate];

  v11 = *(v3 + 32);
  if (*(v11 + 216))
  {
    os_state_remove_handler();
    *(*(v3 + 32) + 216) = 0;
    v11 = *(v3 + 32);
  }

  if (*(v11 + 200) != -1)
  {
    notify_cancel(*(v11 + 200));
    *(*(v3 + 32) + 200) = -1;
    v11 = *(v3 + 32);
  }

  [v11 _deregisterFromAVSystemControllerDeathNotifications];
  v12 = [*(v3 + 32) _deregisterFromAVSystemControllerStateNotifications];
  v15 = *(v3 + 32);
  if (*(v15 + 232) == 1)
  {
    if (dword_1002F6480 <= 30)
    {
      if (dword_1002F6480 != -1 || (v12 = _LogCategory_Initialize(), v12))
      {
        sub_1001D6F28(v12, v13, v14);
      }
    }

    v16 = +[NSNotificationCenter defaultCenter];
    [v16 removeObserver:*(v3 + 32) name:TUBargeCallStatusChangedNotification object:0];

    *(*(v3 + 32) + 232) = 0;
    v15 = *(v3 + 32);
  }

  [*(v15 + 64) invalidate];
  v17 = *(v3 + 32);
  v18 = *(v17 + 64);
  *(v17 + 64) = 0;

  v19 = +[AAContextManager sharedContextManager];
  [v19 invalidate];

  [*(*(v3 + 32) + 272) invalidate];
  v20 = *(v3 + 32);
  v21 = *(v20 + 272);
  *(v20 + 272) = 0;
}

id sub_100023DF0(uint64_t a1)
{
  if (dword_1002F6480 <= 30 && (dword_1002F6480 != -1 || _LogCategory_Initialize()))
  {
    sub_1001D7370();
  }

  v3 = *(a1 + 32);
  v2 = *(a1 + 40);

  return [v2 deviceManagerFoundBatteryInfo:v3];
}

void sub_100025A68(uint64_t a1)
{
  v2 = [*(a1 + 32) userInfo];
  v15 = [v2 objectForKey:AVSystemController_CallIsActiveNotificationParameter];

  v5 = v15;
  if (v15)
  {
    v6 = [*(a1 + 32) userInfo];
    v7 = [v6 objectForKey:AVSystemController_CallIsHighPriorityNotificationParameter];

    if (v7)
    {
      v11 = [v15 BOOLValue];
      v12 = [v7 BOOLValue];
      v14 = *(a1 + 40);
      v13 = (a1 + 40);
      *(v14 + 176) = v11;
      *(*v13 + 177) = v12;
      if (dword_1002F6480 <= 30 && (dword_1002F6480 != -1 || _LogCategory_Initialize()))
      {
        sub_1001D7640(v13);
      }

      [*v13 _updateBannerChimeSuppressionState];
    }

    else if (dword_1002F6480 <= 90)
    {
      if (dword_1002F6480 != -1 || (v8 = _LogCategory_Initialize(), v8))
      {
        sub_1001D76AC(v8, v9, v10);
      }
    }
  }

  else if (dword_1002F6480 <= 90)
  {
    if (dword_1002F6480 != -1 || (v5 = _LogCategory_Initialize(), v5))
    {
      sub_1001D76C8(v5, v3, v4);
    }
  }
}

void sub_100025CE4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, ...)
{
  va_start(va, a20);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void *sub_100025CFC(void *result)
{
  v1 = result;
  if (dword_1002F6480 <= 30)
  {
    if (dword_1002F6480 != -1 || (result = _LogCategory_Initialize(), result))
    {
      result = sub_1001D76E4(v1);
    }
  }

  v2 = *(*(v1[5] + 8) + 24) == 1 && *(*(v1[6] + 8) + 24) == 1;
  v3 = v1[4];
  v4 = *(v3 + 178);
  if (v4 != v2)
  {
    if (dword_1002F6480 <= 30)
    {
      if (dword_1002F6480 != -1)
      {
LABEL_10:
        v5 = "no";
        if (v4)
        {
          v6 = "yes";
        }

        else
        {
          v6 = "no";
        }

        if (v2)
        {
          v5 = "yes";
        }

        LogPrintF(&dword_1002F6480, "[AAServicesDaemon _handlePTTCallStatusChangedNotification:]_block_invoke", 30, "Mute Control: PTT call state changed from %s --> %s", v6, v5);
        v3 = v1[4];
        goto LABEL_17;
      }

      v7 = _LogCategory_Initialize();
      v3 = v1[4];
      if (v7)
      {
        LOBYTE(v4) = *(v3 + 178);
        goto LABEL_10;
      }
    }

LABEL_17:
    *(v3 + 178) = v2;
    v8 = v1[4];

    return [v8 _updateBannerChimeSuppressionState];
  }

  return result;
}

void sub_100026250(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, ...)
{
  va_start(va, a20);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_100026270(uint64_t a1, uint64_t a2, void *a3)
{
  v3 = a2;
  v5 = a3;
  v8 = v5;
  if (*(*(*(a1 + 40) + 8) + 40) == *(*(a1 + 32) + 192))
  {
    if (dword_1002F6480 <= 30)
    {
      if (dword_1002F6480 != -1 || (v5 = _LogCategory_Initialize(), v5))
      {
        v5 = sub_1001D776C(v3, a1);
      }
    }

    if (v3 <= 2)
    {
      if (v3 == 1)
      {
        if ((*(a1 + 48) - 1) <= 1)
        {
          if (dword_1002F6480 <= 30)
          {
            if (dword_1002F6480 != -1 || (v5 = _LogCategory_Initialize(), v5))
            {
              sub_1001D7884(v5, v6, v7);
            }
          }

          v9 = *(a1 + 32);
          v10 = *(a1 + 84);
          v11 = *(a1 + 68);
          v12[0] = *(a1 + 52);
          v12[1] = v11;
          [v9 _reverseMuteActionForToken:v12 shouldMute:v10];
        }
      }

      else if (v3 == 2 && dword_1002F6480 <= 30)
      {
        if (dword_1002F6480 != -1 || (v5 = _LogCategory_Initialize(), v5))
        {
          sub_1001D7868(v5, v6, v7);
        }
      }
    }

    else if (v3 == 3)
    {
      if (dword_1002F6480 <= 30)
      {
        if (dword_1002F6480 != -1 || (v5 = _LogCategory_Initialize(), v5))
        {
          sub_1001D7830(v5, v6, v7);
        }
      }
    }

    else if (v3 == 4)
    {
      if (dword_1002F6480 <= 90 && (dword_1002F6480 != -1 || _LogCategory_Initialize()))
      {
        sub_1001D77F0(v8);
      }
    }

    else if (v3 == 6 && dword_1002F6480 <= 30)
    {
      if (dword_1002F6480 != -1 || (v5 = _LogCategory_Initialize(), v5))
      {
        sub_1001D784C(v5, v6, v7);
      }
    }

    [*(a1 + 32) _invalidateMuteBanner];
  }
}

const char *sub_10002645C(unsigned int a1)
{
  if (a1 > 6)
  {
    return "?";
  }

  else
  {
    return (&off_1002B7748)[a1];
  }
}

void sub_1000269E0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (*(a1 + 32) == *(*(a1 + 40) + 256))
  {
    v12 = v3;
    v13 = v4;
    v5 = a1;
    if (dword_1002F6480 <= 30)
    {
      if (dword_1002F6480 != -1 || (a1 = _LogCategory_Initialize(), a1))
      {
        sub_1001D7960(a1, a2, a3);
      }
    }

    v6 = *(v5 + 40);
    v7 = *(v5 + 80);
    v8 = *(v5 + 64);
    v11[0] = *(v5 + 48);
    v11[1] = v8;
    [v6 _reverseMuteActionForToken:v11 shouldMute:v7];
    [*(v5 + 32) invalidate];
    v9 = *(v5 + 40);
    v10 = *(v9 + 256);
    *(v9 + 256) = 0;
  }
}

uint64_t sub_100026A84(uint64_t a1, uint64_t a2, void *a3)
{
  v3 = a2;
  v5 = a3;
  v6 = v5;
  if (*(a1 + 32) == *(*(a1 + 40) + 256))
  {
    v8 = v5;
    if (dword_1002F6480 <= 30)
    {
      if (dword_1002F6480 != -1 || (v5 = _LogCategory_Initialize(), v6 = v8, v5))
      {
        v5 = sub_1001D797C(v3, v8);
        v6 = v8;
      }
    }

    if (v3 == 5 || v3 == 2)
    {
      v5 = [*(a1 + 40) _invalidateMuteBanner];
      v6 = v8;
    }
  }

  return _objc_release_x1(v5, v6);
}

void sub_100026ED8(uint64_t a1)
{
  v2 = [*(*(a1 + 32) + 240) uiDataSource];

  v3 = *(a1 + 32);
  if (v2)
  {
    v4 = [*(v3 + 240) uiDataSource];
    v10[0] = _NSConcreteStackBlock;
    v10[1] = 3221225472;
    v10[2] = sub_100027014;
    v10[3] = &unk_1002B7480;
    v5 = *(a1 + 40);
    v10[4] = *(a1 + 32);
    v6 = &v11;
    v11 = v5;
    [v4 fetchInCallUIState:v10];
  }

  else
  {
    v7 = *(v3 + 168);
    v8[0] = _NSConcreteStackBlock;
    v8[1] = 3221225472;
    v8[2] = sub_1000272C8;
    v8[3] = &unk_1002B6948;
    v8[4] = v3;
    v6 = &v9;
    v9 = *(a1 + 40);
    dispatch_async(v7, v8);
  }
}

void sub_100027014(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v17[0] = 0;
  v17[1] = v17;
  v17[2] = 0x3032000000;
  v17[3] = sub_100003908;
  v17[4] = sub_100003830;
  v18 = 0;
  v7 = *(a1 + 32);
  v8 = *(v7 + 168);
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_100027148;
  block[3] = &unk_1002B7458;
  v12 = v6;
  v13 = v5;
  v14 = v7;
  v16 = v17;
  v15 = *(a1 + 40);
  v9 = v5;
  v10 = v6;
  dispatch_async(v8, block);

  _Block_object_dispose(v17, 8);
}

uint64_t sub_100027148(uint64_t a1)
{
  v2 = *(a1 + 32);
  if (!v2)
  {
    v3 = [*(a1 + 40) isMicIndicatorVisible];
    if (dword_1002F6480 <= 30 && (dword_1002F6480 != -1 || _LogCategory_Initialize()))
    {
      sub_1001D7B68((a1 + 40), v3 ^ 1);
      if (v3)
      {
        goto LABEL_9;
      }
    }

    else if (v3)
    {
LABEL_9:
      v4 = NSErrorF(NSOSStatusErrorDomain, 4294960534, "first party UI visible, banner suppressed");
      v5 = *(*(a1 + 64) + 8);
      v6 = *(v5 + 40);
      *(v5 + 40) = v4;

      goto LABEL_14;
    }

    v8 = *(a1 + 48);
    v9 = *(v8 + 104);
    v10 = *(v8 + 112);
    v11 = *(v8 + 160);
    v12 = *(v8 + 136);
    v14[0] = *(v8 + 120);
    v14[1] = v12;
    [v8 _createBannerSessionMuteActionForIOS:v9 auditToken:v14 appName:v10 appBundleID:v11];
    goto LABEL_14;
  }

  if (dword_1002F6480 <= 90)
  {
    if (dword_1002F6480 != -1 || (v7 = _LogCategory_Initialize(), v2 = *(a1 + 32), v7))
    {
      LogPrintF(&dword_1002F6480, "[AAServicesDaemon _processFirstPartyBannerRequestWithCompletion:]_block_invoke_3", 90, "Mute Control: fetchInCallUIState returned with error %@", v2);
      v2 = *(a1 + 32);
    }
  }

  objc_storeStrong((*(*(a1 + 64) + 8) + 40), v2);
LABEL_14:
  result = *(a1 + 56);
  if (result)
  {
    return (*(result + 16))(result, *(*(a1 + 48) + 152), *(*(a1 + 48) + 112), *(*(a1 + 48) + 160), *(*(*(a1 + 64) + 8) + 40));
  }

  return result;
}

uint64_t sub_1000272C8(uint64_t a1)
{
  v2 = *(a1 + 32);
  v3 = *(v2 + 104);
  v4 = *(v2 + 112);
  v5 = *(v2 + 160);
  v6 = *(v2 + 136);
  v8[0] = *(v2 + 120);
  v8[1] = v6;
  [v2 _createBannerSessionMuteActionForIOS:v3 auditToken:v8 appName:v4 appBundleID:v5];
  result = *(a1 + 40);
  if (result)
  {
    return (*(result + 16))(result, *(*(a1 + 32) + 152), *(*(a1 + 32) + 112), *(*(a1 + 32) + 160), 0);
  }

  return result;
}

void sub_100027FA8(uint64_t a1, void *a2, void *a3, void *a4, void *a5)
{
  v23 = a2;
  v9 = a3;
  v10 = a4;
  v11 = a5;
  if (!v11)
  {
    v16 = *(a1 + 32);
    v17 = *(a1 + 40);
    v18 = v23;
    goto LABEL_17;
  }

  v12 = *(a1 + 40);
  v13 = v12;
  if (v12 - 1 <= 2)
  {
    v13 = dword_100225E34[v12 - 1];
  }

  v14 = v23;
  if (dword_1002F6480 <= 30)
  {
    if (dword_1002F6480 != -1)
    {
LABEL_6:
      if (v12 > 6)
      {
        v15 = "?";
      }

      else
      {
        v15 = (&off_1002B7748)[v12];
      }

      if (v13 > 6)
      {
        v20 = "?";
      }

      else
      {
        v20 = (&off_1002B76B0)[v13];
      }

      LogPrintF(&dword_1002F6480, "[AAServicesDaemon _updateMuteAction:auditToken:bundleIdentifier:]_block_invoke", 30, "Mute control: muteAction override: %s --> %s, process banner request returned with error: %@", v15, v20, v11);
      v14 = v23;
      goto LABEL_16;
    }

    v19 = _LogCategory_Initialize();
    v14 = v23;
    if (v19)
    {
      v12 = *(a1 + 40);
      goto LABEL_6;
    }
  }

LABEL_16:
  v16 = *(a1 + 32);
  v17 = v13;
  v18 = v14;
LABEL_17:
  [v16 _submitMetricsForMuteAction:v17 auditTokenBundleID:v18 appName:v9 appBundleID:v10];
  v21 = *(a1 + 32);
  v22 = *(v21 + 184);
  *(v21 + 184) = 0;
}

id sub_1000281A4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = a1;
  if (dword_1002F6480 <= 30)
  {
    if (dword_1002F6480 != -1 || (a1 = _LogCategory_Initialize(), a1))
    {
      sub_1001D7D5C(a1, a2, a3);
    }
  }

  [*(v3 + 32) _deregisterFromAVSystemControllerStateNotifications];
  v4 = *(v3 + 32);

  return [v4 _registerForAVSystemControllerStateNotifications];
}

void sub_100029510(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, ...)
{
  va_start(va, a16);
  (*(v16 + 16))(v16, a2, a3, a4, a5, a6, a7, a8);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t sub_100029548(uint64_t result)
{
  v1 = *(*(*(result + 40) + 8) + 40);
  if (!v1)
  {
    return result;
  }

  v2 = result;
  if (dword_1002F6480 <= 90)
  {
    if (dword_1002F6480 != -1)
    {
LABEL_4:
      LogPrintF(&dword_1002F6480, "[AAServicesXPCConnection audioRoutingControlActivate:completion:]_block_invoke", 90, "### Audio Routing Control Activate failed: %{error}", v1);
      goto LABEL_6;
    }

    if (_LogCategory_Initialize())
    {
      v1 = *(*(*(v2 + 40) + 8) + 40);
      goto LABEL_4;
    }
  }

LABEL_6:
  result = *(v2 + 32);
  if (result)
  {
    v3 = *(result + 16);

    return v3();
  }

  return result;
}

void sub_1000297F0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, ...)
{
  va_start(va, a16);
  _Block_object_dispose(va, 8);
  _Block_object_dispose((v16 - 80), 8);
  _Unwind_Resume(a1);
}

uint64_t sub_100029834(uint64_t result)
{
  v1 = *(*(*(result + 40) + 8) + 40);
  if (!v1)
  {
    return result;
  }

  v2 = result;
  if (dword_1002F6480 <= 90)
  {
    if (dword_1002F6480 != -1)
    {
LABEL_4:
      LogPrintF(&dword_1002F6480, "[AAServicesXPCConnection areHeadphonesNearbyAndEligibleToPlay:completion:]_block_invoke", 90, "### areHeadphonesNearbyAndEligibleToPlay failed %{error}", v1);
      goto LABEL_6;
    }

    if (_LogCategory_Initialize())
    {
      v1 = *(*(*(v2 + 40) + 8) + 40);
      goto LABEL_4;
    }
  }

LABEL_6:
  result = *(v2 + 32);
  if (result)
  {
    v3 = *(result + 16);

    return v3();
  }

  return result;
}

uint64_t sub_100029A94(uint64_t a1)
{
  result = *(a1 + 32);
  if (result)
  {
    return (*(result + 16))();
  }

  return result;
}

void sub_100029CE8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, ...)
{
  va_start(va, a16);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t sub_100029D1C(uint64_t a1)
{
  v2 = *(*(*(a1 + 40) + 8) + 40);
  if (!v2)
  {
    v3 = *(*(a1 + 32) + 16);
    goto LABEL_9;
  }

  if (dword_1002F6480 <= 90)
  {
    if (dword_1002F6480 == -1)
    {
      if (!_LogCategory_Initialize())
      {
        goto LABEL_7;
      }

      v2 = *(*(*(a1 + 40) + 8) + 40);
    }

    LogPrintF(&dword_1002F6480, "[AAServicesXPCConnection activeHRMSessionChanged:hrmState:completion:]_block_invoke", 90, "### handleHRMSessionChanged failed %{error}", v2);
  }

LABEL_7:
  result = *(a1 + 32);
  if (!result)
  {
    return result;
  }

  v3 = *(result + 16);
LABEL_9:

  return v3();
}

void sub_10002A024(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, ...)
{
  va_start(va, a16);
  (*(v16 + 16))(v16, a2, a3, a4, a5, a6, a7, a8);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t sub_10002A05C(uint64_t result)
{
  v1 = *(*(*(result + 40) + 8) + 40);
  if (!v1)
  {
    return result;
  }

  v2 = result;
  if (dword_1002F6480 <= 90)
  {
    if (dword_1002F6480 != -1)
    {
LABEL_4:
      LogPrintF(&dword_1002F6480, "[AAServicesXPCConnection audioSessionControlActivate:completion:]_block_invoke", 90, "### Audio Control Activate failed: %{error}", v1);
      goto LABEL_6;
    }

    if (_LogCategory_Initialize())
    {
      v1 = *(*(*(v2 + 40) + 8) + 40);
      goto LABEL_4;
    }
  }

LABEL_6:
  result = *(v2 + 32);
  if (result)
  {
    v3 = *(result + 16);

    return v3();
  }

  return result;
}

void sub_10002A374(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, ...)
{
  va_start(va, a16);
  (*(v16 + 16))(v16, a2, a3, a4, a5, a6, a7, a8);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t sub_10002A3B0(uint64_t result)
{
  v1 = *(*(*(result + 32) + 8) + 40);
  if (v1 && dword_1002F6480 <= 90)
  {
    if (dword_1002F6480 != -1)
    {
      return LogPrintF(&dword_1002F6480, "[AAServicesXPCConnection audioSessionControlUpdate:]_block_invoke", 90, "### Audio Control Update failed: %{error}", v1);
    }

    v2 = result;
    result = _LogCategory_Initialize();
    if (result)
    {
      v1 = *(*(*(v2 + 32) + 8) + 40);
      return LogPrintF(&dword_1002F6480, "[AAServicesXPCConnection audioSessionControlUpdate:]_block_invoke", 90, "### Audio Control Update failed: %{error}", v1);
    }
  }

  return result;
}

void sub_10002A614(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, ...)
{
  va_start(va, a20);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t sub_10002A648(uint64_t result)
{
  v1 = *(*(*(result + 32) + 8) + 40);
  if (v1 && dword_1002F6480 <= 90)
  {
    if (dword_1002F6480 != -1)
    {
      return LogPrintF(&dword_1002F6480, "[AAServicesXPCConnection setMuteAction:auditToken:bundleIdentifier:]_block_invoke", 90, "### Set mute action failed: %{error}", v1);
    }

    v2 = result;
    result = _LogCategory_Initialize();
    if (result)
    {
      v1 = *(*(*(v2 + 32) + 8) + 40);
      return LogPrintF(&dword_1002F6480, "[AAServicesXPCConnection setMuteAction:auditToken:bundleIdentifier:]_block_invoke", 90, "### Set mute action failed: %{error}", v1);
    }
  }

  return result;
}

void sub_10002A8C8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, ...)
{
  va_start(va, a16);
  (*(v16 + 16))(v16, a2, a3, a4, a5, a6, a7, a8);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t sub_10002A900(uint64_t result)
{
  v1 = *(*(*(result + 40) + 8) + 40);
  if (!v1)
  {
    return result;
  }

  v2 = result;
  if (dword_1002F6480 <= 90)
  {
    if (dword_1002F6480 != -1)
    {
LABEL_4:
      LogPrintF(&dword_1002F6480, "[AAServicesXPCConnection proxCardUserActionOnHeadphone:btAddress:withAction:completion:]_block_invoke", 90, "### proxCardUserActionOnHeadphone failed: %{error}", v1);
      goto LABEL_6;
    }

    if (_LogCategory_Initialize())
    {
      v1 = *(*(*(v2 + 40) + 8) + 40);
      goto LABEL_4;
    }
  }

LABEL_6:
  result = *(v2 + 32);
  if (result)
  {
    v3 = *(result + 16);

    return v3();
  }

  return result;
}

void sub_10002AC04(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, ...)
{
  va_start(va, a16);
  (*(v16 + 16))(v16, a2, a3, a4, a5, a6, a7, a8);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t sub_10002AC3C(uint64_t result)
{
  v1 = *(*(*(result + 40) + 8) + 40);
  if (!v1)
  {
    return result;
  }

  v2 = result;
  if (dword_1002F6480 <= 90)
  {
    if (dword_1002F6480 != -1)
    {
LABEL_4:
      LogPrintF(&dword_1002F6480, "[AAServicesXPCConnection systemStateMonitorActivate:completion:]_block_invoke", 90, "### SystemState Monitor Activate failed: %{error}", v1);
      goto LABEL_6;
    }

    if (_LogCategory_Initialize())
    {
      v1 = *(*(*(v2 + 40) + 8) + 40);
      goto LABEL_4;
    }
  }

LABEL_6:
  result = *(v2 + 32);
  if (result)
  {
    v3 = *(result + 16);

    return v3();
  }

  return result;
}

void sub_10002AF60(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, ...)
{
  va_start(va, a18);
  _Block_object_dispose(va, 8);
  _Block_object_dispose((v18 - 96), 8);
  _Unwind_Resume(a1);
}

uint64_t sub_10002AFA4(uint64_t result)
{
  v1 = *(*(*(result + 40) + 8) + 40);
  if (!v1)
  {
    return result;
  }

  v2 = result;
  if (dword_1002F6480 <= 90)
  {
    if (dword_1002F6480 != -1)
    {
LABEL_4:
      LogPrintF(&dword_1002F6480, "[AAServicesXPCConnection systemStateMonitorFetchHealthKitDataWriteAllowedForDevice:completionHandler:]_block_invoke", 90, "### fetchHealthKitDataWriteAllowedForDevice %{error}", v1);
      goto LABEL_6;
    }

    if (_LogCategory_Initialize())
    {
      v1 = *(*(*(v2 + 40) + 8) + 40);
      goto LABEL_4;
    }
  }

LABEL_6:
  result = *(v2 + 32);
  if (result)
  {
    v3 = *(result + 16);

    return v3();
  }

  return result;
}

void sub_10002B354(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, ...)
{
  va_start(va, a22);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t sub_10002B3A0(uint64_t result)
{
  v1 = *(*(*(result + 40) + 8) + 40);
  if (!v1)
  {
    return result;
  }

  v2 = result;
  if (dword_1002F6480 <= 90)
  {
    if (dword_1002F6480 != -1)
    {
LABEL_4:
      LogPrintF(&dword_1002F6480, "[AAServicesXPCConnection systemStateMonitorFetchPairedHRMDevices:]_block_invoke", 90, "### FetchPairedHRMDevices %{error}", v1);
      goto LABEL_6;
    }

    if (_LogCategory_Initialize())
    {
      v1 = *(*(*(v2 + 40) + 8) + 40);
      goto LABEL_4;
    }
  }

LABEL_6:
  result = *(v2 + 32);
  if (result)
  {
    v3 = *(result + 16);

    return v3();
  }

  return result;
}

void sub_10002B47C(uint64_t a1, void *a2, void *a3)
{
  v6 = a2;
  v5 = a3;
  if (dword_1002F6480 <= 30 && (dword_1002F6480 != -1 || _LogCategory_Initialize()))
  {
    sub_1001D7F5C(v5);
  }

  if ([v5 heartRateMonitorCapability] == 2)
  {
    [*(a1 + 32) addObject:v5];
    if (dword_1002F6480 <= 30 && (dword_1002F6480 != -1 || _LogCategory_Initialize()))
    {
      sub_1001D7F9C(v5);
    }
  }
}

void sub_10002B740(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, ...)
{
  va_start(va, a22);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t sub_10002B774(uint64_t result)
{
  v1 = *(*(*(result + 40) + 8) + 40);
  if (!v1)
  {
    return result;
  }

  v2 = result;
  if (dword_1002F6480 <= 90)
  {
    if (dword_1002F6480 != -1)
    {
LABEL_4:
      LogPrintF(&dword_1002F6480, "[AAServicesXPCConnection systemStateMonitorShowFitEducationNotificationForIdentifier:completionHandler:]_block_invoke", 90, "### Show fit education notification %{error}", v1);
      goto LABEL_6;
    }

    if (_LogCategory_Initialize())
    {
      v1 = *(*(*(v2 + 40) + 8) + 40);
      goto LABEL_4;
    }
  }

LABEL_6:
  result = *(v2 + 32);
  if (result)
  {
    v3 = *(result + 16);

    return v3();
  }

  return result;
}

void sub_10002B84C(uint64_t a1, void *a2)
{
  v5 = a2;
  if (v5)
  {
    if (dword_1002F6480 <= 90 && (dword_1002F6480 != -1 || _LogCategory_Initialize()))
    {
      sub_1001D7FDC(v5);
    }

    objc_storeStrong((*(*(a1 + 48) + 8) + 40), a2);
  }

  else if (dword_1002F6480 <= 30 && (dword_1002F6480 != -1 || _LogCategory_Initialize()))
  {
    sub_1001D801C();
  }

  v4 = *(a1 + 40);
  if (v4)
  {
    (*(v4 + 16))(v4, *(*(*(a1 + 48) + 8) + 40));
  }
}

void sub_10002BDCC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, ...)
{
  va_start(va, a34);
  (*(a14 + 16))(a14, a2, a3, a4, a5, a6, a7, a8);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t sub_10002BE28(uint64_t result)
{
  v1 = *(*(*(result + 40) + 8) + 40);
  if (!v1)
  {
    return result;
  }

  v2 = result;
  if (dword_1002F6480 <= 90)
  {
    if (dword_1002F6480 != -1)
    {
LABEL_4:
      LogPrintF(&dword_1002F6480, "[AAServicesXPCConnection deviceManagerActivate:completion:]_block_invoke", 90, "### AADeviceManager Activate failed: %{error}", v1);
      goto LABEL_6;
    }

    if (_LogCategory_Initialize())
    {
      v1 = *(*(*(v2 + 40) + 8) + 40);
      goto LABEL_4;
    }
  }

LABEL_6:
  result = *(v2 + 32);
  if (result)
  {
    v3 = *(result + 16);

    return v3();
  }

  return result;
}

void sub_10002C104(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, ...)
{
  va_start(va, a16);
  (*(v16 + 16))(v16, a2, a3, a4, a5, a6, a7, a8);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t sub_10002C140(uint64_t result)
{
  v1 = *(*(*(result + 40) + 8) + 40);
  if (!v1)
  {
    return result;
  }

  v2 = result;
  if (dword_1002F6480 <= 90)
  {
    if (dword_1002F6480 != -1)
    {
LABEL_4:
      LogPrintF(&dword_1002F6480, "[AAServicesXPCConnection deviceManagerUpdate:completion:]_block_invoke", 90, "### AADeviceManager Activate failed: %{error}", v1);
      goto LABEL_6;
    }

    if (_LogCategory_Initialize())
    {
      v1 = *(*(*(v2 + 40) + 8) + 40);
      goto LABEL_4;
    }
  }

LABEL_6:
  result = *(v2 + 32);
  if (result)
  {
    v3 = *(result + 16);

    return v3();
  }

  return result;
}

void sub_10002C4B0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, ...)
{
  va_start(va, a22);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t sub_10002C4E8(uint64_t result)
{
  v1 = *(*(*(result + 40) + 8) + 40);
  if (!v1)
  {
    return result;
  }

  v2 = result;
  if (dword_1002F6480 <= 90)
  {
    if (dword_1002F6480 != -1)
    {
LABEL_4:
      LogPrintF(&dword_1002F6480, "[AAServicesXPCConnection deviceManagerSendDeviceConfig:identifier:completion:]_block_invoke", 90, "### AADeviceManager send device config failed: %{error}", v1);
      goto LABEL_6;
    }

    if (_LogCategory_Initialize())
    {
      v1 = *(*(*(v2 + 40) + 8) + 40);
      goto LABEL_4;
    }
  }

LABEL_6:
  result = *(v2 + 32);
  if (result)
  {
    v3 = *(result + 16);

    return v3();
  }

  return result;
}

uint64_t sub_10002C5C0(uint64_t a1)
{
  result = *(a1 + 32);
  if (result)
  {
    return (*(result + 16))();
  }

  return result;
}

void sub_10002C91C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, ...)
{
  va_start(va, a26);
  (*(a10 + 16))(a10, a2, a3, a4, a5, a6, a7, a8);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t sub_10002C968(uint64_t result)
{
  v1 = *(*(*(result + 40) + 8) + 40);
  if (!v1)
  {
    return result;
  }

  v2 = result;
  if (dword_1002F6480 <= 90)
  {
    if (dword_1002F6480 != -1)
    {
LABEL_4:
      LogPrintF(&dword_1002F6480, "[AAServicesXPCConnection deviceManagerFetchAADeviceBatteryInfoForAddress:deviceHandler:]_block_invoke", 90, "### fetch AADeviceBatteryInfo %{error}", v1);
      goto LABEL_6;
    }

    if (_LogCategory_Initialize())
    {
      v1 = *(*(*(v2 + 40) + 8) + 40);
      goto LABEL_4;
    }
  }

LABEL_6:
  result = *(v2 + 32);
  if (result)
  {
    v3 = *(result + 16);

    return v3();
  }

  return result;
}

void sub_10002CC50(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, ...)
{
  va_start(va, a16);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t sub_10002CC88(uint64_t result)
{
  v1 = *(*(*(result + 40) + 8) + 40);
  if (!v1)
  {
    return result;
  }

  v2 = result;
  if (dword_1002F6480 <= 90)
  {
    if (dword_1002F6480 != -1)
    {
LABEL_4:
      LogPrintF(&dword_1002F6480, "[AAServicesXPCConnection deviceManagerFetchAADeviceBatteryInfoForIdentifier:deviceHandler:]_block_invoke", 90, "### fetch AADeviceBatteryInfo %{error}", v1);
      goto LABEL_6;
    }

    if (_LogCategory_Initialize())
    {
      v1 = *(*(*(v2 + 40) + 8) + 40);
      goto LABEL_4;
    }
  }

LABEL_6:
  result = *(v2 + 32);
  if (result)
  {
    v3 = *(result + 16);

    return v3();
  }

  return result;
}

void sub_10002CF94(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, ...)
{
  va_start(va, a18);
  _Block_object_dispose(va, 8);
  _Block_object_dispose((v18 - 96), 8);
  _Unwind_Resume(a1);
}

uint64_t sub_10002CFD4(uint64_t result)
{
  v1 = *(*(*(result + 40) + 8) + 40);
  if (!v1)
  {
    return result;
  }

  v2 = result;
  if (dword_1002F6480 <= 90)
  {
    if (dword_1002F6480 != -1)
    {
LABEL_4:
      LogPrintF(&dword_1002F6480, "[AAServicesXPCConnection deviceManagerFetchAudioAccessoryDeviceForBTAddress:deviceHandler:]_block_invoke", 90, "### fetch AudioAccessoryDevice %{error}", v1);
      goto LABEL_6;
    }

    if (_LogCategory_Initialize())
    {
      v1 = *(*(*(v2 + 40) + 8) + 40);
      goto LABEL_4;
    }
  }

LABEL_6:
  result = *(v2 + 32);
  if (result)
  {
    v3 = *(result + 16);

    return v3();
  }

  return result;
}

void sub_10002D280(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, ...)
{
  va_start(va, a18);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t sub_10002D2B4(uint64_t result)
{
  v1 = *(*(*(result + 48) + 8) + 40);
  if (!v1)
  {
    return result;
  }

  v2 = result;
  if (dword_1002F6480 <= 90)
  {
    if (dword_1002F6480 != -1)
    {
LABEL_4:
      LogPrintF(&dword_1002F6480, "[AAServicesXPCConnection deviceManagerFetchPairedAudioAccessoryDevices:]_block_invoke", 90, "### fetch paired devices %{error}", v1);
      goto LABEL_6;
    }

    if (_LogCategory_Initialize())
    {
      v1 = *(*(*(v2 + 48) + 8) + 40);
      goto LABEL_4;
    }
  }

LABEL_6:
  result = *(v2 + 40);
  if (result)
  {
    v3 = *(result + 16);

    return v3();
  }

  return result;
}

void sub_10002D6D0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, ...)
{
  va_start(va, a16);
  (*(v16 + 16))(v16, a2, a3, a4, a5, a6, a7, a8);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t sub_10002D708(uint64_t result)
{
  v1 = *(*(*(result + 40) + 8) + 40);
  if (!v1)
  {
    return result;
  }

  v2 = result;
  if (dword_1002F6480 <= 90)
  {
    if (dword_1002F6480 != -1)
    {
LABEL_4:
      LogPrintF(&dword_1002F6480, "[AAServicesXPCConnection sensorServiceActivate:completion:]_block_invoke", 90, "### AASensorService Activate failed: %{error}", v1);
      goto LABEL_6;
    }

    if (_LogCategory_Initialize())
    {
      v1 = *(*(*(v2 + 40) + 8) + 40);
      goto LABEL_4;
    }
  }

LABEL_6:
  result = *(v2 + 32);
  if (result)
  {
    v3 = *(result + 16);

    return v3();
  }

  return result;
}

void sub_10002D9D0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, ...)
{
  va_start(va, a18);
  _Block_object_dispose(va, 8);
  _Block_object_dispose((v18 - 64), 8);
  _Unwind_Resume(a1);
}

uint64_t sub_10002DA10(uint64_t a1)
{
  v2 = *(*(*(a1 + 40) + 8) + 40);
  if (!v2)
  {
    v3 = *(*(a1 + 32) + 16);
    goto LABEL_9;
  }

  if (dword_1002F6480 <= 90)
  {
    if (dword_1002F6480 == -1)
    {
      if (!_LogCategory_Initialize())
      {
        goto LABEL_7;
      }

      v2 = *(*(*(a1 + 40) + 8) + 40);
    }

    LogPrintF(&dword_1002F6480, "[AAServicesXPCConnection isTemporaryPairingConnectionAllowed:]_block_invoke", 90, "### isTemporaryPairingConnectionAllowed failed %{error}", v2);
  }

LABEL_7:
  result = *(a1 + 32);
  if (!result)
  {
    return result;
  }

  v3 = *(result + 16);
LABEL_9:

  return v3();
}

uint64_t sub_10002DC1C(uint64_t result)
{
  v1 = result;
  if (dword_1002F6480 <= 30)
  {
    if (dword_1002F6480 != -1 || (result = _LogCategory_Initialize(), result))
    {
      result = sub_1001D80B4(v1);
    }
  }

  *(*(v1 + 32) + 8) = 0;
  return result;
}

void sub_10002DF08(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, ...)
{
  va_start(va, a22);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t sub_10002DF40(uint64_t result)
{
  v1 = *(*(*(result + 40) + 8) + 40);
  if (!v1)
  {
    return result;
  }

  v2 = result;
  if (dword_1002F6480 <= 90)
  {
    if (dword_1002F6480 != -1)
    {
LABEL_4:
      LogPrintF(&dword_1002F6480, "[AAServicesXPCConnection assetManagerShowDownloadNotificationForBTAddress:completionHandler:]_block_invoke", 90, "### Show Asset Download notification %{error}", v1);
      goto LABEL_6;
    }

    if (_LogCategory_Initialize())
    {
      v1 = *(*(*(v2 + 40) + 8) + 40);
      goto LABEL_4;
    }
  }

LABEL_6:
  result = *(v2 + 32);
  if (result)
  {
    v3 = *(result + 16);

    return v3();
  }

  return result;
}

void sub_10002E018(uint64_t a1, void *a2)
{
  v5 = a2;
  if (v5)
  {
    if (dword_1002F6480 <= 90 && (dword_1002F6480 != -1 || _LogCategory_Initialize()))
    {
      sub_1001D8114(v5);
    }

    objc_storeStrong((*(*(a1 + 48) + 8) + 40), a2);
  }

  else if (dword_1002F6480 <= 30 && (dword_1002F6480 != -1 || _LogCategory_Initialize()))
  {
    sub_1001D8154();
  }

  v4 = *(a1 + 40);
  if (v4)
  {
    (*(v4 + 16))(v4, *(*(*(a1 + 48) + 8) + 40));
  }
}

void sub_10002E2C8(id a1)
{
  if (GestaltGetDeviceClass() != 7)
  {
    v1 = objc_alloc_init(AASleepDetectionManager);
    v2 = qword_1002FA090;
    qword_1002FA090 = v1;

    _objc_release_x1(v1, v2);
  }
}

id sub_10002E664(uint64_t a1)
{
  [*(a1 + 32) _aaControllerEnsureStopped];
  [*(a1 + 32) _activityMonitorEnsureStopped];
  [*(a1 + 32) _cleanMonitoringSourceMotion];
  [*(a1 + 32) _connectedDeviceDiscoveryEnsureStopped];
  [*(a1 + 32) _deregisterMediaPlaybackStateChangedNotifications];
  [*(a1 + 32) _stopCoolOffTimer];
  [*(a1 + 32) _stopRewindMediaTimer];
  result = [*(a1 + 32) _userNotificationCenterEnsureStopped];
  *(*(a1 + 32) + 104) = 0;
  return result;
}

void sub_10002E840(id a1)
{
  if (dword_1002F6550 <= 30)
  {
    if (dword_1002F6550 != -1 || (a1 = _LogCategory_Initialize(), a1))
    {
      sub_1001D85F0(a1, v1, v2);
    }
  }
}

void sub_10002E88C(uint64_t a1, void *a2, void *a3)
{
  v14 = a2;
  v8 = a3;
  v9 = *(a1 + 40);
  if (*(a1 + 32) == *(v9 + 8))
  {
    if (v14)
    {
      objc_storeStrong((v9 + 160), a2);
      v10 = *(a1 + 40);
      if (*(v10 + 16))
      {
        v11 = [*(v10 + 16) deviceWithIdentifier:*(v10 + 160)];
        v12 = *(a1 + 40);
        v13 = *(v12 + 40);
        *(v12 + 40) = v11;

        v10 = *(a1 + 40);
      }

      [v10 _sleepDetectionMessageReceived:v8];
    }

    else
    {
      sub_1001D860C(0, v6, v7);
    }
  }
}

uint64_t sub_10002E950(uint64_t a1, void *a2)
{
  v3 = a2;
  v5 = v3;
  if (*(a1 + 32) == *(*(a1 + 40) + 8))
  {
    if (v3)
    {
      v9 = v3;
      if (dword_1002F6550 <= 90 && (dword_1002F6550 != -1 || _LogCategory_Initialize()))
      {
        sub_1001D866C(v9);
      }

      [*(a1 + 32) invalidate];
      v6 = *(a1 + 40);
      v7 = *(v6 + 8);
      *(v6 + 8) = 0;

      goto LABEL_7;
    }

    if (dword_1002F6550 <= 30)
    {
      v9 = 0;
      if (dword_1002F6550 != -1 || (v3 = _LogCategory_Initialize(), v5 = 0, v3))
      {
        v3 = sub_1001D86AC(v3, v5, v4);
LABEL_7:
        v5 = v9;
      }
    }
  }

  return _objc_release_x1(v3, v5);
}

void sub_10002EC60(id a1)
{
  if (dword_1002F6550 <= 30)
  {
    if (dword_1002F6550 != -1 || (a1 = _LogCategory_Initialize(), a1))
    {
      sub_1001D86E4(a1, v1, v2);
    }
  }
}

void sub_10002ECAC(id a1)
{
  if (dword_1002F6550 <= 30)
  {
    if (dword_1002F6550 != -1 || (a1 = _LogCategory_Initialize(), a1))
    {
      sub_1001D8700(a1, v1, v2);
    }
  }
}

void sub_10002ED10(uint64_t a1, void *a2)
{
  v5 = a2;
  if (v5)
  {
    if (dword_1002F6550 <= 30 && (dword_1002F6550 != -1 || _LogCategory_Initialize()))
    {
      sub_1001D871C(v5);
    }

    [*(*(a1 + 32) + 32) invalidate];
    v3 = *(a1 + 32);
    v4 = *(v3 + 32);
    *(v3 + 32) = 0;
  }

  if (dword_1002F6550 <= 30 && (dword_1002F6550 != -1 || _LogCategory_Initialize()))
  {
    sub_1001D875C(a1);
  }
}

_BYTE *sub_10002F604(uint64_t a1)
{
  v2 = *(*(a1 + 32) + 192);
  state64 = 0;
  notify_get_state(v2, &state64);
  v3 = state64;
  v4 = state64 != 0;
  if (dword_1002F6550 <= 30 && (dword_1002F6550 != -1 || _LogCategory_Initialize()))
  {
    sub_1001D88D0(v3 != 0);
  }

  *(*(a1 + 32) + 80) = v4;
  result = [*(a1 + 32) _shouldRunPauseMediaOnSleep];
  if (result)
  {
    result = *(a1 + 32);
    if (result[136] == 1)
    {
      return [result _sendMediaRemoteCommand:1 startRewindMediaTimer:1];
    }
  }

  return result;
}

void sub_10002F878(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [v3 error];

  if (v4)
  {
    if (dword_1002F6550 <= 90 && (dword_1002F6550 != -1 || _LogCategory_Initialize()))
    {
      sub_1001D898C(a1, v3);
    }

    v8 = *(a1 + 48);
    if (v8 == 24)
    {
      [*(a1 + 40) _sendSleepDetectionMediaMetricWithMediaPaused:*(*(a1 + 40) + 104) rewoundMediaInSeconds:&off_1002CB690 mediaStreamingAfterRewinding:0];
      *(*(a1 + 40) + 104) = 0;
    }

    else if (v8 == 1)
    {
      v9 = *(a1 + 40);
      v10 = &off_1002CB690;
      v11 = 0;
      v12 = 0;
LABEL_21:
      [v9 _sendSleepDetectionMediaMetricWithMediaPaused:v11 rewoundMediaInSeconds:v10 mediaStreamingAfterRewinding:v12];
    }
  }

  else
  {
    v13 = *(a1 + 48);
    if (v13 == 24)
    {
      if (dword_1002F6550 <= 30 && (dword_1002F6550 != -1 || _LogCategory_Initialize()))
      {
        sub_1001D89FC(a1);
      }

      *(*(a1 + 40) + 104) = 0;
      MRMediaRemoteGetNowPlayingApplicationIsPlaying();
    }

    else if (v13 == 1)
    {
      if (dword_1002F6550 <= 30)
      {
        if (dword_1002F6550 != -1 || (v5 = _LogCategory_Initialize(), v5))
        {
          sub_1001D8A84(v5, v6, v7);
        }
      }

      *(*(a1 + 40) + 104) = 1;
      v9 = *(a1 + 40);
      v10 = v9[15];
      v11 = 1;
      if (*(a1 + 52) != 1)
      {
        v12 = 1;
        goto LABEL_21;
      }

      [v9 _sendSleepDetectionMediaMetricWithMediaPaused:1 rewoundMediaInSeconds:v10 mediaStreamingAfterRewinding:0];
      [*(a1 + 40) _startRewindMediaTimer];
    }
  }
}

void *sub_10002FA78(void *result, uint64_t a2, uint64_t a3)
{
  v3 = a2;
  v4 = result;
  if (dword_1002F6550 <= 30)
  {
    if (dword_1002F6550 != -1 || (result = _LogCategory_Initialize(), result))
    {
      result = sub_1001D8AA0();
    }
  }

  v5 = v4[4];
  if (*(v5 + 81) == v3)
  {
    if ((v3 & 1) == 0)
    {
      return result;
    }
  }

  else
  {
    *(v5 + 81) = v3 != 0;
    if ((*(v4[4] + 81) & 1) == 0)
    {
      return result;
    }
  }

  if (dword_1002F6550 <= 30)
  {
    if (dword_1002F6550 != -1 || (result = _LogCategory_Initialize(), result))
    {
      sub_1001D8AE0(result, a2, a3);
    }
  }

  v6 = v4[4];

  return [v6 _sendMediaRemoteCommand:1 startRewindMediaTimer:0];
}

uint64_t sub_10002FFBC(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = v3;
  if (v3)
  {
    if (dword_1002F6550 > 90)
    {
      goto LABEL_11;
    }

    v6 = v3;
    if (dword_1002F6550 == -1)
    {
      v3 = _LogCategory_Initialize();
      v4 = v6;
      if (!v3)
      {
        goto LABEL_11;
      }
    }

    v3 = LogPrintF(&dword_1002F6550, "[AASleepDetectionManager _sendSleepDetectionConfidenceThreshold:]_block_invoke", 90, "Send Sleep Detection Message <%@> failed with error: %@\n", *(a1 + 32), v4);
LABEL_5:
    v4 = v6;
    goto LABEL_11;
  }

  if (dword_1002F6550 <= 30)
  {
    v6 = 0;
    if (dword_1002F6550 != -1 || (v3 = _LogCategory_Initialize(), v4 = 0, v3))
    {
      v3 = sub_1001D8BF4(a1);
      goto LABEL_5;
    }
  }

LABEL_11:

  return _objc_release_x1(v3, v4);
}

uint64_t sub_1000301A4(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = v3;
  if (v3)
  {
    if (dword_1002F6550 > 90)
    {
      goto LABEL_11;
    }

    v6 = v3;
    if (dword_1002F6550 == -1)
    {
      v3 = _LogCategory_Initialize();
      v4 = v6;
      if (!v3)
      {
        goto LABEL_11;
      }
    }

    v3 = LogPrintF(&dword_1002F6550, "[AASleepDetectionManager _sendSleepDetectionReset:withResetReason:]_block_invoke", 90, "Send Sleep Detection Message <%@> failed with error: %@\n", *(a1 + 32), v4);
LABEL_5:
    v4 = v6;
    goto LABEL_11;
  }

  if (dword_1002F6550 <= 30)
  {
    v6 = 0;
    if (dword_1002F6550 != -1 || (v3 = _LogCategory_Initialize(), v4 = 0, v3))
    {
      v3 = sub_1001D8C64(a1);
      goto LABEL_5;
    }
  }

LABEL_11:

  return _objc_release_x1(v3, v4);
}

id sub_10003042C(uint64_t a1, uint64_t a2)
{
  v2 = a2;
  if (dword_1002F6550 <= 30 && (dword_1002F6550 != -1 || _LogCategory_Initialize()))
  {
    sub_1001D8E5C();
  }

  v4 = *(a1 + 32);
  if (v4[81] != v2)
  {
    v4[81] = v2 != 0;
    v4 = *(a1 + 32);
  }

  v5 = *(a1 + 40);

  return [v4 _updateSleepStatus:v5 deviceLost:0];
}

id sub_1000305F8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = a1;
  if (dword_1002F6550 <= 30)
  {
    if (dword_1002F6550 != -1 || (a1 = _LogCategory_Initialize(), a1))
    {
      sub_1001D8EDC(a1, a2, a3);
    }
  }

  [*(v3 + 32) _setSleepDetectionState:1];
  [*(v3 + 32) _sendMediaRemoteCommand:1 startRewindMediaTimer:1];
  v4 = *(v3 + 32);

  return [v4 _stopCoolOffTimer];
}

id sub_1000307E4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = a1;
  if (dword_1002F6550 <= 30)
  {
    if (dword_1002F6550 != -1 || (a1 = _LogCategory_Initialize(), a1))
    {
      sub_1001D8F14(a1, a2, a3);
    }
  }

  [*(v3 + 32) _processRewindMediaRequest];
  [*(v3 + 32) _stopRewindMediaTimer];
  v4 = *(v3 + 32);

  return [v4 _sendSleepDetectionUserResumedMedia:0];
}

void sub_100030F08(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = *(a1 + 32);
  v5 = *(v4 + 64);
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_100030FA4;
  v7[3] = &unk_1002B6D18;
  v7[4] = v4;
  v8 = v3;
  v6 = v3;
  dispatch_async(v5, v7);
}

_DWORD *sub_100031100(uint64_t a1)
{
  result = *(a1 + 32);
  if (result[7] != -1)
  {
    return [result _processUserActivity];
  }

  return result;
}

uint64_t sub_1000311A4(uint64_t a1, __int16 a2, void *a3)
{
  v5 = a3;
  v7 = v5;
  if (!v5)
  {
    v9 = *(a1 + 32);
    v8 = (a1 + 32);
    *(v9 + 24) = a2;
    v11 = 0;
    if (dword_1002F6550 <= 30 && (dword_1002F6550 != -1 || (v5 = _LogCategory_Initialize(), v7 = 0, v5)))
    {
      v5 = sub_1001D9210(v8, (a2 & 0x100) == 0);
      v7 = 0;
      if ((a2 & 0x100) == 0)
      {
        goto LABEL_15;
      }
    }

    else if ((a2 & 0x100) == 0)
    {
      goto LABEL_15;
    }

    if (dword_1002F6550 <= 30)
    {
      if (dword_1002F6550 != -1 || (v5 = _LogCategory_Initialize(), v5))
      {
        sub_1001D9294(v5, v7, v6);
      }
    }

    [*v8 _sendSleepDetectionFailureMetric:2];
    [*v8 _stopCoolOffTimer];
    v5 = [*v8 _sendSleepDetectionReset:*(*v8 + 20) withResetReason:1];
    goto LABEL_14;
  }

  if (dword_1002F6550 <= 90)
  {
    v11 = v5;
    if (dword_1002F6550 != -1 || (v5 = _LogCategory_Initialize(), v7 = v11, v5))
    {
      v5 = sub_1001D91D0(v7);
LABEL_14:
      v7 = v11;
    }
  }

LABEL_15:

  return _objc_release_x1(v5, v7);
}

uint64_t sub_100031C98(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = dword_1002F6550;
  if (!a2)
  {
    return sub_1001D95A4(dword_1002F6550, a2, a3);
  }

  if (dword_1002F6550 <= 30)
  {
    if (dword_1002F6550 != -1 || (v3 = _LogCategory_Initialize(), v3))
    {
      sub_1001D9588(v3, a2, a3);
    }
  }

  MRMediaRemoteGetLocalOrigin();
  return MRMediaRemoteGetNowPlayingInfoWithOptionalArtwork();
}

void sub_100031D60(uint64_t a1, void *a2)
{
  if (dword_1002F6550 <= 30 && (dword_1002F6550 != -1 || _LogCategory_Initialize()))
  {
    sub_1001D95FC(a2);
  }

  v4 = [NSNumber numberWithInt:5];
  v7 = *(a1 + 32);
  v6 = (a1 + 32);
  v5 = v7;
  if (v7[18])
  {
    v8 = v5[15];
    if (v8)
    {
      v9 = v8;

      v5 = *v6;
      v4 = v9;
    }
  }

  v10 = v5[9];
  if (v10)
  {
    v11 = [v10 integerValue];
  }

  else
  {
    v11 = 600;
  }

  obj = +[NSNumber numberWithInteger:](NSNumber, "numberWithInteger:", [v4 integerValue] + v11);

  objc_storeStrong(*v6 + 15, obj);
  v12 = [a2 objectForKeyedSubscript:kMRMediaRemoteNowPlayingInfoElapsedTime];
  [v12 doubleValue];
  v14 = v13;

  [obj doubleValue];
  v15 = 0.0;
  if (v14 > v16)
  {
    [obj doubleValue];
    v15 = v14 - v17;
  }

  *(*v6 + 16) = v15;
  if (dword_1002F6550 <= 30 && (dword_1002F6550 != -1 || _LogCategory_Initialize()))
  {
    sub_1001D963C(v6);
  }

  [*v6 _sendMediaRemoteCommand:24 startRewindMediaTimer:0];
}

uint64_t sub_100031F88(uint64_t result, uint64_t a2)
{
  v2 = a2;
  v3 = result;
  if (dword_1002F6550 <= 30)
  {
    if (dword_1002F6550 != -1 || (result = _LogCategory_Initialize(), result))
    {
      result = sub_1001D96E4();
    }
  }

  v4 = *(v3 + 32);
  if (*(v4 + 81) != v2)
  {
    *(v4 + 81) = v2 != 0;
  }

  return result;
}

void sub_100032014(id a1, __CFString *a2)
{
  if (dword_1002F6550 <= 30 && (dword_1002F6550 != -1 || _LogCategory_Initialize()))
  {
    sub_1001D9724(a2);
  }
}

void sub_1000323AC(uint64_t a1)
{
  v2 = [*(a1 + 32) _notificationContentForSleepDetectionNotificationForDevice:*(*(a1 + 32) + 40)];
  v3 = *(a1 + 32);
  v4 = *(v3 + 208);
  v5[0] = _NSConcreteStackBlock;
  v5[1] = 3221225472;
  v5[2] = sub_100032448;
  v5[3] = &unk_1002B79C8;
  v5[4] = v3;
  [v4 deliverNotificationWithContent:v2 completion:v5];
}

void sub_100032448(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = *(a1 + 32);
  v5 = *(v4 + 64);
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_1000324E4;
  v7[3] = &unk_1002B6D18;
  v8 = v3;
  v9 = v4;
  v6 = v3;
  dispatch_async(v5, v7);
}

void sub_1000324E4(uint64_t a1)
{
  v2 = (a1 + 32);
  if (*(a1 + 32))
  {
    if (dword_1002F6550 > 90 || dword_1002F6550 == -1 && !_LogCategory_Initialize())
    {
      return;
    }

    sub_1001D97DC(a1, v2, &v4);
  }

  else
  {
    if (dword_1002F6550 > 30 || dword_1002F6550 == -1 && !_LogCategory_Initialize())
    {
      return;
    }

    sub_1001D9870(a1, &v4);
  }

  v3 = v4;
}

void sub_1000329D0(id *a1)
{
  v7 = [a1[4] actionIdentifier];
  if (dword_1002F6550 <= 30 && (dword_1002F6550 != -1 || _LogCategory_Initialize()))
  {
    LogPrintF(&dword_1002F6550, "[AASleepDetectionManager receivedNotificationResponse:forRequest:]_block_invoke", 30, "Notification response[%@]: %@. For request: %@", v7, a1[4], a1[5]);
  }

  v2 = [a1[5] content];
  v3 = [v2 categoryIdentifier];

  v4 = v3;
  v5 = v4;
  if (v4 == @"SleepDetectionUserNotification" || v4 && (v6 = [(__CFString *)v4 isEqual:@"SleepDetectionUserNotification"], v5, v6))
  {
    [a1[6] _receivedSleepDetectionNotificationAction:v7 forRequest:a1[5]];
  }
}

uint64_t sub_10003304C(uint64_t a1, uint64_t a2, uint64_t a3, const char *a4)
{

  return LogPrintF(a1, a2, 40, a4);
}

void sub_100034478(id a1)
{
  if (GestaltGetDeviceClass() != 7)
  {
    v1 = objc_alloc_init(AALowBatteryAlertDaemon);
    v2 = qword_1002FA0A0;
    qword_1002FA0A0 = v1;

    _objc_release_x1(v1, v2);
  }
}

void sub_1000359E8(uint64_t a1)
{
  v2 = *(a1 + 32);
  v3 = [*(a1 + 40) lowBatteryCheckCoalescer];

  if (v2 == v3)
  {
    v4 = *(a1 + 40);

    [v4 _checkForLowBattery];
  }
}

void sub_10003635C(uint64_t a1, uint64_t a2, void *a3)
{
  v3 = a2;
  v8 = a3;
  v5 = *(a1 + 32);
  v6 = [*(a1 + 40) lowBatteryBannerIOS];

  v7 = v8;
  if (v5 == v6)
  {
    if (dword_1002F6620 <= 30 && (dword_1002F6620 != -1 || _LogCategory_Initialize()))
    {
      sub_1001DAB8C(v3, v8);
    }

    [*(a1 + 40) _dismissLowBatteryAlertOnIOS];
    v7 = v8;
  }
}

void sub_100036868(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, ...)
{
  va_start(va, a16);
  (*(v16 + 16))(v16, a2, a3, a4, a5, a6, a7, a8);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t sub_1000368B8(uint64_t a1)
{
  if (dword_1002F6620 <= 30 && (dword_1002F6620 != -1 || _LogCategory_Initialize()))
  {
    sub_1001DABEC(a1);
  }

  v2 = *(*(a1 + 32) + 16);

  return v2();
}

void sub_10003772C(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v7 = [*(a1 + 32) dispatchQueue];
  v10[0] = _NSConcreteStackBlock;
  v10[1] = 3221225472;
  v10[2] = sub_10003781C;
  v10[3] = &unk_1002B7B18;
  v11 = v5;
  v12 = *(a1 + 40);
  v13 = v6;
  v14 = *(a1 + 32);
  v8 = v6;
  v9 = v5;
  dispatch_async(v7, v10);
}

void sub_10003781C(void *result)
{
  v2 = (result + 4);
  if (result[4])
  {
    if (dword_1002F6620 <= 90 && (dword_1002F6620 != -1 || _LogCategory_Initialize()))
    {
      sub_1001DAF04(result, v2);
    }
  }

  else
  {
    if (dword_1002F6620 <= 30 && (dword_1002F6620 != -1 || _LogCategory_Initialize()))
    {
      sub_1001DAF84(result);
    }

    v4 = result[6];
    v3 = result[7];
    v5 = result[5];

    [v3 _chargingNotificationDeliveredWithIdentifier:v4 forBatteryInfo:v5 withType:2];
  }
}

void sub_100038578(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v7 = [*(a1 + 32) dispatchQueue];
  v10[0] = _NSConcreteStackBlock;
  v10[1] = 3221225472;
  v10[2] = sub_100038668;
  v10[3] = &unk_1002B7B18;
  v11 = v5;
  v12 = *(a1 + 40);
  v13 = v6;
  v14 = *(a1 + 32);
  v8 = v6;
  v9 = v5;
  dispatch_async(v7, v10);
}

void sub_100038668(void *result)
{
  v2 = (result + 4);
  if (result[4])
  {
    if (dword_1002F6620 <= 90 && (dword_1002F6620 != -1 || _LogCategory_Initialize()))
    {
      sub_1001DB924(result, v2);
    }
  }

  else
  {
    if (dword_1002F6620 <= 30 && (dword_1002F6620 != -1 || _LogCategory_Initialize()))
    {
      sub_1001DB9A4(result);
    }

    v4 = result[6];
    v3 = result[7];
    v5 = result[5];

    [v3 _chargingNotificationDeliveredWithIdentifier:v4 forBatteryInfo:v5 withType:1];
  }
}

void sub_100038DDC(uint64_t a1, void *a2)
{
  v3 = a2;
  if (dword_1002F6620 <= 30 && (dword_1002F6620 != -1 || _LogCategory_Initialize()))
  {
    sub_1001DBB60(v3);
  }

  v4 = [*(a1 + 32) dispatchQueue];
  v6[0] = _NSConcreteStackBlock;
  v6[1] = 3221225472;
  v6[2] = sub_100038ECC;
  v6[3] = &unk_1002B6D18;
  v6[4] = *(a1 + 32);
  v7 = v3;
  v5 = v3;
  dispatch_async(v4, v6);
}

void sub_100038ECC(uint64_t a1)
{
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v2 = [*(a1 + 32) chargingNotificationMap];
  v3 = [v2 allValues];

  v4 = [v3 countByEnumeratingWithState:&v11 objects:v15 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = *v12;
    do
    {
      v7 = 0;
      do
      {
        if (*v12 != v6)
        {
          objc_enumerationMutation(v3);
        }

        v8 = *(*(&v11 + 1) + 8 * v7);
        if (([v8 cleared] & 1) == 0 && (objc_msgSend(v8, "dismissed") & 1) == 0)
        {
          v9 = [v8 notificationIdentifier];
          if (v9 && ([*(a1 + 40) containsObject:v9] & 1) == 0)
          {
            if (dword_1002F6620 <= 30 && (dword_1002F6620 != -1 || _LogCategory_Initialize()))
            {
              sub_1001DBBA0(v8, v9);
            }

            [*(a1 + 32) _dismissNotification:v8 withReason:1];
          }
        }

        v7 = v7 + 1;
      }

      while (v5 != v7);
      v10 = [v3 countByEnumeratingWithState:&v11 objects:v15 count:16];
      v5 = v10;
    }

    while (v10);
  }
}

id sub_1000399B4(uint64_t a1)
{
  if (dword_1002F6620 <= 30 && (dword_1002F6620 != -1 || _LogCategory_Initialize()))
  {
    sub_1001DC024(a1);
  }

  v2 = [*(a1 + 40) lowBatteryCheckCoalescer];
  [v2 trigger];

  [*(a1 + 40) _checkShouldClearChargingReminderWithUpdatedBatteryInfo:*(a1 + 32)];
  [*(a1 + 40) _checkChargingCompleteNotificationWithUpdatedBatteryInfo:*(a1 + 32)];
  v4 = *(a1 + 32);
  v3 = *(a1 + 40);

  return [v3 _lastSeenBatteryInfoUpdated:v4];
}

void sub_100039AFC(uint64_t a1)
{
  if (dword_1002F6620 <= 30 && (dword_1002F6620 != -1 || _LogCategory_Initialize()))
  {
    sub_1001DC068(a1);
  }

  v2 = [*(a1 + 40) lowBatteryCheckCoalescer];
  [v2 trigger];
}

void sub_100039CD4(uint64_t a1)
{
  v2 = (a1 + 32);
  if ([*(a1 + 32) chargingReminderEnabled] == 2)
  {
    if (dword_1002F6620 <= 10 && (dword_1002F6620 != -1 || _LogCategory_Initialize()))
    {
      sub_1001DC0AC(v2);
    }

    v3 = *(a1 + 40);
    v4 = [*(a1 + 32) identifier];
    [v3 _clearAllNotificationWithIdentifier:v4 reason:9];
  }
}

void sub_100039E24(uint64_t a1)
{
  if (dword_1002F6620 <= 30 && (dword_1002F6620 != -1 || _LogCategory_Initialize()))
  {
    sub_1001DC10C(a1);
  }

  v2 = *(a1 + 40);
  v3 = [*(a1 + 32) identifier];
  [v2 _clearAllNotificationWithIdentifier:v3 reason:10];

  v4 = *(a1 + 40);
  v5 = [*(a1 + 32) identifier];
  [v4 _clearLastSeenBatteryInfoWithIdentifier:v5];

  v6 = *(a1 + 40);
  v7 = [*(a1 + 32) identifier];
  [v6 _clearLowBatteryDevicesWithIdentifier:v7];
}

void sub_10003A064(uint64_t a1)
{
  v2 = *(a1 + 32);
  v3 = [*(a1 + 40) systemPowerMonitor];

  if (v2 == v3)
  {
    v4 = *(a1 + 40);

    [v4 _powerMonitorStateChanged];
  }
}

id sub_10003AA30(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = a1;
  if (dword_1002F6620 <= 30)
  {
    if (dword_1002F6620 != -1 || (a1 = _LogCategory_Initialize(), a1))
    {
      sub_1001DC520(a1, a2, a3);
    }
  }

  v4 = *(v3 + 32);

  return [v4 _loadPreferences];
}

id sub_10003AA98(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = a1;
  if (dword_1002F6620 <= 30)
  {
    if (dword_1002F6620 != -1 || (a1 = _LogCategory_Initialize(), a1))
    {
      sub_1001DC53C(a1, a2, a3);
    }
  }

  v4 = *(v3 + 32);

  return [v4 _lowBatteryMonitoringReset];
}

id sub_10003AB00(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = a1;
  if (dword_1002F6620 <= 30)
  {
    if (dword_1002F6620 != -1 || (a1 = _LogCategory_Initialize(), a1))
    {
      sub_1001DC558(a1, a2, a3);
    }
  }

  v4 = *(v3 + 32);

  return [v4 _chargingNotificationReset];
}

id sub_10003AB68(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = a1;
  if (dword_1002F6620 <= 30)
  {
    if (dword_1002F6620 != -1 || (a1 = _LogCategory_Initialize(), a1))
    {
      sub_1001DC574(a1, a2, a3);
    }
  }

  v4 = *(v3 + 32);

  return [v4 _triggerChargingReminderCheck];
}

void sub_10003B284(id *a1)
{
  v12 = [a1[4] actionIdentifier];
  if (dword_1002F6620 <= 30 && (dword_1002F6620 != -1 || _LogCategory_Initialize()))
  {
    LogPrintF(&dword_1002F6620, "[AALowBatteryAlertDaemon receivedNotificationResponse:forRequest:]_block_invoke", 30, "Notification response[%@]: %@. For request: %@", v12, a1[4], a1[5]);
  }

  v2 = [a1[5] content];
  v3 = [v2 userInfo];
  v4 = [v3 objectForKeyedSubscript:@"deviceIdentifier"];

  if (!v4)
  {
    sub_1001DC750();
    goto LABEL_13;
  }

  v5 = [a1[5] content];
  v6 = [v5 userInfo];
  v7 = [v6 objectForKeyedSubscript:@"notificationType"];
  v8 = [v7 unsignedLongValue];

  if (!v8)
  {
    sub_1001DC69C();
    goto LABEL_13;
  }

  v9 = v12;
  v10 = v9;
  if (v9 == UNNotificationDismissActionIdentifier)
  {

    goto LABEL_12;
  }

  if ((v9 != 0) != (UNNotificationDismissActionIdentifier == 0))
  {
    v11 = [(NSString *)v9 isEqual:UNNotificationDismissActionIdentifier];

    if ((v11 & 1) == 0)
    {
      goto LABEL_19;
    }

LABEL_12:
    [a1[6] _userDismissedNotificationWithIdentifier:v4 andType:v8];
    goto LABEL_13;
  }

LABEL_19:
  sub_1001DC624();
LABEL_13:
}

void sub_10003BFE0(void *a1)
{
  error = 0;
  v2 = objc_alloc_init(NSMutableDictionary);
  v3 = [AADeviceLocalization localizedStringForKey:a1[4] withDefaultValue:a1[4]];
  v4 = [AADeviceLocalization localizedStringForKey:a1[5] withDefaultValue:a1[5]];
  v5 = a1[6];
  if (v5)
  {
    v6 = [AADeviceLocalization localizedStringForKey:v5 withDefaultValue:a1[6]];
    if (v6)
    {
      [v2 setObject:v6 forKey:kCFUserNotificationAlertHeaderKey];
    }
  }

  [v2 setObject:v3 forKey:kCFUserNotificationAlertMessageKey];
  [v2 setObject:v4 forKey:kCFUserNotificationDefaultButtonTitleKey];
  v7 = a1[7];
  if (v7)
  {
    v8 = [AADeviceLocalization localizedStringForKey:v7 withDefaultValue:a1[7]];
    if (v8)
    {
      [v2 setObject:a1[7] forKey:kCFUserNotificationAlternateButtonTitleKey];
    }
  }

  v9 = CFUserNotificationCreate(kCFAllocatorDefault, 0.0, 1uLL, &error, v2);
  if (v9)
  {
    v10 = v9;
    *(a1[8] + 8) = v9;
    v12 = 0;
    CFUserNotificationReceiveResponse(v9, 0.0, &v12);
    if (!v12)
    {
      (*(a1[9] + 16))();
      if (dword_1002F6690 <= 30 && (dword_1002F6690 != -1 || _LogCategory_Initialize()))
      {
        sub_1001DC824();
      }
    }

    CFRelease(v10);
  }

  else
  {
    v11 = NSErrorF(NSOSStatusErrorDomain, 4294960560, "Failed to create notification");
    (*(a1[9] + 16))();
  }
}

void sub_10003DC70(id a1)
{
  if (GestaltGetDeviceClass() != 7)
  {
    v1 = objc_alloc_init(BTSmartRoutingDaemon);
    v2 = qword_1002FA0B0;
    qword_1002FA0B0 = v1;

    _objc_release_x1(v1, v2);
  }
}

uint64_t sub_10003DED8(uint64_t a1)
{
  v2 = [*(a1 + 32) _descriptionWithLevel:*(a1 + 48)];
  v3 = *(*(a1 + 40) + 8);
  v4 = *(v3 + 40);
  *(v3 + 40) = v2;

  return _objc_release_x1(v2, v4);
}

const char *sub_10003E708(unsigned int a1)
{
  if (a1 > 0xF)
  {
    return "?";
  }

  else
  {
    return off_1002B8F50[a1];
  }
}

void sub_10003E72C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = *(*(a1 + 32) + 8);
  obj = *(v3 + 40);
  NSAppendPrintF(&obj, "    %@\n", a3);
  objc_storeStrong((v3 + 40), obj);
}

void sub_10003E77C(uint64_t a1, uint64_t a2, void *a3)
{
  v3 = *(*(a1 + 32) + 8);
  obj = *(v3 + 40);
  v4 = [a3 bleDevice];
  NSAppendPrintF(&obj, "    %@\n", v4);
  objc_storeStrong((v3 + 40), obj);
}

void sub_10003E7E4(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = a3;
  v5 = *(*(a1 + 32) + 8);
  v47 = *(v5 + 40);
  NSAppendPrintF(&v47, "  -------------------------------  ");
  objc_storeStrong((v5 + 40), v47);
  v6 = *(*(a1 + 32) + 8);
  v46 = *(v6 + 40);
  NSAppendPrintF(&v46, "    %@\n", v4);
  objc_storeStrong((v6 + 40), v46);
  v7 = *(*(a1 + 32) + 8);
  v45 = *(v7 + 40);
  v8 = [v4 deviceAddress];
  NSAppendPrintF(&v45, "    Address: %@\n", v8);
  objc_storeStrong((v7 + 40), v45);

  v9 = *(*(a1 + 32) + 8);
  obj = *(v9 + 40);
  v10 = [v4 deviceName];
  NSAppendPrintF(&obj, "    Name: %@\n", v10);
  objc_storeStrong((v9 + 40), obj);

  v11 = *(*(a1 + 32) + 8);
  v43 = *(v11 + 40);
  v12 = [v4 deviceVersion];
  NSAppendPrintF(&v43, "    Version: %@\n", v12);
  objc_storeStrong((v11 + 40), v43);

  v13 = *(*(a1 + 32) + 8);
  v15 = *(v13 + 40);
  v14 = (v13 + 40);
  v42 = v15;
  if ([v4 inEar])
  {
    v16 = "yes";
  }

  else
  {
    v16 = "no";
  }

  NSAppendPrintF(&v42, "    InEar: %s\n", v16);
  objc_storeStrong(v14, v42);
  v17 = *(*(a1 + 32) + 8);
  v19 = *(v17 + 40);
  v18 = (v17 + 40);
  v41 = v19;
  v20 = [v4 routingAction];
  if (v20 > 5)
  {
    v21 = "?";
  }

  else
  {
    v21 = off_1002B90F8[v20];
  }

  NSAppendPrintF(&v41, "    BTAudioRoutingAction: %s\n", v21);
  objc_storeStrong(v18, v41);
  v22 = *(*(a1 + 32) + 8);
  v24 = *(v22 + 40);
  v23 = (v22 + 40);
  v40 = v24;
  if ([v4 routed])
  {
    v25 = "yes";
  }

  else
  {
    v25 = "no";
  }

  NSAppendPrintF(&v40, "    Routed: %s\n", v25);
  objc_storeStrong(v23, v40);
  v26 = *(*(a1 + 32) + 8);
  v39 = *(v26 + 40);
  v27 = [v4 otherTipiDeviceBTAddress];
  NSAppendPrintF(&v39, "    OtherAddress: %@\n", v27);
  objc_storeStrong((v26 + 40), v39);

  v28 = *(*(a1 + 32) + 8);
  v38 = *(v28 + 40);
  v29 = [v4 otherTipiDeviceBTName];
  NSAppendPrintF(&v38, "    OtherName: %@\n", v29);
  objc_storeStrong((v28 + 40), v38);

  v30 = *(*(a1 + 32) + 8);
  v37 = *(v30 + 40);
  v31 = [v4 otherTipiDeviceVersion];
  NSAppendPrintF(&v37, "    OtherVersion: %@\n", v31);
  objc_storeStrong((v30 + 40), v37);

  v32 = *(*(a1 + 32) + 8);
  v34 = *(v32 + 40);
  v33 = (v32 + 40);
  v36 = v34;
  if ([v4 isTipiHealingV2Eligible])
  {
    v35 = "yes";
  }

  else
  {
    v35 = "no";
  }

  NSAppendPrintF(&v36, "    TipiHealingv2Eligible: %s\n", v35);
  objc_storeStrong(v33, v36);
}

void sub_10003EB44(uint64_t a1, uint64_t a2, void *a3)
{
  v3 = *(*(a1 + 32) + 8);
  obj = *(v3 + 40);
  v4 = [a3 bleDevice];
  NSAppendPrintF(&obj, "    %@\n", v4);
  objc_storeStrong((v3 + 40), obj);
}

id sub_10003EC20(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = a1;
  if (dword_1002F6778 <= 30)
  {
    if (dword_1002F6778 != -1 || (a1 = _LogCategory_Initialize(), a1))
    {
      sub_1001E3424(a1, a2, a3);
    }
  }

  v4 = *(v3 + 32);

  return [v4 _activate];
}

id sub_10003F394(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = a1;
  if (dword_1002F6778 <= 30)
  {
    if (dword_1002F6778 != -1 || (a1 = _LogCategory_Initialize(), a1))
    {
      sub_1001E34E8(a1, a2, a3);
    }
  }

  v4 = *(v3 + 32);

  return [v4 _prefsChanged];
}

void sub_10003F404(uint64_t a1)
{
  if (dword_1002F6778 <= 30 && (dword_1002F6778 != -1 || _LogCategory_Initialize()))
  {
    sub_1001E3504();
  }

  v2 = +[CloudXPCService sharedInstance];
  v5 = @"srCapable";
  v3 = [NSNumber numberWithBool:*(*(a1 + 32) + 1172)];
  v6 = v3;
  v4 = [NSDictionary dictionaryWithObjects:&v6 forKeys:&v5 count:1];
  [v2 sendCloudKitMsg:@"smartRoutingCapable" args:v4];
}

void sub_10003F518(uint64_t a1)
{
  v1 = (a1 + 32);
  v2 = *(*(a1 + 32) + 1176);
  state64 = 0;
  notify_get_state(v2, &state64);
  v3 = state64;
  *(*v1 + 149) = state64 & 0xFFFFFFFFFFFFLL;
  *(*v1 + 148) = HIWORD(v3);
  v4 = NSPrintF("%012llx", *(*v1 + 149));
  [v4 UTF8String];
  v5 = NSDataWithHex();
  v6 = CUPrintNSDataAddress();

  if (dword_1002F6778 <= 30 && (dword_1002F6778 != -1 || _LogCategory_Initialize()))
  {
    sub_1001E355C(v1, v4, v6);
  }

  v7 = *v1;
  v8 = *(*v1 + 148);
  if (v8)
  {
    if (v8 == 11818)
    {
      v9 = [v7[157] bluetoothState];
      v7 = *v1;
      if (v9 != 4)
      {
        v10 = v7[151];
        if (!v10)
        {
          v11 = objc_alloc_init(NSMutableArray);
          v12 = *(*v1 + 151);
          *(*v1 + 151) = v11;

          v10 = *(*v1 + 151);
        }

        [v10 addObject:v6];
        v13 = [*(*v1 + 196) objectForKeyedSubscript:v6];
        if (!v13)
        {
          v13 = objc_alloc_init(SRDiscoveredDevice);
        }

        [(SRDiscoveredDevice *)v13 setIsManualDisconnectLastTime:1];
        [*(*v1 + 196) setObject:v13 forKeyedSubscript:v6];
        if (dword_1002F6778 <= 30 && (dword_1002F6778 != -1 || _LogCategory_Initialize()))
        {
          sub_1001E35D4(v6);
        }

        [*v1 _setDisconnectTick:0 forWxAddress:v6];
        v7 = *v1;
      }
    }

    v14 = v7[148];
    if (v14 != 328)
    {
      if (v14 == 10721)
      {
        [v7 _setDisconnectTick:mach_absolute_time() forWxAddress:v6];
        if (!*(*v1 + 193))
        {
          objc_storeStrong(*v1 + 193, v6);
          [*v1 _cacheBudswapInfo:v6];
          [*v1 _budSwapDetectionStartTimer:v6];
        }

        goto LABEL_33;
      }

      goto LABEL_23;
    }

    if (*(v7 + 468) != 1)
    {
LABEL_23:
      if (dword_1002F6778 <= 30 && (dword_1002F6778 != -1 || _LogCategory_Initialize()))
      {
        sub_1001E3614();
      }

      v16 = [*(*v1 + 159) objectForKey:v6];

      if (v16)
      {
        [*(*v1 + 159) removeObjectForKey:v6];
      }

      v17 = [*v1 _getWxFWVersion:v6];
      if ([@"6A221" compare:v17 options:64] == -1 && objc_msgSend(*v1, "_isAddDeviceToBackoffDueToDisconnect"))
      {
        [*v1 _setDisconnectTick:mach_absolute_time() forWxAddress:v6];
      }

      else
      {
        [*v1 _setDisconnectTick:0 forWxAddress:v6];
        [*v1 _evaluatorRunForUSBDevice:v6 trigger:3];
      }

      goto LABEL_33;
    }

    [v7 _setDisconnectTick:0 forWxAddress:v6];
    v15 = *v1;
    if (!*(*v1 + 193))
    {
      objc_storeStrong(v15 + 193, v6);
      [*v1 _cacheBudswapInfo:v6];
      [*v1 _budSwapDetectionStartTimer:v6];
      v15 = *v1;
    }

    [v15 _evaluatorRunForUSBDevice:v6 trigger:3];
  }

LABEL_33:
}

void sub_10003F8C0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = a1;
  if (dword_1002F6778 <= 30)
  {
    if (dword_1002F6778 != -1 || (a1 = _LogCategory_Initialize(), a1))
    {
      sub_1001E3648(a1, a2, a3);
    }
  }

  v10 = 0;
  v11 = &v10;
  v12 = 0x3032000000;
  v13 = sub_100003918;
  v14 = sub_100003838;
  v15 = 0;
  v4 = *(v3 + 32);
  v5 = *(v4 + 1240);
  v9[0] = _NSConcreteStackBlock;
  v9[1] = 3221225472;
  v9[2] = sub_10003FAD4;
  v9[3] = &unk_1002B7E18;
  v9[4] = v4;
  v9[5] = &v10;
  [v5 enumerateKeysAndObjectsUsingBlock:v9];
  if (v11[5])
  {
    v6 = [*(*(v3 + 32) + 224) objectForKeyedSubscript:?];
    if (v6)
    {
      v7 = [*(*(v3 + 32) + 224) objectForKeyedSubscript:v11[5]];
      if ([v7 audioStreamState] == 3)
      {
        v8 = [*(*(v3 + 32) + 184) connectedCallCount];

        if (v8 >= 1)
        {
          if (dword_1002F6778 <= 30 && (dword_1002F6778 != -1 || _LogCategory_Initialize()))
          {
            LogPrintF(&dword_1002F6778, "[BTSmartRoutingDaemon _activate]_block_invoke_3", 30, "Smart Routing MX is taking ownership, other side is with SCO, relinquish ownership.");
          }

          [*(v3 + 32) _relayConduitMessageSend:1 withOptions:&off_1002CBC70 andWxAddress:v11[5] andOtherAddress:0];
        }
      }

      else
      {
      }
    }
  }

  _Block_object_dispose(&v10, 8);
}

void sub_10003FAB8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_10003FAD4(uint64_t a1, void *a2, void *a3, _BYTE *a4)
{
  v11 = a2;
  v8 = a3;
  if (dword_1002F6778 <= 50 && (dword_1002F6778 != -1 || _LogCategory_Initialize()))
  {
    sub_1001E3664();
  }

  if ([v8 inEarDisabled])
  {
    v9 = [v8 otherTipiDeviceBTAddress];

    if (v9)
    {
      objc_storeStrong((*(*(a1 + 40) + 8) + 40), a2);
    }
  }

  if ([v8 inEar])
  {
    v10 = [v8 otherTipiDeviceBTAddress];

    if (v10)
    {
      objc_storeStrong((*(*(a1 + 40) + 8) + 40), a2);
      *a4 = 1;
    }
  }
}

uint64_t sub_10003FBF8(uint64_t a1)
{
  v1 = a1 + 32;
  v2 = *(*(a1 + 32) + 980);
  state64 = 0;
  result = notify_get_state(v2, &state64);
  v4 = state64;
  if (dword_1002F6778 <= 30)
  {
    if (dword_1002F6778 != -1 || (result = _LogCategory_Initialize(), result))
    {
      result = sub_1001E3738();
    }
  }

  *(*v1 + 976) = v4 != 0;
  return result;
}

id sub_10003FC88(uint64_t a1)
{
  v2 = *(*(a1 + 32) + 1268);
  state64 = 0;
  notify_get_state(v2, &state64);
  v3 = state64 != 0;
  if (dword_1002F6778 <= 30 && (dword_1002F6778 != -1 || _LogCategory_Initialize()))
  {
    sub_1001E379C();
  }

  *(*(a1 + 32) + 1265) = v3;
  v4 = [*(a1 + 32) workoutObserver];
  v5 = [v4 workoutActive];

  v6 = *(a1 + 32);
  if (v5)
  {
    if (v6[1265] == 1)
    {
      [v6 _showSplitterBlockingAlert];
    }
  }

  else
  {
    [v6 activeHRMDeviceUpdate];
  }

  return [*(a1 + 32) _sendAudioCategoryToAllTipiDevices];
}

void *sub_10003FD60(uint64_t a1)
{
  v2 = *(*(a1 + 32) + 680);
  state64 = 0;
  notify_get_state(v2, &state64);
  v3 = state64;
  if (dword_1002F6778 <= 30 && (dword_1002F6778 != -1 || _LogCategory_Initialize()))
  {
    sub_1001E37F4();
  }

  [*(*(a1 + 32) + 1256) setMagnetConnected:v3 != 0];
  result = *(a1 + 32);
  if (result[116])
  {
    return [result _checkTriangleRecovery];
  }

  return result;
}

void sub_10003FE74(uint64_t a1)
{
  v2 = *(a1 + 32);
  v3 = *(v2 + 16);
  *(v2 + 16) = 0;

  v4 = [*(a1 + 32) _activityMonitorEnsureStopped];
  v7 = *(a1 + 32);
  v8 = *(v7 + 104);
  if (v8)
  {
    *(v7 + 104) = 0;
  }

  if (dword_1002F6778 <= 30)
  {
    if (dword_1002F6778 != -1 || (v4 = _LogCategory_Initialize(), v4))
    {
      sub_1001E3844(v4, v5, v6);
    }
  }

  v9 = *(*(a1 + 32) + 56);
  if (v9)
  {
    v10 = v9;
    dispatch_source_cancel(v10);
    v11 = *(a1 + 32);
    v12 = *(v11 + 56);
    *(v11 + 56) = 0;
  }

  v13 = *(*(a1 + 32) + 168);
  if (v13)
  {
    v14 = v13;
    dispatch_source_cancel(v14);
    v15 = *(a1 + 32);
    v16 = *(v15 + 168);
    *(v15 + 168) = 0;
  }

  v17 = *(a1 + 32);
  v18 = *(v17 + 728);
  if (v18 != -1)
  {
    notify_cancel(v18);
    *(*(a1 + 32) + 728) = -1;
    v17 = *(a1 + 32);
  }

  v19 = *(v17 + 844);
  if (v19 != -1)
  {
    notify_cancel(v19);
    *(*(a1 + 32) + 844) = -1;
    v17 = *(a1 + 32);
  }

  v20 = *(v17 + 1136);
  if (v20)
  {
    v21 = v20;
    dispatch_source_cancel(v21);
    v22 = *(a1 + 32);
    v23 = *(v22 + 1136);
    *(v22 + 1136) = 0;
  }

  v24 = *(*(a1 + 32) + 1352);
  if (v24)
  {
    v25 = v24;
    dispatch_source_cancel(v25);
    v26 = *(a1 + 32);
    v27 = *(v26 + 1352);
    *(v26 + 1352) = 0;
  }

  [*(a1 + 32) _tipiHealingHijackTimerReset];
  v28 = *(*(a1 + 32) + 496);
  if (v28)
  {
    v29 = v28;
    dispatch_source_cancel(v29);
    v30 = *(a1 + 32);
    v31 = *(v30 + 496);
    *(v30 + 496) = 0;
  }

  v32 = *(a1 + 32);
  v33 = *(v32 + 1240);
  *(v32 + 1240) = 0;

  v34 = *(a1 + 32);
  v35 = *(v34 + 1568);
  *(v34 + 1568) = 0;

  if (_os_feature_enabled_impl())
  {
    v36 = *(a1 + 32);
    v37 = *(v36 + 672);
    *(v36 + 672) = 0;
  }

  v38 = *(a1 + 32);
  v39 = *(v38 + 704);
  *(v38 + 704) = 0;

  v40 = *(a1 + 32);
  v41 = *(v40 + 1048);
  *(v40 + 1048) = 0;

  v42 = *(a1 + 32);
  v43 = *(v42 + 1072);
  *(v42 + 1072) = 0;

  *(*(a1 + 32) + 1336) = 0;
  v44 = *(*(a1 + 32) + 1464);
  if (v44)
  {
    v45 = v44;
    dispatch_source_cancel(v45);
    v46 = *(a1 + 32);
    v47 = *(v46 + 1464);
    *(v46 + 1464) = 0;
  }

  [*(a1 + 32) _evaluatorEnsureStopped];
  [*(a1 + 32) _connectedDeviceMonitorEnsureStopped];
  [*(a1 + 32) _mediaRouteMonitorEnsureStopped];
  [*(a1 + 32) _nearbyInfoDiscoveryEnsureStopped];
  [*(a1 + 32) _pipeEnsureStopped];
  [*(a1 + 32) _powerMonitorEnsureStopped];
  [*(a1 + 32) _workoutObserverEnsureStopped];
  [*(a1 + 32) _wxDiscoveryEnsureStopped];
  [*(a1 + 32) _TUMonitorEnsureStopped];
  [*(a1 + 32) _systemUIMonitorEnsureStopped];
  v57 = +[NSNotificationCenter defaultCenter];
  [v57 removeObserver:*(a1 + 32) name:@"BTTotalIDSDeviceCountChanged" object:0];
  v48 = +[NSDistributedNotificationCenter defaultCenter];
  [v48 removeObserver:*(a1 + 32) name:@"com.apple.BTServer.TriangleRecoveryInitiated" object:0];

  v49 = *(a1 + 32);
  v50 = *(v49 + 1528);
  *(v49 + 1528) = 0;

  [*(a1 + 32) _mediaRouteDiscoveryStopped];
  v51 = *(a1 + 32);
  v52 = *(v51 + 980);
  if (v52 != -1)
  {
    notify_cancel(v52);
    *(*(a1 + 32) + 980) = -1;
    v51 = *(a1 + 32);
  }

  v53 = *(v51 + 1268);
  if (v53 != -1)
  {
    notify_cancel(v53);
    *(*(a1 + 32) + 1268) = -1;
    v51 = *(a1 + 32);
  }

  v54 = *(v51 + 1176);
  if (v54 != -1)
  {
    notify_cancel(v54);
    *(*(a1 + 32) + 1176) = -1;
    v51 = *(a1 + 32);
  }

  v55 = *(v51 + 192);
  if (v55 != -1)
  {
    notify_cancel(v55);
    *(*(a1 + 32) + 192) = -1;
    v51 = *(a1 + 32);
  }

  v56 = *(v51 + 1520);
  *(v51 + 1520) = 0;
}

void sub_1000415AC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, ...)
{
  va_start(va, a16);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_10004175C(uint64_t a1)
{
  v32 = 0;
  v33 = &v32;
  v34 = 0x2020000000;
  v35 = 4;
  v26 = 0;
  v27 = &v26;
  v28 = 0x3032000000;
  v29 = sub_100003918;
  v30 = sub_100003838;
  v31 = 0;
  v25 = 0;
  if (dword_1002F6778 <= 30 && (dword_1002F6778 != -1 || _LogCategory_Initialize()))
  {
    v2 = [*(*(a1 + 32) + 752) discoveredDevices];
    v3 = [v2 count];
    v4 = [*(*(a1 + 32) + 224) count];
    v5 = [*(*(a1 + 32) + 1552) count];
    v6 = [*(*(a1 + 32) + 1488) count];
    v7 = [*(*(a1 + 32) + 232) bluetoothState];
    if (v7 > 0xA)
    {
      v8 = "?";
    }

    else
    {
      v8 = off_1002B8BF8[v7];
    }

    if (*(*(a1 + 32) + 384))
    {
      v9 = "yes";
    }

    else
    {
      v9 = "no";
    }

    LogPrintF(&dword_1002F6778, "[BTSmartRoutingDaemon areHeadphonesNearbyAndEligibleToPlay:]_block_invoke", 30, "areHeadphonesNearbyAndEligibleToPlay: Paired %d Connected %d, NearbyInfo %d, Wx %d BluetoothState %s Screen lock state %s", v3, v4, v5, v6, v8, v9);
  }

  v21[0] = _NSConcreteStackBlock;
  v21[1] = 3221225472;
  v21[2] = sub_100041AFC;
  v21[3] = &unk_1002B74F8;
  v23 = &v32;
  v22 = *(a1 + 40);
  v24 = &v26;
  v10 = objc_retainBlock(v21);
  v11 = [*(a1 + 32) _getInEarSrWxDevice];
  v12 = *(a1 + 32);
  if (!v11)
  {
    if (![*(v12 + 1488) count])
    {
LABEL_28:
      v13 = v33;
      goto LABEL_29;
    }

    v15 = *(a1 + 32);
    v16 = (v27 + 5);
    obj = v27[5];
    v17 = [v15 _getEligibleNearbyWxDevice:&obj companionNeedsToBeIdle:1 isStreamingFromCompanion:&v25];
    objc_storeStrong(v16, obj);

    if (!v17)
    {
      v13 = v33;
      if (v25 == 1)
      {
        v14 = 3;
        goto LABEL_27;
      }

LABEL_29:
      *(v13 + 24) = 0;
      goto LABEL_32;
    }

LABEL_26:
    v13 = v33;
    v14 = 1;
    goto LABEL_27;
  }

  if ([*(v12 + 600) intValue] > 100 || *(*(a1 + 32) + 88) == 1)
  {
    v13 = v33;
    v14 = 2;
LABEL_27:
    *(v13 + 24) = v14;
    goto LABEL_32;
  }

  v18 = [v11 otherTipiDeviceBTAddress];

  if (!v18)
  {
    goto LABEL_26;
  }

  if (![v11 otherTipiAudioCategory])
  {
    goto LABEL_28;
  }

  if ([v11 otherTipiAudioCategory] == 100)
  {
    if ([v11 otherTipiDeviceIsStreamingAudio])
    {
      v19 = 3;
    }

    else
    {
      v19 = 1;
    }
  }

  else
  {
    v19 = 3;
  }

  *(v33 + 24) = v19;
LABEL_32:

  (v10[2])(v10);
  _Block_object_dispose(&v26, 8);

  _Block_object_dispose(&v32, 8);
}

void sub_100041AB4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, ...)
{
  va_start(va, a24);
  (*(v24 + 16))(v24, a2, a3, a4, a5, a6, a7, a8);
  _Block_object_dispose(va, 8);
  _Block_object_dispose((v25 - 112), 8);
  _Unwind_Resume(a1);
}

uint64_t sub_100041AFC(uint64_t a1)
{
  if (dword_1002F6778 <= 30 && (dword_1002F6778 != -1 || _LogCategory_Initialize()))
  {
    sub_1001E4270(a1);
  }

  v2 = *(*(a1 + 32) + 16);

  return v2();
}

void sub_10004206C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, ...)
{
  va_start(va, a18);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_100042084(uint64_t a1)
{
  v5[0] = _NSConcreteStackBlock;
  v5[1] = 3221225472;
  v5[2] = sub_100042140;
  v5[3] = &unk_1002B7E68;
  v4 = *(a1 + 32);
  v6 = vextq_s8(v4, v4, 8uLL);
  v7 = *(a1 + 48);
  v3 = *(a1 + 56);
  v2 = v3;
  v8 = v3;
  [v4.i64[0] activateWithCompletion:v5];
}

void sub_100042140(uint64_t a1, void *a2)
{
  v3 = a2;
  if (*(*(a1 + 32) + 256) == *(a1 + 40))
  {
    v10 = v3;
    if (dword_1002F6778 <= 30 && (dword_1002F6778 != -1 || _LogCategory_Initialize()))
    {
      LogPrintF(&dword_1002F6778, "[BTSmartRoutingDaemon _connectToHeadphone:]_block_invoke_2", 30, "Evaluator: connect complete: %@, %{error}", *(a1 + 48), v10);
    }

    *(*(a1 + 32) + 1184) = 0;
    *(*(a1 + 32) + 272) = mach_absolute_time();
    v4 = [*(*(a1 + 32) + 664) objectForKeyedSubscript:*(*(*(a1 + 64) + 8) + 40)];
    [v4 lastConnectionTicks];
    v5 = UpTicksToMilliseconds();

    if (v5 >= 0x1389 && dword_1002F6778 <= 90 && (dword_1002F6778 != -1 || _LogCategory_Initialize()))
    {
      sub_1001E43E0(v5);
    }

    [*(a1 + 56) setLastConnectTime:v5];
    if (v10)
    {
      v6 = [NSString stringWithFormat:@"%@", v10];
      [*(a1 + 56) setLastConnectResult:v6];
    }

    else
    {
      [*(a1 + 56) setLastConnectResult:@"Success"];
    }

    [*(a1 + 32) _smartRoutingConnectionCompleted:v10];
    v7 = [*(*(a1 + 32) + 664) objectForKeyedSubscript:*(*(*(a1 + 64) + 8) + 40)];
    v8 = [v7 preemptiveBannerShown];

    v3 = v10;
    if (!v10 && v8)
    {
      v9 = [*(*(a1 + 32) + 664) objectForKeyedSubscript:*(*(*(a1 + 64) + 8) + 40)];
      [v9 setFirstPreemptiveBannerShown:0];

      v3 = 0;
    }
  }
}

uint64_t sub_100042650(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = v3;
  if (!v3)
  {
    goto LABEL_52;
  }

  v32 = v3;
  if (dword_1002F6778 <= 90)
  {
    if (dword_1002F6778 != -1 || (v5 = _LogCategory_Initialize(), v4 = v32, v5))
    {
      sub_1001E4420(a1);
      v4 = v32;
    }
  }

  v6 = (a1 + 40);
  [*(a1 + 40) _setOtherTipiDeviceBTAddress:0 andName:0 sourceVersion:0 withResult:v4];
  if (GestaltGetDeviceClass() == 6)
  {
    *(*v6 + 1460) = 0;
    [*v6 _update];
  }

  v7 = CUPrintNSError();
  v8 = [v32 code];
  if (v8 == -6709)
  {
    if (dword_1002F6778 <= 90)
    {
      if (dword_1002F6778 != -1 || (v8 = _LogCategory_Initialize(), v8))
      {
        sub_1001E45D8(v8, v9, v10);
      }
    }

    goto LABEL_44;
  }

  if ([*v6 _isOnDemandConnectInProgress])
  {
    v11 = [v7 isEqualToString:@"kUnknownErr (Cleanup before done)"];
    if (v11)
    {
      if (dword_1002F6778 <= 90)
      {
        if (dword_1002F6778 != -1 || (v11 = _LogCategory_Initialize(), v11))
        {
          sub_1001E45BC(v11, v12, v13);
        }
      }

      goto LABEL_44;
    }
  }

  v14 = (a1 + 48);
  v15 = [*(a1 + 48) fwVersion];
  if ([*(a1 + 48) isNearby])
  {
    v16 = [*v14 nearbyAudioState];
    if (!v15 || v16)
    {
      goto LABEL_25;
    }
  }

  else if (!v15)
  {
    goto LABEL_25;
  }

  if ([@"5A187" compare:v15 options:64] == -1)
  {
    v17 = [*(*(a1 + 40) + 1256) isFirstConnectionAfterSREnable];
    v19 = *(a1 + 56);
    v18 = (a1 + 56);
    v20 = [v17 objectForKey:v19];

    if (!v20)
    {
      if (dword_1002F6778 <= 90 && (dword_1002F6778 != -1 || _LogCategory_Initialize()))
      {
        sub_1001E448C(v6, v18);
      }

      *(*v6 + 1336) = 1;
      [*v14 setPrevFailedTipiConnectType:6];
      goto LABEL_42;
    }
  }

LABEL_25:
  if (dword_1002F6778 <= 90 && (dword_1002F6778 != -1 || _LogCategory_Initialize()))
  {
    sub_1001E4510(v14, v15);
  }

  v21 = [v32 code];
  if (v21 == -6722)
  {
    if (dword_1002F6778 <= 90)
    {
      if (dword_1002F6778 != -1 || (v21 = _LogCategory_Initialize(), v21))
      {
        sub_1001E45A0(v21, v22, v23);
      }
    }

LABEL_42:
    [*(*v6 + 52) trigger];
    goto LABEL_43;
  }

  v24 = [v32 code];
  if (v24 == -6720)
  {
    if (dword_1002F6778 <= 90)
    {
      if (dword_1002F6778 != -1 || (v24 = _LogCategory_Initialize(), v24))
      {
        sub_1001E4584(v24, v25, v26);
      }
    }

    goto LABEL_42;
  }

LABEL_43:

LABEL_44:
  if ([*v6 _isOnDemandConnectInProgress] && (v27 = objc_msgSend(v7, "isEqualToString:", @"kUnknownErr (Cleanup before done)"), v27))
  {
    if (dword_1002F6778 <= 90)
    {
      if (dword_1002F6778 != -1 || (v27 = _LogCategory_Initialize(), v27))
      {
        sub_1001E45F4(v27, v28, v29);
      }
    }
  }

  else
  {
    *(*v6 + 1536) = 0;
    v30 = *(*v6 + 50);
    *(*v6 + 50) = 0;
  }

  v4 = v32;
LABEL_52:

  return _objc_release_x1(v3, v4);
}

void *sub_100042D08(uint64_t a1)
{
  v2 = *(a1 + 32);
  result = *(a1 + 40);
  if (v2 == result[52])
  {
    return [result _update];
  }

  return result;
}

void sub_100043520(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, ...)
{
  va_start(va, a16);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_100043540(uint64_t a1, uint64_t a2, void *a3, _BYTE *a4)
{
  v10 = a3;
  if (([v10 deviceFlags] & 1) == 0)
  {
    *(*(a1 + 32) + 208) = 1;
  }

  v7 = [v10 btAddressData];
  v8 = CUPrintNSDataAddress();

  v9 = [*(*(a1 + 32) + 1240) objectForKeyedSubscript:v8];

  if (v9)
  {
    objc_storeStrong((*(*(a1 + 40) + 8) + 40), a3);
    *a4 = 1;
  }
}

void sub_100044660(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, ...)
{
  va_start(va, a30);
  _Block_object_dispose(&a27, 8);
  _Block_object_dispose(va, 8);
  _Block_object_dispose((v30 - 200), 8);
  _Block_object_dispose((v30 - 152), 8);
  _Unwind_Resume(a1);
}

void sub_1000446C8(uint64_t a1, uint64_t a2, void *a3, _BYTE *a4)
{
  v9 = a3;
  v7 = [v9 audioRoutingScore];
  v8 = [v9 model];
  if ((([v8 hasPrefix:@"iPhone"] & 1) != 0 || (objc_msgSend(v8, "hasPrefix:", @"iPad") & 1) != 0 || (objc_msgSend(v8, "hasPrefix:", @"iPod") & 1) != 0 || (objc_msgSend(v8, "containsString:", @"Mac") & 1) != 0 || objc_msgSend(v8, "hasPrefix:", @"Watch")) && v7 >= *(a1 + 48))
  {
    ++*(*(*(a1 + 32) + 8) + 24);
    if (dword_1002F6778 <= 30 && (dword_1002F6778 != -1 || _LogCategory_Initialize()))
    {
      sub_1001E4C68(v9);
    }

    objc_storeStrong((*(*(a1 + 40) + 8) + 40), a3);
    if (*(*(*(a1 + 32) + 8) + 24) >= 2)
    {
      *a4 = 1;
    }
  }
}

void sub_100044828(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v7 = [v6 bleDevice];
  v8 = [v7 advertisementFields];

  if (CFDictionaryGetInt64())
  {
    v118 = v5;
    v9 = [v6 bleDevice];
    v10 = [v9 bluetoothAddress];

    if ([v10 length] == 6)
    {
      v11 = NSPrintF("%.6a", COERCE_DOUBLE([v10 bytes]));
    }

    else
    {
      v11 = 0;
    }

    v12 = (a1 + 32);
    v13 = *(*(a1 + 32) + 336);
    if (!v13)
    {
      v14 = objc_alloc_init(NSMutableDictionary);
      v15 = *(*v12 + 42);
      *(*v12 + 42) = v14;

      v13 = *(*v12 + 42);
    }

    v16 = [v13 objectForKeyedSubscript:v11];
    if (v16)
    {
      v17 = v16;
      v18 = [*(*v12 + 42) objectForKeyedSubscript:v11];
      v19 = [v18 unsignedLongLongValue];

      if (v19)
      {
        mach_absolute_time();
        v20 = [*(*v12 + 42) objectForKeyedSubscript:v11];
        [v20 unsignedLongLongValue];
        v21 = UpTicksToSeconds();

        if ((*(*v12 + 176) & 1) == 0 && (v21 < 0xA || (*(*v12 + 800) & 1) == 0) && v21 <= 0x1D)
        {
          if (dword_1002F6778 <= 30 && (dword_1002F6778 != -1 || _LogCategory_Initialize()))
          {
            LogPrintF(&dword_1002F6778, "[BTSmartRoutingDaemon _evaluatorRunTipiElection:nearbyInfoDevicesMap:localScore:]_block_invoke_2", 30, "Evaluator: skip, too soon since device %@ disconnection, %ll{dur} remaining", v11, 30 - v21);
          }

          v24 = *v12;
          v25 = @"Too soon since last disconnection";
          goto LABEL_24;
        }
      }
    }

    if (!v11 || ([*v12 _supportsTipi:v11] & 1) == 0)
    {
      if (dword_1002F6778 <= 30 && (dword_1002F6778 != -1 || _LogCategory_Initialize()))
      {
        sub_1001E5148(v6);
      }

      v24 = *v12;
      v25 = @"Headset is not running correct OS version";
      goto LABEL_24;
    }

    if (CFDictionaryGetInt64Ranged() != 1)
    {
      if (dword_1002F6778 <= 30 && (dword_1002F6778 != -1 || _LogCategory_Initialize()))
      {
        sub_1001E4CC4(v6);
      }

      v24 = *v12;
      v25 = @"Headset is not in status subtype";
      goto LABEL_24;
    }

    Int64Ranged = CFDictionaryGetInt64Ranged();
    if ((Int64Ranged & 8) != 0)
    {
      if (dword_1002F6778 <= 30 && (dword_1002F6778 != -1 || _LogCategory_Initialize()))
      {
        sub_1001E4D2C(v6);
      }

      v24 = *v12;
      v25 = @"Headset is in airplane mode";
      goto LABEL_24;
    }

    Int64 = CFDictionaryGetInt64();
    if ((~Int64Ranged & 0x12) == 0 && Int64)
    {
      if (dword_1002F6778 <= 30 && (dword_1002F6778 != -1 || _LogCategory_Initialize()))
      {
        sub_1001E4D88(v6);
      }

      v24 = *v12;
      v25 = @"Headset is in case with lid closed";
      goto LABEL_24;
    }

    if ([*(*v12 + 151) containsObject:v11])
    {
      if (dword_1002F6778 <= 30 && (dword_1002F6778 != -1 || _LogCategory_Initialize()))
      {
        sub_1001E50EC(v6);
      }

      v24 = *v12;
      v25 = @"Headset is part of manual disconnection list";
      goto LABEL_24;
    }

    v26 = [*(*v12 + 28) objectForKeyedSubscript:v11];

    if (v26)
    {
      if (dword_1002F6778 <= 30 && (dword_1002F6778 != -1 || _LogCategory_Initialize()))
      {
        sub_1001E4DE4(v6);
      }

      v24 = *v12;
      v25 = @"Headset already connected";
      goto LABEL_24;
    }

    v27 = [*(*v12 + 155) objectForKeyedSubscript:v11];
    v28 = [v27 connected];

    if (v28)
    {
      if (dword_1002F6778 <= 30 && (dword_1002F6778 != -1 || _LogCategory_Initialize()))
      {
        sub_1001E5090(v6);
      }

      v24 = *v12;
      v25 = @"Headset already connected but haven't received connected event yet";
      goto LABEL_24;
    }

    v116 = CFDictionaryGetInt64Ranged();
    v29 = Int64Ranged & 0x24;
    v30 = CFDictionaryGetInt64Ranged();
    if ([*(*v12 + 155) count])
    {
      if (v116 && ([*(*v12 + 193) isEqual:v11] & 1) == 0)
      {
        if (dword_1002F6778 <= 30 && (dword_1002F6778 != -1 || _LogCategory_Initialize()))
        {
          sub_1001E4E40(v6);
        }

        v24 = *v12;
        v25 = @"Headset not idle and we already have a SR device connected, back off";
        goto LABEL_24;
      }

      if (((Int64Ranged & 0x24) != 0 || [*v12 _bluetoothProductIDNoEarDetect:v30]) && objc_msgSend(*v12, "_isAnyConnectedWxInEarCheck") && (objc_msgSend(*(*v12 + 193), "isEqual:", v11) & 1) == 0)
      {
        if (dword_1002F6778 <= 30 && (dword_1002F6778 != -1 || _LogCategory_Initialize()))
        {
          sub_1001E4E9C(v6);
        }

        v24 = *v12;
        v25 = @"already have an inEar SR device connected, and current headset is already inEar, back off";
        goto LABEL_24;
      }
    }

    v31 = CFDictionaryGetInt64Ranged();
    v32 = [*(*v12 + 157) incomingCallRingtone];
    v35 = *v12;
    if (v32 && v31 == 2 && (*(v35 + 176) & 1) == 0)
    {
      if (dword_1002F6778 <= 30)
      {
        if (dword_1002F6778 != -1 || (v32 = _LogCategory_Initialize(), v32))
        {
          sub_1001E4EF8(v32, v33, v34);
        }
      }

      goto LABEL_92;
    }

    v114 = v31;
    v36 = [*(v35 + 75) intValue];
    v39 = v36;
    v40 = ((*(*v12 + 800) & 1) != 0 || (v36 = [*(*v12 + 75) intValue], v36 >= 301)) && v116 == 0;
    v41 = *v12;
    v42 = v39 != 401 && v41[96] == 0;
    if (*(v41 + 1536) == 1 && ((v29 != 0 && v42) & (*(*v12 + 176) | v40)) == 0)
    {
      if (dword_1002F6778 <= 30)
      {
        if (dword_1002F6778 != -1 || (v36 = _LogCategory_Initialize(), v36))
        {
          sub_1001E4F14(v36, v37, v38);
        }
      }

LABEL_92:
      v24 = *v12;
      v25 = @"Ringtone shall not participate tipi election when Airpods already have two device connected";
LABEL_24:
      [v24 _logEvalWxError:v11 withError:v25];
LABEL_25:

      v5 = v118;
      goto LABEL_26;
    }

    if (Int64Ranged & 0x24) == 0 && (v41[26])
    {
      if (dword_1002F6778 <= 30 && (dword_1002F6778 != -1 || _LogCategory_Initialize()))
      {
        sub_1001E4F30(v6);
      }

      v24 = *v12;
      v25 = @"Headset is not in ear and a third party BT device is already connected";
      goto LABEL_24;
    }

    v111 = (v29 != 0 && v42) & (*(*v12 + 176) | v40);
    v43 = CFDictionaryGetInt64Ranged();
    v112 = CFDictionaryGetInt64Ranged();
    v44 = CFDictionaryGetCFDataOfLength();
    v47 = v44;
    if (*(*v12 + 936) == 1)
    {
      v113 = v44;
      v48 = [*(*v12 + 196) objectForKeyedSubscript:v11];
      v108 = [v48 isUSBPlugIn];

      v49 = v108;
      v44 = 0;
      v106 = v114 == 1;
      if (v108 && v114 == 1)
      {
        v50 = v43;
        if (v43 == 8)
        {
          v44 = [*v12 _isMyAddress:v113];
          v49 = v108;
          v50 = 8;
        }
      }

      else
      {
        v50 = v43;
      }

      if (v49 && (v44 & 1) == 0)
      {
        if (dword_1002F6778 <= 30 && (dword_1002F6778 != -1 || _LogCategory_Initialize()))
        {
          sub_1001E4F98(v6);
        }

        [*v12 _logEvalWxError:v11 withError:@"Headset is USB plugged in but last connected to another source"];
        goto LABEL_228;
      }

      v105 = v50;
      v47 = v113;
      if (v43 == 8 && v114)
      {
        v29 = Int64Ranged & 0x24;
        if (v44)
        {
          v52 = 1;
          goto LABEL_133;
        }

        goto LABEL_129;
      }

      v29 = Int64Ranged & 0x24;
      v51 = v44;
    }

    else
    {
      v49 = 0;
      v105 = v43;
      v106 = v114 == 1;
      if (v43 == 8)
      {
        v51 = 0;
        if (v114)
        {
          goto LABEL_129;
        }
      }

      else
      {
        v51 = 0;
      }
    }

    v52 = v51;
    if (v114 != 2 || v112 != 8 || (v51 & 1) != 0)
    {
LABEL_133:
      v103 = v52;
      v107 = v29;
      v109 = v49;
      v113 = v47;
      if (v111)
      {
        v54 = *v12;
        if (*(*v12 + 176))
        {
          v55 = @"Call";
LABEL_138:
          [v54[161] setOnDemandCategory:v55];
          goto LABEL_139;
        }

        if (*(v54 + 800) == 1)
        {
          v55 = @"Media";
          goto LABEL_138;
        }
      }

LABEL_139:
      if (dword_1002F6778 <= 30 && (dword_1002F6778 != -1 || _LogCategory_Initialize()))
      {
        if (v29)
        {
          v56 = "yes";
        }

        else
        {
          v56 = "no";
        }

        if (v111)
        {
          v57 = "yes";
        }

        else
        {
          v57 = "no";
        }

        v101 = v57;
        v102 = v56;
        if (*(*v12 + 176))
        {
          v58 = "yes";
        }

        else
        {
          v58 = "no";
        }

        if (*(*v12 + 800))
        {
          v59 = "yes";
        }

        else
        {
          v59 = "no";
        }

        v99 = v59;
        v100 = v58;
        if (v116 > 3)
        {
          v60 = "?";
        }

        else
        {
          v60 = off_1002B8ED0[v116];
        }

        v98 = v60;
        v97 = sub_10003E708(v105);
        v61 = sub_10003E708(v112);
        if (v109)
        {
          v62 = "yes";
        }

        else
        {
          v62 = "no";
        }

        if (v103)
        {
          v63 = "yes";
        }

        else
        {
          v63 = "no";
        }

        LogPrintF(&dword_1002F6778, "[BTSmartRoutingDaemon _evaluatorRunTipiElection:nearbyInfoDevicesMap:localScore:]_block_invoke_2", 30, "Evaluator: headset %@ sources %d inEar %s connectForCallA2DP %s callConnected %s playbackStart %s audioState %s TipiScore1 %s TipiScore2 %s wxUSBPluggedIn %s wxUSBPluggedInLastConnectedToMe %s", v11, v114, v102, v101, v100, v99, v98, v97, v61, v62, v63);
      }

      if ((v114 == 0) | v103 & 1)
      {
        v64 = *(*(a1 + 40) + 8);
        v66 = *(v64 + 40);
        v65 = (v64 + 40);
        if (v66)
        {
          v53 = v113;
          if (!v107)
          {
LABEL_229:

            goto LABEL_25;
          }

          if (dword_1002F6778 <= 30 && (dword_1002F6778 != -1 || _LogCategory_Initialize()))
          {
            sub_1001E5010(a1 + 32, v6);
          }

          v65 = (*(*(a1 + 40) + 8) + 40);
        }

        objc_storeStrong(v65, a3);
LABEL_228:
        v53 = v113;
        goto LABEL_229;
      }

      v132 = 0;
      v133 = &v132;
      v134 = 0x2020000000;
      v135 = 0;
      v104 = CFDictionaryGetInt64();
      v110 = [*v12 _getWxFWVersion:v11];
      if (!v113)
      {
LABEL_227:

        _Block_object_dispose(&v132, 8);
        goto LABEL_228;
      }

      if ([*(a1 + 32) _isEligibleForTipiV2:v110 firstDeviceTipiScore:v105 secondDeviceTipiScore:v112 currentDeviceScore:*(a1 + 64) sourceDeviceCount:v114 isOnDemandConnect:v111 address:v118 lastConnectedHost:v113])
      {
        [*(*v12 + 161) setSetupSupportsTipiv2:1];
        if (dword_1002F6778 <= 30 && (dword_1002F6778 != -1 || _LogCategory_Initialize()))
        {
          LogPrintF(&dword_1002F6778, "[BTSmartRoutingDaemon _evaluatorRunTipiElection:nearbyInfoDevicesMap:localScore:]_block_invoke_2", 30, "Eligible for Tipi2.0!");
        }

        v74 = v112 < 8u && *(a1 + 64) <= v112;
        if (v112 == 15 || v74)
        {
          if (dword_1002F6778 <= 30 && (dword_1002F6778 != -1 || _LogCategory_Initialize()))
          {
            LogPrintF(&dword_1002F6778, "[BTSmartRoutingDaemon _evaluatorRunTipiElection:nearbyInfoDevicesMap:localScore:]_block_invoke_2", 30, "Evaluator: backoff, another device is actively connecting or current score is less than secondary device");
          }

          goto LABEL_227;
        }

        if (([*v12 _isDevicePairedCheck:v113] & 1) == 0)
        {
          if (dword_1002F6778 <= 30 && (dword_1002F6778 != -1 || _LogCategory_Initialize()))
          {
            LogPrintF(&dword_1002F6778, "[BTSmartRoutingDaemon _evaluatorRunTipiElection:nearbyInfoDevicesMap:localScore:]_block_invoke_2", 30, "Evaluator: backoff, lastConnectedHost is not signed into the same iCloud account as this host device");
          }

          goto LABEL_227;
        }

        *(*v12 + 1336) = 1;
        [*v12 _setPhase1ConnectConfig:v11 andType:4];
        [*(*v12 + 161) setWxTipiScore1:v43];
        [*(*v12 + 161) setWxTipiScore2:v112];
        [*v12 _setTipiElectionType:*(*v12 + 1336) withDevice:0];
        v68 = *(a1 + 40);
        v75 = *(v68 + 8);
        if (v107 || !*(v75 + 40))
        {
          v76 = v6;
          v67 = *(v75 + 40);
          *(v75 + 40) = v76;
LABEL_215:

          goto LABEL_227;
        }
      }

      else
      {
        if (*(*(*(a1 + 48) + 8) + 24) >= 2 && !v111)
        {
          if (dword_1002F6778 > 30 || dword_1002F6778 == -1 && !_LogCategory_Initialize())
          {
            goto LABEL_227;
          }

          v67 = [v6 name];
          LogPrintF(&dword_1002F6778, "[BTSmartRoutingDaemon _evaluatorRunTipiElection:nearbyInfoDevicesMap:localScore:]_block_invoke_2", 30, "Evaluator: not eligible for tipiv2, skip tipi election for %@ as two devices with higher or equal ASRs", v67);
          goto LABEL_215;
        }

        v68 = *(a1 + 40);
      }

      v69 = *(a1 + 32);
      v70 = *(v69 + 1552);
      v119[0] = _NSConcreteStackBlock;
      v119[1] = 3221225472;
      v119[2] = sub_100045EAC;
      v119[3] = &unk_1002B7F30;
      v119[4] = v69;
      v119[5] = v113;
      v119[6] = v11;
      v127 = v111;
      v128 = v43;
      v124 = v114;
      v129 = v112;
      v122 = v68;
      v123 = &v132;
      v130 = (Int64Ranged & 0x24) != 0;
      v125 = Int64Ranged;
      v126 = v116;
      v71 = v6;
      v120 = v71;
      v121 = v110;
      v131 = v104 != 0;
      [v70 enumerateKeysAndObjectsUsingBlock:v119];
      if (*(*(*(a1 + 40) + 8) + 40) || !*(*v12 + 195) || (mach_absolute_time(), *(*v12 + 111) >= UpTicksToSeconds()))
      {
LABEL_188:

        goto LABEL_227;
      }

      if (*(*v12 + 916) & [*v12 _isDevicePairedCheck:v113] & 1) == 0 || (v133[3])
      {
        goto LABEL_247;
      }

      v72 = [*v12 _wxFwSupportsTipiScore:v110] ^ 1;
      if (!v107)
      {
        LOBYTE(v72) = 1;
      }

      if (v72)
      {
LABEL_247:
        if (*(*(*(a1 + 40) + 8) + 40) && (*(*(*(a1 + 56) + 8) + 24) = 1, *(*(*(a1 + 40) + 8) + 40)) || *(*v12 + 876) != 1 || (v133[3] & 1) != 0 || !v104)
        {
LABEL_291:
          if (*(v133 + 24) == 1 && *(*v12 + 876) == 1 && dword_1002F6778 <= 30 && (dword_1002F6778 != -1 || _LogCategory_Initialize()))
          {
            LogPrintF(&dword_1002F6778, "[BTSmartRoutingDaemon _evaluatorRunTipiElection:nearbyInfoDevicesMap:localScore:]_block_invoke_2", 30, "Evaluator: Back off from Forced Disconnect.");
          }

          goto LABEL_188;
        }

        v117 = [*v12 _myBluetoothAddressString];
        [v117 UTF8String];
        v85 = NSDataWithHex();
        if ([v85 length] == 6)
        {
          v86 = [v85 bytes];
          v87 = [v113 bytes];
          if (*v87 == *(v86 + 3) && *(v87 + 2) == v86[5])
          {
            if (dword_1002F6778 > 30)
            {
LABEL_264:
              if ([*v12 _isDevicePairedCheck:v113] && (*(*v12 + 448) & 1) == 0)
              {
                v89 = *(*v12 + 82);
                if (!v89)
                {
                  v90 = objc_alloc_init(SRNearbyStats);
                  v91 = *(*v12 + 82);
                  *(*v12 + 82) = v90;

                  v89 = *(*v12 + 82);
                }

                [v89 setNoNearbyDeviceFoundCount:{objc_msgSend(v89, "noNearbyDeviceFoundCount") + 1}];
                [*(*v12 + 82) setSRConnectedSetCount:{objc_msgSend(*(*v12 + 82), "SRConnectedSetCount") + 1}];
                v92 = [v71 bleDevice];
                v115 = [v92 rssi];

                if ([*(*v12 + 82) minRSSIHeadset] > v115)
                {
                  [*(*v12 + 82) setMinRSSIHeadset:v115];
                }

                if (!v110 || [@"4A345" compare:v110 options:64] == 1)
                {
                  *(v133 + 24) = 1;
                }

                if (*(*v12 + 273) < 3 || !v107 || *(*v12 + 113) > v115)
                {
                  *(v133 + 24) = 1;
                }

                if (dword_1002F6778 <= 30 && (dword_1002F6778 != -1 || _LogCategory_Initialize()))
                {
                  v93 = [v71 name];
                  v94 = *v12;
                  v95 = sub_10003E708(*(*v12 + 273));
                  v96 = "no";
                  if (v107)
                  {
                    v96 = "yes";
                  }

                  LogPrintF(&dword_1002F6778, "[BTSmartRoutingDaemon _evaluatorRunTipiElection:nearbyInfoDevicesMap:localScore:]_block_invoke_2", 30, "Evaluator: forced disconnect back off check, headset %@, FW version %@ > %@, current device audio score %s, headset inEar %s, Headset RSSI: %d > %d , FD bit %s", v93, v110, @"4A345", v95, v96, v115, v94[113], "yes");
                }

                if ((v133[3] & 1) == 0)
                {
                  objc_storeStrong((*(*(a1 + 40) + 8) + 40), a3);
                  *(*(a1 + 32) + 448) = 1;
                  if (dword_1002F6778 <= 30 && (dword_1002F6778 != -1 || _LogCategory_Initialize()))
                  {
                    LogPrintF(&dword_1002F6778, "[BTSmartRoutingDaemon _evaluatorRunTipiElection:nearbyInfoDevicesMap:localScore:]_block_invoke_2", 30, "Evaluator: Forced Disconnect fires");
                  }
                }
              }

              goto LABEL_291;
            }

            if (dword_1002F6778 != -1 || _LogCategory_Initialize())
            {
              LogPrintF(&dword_1002F6778, "[BTSmartRoutingDaemon _evaluatorRunTipiElection:nearbyInfoDevicesMap:localScore:]_block_invoke_2", 30, "Evaluator: This is the device that will be forced disconnect");
            }
          }
        }

        if (dword_1002F6778 <= 30 && (dword_1002F6778 != -1 || _LogCategory_Initialize()))
        {
          LogPrintF(&dword_1002F6778, "[BTSmartRoutingDaemon _evaluatorRunTipiElection:nearbyInfoDevicesMap:localScore:]_block_invoke_2", 30, "Evaluator: did not find any nearby devices that match address, check forced disconnect logic...");
        }

        goto LABEL_264;
      }

      if (dword_1002F6778 <= 30 && (dword_1002F6778 != -1 || _LogCategory_Initialize()))
      {
        LogPrintF(&dword_1002F6778, "[BTSmartRoutingDaemon _evaluatorRunTipiElection:nearbyInfoDevicesMap:localScore:]_block_invoke_2", 30, "Evaluator: can't see nearby device; current wx connected device count %d", v114);
      }

      v77 = CFDictionaryGetInt64Ranged();
      v78 = v106;
      if (v77 - 1 >= 3)
      {
        v78 = 0;
      }

      if (v78)
      {
        if (dword_1002F6778 <= 30 && (dword_1002F6778 != -1 || _LogCategory_Initialize()))
        {
          v79 = sub_10003E708(v77);
          LogPrintF(&dword_1002F6778, "[BTSmartRoutingDaemon _evaluatorRunTipiElection:nearbyInfoDevicesMap:localScore:]_block_invoke_2", 30, "Evaluator: can't see nearby device; Only one source is connected, Phase1 connect, current source device score %s", v79);
        }

        goto LABEL_246;
      }

      if (v114 != 2)
      {
        goto LABEL_247;
      }

      v80 = CFDictionaryGetInt64Ranged();
      if (v77 - 1 > 2)
      {
        goto LABEL_247;
      }

      v81 = v80;
      if (!v80)
      {
        goto LABEL_247;
      }

      v82 = *(a1 + 64);
      if (v82 <= v81)
      {
        goto LABEL_247;
      }

      if (dword_1002F6778 > 30)
      {
        goto LABEL_246;
      }

      if (dword_1002F6778 == -1)
      {
        if (!_LogCategory_Initialize())
        {
          goto LABEL_246;
        }

        v82 = *(a1 + 64);
      }

      v83 = sub_10003E708(v82);
      v84 = sub_10003E708(v81);
      LogPrintF(&dword_1002F6778, "[BTSmartRoutingDaemon _evaluatorRunTipiElection:nearbyInfoDevicesMap:localScore:]_block_invoke_2", 30, "Evaluator: can't see nearby device; two source devices are connected, current device score %s is higher than tipi device 2 score %s; Phase1 connect", v83, v84);
LABEL_246:
      objc_storeStrong((*(*(a1 + 40) + 8) + 40), a3);
      goto LABEL_247;
    }

LABEL_129:
    v53 = v47;
    if (dword_1002F6778 <= 30)
    {
      if (dword_1002F6778 != -1 || (v44 = _LogCategory_Initialize(), v44))
      {
        sub_1001E4FF4(v44, v45, v46);
      }
    }

    [*v12 _logEvalWxError:v11 withError:@"SR disabled on current connected source"];
    goto LABEL_229;
  }

LABEL_26:
}