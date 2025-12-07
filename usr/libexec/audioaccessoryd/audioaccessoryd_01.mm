void sub_100045EAC(uint64_t a1, uint64_t a2, void *a3)
{
  v33 = a3;
  v4 = [v33 bleDevice];
  v5 = [v4 advertisementFields];

  v6 = CFDictionaryGetCFDataOfLength();
  v7 = v6;
  if (v6)
  {
    v8 = v6;
    v9 = [v33 model];
    v10 = [v9 containsString:@"Mac"];

    if (v10)
    {
      v11 = *(a1 + 32);
      v12 = [v33 idsIdentifier];
      v13 = [v11 _nearbyMacAddressTranslate:v12];

      v8 = v13;
      if (!v13)
      {
        goto LABEL_49;
      }
    }

    if (dword_1002F6778 <= 30 && (dword_1002F6778 != -1 || _LogCategory_Initialize()))
    {
      sub_1001E51B0();
    }

    v14 = [v8 bytes];
    v15 = [*(a1 + 40) bytes];
    if (*v15 != *(v14 + 3) || *(v15 + 2) != v14[5])
    {
      goto LABEL_49;
    }

    if ([v33 audioRoutingScore] && (objc_msgSend(v33, "model"), v17 = objc_claimAutoreleasedReturnValue(), v18 = objc_msgSend(v17, "hasPrefix:", @"Watch"), v17, (v18 & 1) == 0))
    {
      if (!*(*(*(a1 + 72) + 8) + 40))
      {
        [*(a1 + 32) _setTipiElectionType:*(*(a1 + 32) + 1336) withDevice:v33];
        if (*(a1 + 100) != 1 || *(a1 + 101) == 8 || *(a1 + 88) == 2 && *(a1 + 102) == 8)
        {
          goto LABEL_32;
        }

        goto LABEL_18;
      }

      v21 = v33;
      if ((*(a1 + 92) & 0x24) != 0)
      {
        [*(a1 + 32) _setTipiElectionType:*(*(a1 + 32) + 1336) withDevice:v33];
        if (*(a1 + 100) == 1 && *(a1 + 101) != 8 && (*(a1 + 88) != 2 || *(a1 + 102) != 8))
        {
          [*(a1 + 32) _setPhase1ConnectConfig:*(a1 + 48) andType:3];
        }

        if (dword_1002F6778 <= 30 && (dword_1002F6778 != -1 || _LogCategory_Initialize()))
        {
          sub_1001E5284(a1 + 72, a1);
        }

        goto LABEL_32;
      }
    }

    else
    {
      v19 = [v33 model];
      if (![v19 hasPrefix:@"Watch"])
      {
LABEL_33:

        v21 = v33;
        goto LABEL_34;
      }

      v20 = *(a1 + 100);

      v21 = v33;
      if (v20 == 1 && !*(*(*(a1 + 72) + 8) + 40))
      {
        [*(a1 + 32) _setTipiElectionType:*(*(a1 + 32) + 1336) withDevice:v33];
LABEL_18:
        [*(a1 + 32) _setPhase1ConnectConfig:*(a1 + 48) andType:3];
LABEL_32:
        v22 = *(*(a1 + 72) + 8);
        v23 = *(a1 + 56);
        v19 = *(v22 + 40);
        *(v22 + 40) = v23;
        goto LABEL_33;
      }
    }

LABEL_34:
    if (!*(*(*(a1 + 72) + 8) + 40) && *(*(a1 + 32) + 876) == 1)
    {
      *(*(*(a1 + 80) + 8) + 24) = 1;
    }

    if (*(a1 + 103) != 1)
    {
      goto LABEL_49;
    }

    v24 = [v21 model];
    if ([v24 hasPrefix:@"Watch"])
    {
      v25 = *(a1 + 96);

      if (v25)
      {
        goto LABEL_49;
      }

      v26 = *(*(a1 + 32) + 656);
      if (!v26)
      {
        v27 = objc_alloc_init(SRNearbyStats);
        v28 = *(a1 + 32);
        v29 = *(v28 + 656);
        *(v28 + 656) = v27;

        v26 = *(*(a1 + 32) + 656);
      }

      [v26 setNearbyDeviceNoTipiScoreCount:{objc_msgSend(v26, "nearbyDeviceNoTipiScoreCount") + 1}];
      if ([@"4E20" compare:*(a1 + 64) options:64] != 1 && *(a1 + 104) != 1)
      {
        goto LABEL_49;
      }

      if (dword_1002F6778 <= 30 && (dword_1002F6778 != -1 || _LogCategory_Initialize()))
      {
        sub_1001E530C(a1);
      }

      v30 = *(a1 + 56);
      v31 = *(*(a1 + 72) + 8);
      v32 = v30;
      v24 = *(v31 + 40);
      *(v31 + 40) = v32;
    }

LABEL_49:
  }
}

uint64_t sub_100046308(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = v3;
  if (!v3)
  {
    goto LABEL_47;
  }

  v40 = v3;
  if (dword_1002F6778 <= 90)
  {
    if (dword_1002F6778 != -1 || (v5 = _LogCategory_Initialize(), v4 = v40, v5))
    {
      sub_1001E536C(a1);
      v4 = v40;
    }
  }

  v6 = (a1 + 32);
  [*(a1 + 32) _setOtherTipiDeviceBTAddress:0 andName:0 sourceVersion:0 withResult:v4];
  if (GestaltGetDeviceClass() == 6)
  {
    *(*v6 + 1460) = 0;
    [*v6 _update];
  }

  v7 = CUPrintNSError();
  v8 = [v40 code];
  if (v8 == -6709)
  {
    if (dword_1002F6778 <= 90)
    {
      if (dword_1002F6778 != -1 || (v8 = _LogCategory_Initialize(), v8))
      {
        sub_1001E5550(v8, v9, v10);
      }
    }

    goto LABEL_39;
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
          sub_1001E5534(v11, v12, v13);
        }
      }

      goto LABEL_39;
    }
  }

  v15 = *(a1 + 40);
  v14 = (a1 + 40);
  v16 = [*(v14 - 1) _getWxFWVersion:v15];
  v17 = v16;
  v18 = &stru_1002C1358;
  if (v16)
  {
    v18 = v16;
  }

  v19 = v18;

  v20 = [*(*(v14[1] + 8) + 40) identifier];
  v21 = [v20 UUIDString];

  if (v21)
  {
    v22 = [*(*v6 + 83) objectForKeyedSubscript:v21];
    if (v22)
    {
      v23 = v22;
      v24 = [*(*v6 + 83) objectForKeyedSubscript:v21];
      v25 = [v24 audioState];

      if (!v25 && [@"5A187" compare:v19 options:64] == -1)
      {
        v26 = [*(*v6 + 157) isFirstConnectionAfterSREnable];
        v27 = [v26 objectForKey:*v14];

        if (!v27)
        {
          if (dword_1002F6778 <= 90 && (dword_1002F6778 != -1 || _LogCategory_Initialize()))
          {
            sub_1001E53DC(v6, v14);
          }

          *(*v6 + 1336) = 1;
          goto LABEL_37;
        }
      }
    }
  }

  if (dword_1002F6778 <= 90 && (dword_1002F6778 != -1 || _LogCategory_Initialize()))
  {
    sub_1001E5460(v6, v21, v19);
  }

  v28 = [v40 code];
  if (v28 == -6722)
  {
    if (dword_1002F6778 <= 90)
    {
      if (dword_1002F6778 != -1 || (v28 = _LogCategory_Initialize(), v28))
      {
        sub_1001E5518(v28, v29, v30);
      }
    }

LABEL_37:
    [*(*v6 + 52) trigger];
    goto LABEL_38;
  }

  v31 = [v40 code];
  if (v31 == -6720)
  {
    if (dword_1002F6778 <= 90)
    {
      if (dword_1002F6778 != -1 || (v31 = _LogCategory_Initialize(), v31))
      {
        sub_1001E54FC(v31, v32, v33);
      }
    }

    goto LABEL_37;
  }

LABEL_38:

LABEL_39:
  *(*v6 + 1337) = 0;
  v34 = *(*v6 + 74);
  *(*v6 + 74) = 0;

  if ([*v6 _isOnDemandConnectInProgress] && (v35 = objc_msgSend(v7, "isEqualToString:", @"kUnknownErr (Cleanup before done)"), v35))
  {
    if (dword_1002F6778 <= 90)
    {
      if (dword_1002F6778 != -1 || (v35 = _LogCategory_Initialize(), v35))
      {
        sub_1001E556C(v35, v36, v37);
      }
    }
  }

  else
  {
    *(*v6 + 1536) = 0;
    v38 = *(*v6 + 50);
    *(*v6 + 50) = 0;
  }

  v4 = v40;
LABEL_47:

  return _objc_release_x1(v3, v4);
}

void sub_1000467BC(uint64_t a1, uint64_t a2, void *a3)
{
  v6 = a3;
  if ([*(a1 + 32) containsString:a2])
  {
    mach_absolute_time();
    [v6 otherTipiDeviceIdleTick];
    v5 = UpTicksToSeconds();
    if (v5 < 0x1E0)
    {
      [*(a1 + 40) _startNowPlayingTemporaryOverrideTimer:480 - v5];
    }

    else
    {
      [*(a1 + 40) _sendNowPlayingTemporaryOverrideIfNeeded:1];
    }
  }
}

void sub_100047724(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, ...)
{
  va_start(va, a20);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_100047754(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  if ([a3 routingAction] != 2)
  {
    if (dword_1002F6778 <= 30 && (dword_1002F6778 != -1 || _LogCategory_Initialize()))
    {
      sub_1001E56F0(v5);
    }

    *(*(*(a1 + 32) + 8) + 24) = 1;
  }
}

void sub_100047BDC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, ...)
{
  va_start(va, a18);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_100047BF4(uint64_t a1, uint64_t a2, void *a3)
{
  v3 = a2;
  v5 = a3;
  if (*(a1 + 32) == *(*(a1 + 40) + 1440))
  {
    if (dword_1002F6778 <= 30 && (dword_1002F6778 != -1 || _LogCategory_Initialize()))
    {
      sub_1001E5874(v3, a1, v5);
    }

    v6 = *(*(*(a1 + 56) + 8) + 24);
    if (v3 == 1)
    {
      if (v6 == 4)
      {
        ++*(*(a1 + 40) + 620);
        v7 = [*(*(a1 + 40) + 184) activeCallCount];
        v8 = *(a1 + 40);
        if (v7 <= 0)
        {
          v9 = @"-tacl";
        }

        else
        {
          v9 = @"-tsco";
        }

        v10 = [NSString stringWithFormat:@"%@%@", *(a1 + 48), v9];
        [v8 _smartRoutingChangeRoute:v10];

        v11 = *(*(a1 + 40) + 1240);
        v34[0] = _NSConcreteStackBlock;
        v34[1] = 3221225472;
        v34[2] = sub_1000480E4;
        v34[3] = &unk_1002B7FA8;
        v12 = *(a1 + 48);
        v13 = *(a1 + 40);
        v35 = v12;
        v36 = v13;
        [v11 enumerateKeysAndObjectsUsingBlock:v34];

        v6 = *(*(*(a1 + 56) + 8) + 24);
      }

      if (v6 == 5)
      {
        ++*(*(a1 + 40) + 1032);
        ++*(*(a1 + 40) + 1040);
        v14 = [*(*(a1 + 40) + 184) activeCallCount];
        v15 = *(a1 + 40);
        if (v14 <= 0)
        {
          v16 = @"-tacl";
        }

        else
        {
          v16 = @"-tsco";
        }

        v17 = [NSString stringWithFormat:@"%@%@", *(a1 + 48), v16];
        [v15 _smartRoutingChangeRoute:v17];

        v18 = [*(*(a1 + 40) + 224) objectForKeyedSubscript:*(a1 + 48)];
        if (v18)
        {
          [*(a1 + 40) _sendIntendedRouteInfoUpdateToWx:v18 withIntendedRoutingStatus:1];
        }

        v19 = *(*(a1 + 40) + 1240);
        v31[0] = _NSConcreteStackBlock;
        v31[1] = 3221225472;
        v31[2] = sub_10004819C;
        v31[3] = &unk_1002B7FA8;
        v20 = *(a1 + 48);
        v21 = *(a1 + 40);
        v32 = v20;
        v33 = v21;
        [v19 enumerateKeysAndObjectsUsingBlock:v31];

        v6 = *(*(*(a1 + 56) + 8) + 24);
      }

      if (v6 != 3)
      {
        goto LABEL_45;
      }

      v22 = [*(*(a1 + 40) + 1568) objectForKeyedSubscript:*(a1 + 48)];
      v23 = [v22 nearbyWxDevice];

      if (v23)
      {
        [*(a1 + 40) _smartRoutingConnectToEligibleHeadset:v23];
      }

      else if (dword_1002F6778 <= 30 && (dword_1002F6778 != -1 || _LogCategory_Initialize()))
      {
        sub_1001E58FC();
      }

      v25 = "Default";
      goto LABEL_32;
    }

    if (v6 != 3)
    {
      goto LABEL_33;
    }

    if (v3 == 2)
    {
      v24 = [*(*(a1 + 40) + 1568) objectForKeyedSubscript:*(a1 + 48)];
      [v24 _setInUseBannerBackoffReason:@"UserDismiss"];
      [v24 _setInUseBannerBackoffTick:mach_absolute_time()];

      v25 = "Dismiss";
LABEL_32:
      v26 = [NSString stringWithUTF8String:v25];
      [*(*(a1 + 40) + 1288) setBannerAction:v26];

      [*(a1 + 40) _startRouteCheckTimer:*(a1 + 48) andType:13];
LABEL_33:
      if ((v3 | 4) == 6)
      {
        v27 = *(*(*(a1 + 56) + 8) + 24);
        if (v27 == 5)
        {
          ++*(*(a1 + 40) + 1036);
          v27 = *(*(*(a1 + 56) + 8) + 24);
        }

        if (v27 == 4)
        {
          ++*(*(a1 + 40) + 624);
          v27 = *(*(*(a1 + 56) + 8) + 24);
        }

        if (v3 == 2 && v27 == 1)
        {
          v28 = 212;
        }

        else
        {
          if (v3 != 6 || v27 != 1)
          {
            goto LABEL_45;
          }

          v28 = 216;
        }

        ++*(*(a1 + 40) + v28);
      }

LABEL_45:
      [*(*(a1 + 40) + 1440) invalidate];
      v29 = *(a1 + 40);
      v30 = *(v29 + 1440);
      *(v29 + 1440) = 0;

      goto LABEL_46;
    }

    if (v3 > 3)
    {
      if (v3 == 4)
      {
        v25 = "Error";
        goto LABEL_32;
      }

      if (v3 == 6)
      {
        v25 = "Timeout";
        goto LABEL_32;
      }
    }

    else
    {
      if (!v3)
      {
        v25 = "Invalid";
        goto LABEL_32;
      }

      if (v3 == 3)
      {
        v25 = "Invalidated";
        goto LABEL_32;
      }
    }

    v25 = "?";
    goto LABEL_32;
  }

LABEL_46:
}

uint64_t sub_1000480E4(uint64_t a1, void *a2, void *a3, _BYTE *a4)
{
  v11 = a3;
  v7 = [a2 isEqualToString:*(a1 + 32)];
  v8 = v11;
  if (v7)
  {
    [v11 setRouted:1];
    [v11 setRoutingAction:1];
    v9 = [v11 otherTipiDeviceBTAddress];

    if (v9)
    {
      v7 = [*(a1 + 40) _relayConduitMessageSend:1 withOptions:&off_1002CBC98 andWxAddress:*(a1 + 32) andOtherAddress:0];
    }

    *a4 = 1;
    v8 = v11;
  }

  return _objc_release_x1(v7, v8);
}

void sub_10004819C(uint64_t a1, void *a2, void *a3)
{
  v8 = a2;
  v5 = a3;
  if ([v8 isEqual:*(a1 + 32)])
  {
    v6 = [v5 otherTipiDeviceBTAddress];

    if (v6)
    {
      ++*(*(a1 + 40) + 628);
      [*(a1 + 40) submitRouteActivityMetric:*(a1 + 32) activity:@"Reverse"];
      [*(a1 + 40) _relayConduitMessageSend:1 withOptions:&off_1002CBCC0 andWxAddress:*(a1 + 32) andOtherAddress:0];
      [*(a1 + 40) _sendRouteReversedTipiEventForTipsSupport];
      [*(a1 + 40) _handleHijackBlockingwithDevice:v8];
      v7 = [*(*(a1 + 40) + 1288) reverseRouteReason];

      if (!v7)
      {
        [*(*(a1 + 40) + 1288) setReverseRouteReason:@"Reverse_banner"];
      }
    }
  }
}

void sub_100048DD8(uint64_t a1, void *a2)
{
  v3 = a2;
  if (v3)
  {
    v9 = v3;
    v4 = [*(*(a1 + 32) + 592) name];
    v5 = *(a1 + 32);
    if (*(v5 + 873) == 1)
    {
      v6 = [*(v5 + 1568) objectForKeyedSubscript:*(a1 + 40)];
      v7 = [v6 nearbyLEPipeSourceDevice];
      v8 = [v7 name];

      v4 = v8;
    }

    if (dword_1002F6778 <= 90 && (dword_1002F6778 != -1 || _LogCategory_Initialize()))
    {
      LogPrintF(&dword_1002F6778, "[BTSmartRoutingDaemon _smartRoutingConnectionCompleted:]_block_invoke", 90, "Evaluator: Setting LE Pipe send failed: %@, %{error}", v4, v9);
    }

    v3 = v9;
  }
}

void sub_100048EE4(uint64_t a1, void *a2)
{
  v3 = a2;
  if (v3)
  {
    v10 = v3;
    v4 = [*(*(a1 + 32) + 592) name];
    v5 = *(a1 + 32);
    if (*(v5 + 873) == 1)
    {
      v6 = [*(v5 + 1568) objectForKeyedSubscript:*(a1 + 40)];
      v7 = [v6 nearbyLEPipeSourceDevice];
      v8 = [v7 name];

      v4 = v8;
    }

    if (dword_1002F6778 <= 90 && (dword_1002F6778 != -1 || _LogCategory_Initialize()))
    {
      LogPrintF(&dword_1002F6778, "[BTSmartRoutingDaemon _smartRoutingConnectionCompleted:]_block_invoke_2", 90, "Evaluator: Setting LE Pipe send failed: %@, %{error}", v4, v10);
    }

    v9 = [*(*(a1 + 32) + 1240) objectForKeyedSubscript:*(a1 + 40)];
    [v9 setOtherTipiDeviceInfo:0 andName:0 andVersion:0];

    [*(a1 + 32) _tipiHealingAttempt];
    v3 = v10;
  }
}

void sub_100049028(uint64_t a1, void *a2, void *a3)
{
  v5 = a3;
  if ([a2 isEqual:*(a1 + 32)])
  {
    v6 = [v5 otherTipiDeviceBTAddress];

    if (v6)
    {
      v7 = [v5 otherTipiDeviceBTAddress];
      [*(a1 + 40) _updateNearbyDeviceState:*(a1 + 32) withAddress:v7 withEasyPairing:0 withState:1];
      v8 = [*(a1 + 40) _myBluetoothAddressString];
      v11[0] = v7;
      v11[1] = v8;
      v9 = [NSArray arrayWithObjects:v11 count:2];
      v10 = [*(*(a1 + 40) + 224) objectForKeyedSubscript:*(a1 + 32)];
      [*(a1 + 40) _updateAccessoryID:v10 connectionDeviceAddresses:v9 completion:&stru_1002B8050];
    }

    else if ([*(*(a1 + 40) + 1240) count] == 1)
    {
      [*(a1 + 40) _updateNearbyDeviceState:*(a1 + 32) withAddress:&stru_1002C1358 withEasyPairing:0 withState:1];
    }
  }
}

void sub_100049184(id a1, NSError *a2)
{
  v2 = a2;
  v4 = v2;
  if (v2)
  {
    if (dword_1002F6778 <= 90)
    {
      v5 = v2;
      if (dword_1002F6778 != -1 || (v2 = _LogCategory_Initialize(), v4 = v5, v2))
      {
        v2 = sub_1001E5C24(v2, v4, v3);
        v4 = v5;
      }
    }
  }

  _objc_release_x1(v2, v4);
}

void sub_1000496EC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, ...)
{
  va_start(va, a27);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_100049730(uint64_t a1)
{
  v4[0] = _NSConcreteStackBlock;
  v4[1] = 3221225472;
  v2 = *(a1 + 48);
  v3 = *(a1 + 32);
  v5 = vextq_s8(v3, v3, 8uLL);
  v4[2] = sub_1000497CC;
  v4[3] = &unk_1002B8078;
  v7 = *(a1 + 64);
  v1 = v2;
  v6 = v2;
  [v3.i64[0] activateWithCompletion:v4];
}

void sub_1000497CC(uint64_t a1, void *a2)
{
  v3 = a2;
  if (*(*(a1 + 32) + 256) == *(a1 + 40))
  {
    v10 = v3;
    if (dword_1002F6778 <= 30 && (dword_1002F6778 != -1 || _LogCategory_Initialize()))
    {
      sub_1001E5C40(a1, v10);
    }

    *(*(a1 + 32) + 1184) = 0;
    *(*(a1 + 32) + 272) = mach_absolute_time();
    v4 = [*(*(a1 + 32) + 664) objectForKeyedSubscript:*(*(*(a1 + 64) + 8) + 40)];
    [v4 lastConnectionTicks];
    v5 = UpTicksToMilliseconds();

    if (v5 >= 0x1389 && dword_1002F6778 <= 90 && (dword_1002F6778 != -1 || _LogCategory_Initialize()))
    {
      sub_1001E5C8C(v5);
    }

    [*(a1 + 48) setLastConnectTime:v5];
    if (v10)
    {
      v6 = [NSString stringWithFormat:@"%@", v10];
      [*(a1 + 48) setLastConnectResult:v6];
    }

    else
    {
      [*(a1 + 48) setLastConnectResult:@"Success"];
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

void sub_10004A86C(void *a1, void *a2, void *a3, _BYTE *a4)
{
  v18 = a2;
  v8 = a3;
  if (dword_1002F6778 <= 50 && (dword_1002F6778 != -1 || _LogCategory_Initialize()))
  {
    sub_1001E5EE4();
  }

  if (([v8 inEarDisabled] & 1) != 0 || objc_msgSend(v8, "inEar"))
  {
    objc_storeStrong((*(a1[5] + 8) + 40), a2);
    v9 = [v8 otherTipiDeviceBTAddress];
    v10 = *(a1[6] + 8);
    v11 = *(v10 + 40);
    *(v10 + 40) = v9;

    v12 = [v8 otherTipiDeviceVersion];
    v13 = *(a1[7] + 8);
    v14 = *(v13 + 40);
    *(v13 + 40) = v12;

    v15 = [v8 deviceVersion];
    v16 = *(a1[8] + 8);
    v17 = *(v16 + 40);
    *(v16 + 40) = v15;
  }

  if ([v8 inEar])
  {
    *a4 = 1;
  }
}

void sub_10004A9B0(uint64_t a1, void *a2, void *a3, _BYTE *a4)
{
  v7 = a2;
  v8 = a3;
  v9 = [v8 identifier];
  if (v7 && *(*(*(a1 + 64) + 8) + 40) && [v7 isEqualToString:?])
  {
    v10 = +[NSNumber numberWithUnsignedInt:](NSNumber, "numberWithUnsignedInt:", [*(a1 + 32) clientID]);
    v11 = (a1 + 40);
    v12 = *(*(a1 + 40) + 875);
    v13 = [v8 routingAction];
    if (v12 == 1)
    {
      if (v13 == 2 || [v8 isRoutingActionInitialized] && objc_msgSend(v8, "routingAction") == 1 && (objc_msgSend(v8, "otherTipiDeviceBTAddress"), v19 = objc_claimAutoreleasedReturnValue(), v19, !v19))
      {
        [*(a1 + 48) setAction:{objc_msgSend(v8, "routingAction")}];
        if ([v8 routingAction] == 2)
        {
          v16 = 0;
        }

        else
        {
          v16 = v7;
        }

        [*(a1 + 48) setDeviceAddress:v16];
        v17 = *(a1 + 48);
        v18 = @"Not tipi device";
      }

      else
      {
        if ([*(a1 + 32) audioScore] < 1)
        {
          if (*(a1 + 104) == 1)
          {
            if ([v8 hasOwnership])
            {
              v25 = [v8 otherTipiAudioCategory];
              if (v25 <= 0x64)
              {
                if (dword_1002F6778 <= 30)
                {
                  if (dword_1002F6778 != -1 || (v25 = _LogCategory_Initialize(), v25))
                  {
                    sub_1001E604C(v25, v26, v27);
                  }
                }

                [*(a1 + 48) setAction:1];
                [*(a1 + 48) setDeviceAddress:*(*(*(a1 + 64) + 8) + 40)];
                [*(a1 + 48) setReason:{@"Buds in ear, other tipi idle."}];
                [*(a1 + 48) setClientID:{objc_msgSend(*(a1 + 32), "clientID")}];
                [*(a1 + 40) _respondRoutingRequest:*(a1 + 48) withResponseHandler:*(a1 + 56) wxAddress:*(*(*(a1 + 64) + 8) + 40)];
                *(*(*(a1 + 72) + 8) + 24) = 1;
                *a4 = 1;
                goto LABEL_18;
              }
            }

            if (dword_1002F6778 <= 30 && (dword_1002F6778 != -1 || _LogCategory_Initialize()))
            {
              sub_1001E5FDC(v8);
            }

            [v8 setRoutingAction:3];
            [*(a1 + 48) setAction:{objc_msgSend(v8, "routingAction")}];
            [*(a1 + 48) setDeviceAddress:*(*(*(a1 + 64) + 8) + 40)];
            if ([v8 hasOwnership])
            {
              v29 = @"owned";
            }

            else
            {
              v29 = @"not owned";
            }

            v30 = [v8 otherTipiAudioCategory];
            v31 = @"not playing";
            if (v30 > 0x64)
            {
              v31 = @"playing";
            }

            [NSString stringWithFormat:@"Device is: %@ other tipi is %@", v29, v31];
          }

          else
          {
            if ([*(*(a1 + 40) + 1544) isEqualToString:*(*(*(a1 + 64) + 8) + 40)])
            {
              if (dword_1002F6778 <= 30 && (dword_1002F6778 != -1 || _LogCategory_Initialize()))
              {
                sub_1001E5F94(a1 + 40);
              }

              [v8 setRoutingAction:3];
            }

            [*(a1 + 48) setAction:{objc_msgSend(v8, "routingAction")}];
            if ([v8 routingAction] == 1)
            {
              v28 = *(*(*(a1 + 64) + 8) + 40);
            }

            else
            {
              v28 = 0;
            }

            [*(a1 + 48) setDeviceAddress:v28];
            v47 = [v8 routingAction];
            v48 = @"not routed";
            if (v47 == 1)
            {
              v48 = @"routed";
            }

            [NSString stringWithFormat:@"Tipi device is: %@", v48, v90];
          }
          v49 = ;
          [*(a1 + 48) setReason:v49];

          goto LABEL_16;
        }

        mach_absolute_time();
        v20 = UpTicksToSeconds();
        mach_absolute_time();
        UpTicksToSecondsF();
        v22 = v21;
        mach_absolute_time();
        [v8 otherTipiManuallyRouteTicks];
        v23 = UpTicksToSeconds();
        if (dword_1002F6778 <= 30)
        {
          v24 = v23;
          if (dword_1002F6778 != -1 || _LogCategory_Initialize())
          {
            LogPrintF(&dword_1002F6778, "[BTSmartRoutingDaemon _smartRoutingAudioRoutingRequest:withResponseHandler:]_block_invoke_3", 30, "Hijack: LastRequest %llus lastResponse %.2fs responseTick %u otherTipiManualRoute %us", v20, v22, *(*v11 + 20), v24);
          }
        }

        v98 = v20;
        if (([*(a1 + 32) flags] & 2) == 0 || (objc_msgSend(*(*v11 + 155), "objectForKeyedSubscript:", v7), v32 = objc_claimAutoreleasedReturnValue(), v33 = objc_msgSend(v32, "hijackBackoffTicks"), v32, v33))
        {
          if ([v8 otherTipiDeviceIsWatch] && objc_msgSend(*(*(*(a1 + 80) + 8) + 40), "isEqualToString:", @"Alarm"))
          {
            v34 = [*(a1 + 32) appBundleID];
            v35 = [NSString stringWithFormat:@"Opt-out SR for app %@ on phone since the other tipi device is a watch", v34];

            [*(a1 + 48) setAction:3];
            [*(a1 + 48) setDeviceAddress:0];
            [*(a1 + 48) setReason:v35];
            [*(a1 + 48) setClientID:{objc_msgSend(*(a1 + 32), "clientID")}];
            [*(a1 + 40) _respondRoutingRequest:*(a1 + 48) withResponseHandler:*(a1 + 56) wxAddress:*(*(*(a1 + 64) + 8) + 40)];
            *(*(*(a1 + 72) + 8) + 24) = 1;
            *a4 = 1;

            goto LABEL_18;
          }

          [v8 setAudioRoutingScore:{objc_msgSend(*(a1 + 32), "audioScore")}];
          *(*(a1 + 40) + 136) = mach_absolute_time();
          [*(*(a1 + 40) + 1288) setHijackRelaySent:0];
          [*(*(a1 + 40) + 1288) setHijackScore:{objc_msgSend(*(a1 + 32), "audioScore")}];
          v36 = [*(a1 + 32) appBundleID];
          [*(*(a1 + 40) + 1288) setHijackPlayingApp:v36];

          v37 = [*(*(a1 + 40) + 224) objectForKeyedSubscript:v7];
          v38 = [v37 audioStreamState];
          if (v38 > 3)
          {
            v39 = "?";
          }

          else
          {
            v39 = off_1002B9128[v38];
          }

          v40 = [NSString stringWithUTF8String:v39];
          [*(*v11 + 161) setWxStreamState:v40];

          v41 = *v11;
          if (*(*v11 + 108))
          {
            v42 = [v41[155] objectForKeyedSubscript:v7];
            v43 = [v42 hijackBackoffTicks];

            v41 = *v11;
            if (v43)
            {
              v44 = [v41[155] objectForKeyedSubscript:v7];
              v45 = [v41 _checkTickswithinWindow:objc_msgSend(v44 withWindow:{"hijackBackoffTicks"), *(*v11 + 108)}];

              if (dword_1002F6778 <= 30 && (dword_1002F6778 != -1 || _LogCategory_Initialize()))
              {
                sub_1001E6068();
              }

              if (v45 >= 1)
              {
                [*(a1 + 48) setAction:4];
                if (([*(a1 + 32) flags] & 2) != 0)
                {
                  v46 = *(*(*(a1 + 64) + 8) + 40);
                }

                else
                {
                  v46 = 0;
                }

                [*(a1 + 48) setDeviceAddress:v46];
                [*(a1 + 48) setReason:@"Hijack Block Period"];
                [*(a1 + 48) setClientID:{objc_msgSend(*(a1 + 32), "clientID")}];
                [*(a1 + 40) _respondRoutingRequest:*(a1 + 48) withResponseHandler:*(a1 + 56) wxAddress:*(*(*(a1 + 64) + 8) + 40)];
                [*(a1 + 40) _startHijackMetricSubmission:4 wxAddress:v7 version:@"NA"];
                goto LABEL_17;
              }

              v50 = [*(*v11 + 155) objectForKeyedSubscript:v7];
              [v50 setHijackBackoffTicks:0];

              v41 = *v11;
            }
          }

          v51 = [v41 _getWxFWVersion:v7];
          v52 = [v8 isRoutingActionInitialized];
          if (v52)
          {
            if ([*v11 _deviceSupportsHijackV2:v51 withDevice:v8] && v51)
            {
              if (*(*v11 + 896) == 1)
              {
                [v8 setAudioRoutingResponse:*(a1 + 56)];
                [v8 setAudioRoutingClientID:{objc_msgSend(*(a1 + 32), "clientID")}];
                v55 = *(a1 + 40);
                v56 = [*(a1 + 32) audioScore];
                v100 = 0;
                v95 = [v55 allowHijackWithAudioScore:v56 hijackRoute:v7 hijackDeniedReason:&v100];
                v57 = v100;
                if ([v57 isEqualToString:@"Fall back to legacy hijack"])
                {
                  v96 = v57;
                  v97 = v51;
                  goto LABEL_97;
                }

                [*(a1 + 40) _mediaRouteHijackResponseHandlerFor:v7 allowedToHijack:v95 withReason:v57];
                *(*(*(a1 + 72) + 8) + 24) = 1;

LABEL_88:
                *a4 = 1;

                goto LABEL_18;
              }

              v97 = v51;
            }

            else
            {
              v97 = v51;
              if (dword_1002F6778 <= 30 && (dword_1002F6778 != -1 || _LogCategory_Initialize()))
              {
                sub_1001E6130(v8, v51);
              }
            }

            v96 = 0;
LABEL_97:
            mach_absolute_time();
            v91 = UpTicksToSeconds();
            v94 = v91 <= 5 && [*(a1 + 32) audioScore] < 501;
            [*(*v11 + 161) setHijackVersion:@"V1"];
            mach_absolute_time();
            v61 = [*(*v11 + 83) objectForKeyedSubscript:v9];
            [v61 lastConnectionTicks];
            v93 = UpTicksToMilliseconds();

            mach_absolute_time();
            v62 = [*(*v11 + 83) objectForKeyedSubscript:v9];
            [v62 lastWxAdvTicks];
            v63 = UpTicksToMilliseconds();

            if (dword_1002F6778 <= 30 && (dword_1002F6778 != -1 || _LogCategory_Initialize()))
            {
              v64 = "no";
              if (v94)
              {
                v64 = "yes";
              }

              LogPrintF(&dword_1002F6778, "[BTSmartRoutingDaemon _smartRoutingAudioRoutingRequest:withResponseHandler:]_block_invoke_3", 30, "Hijack: timeSinceLastRequest %llus timeSinceRingtoneStopped %llus musicResumeHijack %s, last connection %llums, last adv %llums", v98, v91, v64, v93, v63);
            }

            v92 = v63;
            v65 = [*(*v11 + 28) objectForKeyedSubscript:v7];
            if ([v65 audioStreamState])
            {
              v66 = [*(*v11 + 28) objectForKeyedSubscript:v7];
              if ([v66 audioStreamState] <= 1 && v98 > 5)
              {
                v67 = [v8 otherTipiDeviceBTName];
                v99 = [v67 isEqualToString:@"Mac"] | v94;

                if ((v99 & 1) == 0)
                {
                  v68 = [v8 otherTipiDeviceVersion];
                  [v68 doubleValue];
                  v70 = v69 < 1.2 || [@"3E725" compare:*(*(*(a1 + 88) + 8) + 40) options:64] == 1;

                  if (dword_1002F6778 <= 30 && (dword_1002F6778 != -1 || _LogCategory_Initialize()))
                  {
                    sub_1001E619C();
                  }

                  [v8 setRoutingAction:1];
                  [*(a1 + 48) setAction:1];
                  [*(a1 + 48) setDeviceAddress:*(*(*(a1 + 64) + 8) + 40)];
                  [*(a1 + 48) setReason:@"Tipi device should be routed"];
                  [*(a1 + 48) setClientID:{objc_msgSend(*(a1 + 32), "clientID")}];
                  [*(a1 + 40) _respondRoutingRequest:*(a1 + 48) withResponseHandler:*(a1 + 56) wxAddress:*(*(*(a1 + 64) + 8) + 40)];
                  ++*(*(a1 + 40) + 148);
                  if (*(*(*(a1 + 96) + 8) + 40) != 0 && v70)
                  {
                    v101[0] = @"audioRoutingScore";
                    v79 = +[NSNumber numberWithInt:](NSNumber, "numberWithInt:", [*(a1 + 32) audioScore]);
                    v102[0] = v79;
                    v102[1] = &__kCFBooleanTrue;
                    v101[1] = @"audioRoutingSetOwnershipToFalse";
                    v101[2] = @"reason";
                    v102[2] = @"LegacyHijack";
                    v80 = [NSDictionary dictionaryWithObjects:v102 forKeys:v101 count:3];

                    [*(a1 + 40) _relayConduitMessageSend:1 withOptions:v80 andWxAddress:*(*(*(a1 + 64) + 8) + 40) andOtherAddress:0];
                  }

                  mach_absolute_time();
                  v81 = UpTicksToSeconds();
                  v82 = *(*v11 + 180);
                  if (v82)
                  {
                    [v82 invalidate];
                    v83 = *(*v11 + 180);
                    *(*v11 + 180) = 0;
                  }

                  if (([v8 routed] & 1) != 0 || (v84 = *v11, *(*v11 + 143)) && v84[141] > v81)
                  {
                    v75 = v97;
                    if (dword_1002F6778 <= 30 && (dword_1002F6778 != -1 || _LogCategory_Initialize()))
                    {
                      sub_1001E61EC(v8, v81);
                    }
                  }

                  else
                  {
                    v85 = [v8 deviceName];
                    v86 = [v8 deviceAddress];
                    v87 = v86;
                    v88 = @"?";
                    if (v86)
                    {
                      v88 = v86;
                    }

                    [v84 _smartRoutingShowBanner:1 withDevice:v85 andDeviceAddress:v88 andProductID:objc_msgSend(v8 andCentralContentItemTxt:"productID") andTimeout:@"Connected" andDeviceType:{0, 4.0}];

                    v75 = v97;
                  }

                  v89 = [v8 otherTipiDeviceBTAddress];

                  v76 = v96;
                  if (v89)
                  {
                    [*v11 submitHijackMetric:v7 withV1:1];
                    [*v11 _startRouteCheckTimer:v7 andType:5];
                    [*v11 _startRouteCheckTimer:v7 andType:6];
                    [*v11 submitRouteActivityMetric:v7 activity:@"Hijack_V1AirpodIdle"];
                  }

                  goto LABEL_168;
                }

LABEL_115:
                [*(a1 + 40) _setHighPriorityTag:*(*(*(a1 + 64) + 8) + 40) withHighPriority:1];
                v71 = [v8 otherTipiDeviceBTAddress];

                v72 = *(a1 + 40);
                if (v71)
                {
                  ++*(v72 + 148);
                  [*(*(a1 + 40) + 1288) setHijackRelaySent:1];
                  v103[0] = @"audioRoutingScore";
                  v73 = +[NSNumber numberWithInt:](NSNumber, "numberWithInt:", [*(a1 + 32) audioScore]);
                  v104[0] = v73;
                  v104[1] = v10;
                  v103[1] = @"audioRoutingRequestID";
                  v103[2] = @"audioRoutingHijackRequest";
                  v104[2] = &__kCFBooleanTrue;
                  v74 = [NSDictionary dictionaryWithObjects:v104 forKeys:v103 count:3];

                  [v8 setAudioRoutingResponse:*(a1 + 56)];
                  [v8 setAudioRoutingClientID:{objc_msgSend(*(a1 + 32), "clientID")}];
                  [v8 setConduitMessageTicks:mach_absolute_time()];
                  [*(a1 + 40) _relayConduitMessageStartTimer:*(*(*(a1 + 64) + 8) + 40) withOptions:v74];
                  [*(a1 + 40) _relayConduitMessageSend:1 withOptions:v74 andWxAddress:*(*(*(a1 + 64) + 8) + 40) andOtherAddress:0];

                  v76 = v96;
                  v75 = v97;
LABEL_168:
                  *(*(*(a1 + 72) + 8) + 24) = 1;
                  *a4 = 1;

                  goto LABEL_18;
                }

                v77 = [*(v72 + 664) objectForKeyedSubscript:v9];
                v75 = v97;
                if ([v77 sourceCount] < 2)
                {
                }

                else
                {
                  v78 = [@"5A187" compare:v97 options:64];

                  if (v78 == -1)
                  {
                    if (dword_1002F6778 <= 30 && (dword_1002F6778 != -1 || _LogCategory_Initialize()))
                    {
                      sub_1001E6284();
                    }

                    if (([*(a1 + 40) _tipiHealingHijackTimerStart:v7 withScore:{objc_msgSend(*(a1 + 32), "audioScore")}] & 1) != 0 || dword_1002F6778 > 90 || dword_1002F6778 == -1 && !_LogCategory_Initialize())
                    {
                      goto LABEL_166;
                    }

                    goto LABEL_126;
                  }
                }

                if (v92 < v93 || [@"5A187" compare:v97 options:64] != -1)
                {
                  [*(a1 + 48) setAction:1];
                  [*(a1 + 48) setDeviceAddress:*(*(*(a1 + 64) + 8) + 40)];
                  [*(a1 + 48) setReason:@"Tipi device should be routed"];
                  [*(a1 + 48) setClientID:{objc_msgSend(*(a1 + 32), "clientID")}];
                  [*(a1 + 40) _respondRoutingRequest:*(a1 + 48) withResponseHandler:*(a1 + 56) wxAddress:*(*(*(a1 + 64) + 8) + 40)];
LABEL_167:
                  v76 = v96;
                  goto LABEL_168;
                }

                if (dword_1002F6778 <= 90 && (dword_1002F6778 != -1 || _LogCategory_Initialize()))
                {
                  LogPrintF(&dword_1002F6778, "[BTSmartRoutingDaemon _smartRoutingAudioRoutingRequest:withResponseHandler:]_block_invoke_3", 90, "Haven't seen wx adv since connection start, last connect start event %llums, last adv event %llums", v93, v92);
                }

                if (([*(a1 + 40) _tipiHealingHijackTimerStart:v7 withScore:{objc_msgSend(*(a1 + 32), "audioScore")}] & 1) != 0 || dword_1002F6778 > 90 || dword_1002F6778 == -1 && !_LogCategory_Initialize())
                {
LABEL_166:
                  [v8 setAudioRoutingResponse:*(a1 + 56)];
                  [v8 setAudioRoutingRequest:*(a1 + 32)];
                  goto LABEL_167;
                }

LABEL_126:
                sub_1001E6250();
                goto LABEL_166;
              }
            }

            goto LABEL_115;
          }

          if (dword_1002F6778 <= 30)
          {
            if (dword_1002F6778 != -1 || (v52 = _LogCategory_Initialize(), v52))
            {
              sub_1001E60F8(v52, v53, v54);
            }
          }

          v58 = [*(a1 + 40) _tipiHealingHijackTimerStart:v7 withScore:{objc_msgSend(*(a1 + 32), "audioScore")}];
          if ((v58 & 1) == 0 && dword_1002F6778 <= 90)
          {
            if (dword_1002F6778 != -1 || (v58 = _LogCategory_Initialize(), v58))
            {
              sub_1001E6114(v58, v59, v60);
            }
          }

          [v8 setAudioRoutingRequest:*(a1 + 32)];
          [v8 setAudioRoutingResponse:*(a1 + 56)];
          [v8 setAudioRoutingClientID:{objc_msgSend(*(a1 + 32), "clientID")}];
          *(*(*(a1 + 72) + 8) + 24) = 1;
          goto LABEL_88;
        }

        [*(a1 + 48) setAction:3];
        [*(a1 + 48) setDeviceAddress:*(*(*(a1 + 64) + 8) + 40)];
        v17 = *(a1 + 48);
        v18 = @"Fake hijack should not route";
      }
    }

    else
    {
      if (v13 != 3)
      {
LABEL_18:

        goto LABEL_19;
      }

      if (dword_1002F6778 <= 30)
      {
        if (dword_1002F6778 != -1 || (v13 = _LogCategory_Initialize(), v13))
        {
          sub_1001E5F78(v13, v14, v15);
        }
      }

      [*(a1 + 48) setAction:{objc_msgSend(v8, "routingAction")}];
      [*(a1 + 48) setDeviceAddress:0];
      v17 = *(a1 + 48);
      v18 = @"Device shouldnt route";
    }

    [v17 setReason:v18];
LABEL_16:
    [*(a1 + 48) setClientID:{objc_msgSend(*(a1 + 32), "clientID")}];
    [*(a1 + 40) _respondRoutingRequest:*(a1 + 48) withResponseHandler:*(a1 + 56) wxAddress:*(*(*(a1 + 64) + 8) + 40)];
LABEL_17:
    *(*(*(a1 + 72) + 8) + 24) = 1;
    *a4 = 1;
    goto LABEL_18;
  }

LABEL_19:
}

void sub_10004C0C0(void *a1, uint64_t a2, void *a3)
{
  v6 = [a3 model];
  if ([v6 hasPrefix:@"iPhone"])
  {
    v4 = a1[4];
LABEL_18:
    ++*(*(v4 + 8) + 24);
    goto LABEL_19;
  }

  if ([v6 hasPrefix:@"iPad"])
  {
    v4 = a1[5];
    goto LABEL_18;
  }

  if ([v6 hasPrefix:@"iPod"])
  {
    v4 = a1[6];
    goto LABEL_18;
  }

  if ([v6 containsString:@"Mac"])
  {
    v4 = a1[7];
    goto LABEL_18;
  }

  if ([v6 hasPrefix:@"Watch"])
  {
    v4 = a1[8];
    goto LABEL_18;
  }

  if ([v6 hasPrefix:@"AppleTV"])
  {
    v4 = a1[9];
    goto LABEL_18;
  }

  v5 = v6;
  if ([v5 hasPrefix:{@"AudioAccessory1, "}] & 1) != 0 || (objc_msgSend(v5, "hasPrefix:", @"AudioAccessory5,") & 1) != 0 || (objc_msgSend(v5, "hasPrefix:", @"AudioAccessory6,") & 1) != 0 || (objc_msgSend(v5, "hasPrefix:", @"HomePod"))
  {

    v4 = a1[10];
    goto LABEL_18;
  }

LABEL_19:
}

void sub_10004D040(uint64_t a1, uint64_t a2, void *a3, _BYTE *a4)
{
  v10 = a3;
  if ([*(a1 + 32) containsString:a2] && objc_msgSend(v10, "inEar"))
  {
    v7 = *(a1 + 40);
    v8 = [v10 deviceName];
    v9 = [v10 deviceAddress];
    [v7 _smartRoutingShowBanner:1 withDevice:v8 andDeviceAddress:v9 andProductID:objc_msgSend(v10 andCentralContentItemTxt:"productID") andTimeout:@"Connected" andDeviceType:{0, 4.0}];

    *a4 = 1;
  }
}

uint64_t sub_10004D11C(uint64_t a1, uint64_t a2, void *a3)
{
  v16 = a3;
  v4 = [v16 inEar];
  v5 = v16;
  if (v4)
  {
    [v16 setRouted:0];
    v6 = [*(*(a1 + 32) + 1440) trailingAccessoryText];
    v7 = [v6 containsString:@"Reverse"];

    v5 = v16;
    if ((v7 & 1) == 0)
    {
      v8 = *(a1 + 32);
      if (*(v8 + 1001) == 1)
      {
        if (*(v8 + 1092) <= 3)
        {
          v4 = [*(v8 + 184) activeCallCount];
          v5 = v16;
          if (v4 < 1)
          {
            goto LABEL_9;
          }

          v8 = *(a1 + 32);
          v9 = v16;
        }

        else
        {
          v9 = v16;
        }

        v10 = [v9 deviceName];
        v11 = [v16 deviceAddress];
        v12 = [v16 productID];
        v13 = [v16 otherTipiDeviceBTName];
        v14 = [NSString stringWithFormat:@"%@", v13];
        [v8 _smartRoutingShowBanner:5 withDevice:v10 andDeviceAddress:v11 andProductID:v12 andCentralContentItemTxt:v14 andTimeout:0 andDeviceType:20.0];

        v5 = v16;
      }
    }
  }

LABEL_9:

  return _objc_release_x1(v4, v5);
}

id sub_10004D390(uint64_t a1)
{
  if ([*(*(a1 + 32) + 648) scanRate] != 20)
  {
    [*(*(a1 + 32) + 648) setScanRate:20];
  }

  result = [*(*(a1 + 32) + 1496) scanRate];
  if (result != 20)
  {
    v3 = *(*(a1 + 32) + 1496);

    return [v3 setScanRate:20];
  }

  return result;
}

void sub_10004D410(id a1)
{
  if (dword_1002F6778 <= 30)
  {
    if (dword_1002F6778 != -1 || (a1 = _LogCategory_Initialize(), a1))
    {
      sub_1001E63F8(a1, v1, v2);
    }
  }
}

uint64_t sub_10004D45C(uint64_t a1, void *a2)
{
  v3 = a2;
  v5 = v3;
  if (*(a1 + 32) == *(*(a1 + 40) + 8))
  {
    if (v3)
    {
      v9 = v3;
      if (dword_1002F6778 <= 90 && (dword_1002F6778 != -1 || _LogCategory_Initialize()))
      {
        sub_1001E6414(v9);
      }

      [*(a1 + 32) invalidate];
      v6 = *(a1 + 40);
      v7 = *(v6 + 8);
      *(v6 + 8) = 0;

      goto LABEL_7;
    }

    if (dword_1002F6778 <= 30)
    {
      v9 = 0;
      if (dword_1002F6778 != -1 || (v3 = _LogCategory_Initialize(), v5 = 0, v3))
      {
        v3 = sub_1001E6454(v3, v5, v4);
LABEL_7:
        v5 = v9;
      }
    }
  }

  return _objc_release_x1(v3, v5);
}

id sub_10004D684(uint64_t a1)
{
  v1 = (a1 + 32);
  result = *(*(a1 + 32) + 92);
  if (result != -1)
  {
    state64 = 0;
    notify_get_state(result, &state64);
    v3 = state64;
    if (dword_1002F6778 <= 30 && (dword_1002F6778 != -1 || _LogCategory_Initialize()))
    {
      sub_1001E648C(v1, v3, v3);
    }

    v4 = *v1;
    if (v3 >= 0xBuLL && v4[64] <= 0xAu)
    {
      [v4 _nearbyInfoActivityCriticalStart];
      v4 = *v1;
    }

    v4[64] = v3;
    return [*v1 _nearbyInfoActivityChanged];
  }

  return result;
}

id sub_10004D81C(uint64_t a1)
{
  v3 = *(a1 + 32);
  v2 = *(a1 + 40);
  result = *(v2 + 184);
  if (v3 != result)
  {
    return result;
  }

  if (dword_1002F6778 <= 30)
  {
    if (dword_1002F6778 != -1)
    {
LABEL_4:
      LogPrintF(&dword_1002F6778, "-[BTSmartRoutingDaemon _callMonitorEnsureStarted]_block_invoke", 30, "Call State, incoming unconnected: %d, incoming connected: %d, outgoing unconnected: %d, outgoing connected: %d activeCall %d", [result callCountIncomingUnconnected], objc_msgSend(*(*(a1 + 40) + 184), "callCountIncomingConnected"), objc_msgSend(*(*(a1 + 40) + 184), "callCountOutgoingUnconnected"), objc_msgSend(*(*(a1 + 40) + 184), "callCountOutgoingConnected"), objc_msgSend(*(*(a1 + 40) + 184), "activeCallCount"));
      v2 = *(a1 + 40);
      goto LABEL_6;
    }

    v5 = _LogCategory_Initialize();
    v2 = *(a1 + 40);
    if (v5)
    {
      result = *(v2 + 184);
      goto LABEL_4;
    }
  }

LABEL_6:
  if ([*(v2 + 1256) callIncomingUnconnected] >= 1)
  {
    v6 = [*(*(a1 + 40) + 184) callCountIncomingUnconnected];
    if (!v6)
    {
      if (dword_1002F6778 <= 30)
      {
        if (dword_1002F6778 != -1 || (v6 = _LogCategory_Initialize(), v6))
        {
          sub_1001E6538(v6, v7, v8);
        }
      }

      *(*(a1 + 40) + 984) = mach_absolute_time();
    }
  }

  [*(*(a1 + 40) + 1256) setCallIncomingUnconnected:{objc_msgSend(*(*(a1 + 40) + 184), "callCountIncomingUnconnected")}];
  v9 = *(a1 + 40);

  return [v9 _update];
}

id sub_10004D9C4(uint64_t a1)
{
  if (dword_1002F6778 <= 30 && (dword_1002F6778 != -1 || _LogCategory_Initialize()))
  {
    sub_1001E6570(a1);
  }

  [*(*(a1 + 32) + 1256) bluetoothState];
  [*(*(a1 + 32) + 232) bluetoothState];
  [*(*(a1 + 32) + 1256) setBluetoothStatePrev:{objc_msgSend(*(*(a1 + 32) + 1256), "bluetoothState")}];
  [*(*(a1 + 32) + 1256) setBluetoothState:{objc_msgSend(*(*(a1 + 32) + 232), "bluetoothState")}];
  v2 = +[SRConnectionManager sharedSRConnectionManager];
  [v2 bluetoothStateChanged:{objc_msgSend(*(*(a1 + 32) + 1256), "bluetoothState")}];

  [*(a1 + 32) _updateSRDiscoveredDeviceForBluetoothStateChanged:{objc_msgSend(*(*(a1 + 32) + 232), "bluetoothState")}];
  v3 = *(a1 + 32);
  if (*(v3 + 936) == 1)
  {
    [v3 _updateUSBDeviceForBluetoothStateChange:{objc_msgSend(*(v3 + 232), "bluetoothState")}];
    v3 = *(a1 + 32);
  }

  v4 = *(v3 + 416);

  return [v4 trigger];
}

uint64_t sub_10004DAFC(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = (a1 + 32);
  v5 = *(*(a1 + 32) + 232);
  if (v5 == *(a1 + 40))
  {
    v10 = v3;
    if (v3)
    {
      if (dword_1002F6778 <= 90 && (dword_1002F6778 != -1 || _LogCategory_Initialize()))
      {
        sub_1001E6614(v10);
      }

      [*(a1 + 40) invalidate];
      v6 = *(a1 + 32);
      v7 = *(v6 + 232);
      *(v6 + 232) = 0;
    }

    else
    {
      [*(*v4 + 157) setBluetoothState:{objc_msgSend(v5, "bluetoothState")}];
      if (dword_1002F6778 <= 30 && (dword_1002F6778 != -1 || _LogCategory_Initialize()))
      {
        sub_1001E6654(a1 + 32);
      }

      v8 = +[SRConnectionManager sharedSRConnectionManager];
      [v8 bluetoothStateChanged:{objc_msgSend(*(*v4 + 157), "bluetoothState")}];

      [*v4 _updateUSBDeviceForBluetoothStateChange:{objc_msgSend(*(*v4 + 29), "bluetoothState")}];
      v5 = [*v4 _update];
    }

    v3 = v10;
  }

  return _objc_release_x1(v5, v3);
}

void sub_10004DCCC(id a1, NSString *a2, SRWxDevice *a3, BOOL *a4)
{
  v7 = a2;
  v5 = a3;
  if ([(SRWxDevice *)v5 routingAction]== 2)
  {
    v6 = [(SRWxDevice *)v5 routed]? 1 : 3;
    [(SRWxDevice *)v5 setRoutingAction:v6];
    if (dword_1002F6778 <= 30 && (dword_1002F6778 != -1 || _LogCategory_Initialize()))
    {
      sub_1001E6710(v5, v7);
    }
  }
}

uint64_t sub_10004DFB8(uint64_t a1, void *a2)
{
  v2 = a2;
  v3 = v2;
  if (dword_1002F6778 <= 30)
  {
    v5 = v2;
    if (dword_1002F6778 != -1 || (v2 = _LogCategory_Initialize(), v3 = v5, v2))
    {
      sub_1001E6780();
      v3 = v5;
    }
  }

  return _objc_release_x1(v2, v3);
}

void sub_10004E19C(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = *(a1 + 32);
  v5 = *(v4 + 368);
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_10004E238;
  v7[3] = &unk_1002B6D18;
  v7[4] = v4;
  v8 = v3;
  v6 = v3;
  dispatch_async(v5, v7);
}

void sub_10004E238(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = a1;
  if (dword_1002F6778 <= 90)
  {
    if (dword_1002F6778 != -1 || (a1 = _LogCategory_Initialize(), a1))
    {
      sub_1001E6864(a1, a2, a3);
    }
  }

  if (!*(*(v3 + 32) + 312))
  {
    v4 = objc_alloc_init(NSMutableDictionary);
    v5 = *(v3 + 32);
    v6 = *(v5 + 312);
    *(v5 + 312) = v4;
  }

  objc_initWeak(&location, *(v3 + 40));
  v22[0] = _NSConcreteStackBlock;
  v22[1] = 3221225472;
  v22[2] = sub_10004E4D8;
  v22[3] = &unk_1002B8218;
  v22[4] = *(v3 + 32);
  objc_copyWeak(&v23, &location);
  [*(v3 + 40) setDisconnectHandler:v22];
  v7 = *(*(v3 + 32) + 312);
  v8 = [*(v3 + 40) identifier];
  v9 = [v7 objectForKey:v8];

  if (!v9)
  {
    v10 = *(*(v3 + 32) + 312);
    v11 = objc_loadWeakRetained(&location);
    v12 = [v11 identifier];
    [v10 setObject:v11 forKey:v12];
  }

  v13 = objc_loadWeakRetained(&location);
  v14 = [v13 availableDataTypesFromServer];

  if (v14)
  {
    if (dword_1002F6778 <= 90 && (dword_1002F6778 != -1 || _LogCategory_Initialize()))
    {
      LogPrintF(&dword_1002F6778, "[BTSmartRoutingDaemon _dataRelayClientMonitorEnsureStarted]_block_invoke_2", 90, "Data types added to DR Server when found");
    }

    v15 = objc_loadWeakRetained(&location);
    v16 = [v15 wxAddress];
    v17 = CUPrintNSDataAddress();

    [*(v3 + 32) activeHRMDeviceUpdateToDeviceWithAddress:v17];
  }

  if ([*(*(v3 + 32) + 1480) workoutActive])
  {
    v18 = objc_loadWeakRetained(&location);
    v19 = [v18 requestedDataTypes];

    if (!v19)
    {
      v20 = *(v3 + 32);
      v21 = objc_loadWeakRetained(&location);
      [v20 _dataRelayAddRequestedDataTypesForServer:v21];
    }
  }

  objc_destroyWeak(&v23);
  objc_destroyWeak(&location);
}

void sub_10004E4B4(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, id location)
{
  objc_destroyWeak((v16 + 40));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_10004E4D8(uint64_t a1)
{
  v1 = *(a1 + 32);
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  [v1 _dataRelayAddRequestedDataTypesForServer:WeakRetained];
}

void sub_10004E52C(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = *(a1 + 32);
  v5 = *(v4 + 368);
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_10004E5C8;
  v7[3] = &unk_1002B6D18;
  v8 = v3;
  v9 = v4;
  v6 = v3;
  dispatch_async(v5, v7);
}

void sub_10004E5C8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = a1;
  if (dword_1002F6778 <= 90)
  {
    if (dword_1002F6778 != -1 || (a1 = _LogCategory_Initialize(), a1))
    {
      sub_1001E6880(a1, a2, a3);
    }
  }

  objc_initWeak(&location, *(v3 + 32));
  if ([*(v3 + 32) requestedDataTypes])
  {
    v4 = *(v3 + 40);
    v5 = objc_loadWeakRetained(&location);
    [v4 _dataRelayRemoveRequestedDataTypesForServer:v5];
  }

  v6 = objc_loadWeakRetained(&location);
  v7 = [v6 wxAddress];
  v8 = CUPrintNSDataAddress();

  v9 = [*(*(v3 + 40) + 1256) activeHRMDevice];
  v10 = [v9 btAddress];

  if (*(*(v3 + 40) + 1264) != 1)
  {
    goto LABEL_14;
  }

  v11 = v8;
  v12 = v10;
  v13 = v12;
  if (v11 == v12)
  {

    goto LABEL_12;
  }

  if ((v11 != 0) == (v12 == 0))
  {

    goto LABEL_14;
  }

  v14 = [v11 isEqual:v12];

  if (v14)
  {
LABEL_12:
    [*(v3 + 40) activeHRMDeviceUpdate];
  }

LABEL_14:
  v15 = *(*(v3 + 40) + 312);
  v16 = [*(v3 + 32) identifier];
  v17 = [v15 objectForKey:v16];

  if (v17)
  {
    v18 = *(*(v3 + 40) + 312);
    v19 = [*(v3 + 32) identifier];
    [v18 removeObjectForKey:v19];
  }

  if (![*(*(v3 + 40) + 312) count])
  {
    v20 = *(v3 + 40);
    v21 = *(v20 + 312);
    *(v20 + 312) = 0;
  }

  objc_destroyWeak(&location);
}

void sub_10004E888(uint64_t a1, void *a2)
{
  v4 = a2;
  if (v4)
  {
    if (dword_1002F6778 <= 90 && (dword_1002F6778 != -1 || _LogCategory_Initialize()))
    {
      sub_1001E689C(v4);
    }

    [*(a1 + 32) addRequestedDataTypes:*(a1 + 40) completion:&stru_1002B8260];
  }

  else
  {
    sub_1001E68DC(dword_1002F6778, 0, v3);
  }
}

void sub_10004E924(id a1, NSError *a2)
{
  v2 = a2;
  v4 = dword_1002F6778;
  if (!v2)
  {
    v5 = 0;
    v4 = sub_1001E6974(dword_1002F6778, 0, v3);
    goto LABEL_9;
  }

  if (dword_1002F6778 <= 90)
  {
    v5 = v2;
    if (dword_1002F6778 != -1 || (v4 = _LogCategory_Initialize(), v2 = v5, v4))
    {
      v4 = sub_1001E6934(v2);
LABEL_9:
      v2 = v5;
    }
  }

  _objc_release_x1(v4, v2);
}

void sub_10004EA48(uint64_t a1, void *a2)
{
  v4 = a2;
  if (v4)
  {
    if (dword_1002F6778 <= 30 && (dword_1002F6778 != -1 || _LogCategory_Initialize()))
    {
      sub_1001E69CC(v4);
    }

    [*(a1 + 32) removeRequestedDataTypes:*(a1 + 40) completion:&stru_1002B82A8];
  }

  else
  {
    sub_1001E6A0C(dword_1002F6778 < 31, dword_1002F6778, v3);
  }
}

void sub_10004EAE8(id a1, NSError *a2)
{
  v2 = a2;
  v4 = dword_1002F6778;
  if (!v2)
  {
    v5 = 0;
    v4 = sub_1001E6AA0(dword_1002F6778, 0, v3);
    goto LABEL_9;
  }

  if (dword_1002F6778 <= 90)
  {
    v5 = v2;
    if (dword_1002F6778 != -1 || (v4 = _LogCategory_Initialize(), v2 = v5, v4))
    {
      v4 = sub_1001E6A60(v2);
LABEL_9:
      v2 = v5;
    }
  }

  _objc_release_x1(v4, v2);
}

void sub_10004EC40(uint64_t a1)
{
  v2 = MRAVRoutingDiscoverySessionCreate();
  MRAVRoutingDiscoverySessionSetDiscoveryMode();
  v3 = v2;
  v4 = v3;
  if (v3)
  {
    [v3 setOnlyDiscoversBluetoothDevices:1];
  }

  v8[7] = _NSConcreteStackBlock;
  v8[8] = 3221225472;
  v8[9] = sub_10004ED50;
  v8[10] = &unk_1002B82F8;
  v8[11] = *(a1 + 32);
  v5 = MRAVRoutingDiscoverySessionAddOutputDevicesChangedCallback();
  v6 = *(a1 + 32);
  v7 = *(v6 + 368);
  v8[0] = _NSConcreteStackBlock;
  v8[1] = 3221225472;
  v8[2] = sub_10004EE18;
  v8[3] = &unk_1002B8320;
  v8[4] = v6;
  v8[5] = v4;
  v8[6] = v5;
  dispatch_async(v7, v8);
}

void sub_10004ED50(uint64_t a1, CFTypeRef cf)
{
  v3 = CFRetain(cf);
  v4 = *(a1 + 32);
  v5 = *(v4 + 368);
  v6[0] = _NSConcreteStackBlock;
  v6[1] = 3221225472;
  v6[2] = sub_10004EDDC;
  v6[3] = &unk_1002B82D0;
  v6[4] = v4;
  v6[5] = v3;
  dispatch_async(v5, v6);
}

void sub_10004EDDC(uint64_t a1)
{
  v2 = *(a1 + 32);
  v3 = *(v2 + 608);
  if (v3)
  {
    CFRelease(v3);
    v2 = *(a1 + 32);
  }

  *(v2 + 608) = *(a1 + 40);
}

void *sub_10004EE18(void *result)
{
  *(result[4] + 344) = result[5];
  *(result[4] + 360) = result[6];
  *(result[4] + 352) = 0;
  return result;
}

void sub_10004EF14(uint64_t a1)
{
  if (*(a1 + 32))
  {
    if (!*(a1 + 40) || (MRAVRoutingDiscoverySessionRemoveOutputDevicesChangedCallback(), *(a1 + 32)))
    {
      MRAVRoutingDiscoverySessionSetDiscoveryMode();
      v2 = *(a1 + 32);

      CFRelease(v2);
    }
  }
}

id sub_10004F250(uint64_t a1)
{
  v2 = +[NSNotificationCenter defaultCenter];
  v3 = kMRAVOutputContextDevicesDidChangeNotification;
  [v2 addObserver:*(a1 + 32) selector:"_mediaRouteMonitorActiveAudioRouteChanged:" name:kMRAVOutputContextDevicesDidChangeNotification object:MRAVOutputContextGetSharedSystemAudioContext()];

  v4 = +[NSNotificationCenter defaultCenter];
  [v4 addObserver:*(a1 + 32) selector:"_mediaRouteMonitorActiveAudioRouteChanged:" name:v3 object:MRAVOutputContextGetSharedAudioPresentationContext()];

  MRMediaRemoteSetWantsRouteChangeNotifications();
  v5 = *(a1 + 32);

  return [v5 _mediaRouteMonitorActiveAudioRouteChanged:0];
}

void sub_10004F394(uint64_t a1)
{
  SharedSystemAudioContext = MRAVOutputContextGetSharedSystemAudioContext();
  SharedAudioPresentationContext = MRAVOutputContextGetSharedAudioPresentationContext();
  v4 = SharedAudioPresentationContext;
  if (SharedSystemAudioContext)
  {
    v5 = MRAVOutputContextCopyOutputDevices();
    if ([v5 count])
    {
      v6 = [v5 firstObject];
      Type = MRAVOutputDeviceGetType();

      v8 = [v5 firstObject];
      SharedSystemAudioContext = MRAVOutputDeviceCopyName();

      v9 = [v5 firstObject];
      Subtype = MRAVOutputDeviceGetSubtype();

      v11 = [v5 firstObject];
      v12 = MRAVOutputDeviceCopyUniqueIdentifier();

      v13 = [v12 stringByReplacingOccurrencesOfString:@"-tacl" withString:&stru_1002C1358];
      v14 = [v13 stringByReplacingOccurrencesOfString:@"-tsco" withString:&stru_1002C1358];
      v15 = [v14 uppercaseString];

      v16 = SharedSystemAudioContext;
      LODWORD(SharedSystemAudioContext) = Type == 2;
    }

    else
    {
      v15 = 0;
      v12 = 0;
      v16 = 0;
      Subtype = 0;
      LODWORD(SharedSystemAudioContext) = 0;
    }

    if (!v4)
    {
      goto LABEL_17;
    }
  }

  else
  {
    v15 = 0;
    v12 = 0;
    v16 = 0;
    Subtype = 0;
    if (!SharedAudioPresentationContext)
    {
      goto LABEL_17;
    }
  }

  v17 = MRAVOutputContextCopyOutputDevices();
  if ([v17 count])
  {
    v63 = v12;
    v18 = v16;
    v19 = [v17 firstObject];
    v20 = MRAVOutputDeviceGetType();

    v21 = [v17 firstObject];
    v4 = MRAVOutputDeviceCopyName();

    v22 = [v17 firstObject];
    v23 = MRAVOutputDeviceGetSubtype();

    if (v20 == 2)
    {
      v24 = SharedSystemAudioContext;
    }

    else
    {
      v24 = 0;
    }

    if (v24 == 1)
    {
      v25 = [*(*(a1 + 32) + 1256) audioDestination];
      v26 = [v15 isEqualToString:v25];
      v27 = *(a1 + 32);
      if (*(v27 + 537) && (v26 & 1) != 0)
      {

        v16 = v18;
LABEL_28:
        v12 = v63;
        goto LABEL_76;
      }

      *(v27 + 537) = 1;
      *(*(a1 + 32) + 538) = 0;
      *(*(a1 + 32) + 576) = 0;
      v34 = *(a1 + 32);
      v35 = *(v34 + 304);
      *(v34 + 304) = @"Bluetooth";

      v16 = v18;
      v12 = v63;
      goto LABEL_30;
    }

    if (Subtype == 1 && v23 == 1)
    {
      v33 = *(a1 + 32);
      v16 = v18;
      if (*(v33 + 576))
      {
        goto LABEL_28;
      }

      *(v33 + 537) = 0;
      *(*(a1 + 32) + 538) = 0;
      *(*(a1 + 32) + 576) = 1;
      v58 = *(a1 + 32);
      v59 = *(v58 + 304);
      *(v58 + 304) = @"Speaker";

      mach_absolute_time();
      v60 = UpTicksToSeconds();
      v12 = v63;
      if (v60 <= 1 && dword_1002F6778 <= 90)
      {
        if (dword_1002F6778 != -1 || (v60 = _LogCategory_Initialize(), v60))
        {
          sub_1001E6B68(v60, v61, v62);
        }
      }

      goto LABEL_30;
    }

    v16 = v18;
    if (Subtype == 4)
    {
      v12 = v63;
      if (v23 == 4)
      {
        v55 = *(a1 + 32);
        if (*(v55 + 538))
        {
          goto LABEL_76;
        }

        *(v55 + 537) = 0;
        *(*(a1 + 32) + 538) = 1;
        *(*(a1 + 32) + 576) = 0;
        v56 = *(a1 + 32);
        v57 = *(v56 + 304);
        *(v56 + 304) = @"Receiver";

        goto LABEL_30;
      }
    }

    else
    {
      v12 = v63;
    }
  }

  else
  {

    v4 = 0;
  }

LABEL_17:
  v28 = *(a1 + 32);
  v29 = *(v28 + 537);
  if (v29 == 1)
  {
    *(v28 + 537) = 0;
    v28 = *(a1 + 32);
  }

  if (*(v28 + 538) == 1)
  {
    *(v28 + 538) = 0;
    v28 = *(a1 + 32);
    v29 = 1;
  }

  if (*(v28 + 576) == 1)
  {
    *(v28 + 576) = 0;
    v30 = *(a1 + 32);
    v31 = *(v30 + 304);
    *(v30 + 304) = @"NA";
  }

  else
  {
    v32 = *(v28 + 304);
    *(v28 + 304) = @"NA";

    if (!v29)
    {
      goto LABEL_76;
    }
  }

LABEL_30:
  v37 = (a1 + 32);
  v36 = *(a1 + 32);
  if (*(v36 + 1016) == 1)
  {
    *(v36 + 1016) = 0;
    v36 = *v37;
  }

  if ((*(v36 + 537) & 1) == 0 && (v36[72] & 1) == 0 && *(v36 + 538) != 1)
  {
    goto LABEL_38;
  }

  if (dword_1002F6778 <= 30)
  {
    if (dword_1002F6778 != -1 || _LogCategory_Initialize())
    {
      sub_1001E6B84(v15);
    }

LABEL_38:
    if (dword_1002F6778 <= 30 && (dword_1002F6778 != -1 || _LogCategory_Initialize()))
    {
      sub_1001E6BC4(v16, v4, (a1 + 32));
    }
  }

  v38 = *v37;
  if (*(*v37 + 537) == 1)
  {
    if (*(v38 + 937) == 1 && *(v38 + 938) == 1)
    {
      [v38 _mediaRouteMonitorSpeakRoute];
      *(*v37 + 938) = 0;
      v38 = *v37;
    }

    v39 = [v38[196] objectForKeyedSubscript:v15];
    v40 = v39;
    if (v39 && [v39 connectionState] == 2)
    {
      if (([v40 routed] & 1) == 0)
      {
        if (dword_1002F6778 <= 30 && (dword_1002F6778 != -1 || _LogCategory_Initialize()))
        {
          sub_1001E6C5C(v40, v15);
        }

        [v40 _setRouted:1];
      }

      v41 = (*v37)[196];
      v69[0] = _NSConcreteStackBlock;
      v69[1] = 3221225472;
      v69[2] = sub_10004FC0C;
      v69[3] = &unk_1002B8368;
      v70 = v15;
      [v41 enumerateKeysAndObjectsUsingBlock:v69];
    }

    else if (dword_1002F6778 <= 30 && (dword_1002F6778 != -1 || _LogCategory_Initialize()))
    {
      sub_1001E6CC0(v15);
    }

    v42 = (*v37)[155];
    v66[0] = _NSConcreteStackBlock;
    v66[1] = 3221225472;
    v66[2] = sub_10004FC80;
    v66[3] = &unk_1002B7FA8;
    v43 = v16;
    v44 = *v37;
    v67 = v43;
    v68 = v44;
    [v42 enumerateKeysAndObjectsUsingBlock:v66];
    v45 = (*v37)[65];
    if (v45)
    {
      v46 = v45;
      dispatch_source_cancel(v46);
      v47 = (*v37)[65];
      (*v37)[65] = 0;
    }
  }

  else
  {
    if (dword_1002F6778 <= 30 && (dword_1002F6778 != -1 || _LogCategory_Initialize()))
    {
      sub_1001E6B84(v15);
    }

    [(*v37)[196] enumerateKeysAndObjectsUsingBlock:&stru_1002B8388];
  }

  v48 = *v37;
  if (((*v37)[72] & 1) != 0 || *(v48 + 538) == 1)
  {
    if (*(v48 + 1001) == 1)
    {
      *(v48 + 1001) = 0;
      v48 = *v37;
    }

    v49 = v48[155];
    v64[0] = _NSConcreteStackBlock;
    v64[1] = 3221225472;
    v64[2] = sub_1000500B0;
    v64[3] = &unk_1002B83B0;
    v64[4] = v48;
    v65 = 1;
    [v49 enumerateKeysAndObjectsUsingBlock:v64];
    v50 = [(*v37)[157] audioDestination];
    if ([(*v37)[157] audioRoute] == 3)
    {
      if (v50)
      {
        v51 = [(*v37)[155] objectForKeyedSubscript:v50];

        if (v51)
        {
          if (dword_1002F6778 <= 30 && (dword_1002F6778 != -1 || _LogCategory_Initialize()))
          {
            sub_1001E6D00();
          }

          v52 = [(*v37)[155] objectForKeyedSubscript:v15];
          [v52 setIgnoreManualConnect:1];
        }
      }
    }

    [(*v37)[52] trigger];

    v48 = *v37;
  }

  [v48[84] systemRouteChangedTo:v48[38]];
LABEL_76:
  v53 = *(a1 + 32);
  if (v53[537])
  {
    v54 = 3;
  }

  else if (v53[576])
  {
    v54 = 1;
  }

  else if (v53[538])
  {
    v54 = 2;
  }

  else
  {
    v54 = 0;
  }

  [v53 _updateAudioRoute:v54 withUUID:v15];
}

void sub_10004FC0C(uint64_t a1, void *a2, void *a3)
{
  v5 = a3;
  if (([a2 isEqualToString:*(a1 + 32)] & 1) == 0 && objc_msgSend(v5, "connectionState") == 2)
  {
    [v5 _setRouted:0];
  }
}

void sub_10004FC80(uint64_t a1, void *a2, void *a3)
{
  v23 = a2;
  v5 = a3;
  v6 = [v5 deviceName];
  v7 = *(a1 + 32);
  if (v7)
  {
    v8 = v6 == 0;
  }

  else
  {
    v8 = 1;
  }

  if (v8 || ![v7 containsString:v6])
  {
    if (dword_1002F6778 <= 30 && (dword_1002F6778 != -1 || _LogCategory_Initialize()))
    {
      sub_1001E6D34(v23);
    }

    [v5 setRouted:0];
    if ([v5 routingAction] != 2)
    {
      if (dword_1002F6778 <= 30 && (dword_1002F6778 != -1 || _LogCategory_Initialize()))
      {
        sub_1001E6D74(v5);
      }

      [v5 setRoutingAction:3];
    }

    [v5 setIgnoreManualConnect:1];
    goto LABEL_28;
  }

  if ([v5 routed])
  {
    goto LABEL_28;
  }

  [v5 setRouted:1];
  v9 = [v5 otherTipiDeviceBTAddress];

  if (!v9 || [v5 routingAction] == 2)
  {
    goto LABEL_28;
  }

  v10 = [v5 otherTipiDeviceBTName];
  v11 = [v10 isEqualToString:@"Mac"];

  if ([v5 routingAction] == 1)
  {
    if ([v5 routingAction] == 1)
    {
      v12 = [*(a1 + 40) _isManualConnection:v23];
      if (v12)
      {
        if (dword_1002F6778 <= 30)
        {
          if (dword_1002F6778 != -1 || (v12 = _LogCategory_Initialize(), v12))
          {
            sub_1001E6E34(v12, v13, v14);
          }
        }

        v15 = [*(*(a1 + 40) + 224) objectForKeyedSubscript:v23];
        if (v15)
        {
          [*(a1 + 40) _sendIntendedRouteInfoUpdateToWx:v15 withIntendedRoutingStatus:1];
        }

LABEL_18:
        v16 = 1;
        goto LABEL_48;
      }

      if (((*(*(a1 + 40) + 520) != 0) & v11) == 1)
      {
        if (dword_1002F6778 > 30)
        {
          goto LABEL_59;
        }

        if (dword_1002F6778 != -1 || (v12 = _LogCategory_Initialize(), v12))
        {
          sub_1001E6E18(v12, v13, v14);
        }

        goto LABEL_18;
      }
    }

    v16 = 0;
    goto LABEL_48;
  }

  if (dword_1002F6778 <= 30 && (dword_1002F6778 != -1 || _LogCategory_Initialize()))
  {
    sub_1001E6DD8(v23);
  }

  [v5 setRoutingAction:1];
  v17 = *(a1 + 40);
  if (*(v17 + 1001) == 1)
  {
    v16 = 0;
    *(v17 + 1001) = 0;
  }

  else
  {
    v18 = [v5 deviceVersion];
    v19 = [v5 otherTipiDeviceVersion];
    [v19 doubleValue];
    if (v20 >= 1.2)
    {
      v16 = ([@"3E725" compare:v18 options:64] == 1) | v11;
    }

    else
    {
      v16 = 1;
    }
  }

LABEL_48:
  if (dword_1002F6778 > 30 || dword_1002F6778 == -1 && !_LogCategory_Initialize())
  {
    if ((v16 & 1) == 0)
    {
      goto LABEL_28;
    }

    goto LABEL_59;
  }

  v21 = "no";
  if (v16)
  {
    v22 = "yes";
  }

  else
  {
    v22 = "no";
  }

  if (v11)
  {
    v21 = "yes";
  }

  LogPrintF(&dword_1002F6778, "[BTSmartRoutingDaemon _mediaRouteMonitorActiveAudioRouteChanged:]_block_invoke_3", 30, "Legacy routing behavior = %s is other side mac = %s", v22, v21);
  if (v16)
  {
LABEL_59:
    [*(a1 + 40) _relayConduitMessageSend:1 withOptions:&off_1002CBD10 andWxAddress:v23 andOtherAddress:0];
  }

LABEL_28:
}

void sub_100050064(id a1, NSString *a2, SRDiscoveredDevice *a3, BOOL *a4)
{
  v4 = a3;
  if ([(SRDiscoveredDevice *)v4 routed])
  {
    [(SRDiscoveredDevice *)v4 _setRouted:0];
  }
}

void sub_1000500B0(uint64_t a1, void *a2, void *a3)
{
  v14 = a2;
  v5 = a3;
  v6 = *(*(a1 + 32) + 400);
  if (v6)
  {
    v7 = [v6 bleDevice];
    v8 = [v7 bluetoothAddress];

    if ([v8 length] == 6)
    {
      v9 = NSPrintF("%.6a", COERCE_DOUBLE([v8 bytes]));
      v10 = v9;
      if (v9 && ([v9 isEqualToString:v14] & 1) != 0)
      {

        goto LABEL_22;
      }
    }

    else
    {
      v10 = 0;
    }
  }

  if (dword_1002F6778 <= 30 && (dword_1002F6778 != -1 || _LogCategory_Initialize()))
  {
    sub_1001E6E50(v14);
  }

  [v5 setRouted:0];
  v11 = 0;
  if ([v5 routingAction] == 1)
  {
    v12 = [v5 otherTipiDeviceBTAddress];
    v11 = v12 == 0;
  }

  if ([v5 routingAction] != 2 && !v11)
  {
    if (dword_1002F6778 <= 30 && (dword_1002F6778 != -1 || _LogCategory_Initialize()))
    {
      sub_1001E6E90(v14);
    }

    [v5 setRoutingAction:3];
  }

  v13 = *(a1 + 32);
  if (v13[143] && *(a1 + 40) == 1)
  {
    [v13 _setConnectedBannerTick:0];
  }

LABEL_22:
}

void sub_100050408(uint64_t a1, void *a2)
{
  v3 = a2;
  if (dword_1002F6778 <= 90 && (dword_1002F6778 != -1 || _LogCategory_Initialize()))
  {
    sub_1001E6EEC(v3);
  }

  [*(a1 + 32) invalidate];
}

void sub_100050500(uint64_t a1)
{
  v2 = +[AVSystemController sharedAVSystemController];
  v3 = [v2 attributeForKey:AVSystemController_PlayingSessionsDescriptionAttribute];

  v4 = [v3 count] != 0;
  v5 = *(a1 + 32);
  v6 = *(v5 + 368);
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_1000505D0;
  v7[3] = &unk_1002B67F0;
  v7[4] = v5;
  v8 = v4;
  dispatch_async(v6, v7);
}

id sub_1000505D0(uint64_t a1)
{
  v1 = (a1 + 32);
  *(*(a1 + 32) + 88) = *(a1 + 40);
  if (dword_1002F6778 <= 30 && (dword_1002F6778 != -1 || _LogCategory_Initialize()))
  {
    sub_1001E6F2C();
  }

  [*v1 _nearbyInfoActivityChanged];
  v2 = *v1;
  v3 = *(*v1 + 155);
  v5[0] = _NSConcreteStackBlock;
  v5[1] = 3221225472;
  v5[2] = sub_10005069C;
  v5[3] = &unk_1002B8168;
  v5[4] = v2;
  return [v3 enumerateKeysAndObjectsUsingBlock:v5];
}

void sub_1000517E8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, ...)
{
  va_start(va, a22);
  _Block_object_dispose(va, 8);
  _Block_object_dispose((v22 - 128), 8);
  _Unwind_Resume(a1);
}

void sub_100051828(uint64_t a1)
{
  v2 = +[AVSystemController sharedAVSystemController];
  v3 = *(a1 + 72);
  v4 = *(a1 + 32);
  v5 = *(*(a1 + 64) + 8);
  v14 = *(v5 + 40);
  v6 = [v2 shouldClientWithAudioScore:v3 hijackRoute:v4 hijackDeniedReason:&v14];
  objc_storeStrong((v5 + 40), v14);
  *(*(*(a1 + 56) + 8) + 24) = v6;

  v7 = *(a1 + 40);
  v8 = *(v7 + 368);
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_100051940;
  block[3] = &unk_1002B83D8;
  block[4] = v7;
  v13 = *(a1 + 72);
  v10 = *(a1 + 32);
  v11 = *(a1 + 48);
  v12 = *(a1 + 56);
  dispatch_async(v8, block);
}

void sub_1000519DC(uint64_t a1, void *a2, void *a3)
{
  v13 = a2;
  v5 = a3;
  if ([v5 routingAction] == 3)
  {
    if (dword_1002F6778 <= 30 && (dword_1002F6778 != -1 || _LogCategory_Initialize()))
    {
      sub_1001E717C(v13);
    }

    [v5 setRoutingAction:1];
  }

  v6 = [v5 otherTipiDeviceBTAddress];

  if (v6)
  {
    if (dword_1002F6778 <= 30 && (dword_1002F6778 != -1 || _LogCategory_Initialize()))
    {
      sub_1001E71BC(v13);
    }

    [v5 setOtherTipiManuallyRouteTicks:0];
    v7 = *(a1 + 32);
    v8 = [v5 otherTipiDeviceBTAddress];
    [v7 _relayConduitMessageSend:1 withOptions:&off_1002CBD38 andWxAddress:v13 andOtherAddress:v8];
  }

  else
  {
    v9 = v13;
    v10 = [*(*(a1 + 32) + 184) activeCallCount];
    v11 = @"-tacl";
    if (v10 > 0)
    {
      v11 = @"-tsco";
    }

    v8 = [NSString stringWithFormat:@"%@%@", v9, v11];

    v12 = *(a1 + 32);
    if (v12[1265] == 1)
    {
      [v12 _smartRoutingAddRoute:v8];
    }

    else
    {
      [v12 _smartRoutingChangeRoute:v8];
    }
  }
}

void *sub_100051E98(uint64_t a1, uint64_t a2)
{
  result = *(a1 + 32);
  if (result[81] == *(a1 + 40))
  {
    return [result _nearbyInfoDeviceFound:a2];
  }

  return result;
}

void *sub_100051EBC(uint64_t a1, uint64_t a2)
{
  result = *(a1 + 32);
  if (result[81] == *(a1 + 40))
  {
    return [result _nearbyInfoDeviceLost:a2];
  }

  return result;
}

void *sub_100051EE0(uint64_t a1, uint64_t a2)
{
  result = *(a1 + 32);
  if (result[81] == *(a1 + 40))
  {
    return [result _nearbyInfoDeviceFound:a2];
  }

  return result;
}

void sub_100051F04(uint64_t a1, void *a2)
{
  v3 = a2;
  if (v3 && *(*(a1 + 32) + 648) == *(a1 + 40))
  {
    v6 = v3;
    if (dword_1002F6778 <= 90 && (dword_1002F6778 != -1 || _LogCategory_Initialize()))
    {
      sub_1001E7218(v6);
    }

    [*(a1 + 40) invalidate];
    v4 = *(a1 + 32);
    v5 = *(v4 + 648);
    *(v4 + 648) = 0;

    v3 = v6;
  }
}

void *sub_100051FAC(void *result, uint64_t a2, uint64_t a3)
{
  v3 = result;
  if (dword_1002F6778 <= 30)
  {
    if (dword_1002F6778 != -1 || (result = _LogCategory_Initialize(), result))
    {
      result = sub_1001E7258(result, a2, a3);
    }
  }

  v4 = v3[4];
  v5 = *(v3[5] + 880);
  if (v4 == v5)
  {
    if (v4)
    {
      v6 = v5;
      dispatch_source_cancel(v6);
      v7 = v3[5];
      v8 = *(v7 + 880);
      *(v7 + 880) = 0;
    }

    v9 = *(v3[5] + 416);

    return [v9 trigger];
  }

  return result;
}

id sub_100052484(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = a1;
  if (dword_1002F6778 <= 90)
  {
    if (dword_1002F6778 != -1 || (a1 = _LogCategory_Initialize(), a1))
    {
      sub_1001E734C(a1, a2, a3);
    }
  }

  [*(v3 + 32) _checkStemClickResponse];
  v4 = *(v3 + 32);

  return [v4 _cancelStemClickResumeTimer];
}

id sub_1000526E8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = a1;
  if (dword_1002F6778 <= 90)
  {
    if (dword_1002F6778 != -1 || (a1 = _LogCategory_Initialize(), a1))
    {
      sub_1001E73E4(a1, a2, a3);
    }
  }

  [*(v3 + 32) _cancelStemClickTransaction];
  v4 = *(*(v3 + 32) + 1288);

  return [v4 setStemClicksInTransaction:0];
}

void sub_100052964(uint64_t a1, uint64_t a2, void *a3, _BYTE *a4)
{
  v11 = a3;
  v6 = [v11 model];
  if ([v6 containsString:@"Mac"])
  {
    goto LABEL_6;
  }

  v7 = [v11 model];
  if ([v7 hasPrefix:@"iPhone"])
  {
LABEL_5:

LABEL_6:
LABEL_7:
    *(*(*(a1 + 32) + 8) + 24) = 1;
    *a4 = 1;
    goto LABEL_8;
  }

  v8 = [v11 model];
  if ([v8 hasPrefix:@"iPad"])
  {

    goto LABEL_5;
  }

  v9 = [v11 model];
  v10 = [v9 hasPrefix:@"iPod"];

  if (v10)
  {
    goto LABEL_7;
  }

LABEL_8:
}

void sub_100052C84(uint64_t a1, void *a2)
{
  v3 = a2;
  if (dword_1002F6778 <= 30 && (dword_1002F6778 != -1 || _LogCategory_Initialize()))
  {
    LogPrintF(&dword_1002F6778, "[BTSmartRoutingDaemon _connectToHeadphoneWithAddress:]_block_invoke", 30, "Evaluator: connect complete with address %@ result %@", *(a1 + 32), v3);
  }

  [*(a1 + 40) invalidate];
}

uint64_t sub_100052E18(uint64_t a1, void *a2)
{
  v6 = a2;
  v3 = [*(a1 + 32) invalidate];
  v4 = v6;
  if (v6)
  {
    if (dword_1002F6778 <= 90)
    {
      if (dword_1002F6778 != -1 || (v3 = _LogCategory_Initialize(), v4 = v6, v3))
      {
        v3 = sub_1001E74BC(a1, v6);
        v4 = v6;
      }
    }
  }

  return _objc_release_x1(v3, v4);
}

id sub_100053400(uint64_t a1, uint64_t a2, void *a3)
{
  result = [a3 routed];
  if (result && *(a1 + 48) == 1)
  {
    if (dword_1002F6778 <= 30)
    {
      if (dword_1002F6778 != -1 || (result = _LogCategory_Initialize(), result))
      {
        result = sub_1001E7504(a1);
      }
    }

    *(*(*(a1 + 40) + 8) + 24) = 6;
  }

  return result;
}

void *sub_1000535E0(void *result)
{
  v2 = result[5];
  if (result[4] == *(v2 + 56))
  {
    v3 = result;
    if (dword_1002F6778 <= 30)
    {
      if (dword_1002F6778 != -1 || (v5 = _LogCategory_Initialize(), v2 = v3[5], v5))
      {
        if (*(v2 + 1104))
        {
          v4 = "yes";
        }

        else
        {
          v4 = "no";
        }

        LogPrintF(&dword_1002F6778, "[BTSmartRoutingDaemon _nearbyInfoActivityCriticalStart]_block_invoke", 30, "Activity critical timer ended. Screen %s", v4);
        v2 = v3[5];
      }
    }

    v6 = *(v2 + 56);
    if (v6)
    {
      v7 = v6;
      dispatch_source_cancel(v7);
      v8 = v3[5];
      v9 = *(v8 + 56);
      *(v8 + 56) = 0;
    }

    v10 = v3[5];

    return [v10 _nearbyInfoActivityChanged];
  }

  return result;
}

void sub_1000536D0(uint64_t a1, void *a2)
{
  v3 = a2;
  if (*(*(a1 + 32) + 752) == *(a1 + 40))
  {
    v4 = v3;
    if (dword_1002F6778 <= 30 && (dword_1002F6778 != -1 || _LogCategory_Initialize()))
    {
      sub_1001E7628(v4);
    }

    [*(a1 + 32) _anyPairedDeviceSupportsSmartRouting];
    [*(a1 + 32) _updateSRDiscoveredDeviceForCBDiscoveryChanged];
    [*(a1 + 32) _updateUSBDeviceForPairStateChange:v4 paired:1];
    [*(a1 + 32) _updateSRDiscoveredDeviceForPairStateChange:v4 isPaired:1];
    v3 = v4;
  }
}

void sub_10005378C(uint64_t a1, void *a2)
{
  v3 = a2;
  if (*(*(a1 + 32) + 752) == *(a1 + 40))
  {
    v4 = v3;
    if (dword_1002F6778 <= 30 && (dword_1002F6778 != -1 || _LogCategory_Initialize()))
    {
      sub_1001E7668(v4);
    }

    [*(a1 + 32) _anyPairedDeviceSupportsSmartRouting];
    [*(a1 + 32) _updateSRDiscoveredDeviceForCBDiscoveryChanged];
    [*(a1 + 32) _updateUSBDeviceForPairStateChange:v4 paired:0];
    [*(a1 + 32) _updateSRDiscoveredDeviceForPairStateChange:v4 isPaired:0];
    v3 = v4;
  }
}

uint64_t sub_100053848(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = *(a1 + 32);
  if (v4[94] == *(a1 + 40))
  {
    v8 = v3;
    if (v3)
    {
      if (dword_1002F6778 <= 90 && (dword_1002F6778 != -1 || _LogCategory_Initialize()))
      {
        sub_1001E76A8(v8);
      }

      [*(a1 + 40) invalidate];
      v5 = *(a1 + 32);
      v6 = *(v5 + 752);
      *(v5 + 752) = 0;
    }

    else
    {
      [v4 _anyPairedDeviceSupportsSmartRouting];
      v4 = [*(a1 + 32) _update];
    }

    v3 = v8;
  }

  return _objc_release_x1(v4, v3);
}

id sub_100053B38(uint64_t a1)
{
  v3 = (a1 + 40);
  v2 = *(a1 + 40);
  result = *(a1 + 32);
  if (result == *(v2 + 744))
  {
    *(*v3 + 552) = [result primaryAppleIDIsHSA2];
    if (dword_1002F6778 <= 30 && (dword_1002F6778 != -1 || _LogCategory_Initialize()))
    {
      sub_1001E7794();
    }

    [*v3 _prefsChanged];
    if ((*(*v3 + 385) & 1) == 0 && [*(a1 + 32) firstUnlocked] && !*(*v3 + 49))
    {
      [*v3 _startEffectiveUnlockedAfterBootTimer:2];
    }

    if (*(*(a1 + 40) + 1105) != [*(a1 + 32) screenLocked])
    {
      *(*(a1 + 40) + 1105) = [*(a1 + 32) screenLocked];
      if (dword_1002F6778 <= 30 && (dword_1002F6778 != -1 || _LogCategory_Initialize()))
      {
        sub_1001E77EC();
      }

      v5 = +[SRConnectionManager sharedSRConnectionManager];
      [v5 screenLockStateChanged:*(*v3 + 1105)];
    }

    v6 = [*(a1 + 32) screenActive];
    v7 = *(a1 + 40);
    if (v7[1104] == v6)
    {

      return [v7 _update];
    }

    else
    {
      *(*(a1 + 40) + 1104) = [*(a1 + 32) screenActive];
      v8 = *(a1 + 40);
      if (*(v8 + 1104) == 1)
      {
        v9 = [*(v8 + 184) callCountIncomingUnconnected];
        if (v9 >= 1)
        {
          if (dword_1002F6778 <= 30)
          {
            if (dword_1002F6778 != -1 || (v9 = _LogCategory_Initialize(), v9))
            {
              sub_1001E78AC(v9, v10, v11);
            }
          }

          [*v3 _iPhoneScreenOnPowerEvent];
        }
      }

      else
      {
        v12 = *(v8 + 1440);
        if (v12)
        {
          [v12 invalidate];
          v13 = *(*v3 + 180);
          *(*v3 + 180) = 0;
        }

        if (dword_1002F6778 <= 30 && (dword_1002F6778 != -1 || _LogCategory_Initialize()))
        {
          sub_1001E7844(v3);
        }

        v14 = *(*v3 + 59);
        if (v14)
        {
          v15 = v14;
          dispatch_source_cancel(v15);
          v16 = *(*v3 + 59);
          *(*v3 + 59) = 0;
        }

        if (*(*v3 + 64) == 10)
        {
          [*v3 _nearbyInfoActivityChanged];
        }
      }

      v17 = *v3;
      if (*(*v3 + 1104))
      {

        return [v17 _startAudioStateSnapshotTimer];
      }

      else
      {

        return [v17 _stopAudioStateSnapshotTimer:1];
      }
    }
  }

  return result;
}

id sub_100054044(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = a1;
  if (dword_1002F6778 <= 30)
  {
    if (dword_1002F6778 != -1 || (a1 = _LogCategory_Initialize(), a1))
    {
      sub_1001E7944(a1, a2, a3);
    }
  }

  v4 = *(v3 + 32);
  if (*(v4 + 712) == 1)
  {
    [v4 _sendNowPlayingTemporaryOverrideIfNeeded:0];
    v4 = *(v3 + 32);
  }

  v5 = *(v4 + 1112);
  if (v5)
  {
    v6 = v5;
    dispatch_source_cancel(v6);
    v7 = *(v3 + 32);
    v8 = *(v7 + 1112);
    *(v7 + 1112) = 0;
  }

  v9 = *(v3 + 32);

  return [v9 _update];
}

void sub_1000542C4(uint64_t a1, void *a2, void *a3, uint64_t a4, void *a5)
{
  v12 = a2;
  v9 = a3;
  v10 = a5;
  if (dword_1002F6778 <= 30 && (dword_1002F6778 != -1 || _LogCategory_Initialize()))
  {
    v11 = "?";
    if (a4 == 1)
    {
      v11 = "AudioArbitration";
    }

    if (!a4)
    {
      v11 = "Invalid";
    }

    LogPrintF(&dword_1002F6778, "[BTSmartRoutingDaemon _relayConduitMessageEnsureStarted]_block_invoke", 30, "Relay message received: conduit %@, source %@, type %s, data %@\n", v12, v9, v11, v10);
  }

  [*(a1 + 32) _relayConduitMessageReceived:v12 andSourceDevice:v9 messageType:a4 messageData:v10];
}

void sub_1000543DC(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = v3;
  v6 = *(a1 + 32);
  v5 = (a1 + 32);
  if (*(v6 + 923) == 1)
  {
    v7 = [v3 btAddressData];
    v8 = CUPrintNSDataAddress();

    v9 = [*(*v5 + 155) objectForKeyedSubscript:v8];
    v10 = v9;
    if (!v9)
    {
LABEL_87:

      goto LABEL_88;
    }

    v58 = v9;
    v54 = v5;
    v63 = [*v5 _myBluetoothAddressString];
    v66 = 0u;
    v67 = 0u;
    v68 = 0u;
    v69 = 0u;
    v55 = v4;
    obj = [v4 tipiDevices];
    v64 = [obj countByEnumeratingWithState:&v66 objects:v71 count:16];
    if (v64)
    {
      v56 = v8;
      v57 = 0;
      v65 = 0;
      v62 = *v67;
      do
      {
        for (i = 0; i != v64; i = i + 1)
        {
          if (*v67 != v62)
          {
            objc_enumerationMutation(obj);
          }

          v12 = *(*(&v66 + 1) + 8 * i);
          v13 = [v12 btAddressData];
          v14 = CUPrintNSDataAddress();

          v15 = [v12 tipiState];
          v16 = [v12 tipiState];
          v17 = [v12 tipiState];
          v18 = [v63 isEqual:v14];
          v19 = [v12 tipiState];
          v20 = [v12 tipiState];
          if (dword_1002F6778 <= 30 && (dword_1002F6778 != -1 || _LogCategory_Initialize()))
          {
            v21 = [v12 tipiConnectionStatus];
            v22 = "?";
            if (v21 <= 3)
            {
              v22 = off_1002B8B78[v21];
            }

            v60 = v22;
            v23 = [v12 model];
            v24 = [v12 tipiState];
            v25 = "no";
            if (v18)
            {
              v26 = "yes";
            }

            else
            {
              v26 = "no";
            }

            if ((v17 & 4) != 0)
            {
              v27 = "yes";
            }

            else
            {
              v27 = "no";
            }

            if ((v16 & 2) != 0)
            {
              v28 = "yes";
            }

            else
            {
              v28 = "no";
            }

            if (v15)
            {
              v29 = "yes";
            }

            else
            {
              v29 = "no";
            }

            if ((v19 & 8) != 0)
            {
              v30 = "yes";
            }

            else
            {
              v30 = "no";
            }

            if ((v20 & 0x10) != 0)
            {
              v25 = "yes";
            }

            LogPrintF(&dword_1002F6778, "[BTSmartRoutingDaemon _relayConduitMessageEnsureStarted]_block_invoke_3", 30, "TipiTableEvent: Wx %@ TipiDevice %@ Conn %s model %@ Flag %u IsMe %s LastPlay %s Ownership %s TipiState %s usb %s VT enabled %s", v56, v14, v60, v23, v24, v26, v27, v28, v29, v30, v25);

            v8 = v56;
          }

          if ([v12 tipiConnectionStatus] == 2)
          {
            if (v18)
            {
              [v58 setLastPlay:(v17 >> 2) & 1];
              [v58 setHasOwnership:(v16 >> 1) & 1];
            }

            else
            {
              v61 = v17;
              v31 = v14;

              [v58 setOtherTipiDeviceSiriEnablement:(v20 >> 4) & 1];
              v32 = [v58 otherTipiDeviceBTAddress];
              if (!v32 || (v33 = v32, [v58 otherTipiDeviceBTAddress], v34 = objc_claimAutoreleasedReturnValue(), v35 = objc_msgSend(v34, "isEqualToString:", v31), v34, v33, v35))
              {
                [v58 setOtherTipiDeviceLastPlay:(v61 >> 2) & 1];
              }

              v57 = v31;
            }
          }

          if ([v12 tipiConnectionStatus] == 2 || objc_msgSend(v12, "tipiConnectionStatus") == 1)
          {
            ++v65;
          }
        }

        v64 = [obj countByEnumeratingWithState:&v66 objects:v71 count:16];
      }

      while (v64);
    }

    else
    {
      v57 = 0;
      v65 = 0;
    }

    if ([*v54 _isReceivedLegacyTipiConnect:v8])
    {
      v4 = v55;
      v36 = v57;
      v10 = v58;
      if (dword_1002F6778 <= 30 && (dword_1002F6778 != -1 || _LogCategory_Initialize()))
      {
        sub_1001E7AF0(v8);
      }

      goto LABEL_86;
    }

    v37 = [*(*v54 + 156) objectForKeyedSubscript:v8];

    v10 = v58;
    if (!v37)
    {
      v38 = objc_alloc_init(SRStatsWx);
      [*(*v54 + 156) setObject:v38 forKeyedSubscript:v8];
    }

    v39 = [*(*v54 + 156) objectForKeyedSubscript:v8];
    v40 = [v39 thV2WxCount];
    v36 = v57;
    if (v65 < 2u)
    {
      v4 = v55;
    }

    else
    {
      v4 = v55;
      if (v40 != v65)
      {
        v41 = [v58 otherTipiDeviceBTAddress];
        v42 = [v41 isEqualToString:v57];

        if (v42)
        {
          goto LABEL_61;
        }

        v43 = mach_absolute_time();
        v44 = [*(*v54 + 156) objectForKeyedSubscript:v8];
        [v44 setThV2Ticks:v43];

        if (dword_1002F6778 > 30 || dword_1002F6778 == -1 && !_LogCategory_Initialize())
        {
          goto LABEL_61;
        }

        sub_1001E7994();
        v39 = v70;
      }
    }

LABEL_61:
    v45 = [*(*v54 + 156) objectForKeyedSubscript:v8];
    [v45 setThV2WxCount:v65];

    if (v57)
    {
      [v58 isRoutingActionInitialized];
      v46 = [v58 otherTipiDeviceBTAddress];
      v47 = [v46 isEqualToString:v57];

      if ((v47 & 1) == 0)
      {
        if (dword_1002F6778 <= 30 && (dword_1002F6778 != -1 || _LogCategory_Initialize()))
        {
          sub_1001E7A2C(v58, v57);
        }

        [*v54 _tipiHealing:v8 withDevice:v57];
      }
    }

    else
    {
      if ((*(*v54 + 1536) & 1) == 0)
      {
        v48 = [v58 otherTipiDeviceBTAddress];
        if (v48)
        {
          v49 = v48;
          v50 = [v58 otherTipiDeviceVersion];

          if (v50)
          {
            if (dword_1002F6778 <= 30 && (dword_1002F6778 != -1 || _LogCategory_Initialize()))
            {
              sub_1001E7A88();
            }

            [*v54 _removeTiPiState:v8];
            goto LABEL_86;
          }
        }
      }

      if (([v58 isRoutingActionInitialized] & 1) == 0 && (*(*v54 + 1536) & 1) == 0)
      {
        if (dword_1002F6778 <= 30 && (dword_1002F6778 != -1 || _LogCategory_Initialize()))
        {
          sub_1001E7ABC();
        }

        if (*(*v54 + 761))
        {
          v51 = 1;
        }

        else
        {
          v51 = 2;
        }

        [v58 setRoutingAction:v51];
        if ([*(*v54 + 174) isEqualToString:v8])
        {
          v52 = *(*v54 + 174);
          *(*v54 + 174) = 0;
        }

        v53 = [*(*v54 + 196) objectForKeyedSubscript:v8];
        [v53 _setUserConnectedState:0];

        [v58 setIsRoutingActionInitialized:1];
        [*v54 _tipiHealingCompleteCheckTimerForDevice:v58];
        [*v54 _postNotification:"com.apple.BluetoothServices.AudioRoutingChanged"];
      }
    }

    [*v54 _updateOtherTipiBuildVersion:v8];
LABEL_86:

    goto LABEL_87;
  }

LABEL_88:
}

uint64_t sub_100054B60(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = v3;
  if (v3)
  {
    v6 = v3;
    if (dword_1002F6778 <= 90 && (dword_1002F6778 != -1 || _LogCategory_Initialize()))
    {
      sub_1001E7B30(v6);
    }

    v3 = [*(a1 + 32) invalidate];
    goto LABEL_6;
  }

  if (dword_1002F6778 <= 30)
  {
    v6 = 0;
    if (dword_1002F6778 != -1 || (v3 = _LogCategory_Initialize(), v4 = 0, v3))
    {
      v3 = sub_1001E7B70(a1);
LABEL_6:
      v4 = v6;
    }
  }

  return _objc_release_x1(v3, v4);
}

void sub_100054F3C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, ...)
{
  va_start(va, a25);
  _Block_object_dispose(&a20, 8);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_100054F60(void *a1, void *a2, void *a3, _BYTE *a4)
{
  v17 = a2;
  v7 = a3;
  if ([v17 isEqualToString:a1[4]])
  {
    if (!*(*(a1[7] + 8) + 40))
    {
      v8 = objc_alloc_init(CBDevice);
      v9 = *(a1[7] + 8);
      v10 = *(v9 + 40);
      *(v9 + 40) = v8;
    }

    v11 = a1 + 8;
    if (!*(*(a1[8] + 8) + 40))
    {
      v12 = objc_alloc_init(CBDevice);
      v13 = *(*v11 + 8);
      v14 = *(v13 + 40);
      *(v13 + 40) = v12;
    }

    v15 = [v7 conduitDeviceID];
    [*(*(a1[7] + 8) + 40) setIdentifier:v15];

    if (a1[5])
    {
      [*(*(*v11 + 8) + 40) setIdentifier:?];
    }

    else
    {
      v16 = [v7 otherTipiDeviceBTAddress];
      [*(*(*v11 + 8) + 40) setIdentifier:v16];
    }

    if (dword_1002F6778 <= 90 && (dword_1002F6778 != -1 || _LogCategory_Initialize()))
    {
      sub_1001E7C54(v7, (a1 + 8), a1, v17);
    }

    *a4 = 1;
  }
}

void sub_1000550F4(id a1, NSError *a2)
{
  v2 = a2;
  v3 = v2;
  if (dword_1002F6778 <= 90)
  {
    v4 = v2;
    if (dword_1002F6778 != -1 || (v2 = _LogCategory_Initialize(), v3 = v4, v2))
    {
      v2 = sub_1001E7CF8(v3);
      v3 = v4;
    }
  }

  _objc_release_x1(v2, v3);
}

void sub_10005606C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, ...)
{
  va_start(va, a33);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_100056090(uint64_t a1, void *a2, void *a3, _BYTE *a4)
{
  v34 = a2;
  v7 = a3;
  if (![v34 containsString:*(a1 + 32)])
  {
    goto LABEL_48;
  }

  v8 = [v7 audioRoutingClientID];
  if (v8 != [*(a1 + 40) unsignedIntValue])
  {
    goto LABEL_48;
  }

  v9 = [v7 conduitMessageTimer];
  v10 = v9;
  if (v9)
  {
    dispatch_source_cancel(v9);
  }

  [v7 setConduitMessageTimer:0];
  mach_absolute_time();
  [v7 conduitMessageTicks];
  v11 = UpTicksToMilliseconds();
  if (dword_1002F6778 <= 30)
  {
    v12 = v11;
    if (dword_1002F6778 != -1 || _LogCategory_Initialize())
    {
      sub_1001E7FE8(v12);
    }
  }

  [v7 setConduitMessageTicks:0];
  v13 = objc_alloc_init(BTAudioRoutingResponse);
  v14 = [*(a1 + 48) objectForKey:@"audioRoutingHijackAnswer"];
  v15 = [v14 intValue];
  v18 = v15;
  if (v15 > 2)
  {
    if (v15 == 3)
    {
      if (dword_1002F6778 <= 30)
      {
        if (dword_1002F6778 != -1 || (v15 = _LogCategory_Initialize(), v15))
        {
          sub_1001E8060(v15, v16, v17);
        }
      }

      [v13 setAction:3];
      [v13 setDeviceAddress:0];
      v19 = @"Tipi device hijack was rejected";
      goto LABEL_29;
    }

    if (v15 == 4)
    {
      if (dword_1002F6778 <= 30)
      {
        if (dword_1002F6778 != -1 || (v15 = _LogCategory_Initialize(), v15))
        {
          sub_1001E8028(v15, v16, v17);
        }
      }

      [v13 setAction:4];
      [v13 setDeviceAddress:*(a1 + 32)];
      v19 = @"Tipi device hijack was backed off";
      goto LABEL_29;
    }
  }

  else
  {
    if (v15 == 1)
    {
      v20 = mach_absolute_time();
      *(*(a1 + 56) + 488) = v20;
      if (dword_1002F6778 <= 30)
      {
        if (dword_1002F6778 != -1 || (v20 = _LogCategory_Initialize(), v20))
        {
          sub_1001E807C(v20, v21, v22);
        }
      }

      [v13 setAction:1];
      [v13 setDeviceAddress:*(a1 + 32)];
      [v13 setReason:@"Tipi device hijack was successful"];
      *(*(a1 + 56) + 160) = mach_absolute_time();
      goto LABEL_30;
    }

    if (v15 == 2)
    {
      if (dword_1002F6778 <= 30)
      {
        if (dword_1002F6778 != -1 || (v15 = _LogCategory_Initialize(), v15))
        {
          sub_1001E8044(v15, v16, v17);
        }
      }

      [v13 setAction:3];
      [v13 setDeviceAddress:0];
      v19 = @"Tipi device hijack was ambigious";
LABEL_29:
      [v13 setReason:v19];
    }
  }

LABEL_30:
  v23 = [v7 audioRoutingResponse];

  if (v23)
  {
    v24 = *(a1 + 56);
    v25 = [v7 audioRoutingResponse];
    [v24 _respondRoutingRequest:v13 withResponseHandler:v25 wxAddress:v34];
  }

  if (v18 == 1)
  {
    mach_absolute_time();
    v26 = UpTicksToSeconds();
    if (dword_1002F6778 <= 30 && (dword_1002F6778 != -1 || _LogCategory_Initialize()))
    {
      sub_1001E8098(v7, v26);
    }

    if (([v7 routed] & 1) != 0 || (v27 = *(a1 + 56), *(v27 + 1144)) && *(v27 + 1128) > v26)
    {
      if (dword_1002F6778 <= 30 && (dword_1002F6778 != -1 || _LogCategory_Initialize()))
      {
        sub_1001E80FC(v7, v26);
      }
    }

    else
    {
      v28 = [v7 deviceName];
      v29 = [v7 deviceAddress];
      v32 = v10;
      v30 = v29;
      if (v29)
      {
        v31 = v29;
      }

      else
      {
        v31 = @"?";
      }

      [v27 _smartRoutingShowBanner:1 withDevice:v28 andDeviceAddress:v31 andProductID:objc_msgSend(v7 andCentralContentItemTxt:"productID" andTimeout:v32) andDeviceType:{@"Connected", 0, 4.0}];

      v10 = v33;
    }
  }

  [*(a1 + 56) _startHijackMetricSubmission:v18 wxAddress:v34 version:@"V1"];
  *a4 = 1;

LABEL_48:
}

void sub_100056520(uint64_t a1, void *a2, void *a3)
{
  v21 = a3;
  if ([a2 isEqualToString:*(a1 + 32)])
  {
    v5 = [*(*(a1 + 40) + 1240) objectForKeyedSubscript:*(a1 + 32)];
    v6 = [v5 otherTipiDeviceVersion];
    [v6 doubleValue];
    if (v7 < 1.2)
    {
    }

    else
    {
      v8 = [*(*(a1 + 40) + 1240) objectForKeyedSubscript:*(a1 + 32)];
      v9 = [v8 otherTipiDeviceVersion];

      if (v9)
      {
        if (dword_1002F6778 <= 40)
        {
          if (dword_1002F6778 != -1 || (v10 = _LogCategory_Initialize(), v10))
          {
            v10 = sub_1001E8174(v10, v11, v12);
          }
        }

        v13 = *(a1 + 40);
        if (*(a1 + 56) == 1)
        {
          v14 = *(v13 + 537);
          v15 = dword_1002F6778;
          if (v14 == 1)
          {
            if (dword_1002F6778 <= 40)
            {
              if (dword_1002F6778 != -1 || (v10 = _LogCategory_Initialize(), v10))
              {
                sub_1001E81C8(v10, v11, v12);
              }
            }

LABEL_29:
            v17 = v21;
            v16 = 1;
LABEL_30:
            [v17 setRoutingAction:v16];
LABEL_31:
            *(*(*(a1 + 48) + 8) + 24) = 1;
            goto LABEL_32;
          }
        }

        else
        {
          v18 = [*(v13 + 1240) objectForKeyedSubscript:*(a1 + 32)];
          v19 = [v18 otherTipiDeviceBTName];
          v20 = [v19 isEqualToString:@"Mac"];

          v15 = dword_1002F6778;
          if (v20)
          {
            if (dword_1002F6778 <= 40)
            {
              if (dword_1002F6778 != -1 || (v10 = _LogCategory_Initialize(), v10))
              {
                sub_1001E8190(v10, v11, v12);
              }
            }

            [v21 setRoutingAction:3];
            [*(a1 + 40) _setOwnership:*(a1 + 32) withHijackRequest:0 withOwnership:0];
            goto LABEL_31;
          }
        }

        if (v15 <= 40)
        {
          if (v15 != -1 || (v10 = _LogCategory_Initialize(), v10))
          {
            sub_1001E81AC(v10, v11, v12);
          }
        }

        goto LABEL_29;
      }
    }

    if (dword_1002F6778 <= 40)
    {
      if (dword_1002F6778 != -1 || (v10 = _LogCategory_Initialize(), v10))
      {
        sub_1001E81E4(v10, v11, v12);
      }
    }

    if ([v21 routed])
    {
      v16 = 1;
    }

    else
    {
      v16 = 3;
    }

    v17 = v21;
    goto LABEL_30;
  }

LABEL_32:
}

void sub_10005679C(uint64_t a1, void *a2, void *a3)
{
  v16 = a3;
  if ([a2 isEqualToString:*(a1 + 32)])
  {
    v5 = [*(*(a1 + 40) + 224) objectForKeyedSubscript:*(a1 + 32)];
    v6 = [v5 audioStreamState];
    v7 = *(a1 + 40);
    if (v6 > 1)
    {
      if (*(v7 + 88))
      {
        v9 = [*(v7 + 184) activeCallCount];

        if (v9)
        {
          goto LABEL_10;
        }

LABEL_21:
        [v16 setRoutingAction:3];
LABEL_22:
        *(*(*(a1 + 48) + 8) + 24) = 1;
        goto LABEL_23;
      }
    }

    else
    {
      v8 = [*(v7 + 224) objectForKeyedSubscript:*(a1 + 32)];
      if ([v8 audioStreamState])
      {

LABEL_10:
        v12 = [v16 deviceVersion];
        v13 = [v16 otherTipiDeviceVersion];
        [v13 doubleValue];
        v15 = v14 < 1.2 || [@"3E725" compare:v12 options:64] == 1;

        if (dword_1002F6778 <= 30 && (dword_1002F6778 != -1 || _LogCategory_Initialize()))
        {
          sub_1001E8200();
        }

        [v16 setRoutingAction:1];
        if (v15)
        {
          [*(a1 + 40) _relayConduitMessageSend:1 withOptions:&off_1002CBD60 andWxAddress:*(a1 + 32) andOtherAddress:0];
        }

        goto LABEL_22;
      }

      v10 = *(a1 + 40);
      if (*(v10 + 88))
      {
        v11 = [*(v10 + 184) activeCallCount];

        if (v11)
        {
          goto LABEL_10;
        }

        goto LABEL_21;
      }
    }

    goto LABEL_21;
  }

LABEL_23:
}

void sub_100056B98(uint64_t a1, void *a2)
{
  v20 = a2;
  v3 = *(*(a1 + 32) + 1584);
  if (v20)
  {
    v4 = NSErrorF(NSOSStatusErrorDomain, 4294960596, "Tipi update failed: result %@", v20);
    v5 = v4 != 0;
    if (v4)
    {
      v6 = v3 == 0;
    }

    else
    {
      v6 = 1;
    }

    if (v6)
    {
      if (!v3)
      {
        goto LABEL_23;
      }
    }

    else
    {
      v7 = [v3 wxAddress];
      v8 = *(a1 + 32);
      v9 = NSErrorF(NSOSStatusErrorDomain, 4294960596, "Tipi update failed: result %@", v20);
      [v8 _updateOtherTipiDevice:v7 otherAddress:0 otherName:0 otherVersion:0 withResult:v9];

      v5 = 1;
    }
  }

  else
  {
    v4 = 0;
    if (!v3)
    {
      goto LABEL_23;
    }

    v5 = 0;
  }

  [*(*(a1 + 32) + 1224) pipeRequestResponse:v3 error:v4];
  if (dword_1002F6778 <= 30 && (dword_1002F6778 != -1 || _LogCategory_Initialize()))
  {
    sub_1001E82E8(v3);
  }

  v10 = [v3 version];
  [v10 doubleValue];
  if (v11 < 1.2)
  {
  }

  else
  {
    v12 = [v3 version];

    if (v12)
    {
      goto LABEL_23;
    }
  }

  if (dword_1002F6778 <= 30)
  {
    if (dword_1002F6778 != -1 || (v13 = _LogCategory_Initialize(), v13))
    {
      sub_1001E8344(v13, v14, v15);
    }
  }

  v16 = *(*(a1 + 32) + 1224);
  v17 = [v3 wxAddress];
  [v16 pipeConnectionComplete:v4 andWxHeadset:v17 isSender:0];

  if (!v5)
  {
    v18 = *(a1 + 32);
    v19 = *(v18 + 1584);
    *(v18 + 1584) = 0;

    *(*(a1 + 32) + 1536) = 0;
    [*(a1 + 32) _startTipiSetupTicks];
  }

LABEL_23:
}

void sub_100056FB0(id a1, NSError *a2)
{
  v2 = a2;
  v3 = v2;
  if (v2)
  {
    if (dword_1002F6778 <= 90)
    {
      v4 = v2;
      if (dword_1002F6778 != -1 || (v2 = _LogCategory_Initialize(), v3 = v4, v2))
      {
        v2 = sub_1001E8360(v3);
        v3 = v4;
      }
    }
  }

  _objc_release_x1(v2, v3);
}

void sub_10005723C(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = *(v1 + 368);
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_1000572B0;
  block[3] = &unk_1002B6880;
  block[4] = v1;
  dispatch_async(v2, block);
}

void sub_1000572C4(uint64_t a1, uint64_t a2, void *a3, _BYTE *a4)
{
  v11 = a3;
  if ([v11 availableDataTypesFromServer])
  {
    if (dword_1002F6778 <= 30 && (dword_1002F6778 != -1 || _LogCategory_Initialize()))
    {
      sub_1001E8430(v11);
    }

    [*(a1 + 32) _dataRelayAddRequestedDataTypesForServer:v11];
    v6 = v11;
    *a4 = 1;
  }

  else
  {
    v7 = [v11 wxAddress];
    v8 = CUPrintNSDataAddress();

    v9 = [*(*(a1 + 32) + 1256) activeHRMDevice];
    v10 = [v9 btAddress];

    if ([v8 isEqualToString:v10])
    {
      if (dword_1002F6778 <= 30 && (dword_1002F6778 != -1 || _LogCategory_Initialize()))
      {
        sub_1001E848C(v11);
      }

      [*(a1 + 32) _dataRelayAddRequestedDataTypesForServer:v11];
      *a4 = 1;
    }

    v6 = v11;
  }
}

void sub_100057420(uint64_t a1, uint64_t a2, void *a3, _BYTE *a4)
{
  v6 = a3;
  if ([v6 requestedDataTypes])
  {
    if (dword_1002F6778 <= 30 && (dword_1002F6778 != -1 || _LogCategory_Initialize()))
    {
      sub_1001E84E8(v6);
    }

    [*(a1 + 32) _dataRelayRemoveRequestedDataTypesForServer:v6];
    *a4 = 1;
  }
}

void *sub_1000577A4(uint64_t a1, uint64_t a2)
{
  result = *(a1 + 32);
  if (result[187] == *(a1 + 40))
  {
    return [result _wxDeviceFound:a2];
  }

  return result;
}

void *sub_1000577C8(uint64_t a1, uint64_t a2)
{
  result = *(a1 + 32);
  if (result[187] == *(a1 + 40))
  {
    return [result _wxDeviceLost:a2];
  }

  return result;
}

void *sub_1000577EC(uint64_t a1, uint64_t a2)
{
  result = *(a1 + 32);
  if (result[187] == *(a1 + 40))
  {
    return [result _wxDeviceFound:a2];
  }

  return result;
}

void sub_100057810(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = *(a1 + 40);
  v3 = *(v1 + 1496);
  if (v3 == v2)
  {
    *(v1 + 1496) = 0;
  }
}

void sub_10005782C(uint64_t a1, void *a2)
{
  v3 = a2;
  if (v3 && *(*(a1 + 32) + 1496) == *(a1 + 40))
  {
    v6 = v3;
    if (dword_1002F6778 <= 90 && (dword_1002F6778 != -1 || _LogCategory_Initialize()))
    {
      sub_1001E8560(v6);
    }

    [*(a1 + 40) invalidate];
    v4 = *(a1 + 32);
    v5 = *(v4 + 1496);
    *(v4 + 1496) = 0;

    v3 = v6;
  }
}

void sub_100057AC4(uint64_t a1)
{
  v2 = *(a1 + 32);
  if (v2 == *(*(a1 + 40) + 1504))
  {
    [v2 invalidate];
    v3 = *(a1 + 40);
    v4 = *(v3 + 1504);
    *(v3 + 1504) = 0;
  }
}

void sub_100057C8C(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  if ([a3 isUSBPlugIn])
  {
    [*(a1 + 32) addObject:v5];
  }
}

void sub_100057F38(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t sub_100057F70(uint64_t result)
{
  v1 = *(*(*(result + 32) + 8) + 40);
  if (v1 && dword_1002F6778 <= 90)
  {
    if (dword_1002F6778 != -1)
    {
      return LogPrintF(&dword_1002F6778, "[BTSmartRoutingDaemon _runUSBAudioRoutingPolicy:]_block_invoke", 90, "RunUSBAudioPolicy: Skip %@", v1);
    }

    v2 = result;
    result = _LogCategory_Initialize();
    if (result)
    {
      v1 = *(*(*(v2 + 32) + 8) + 40);
      return LogPrintF(&dword_1002F6778, "[BTSmartRoutingDaemon _runUSBAudioRoutingPolicy:]_block_invoke", 90, "RunUSBAudioPolicy: Skip %@", v1);
    }
  }

  return result;
}

void sub_1000582A8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, ...)
{
  va_start(va, a18);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t sub_1000582E4(uint64_t result)
{
  v1 = *(*(*(result + 32) + 8) + 40);
  if (v1 && dword_1002F6778 <= 90)
  {
    if (dword_1002F6778 != -1)
    {
      return LogPrintF(&dword_1002F6778, "[BTSmartRoutingDaemon _updateUSBDeviceForPairStateChange:paired:]_block_invoke", 90, "USBDevice: Update for pairing change failed. Reason %@", v1);
    }

    v2 = result;
    result = _LogCategory_Initialize();
    if (result)
    {
      v1 = *(*(*(v2 + 32) + 8) + 40);
      return LogPrintF(&dword_1002F6778, "[BTSmartRoutingDaemon _updateUSBDeviceForPairStateChange:paired:]_block_invoke", 90, "USBDevice: Update for pairing change failed. Reason %@", v1);
    }
  }

  return result;
}

void sub_100058620(uint64_t a1)
{
  if (*(*(a1 + 32) + 936) == 1)
  {
    if (dword_1002F6778 <= 30 && (dword_1002F6778 != -1 || _LogCategory_Initialize()))
    {
      sub_1001E868C(a1);
    }

    v14 = 0;
    v15 = &v14;
    v16 = 0x3032000000;
    v17 = sub_100003918;
    v18 = sub_100003838;
    v19 = 0;
    v13[0] = _NSConcreteStackBlock;
    v13[1] = 3221225472;
    v13[2] = sub_100058928;
    v13[3] = &unk_1002B6C00;
    v13[4] = &v14;
    v2 = objc_retainBlock(v13);
    v3 = *(a1 + 40);
    if (!v3)
    {
      v5 = v15[5];
      v15[5] = @"USBDevice is null";
      goto LABEL_13;
    }

    v4 = [v3 btAddress];
    v5 = v4;
    if (v4)
    {
      if (sub_1001E0CE4(v4))
      {
        v6 = [*(*(a1 + 32) + 1568) objectForKeyedSubscript:v5];
        if ([(SRDiscoveredDevice *)v6 isUSBPlugIn])
        {
          v12 = v15[5];
          v15[5] = @"Skip, Wx already plugged in";
        }

        else
        {
          if (!v6)
          {
            v6 = objc_alloc_init(SRDiscoveredDevice);
          }

          [(SRDiscoveredDevice *)v6 _setBtAddress:v5];
          [(SRDiscoveredDevice *)v6 setIsUSBPlugIn:1];
          v7 = [*(a1 + 40) color];
          -[SRDiscoveredDevice setUsbcColorCode:](v6, "setUsbcColorCode:", [v7 unsignedIntValue]);

          v8 = [*(a1 + 40) usbName];
          [(SRDiscoveredDevice *)v6 setUsbName:v8];

          v9 = [*(a1 + 40) pid];
          -[SRDiscoveredDevice setUsbProductID:](v6, "setUsbProductID:", [v9 unsignedIntValue]);

          [*(*(a1 + 32) + 1568) setObject:v6 forKeyedSubscript:v5];
          [*(a1 + 32) _submitUSBAudioDeviceMetric:v5];
          [*(a1 + 32) _runUSBAudioRoutingPolicy:v5];
          [*(a1 + 32) _sendTipiScoreUpdateToWx];
          [*(a1 + 32) _disconnectOtherTipiDevice:v5];
          [*(a1 + 32) _cancelTriangleRecoveryTimer];
          [*(a1 + 32) _evaluatorRunForUSBDevice:v5 trigger:2];
        }

        goto LABEL_12;
      }

      v10 = v15;
      v6 = v15[5];
      v11 = @"Wx address is invalid";
    }

    else
    {
      v10 = v15;
      v6 = v15[5];
      v11 = @"Wx address is null";
    }

    v10[5] = v11;
LABEL_12:

LABEL_13:
    (v2[2])(v2);

    _Block_object_dispose(&v14, 8);
  }
}

void sub_1000588F0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t sub_100058928(uint64_t result)
{
  v1 = *(*(*(result + 32) + 8) + 40);
  if (v1 && dword_1002F6778 <= 90)
  {
    if (dword_1002F6778 != -1)
    {
      return LogPrintF(&dword_1002F6778, "[BTSmartRoutingDaemon usbDeviceFound:]_block_invoke_2", 90, "USBDevice: %@", v1);
    }

    v2 = result;
    result = _LogCategory_Initialize();
    if (result)
    {
      v1 = *(*(*(v2 + 32) + 8) + 40);
      return LogPrintF(&dword_1002F6778, "[BTSmartRoutingDaemon usbDeviceFound:]_block_invoke_2", 90, "USBDevice: %@", v1);
    }
  }

  return result;
}

void sub_100058A5C(uint64_t a1)
{
  if (*(*(a1 + 32) + 936) == 1)
  {
    if (dword_1002F6778 <= 30 && (dword_1002F6778 != -1 || _LogCategory_Initialize()))
    {
      sub_1001E86D0(a1);
    }

    v14 = 0;
    v15 = &v14;
    v16 = 0x3032000000;
    v17 = sub_100003918;
    v18 = sub_100003838;
    v19 = 0;
    v13[0] = _NSConcreteStackBlock;
    v13[1] = 3221225472;
    v13[2] = sub_100058C98;
    v13[3] = &unk_1002B6C00;
    v13[4] = &v14;
    v2 = objc_retainBlock(v13);
    v3 = *(a1 + 40);
    if (v3)
    {
      if (sub_1001E0CE4(v3))
      {
        v4 = [*(*(a1 + 32) + 1568) objectForKeyedSubscript:*(a1 + 40)];
        v5 = v4;
        if (v4)
        {
          [v4 setIsUSBPlugIn:0];
          [v5 setIsPairingInProgress:0];
          v6 = *(*(a1 + 32) + 776);
          if (v6)
          {
            v7 = v6;
            dispatch_source_cancel(v7);
            v8 = *(a1 + 32);
            v9 = *(v8 + 776);
            *(v8 + 776) = 0;
          }

          [*(a1 + 32) _sendTipiScoreUpdateToWx];
          if (GestaltGetDeviceClass() == 1)
          {
            [*(a1 + 32) _checkTriangleRecovery];
          }
        }

        else
        {
          v12 = v15[5];
          v15[5] = @"No SRDiscoveredDevice found";
        }

        goto LABEL_12;
      }

      v10 = v15;
      v5 = v15[5];
      v11 = @"Wx address is invalid";
    }

    else
    {
      v10 = v15;
      v5 = v15[5];
      v11 = @"Wx address is null";
    }

    v10[5] = v11;
LABEL_12:

    (v2[2])(v2);
    _Block_object_dispose(&v14, 8);
  }
}

void sub_100058C60(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  (*(v13 + 16))(v13, a2, a3, a4, a5, a6, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t sub_100058C98(uint64_t result)
{
  v1 = *(*(*(result + 32) + 8) + 40);
  if (v1 && dword_1002F6778 <= 90)
  {
    if (dword_1002F6778 != -1)
    {
      return LogPrintF(&dword_1002F6778, "[BTSmartRoutingDaemon usbDeviceLost:]_block_invoke_2", 90, "USBDevice: %@", v1);
    }

    v2 = result;
    result = _LogCategory_Initialize();
    if (result)
    {
      v1 = *(*(*(v2 + 32) + 8) + 40);
      return LogPrintF(&dword_1002F6778, "[BTSmartRoutingDaemon usbDeviceLost:]_block_invoke_2", 90, "USBDevice: %@", v1);
    }
  }

  return result;
}

void sub_100059074(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, ...)
{
  va_start(va, a20);
  (*(v20 + 16))(v20, a2, a3, a4, a5, a6, a7, a8);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t sub_1000590B4(uint64_t result)
{
  v1 = *(*(*(result + 32) + 8) + 40);
  if (v1 && dword_1002F6778 <= 90)
  {
    if (dword_1002F6778 != -1)
    {
      return LogPrintF(&dword_1002F6778, "[BTSmartRoutingDaemon _evaluatorRunForUSBDevice:trigger:]_block_invoke", 90, "USBDevice: %@", v1);
    }

    v2 = result;
    result = _LogCategory_Initialize();
    if (result)
    {
      v1 = *(*(*(v2 + 32) + 8) + 40);
      return LogPrintF(&dword_1002F6778, "[BTSmartRoutingDaemon _evaluatorRunForUSBDevice:trigger:]_block_invoke", 90, "USBDevice: %@", v1);
    }
  }

  return result;
}

id *sub_100059150(id *result, uint64_t a2)
{
  if (*(result + 40) == 1)
  {
    return [result[4] _connectToUSBDevice:a2 isUserInitiate:0];
  }

  return result;
}

void sub_1000594D0(uint64_t a1, void *a2)
{
  v8 = a2;
  if (dword_1002F6778 <= 30 && (dword_1002F6778 != -1 || _LogCategory_Initialize()))
  {
    LogPrintF(&dword_1002F6778, "[BTSmartRoutingDaemon _connectToUSBDevice:isUserInitiate:]_block_invoke", 30, "Evaluator: connect complete USBDevice %@ result %@", *(a1 + 32), v8);
  }

  [*(a1 + 40) invalidate];
  [*(a1 + 48) _submitConnectionMetric:*(a1 + 32) andError:v8];
  v5 = v8;
  if (v8 && *(a1 + 56) == 1)
  {
    if (dword_1002F6778 <= 30)
    {
      if (dword_1002F6778 != -1 || (v5 = _LogCategory_Initialize(), v5))
      {
        sub_1001E87AC(v5, v3, v4);
      }
    }

    v6 = +[AudioDeviceManager sharedAudioDeviceManager];
    [v6 usbDeviceEnableAirPlaneMode:*(a1 + 32)];

    v7 = +[AudioDeviceManager sharedAudioDeviceManager];
    [v7 usbDeviceUnHideDevice:*(a1 + 32)];
  }
}

void sub_10005AFB4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, ...)
{
  va_start(va, a42);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_10005AFDC(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = [a3 model];
  if (([v4 hasPrefix:@"iPhone"] & 1) != 0 || (objc_msgSend(v4, "hasPrefix:", @"iPad") & 1) != 0 || objc_msgSend(v4, "containsString:", @"Mac"))
  {
    ++*(*(*(a1 + 32) + 8) + 24);
  }
}

void sub_10005C584(id a1, NSString *a2, SRDiscoveredDevice *a3, BOOL *a4)
{
  v4 = a3;
  [(SRDiscoveredDevice *)v4 setDisconnectionBackoffTick:0];
  [(SRDiscoveredDevice *)v4 setConnectTick:0];
  [(SRDiscoveredDevice *)v4 setIsManualDisconnectLastTime:0];
  [(SRDiscoveredDevice *)v4 setIsFirstConnectionAfterSREnable:0];
}

void sub_10005C8C4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t sub_10005C8FC(uint64_t result)
{
  v1 = *(*(*(result + 32) + 8) + 40);
  if (v1 && dword_1002F6778 <= 90)
  {
    if (dword_1002F6778 != -1)
    {
      return LogPrintF(&dword_1002F6778, "[BTSmartRoutingDaemon _updateSRDiscoveredDeviceForPairStateChange:isPaired:]_block_invoke", 90, "Failed to update SRDisDevice for pair state change. Reason %@", v1);
    }

    v2 = result;
    result = _LogCategory_Initialize();
    if (result)
    {
      v1 = *(*(*(v2 + 32) + 8) + 40);
      return LogPrintF(&dword_1002F6778, "[BTSmartRoutingDaemon _updateSRDiscoveredDeviceForPairStateChange:isPaired:]_block_invoke", 90, "Failed to update SRDisDevice for pair state change. Reason %@", v1);
    }
  }

  return result;
}

void sub_10005CAE4(uint64_t a1)
{
  v59 = 0;
  v60 = &v59;
  v61 = 0x3032000000;
  v62 = sub_100003918;
  v63 = sub_100003838;
  v64 = 0;
  v58[0] = _NSConcreteStackBlock;
  v58[1] = 3221225472;
  v58[2] = sub_10005D4F4;
  v58[3] = &unk_1002B6C00;
  v58[4] = &v59;
  v56 = objc_retainBlock(v58);
  v2 = [*(*(*(a1 + 40) + 8) + 40) callUUID];

  if (!v2)
  {
    v53 = v60;
    v48 = v60[5];
    v54 = @"New call uuid is null";
LABEL_77:
    v53[5] = v54;
    goto LABEL_72;
  }

  v3 = [*(*(a1 + 32) + 1256) callMap];

  if (!v3)
  {
    v4 = objc_alloc_init(NSMutableDictionary);
    [*(*(a1 + 32) + 1256) setCallMap:v4];
  }

  if (dword_1002F6778 <= 30 && (dword_1002F6778 != -1 || _LogCategory_Initialize()))
  {
    if ([*(*(*(a1 + 40) + 8) + 40) incoming])
    {
      v5 = "yes";
    }

    else
    {
      v5 = "no";
    }

    v55 = v5;
    if ([*(*(*(a1 + 40) + 8) + 40) outgoing])
    {
      v6 = "yes";
    }

    else
    {
      v6 = "no";
    }

    v7 = [*(*(*(a1 + 40) + 8) + 40) status];
    if (v7 > 6)
    {
      v8 = "?";
    }

    else
    {
      v8 = off_1002B8C50[v7];
    }

    if ([*(*(*(a1 + 40) + 8) + 40) endpointOnCurrentDevice])
    {
      v9 = "yes";
    }

    else
    {
      v9 = "no";
    }

    v10 = [*(*(*(a1 + 40) + 8) + 40) callUUID];
    v11 = [*(*(*(a1 + 40) + 8) + 40) providerIdentifier];
    v12 = [*(*(*(a1 + 40) + 8) + 40) providerLocalizedName];
    v13 = [*(*(*(a1 + 40) + 8) + 40) providerBundleIdentifier];
    if ([*(*(*(a1 + 40) + 8) + 40) providerSystemProvider])
    {
      v14 = "yes";
    }

    else
    {
      v14 = "no";
    }

    LogPrintF(&dword_1002F6778, "[BTSmartRoutingDaemon _handleTUCallStateChange:]_block_invoke", 30, "TUNotification: Call state changed incoming %s outgoing %s status %s endpoint %s uuid %@ providerID %@ providerName %@ bundleID %@ isSys %s", v55, v6, v8, v9, v10, v11, v12, v13, v14);
  }

  if (([*(a1 + 32) _isPhoneCall:*(*(*(a1 + 40) + 8) + 40)] & 1) == 0)
  {
    v53 = v60;
    v48 = v60[5];
    v54 = @"Skip conferencing call";
    goto LABEL_77;
  }

  v15 = [*(*(a1 + 32) + 1256) callMap];

  if (!v15)
  {
    v16 = objc_alloc_init(NSMutableDictionary);
    [*(*(a1 + 32) + 1256) setCallMap:v16];
  }

  v17 = [*(*(*(a1 + 40) + 8) + 40) incoming];
  v18 = *(*(*(a1 + 40) + 8) + 40);
  if (!v17)
  {
    if ([v18 outgoing])
    {
      v20 = [*(*(*(a1 + 40) + 8) + 40) status];
      if (v20 - 5 < 2)
      {
        v33 = [*(*(a1 + 32) + 1256) callMap];
        v34 = [*(*(*(a1 + 40) + 8) + 40) callUUID];
        v35 = [v33 objectForKeyedSubscript:v34];

        if (v35)
        {
          if (dword_1002F6778 <= 30 && (dword_1002F6778 != -1 || _LogCategory_Initialize()))
          {
            LogPrintF(&dword_1002F6778, "[BTSmartRoutingDaemon _handleTUCallStateChange:]_block_invoke_2", 30, "TUNotification: Outgoing call ended");
          }

          v38 = [*(*(a1 + 32) + 1256) callMap];
          v39 = [*(*(*(a1 + 40) + 8) + 40) callUUID];
          [v38 setObject:0 forKeyedSubscript:v39];

          v40 = [*(*(a1 + 32) + 1256) callMap];
          v41 = [v40 count];

          if (!v41)
          {
            [*(a1 + 32) _clearCallSession];
            if (GestaltGetDeviceClass() == 1)
            {
              v42 = *(a1 + 32);
              if (v42[920] == 1)
              {
                [v42 _notifyOtherTipiCallState:6];
              }
            }
          }
        }
      }

      else if (v20 == 1)
      {
        if (dword_1002F6778 <= 30 && (dword_1002F6778 != -1 || _LogCategory_Initialize()))
        {
          LogPrintF(&dword_1002F6778, "[BTSmartRoutingDaemon _handleTUCallStateChange:]_block_invoke_2", 30, "TUNotification: Outgoing call active");
        }
      }

      else if (v20 == 3)
      {
        if ([*(*(*(a1 + 40) + 8) + 40) endpointOnCurrentDevice])
        {
          v21 = [*(*(a1 + 32) + 1256) callMap];
          v22 = [*(*(*(a1 + 40) + 8) + 40) callUUID];
          v23 = [v21 objectForKeyedSubscript:v22];

          if (!v23)
          {
            if (dword_1002F6778 <= 30 && (dword_1002F6778 != -1 || _LogCategory_Initialize()))
            {
              LogPrintF(&dword_1002F6778, "[BTSmartRoutingDaemon _handleTUCallStateChange:]_block_invoke_2", 30, "TUNotification: Outgoing call sending");
            }

            v50 = *(*(*(a1 + 40) + 8) + 40);
            v51 = [*(*(a1 + 32) + 1256) callMap];
            v52 = [*(*(*(a1 + 40) + 8) + 40) callUUID];
            [v51 setObject:v50 forKeyedSubscript:v52];

            [*(*(a1 + 32) + 1256) setCallStartTicks:mach_absolute_time()];
            [*(a1 + 32) _startInUseBannerTimer];
          }
        }
      }
    }

    goto LABEL_71;
  }

  v19 = [v18 status];
  if (v19 - 5 < 2)
  {
    v24 = [*(*(a1 + 32) + 1256) callMap];
    v25 = [*(*(*(a1 + 40) + 8) + 40) callUUID];
    v26 = [v24 objectForKeyedSubscript:v25];

    if (v26)
    {
      v27 = [*(*(a1 + 32) + 1256) callMap];
      v28 = [*(*(*(a1 + 40) + 8) + 40) callUUID];
      [v27 setObject:0 forKeyedSubscript:v28];

      if (dword_1002F6778 <= 30 && (dword_1002F6778 != -1 || _LogCategory_Initialize()))
      {
        v29 = [*(*(a1 + 32) + 1256) callMap];
        LogPrintF(&dword_1002F6778, "-[BTSmartRoutingDaemon _handleTUCallStateChange:]_block_invoke_2", 30, "TUNotification: Incoming call ended. CallCount %d", [v29 count]);
      }

      v36 = [*(*(a1 + 32) + 1256) callMap];
      v37 = [v36 count];

      if (!v37)
      {
        [*(a1 + 32) _clearCallSession];
        if (GestaltGetDeviceClass() == 1)
        {
          [*(a1 + 32) _notifyOtherTipiCallState:6];
        }
      }
    }
  }

  else
  {
    if (v19 != 1)
    {
      if (v19 == 4)
      {
        [*(*(a1 + 32) + 1256) setIncomingCallRingtone:1];
        [*(a1 + 32) _startRingtoneTimer];
        [*(a1 + 32) _sendAudioCategoryToAllTipiDevices];
      }

      goto LABEL_71;
    }

    if ([*(*(*(a1 + 40) + 8) + 40) endpointOnCurrentDevice])
    {
      v30 = [*(*(a1 + 32) + 1256) callMap];
      v31 = [*(*(*(a1 + 40) + 8) + 40) callUUID];
      v32 = [v30 objectForKeyedSubscript:v31];

      if (!v32)
      {
        if (dword_1002F6778 <= 30 && (dword_1002F6778 != -1 || _LogCategory_Initialize()))
        {
          LogPrintF(&dword_1002F6778, "[BTSmartRoutingDaemon _handleTUCallStateChange:]_block_invoke", 30, "TUNotification: Incoming call answered");
        }

        [*(a1 + 32) _updateLocalAudioCategory:&off_1002CB720];
        [*(*(a1 + 32) + 1256) setCallStartTicks:mach_absolute_time()];
        [*(a1 + 32) _startInUseBannerTimer];
        v43 = *(a1 + 32);
        v44 = *(v43 + 1240);
        v57[0] = _NSConcreteStackBlock;
        v57[1] = 3221225472;
        v57[2] = sub_10005D590;
        v57[3] = &unk_1002B8168;
        v57[4] = v43;
        [v44 enumerateKeysAndObjectsUsingBlock:v57];
        v45 = *(*(*(a1 + 40) + 8) + 40);
        v46 = [*(*(a1 + 32) + 1256) callMap];
        v47 = [*(*(*(a1 + 40) + 8) + 40) callUUID];
        [v46 setObject:v45 forKeyedSubscript:v47];
      }
    }
  }

  [*(*(a1 + 32) + 1256) setIncomingCallRingtone:0];
  [*(a1 + 32) _sendAudioCategoryToAllTipiDevices];
  [*(a1 + 32) _cancelRingtoneTimer];
LABEL_71:
  v48 = +[SRConnectionManager sharedSRConnectionManager];
  v49 = [*(*(a1 + 32) + 1256) callMap];
  [v48 callStateChanged:{objc_msgSend(v49, "count") != 0}];

LABEL_72:
  (v56[2])(v56);

  _Block_object_dispose(&v59, 8);
}

uint64_t sub_10005D4F4(uint64_t result)
{
  v1 = *(*(*(result + 32) + 8) + 40);
  if (v1 && dword_1002F6778 <= 90)
  {
    if (dword_1002F6778 != -1)
    {
      return LogPrintF(&dword_1002F6778, "[BTSmartRoutingDaemon _handleTUCallStateChange:]_block_invoke_2", 90, "TUNotification: %@", v1);
    }

    v2 = result;
    result = _LogCategory_Initialize();
    if (result)
    {
      v1 = *(*(*(v2 + 32) + 8) + 40);
      return LogPrintF(&dword_1002F6778, "[BTSmartRoutingDaemon _handleTUCallStateChange:]_block_invoke_2", 90, "TUNotification: %@", v1);
    }
  }

  return result;
}

void sub_10005D590(uint64_t a1, void *a2, void *a3)
{
  v11 = a2;
  v5 = a3;
  if (dword_1002F6778 <= 30 && (dword_1002F6778 != -1 || _LogCategory_Initialize()))
  {
    sub_1001E8958();
  }

  v6 = [v5 otherTipiDeviceBTAddress];
  if (v6 && [v5 otherTipiAudioCategory])
  {
    v7 = [v5 otherTipiAudioCategory];

    if (v7 <= 0x1F4)
    {
      v8 = *(a1 + 32);
      if ((*(v8 + 537) & 1) == 0 && !*(v8 + 520))
      {
        [v8 _startIncomingCallHijackTimer:8];
      }

      [v5 setRoutingAction:1];
      v9 = *(a1 + 32);
      v10 = [v5 otherTipiDeviceBTAddress];
      [v9 _relayConduitMessageSend:1 withOptions:&off_1002CBD88 andWxAddress:v11 andOtherAddress:v10];

      [*(a1 + 32) _postNotification:"com.apple.BluetoothServices.AudioRoutingChanged"];
    }
  }

  else
  {
  }
}

void sub_10005D7BC(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v7 = [v6 otherTipiDeviceBTAddress];

  if (v7)
  {
    v12 = @"callState";
    v8 = [NSNumber numberWithInt:*(a1 + 40)];
    v13 = v8;
    v9 = [NSDictionary dictionaryWithObjects:&v13 forKeys:&v12 count:1];

    v10 = *(a1 + 32);
    v11 = [v6 otherTipiDeviceBTAddress];
    [v10 _relayConduitMessageSend:1 withOptions:v9 andWxAddress:v5 andOtherAddress:v11];
  }
}

id sub_10005D9CC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = a1;
  if (dword_1002F6778 <= 90)
  {
    if (dword_1002F6778 != -1 || (a1 = _LogCategory_Initialize(), a1))
    {
      sub_1001E8A74(a1, a2, a3);
    }
  }

  [*(v3 + 32) _evaluatorRunInUseBanner:0];
  v4 = *(v3 + 32);

  return [v4 _cancelInUseBannerForCallTimer];
}

id sub_10005DB40(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = a1;
  if (dword_1002F6778 <= 90)
  {
    if (dword_1002F6778 != -1 || (a1 = _LogCategory_Initialize(), a1))
    {
      sub_1001E8AD4(a1, a2, a3);
    }
  }

  [*(*(v3 + 32) + 1256) setIncomingCallRingtone:0];
  v4 = *(v3 + 32);

  return [v4 _cancelRingtoneTimer];
}

void sub_10005E6F4(uint64_t a1, void *a2)
{
  v9 = a2;
  v3 = [*(*(a1 + 32) + 288) objectForKeyedSubscript:?];
  v4 = [v3 mode];

  if (v4 == 1)
  {
    if (dword_1002F6778 <= 30)
    {
      if (dword_1002F6778 != -1 || (v5 = _LogCategory_Initialize(), v5))
      {
        sub_1001E8D8C(v5, v6, v7);
      }
    }

    v8 = [*(*(a1 + 32) + 288) objectForKeyedSubscript:v9];
    [v8 setMode:2];

    [*(a1 + 32) _handleSmartRoutingDisabled:v9];
  }
}

void sub_10005EF30(uint64_t a1)
{
  if (*(*(a1 + 32) + 1544))
  {
    if (dword_1002F6778 <= 30 && (dword_1002F6778 != -1 || _LogCategory_Initialize()))
    {
      sub_1001E8E4C(a1);
    }

    [*(*(a1 + 32) + 1272) removeObjectForKey:*(a1 + 40)];
    v2 = *(a1 + 32);
    v3 = *(v2 + 1544);
    *(v2 + 1544) = 0;
  }
}

void sub_10005F418(id a1, NSError *a2)
{
  v2 = a2;
  v4 = v2;
  if (v2)
  {
    if (dword_1002F6778 <= 90)
    {
      v5 = v2;
      if (dword_1002F6778 != -1 || (v2 = _LogCategory_Initialize(), v4 = v5, v2))
      {
        v2 = sub_1001E8F24(v2, v4, v3);
        v4 = v5;
      }
    }
  }

  _objc_release_x1(v2, v4);
}

void sub_10005F608(id a1, NSString *a2, SRNearbyWxDevice *a3, BOOL *a4)
{
  v6 = a2;
  v5 = a3;
  if ([(SRNearbyWxDevice *)v5 paired]&& dword_1002F6778 <= 50 && (dword_1002F6778 != -1 || _LogCategory_Initialize()))
  {
    sub_1001E8F40(v5, v6);
  }
}

void sub_10005F6AC(id a1, NSString *a2, SRWxDevice *a3, BOOL *a4)
{
  v6 = a2;
  v5 = a3;
  if (dword_1002F6778 <= 30 && (dword_1002F6778 != -1 || _LogCategory_Initialize()))
  {
    sub_1001E9094();
  }
}

void sub_10005F828(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_10005F840(uint64_t a1, void *a2, void *a3, _BYTE *a4)
{
  v12 = a2;
  v8 = a3;
  v9 = [*(*(a1 + 32) + 224) objectForKeyedSubscript:v12];

  if (v9)
  {
    v10 = [*(*(a1 + 32) + 280) objectForKeyedSubscript:v12];
    v11 = [v10 BOOLValue];

    if (dword_1002F6778 > 30 || dword_1002F6778 == -1 && !_LogCategory_Initialize())
    {
      if (!v11)
      {
        goto LABEL_7;
      }

      goto LABEL_6;
    }

    sub_1001E912C(v8);
    if (v11)
    {
LABEL_6:
      objc_storeStrong((*(*(a1 + 40) + 8) + 40), a2);
      *a4 = 1;
    }
  }

LABEL_7:
}

void sub_10005FFFC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_100060014(uint64_t a1, void *a2, void *a3, _BYTE *a4)
{
  v9 = a2;
  v8 = a3;
  if ([v8 isNearby] && objc_msgSend(v8, "nearbyInEar") == 1 && !objc_msgSend(v8, "connectionState"))
  {
    objc_storeStrong((*(*(a1 + 32) + 8) + 40), a2);
    *a4 = 1;
  }
}

void sub_1000601A8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1000601C0(uint64_t a1, void *a2, void *a3, _BYTE *a4)
{
  v8 = a2;
  if ([a3 routed])
  {
    objc_storeStrong((*(*(a1 + 32) + 8) + 40), a2);
    *a4 = 1;
  }
}

void sub_1000605D4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1000605EC(uint64_t a1, uint64_t a2, void *a3, _BYTE *a4)
{
  v7 = a3;
  if ([v7 inEar])
  {
    objc_storeStrong((*(*(a1 + 32) + 8) + 40), a3);
    *a4 = 1;
  }
}

void sub_100060A60(uint64_t a1)
{
  v2 = [*(*(a1 + 32) + 1240) objectForKeyedSubscript:*(a1 + 40)];
  v7 = v2;
  if (v2)
  {
    v5 = [v2 identifier];
    v6 = [v7 tipiAndRoutedState];
    if (dword_1002F6778 <= 30 && (dword_1002F6778 != -1 || _LogCategory_Initialize()))
    {
      sub_1001E9310(v6);
    }

    [*(*(a1 + 32) + 16) smartRoutingStateUpdated:v6 ForDeviceIdentifier:v5];
  }

  else
  {
    sub_1001E9374(0, v3, v4);
  }
}

void sub_100060D64(uint64_t a1, uint64_t a2, void *a3, _BYTE *a4)
{
  v14 = [a3 bleDevice];
  v6 = [v14 advertisementFields];
  v7 = CFDictionaryGetCFDataOfLength();
  v8 = v7;
  if (v7)
  {
    v9 = NSPrintF("%.6a", COERCE_DOUBLE([v7 bytes]));
  }

  else
  {
    v9 = 0;
  }

  Int64Ranged = CFDictionaryGetInt64Ranged();
  if ([*(a1 + 32) isEqualToString:v9])
  {
    v11 = CFDictionaryGetInt64Ranged();
    v13 = *(a1 + 40);
    v12 = a1 + 40;
    *(*(v13 + 8) + 24) = v11;
    if (dword_1002F6778 <= 50 && (dword_1002F6778 != -1 || _LogCategory_Initialize()))
    {
      sub_1001E93D4();
    }

    if (Int64Ranged == 8209)
    {
      *(*(*v12 + 8) + 24) = 1;
    }

    *a4 = 1;
  }
}

uint64_t sub_100060EDC(uint64_t a1, void *a2, void *a3, _BYTE *a4)
{
  v13 = a3;
  v7 = [a2 isEqualToString:*(a1 + 32)];
  v8 = v13;
  if (v7)
  {
    v9 = [v13 colorCodeBest];
    v11 = *(a1 + 40);
    v10 = a1 + 40;
    *(*(v11 + 8) + 24) = v9;
    if (dword_1002F6778 <= 50 && (dword_1002F6778 != -1 || _LogCategory_Initialize()))
    {
      sub_1001E9414();
    }

    v7 = [v13 productID];
    if (v7 == 8209)
    {
      *(*(*v10 + 8) + 24) = 1;
    }

    *a4 = 1;
    v8 = v13;
  }

  return _objc_release_x1(v7, v8);
}

void sub_1000614C8(uint64_t a1)
{
  v2 = [*(a1 + 32) userInfo];
  v3 = [v2 objectForKeyedSubscript:AVSystemController_CallIsActiveNotificationParameter];
  v4 = [v3 BOOLValue];

  if (dword_1002F6778 <= 30 && (dword_1002F6778 != -1 || _LogCategory_Initialize()))
  {
    sub_1001E9454();
  }

  v5 = *(a1 + 40);
  if (v4)
  {
    *(v5 + 176) = 1;
    [*(*(a1 + 40) + 1288) setCallConnected:1];
    v6 = *(a1 + 40);
    if (v6[873] == 1)
    {
      v7 = +[SRConnectionManager sharedSRConnectionManager];
      [v7 onDemandEventStarted:1 withEvent:2];

      v8 = *(a1 + 40);

      [v8 _evaluateNearbyDevice];
    }

    else
    {

      [v6 _evaluatorRun];
    }
  }

  else
  {
    *(v5 + 176) = 0;
    [*(*(a1 + 40) + 1288) setCallConnected:0];
    if (*(*(a1 + 40) + 873) == 1)
    {
      v9 = +[SRConnectionManager sharedSRConnectionManager];
      [v9 onDemandEventStarted:0 withEvent:2];
    }
  }
}

void sub_10006170C(uint64_t a1)
{
  v2 = [*(a1 + 32) userInfo];
  v3 = [v2 objectForKeyedSubscript:AVSystemController_NowPlayingAppIsPlayingNotificationParameter];
  v4 = [v3 BOOLValue];

  v5 = [*(a1 + 32) userInfo];
  v16 = [v5 objectForKeyedSubscript:AVSystemController_NowPlayingAppNotificationParameter];

  if (dword_1002F6778 <= 30 && (dword_1002F6778 != -1 || _LogCategory_Initialize()))
  {
    v6 = "no";
    if (v4)
    {
      v6 = "yes";
    }

    LogPrintF(&dword_1002F6778, "[BTSmartRoutingDaemon _handleMediaPlayStateChange:]_block_invoke", 30, "Received playback changed app %@ isPlaying %s", v16, v6);
  }

  v7 = *(a1 + 40);
  if (v4)
  {
    *(v7 + 800) = 1;
    [*(*(a1 + 40) + 1288) setMediaPlaying:1];
    [*(a1 + 40) _startPlaybackTimer];
    v8 = *(a1 + 40);
    if (v8[873] == 1)
    {
      v9 = +[SRConnectionManager sharedSRConnectionManager];
      [v9 onDemandEventStarted:1 withEvent:1];

      [*(a1 + 40) _evaluateNearbyDevice];
    }

    else
    {
      [v8 _evaluatorRun];
    }
  }

  else
  {
    *(v7 + 800) = 0;
    [*(*(a1 + 40) + 1288) setMediaPlaying:0];
    v10 = *(a1 + 40);
    if (*(v10 + 873) == 1)
    {
      v11 = +[SRConnectionManager sharedSRConnectionManager];
      [v11 onDemandEventStarted:0 withEvent:1];

      v10 = *(a1 + 40);
    }

    v12 = *(v10 + 808);
    if (v12)
    {
      v13 = v12;
      dispatch_source_cancel(v13);
      v14 = *(a1 + 40);
      v15 = *(v14 + 808);
      *(v14 + 808) = 0;
    }
  }
}

id sub_10006197C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = a1;
  if (dword_1002F6778 <= 30)
  {
    if (dword_1002F6778 != -1 || (a1 = _LogCategory_Initialize(), a1))
    {
      sub_1001E94A4(a1, a2, a3);
    }
  }

  v4 = +[AAConversationDetectSessionManager sharedCDSessionManager];
  v5 = [v4 cdSignalAudioInterrupted];

  if (v5)
  {
    v6 = +[AAConversationDetectSessionManager sharedCDSessionManager];
    v7 = [v6 currentCDDeviceIdentifier];
    v8 = *(v3 + 32);
    v9 = *(v8 + 200);
    *(v8 + 200) = v7;

    if (dword_1002F6778 <= 30 && (dword_1002F6778 != -1 || _LogCategory_Initialize()))
    {
      sub_1001E94DC(v3 + 32);
    }
  }

  else
  {
    v10 = *(v3 + 32);
    v11 = *(v10 + 200);
    *(v10 + 200) = 0;

    if (dword_1002F6778 <= 30)
    {
      if (dword_1002F6778 != -1 || (v12 = _LogCategory_Initialize(), v12))
      {
        sub_1001E94C0(v12, v13, v14);
      }
    }
  }

  v15 = *(v3 + 32);
  v16 = *(v15 + 1240);
  v18[0] = _NSConcreteStackBlock;
  v18[1] = 3221225472;
  v18[2] = sub_100061B08;
  v18[3] = &unk_1002B8168;
  v18[4] = v15;
  return [v16 enumerateKeysAndObjectsUsingBlock:v18];
}

void sub_100061B08(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  if (([a3 otherTipiDeviceIsWatch] & 1) != 0 || GestaltGetDeviceClass() == 6)
  {
    [*(a1 + 32) _sendAudioCategory:v5 withAudioCategory:*(*(a1 + 32) + 600)];
  }
}

void sub_100061C10(uint64_t a1)
{
  v2 = [*(a1 + 32) userInfo];
  v10 = [v2 objectForKeyedSubscript:AVSystemController_HighestArbitrationPriorityForTipi_AudioScore];

  v3 = [*(a1 + 32) userInfo];
  v4 = [v3 objectForKeyedSubscript:AVSystemController_HighestArbitrationPriorityForTipi_BundleID];

  [*(*(a1 + 40) + 1288) setHijackPlayingApp:v4];
  [*(*(a1 + 40) + 1288) setHijackPlayingCategory:v10];
  [*(*(a1 + 40) + 1256) setActivePlayingApp:v4];
  if (dword_1002F6778 <= 30 && (dword_1002F6778 != -1 || _LogCategory_Initialize()))
  {
    LogPrintF(&dword_1002F6778, "[BTSmartRoutingDaemon _handleHighestAudioCategoryChange:]_block_invoke", 30, "[Hijackv2] Received audio category changed: app=%@ isPlaying=%@", v4, v10);
  }

  v5 = [*(*(a1 + 40) + 600) intValue];
  if (v5 != [v10 intValue] || (objc_msgSend(*(*(a1 + 40) + 1256), "activePlayingApp"), v6 = objc_claimAutoreleasedReturnValue(), v7 = objc_msgSend(v6, "isEqualToString:", v4), v6, (v7 & 1) == 0))
  {
    v8 = *(a1 + 40);
    v9 = +[NSNumber numberWithInteger:](NSNumber, "numberWithInteger:", [v10 integerValue]);
    [v8 _updateLocalAudioCategory:v9];
  }
}

uint64_t sub_100061E50(uint64_t a1)
{
  v2 = [*(*(a1 + 32) + 1568) objectForKeyedSubscript:*(a1 + 40)];
  v3 = v2;
  if (v2)
  {
    v5 = v2;
    v2 = [*(a1 + 32) _determineHRMCapabilityOfDevice:v2];
    v3 = v5;
  }

  return _objc_release_x1(v2, v3);
}

void sub_100061F28(uint64_t a1, uint64_t a2, void *a3, _BYTE *a4)
{
  v7 = a3;
  if ([v7 availableDataTypesFromServer])
  {
    if (dword_1002F6778 <= 30 && (dword_1002F6778 != -1 || _LogCategory_Initialize()))
    {
      sub_1001E9524(v7);
    }

    v6 = [*(*(a1 + 32) + 320) serverLostHandler];
    (v6)[2](v6, v7);

    *a4 = 1;
  }
}

void sub_100062170(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = a1;
  if (*(a1 + 40) == 1)
  {
    v4 = [*(a1 + 32) _connectedHRMEnabledDevice];
    if (v4)
    {
      v5 = *(*(v3 + 32) + 536);

      if ((v5 & 1) == 0)
      {
        if (dword_1002F6778 <= 30)
        {
          if (dword_1002F6778 != -1 || (v6 = _LogCategory_Initialize(), v6))
          {
            sub_1001E959C(v6, v7, v8);
          }
        }

        *(*(v3 + 32) + 1092) = 7;
        [*(v3 + 32) _nearbyInfoSetAudioRoutingScore];
        *(*(v3 + 32) + 536) = 1;
      }
    }
  }

  else
  {
    if (dword_1002F6778 <= 30)
    {
      if (dword_1002F6778 != -1 || (a1 = _LogCategory_Initialize(), a1))
      {
        sub_1001E9580(a1, a2, a3);
      }
    }

    v9 = *(v3 + 32);
    if (*(v9 + 536) == 1)
    {
      *(v9 + 536) = 0;
      [*(v3 + 32) _nearbyInfoActivityChanged];
      v10 = *(v3 + 32);

      [v10 _nearbyInfoSetAudioRoutingScore];
    }
  }
}

void sub_10006247C(void *a1)
{
  v2 = (a1 + 5);
  v1 = a1[5];
  if (a1[4] != *(v1 + 496))
  {
    return;
  }

  v4 = (*(v1 + 88) & 1) != 0 || [*(v1 + 184) activeCallCount] > 0;
  if (dword_1002F6778 <= 30 && (dword_1002F6778 != -1 || _LogCategory_Initialize()))
  {
    sub_1001E95EC(v4, v2);
    if (v4)
    {
LABEL_10:
      if (dword_1002F6778 <= 30 && (dword_1002F6778 != -1 || _LogCategory_Initialize()))
      {
        sub_1001E9694(v2);
      }

      v5 = mach_absolute_time();
      v6 = [*(a1[5] + 1240) objectForKeyedSubscript:a1[6]];
      [v6 setHijackBackoffTicks:v5];

      v7 = a1[5];
      v8 = [v7[155] objectForKeyedSubscript:a1[6]];
      v9 = [v7 _checkTickswithinWindow:objc_msgSend(v8 withWindow:{"hijackBackoffTicks"), *(a1[5] + 864)}];

      goto LABEL_15;
    }
  }

  else if (v4)
  {
    goto LABEL_10;
  }

  if (*(*v2 + 273) >= 6)
  {
    goto LABEL_10;
  }

  [*v2 _hijackBackoffReset:a1[6] withReason:@"inactivity"];
  v9 = 0;
LABEL_15:
  v15 = [NSNumber numberWithUnsignedLongLong:v9];
  v10 = objc_alloc_init(NSMutableDictionary);
  [v10 setObject:v15 forKey:@"hijackBackoffTicks"];
  v12 = a1[5];
  v11 = a1[6];
  v13 = [v12[155] objectForKeyedSubscript:v11];
  v14 = [v13 otherTipiDeviceBTAddress];
  [v12 _relayConduitMessageSend:1 withOptions:v10 andWxAddress:v11 andOtherAddress:v14];
}

void sub_100062708(uint64_t a1)
{
  v1 = (a1 + 32);
  v2 = *(*(a1 + 32) + 704);
  if (!v2)
  {
    v3 = +[NRPairedDeviceRegistry sharedInstance];
    v4 = *(*v1 + 88);
    *(*v1 + 88) = v3;

    v2 = *(*v1 + 88);
  }

  v5 = [v2 getActivePairedDevice];
  v6 = *v1;
  v7 = v5;
  if (v5)
  {
    v6[760] = 1;
    [*v1 _checkIfPairedCompanionDeviceSupportsSmartRouting];
  }

  else
  {
    v6[760] = 0;
    *(*v1 + 761) = 0;
  }

  if (dword_1002F6778 <= 30 && (dword_1002F6778 != -1 || _LogCategory_Initialize()))
  {
    sub_1001E96E8();
  }

  [*v1 _prefsChanged];
}

void sub_100062960(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_100062994(uint64_t a1)
{
  v1 = *(*(*(a1 + 40) + 8) + 40);
  if (!v1)
  {
    return;
  }

  if (dword_1002F6778 <= 30)
  {
    if (dword_1002F6778 != -1)
    {
LABEL_4:
      LogPrintF(&dword_1002F6778, "[BTSmartRoutingDaemon _takeOwnershipOnPhone:]_block_invoke", 30, "PhoneOwnershipTimer: Skip taking ownership. %@", v1);
      goto LABEL_6;
    }

    if (_LogCategory_Initialize())
    {
      v1 = *(*(*(a1 + 40) + 8) + 40);
      goto LABEL_4;
    }
  }

LABEL_6:
  v3 = *(*(a1 + 32) + 792);
  if (v3)
  {
    v6 = v3;
    dispatch_source_cancel(v6);
    v4 = *(a1 + 32);
    v5 = *(v4 + 792);
    *(v4 + 792) = 0;
  }
}

void sub_100062D60(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, ...)
{
  va_start(va, a16);
  (*(v16 + 16))(v16, a2, a3, a4, a5, a6, a7, a8);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_100062DA4(uint64_t a1)
{
  v1 = *(*(*(a1 + 40) + 8) + 40);
  if (!v1)
  {
    return;
  }

  if (dword_1002F6778 <= 30)
  {
    if (dword_1002F6778 != -1)
    {
LABEL_4:
      LogPrintF(&dword_1002F6778, "[BTSmartRoutingDaemon _takeOwnershipFromWatchForDevice:]_block_invoke", 30, "TakeOwnershipFromWatchForDevice: Skip taking ownership. %@", v1);
      goto LABEL_6;
    }

    if (_LogCategory_Initialize())
    {
      v1 = *(*(*(a1 + 40) + 8) + 40);
      goto LABEL_4;
    }
  }

LABEL_6:
  v3 = *(*(a1 + 32) + 792);
  if (v3)
  {
    v6 = v3;
    dispatch_source_cancel(v6);
    v4 = *(a1 + 32);
    v5 = *(v4 + 792);
    *(v4 + 792) = 0;
  }
}

void sub_1000632C4(uint64_t a1)
{
  v2 = *(a1 + 32);
  if (v2)
  {
    v3 = [v2 userInfo];
    v4 = [v3 valueForKey:@"wxAddress"];
    v5 = [v4 unsignedLongLongValue];

    v16 = NSPrintF("%012llx", v5);
    [v16 UTF8String];
    v6 = NSDataWithHex();
    v7 = CUPrintNSDataAddress();

    if (dword_1002F6778 <= 30 && (dword_1002F6778 != -1 || _LogCategory_Initialize()))
    {
      sub_1001E9844(v7);
    }

    v8 = [*(*(a1 + 40) + 1568) objectForKeyedSubscript:v7];
    v9 = [v8 isUSBPlugIn];
    if (v9)
    {
      if (dword_1002F6778 <= 30)
      {
        if (dword_1002F6778 != -1 || (v9 = _LogCategory_Initialize(), v9))
        {
          sub_1001E98DC(v9, v10, v11);
        }
      }
    }

    else
    {
      v12 = [*(*(a1 + 40) + 1568) objectForKeyedSubscript:v7];
      v13 = [v12 nearbyWxDevice];

      if (dword_1002F6778 <= 30 && (dword_1002F6778 != -1 || _LogCategory_Initialize()))
      {
        sub_1001E9884(v13);
      }

      v14 = *(a1 + 40);
      if (v13)
      {
        LOBYTE(v15) = 1;
        [v14 _smartRoutingAddWxMapDevice:v13 routingAction:3 otherAddress:0 otherName:0 otherSourceVersion:0 isRoutingInitialized:0 newWx:v15];
        [*(a1 + 40) _smartRoutingConnectToEligibleHeadset:v13];
      }

      else
      {
        objc_storeStrong(v14 + 174, v7);
        [*(a1 + 40) _connectToHeadphoneWithAddress:v7];
      }
    }
  }
}

void sub_100063A9C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_100063AB4(uint64_t a1, uint64_t a2, uint64_t a3, _BYTE *a4)
{
  v6 = [*(*(a1 + 32) + 224) objectForKeyedSubscript:a2];
  if (v6)
  {
    v8 = v6;
    v7 = [v6 audioStreamState] < 2;
    v6 = v8;
    if (!v7)
    {
      *(*(*(a1 + 40) + 8) + 24) = 1;
      *a4 = 1;
    }
  }
}

void sub_100064190(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1000641A8(uint64_t a1, void *a2, void *a3, _BYTE *a4)
{
  v16 = a2;
  v7 = a3;
  v8 = [*(*(a1 + 32) + 1240) objectForKeyedSubscript:v16];
  v9 = [v8 identifier];

  if (v9)
  {
    v10 = [*(*(a1 + 32) + 664) objectForKeyedSubscript:v9];
    v11 = [v10 sourceCount];
  }

  else
  {
    v11 = 0;
  }

  v12 = [v7 otherTipiDeviceBTAddress];
  if (v12)
  {
    v13 = 1;
  }

  else
  {
    v13 = v11 > 1;
  }

  v14 = v13;
  *(*(*(a1 + 40) + 8) + 24) = v14;
  if (dword_1002F6778 <= 30 && (dword_1002F6778 != -1 || _LogCategory_Initialize()))
  {
    if (*(*(*(a1 + 40) + 8) + 24))
    {
      v15 = "yes";
    }

    else
    {
      v15 = "no";
    }

    LogPrintF(&dword_1002F6778, "[BTSmartRoutingDaemon isInAnyTipi]_block_invoke", 30, "Checking Tipi state of Wx %@ uuid %@ sourceCount %u otherTipi %@ inTipi %s", v16, v9, v11, v12, v15);
  }

  if (*(*(*(a1 + 40) + 8) + 24) == 1)
  {
    *a4 = 1;
  }
}

void sub_1000643DC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1000643F4(uint64_t a1, uint64_t a2, void *a3, _BYTE *a4)
{
  v6 = [a3 otherTipiDeviceBTAddress];

  if (v6)
  {
    *(*(*(a1 + 32) + 8) + 24) = 1;
    *a4 = 1;
  }
}

void sub_100064760(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, ...)
{
  va_start(va, a16);
  _Block_object_dispose(va, 8);
  _Block_object_dispose((v16 - 80), 8);
  _Unwind_Resume(a1);
}

void sub_100064784(uint64_t a1, uint64_t a2, void *a3, _BYTE *a4)
{
  v6 = a3;
  v7 = [v6 bleDevice];
  v8 = [v7 advertisementFields];
  v16 = CFDictionaryGetCFDataOfLength();

  if (v16)
  {
    v9 = NSPrintF("%.6a", COERCE_DOUBLE([v16 bytes]));
  }

  else
  {
    v9 = 0;
  }

  v10 = [v6 bleDevice];
  v11 = [v10 advertisementFields];
  Int64Ranged = CFDictionaryGetInt64Ranged();

  v13 = [v6 bleDevice];

  v14 = [v13 advertisementFields];
  v15 = CFDictionaryGetInt64Ranged();

  if ([v9 isEqualToString:*(a1 + 32)])
  {
    if ((Int64Ranged & 0x24) != 0 || [*(a1 + 40) _bluetoothProductIDNoEarDetect:v15])
    {
      *(*(*(a1 + 48) + 8) + 24) = 1;
    }

    if (dword_1002F6778 <= 30 && (dword_1002F6778 != -1 || _LogCategory_Initialize()))
    {
      sub_1001E9D10();
    }

    *(*(*(a1 + 56) + 8) + 24) = 1;
    *a4 = 1;
  }
}

void sub_100064A18(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_100064A30(uint64_t a1, void *a2, uint64_t a3, _BYTE *a4)
{
  v9 = a2;
  v6 = [*(*(a1 + 32) + 224) objectForKeyedSubscript:?];
  if ([v6 primaryPlacement] == 1)
  {
  }

  else
  {
    v7 = [*(*(a1 + 32) + 224) objectForKeyedSubscript:v9];
    v8 = [v7 secondaryPlacement];

    if (v8 != 1)
    {
      goto LABEL_5;
    }
  }

  *(*(*(a1 + 40) + 8) + 24) = 1;
  *a4 = 1;
LABEL_5:
}

void sub_100064BA8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

id sub_100064BC0(uint64_t a1, uint64_t a2, uint64_t a3, _BYTE *a4)
{
  result = [*(a1 + 32) _isInEarDetectionDisabled:a2];
  if (result)
  {
    *(*(*(a1 + 40) + 8) + 24) = 0;
    *a4 = 1;
  }

  return result;
}

void sub_100064CF4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_100064D0C(uint64_t a1, uint64_t a2, void *a3, _BYTE *a4)
{
  v13 = a3;
  if ([v13 isHRMCapable] && objc_msgSend(v13, "inEar"))
  {
    v7 = [v13 otherTipiDeviceBTAddress];
    if (v7 && (v8 = v7, v9 = [v13 otherTipiDeviceDRCompatible], v8, (v9 & 1) == 0))
    {
      sub_1001E9D74(v10, v11, v12);
    }

    else
    {
      objc_storeStrong((*(*(a1 + 32) + 8) + 40), a3);
      *a4 = 1;
    }
  }
}

void sub_100064EB8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_100064ED0(uint64_t a1, uint64_t a2, void *a3, _BYTE *a4)
{
  v9 = a3;
  v6 = [v9 lastDRHostIDSIdentifier];
  if (v6)
  {
    v7 = v6;
    v8 = [v9 isNearby];

    if (v8)
    {
      sub_1001E9DD4(v9, a1, a4);
    }
  }
}

void sub_100065044(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_100065148(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_100065160(uint64_t a1, uint64_t a2, void *a3, _BYTE *a4)
{
  v12 = a3;
  if ([v12 otherTipiAudioCategory] > 0x64)
  {
    v7 = 1;
  }

  else
  {
    v7 = [v12 otherTipiDeviceIsStreamingAudio];
  }

  v8 = [v12 isHRMCapable];
  if (!v8 || (v8 = [v12 routed], (v8 & 1) != 0))
  {
    v11 = 1;
    if (!v7)
    {
      goto LABEL_7;
    }

LABEL_13:
    sub_1001E9F08(v8, v9, v10);
    goto LABEL_9;
  }

  v8 = [v12 inEar];
  v11 = v8 ^ 1;
  if (v7)
  {
    goto LABEL_13;
  }

LABEL_7:
  if (v11)
  {
    sub_1001E9EA8(v8, v9, v10);
  }

  else
  {
    objc_storeStrong((*(*(a1 + 32) + 8) + 40), a3);
    *a4 = 1;
  }

LABEL_9:
}

void sub_100065334(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_10006534C(uint64_t a1, uint64_t a2, void *a3, _BYTE *a4)
{
  v7 = a3;
  if ([v7 isHRMCapable] && objc_msgSend(v7, "routed"))
  {
    objc_storeStrong((*(*(a1 + 32) + 8) + 40), a3);
    *a4 = 1;
  }
}

void sub_1000654C0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_100065F14(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, ...)
{
  va_start(va, a30);
  _Block_object_dispose(va, 8);
  _Block_object_dispose((v30 - 160), 8);
  _Block_object_dispose((v30 - 112), 8);
  _Unwind_Resume(a1);
}

void sub_100065F48(uint64_t a1, void *a2, void *a3, _BYTE *a4)
{
  v16 = a2;
  v7 = a3;
  if (dword_1002F6778 <= 50 && (dword_1002F6778 != -1 || _LogCategory_Initialize()))
  {
    sub_1001EA06C();
  }

  if ([v7 inEarDisabled])
  {
    v8 = [*(*(a1 + 32) + 1240) objectForKeyedSubscript:v16];
    v9 = [v8 deviceAddress];
    v10 = *(*(a1 + 40) + 8);
    v11 = *(v10 + 40);
    *(v10 + 40) = v9;
  }

  if ([v7 inEar])
  {
    v12 = [*(*(a1 + 32) + 1240) objectForKeyedSubscript:v16];
    v13 = [v12 deviceAddress];
    v14 = *(*(a1 + 40) + 8);
    v15 = *(v14 + 40);
    *(v14 + 40) = v13;

    if ([v7 routingAction] == 1 || objc_msgSend(v7, "routingAction") == 2)
    {
      *a4 = 1;
    }
  }
}

void sub_100066098(uint64_t a1, void *a2, void *a3, _BYTE *a4)
{
  v17 = a2;
  v7 = a3;
  if (([*(a1 + 32) _bluetoothProductIDNoEarDetect:{objc_msgSend(v7, "productID")}] & 1) == 0 && objc_msgSend(v7, "primaryPlacement") == 1 && objc_msgSend(v7, "secondaryPlacement") == 1)
  {
    v8 = [*(*(a1 + 32) + 288) objectForKeyedSubscript:v17];
    if ([v8 mode] == 2)
    {
      v9 = [v7 deviceFlags];

      if (v9)
      {
        v10 = [v7 btAddressData];
        v11 = CUPrintNSDataAddress();
        v12 = *(*(a1 + 40) + 8);
        v13 = *(v12 + 40);
        *(v12 + 40) = v11;

        v14 = [v7 name];
        v15 = *(*(a1 + 48) + 8);
        v16 = *(v15 + 40);
        *(v15 + 40) = v14;

        *(*(*(a1 + 56) + 8) + 24) = [v7 productID];
        *a4 = 1;
      }
    }

    else
    {
    }
  }
}

void sub_1000661E4(uint64_t a1)
{
  v2 = +[AVSystemController sharedAVSystemController];
  v3 = [v2 attributeForKey:AVSystemController_PlayingSessionsDescriptionAttribute];

  *(*(a1 + 32) + 88) = [v3 count] != 0;
  if (dword_1002F6778 <= 30 && (dword_1002F6778 != -1 || _LogCategory_Initialize()))
  {
    sub_1001EA130();
  }

  v6[0] = _NSConcreteStackBlock;
  v6[1] = 3221225472;
  v6[2] = sub_1000662F8;
  v6[3] = &unk_1002B8848;
  v4 = *(a1 + 48);
  v5 = *(*(a1 + 32) + 368);
  v7 = *(a1 + 32);
  v8 = v4;
  dispatch_async(v5, v6);
}

void sub_1000662F8(uint64_t a1)
{
  if ([*(*(a1 + 32) + 184) callCountIncomingUnconnected] > 0 || (v10 = *(a1 + 32), (*(v10 + 88) & 1) == 0) && (objc_msgSend(*(v10 + 184), "activeCallCount") < 1 || (objc_msgSend(*(*(a1 + 32) + 1240), "objectForKeyedSubscript:", *(*(*(a1 + 40) + 8) + 40)), v11 = objc_claimAutoreleasedReturnValue(), v12 = objc_msgSend(v11, "routed"), v11, (v12 & 1) == 0)))
  {
    if ([*(a1 + 32) _smartRoutingShowBanner:1 withDevice:*(*(*(a1 + 48) + 8) + 40) andDeviceAddress:*(*(*(a1 + 40) + 8) + 40) andProductID:*(*(*(a1 + 56) + 8) + 24) andCentralContentItemTxt:@"Connected" andTimeout:0 andDeviceType:6.0])
    {
      v2 = [*(*(a1 + 32) + 224) objectForKeyedSubscript:*(*(*(a1 + 40) + 8) + 40)];
      if (!v2)
      {
        if (![*(a1 + 32) _isEligibleForPreemptiveBannerUponUnlock:*(*(*(a1 + 40) + 8) + 40)])
        {
          return;
        }

        v13 = [*(*(a1 + 32) + 1568) objectForKeyedSubscript:*(*(*(a1 + 40) + 8) + 40)];
        v3 = [v13 nearbyWxDevice];
        v4 = [v3 identifier];
        v5 = [v4 UUIDString];

        v6 = [*(*(a1 + 32) + 664) objectForKeyedSubscript:v5];
        *(*(a1 + 32) + 824) = 0;
        [v6 setPreemptiveBannerShown:1];
        v7 = [v6 setFirstPreemptiveBannerShown:1];
        if (dword_1002F6778 <= 30)
        {
          if (dword_1002F6778 != -1 || (v7 = _LogCategory_Initialize(), v7))
          {
            sub_1001EA188(v7, v8, v9);
          }
        }

        v2 = v13;
      }
    }
  }
}

void sub_1000665AC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1000665C4(uint64_t a1, uint64_t a2, void *a3, _BYTE *a4)
{
  v14 = a3;
  v6 = [v14 bleDevice];
  v7 = [v6 advertisementFields];

  v8 = CFDictionaryGetCFDataOfLength();
  if (v8)
  {
    if (dword_1002F6778 <= 30 && (dword_1002F6778 != -1 || _LogCategory_Initialize()))
    {
      LogPrintF(&dword_1002F6778, "[BTSmartRoutingDaemon _lastConnectIsWatchCheck:]_block_invoke", 30, "lastConnectIsWatchCheck comparing, Wx: %@, ND: %@", *(a1 + 32), v8);
    }

    v9 = [v8 bytes];
    v10 = [*(a1 + 32) bytes];
    if (*v10 == *(v9 + 3) && *(v10 + 2) == v9[5])
    {
      v12 = [v14 model];
      v13 = [v12 hasPrefix:@"Watch"];

      if (v13)
      {
        *(*(*(a1 + 40) + 8) + 24) = 1;
        *a4 = 1;
      }
    }
  }
}

id sub_100066F54(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = a1;
  if (dword_1002F6778 <= 30)
  {
    if (dword_1002F6778 != -1 || (a1 = _LogCategory_Initialize(), a1))
    {
      sub_1001EA3B8(a1, a2, a3);
    }
  }

  v6 = *(v3 + 32);
  v5 = v3 + 32;
  v4 = v6;
  if (v6[116])
  {
    v7 = [v4 isInAnyTipi];
    if (dword_1002F6778 <= 30 && (dword_1002F6778 != -1 || _LogCategory_Initialize()))
    {
      sub_1001EA3D4(v5, v7);
    }

    v8 = v7 | ~[*(*v5 + 1256) magnetConnected];
    v9 = *v5;
    if ((v8 & 1) == 0 && (*(v9 + 1536) & 1) == 0)
    {
      v10 = *(v9 + 1240);
      v12[0] = _NSConcreteStackBlock;
      v12[1] = 3221225472;
      v12[2] = sub_1000670A8;
      v12[3] = &unk_1002B8168;
      v12[4] = v9;
      [v10 enumerateKeysAndObjectsUsingBlock:v12];
      v9 = *v5;
    }

    return [v9 _cancelTriangleRecoveryTimer];
  }

  else
  {

    return [v4 _nearbyDeviceInfoCheck];
  }
}

void sub_1000670A8(uint64_t a1, void *a2, void *a3)
{
  v5 = a3;
  v6 = a2;
  v8 = [v5 otherTipiDeviceBTAddress];
  [*(a1 + 32) _updateNearbyDeviceState:v6 withAddress:v8 withEasyPairing:1 withState:3];

  if (*(*(a1 + 32) + 761))
  {
    v7 = 1;
  }

  else
  {
    v7 = 2;
  }

  [v5 setRoutingAction:v7];

  [*(a1 + 32) _postNotification:"com.apple.BluetoothServices.AudioRoutingChanged"];
}

void sub_1000672C0(uint64_t a1, uint64_t a2, void *a3, _BYTE *a4)
{
  v9 = [a3 model];
  v6 = [v9 hasPrefix:@"Watch"];
  if (v6)
  {
    if (dword_1002F6778 <= 30)
    {
      if (dword_1002F6778 != -1 || (v6 = _LogCategory_Initialize(), v6))
      {
        sub_1001EA460(v6, v7, v8);
      }
    }

    *(*(*(a1 + 32) + 8) + 24) = 1;
    *a4 = 1;
  }
}

void sub_100067368(uint64_t a1, void *a2, void *a3)
{
  v5 = a3;
  v6 = a2;
  v7 = [v5 otherTipiDeviceBTAddress];
  [*(a1 + 32) _updateNearbyDeviceState:v6 withAddress:v7 withEasyPairing:1 withState:3];

  [v5 setRoutingAction:2];
  [*(a1 + 32) _postNotification:"com.apple.BluetoothServices.AudioRoutingChanged"];
}

void sub_1000680AC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, ...)
{
  va_start(va, a16);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1000680E8(uint64_t a1)
{
  v1 = *(*(*(a1 + 40) + 8) + 40);
  if (!v1)
  {
    return;
  }

  if (dword_1002F6778 <= 30)
  {
    if (dword_1002F6778 != -1)
    {
LABEL_4:
      LogPrintF(&dword_1002F6778, "[BTSmartRoutingDaemon _proactivelyTakeOwnership]_block_invoke", 30, "ProactiveRouting: Skip taking ownership. %@", v1);
      goto LABEL_6;
    }

    if (_LogCategory_Initialize())
    {
      v1 = *(*(*(a1 + 40) + 8) + 40);
      goto LABEL_4;
    }
  }

LABEL_6:
  v3 = *(*(a1 + 32) + 472);
  if (v3)
  {
    v6 = v3;
    dispatch_source_cancel(v6);
    v4 = *(a1 + 32);
    v5 = *(v4 + 472);
    *(v4 + 472) = 0;
  }
}

void sub_1000685F0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, ...)
{
  va_start(va, a23);
  (*(a16 + 16))(a16, a2, a3, a4, a5, a6, a7, a8);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_100068644(void *a1)
{
  v1 = *(*(a1[6] + 8) + 40);
  if (!v1)
  {
    return;
  }

  if (dword_1002F6778 <= 30)
  {
    if (dword_1002F6778 != -1)
    {
LABEL_4:
      LogPrintF(&dword_1002F6778, "[BTSmartRoutingDaemon _proactivelyTakeOwnershipOfDevice:]_block_invoke", 30, "Proactive Routing to %@: Skip taking ownership. %@", a1[4], v1);
      goto LABEL_6;
    }

    if (_LogCategory_Initialize())
    {
      v1 = *(*(a1[6] + 8) + 40);
      goto LABEL_4;
    }
  }

LABEL_6:
  v3 = *(a1[5] + 472);
  if (v3)
  {
    v6 = v3;
    dispatch_source_cancel(v6);
    v4 = a1[5];
    v5 = *(v4 + 472);
    *(v4 + 472) = 0;
  }
}

void sub_1000694C0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, ...)
{
  va_start(va, a18);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1000694D8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = a1;
  if (dword_1002F6778 <= 90)
  {
    if (dword_1002F6778 != -1 || (a1 = _LogCategory_Initialize(), a1))
    {
      sub_1001EA95C(a1, a2, a3);
    }
  }

  ++*(*(v3 + 32) + 152);
  [*(v3 + 32) _setHighPriorityTag:*(v3 + 40) withHighPriority:0];
  v24 = objc_alloc_init(BTAudioRoutingResponse);
  v4 = [*(v3 + 48) objectForKey:@"audioRoutingRequestID"];
  [v24 setClientID:{objc_msgSend(v4, "unsignedIntValue")}];

  v5 = [*(v3 + 48) objectForKey:@"audioRoutingScore"];
  v6 = [v5 integerValue];

  v7 = [*(*(v3 + 32) + 224) objectForKeyedSubscript:*(v3 + 40)];
  v8 = [v7 audioStreamState];

  v9 = [*(v3 + 32) _arbitrationTimeout:*(v3 + 40) withScore:v6];
  if (v9)
  {
    v10 = 1;
  }

  else
  {
    v10 = 3;
  }

  [v24 setAction:v10];
  if (v9)
  {
    v11 = *(v3 + 40);
  }

  else
  {
    v11 = 0;
  }

  [v24 setDeviceAddress:v11];
  v12 = [v24 action];
  if (v12 > 5)
  {
    v13 = "?";
  }

  else
  {
    v13 = off_1002B90F8[v12];
  }

  v14 = [NSString stringWithUTF8String:v13];
  v15 = [NSString stringWithFormat:@"Relay message timeout, current Audio Session is %ld, tell MX to %@", v6, v14];
  [v24 setReason:v15];

  v16 = [v24 action];
  v17 = [*(*(v3 + 32) + 1240) objectForKeyedSubscript:*(v3 + 40)];
  [v17 setRoutingAction:v16];

  if (dword_1002F6778 <= 90 && (dword_1002F6778 != -1 || _LogCategory_Initialize()))
  {
    sub_1001EA978(v24, v8, v6);
  }

  v18 = [*(*(*(v3 + 56) + 8) + 40) audioRoutingResponse];

  if (v18)
  {
    v19 = *(v3 + 32);
    v20 = [*(*(*(v3 + 56) + 8) + 40) audioRoutingResponse];
    [v19 _respondRoutingRequest:v24 withResponseHandler:v20 wxAddress:*(v3 + 40)];
  }

  v21 = [*(*(*(v3 + 56) + 8) + 40) conduitMessageTimer];
  v22 = v21;
  if (v21)
  {
    dispatch_source_cancel(v21);
  }

  [*(*(*(v3 + 56) + 8) + 40) setConduitMessageTimer:0];
  [*(*(*(v3 + 56) + 8) + 40) setConduitMessageTicks:0];
  if ([*(*(v3 + 32) + 1288) hijackRelaySent])
  {
    if ([v24 action])
    {
      v23 = @"Timeout SR answered";
    }

    else
    {
      v23 = @"Timeout";
    }

    [*(*(v3 + 32) + 1288) setHijackAnswer:v23];
    [*(*(v3 + 32) + 1288) setHijackRoundTripTime:(*(v3 + 64) * 1000.0)];
    [*(*(v3 + 32) + 1288) setHijackContinuousTimeoutCount:{objc_msgSend(*(*(v3 + 32) + 1288), "hijackContinuousTimeoutCount") + 1}];
    [*(v3 + 32) submitHijackMetric:*(v3 + 40) withV1:1];
    [*(v3 + 32) _startRouteCheckTimer:*(v3 + 40) andType:5];
    [*(v3 + 32) _startRouteCheckTimer:*(v3 + 40) andType:6];
    [*(v3 + 32) submitRouteActivityMetric:*(v3 + 40) activity:@"Hijack_V1_RemoteTimeout"];
  }
}

uint64_t sub_1000699E0(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = v3;
  if (v3)
  {
    v10 = v3;
    if (dword_1002F6778 <= 90)
    {
      if (dword_1002F6778 != -1 || (v3 = _LogCategory_Initialize(), v4 = v10, v3))
      {
        v3 = sub_1001EAA10(v4);
        v4 = v10;
      }
    }

    v5 = *(a1 + 32);
    if (v5)
    {
      v6 = v5;
      v7 = objc_alloc_init(NSMutableDictionary);
      [v7 setObject:v6 forKey:@"audioRoutingRequestID"];
      if (dword_1002F6778 <= 90 && (dword_1002F6778 != -1 || _LogCategory_Initialize()))
      {
        sub_1001EAA50(v10);
      }

      v8 = [NSNumber numberWithInt:3];
      [v7 setObject:v8 forKey:@"audioRoutingHijackAnswer"];

      [*(a1 + 40) _relayConduitMessageSend:1 withOptions:v7 andWxAddress:*(a1 + 48) andOtherAddress:0];
      v4 = v10;
    }
  }

  return _objc_release_x1(v3, v4);
}

void sub_100069E84(uint64_t a1, void *a2, void *a3)
{
  v6 = a2;
  v5 = [a3 otherTipiDeviceBTAddress];

  if (v5 && ([*(*(a1 + 32) + 200) isEqualToString:v6] & 1) == 0)
  {
    [*(a1 + 32) _sendAudioCategory:v6 withAudioCategory:*(*(a1 + 32) + 600)];
  }
}

void sub_10006A294(uint64_t a1, void *a2, void *a3)
{
  v16 = a2;
  v5 = a3;
  v6 = [v5 otherTipiDeviceBTAddress];

  if (v6)
  {
    v7 = (a1 + 32);
    v8 = [*(a1 + 32) _myBluetoothAddressString];
    v9 = objc_alloc_init(NSMutableDictionary);
    [v9 setObject:v8 forKeyedSubscript:@"btAddress"];
    [v9 setObject:*(*(a1 + 32) + 696) forKeyedSubscript:@"btName"];
    v10 = [NSNumber numberWithInt:*(*(a1 + 32) + 1092)];
    [v9 setObject:v10 forKeyedSubscript:@"nearbyAudioScore"];

    v11 = [NSNumber numberWithUnsignedLongLong:*(a1 + 40)];
    [v9 setObject:v11 forKeyedSubscript:@"idleTime"];

    v13 = *(a1 + 48);
    v12 = (a1 + 48);
    if (v13 == 1)
    {
      [v9 setObject:&__kCFBooleanTrue forKeyedSubscript:@"newTipi"];
    }

    if (dword_1002F6778 <= 30 && (dword_1002F6778 != -1 || _LogCategory_Initialize()))
    {
      sub_1001EAB24(v5, v7, v12, v16);
    }

    v14 = *v7;
    v15 = [v5 otherTipiDeviceBTAddress];
    [v14 _relayConduitMessageSend:1 withOptions:v9 andWxAddress:v16 andOtherAddress:v15];
  }
}

uint64_t sub_10006A560(uint64_t a1, void *a2)
{
  v2 = a2;
  v3 = v2;
  if (dword_1002F6778 <= 30)
  {
    v5 = v2;
    if (dword_1002F6778 != -1 || (v2 = _LogCategory_Initialize(), v3 = v5, v2))
    {
      sub_1001EABE8();
      v3 = v5;
    }
  }

  return _objc_release_x1(v2, v3);
}

uint64_t sub_10006A7D8(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = v3;
  if (dword_1002F6778 <= 30)
  {
    v6 = v3;
    if (dword_1002F6778 != -1 || (v3 = _LogCategory_Initialize(), v4 = v6, v3))
    {
      sub_1001EACDC(a1, v6);
      v4 = v6;
    }
  }

  return _objc_release_x1(v3, v4);
}

uint64_t sub_10006A860(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = v3;
  if (dword_1002F6778 <= 30)
  {
    v6 = v3;
    if (dword_1002F6778 != -1 || (v3 = _LogCategory_Initialize(), v4 = v6, v3))
    {
      sub_1001EAD54(a1, v6);
      v4 = v6;
    }
  }

  return _objc_release_x1(v3, v4);
}

uint64_t sub_10006A9C8(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = v3;
  if (v3)
  {
    if (dword_1002F6778 <= 90)
    {
      v6 = v3;
      if (dword_1002F6778 != -1 || (v3 = _LogCategory_Initialize(), v4 = v6, v3))
      {
        v3 = sub_1001EADCC(v4);
        v4 = v6;
      }
    }
  }

  else
  {
    *(*(a1 + 32) + 480) = 1;
  }

  return _objc_release_x1(v3, v4);
}

void sub_10006AC74(id a1, NSError *a2)
{
  v2 = a2;
  v3 = v2;
  if (v2)
  {
    if (dword_1002F6778 <= 90)
    {
      v4 = v2;
      if (dword_1002F6778 != -1 || (v2 = _LogCategory_Initialize(), v3 = v4, v2))
      {
        v2 = sub_1001EAE4C(v3);
        v3 = v4;
      }
    }
  }

  _objc_release_x1(v2, v3);
}

uint64_t sub_10006ADE4(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = v3;
  if (v3)
  {
    if (dword_1002F6778 <= 90)
    {
      v6 = v3;
      if (dword_1002F6778 != -1 || (v3 = _LogCategory_Initialize(), v4 = v6, v3))
      {
        v3 = sub_1001EAE8C(v4);
        v4 = v6;
      }
    }
  }

  else
  {
    *(*(a1 + 32) + 480) = 1;
  }

  return _objc_release_x1(v3, v4);
}

void sub_10006AFB0(id a1, NSError *a2)
{
  v2 = a2;
  v3 = v2;
  if (v2)
  {
    if (dword_1002F6778 <= 90)
    {
      v4 = v2;
      if (dword_1002F6778 != -1 || (v2 = _LogCategory_Initialize(), v3 = v4, v2))
      {
        v2 = sub_1001EAF1C(v3);
        v3 = v4;
      }
    }
  }

  _objc_release_x1(v2, v3);
}

void sub_10006B648(uint64_t a1)
{
  v2 = *(a1 + 32);
  if (!v2)
  {
    return;
  }

  v3 = [v2 userInfo];
  Int64Ranged = CFDictionaryGetInt64Ranged();

  v5 = *(a1 + 40);
  v6 = *(v5 + 1384);
  if (Int64Ranged == v6)
  {
    return;
  }

  if (dword_1002F6778 <= 30)
  {
    if (dword_1002F6778 == -1)
    {
      v7 = _LogCategory_Initialize();
      v5 = *(a1 + 40);
      if (!v7)
      {
        goto LABEL_8;
      }

      v6 = *(v5 + 1384);
    }

    LogPrintF(&dword_1002F6778, "[BTSmartRoutingDaemon _setTotalCountIDSDevices:]_block_invoke", 30, "Total count of IDS devices updated: %d -> %d", v6, Int64Ranged);
    v5 = *(a1 + 40);
  }

LABEL_8:
  *(v5 + 1384) = Int64Ranged;
  v8 = *(a1 + 40);

  [v8 _prefsChanged];
}

void sub_10006BB78(void *a1, uint64_t a2, void *a3, _BYTE *a4)
{
  v9 = a3;
  v7 = [v9 identifier];
  v8 = [v7 isEqualToString:a1[4]];

  if (v8)
  {
    objc_storeStrong((*(a1[5] + 8) + 40), a3);
    *(*(a1[6] + 8) + 24) = [v9 lowBatteryBannerShownInWorkoutContext];
    *a4 = 1;
  }
}

void sub_10006BC24(uint64_t a1, char a2)
{
  v2 = *(*(a1 + 32) + 368);
  v3[0] = _NSConcreteStackBlock;
  v3[1] = 3221225472;
  v3[2] = sub_10006BCA4;
  v3[3] = &unk_1002B8950;
  v3[4] = *(a1 + 40);
  v4 = a2;
  dispatch_async(v2, v3);
}

void sub_10006BD90(uint64_t a1)
{
  v2 = [*(a1 + 32) workoutObserver];
  v3 = [v2 workoutActive];

  if (v3)
  {
    if (dword_1002F6778 <= 30)
    {
      if (dword_1002F6778 != -1 || (v4 = _LogCategory_Initialize(), v4))
      {
        sub_1001EB1D8(v4, v5, v6);
      }
    }

    [*(a1 + 32) _handleHRMSessionChanged:(*(*(a1 + 32) + 1265) & 1) == 0];
    v7 = *(a1 + 32);

    [v7 activeHRMDeviceUpdate];
  }
}

void sub_10006C210(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = a1;
  if (dword_1002F6778 <= 30)
  {
    if (dword_1002F6778 != -1 || (a1 = _LogCategory_Initialize(), a1))
    {
      sub_1001EB324(a1, a2, a3);
    }
  }

  [*(v3 + 32) _handleTipiScoreUpdate:12];
  v4 = *(*(v3 + 32) + 512);
  if (v4)
  {
    v7 = v4;
    dispatch_source_cancel(v7);
    v5 = *(v3 + 32);
    v6 = *(v5 + 512);
    *(v5 + 512) = 0;
  }
}

void sub_10006C3F4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = a1;
  if (dword_1002F6778 <= 30)
  {
    if (dword_1002F6778 != -1 || (a1 = _LogCategory_Initialize(), a1))
    {
      sub_1001EB380(a1, a2, a3);
    }
  }

  v4 = *(*(v3 + 32) + 520);
  if (v4)
  {
    v7 = v4;
    dispatch_source_cancel(v7);
    v5 = *(v3 + 32);
    v6 = *(v5 + 520);
    *(v5 + 520) = 0;
  }
}

_BYTE *sub_10006C5CC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = a1;
  if (dword_1002F6778 <= 30)
  {
    if (dword_1002F6778 != -1 || (a1 = _LogCategory_Initialize(), a1))
    {
      sub_1001EB3DC(a1, a2, a3);
    }
  }

  v4 = *(*(v3 + 32) + 1328);
  if (v4)
  {
    v5 = v4;
    dispatch_source_cancel(v5);
    v6 = *(v3 + 32);
    v7 = *(v6 + 1328);
    *(v6 + 1328) = 0;
  }

  result = *(v3 + 32);
  if (result[1016] == 1)
  {

    return [result _sendNowPlayingTemporaryOverrideIfNeeded:1];
  }

  return result;
}

void sub_10006C874(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = a1 + 32;
  v4 = *(a1 + 32);
  if (*(v5 + 8) == 1 || v4[273] >= 6)
  {
    [v4 _proactivelyTakeOwnership];
  }

  else if (dword_1002F6778 <= 30)
  {
    if (dword_1002F6778 != -1 || (v4 = _LogCategory_Initialize(), v4))
    {
      sub_1001EB51C(v4, a2, a3);
    }
  }

  v6 = *(*(a1 + 32) + 472);
  if (v6)
  {
    v9 = v6;
    dispatch_source_cancel(v9);
    v7 = *(a1 + 32);
    v8 = *(v7 + 472);
    *(v7 + 472) = 0;
  }
}

void sub_10006CA44(uint64_t a1, uint64_t a2, uint64_t a3)
{
  *(*(a1 + 32) + 385) = 1;
  v3 = *(*(a1 + 32) + 392);
  if (v3)
  {
    v4 = a1;
    v5 = v3;
    dispatch_source_cancel(v5);
    v6 = *(v4 + 32);
    v7 = *(v6 + 392);
    *(v6 + 392) = 0;
  }

  if (dword_1002F6778 <= 30)
  {
    if (dword_1002F6778 != -1 || (a1 = _LogCategory_Initialize(), a1))
    {
      sub_1001EB578(a1, a2, a3);
    }
  }
}

void sub_10006CBDC(uint64_t a1)
{
  v2 = [*(a1 + 32) workoutObserver];
  v3 = [v2 workoutActive];

  [*(a1 + 32) _takeOwnershipOnPhone:v3];
  v4 = *(*(a1 + 32) + 792);
  if (v4)
  {
    v7 = v4;
    dispatch_source_cancel(v7);
    v5 = *(a1 + 32);
    v6 = *(v5 + 792);
    *(v5 + 792) = 0;
  }
}

void sub_10006CFF8(uint64_t a1)
{
  [*(a1 + 32) _submitManualRouteDetectionMetric:*(a1 + 40)];
  [*(*(a1 + 32) + 1288) setManualRouteDestination:@"BT"];
  [*(a1 + 32) submitRouteActivityMetric:*(a1 + 40) activity:@"Manual_Route_BT"];
  v2 = [*(*(a1 + 32) + 1288) manualRouteChangeDetectionTimer];
  if (v2)
  {
    v3 = v2;
    dispatch_source_cancel(v2);
    v2 = v3;
  }
}

void sub_10006D174(uint64_t a1)
{
  v1 = *(*(a1 + 32) + 808);
  if (v1)
  {
    v5 = v1;
    dispatch_source_cancel(v5);
    v3 = *(a1 + 32);
    v4 = *(v3 + 808);
    *(v3 + 808) = 0;
  }
}

void sub_10006D2FC(uint64_t a1)
{
  [*(a1 + 32) _submitRouteChangeDetectionMetric:*(a1 + 40) andAnswer:*(a1 + 48)];
  v2 = *(*(a1 + 32) + 1008);
  if (v2)
  {
    v5 = v2;
    dispatch_source_cancel(v5);
    v3 = *(a1 + 32);
    v4 = *(v3 + 1008);
    *(v3 + 1008) = 0;
  }
}

id sub_10006D694(uint64_t a1)
{
  v2 = *(a1 + 48);
  if (v2 == 11)
  {
    [*(a1 + 32) _handleProactiveRoutingRouteCheck:*(a1 + 40)];
    v2 = *(a1 + 48);
  }

  v3 = *(a1 + 32);
  v4 = *(a1 + 40);

  return [v3 _submitRouteCheckMetric:v4 andType:v2];
}

void sub_10006DC14(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, ...)
{
  va_start(va, a30);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_10006DC5C(uint64_t a1, uint64_t a2, void *a3, _BYTE *a4)
{
  v22 = a3;
  v6 = [v22 bleDevice];
  v7 = [v6 advertisementFields];

  v8 = CFDictionaryGetCFDataOfLength();
  v9 = [v8 bytes];
  if (v8)
  {
    v10 = NSPrintF("%.6a", COERCE_DOUBLE([v8 bytes]));
  }

  else
  {
    v10 = 0;
  }

  v11 = *(a1 + 32);
  v12 = [v22 idsIdentifier];
  v13 = [v11 _nearbyMacAddressTranslate:v12];

  v14 = [v13 bytes];
  if (v13)
  {
    v15 = NSPrintF("%.6a", COERCE_DOUBLE([v13 bytes]));
  }

  else
  {
    v15 = 0;
  }

  if (dword_1002F6778 <= 30)
  {
    if (dword_1002F6778 != -1 || _LogCategory_Initialize())
    {
      sub_1001EB7C0(v22);
    }

    if (dword_1002F6778 <= 30 && (dword_1002F6778 != -1 || _LogCategory_Initialize()))
    {
      LogPrintF(&dword_1002F6778, "[BTSmartRoutingDaemon _startTipiHealing:withLastConnect:]_block_invoke", 30, "Evaluator: Tipi healing comparing, lastConnect: %@, NdAddr %@ transAddr %@", *(a1 + 40), v10, v15);
    }
  }

  if (v8 && ((v16 = [*(a1 + 40) bytes], *v16 == *(v9 + 3)) ? (v17 = *(v16 + 2) == v9[5]) : (v17 = 0), v18 = v10, v17) || v13 && ((v19 = objc_msgSend(*(a1 + 40), "bytes"), *v19 == *(v14 + 3)) ? (v20 = *(v19 + 2) == v14[5]) : (v20 = 0), v18 = v15, v20))
  {
    objc_storeStrong((*(*(a1 + 48) + 8) + 40), v18);
  }

  v21 = *(*(*(a1 + 48) + 8) + 40);
  if (v21)
  {
    if (dword_1002F6778 <= 30)
    {
      if (dword_1002F6778 == -1)
      {
        if (!_LogCategory_Initialize())
        {
          goto LABEL_31;
        }

        v21 = *(*(*(a1 + 48) + 8) + 40);
      }

      LogPrintF(&dword_1002F6778, "[BTSmartRoutingDaemon _startTipiHealing:withLastConnect:]_block_invoke", 30, "Evaluator: Tipi healing found via ND %@", v21);
    }

LABEL_31:
    *a4 = 1;
  }
}

id sub_10006E140(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = a1;
  v4 = *(*(a1 + 32) + 1512);
  if (v4)
  {
    v5 = v4;
    dispatch_source_cancel(v5);
    v6 = *(v3 + 32);
    v7 = *(v6 + 1512);
    *(v6 + 1512) = 0;
  }

  if (dword_1002F6778 <= 30)
  {
    if (dword_1002F6778 != -1 || (a1 = _LogCategory_Initialize(), a1))
    {
      sub_1001EBA00(a1, a2, a3);
    }
  }

  v8 = *(v3 + 32);

  return [v8 _update];
}

void sub_10006F788(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_10006F7A0(uint64_t a1, uint64_t a2, void *a3, _BYTE *a4)
{
  v7 = *(a1 + 32);
  v8 = a3;
  v10 = [v7 _getWxFWVersion:a2];
  v9 = [*(a1 + 32) _wxFwSupportsSiriHijack:?];
  LODWORD(v7) = [v8 siriHijackEligible];

  if (v7 && v9)
  {
    *(*(*(a1 + 40) + 8) + 24) = 1;
    *a4 = 1;
  }
}

void sub_10006FB68(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, ...)
{
  va_start(va, a16);
  _Block_object_dispose(va, 8);
  _Block_object_dispose((v16 - 80), 8);
  _Unwind_Resume(a1);
}

void sub_10006FB8C(uint64_t a1, void *a2, void *a3)
{
  v24 = a2;
  v6 = a3;
  if (([v6 isTipiHealingV2Eligible] & 1) == 0)
  {
    v7 = [v6 identifier];
    if (!v7)
    {
LABEL_26:

      goto LABEL_27;
    }

    v8 = [*(*(a1 + 32) + 1488) objectForKeyedSubscript:v7];
    v9 = [v8 bleDevice];
    v10 = [v9 advertisementFields];

    Int64Ranged = CFDictionaryGetInt64Ranged();
    v12 = CFDictionaryGetCFDataOfLength();
    v13 = CFDictionaryGetInt64Ranged();
    v14 = [*(a1 + 32) _getWxFWVersion:v24];
    v15 = v14;
    if (v13)
    {
      v16 = v14 == 0;
    }

    else
    {
      v16 = 1;
    }

    if (!v16 && [@"5A187" compare:v14 options:64] == -1)
    {
      v17 = [*(a1 + 32) _isMyAddress:v12];
      if ((v17 & 1) == 0)
      {
        if (dword_1002F6778 <= 30)
        {
          if (dword_1002F6778 != -1 || (v17 = _LogCategory_Initialize(), v17))
          {
            sub_1001EBA8C(v17, v18, v19);
          }
        }

        [v6 setIsTipiHealingV2Eligible:1];
        goto LABEL_25;
      }
    }

    if (dword_1002F6778 <= 30 && (dword_1002F6778 != -1 || _LogCategory_Initialize()))
    {
      sub_1001EBAA8();
    }

    if (Int64Ranged >= 2)
    {
      v20 = [v6 otherTipiDeviceBTAddress];

      if (!v20)
      {
        v21 = *(*(a1 + 40) + 8);
        v23 = *(v21 + 40);
        v22 = (v21 + 40);
        if (!v23)
        {
LABEL_20:
          objc_storeStrong(v22, a2);
          objc_storeStrong((*(*(a1 + 48) + 8) + 40), v12);
          goto LABEL_25;
        }

        if ([v6 inEar])
        {
          if (dword_1002F6778 <= 30 && (dword_1002F6778 != -1 || _LogCategory_Initialize()))
          {
            sub_1001EBB40(v24);
          }

          v22 = (*(*(a1 + 40) + 8) + 40);
          goto LABEL_20;
        }
      }
    }

LABEL_25:

    goto LABEL_26;
  }

LABEL_27:
}

uint64_t sub_100070CB0(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = v3;
  if (dword_1002F6778 > 90 || (v6 = v3, dword_1002F6778 == -1) && (v3 = _LogCategory_Initialize(), v4 = v6, !v3))
  {
    if (v4)
    {
      goto LABEL_6;
    }

    goto LABEL_5;
  }

  v3 = sub_1001EBD68(a1, v6);
  v4 = v6;
  if (!v6)
  {
LABEL_5:
    v7 = v4;
    v3 = [*(a1 + 48) setTipitableUpdated:1];
    v4 = v7;
  }

LABEL_6:

  return _objc_release_x1(v3, v4);
}

uint64_t sub_100070E5C(uint64_t result, uint64_t a2, uint64_t a3)
{
  v3 = result;
  if (dword_1002F6778 <= 90)
  {
    if (dword_1002F6778 != -1 || (result = _LogCategory_Initialize(), result))
    {
      result = sub_1001EBDB0(result, a2, a3);
    }
  }

  *(*(v3 + 32) + 1536) = 0;
  return result;
}

void sub_100070FA8(id a1, NSError *a2)
{
  v2 = a2;
  v3 = v2;
  if (dword_1002F6778 <= 30)
  {
    v4 = v2;
    if (dword_1002F6778 != -1 || (v2 = _LogCategory_Initialize(), v3 = v4, v2))
    {
      v2 = sub_1001EBE50(v3);
      v3 = v4;
    }
  }

  _objc_release_x1(v2, v3);
}

void sub_10007122C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = a1;
  if (dword_1002F6778 <= 30)
  {
    if (dword_1002F6778 != -1 || (a1 = _LogCategory_Initialize(), a1))
    {
      sub_1001EBEF0(a1, a2, a3);
    }
  }

  v4 = [*(v3 + 32) _arbitrationTimeout:*(v3 + 40) withScore:*(v3 + 48)];
  v5 = @"Rejected, buds stream state blocks hijack";
  if (v4)
  {
    v5 = @"Tipi Healing not complete, allowing device to hijack route";
  }

  v10 = v5;
  v6 = *(*(v3 + 32) + 1360);
  if (v6)
  {
    v7 = v6;
    dispatch_source_cancel(v7);
    v8 = *(v3 + 32);
    v9 = *(v8 + 1360);
    *(v8 + 1360) = 0;
  }

  [*(v3 + 32) _mediaRouteHijackResponseHandlerFor:*(v3 + 40) allowedToHijack:v4 withReason:v10];
}

void sub_100071918(uint64_t a1, void *a2, void *a3)
{
  v6 = a2;
  v5 = [a3 otherTipiDeviceBTAddress];

  if (v5 && ([*(*(a1 + 32) + 200) isEqualToString:v6] & 1) == 0)
  {
    [*(a1 + 32) _sendAudioCategory:v6 withAudioCategory:*(a1 + 40)];
  }
}

void sub_100071A68(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = *(v1 + 1568);
  v5[0] = _NSConcreteStackBlock;
  v5[1] = 3221225472;
  v5[2] = sub_1001E3384;
  v5[3] = &unk_1002B8A10;
  v4 = *(a1 + 40);
  v3 = *(a1 + 48);
  v5[4] = v1;
  *v7 = v3;
  *&v7[6] = *(a1 + 54);
  v8 = *(a1 + 62);
  v6 = v4;
  [v2 enumerateKeysAndObjectsUsingBlock:v5];
}

void *sub_1000724F0(void *result, uint64_t a2, uint64_t a3)
{
  v3 = result[4];
  if (*(v3 + 1384) < 3)
  {
    if (dword_1002F6778 <= 30)
    {
      if (dword_1002F6778 != -1)
      {
        return sub_1001EC164(result, a2, a3);
      }

      result = _LogCategory_Initialize();
      if (result)
      {
        return sub_1001EC164(result, a2, a3);
      }
    }
  }

  else
  {
    v4 = result;
    result = [*(v3 + 224) count];
    if (result)
    {
      if (dword_1002F6778 <= 30)
      {
        if (dword_1002F6778 != -1)
        {
          return sub_1001EC180(result, v5, v6);
        }

        result = _LogCategory_Initialize();
        if (result)
        {
          return sub_1001EC180(result, v5, v6);
        }
      }
    }

    else
    {
      if (dword_1002F6778 <= 30)
      {
        if (dword_1002F6778 != -1 || (result = _LogCategory_Initialize(), result))
        {
          sub_1001EC19C(result, v5, v6);
        }
      }

      *(v4[4] + 1460) = 1;
      [v4[4] _update];
      *(v4[4] + 64) = 11;
      [v4[4] _nearbyInfoActivityChanged];
      v7 = v4[4];

      return [v7 _watchRecoveryStartTimer];
    }
  }

  return result;
}

id sub_1000727D4(id result)
{
  v2 = *(result + 4);
  if ((*(v2 + 1536) & 1) == 0)
  {
    v3 = result;
    *(v2 + 1460) = 0;
    *(*(result + 4) + 64) = 3;
    [*(result + 4) _nearbyInfoActivityChanged];
    v4 = v3[4];

    return [v4 _update];
  }

  return result;
}

uint64_t sub_100072E64(uint64_t a1, uint64_t a2)
{

  return CFDictionaryGetInt64Ranged();
}

uint64_t sub_100072EA4(uint64_t a1, uint64_t a2)
{

  return CFDictionaryGetInt64Ranged();
}

uint64_t sub_100072EDC(uint64_t a1, uint64_t a2)
{

  return CFDictionaryGetInt64Ranged();
}

uint64_t sub_100072F44(uint64_t a1, uint64_t a2)
{

  return CFDictionaryGetInt64Ranged();
}

id sub_100073010(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{

  return [v8 _smartRoutingShowBanner:1 withDevice:v9 andDeviceAddress:v7 andProductID:a6 andCentralContentItemTxt:a7 andTimeout:0 andDeviceType:4.0];
}

id sub_100073098(void *a1, const char *a2)
{

  return [a1 setObject:0 forKeyedSubscript:v2];
}

id sub_1000730B0()
{
  v4 = *(v0 + 1488);
  v5 = *(v2 - 112);

  return [v4 setObject:v5 forKeyedSubscript:v1];
}

void sub_100073568(uint64_t a1)
{
  v2 = [*(a1 + 32) block];

  if (v2)
  {
    v3 = *(a1 + 32);
    v4 = *(v3 + 32);
    v8[0] = _NSConcreteStackBlock;
    v8[1] = 3221225472;
    v8[2] = sub_1000736C0;
    v8[3] = &unk_1002B6880;
    v8[4] = v3;
    dispatch_async(v4, v8);
  }

  v5 = +[NSNotificationCenter defaultCenter];
  v9 = @"IsNetworkAvailable";
  v6 = +[NSNumber numberWithBool:](NSNumber, "numberWithBool:", [*(a1 + 32) cachedIsNetworkUp]);
  v10 = v6;
  v7 = [NSDictionary dictionaryWithObjects:&v10 forKeys:&v9 count:1];
  [v5 postNotificationName:@"com.apple.bluetooth.services.BTNetworkMonitor.networkChanged" object:0 userInfo:v7];
}

void sub_1000736C0(uint64_t a1)
{
  v2 = [*(a1 + 32) block];
  v2[2](v2, [*(a1 + 32) cachedIsNetworkUp]);
}

void sub_1000737F4(uint64_t a1)
{
  v2 = [*(a1 + 32) evaluator];
  v3 = *(a1 + 40);

  if (v2 == v3)
  {
    v4 = [*(a1 + 32) isNetworkUp];
    v5 = *(a1 + 32);

    [v5 setCachedIsNetworkUp:v4];
  }
}

void sub_100073940(id a1)
{
  if (GestaltGetDeviceClass() != 7)
  {
    v1 = objc_alloc_init(AAContextManager);
    v2 = qword_1002FA0C0;
    qword_1002FA0C0 = v1;

    _objc_release_x1(v1, v2);
  }
}

void sub_100073AB4(uint64_t a1)
{
  [*(*(a1 + 32) + 40) invalidate];
  v2 = *(a1 + 32);
  v3 = *(v2 + 40);
  *(v2 + 40) = 0;

  [*(*(a1 + 32) + 16) invalidate];
  v4 = *(a1 + 32);
  v5 = *(v4 + 16);
  *(v4 + 16) = 0;

  [*(*(a1 + 32) + 32) removeAllObjects];
  v6 = *(a1 + 32);
  v7 = *(v6 + 32);
  *(v6 + 32) = 0;
}

void *sub_100073DE4(uint64_t a1, uint64_t a2)
{
  result = *(a1 + 32);
  if (result[5] == *(a1 + 40))
  {
    return [result _wxDeviceFound:a2];
  }

  return result;
}

void sub_100073E08(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = *(a1 + 40);
  v3 = *(v1 + 40);
  if (v3 == v2)
  {
    *(v1 + 40) = 0;
  }
}

void sub_100073E24(uint64_t a1, void *a2)
{
  v3 = a2;
  if (v3 && *(*(a1 + 32) + 40) == *(a1 + 40))
  {
    v6 = v3;
    if (dword_1002F6848 <= 90 && (dword_1002F6848 != -1 || _LogCategory_Initialize()))
    {
      sub_1001EC564(v6);
    }

    [*(a1 + 40) invalidate];
    v4 = *(a1 + 32);
    v5 = *(v4 + 40);
    *(v4 + 40) = 0;

    v3 = v6;
  }
}

void sub_100074050(id a1)
{
  if (dword_1002F6848 <= 90)
  {
    if (dword_1002F6848 != -1 || (a1 = _LogCategory_Initialize(), a1))
    {
      sub_1001EC5E4(a1, v1, v2);
    }
  }
}

void sub_10007409C(id a1)
{
  if (dword_1002F6848 <= 90)
  {
    if (dword_1002F6848 != -1 || (a1 = _LogCategory_Initialize(), a1))
    {
      sub_1001EC600(a1, v1, v2);
    }
  }
}

void sub_1000740E8(uint64_t a1, uint64_t a2, void *a3)
{
  v5 = a3;
  v7 = v5;
  if (dword_1002F6848 <= 30)
  {
    if (dword_1002F6848 != -1 || (v6 = _LogCategory_Initialize(), v5 = v7, v6))
    {
      sub_1001EC61C(a2, v5);
      v5 = v7;
    }
  }

  [*(a1 + 32) _contextSignalUpdated:v5 withFusedState:a2];
}

void sub_100074184(uint64_t a1, void *a2)
{
  v7 = a2;
  if (v7)
  {
    if (dword_1002F6848 <= 90 && (dword_1002F6848 != -1 || _LogCategory_Initialize()))
    {
      sub_1001EC67C(v7);
    }

    v3 = *(a1 + 40);
    if (v3)
    {
      (*(v3 + 16))(v3, v7);
    }

    [*(*(a1 + 32) + 16) invalidate];
    v4 = *(a1 + 32);
    v5 = *(v4 + 16);
    *(v4 + 16) = 0;
  }

  else
  {
    v6 = *(a1 + 40);
    if (v6)
    {
      (*(v6 + 16))(v6, 0);
    }

    if (dword_1002F6848 <= 30 && (dword_1002F6848 != -1 || _LogCategory_Initialize()))
    {
      sub_1001EC6BC(a1);
    }
  }
}

uint64_t sub_100074398(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = v3;
  if (!v3)
  {
    v6 = 0;
    v3 = [*(a1 + 32) setContextChangeFlags:{objc_msgSend(*(a1 + 40), "_generateContextChangedFlags:spl:", *(a1 + 48), *(a1 + 49))}];
    goto LABEL_7;
  }

  if (dword_1002F6848 <= 90)
  {
    v6 = v3;
    if (dword_1002F6848 != -1 || (v3 = _LogCategory_Initialize(), v4 = v6, v3))
    {
      v3 = sub_1001EC74C(v4);
LABEL_7:
      v4 = v6;
    }
  }

  return _objc_release_x1(v3, v4);
}

void sub_100074784(id a1)
{
  if (GestaltGetDeviceClass() != 7)
  {
    v1 = objc_alloc_init(AAManagedSettingsDaemon);
    v2 = qword_1002FA0D0;
    qword_1002FA0D0 = v1;

    _objc_release_x1(v1, v2);
  }
}

id sub_100074A58(uint64_t a1, xpc_object_t xdict)
{
  string = xpc_dictionary_get_string(xdict, _xpc_event_key_name);
  xpc_set_event();
  if (dword_1002F68B8 <= 30)
  {
    if (dword_1002F68B8 != -1 || (v4 = _LogCategory_Initialize(), v4))
    {
      v4 = sub_1001EC818(string);
    }

    if (dword_1002F68B8 <= 30)
    {
      if (dword_1002F68B8 != -1 || (v4 = _LogCategory_Initialize(), v4))
      {
        sub_1001EC858(v4, v5, v6);
      }
    }
  }

  [*(a1 + 32) _cleanUp];
  v7 = *(a1 + 32);

  return [v7 _scheduleCleanupAlarm];
}

void sub_100074ECC(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  if (dword_1002F68B8 <= 30 && (dword_1002F68B8 != -1 || _LogCategory_Initialize()))
  {
    LogPrintF(&dword_1002F68B8, "[AAManagedSettingsDaemon _managedSettingsListenerEnsureStarted]_block_invoke", 30, "Received effective settings change for event: %@, groups: %@", v5, v6);
  }

  v7 = *(a1 + 32);
  v8 = *(v7 + 32);
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_100074FEC;
  block[3] = &unk_1002B6CF0;
  block[4] = v7;
  v12 = v5;
  v13 = v6;
  v9 = v6;
  v10 = v5;
  dispatch_async(v8, block);
}

void sub_100075368(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  if ([a3 temporaryManagedPairedStatus] == 1)
  {
    if (dword_1002F68B8 <= 30 && (dword_1002F68B8 != -1 || _LogCategory_Initialize()))
    {
      sub_1001ECA98(v5);
    }

    [*(*(a1 + 32) + 16) unpairDeviceWithIdentifier:v5];
  }

  else if (dword_1002F68B8 <= 30 && (dword_1002F68B8 != -1 || _LogCategory_Initialize()))
  {
    sub_1001ECA58(v5);
  }
}

void sub_100075820(id a1)
{
  v1 = objc_alloc_init(AAChargingManager);
  v2 = qword_1002FA0E0;
  qword_1002FA0E0 = v1;

  _objc_release_x1(v1, v2);
}

void sub_1000767CC(uint64_t a1, unint64_t a2, void *a3)
{
  v7 = a3;
  if (!v7)
  {
    if (a2 >= 4)
    {
      v5 = 0;
    }

    else
    {
      v5 = 0x3000102u >> (8 * a2);
    }

    if (dword_1002F6928 <= 30 && (dword_1002F6928 != -1 || _LogCategory_Initialize()))
    {
      sub_1001EDA58(a1, v5 & 3);
    }

    v6 = +[AADeviceManagerDaemon sharedAADeviceManagerDaemon];
    [v6 updateDevice:*(a1 + 32) withOBCState:v5 & 3 deocTempDisabled:0];
    goto LABEL_9;
  }

  if ((sub_1001ED998() & 1) == 0)
  {
    v6 = v8;
LABEL_9:
  }
}

uint64_t sub_1000768B8(uint64_t a1, char a2, void *a3)
{
  v5 = a3;
  v6 = v5;
  if (!v5 && (a2 & 1) != 0)
  {
    v9 = 0;
    v7 = +[AADeviceManagerDaemon sharedAADeviceManagerDaemon];
    [v7 updateDevice:*(a1 + 32) withOBCState:*(a1 + 40) deocTempDisabled:0];
LABEL_4:

    v6 = v9;
    goto LABEL_8;
  }

  if (dword_1002F6928 <= 90)
  {
    v9 = v5;
    if (dword_1002F6928 != -1 || (v5 = _LogCategory_Initialize(), v6 = v9, v5))
    {
      sub_1001EDAF8();
      v7 = v10;
      goto LABEL_4;
    }
  }

LABEL_8:

  return _objc_release_x1(v5, v6);
}

void sub_100078AD8(id a1)
{
  if (GestaltGetDeviceClass() != 7)
  {
    v1 = objc_alloc_init(AAAccessoryUsageSummaryManager);
    v2 = qword_1002FA100;
    qword_1002FA100 = v1;

    _objc_release_x1(v1, v2);
  }
}

id sub_100078C24(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = a1;
  if (dword_1002F6998 <= 30)
  {
    if (dword_1002F6998 != -1 || (a1 = _LogCategory_Initialize(), a1))
    {
      sub_1001EE184(a1, a2, a3);
    }
  }

  v4 = *(v3 + 32);

  return [v4 _activate];
}

void sub_100078E70(id a1)
{
  if (dword_1002F6998 <= 30)
  {
    if (dword_1002F6998 != -1 || (a1 = _LogCategory_Initialize(), a1))
    {
      sub_1001EE1E0(a1, v1, v2);
    }
  }
}

void *sub_100078EBC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = *(a1 + 32);
  result = *(a1 + 40);
  if (v4 == result[1])
  {
    return [result _accessoryUsageSummaryMessageReceived:a3 forWxAddress:a2];
  }

  return result;
}

uint64_t sub_100078ED8(uint64_t a1, void *a2)
{
  v3 = a2;
  v5 = v3;
  if (*(a1 + 32) == *(*(a1 + 40) + 8))
  {
    if (v3)
    {
      v9 = v3;
      if (dword_1002F6998 <= 90 && (dword_1002F6998 != -1 || _LogCategory_Initialize()))
      {
        sub_1001EE1FC(v9);
      }

      [*(a1 + 32) invalidate];
      v6 = *(a1 + 40);
      v7 = *(v6 + 8);
      *(v6 + 8) = 0;

      goto LABEL_7;
    }

    if (dword_1002F6998 <= 30)
    {
      v9 = 0;
      if (dword_1002F6998 != -1 || (v3 = _LogCategory_Initialize(), v5 = 0, v3))
      {
        v3 = sub_1001EE23C(v3, v5, v4);
LABEL_7:
        v5 = v9;
      }
    }
  }

  return _objc_release_x1(v3, v5);
}

void sub_100079264(id a1)
{
  if (dword_1002F6998 <= 30)
  {
    if (dword_1002F6998 != -1 || (a1 = _LogCategory_Initialize(), a1))
    {
      sub_1001EE2B4(a1, v1, v2);
    }
  }
}

void sub_1000792B0(id a1)
{
  if (dword_1002F6998 <= 30)
  {
    if (dword_1002F6998 != -1 || (a1 = _LogCategory_Initialize(), a1))
    {
      sub_1001EE2D0(a1, v1, v2);
    }
  }
}

void sub_100079314(uint64_t a1, void *a2)
{
  v5 = a2;
  if (v5)
  {
    if (dword_1002F6998 <= 30 && (dword_1002F6998 != -1 || _LogCategory_Initialize()))
    {
      sub_1001EE2EC(v5);
    }

    [*(a1 + 32) invalidate];
    v3 = *(a1 + 40);
    v4 = *(v3 + 16);
    *(v3 + 16) = 0;
  }

  if (dword_1002F6998 <= 30 && (dword_1002F6998 != -1 || _LogCategory_Initialize()))
  {
    sub_1001EE32C(a1);
  }
}

void sub_100079D98(id a1)
{
  if (dword_1002F6998 <= 90)
  {
    if (dword_1002F6998 != -1 || (a1 = _LogCategory_Initialize(), a1))
    {
      sub_1001EE830(a1, v1, v2);
    }
  }
}

id sub_100079EE4(uint64_t a1)
{
  [*(a1 + 32) _aaControllerEnsureStopped];
  [*(a1 + 32) _accessoryDiscoveryEnsureStopped];
  [*(a1 + 32) _deregisterBackgroundSystemTaskScheduler];
  [*(a1 + 32) _deregisterDisconnectionNotification];
  [*(a1 + 32) _deregisterVolumeChangeNotification];
  v2 = *(a1 + 32);

  return [v2 _cleanupAirPodsUsageSummary];
}

void sub_10007A1D4(uint64_t a1)
{
  v2 = *(*(a1 + 32) + 48);
  state64 = 0;
  notify_get_state(v2, &state64);
  v3 = HIWORD(state64);
  v4 = NSPrintF("%012llx", state64 & 0xFFFFFFFFFFFFLL);
  [v4 UTF8String];
  v5 = NSDataWithHex();
  v6 = CUPrintNSDataAddress();

  [*(a1 + 32) _updateAirPodsDisconnectionSummary:v3 wxAddress:v6];
}

void sub_10007B74C(uint64_t a1)
{
  v2 = [*(a1 + 32) userInfo];
  v9 = [v2 objectForKeyedSubscript:@"address"];

  if (v9)
  {
    v5 = [*(a1 + 32) userInfo];
    v6 = [v5 objectForKeyedSubscript:@"audioCategory"];
    v7 = [v6 intValue];

    if (dword_1002F6998 <= 30 && (dword_1002F6998 != -1 || _LogCategory_Initialize()))
    {
      sub_1001EED5C(v7, v9);
    }

    v8 = [*(a1 + 40) _getUsageSummary:v9];
    [v8 _updateVolumeChange:v7];
  }

  else
  {
    sub_1001EEDC0(0, v3, v4);
  }
}

void sub_10007BB14(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, ...)
{
  va_start(va, a16);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t sub_10007BB48(uint64_t result)
{
  v1 = *(*(*(result + 32) + 8) + 40);
  if (v1 && dword_1002F6998 <= 90)
  {
    if (dword_1002F6998 != -1)
    {
      return LogPrintF(&dword_1002F6998, "[AAAccessoryUsageSummaryManager _updatemMagicPairingSummary:wxAddress:]_block_invoke", 90, "UpdatemMagicPairingSummary: Failed %@", v1);
    }

    v2 = result;
    result = _LogCategory_Initialize();
    if (result)
    {
      v1 = *(*(*(v2 + 32) + 8) + 40);
      return LogPrintF(&dword_1002F6998, "[AAAccessoryUsageSummaryManager _updatemMagicPairingSummary:wxAddress:]_block_invoke", 90, "UpdatemMagicPairingSummary: Failed %@", v1);
    }
  }

  return result;
}

void sub_10007BE84(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

id sub_10007BE9C(uint64_t a1, uint64_t a2, void *a3, _BYTE *a4)
{
  result = [a3 devicedConnected];
  if (result)
  {
    *(*(*(a1 + 32) + 8) + 24) = 1;
    *a4 = 1;
  }

  return result;
}

id sub_10007C074(uint64_t a1)
{
  v2 = +[BTSmartRoutingDaemon sharedBTSmartRoutingDaemon];
  v3 = *(a1 + 32);
  v4 = *(v3 + 96);
  *(v3 + 96) = v2;

  [*(a1 + 32) _nowPlayingControllerEnsureStarted];
  v5 = *(a1 + 32);

  return [v5 _loadLastStates];
}

void sub_10007CD70(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v7 = *(a1 + 32);
  v8 = *(v7 + 8);
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_10007CE3C;
  block[3] = &unk_1002B6CF0;
  v12 = v6;
  v13 = v5;
  v14 = v7;
  v9 = v5;
  v10 = v6;
  dispatch_async(v8, block);
}

void sub_10007CE3C(uint64_t a1)
{
  if (!*(a1 + 32))
  {
    v2 = *(a1 + 40);
    if (v2)
    {
      v3 = [v2 deviceLastPlayingDate];
      [v3 timeIntervalSince1970];
      *(*(a1 + 48) + 48) = v4;

      [*(a1 + 48) handlePlaybackStateChangedTo:{objc_msgSend(*(a1 + 48), "getSRNowPlayingPlaybackState:", objc_msgSend(*(a1 + 40), "playbackState"))}];
      v5 = *(a1 + 48);
      v6 = [*(a1 + 40) playbackQueue];
      [v5 handlePlaybackQueueChangedTo:v6];
    }
  }
}

id sub_10007D074(uint64_t a1)
{
  v2 = [*(a1 + 32) getSRNowPlayingPlaybackState:*(a1 + 40)];
  v3 = *(a1 + 32);

  return [v3 handlePlaybackStateChangedTo:v2];
}

id sub_10007D470(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = a1;
  if (dword_1002F6AD8 <= 30)
  {
    if (dword_1002F6AD8 != -1 || (a1 = _LogCategory_Initialize(), a1))
    {
      sub_1001EF21C(a1, a2, a3);
    }
  }

  v4 = *(v3 + 32);

  return [v4 _sfServiceStart];
}

void *sub_10007D54C(void *result, uint64_t a2, uint64_t a3)
{
  if ((*(result[4] + 24) & 1) == 0)
  {
    v4 = result;
    if (dword_1002F6AD8 <= 30)
    {
      if (dword_1002F6AD8 != -1 || (result = _LogCategory_Initialize(), result))
      {
        sub_1001EF238(result, a2, a3);
      }
    }

    *(v4[4] + 24) = 1;
    v5 = v4[4];

    return [v5 _invalidate];
  }

  return result;
}

void *sub_10007D848(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 32);
  result = *(a1 + 40);
  if (v3 == result[6])
  {
    return [result _handleSessionStarted:a2];
  }

  return result;
}

void *sub_10007D864(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = *(a1 + 32);
  result = *(a1 + 40);
  if (v4 == result[6])
  {
    return [result _handleSessionEnded:a2 error:a3];
  }

  return result;
}

uint64_t sub_10007D884(uint64_t a1, void *a2)
{
  v3 = a2;
  v5 = v3;
  if (*(a1 + 32) == *(*(a1 + 40) + 48))
  {
    if (v3)
    {
      v9 = v3;
      if (dword_1002F6AD8 <= 90 && (dword_1002F6AD8 != -1 || _LogCategory_Initialize()))
      {
        sub_1001EF28C(v9);
      }

      [*(*(a1 + 40) + 48) invalidate];
      v6 = *(a1 + 40);
      v7 = *(v6 + 48);
      *(v6 + 48) = 0;

      goto LABEL_7;
    }

    if (dword_1002F6AD8 <= 30)
    {
      v9 = 0;
      if (dword_1002F6AD8 != -1 || (v3 = _LogCategory_Initialize(), v5 = 0, v3))
      {
        v3 = sub_1001EF2CC(v3, v5, v4);
LABEL_7:
        v5 = v9;
      }
    }
  }

  return _objc_release_x1(v3, v5);
}

void sub_10007DB34(uint64_t a1, void *a2, void *a3, void *a4)
{
  v14 = a2;
  v7 = a3;
  v8 = a4;
  v9 = objc_retainBlock(*(*(a1 + 32) + 72));
  v12 = v9;
  if (v9)
  {
    (*(v9 + 16))(v9, v14, v7, v8);
  }

  else
  {
    if (dword_1002F6AD8 <= 90)
    {
      if (dword_1002F6AD8 != -1 || (v9 = _LogCategory_Initialize(), v9))
      {
        sub_1001EF410(v9, v10, v11);
      }
    }

    v13 = BTErrorF(4294960582, "No config handler");
    (*(v8 + 2))(v8, v13, 0, 0);
  }
}

void sub_10007DC44(uint64_t a1, void *a2, void *a3, void *a4)
{
  v14 = a2;
  v7 = a3;
  v8 = a4;
  v9 = objc_retainBlock(*(*(a1 + 32) + 80));
  v12 = v9;
  if (v9)
  {
    (*(v9 + 16))(v9, v14, v7, v8);
  }

  else
  {
    if (dword_1002F6AD8 <= 90)
    {
      if (dword_1002F6AD8 != -1 || (v9 = _LogCategory_Initialize(), v9))
      {
        sub_1001EF42C(v9, v10, v11);
      }
    }

    v13 = BTErrorF(4294960582, "No connect handler");
    (*(v8 + 2))(v8, v13, 0, 0);
  }
}

void sub_10007E140(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, ...)
{
  va_start(va, a16);
  (*(v16 + 16))(v16, a2, a3, a4, a5, a6, a7, a8);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t sub_10007E178(uint64_t result)
{
  v1 = *(*(*(result + 40) + 8) + 40);
  if (!v1)
  {
    return result;
  }

  v2 = result;
  if (dword_1002F6AD8 <= 90)
  {
    if (dword_1002F6AD8 == -1)
    {
      if (!_LogCategory_Initialize())
      {
        goto LABEL_7;
      }

      v1 = *(*(*(v2 + 40) + 8) + 40);
    }

    LogPrintF(&dword_1002F6AD8, "[BTShareAudioService _handleShareAudioRequest:responseHandler:]_block_invoke", 90, "### ShareAudio request failed: %{error}\n", v1);
  }

LABEL_7:
  v3 = *(*(v2 + 32) + 16);

  return v3();
}

void sub_10007E4A4(uint64_t a1, void *a2)
{
  v3 = a2;
  if (*(a1 + 32) == *(*(a1 + 40) + 96))
  {
    v4 = v3;
    if (v3 && dword_1002F6AD8 <= 90 && (dword_1002F6AD8 != -1 || _LogCategory_Initialize()))
    {
      sub_1001EF508(v4);
    }

    [*(a1 + 48) setObject:*(*(a1 + 40) + 16) forKeyedSubscript:@"btAd"];
    if (dword_1002F6AD8 <= 30 && (dword_1002F6AD8 != -1 || _LogCategory_Initialize()))
    {
      sub_1001EF548((a1 + 48));
    }

    (*(*(a1 + 56) + 16))();
    v3 = v4;
  }
}

unint64_t sub_10007E7C4(void *a1)
{
  v1 = a1;
  v2 = v1;
  if (!v1 || [v1 length] > 0x18)
  {
    goto LABEL_3;
  }

  v5 = [v2 UTF8String];
  v10 = 0;
  v9 = 0;
  v8 = 0;
  if (sscanf(v5, "%hhX:%hhX:%hhX:%hhX:%hhX:%hhX", &v8, &v8 + 1, &v8 + 2, &v8 + 3, &v9, &v9 + 1) == 6)
  {
    v3 = (v8 << 40) | (BYTE1(v8) << 32) | (BYTE2(v8) << 24) | (HIBYTE(v8) << 16) | (v9 << 8) | HIBYTE(v9);
    goto LABEL_4;
  }

  if (sscanf(v5, "%s %hhX:%hhX:%hhX:%hhX:%hhX:%hhX", &v10, &v8, &v8 + 1, &v8 + 2, &v8 + 3, &v9, &v9 + 1) == 7)
  {
    v7 = v10 != 1818391888 || *(&v10 + 3) != 6515052;
    v3 = (v7 << 48) | (v8 << 40) | (BYTE1(v8) << 32) | (BYTE2(v8) << 24) | (HIBYTE(v8) << 16) | (v9 << 8) | HIBYTE(v9);
  }

  else
  {
LABEL_3:
    v3 = 0;
  }

LABEL_4:

  return v3;
}

void sub_10007E9A8(id a1)
{
  v1 = objc_alloc_init(CBIDSManager);
  v2 = qword_1002FA110;
  qword_1002FA110 = v1;

  _objc_release_x1(v1, v2);
}

void sub_10007EBA8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, id location)
{
  objc_destroyWeak((v15 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_10007EBC4(uint64_t a1)
{
  v2 = sub_100005C14("CloudPairing");
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    v4[0] = 67109120;
    v4[1] = +[BTSystemConfiguration isBuddyComplete];
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEFAULT, "IDS Buddy State Callback : %i", v4, 8u);
  }

  if (+[BTSystemConfiguration isBuddyComplete])
  {
    WeakRetained = objc_loadWeakRetained((a1 + 32));
    [WeakRetained checkFirstUnlockForIDS];
  }
}

void sub_10007EE74(_Unwind_Exception *a1)
{
  objc_destroyWeak((v1 + 40));
  objc_destroyWeak((v2 - 48));
  _Unwind_Resume(a1);
}

void sub_10007EEA0(uint64_t a1)
{
  v2 = sub_100005C14("CloudPairing");
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 67109120;
    v7 = +[BTSystemConfiguration isFirstUnlocked];
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEFAULT, "First Unlock Callback: %i", buf, 8u);
  }

  v3 = [*(a1 + 32) cloudPairingQueue];
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_10007EFD8;
  block[3] = &unk_1002B9618;
  objc_copyWeak(&v5, (a1 + 40));
  dispatch_async(v3, block);

  objc_destroyWeak(&v5);
}

void sub_10007EFD8(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained initializeIDS];
}

void sub_10007F37C(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v7 = [*(a1 + 32) cloudPairingQueue];
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_10007F458;
  block[3] = &unk_1002B6CF0;
  v8 = *(a1 + 32);
  v12 = v6;
  v13 = v8;
  v14 = v5;
  v9 = v5;
  v10 = v6;
  dispatch_async(v7, block);
}

void sub_10007F458(uint64_t a1)
{
  if (*(a1 + 32))
  {
    v2 = sub_100005C14("CloudPairing");
    if (os_log_type_enabled(v2, OS_LOG_TYPE_ERROR))
    {
      sub_1001EF81C();
    }

    [*(a1 + 40) retryIDSSetup];
  }

  else
  {
    v3 = [*(a1 + 48) objectForKey:@"kCheckInVersion"];
    v4 = [*(a1 + 48) objectForKeyedSubscript:@"kPublicAddress"];
    v5 = [*(a1 + 48) objectForKeyedSubscript:@"kCachedLEDevices"];
    v6 = [*(a1 + 48) objectForKeyedSubscript:@"kSupportsVirtualAddress"];
    [*(a1 + 40) setSupportsVirtualAddress:{objc_msgSend(v6, "BOOLValue")}];

    v7 = sub_100005C14("CloudPairing");
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      v8 = [*(a1 + 40) supportsVirtualAddress];
      *buf = 67109120;
      LODWORD(v42) = v8;
      _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "MUC - supportsVirtualAddress %d", buf, 8u);
    }

    if (v4)
    {
      [*(a1 + 40) setPublicAddress:v4];
      v9 = sub_100005C14("CloudPairing");
      if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
      {
        v10 = [*(a1 + 40) publicAddress];
        *buf = 138477827;
        v42 = v10;
        _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEFAULT, "Received Public Address: %{private}@", buf, 0xCu);
      }

      v11 = [v3 isEqual:&off_1002CB7F8];
      v12 = sub_100005C14("CloudPairing");
      v13 = v12;
      if (v11)
      {
        if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 0;
          _os_log_impl(&_mh_execute_header, v13, OS_LOG_TYPE_DEFAULT, "BTCP XPC Version match!- Starting IDS Service Setup", buf, 2u);
        }

        v14 = +[NSMutableDictionary dictionary];
        [*(a1 + 40) setCPAddressMapping:v14];

        v15 = [CBPreferencesManager readUserPreference:@"AddressMapping"];

        if (v15)
        {
          v16 = [CBPreferencesManager readUserPreference:@"AddressMapping"];
          v17 = [v16 mutableCopy];
          [*(a1 + 40) setCPAddressMapping:v17];
        }

        v18 = [[IDSService alloc] initWithService:@"com.apple.private.alloy.icloudpairing"];
        [*(a1 + 40) setService:v18];

        v19 = *(a1 + 40);
        v20 = [v19 service];
        v21 = [v20 accounts];
        [v19 updateActiveAccount:v21];

        v22 = [*(a1 + 40) service];
        v23 = *(a1 + 40);
        v24 = [v23 cloudPairingQueue];
        [v22 addDelegate:v23 queue:v24];

        v25 = *(a1 + 40);
        v26 = [v25 service];
        v27 = [v26 devices];
        v28 = [v25 filteredDevicesForIDSDevices:v27];
        [*(a1 + 40) setAssociatedDevices:v28];

        v29 = sub_100005C14("CloudPairing");
        if (os_log_type_enabled(v29, OS_LOG_TYPE_DEFAULT))
        {
          v30 = [*(a1 + 40) associatedDevices];
          *buf = 138412290;
          v42 = v30;
          _os_log_impl(&_mh_execute_header, v29, OS_LOG_TYPE_DEFAULT, "MUC - associatedDevice %@", buf, 0xCu);
        }

        [*(a1 + 40) setIsReady:1];
        v31 = [*(a1 + 40) service];
        v13 = [v31 devices];

        [*(a1 + 40) setTotalCloudDeviceCount:{-[NSObject count](v13, "count") + 1}];
        v32 = +[NSNotificationCenter defaultCenter];
        v33 = &__NSArray0__struct;
        if (v13)
        {
          v33 = v13;
        }

        v34 = +[NSNumber numberWithInteger:](NSNumber, "numberWithInteger:", [*(a1 + 40) totalCloudDeviceCount]);
        v40[1] = v34;
        v35 = [NSDictionary dictionaryWithObjects:v40 forKeys:&v39 count:2];
        [v32 postNotificationName:@"BTTotalIDSDeviceCountChanged" object:0 userInfo:v35];

        objc_opt_class();
        LOBYTE(v34) = objc_opt_isKindOfClass();
        v36 = sub_100005C14("CloudPairing");
        v37 = v36;
        if (v34)
        {
          if (os_log_type_enabled(v36, OS_LOG_TYPE_DEFAULT))
          {
            *buf = 138412290;
            v42 = v5;
            _os_log_impl(&_mh_execute_header, v37, OS_LOG_TYPE_DEFAULT, "MUC - Validate cloud pairings from bluetoothd: %@", buf, 0xCu);
          }

          [*(a1 + 40) validateCloudPairing:v5];
        }

        else
        {
          if (os_log_type_enabled(v36, OS_LOG_TYPE_ERROR))
          {
            sub_1001EF91C();
          }
        }
      }

      else if (os_log_type_enabled(v12, OS_LOG_TYPE_FAULT))
      {
        sub_1001EF894();
      }
    }

    else
    {
      v38 = sub_100005C14("CloudPairing");
      if (os_log_type_enabled(v38, OS_LOG_TYPE_ERROR))
      {
        sub_1001EF98C();
      }

      [*(a1 + 40) retryIDSSetup];
    }
  }
}

id sub_10007FB48(uint64_t a1)
{
  v2 = sub_100005C14("CloudPairing");
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    *v4 = 0;
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEFAULT, "Retrying initializeIDS", v4, 2u);
  }

  return [*(a1 + 32) initializeIDS];
}

void sub_10008026C(uint64_t a1, void *a2)
{
  v3 = [a2 idsDevice];
  v4 = [v3 uniqueID];
  v5 = [*(a1 + 32) idsDevice];
  v6 = [v5 uniqueID];
  v7 = [v4 isEqualToString:v6];

  if (v7)
  {
    v8 = [*(a1 + 32) idsDevice];
    [v8 setNSUUID:0];

    [*(a1 + 32) setState:0];
    v9 = sub_100005C14("CloudPairing");
    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
    {
      v10 = [*(a1 + 32) idsDevice];
      v11 = [v10 nsuuid];
      v12 = [*(a1 + 32) idsDevice];
      v13 = [v12 uniqueID];
      v14 = *(a1 + 40);
      v15 = 138412802;
      v16 = v11;
      v17 = 2112;
      v18 = v13;
      v19 = 2112;
      v20 = v14;
      _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEFAULT, "Removing concurrent BT-UUID %@ from previously cloud paired device %@ as this device is cloud paired with %@", &v15, 0x20u);
    }

    [*(a1 + 48) removeObject:*(a1 + 32)];
  }
}

void sub_1000805D8(uint64_t a1, void *a2, uint64_t a3)
{
  v5 = a2;
  if (a3)
  {
    (*(*(a1 + 40) + 16))();
  }

  else
  {
    v6 = [*(a1 + 32) cloudPairingQueue];
    block[0] = _NSConcreteStackBlock;
    block[1] = 3221225472;
    block[2] = sub_1000806BC;
    block[3] = &unk_1002B6BB0;
    v7 = v5;
    v8 = *(a1 + 32);
    v9 = *(a1 + 40);
    v11 = v7;
    v12 = v8;
    v13 = v9;
    dispatch_async(v6, block);
  }
}

void sub_1000806BC(uint64_t a1)
{
  v2 = [*(a1 + 32) objectForKeyedSubscript:@"kPublicAddress"];

  if (v2)
  {
    v3 = [*(a1 + 32) objectForKeyedSubscript:@"kPublicAddress"];
    [*(a1 + 40) setPublicAddress:v3];
  }

  v4 = sub_100005C14("CloudPairing");
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    v5 = *(a1 + 32);
    *buf = 138412290;
    v13 = v5;
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "Reply for public address: %@", buf, 0xCu);
  }

  if (*(a1 + 48))
  {
    v6 = [*(a1 + 40) publicAddress];

    v7 = *(a1 + 48);
    if (v6)
    {
      (*(v7 + 16))(v7, 0);
    }

    else
    {
      v10 = NSLocalizedFailureErrorKey;
      v11 = @"Public Address Unavailable";
      v8 = [NSDictionary dictionaryWithObjects:&v11 forKeys:&v10 count:1];
      v9 = [NSError errorWithDomain:@"BTIDSErrorDomain" code:0 userInfo:v8];
      (*(v7 + 16))(v7, v9);
    }
  }
}

void sub_100080924(uint64_t a1)
{
  v5[0] = _NSConcreteStackBlock;
  v5[1] = 3221225472;
  v5[2] = sub_1000809B4;
  v5[3] = &unk_1002B68A8;
  v2 = *(a1 + 32);
  v3 = *(a1 + 40);
  v4 = *(a1 + 32);
  v6 = v3;
  v7 = v4;
  [v2 fetchPublicAddressWithCompletion:v5];
}

void sub_1000809B4(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = sub_100005C14("CloudPairing");
  v5 = v4;
  if (v3)
  {
    if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
    {
      sub_1001EF9C8();
    }
  }

  else
  {
    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
    {
      v6 = *(a1 + 32);
      *buf = 138412290;
      v13 = v6;
      _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "bluetoothd existing cloud pairings: %@", buf, 0xCu);
    }

    v7 = [*(a1 + 40) cloudPairingQueue];
    block[0] = _NSConcreteStackBlock;
    block[1] = 3221225472;
    block[2] = sub_100080B28;
    block[3] = &unk_1002B6D18;
    v9 = *(a1 + 32);
    v8 = v9.i64[0];
    v11 = vextq_s8(v9, v9, 8uLL);
    dispatch_async(v7, block);
  }
}