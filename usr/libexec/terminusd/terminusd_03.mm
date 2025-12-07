void sub_100042650(_BYTE *a1)
{
  v1 = a1;
  if (a1[248] != 1)
  {
    if (a1[112] == 2)
    {
      if (![a1 hasCompanionDatapath] || objc_msgSend(v1, "virtualInterface"))
      {
        if (*(v1 + 295))
        {
          return;
        }

        v4 = [v1 nrUUID];
        v5 = sub_100163A30(NRDLocalDevice, v4);

        if (v5)
        {
          v6 = v5[10];

          if (v6)
          {
            v7 = sub_100146654(v5, 1);
            v8 = [v1 localInterfaceName];
            [v7 setOutgoingInterfaceName:v8];

            v9 = [v1 remoteOuterEndpoint];
            [v7 setRemoteEndpoint:v9];

            [v7 setRequestChildlessSA:{objc_msgSend(v1, "hasCompanionDatapath") ^ 1}];
            [v7 setRandomizeLocalPort:1];
            v10 = sub_100147400(1, v5, 3);
            v39.receiver = v1;
            v39.super_class = NRLinkWiFi;
            objc_msgSendSuper2(&v39, "invalidateIKESessionForClass:", 3);
            [v1 setIkeClassDEstablished:0];
            v1[83] = 0;
            [v1 invalidateIKESession:v1 + 295];
            v39.receiver = 0;
            v39.super_class = &v39;
            v41 = 0;
            v40 = 0x2020000000;
            v11 = [NEIKEv2Session alloc];
            v12 = v5;
            v13 = sub_100146D34(0, 0);
            [v13 setMode:2];
            [v13 setReplayWindowSize:4];
            sub_100147008(v13, v12, 1);

            v14 = *(v1 + 1);
            v38[0] = _NSConcreteStackBlock;
            v38[1] = 3221225472;
            v38[2] = sub_100042D40;
            v38[3] = &unk_1001FAA10;
            v38[4] = &v39;
            v15 = [v11 initWithIKEConfig:v7 firstChildConfig:v13 sessionConfig:v10 queue:v14 ipsecInterface:objc_msgSend(v1 ikeSocketHandler:"virtualInterface") kernelSASessionName:v38 packetDelegate:{@"terminusIKE-WiFi-ClassC", 0}];
            v16 = *(v1 + 295);
            *(v1 + 295) = v15;

            if (*(v1 + 295))
            {
              sub_100040BCC(v1);
              v17 = *(v1 + 311);
              if (v17)
              {
                ++v17[9];
              }

              v18 = nr_absolute_time();
              v19 = *(v1 + 311);
              if (v19)
              {
                v19[5] = v18;
              }

              [v1 reportEvent:3015 detailsFormat:@"ClassC %@", *(v1 + 295)];
              [*(v1 + 295) connect];
            }

            else
            {
              sub_100042DA4(v1, *(v39.super_class + 6));
            }

            _Block_object_dispose(&v39, 8);

            goto LABEL_23;
          }

          v20 = _NRCopyLogObjectForNRUUID();
          IsLevelEnabled = _NRLogIsLevelEnabled();

          if (!IsLevelEnabled)
          {
LABEL_23:

            return;
          }

          v22 = _NRCopyLogObjectForNRUUID();
          v23 = [v1 copyDescription];
          _NRLogWithArgs(v22, 0, "%s%.30s:%-4d %@: Not starting classC IKE initiator session because we do not have keys %@", "", "[NRLinkWiFi setupIPsec]", 1022, v23, v5);
LABEL_22:

          goto LABEL_23;
        }

LABEL_32:
        v34 = _NRCopyLogObjectForNRUUID();
        v35 = _NRLogIsLevelEnabled();

        if (!v35)
        {
          goto LABEL_23;
        }

        v22 = _NRCopyLogObjectForNRUUID();
        v23 = [v1 copyDescription];
        _NRLogWithArgs(v22, 17, "%@: Not starting classC IKE initiator session because localDevice is missing", v23);
        goto LABEL_22;
      }

      v29 = sub_100040008();
      v30 = _NRLogIsLevelEnabled();

      if (v30)
      {
        v31 = sub_100040008();
        _NRLogWithArgs(v31, 16, "%s%.30s:%-4d ABORTING: Assertion Failed: (self.virtualInterface) != ((void*)0)", "", "[NRLinkWiFi setupIPsec]", 1009);
      }

      v1 = _os_log_pack_size();
      v5 = (&v36 - ((__chkstk_darwin() + 15) & 0xFFFFFFFFFFFFFFF0));
      v32 = __error();
      v33 = _os_log_pack_fill(v5, v1, *v32, &_mh_execute_header, "%{public}s Assertion Failed: (self.virtualInterface) != ((void*)0)");
      *v33 = 136446210;
      *(v33 + 4) = "[NRLinkWiFi setupIPsec]";
      sub_100040008();
      _NRLogAbortWithPack();
    }

    else
    {
      v24 = sub_100040008();
      v25 = _NRLogIsLevelEnabled();

      if (v25)
      {
        v26 = sub_100040008();
        _NRLogWithArgs(v26, 16, "%s%.30s:%-4d ABORTING: Assertion Failed: _ikev2Role == NRIKEv2RoleInitiator", "", "[NRLinkWiFi setupIPsec]", 1007);
      }

      v1 = _os_log_pack_size();
      v5 = (&v36 - ((__chkstk_darwin() + 15) & 0xFFFFFFFFFFFFFFF0));
      v27 = __error();
      v28 = _os_log_pack_fill(v5, v1, *v27, &_mh_execute_header, "%{public}s Assertion Failed: _ikev2Role == NRIKEv2RoleInitiator");
      *v28 = 136446210;
      *(v28 + 4) = "[NRLinkWiFi setupIPsec]";
      sub_100040008();
      _NRLogAbortWithPack();
    }

    __break(1u);
    goto LABEL_32;
  }

  objc_opt_self();
  if (qword_100228E88 != -1)
  {
    dispatch_once(&qword_100228E88, &stru_1001FA180);
  }

  v37 = qword_100228E80;
  v2 = [v1 localInterfaceName];
  v3 = [v1 localOuterEndpoint];
  sub_100016A08(v37, v1, v2, v3);
}

uint64_t sub_100042D40(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v9 = getpid();
  v10 = *(*(a1 + 32) + 8) + 24;

  return _NEHelperGetIKESocketWithResult(a3, a4, a5, v9, v10);
}

void sub_100042DA4(uint64_t a1, uint64_t a2)
{
  ++*(a1 + 259);
  if ([a1 subtype] == 103 || objc_msgSend(a1, "subtype") == 102 || objc_msgSend(a1, "subtype") == 104)
  {
    v4 = 1000000000;
  }

  else
  {
    v4 = 250000000;
  }

  if (*(a1 + 259) > 4u)
  {
    if (strerror_r(a2, __strerrbuf, 0x80uLL))
    {
      LOBYTE(__strerrbuf[0]) = 0;
    }

    if (qword_100228F90 != -1)
    {
      dispatch_once(&qword_100228F90, &stru_1001FAA30);
    }

    if (_NRLogIsLevelEnabled())
    {
      if (qword_100228F90 != -1)
      {
        dispatch_once(&qword_100228F90, &stru_1001FAA30);
      }

      v7 = qword_100228F88;
      v8 = [a1 copyDescription];
      _NRLogWithArgs(v7, 17, "%@ IKE session creation hit max retries after error: [%d] %s", v8, a2, __strerrbuf);
    }

    [a1 cancelWithReason:@"IKE session creation hit max retries"];
  }

  else
  {
    if (a2 == 2 || a2 == 51)
    {
      if (strerror_r(a2, __strerrbuf, 0x80uLL))
      {
        LOBYTE(__strerrbuf[0]) = 0;
      }

      if (qword_100228F90 != -1)
      {
        dispatch_once(&qword_100228F90, &stru_1001FAA30);
      }

      if (_NRLogIsLevelEnabled())
      {
        if (qword_100228F90 != -1)
        {
          dispatch_once(&qword_100228F90, &stru_1001FAA30);
        }

        v5 = qword_100228F88;
        v6 = [a1 copyDescription];
        _NRLogWithArgs(v5, 16, "%s%.30s:%-4d %@ IKE session creation retry %u after error: [%d] %s", "", "[NRLinkWiFi retrySetupIPsec:]", 272, v6, *(a1 + 259), a2, __strerrbuf);
      }
    }

    else
    {
      if (strerror_r(a2, __strerrbuf, 0x80uLL))
      {
        LOBYTE(__strerrbuf[0]) = 0;
      }

      if (qword_100228F90 != -1)
      {
        dispatch_once(&qword_100228F90, &stru_1001FAA30);
      }

      if (_NRLogIsLevelEnabled())
      {
        if (qword_100228F90 != -1)
        {
          dispatch_once(&qword_100228F90, &stru_1001FAA30);
        }

        v9 = qword_100228F88;
        v10 = [a1 copyDescription];
        _NRLogWithArgs(v9, 17, "%@ IKE session creation retry %u after error: [%d] %s", v10, *(a1 + 259), a2, __strerrbuf);
      }
    }

    [a1 reportEvent:3026];
    objc_initWeak(__strerrbuf, a1);
    v11 = dispatch_time(0, v4);
    v12 = [a1 queue];
    block[0] = _NSConcreteStackBlock;
    block[1] = 3221225472;
    block[2] = sub_1000431BC;
    block[3] = &unk_1001FC730;
    objc_copyWeak(&v14, __strerrbuf);
    dispatch_after(v11, v12, block);

    objc_destroyWeak(&v14);
    objc_destroyWeak(__strerrbuf);
  }
}

void sub_1000431BC(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  if (WeakRetained)
  {
    v3 = WeakRetained;
    v2 = [WeakRetained state] == 255;
    WeakRetained = v3;
    if (!v2)
    {
      sub_100042650(v3);
      WeakRetained = v3;
    }
  }
}

void sub_100043214(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  if (WeakRetained)
  {
    WeakRetained[249] = 0;
    v2 = WeakRetained;
    sub_100042448(WeakRetained);
    WeakRetained = v2;
  }
}

char *sub_100043264(char *result)
{
  if (!result)
  {
    return result;
  }

  v1 = result;
  if (!objc_opt_class())
  {
    v2 = _NRCopyLogObjectForNRUUID();
    IsLevelEnabled = _NRLogIsLevelEnabled();

    if (IsLevelEnabled)
    {
      v4 = _NRCopyLogObjectForNRUUID();
      v5 = [v1 copyDescription];
      _NRLogWithArgs(v4, 0, "%s%.30s:%-4d %@: SymptomPresentationFeed.framework not present, not starting NOI tracking.", "", "[NRLinkWiFi startSymptomsNOIManagerTracking]", 571, v5);
    }
  }

  if (*(v1 + 303))
  {
    goto LABEL_8;
  }

  v6 = objc_alloc_init(NWNetworkOfInterestManager);
  v7 = *(v1 + 303);
  *(v1 + 303) = v6;

  v8 = *(v1 + 303);
  if (v8)
  {
    v9 = v8;
    v10 = [v1 queue];
    [v9 setQueue:v10];

    [*(v1 + 303) setDelegate:v1];
LABEL_8:
    v11 = nr_absolute_time();
    v12 = *(v1 + 311);
    if (v12)
    {
      *(v12 + 112) = v11;
      v13 = *(v1 + 311);
      if (v13)
      {
        ++v13[13];
      }
    }

    else
    {
      v13 = 0;
    }

    v14 = *(v1 + 303);

    return [v14 trackNOIAnyForInterfaceType:1 options:0];
  }

  if (qword_100228F90 != -1)
  {
    dispatch_once(&qword_100228F90, &stru_1001FAA30);
  }

  result = _NRLogIsLevelEnabled();
  if (result)
  {
    if (qword_100228F90 != -1)
    {
      dispatch_once(&qword_100228F90, &stru_1001FAA30);
    }

    v15 = qword_100228F88;

    return _NRLogWithArgs(v15, 17, "[[NWNetworkOfInterestManager alloc] init] failed");
  }

  return result;
}

void sub_1000434AC(uint64_t a1, int a2)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  if (WeakRetained)
  {
    v9 = WeakRetained;
    v4 = _NRCopyLogObjectForNRUUID();
    if (a2)
    {
      IsLevelEnabled = _NRLogIsLevelEnabled();

      WeakRetained = v9;
      if (!IsLevelEnabled)
      {
        goto LABEL_8;
      }

      v6 = _NRCopyLogObjectForNRUUID();
      v7 = [v9 copyDescription];
      _NRLogWithArgs(v6, 0, "%s%.30s:%-4d %@: Received response to notify payloads", "", "[NRLinkWiFi sendNotifyPayload]_block_invoke", 1278, v7);
    }

    else
    {
      v8 = _NRLogIsLevelEnabled();

      WeakRetained = v9;
      if (!v8)
      {
        goto LABEL_8;
      }

      v6 = _NRCopyLogObjectForNRUUID();
      v7 = [v9 copyDescription];
      _NRLogWithArgs(v6, 16, "%s%.30s:%-4d %@: Did not receive response to notify payloads", "", "[NRLinkWiFi sendNotifyPayload]_block_invoke", 1280, v7);
    }

    WeakRetained = v9;
  }

LABEL_8:
}

void sub_1000435D0(uint64_t a1, void *a2)
{
  v3 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v5 = WeakRetained;
  if (WeakRetained && [WeakRetained state] != 255)
  {
    if (v3)
    {
      v6 = *(v5 + 295);
      v7 = [v3 dataUsingEncoding:4];
      v8 = [[NEIKEv2PrivateNotify alloc] initWithNotifyStatus:48607 notifyData:v7];
      v9 = _NRCopyLogObjectForNRUUID();
      IsLevelEnabled = _NRLogIsLevelEnabled();

      if (IsLevelEnabled)
      {
        v11 = _NRCopyLogObjectForNRUUID();
        v12 = [v5 copyDescription];
        _NRLogWithArgs(v11, 0, "%s%.30s:%-4d %@: Sending IDS device ID to peer", "", "[NRLinkWiFi getOrSendIDSDeviceID]_block_invoke", 1229, v12);
      }

      v21 = v8;
      v13 = [NSArray arrayWithObjects:&v21 count:1];
      v14 = [v5 queue];
      v19[0] = _NSConcreteStackBlock;
      v19[1] = 3221225472;
      v19[2] = sub_100043874;
      v19[3] = &unk_1001FC018;
      objc_copyWeak(&v20, (a1 + 32));
      [v6 sendPrivateNotifies:v13 maxRetries:10 retryIntervalInMilliseconds:1000 callbackQueue:v14 callback:v19];

      objc_destroyWeak(&v20);
    }

    else
    {
      v15 = _NRCopyLogObjectForNRUUID();
      v16 = _NRLogIsLevelEnabled();

      if (v16)
      {
        v17 = _NRCopyLogObjectForNRUUID();
        v18 = [v5 copyDescription];
        _NRLogWithArgs(v17, 16, "%s%.30s:%-4d %@: No IDS Device ID to send to peer", "", "[NRLinkWiFi getOrSendIDSDeviceID]_block_invoke", 1220, v18);
      }
    }
  }
}

void sub_100043874(uint64_t a1, int a2)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  if (WeakRetained)
  {
    v9 = WeakRetained;
    v4 = _NRCopyLogObjectForNRUUID();
    if (a2)
    {
      IsLevelEnabled = _NRLogIsLevelEnabled();

      WeakRetained = v9;
      if (!IsLevelEnabled)
      {
        goto LABEL_8;
      }

      v6 = _NRCopyLogObjectForNRUUID();
      v7 = [v9 copyDescription];
      _NRLogWithArgs(v6, 0, "%s%.30s:%-4d %@: Received response to IDS device ID notify payload", "", "[NRLinkWiFi getOrSendIDSDeviceID]_block_invoke_2", 1240, v7);
    }

    else
    {
      v8 = _NRLogIsLevelEnabled();

      WeakRetained = v9;
      if (!v8)
      {
        goto LABEL_8;
      }

      v6 = _NRCopyLogObjectForNRUUID();
      v7 = [v9 copyDescription];
      _NRLogWithArgs(v6, 16, "%s%.30s:%-4d %@: Did not receive response to IDS device ID notify payload", "", "[NRLinkWiFi getOrSendIDSDeviceID]_block_invoke_2", 1242, v7);
    }

    WeakRetained = v9;
  }

LABEL_8:
}

void sub_100043BA4(_Unwind_Exception *a1)
{
  objc_destroyWeak((v1 + 32));
  objc_destroyWeak((v2 - 56));
  _Unwind_Resume(a1);
}

void sub_100043BC8(uint64_t a1, int a2)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  if (WeakRetained)
  {
    v14 = WeakRetained;
    v4 = [WeakRetained state] == 255;
    WeakRetained = v14;
    if (!v4)
    {
      v14[83] = 0;
      if (!a2)
      {
        v10 = _NRCopyLogObjectForNRUUID();
        IsLevelEnabled = _NRLogIsLevelEnabled();

        if (IsLevelEnabled)
        {
          v12 = _NRCopyLogObjectForNRUUID();
          v13 = [v14 copyDescription];
          _NRLogWithArgs(v12, 0, "%s%.30s:%-4d %@: peer is NOT available", "", "[NRLinkWiFi checkPeerAvailabilityWithForceAggressive:]_block_invoke", 762, v13);
        }

        [v14 cancelWithReason:@"Dead Peer Detection"];
        goto LABEL_11;
      }

      v5 = *(v14 + 311);
      if (v5)
      {
        ++v5[16];
      }

      v6 = _NRCopyLogObjectForNRUUID();
      v7 = _NRLogIsLevelEnabled();

      WeakRetained = v14;
      if (v7)
      {
        v8 = _NRCopyLogObjectForNRUUID();
        v9 = [v14 copyDescription];
        _NRLogWithArgs(v8, 0, "%s%.30s:%-4d %@: peer is available", "", "[NRLinkWiFi checkPeerAvailabilityWithForceAggressive:]_block_invoke", 760, v9);

LABEL_11:
        WeakRetained = v14;
      }
    }
  }
}

void sub_100043E38(uint64_t a1)
{
  if (!a1 || *(a1 + 271) == -1)
  {
    return;
  }

  if (!&_symptom_new)
  {
    v8 = _NRCopyLogObjectForNRUUID();
    IsLevelEnabled = _NRLogIsLevelEnabled();

    if (!IsLevelEnabled)
    {
      return;
    }

    v17 = _NRCopyLogObjectForNRUUID();
    v10 = [a1 copyDescription];
    _NRLogWithArgs(v17, 16, "%s%.30s:%-4d %@: SymptomReporterFramework not present, skipping.", "", "[NRLinkWiFi stopSymptomsMonitor]", 673, v10);

    goto LABEL_29;
  }

  if ([a1 hasCompanionDatapath])
  {
    [a1 virtualInterface];
    v2 = NEVirtualInterfaceCopyName();
    if (v2)
    {
      goto LABEL_6;
    }

LABEL_16:
    v11 = _NRCopyLogObjectForNRUUID();
    v12 = _NRLogIsLevelEnabled();

    if (v12)
    {
      v13 = _NRCopyLogObjectForNRUUID();
      v14 = [a1 copyDescription];
      _NRLogWithArgs(v13, 17, "%@: failed to send stop symptoms, since no interface found", v14);
    }

    v15 = 0;
    goto LABEL_30;
  }

  v2 = [a1 localInterfaceName];
  if (!v2)
  {
    goto LABEL_16;
  }

LABEL_6:
  v17 = v2;
  if (qword_100229278 != -1)
  {
    dispatch_once(&qword_100229278, &stru_1001FC410);
  }

  if (!symptom_new())
  {
    if (qword_100228F90 != -1)
    {
      dispatch_once(&qword_100228F90, &stru_1001FAA30);
    }

    if (_NRLogIsLevelEnabled())
    {
      if (qword_100228F90 != -1)
      {
        dispatch_once(&qword_100228F90, &stru_1001FAA30);
      }

      _NRLogWithArgs(qword_100228F88, 17, "symptom_new failed");
    }

    goto LABEL_29;
  }

  [v17 length];
  [v17 UTF8String];
  symptom_set_additional_qualifier();
  v3 = symptom_send();
  notify_cancel(*(a1 + 271));
  *(a1 + 271) = -1;
  v4 = _NRCopyLogObjectForNRUUID();
  if (v3)
  {
    v5 = _NRLogIsLevelEnabled();

    if (v5)
    {
      v6 = _NRCopyLogObjectForNRUUID();
      v7 = [a1 copyDescription];
      _NRLogWithArgs(v6, 17, "%@: failed to send symptom to stop link monitoring", v7);
LABEL_28:
    }
  }

  else
  {
    v16 = _NRLogIsLevelEnabled();

    if (v16)
    {
      v6 = _NRCopyLogObjectForNRUUID();
      v7 = [a1 copyDescription];
      _NRLogWithArgs(v6, 0, "%s%.30s:%-4d %@: successfully sent symptom to stop link monitoring on interface: %@", "", "[NRLinkWiFi stopSymptomsMonitor]", 705, v7, v17);
      goto LABEL_28;
    }
  }

LABEL_29:
  v15 = v17;
LABEL_30:
}

void sub_100044684(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, id location)
{
  objc_destroyWeak((v20 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_1000446AC(uint64_t a1, uint64_t a2)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  if (WeakRetained)
  {
    v12 = WeakRetained;
    if ([WeakRetained state] == 255)
    {
      v4 = _NRCopyLogObjectForNRUUID();
      IsLevelEnabled = _NRLogIsLevelEnabled();

      WeakRetained = v12;
      if (!IsLevelEnabled)
      {
        goto LABEL_10;
      }

      v6 = _NRCopyLogObjectForNRUUID();
      v7 = [v12 copyDescription];
      _NRLogWithArgs(v6, 0, "%s%.30s:%-4d %@: Ignoring notify update as link is cancelled", "", "[NRLinkWiFi startSymptomsMonitor]_block_invoke", 641, v7);
    }

    else if (*(v12 + 271) == a2)
    {
      [v12 reportEvent:11004 detailsFormat:@"#%u", ++*(v12 + 267)];
      [v12 checkPeerAvailabilityWithForceAggressive:0];
    }

    else
    {
      v8 = _NRCopyLogObjectForNRUUID();
      v9 = _NRLogIsLevelEnabled();

      WeakRetained = v12;
      if (!v9)
      {
        goto LABEL_10;
      }

      v10 = _NRCopyLogObjectForNRUUID();
      v11 = [v12 copyDescription];
      _NRLogWithArgs(v10, 0, "%s%.30s:%-4d %@: Ignoring notify update (%d != %d)", "", "[NRLinkWiFi startSymptomsMonitor]_block_invoke", 647, v11, *(v12 + 271), a2);
    }

    WeakRetained = v12;
  }

LABEL_10:
}

void sub_100045068(uint64_t a1)
{
  if (a1)
  {
    v2 = sub_100163A30(NRDLocalDevice, *(a1 + 32));
    v3 = objc_alloc_init(NRPairingParameters);
    v4 = [a1 localInterfaceName];
    if (v3)
    {
      objc_storeStrong(&v3->_localInterfaceName, v4);
    }

    v5 = [a1 localOuterEndpoint];
    if (v3)
    {
      objc_storeStrong(&v3->_localEndpoint, v5);
    }

    v6 = [a1 remoteOuterEndpoint];
    v7 = v6;
    if (v3)
    {
      objc_storeStrong(&v3->_remoteEndpoint, v6);

      v3->_isResponder = *(a1 + 248);
      v3->_serializeIKESessions = 1;
      v3->_deferIKESessionInvalidation = *(a1 + 248);
    }

    else
    {
    }

    objc_initWeak(&location, a1);
    v8 = sub_100012448([NRPairingClient alloc], *(a1 + 8), *(a1 + 32), &v3->super.isa);
    objc_initWeak(&from, v8);
    v17[0] = _NSConcreteStackBlock;
    v17[1] = 3221225472;
    v17[2] = sub_100045AD0;
    v17[3] = &unk_1001FA998;
    objc_copyWeak(&v18, &location);
    objc_copyWeak(&v19, &from);
    v9 = v17;
    v10 = v9;
    if (v8 && (*(v8 + 10) & 1) == 0)
    {
      v11 = objc_retainBlock(v9);
      v12 = v8[18];
      v8[18] = v11;
    }

    sub_1000127C0(v8);
    [a1 setPairingClient:v8];
    v13 = _NRCopyLogObjectForNRUUID();
    IsLevelEnabled = _NRLogIsLevelEnabled();

    if (IsLevelEnabled)
    {
      v15 = _NRCopyLogObjectForNRUUID();
      v16 = [a1 copyDescription];
      _NRLogWithArgs(v15, 0, "%s%.30s:%-4d %@: initiated pairing with %@", "", "[NRLinkWiFi initiatePairing]", 456, v16, v2);
    }

    objc_destroyWeak(&v19);
    objc_destroyWeak(&v18);
    objc_destroyWeak(&from);

    objc_destroyWeak(&location);
  }
}

void sub_10004530C(uint64_t a1)
{
  if (!a1)
  {
    return;
  }

  v2 = _NRCopyLogObjectForNRUUID();
  IsLevelEnabled = _NRLogIsLevelEnabled();

  if (IsLevelEnabled)
  {
    v4 = _NRCopyLogObjectForNRUUID();
    v5 = [a1 copyDescription];
    _NRLogWithArgs(v4, 0, "%s%.30s:%-4d %@: initiating connection with peer", "", "[NRLinkWiFi initiateConnection]", 461, v5);
  }

  if (*(a1 + 248))
  {
    goto LABEL_8;
  }

  v6 = [a1 remoteOuterEndpoint];

  if (v6)
  {
    if ([a1 setupVirtualInterface])
    {
      [a1 setPowerAssertionState:1];
LABEL_8:
      [a1 reportEvent:3001];

      sub_100042650(a1);
      return;
    }

    if ([a1 state] != 255)
    {
      v7 = _NRCopyLogObjectForNRUUID();
      v8 = _NRLogIsLevelEnabled();

      if (v8)
      {
        v9 = _NRCopyLogObjectForNRUUID();
        v10 = [a1 copyDescription];
        _NRLogWithArgs(v9, 0, "%s%.30s:%-4d %@: Retrying IPsec interface creation", "", "[NRLinkWiFi retrySetupVirtualInterface]", 227, v10);
      }

      if (++*(a1 + 255) > 9u)
      {
        v13 = _NRCopyLogObjectForNRUUID();
        v14 = _NRLogIsLevelEnabled();

        if (v14)
        {
          v15 = _NRCopyLogObjectForNRUUID();
          v16 = [a1 copyDescription];
          _NRLogWithArgs(v15, 17, "%@: IPsec interface setup hit max retries", v16);
        }

        [a1 cancelWithReason:@"IPsec interface setup hit max retries"];
      }

      else
      {
        [a1 reportEvent:3025];
        objc_initWeak(&location, a1);
        v11 = dispatch_time(0, 250000000);
        v12 = [a1 queue];
        block[0] = _NSConcreteStackBlock;
        block[1] = 3221225472;
        block[2] = sub_100045A6C;
        block[3] = &unk_1001FC730;
        objc_copyWeak(&v18, &location);
        dispatch_after(v11, v12, block);

        objc_destroyWeak(&v18);
        objc_destroyWeak(&location);
      }
    }
  }

  else
  {

    [a1 cancelWithReason:@"No remote outer endpoint present"];
  }
}

void sub_100045628(uint64_t a1)
{
  if (a1 && !*(a1 + 327))
  {
    bonjour_service = nw_browse_descriptor_create_bonjour_service("_nr._tcp", "local");
    v3 = nw_parameters_create();
    nw_parameters_set_use_awdl();
    v4 = [a1 localInterfaceName];
    [v4 UTF8String];
    v5 = nw_interface_create_with_name();
    nw_parameters_require_interface(v3, v5);
    v6 = nw_browser_create(bonjour_service, v3);
    objc_initWeak(&location, a1);
    state_changed_handler[0] = _NSConcreteStackBlock;
    state_changed_handler[1] = 3221225472;
    state_changed_handler[2] = sub_1000458AC;
    state_changed_handler[3] = &unk_1001FA9C0;
    objc_copyWeak(&v15, &location);
    nw_browser_set_state_changed_handler(v6, state_changed_handler);
    handler[0] = _NSConcreteStackBlock;
    handler[1] = 3221225472;
    handler[2] = sub_100045998;
    handler[3] = &unk_1001FA9E8;
    objc_copyWeak(&v13, &location);
    nw_browser_set_browse_results_changed_handler(v6, handler);
    v7 = [a1 queue];
    nw_browser_set_queue(v6, v7);

    nw_browser_start(v6);
    objc_storeStrong((a1 + 327), v6);
    v8 = _NRCopyLogObjectForNRUUID();
    IsLevelEnabled = _NRLogIsLevelEnabled();

    if (IsLevelEnabled)
    {
      v10 = _NRCopyLogObjectForNRUUID();
      v11 = [a1 copyDescription];
      _NRLogWithArgs(v10, 0, "%s%.30s:%-4d %@: started AWDL browser", "", "[NRLinkWiFi startAWDLBrowser]", 540, v11);
    }

    objc_destroyWeak(&v13);
    objc_destroyWeak(&v15);
    objc_destroyWeak(&location);
  }
}

void sub_10004587C(_Unwind_Exception *a1)
{
  objc_destroyWeak((v2 + 32));
  objc_destroyWeak((v1 + 32));
  objc_destroyWeak((v3 - 104));
  _Unwind_Resume(a1);
}

void sub_1000458AC(uint64_t a1, uint64_t a2, void *a3)
{
  v11 = a3;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v6 = WeakRetained;
  if (WeakRetained)
  {
    if ([WeakRetained state] != 255)
    {
      v7 = _NRCopyLogObjectForNRUUID();
      IsLevelEnabled = _NRLogIsLevelEnabled();

      if (IsLevelEnabled)
      {
        v9 = _NRCopyLogObjectForNRUUID();
        v10 = [v6 copyDescription];
        _NRLogWithArgs(v9, 0, "%s%.30s:%-4d %@: browser entered state: %u (%@)", "", "[NRLinkWiFi startAWDLBrowser]_block_invoke", 526, v10, a2, v11);
      }
    }
  }
}

void sub_100045998(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  if (WeakRetained)
  {
    v7 = WeakRetained;
    v2 = [WeakRetained state] == 255;
    WeakRetained = v7;
    if (!v2)
    {
      v3 = _NRCopyLogObjectForNRUUID();
      IsLevelEnabled = _NRLogIsLevelEnabled();

      WeakRetained = v7;
      if (IsLevelEnabled)
      {
        v5 = _NRCopyLogObjectForNRUUID();
        v6 = [v7 copyDescription];
        _NRLogWithArgs(v5, 0, "%s%.30s:%-4d %@: browser results changed", "", "[NRLinkWiFi startAWDLBrowser]_block_invoke_2", 535, v6);

        WeakRetained = v7;
      }
    }
  }
}

void sub_100045A6C(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  if (WeakRetained)
  {
    v3 = WeakRetained;
    v2 = [WeakRetained state] == 255;
    WeakRetained = v3;
    if (!v2)
    {
      [v3 setStartRequested:0];
      [v3 start];
      WeakRetained = v3;
    }
  }
}

void sub_100045AD0(uint64_t a1, int a2, unsigned int a3)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  if (WeakRetained)
  {
    v20 = WeakRetained;
    v7 = [WeakRetained state] == 255;
    WeakRetained = v20;
    if (!v7)
    {
      v8 = objc_loadWeakRetained((a1 + 40));
      if (!v8)
      {
        goto LABEL_30;
      }

      v9 = [v20 pairingClient];

      if (v9 != v8)
      {
        goto LABEL_30;
      }

      v10 = [v20 pairingClient];
      v11 = v10;
      if (v10)
      {
        v12 = *(v10 + 48);
      }

      else
      {
        LOBYTE(v12) = 0;
      }

      v13 = objc_alloc_init(NSMutableString);
      v14 = v13;
      if (v12)
      {
        [v13 appendFormat:@"PairingSessionConnected | "];
        if ((v12 & 2) == 0)
        {
LABEL_9:
          if ((v12 & 4) == 0)
          {
            goto LABEL_10;
          }

          goto LABEL_17;
        }
      }

      else if ((v12 & 2) == 0)
      {
        goto LABEL_9;
      }

      [v14 appendFormat:@"ClassDVerified | "];
      if ((v12 & 4) == 0)
      {
LABEL_10:
        if ((v12 & 8) == 0)
        {
          goto LABEL_11;
        }

        goto LABEL_18;
      }

LABEL_17:
      [v14 appendFormat:@"ClassCVerified | "];
      if ((v12 & 8) == 0)
      {
LABEL_11:
        if ((v12 & 0x10) == 0)
        {
          goto LABEL_12;
        }

        goto LABEL_19;
      }

LABEL_18:
      [v14 appendFormat:@"ClassAVerified | "];
      if ((v12 & 0x10) == 0)
      {
LABEL_12:

        if (a3)
        {
LABEL_13:
          if (a3 > 8)
          {
            v15 = @"None";
          }

          else
          {
            v15 = *(&off_1001FA108 + (a3 - 1));
          }

          [v20 cancelWithReason:{@"pairing client error: %@ mask: %@", v15, v14}];
LABEL_29:

LABEL_30:
          WeakRetained = v20;
          goto LABEL_31;
        }

LABEL_20:
        if ((a2 - 1) > 6)
        {
          v15 = @"Invalid";
        }

        else
        {
          v15 = *(&off_1001FA148 + (a2 - 1));
        }

        v16 = _NRCopyLogObjectForNRUUID();
        IsLevelEnabled = _NRLogIsLevelEnabled();

        if (IsLevelEnabled)
        {
          v18 = _NRCopyLogObjectForNRUUID();
          v19 = [v20 copyDescription];
          _NRLogWithArgs(v18, 0, "%s%.30s:%-4d %@: pairing client state: %@ mask: %@", "", "[NRLinkWiFi initiatePairing]_block_invoke", 449, v19, v15, v14);
        }

        if (a2 == 5)
        {
          sub_10004530C(v20);
        }

        goto LABEL_29;
      }

LABEL_19:
      [v14 appendFormat:@"PairingCompleted | "];

      if (a3)
      {
        goto LABEL_13;
      }

      goto LABEL_20;
    }
  }

LABEL_31:
}

id sub_100046E64()
{
  if (qword_100228FA0 != -1)
  {
    dispatch_once(&qword_100228FA0, &stru_1001FAAA0);
  }

  v1 = qword_100228F98;

  return v1;
}

void sub_100046EB8(id a1)
{
  v1 = os_log_create("com.apple.networkrelay", "");
  v2 = qword_100228F98;
  qword_100228F98 = v1;

  _objc_release_x1(v1, v2);
}

void sub_100047AF0(void *a1, int a2, void *a3)
{
  if (a1)
  {
    v5 = a3;
    v9 = objc_alloc_init(NSMutableDictionary);
    [v9 setObject:off_1001FAAE8[a2 - 10003] forKeyedSubscript:@"State"];
    [v9 setObject:v5 forKeyedSubscript:@"SessionID"];

    v6 = [a1 clients];
    v7 = [v6 count];

    if (v7 && (a2 == 10009 || a2 == 10003))
    {
      v8 = [a1 clients];
      [v9 setObject:v8 forKeyedSubscript:@"QuickRelayClients"];
    }

    sub_100008D1C(@"IDS Session", v9);
  }
}

char *sub_100047C04(char *result)
{
  if (result)
  {
    v1 = result;
    v2 = [result queue];
    dispatch_assert_queue_V2(v2);

    [v1 reportEvent:10017];
    if (gNRPacketLoggingEnabled == 1)
    {
      v3 = _NRCopyLogObjectForNRUUID();
      IsLevelEnabled = _NRLogIsLevelEnabled();

      if (IsLevelEnabled)
      {
        v5 = _NRCopyLogObjectForNRUUID();
        v6 = [v1 copyDescription];
        _NRLogWithArgs(v5, 1, "%s%.30s:%-4d %@: QR link has been idle. Invalidating IDSSession", "", "[NRLinkQuickRelay handleLinkIdleTimeout]", 1039, v6);
      }
    }

    sub_100047D2C(v1);
    if (v1[249] == 1)
    {
      dispatch_resume(*(v1 + 367));
      v1[249] = 0;
    }

    return [v1 suspend];
  }

  return result;
}

void sub_100047D2C(uint64_t a1)
{
  if (!a1)
  {
    return;
  }

  v2 = _NRCopyLogObjectForNRUUID();
  IsLevelEnabled = _NRLogIsLevelEnabled();

  if (IsLevelEnabled)
  {
    v4 = _NRCopyLogObjectForNRUUID();
    v5 = [a1 copyDescription];
    _NRLogWithArgs(v4, 0, "%s%.30s:%-4d %@: Invalidating IDS session", "", "[NRLinkQuickRelay invalidateIDSSession]", 742, v5);
  }

  *(a1 + 256) = 0;
  [a1 reportEvent:10014 detailsFormat:@"%@", *(a1 + 279)];
  v6 = *(a1 + 279);
  if (v6)
  {
    v7 = v6;
    v8 = [a1 queue];
    [v7 setDelegate:0 queue:v8];

    [*(a1 + 279) endSession];
    v9 = *(a1 + 279);
    *(a1 + 279) = 0;

    v10 = *(a1 + 687);
    if (*(a1 + 252) == 1)
    {
      if (!v10)
      {
        goto LABEL_18;
      }

      if (!v10[19])
      {
        goto LABEL_18;
      }

      v11 = nr_absolute_time();
      v12 = *(a1 + 687);
      if (!v12)
      {
        goto LABEL_18;
      }

      v13 = &OBJC_IVAR___NRAnalyticsCmpnLinkQuickRelay__idsSessionEnd;
      goto LABEL_17;
    }

    if (v10)
    {
      if (!v10[15])
      {
        if (!v10[17])
        {
          goto LABEL_18;
        }

        v11 = nr_absolute_time();
        v12 = *(a1 + 687);
        if (!v12)
        {
          goto LABEL_18;
        }

        v13 = &OBJC_IVAR___NRAnalyticsCmpnLinkQuickRelay__idsSessionReceiveInvitationEnd;
        goto LABEL_17;
      }

      v11 = nr_absolute_time();
      v12 = *(a1 + 687);
      if (v12)
      {
        v13 = &OBJC_IVAR___NRAnalyticsCmpnLinkQuickRelay__idsSessionSendInvitationEnd;
LABEL_17:
        *(v12 + *v13) = v11;
      }
    }

LABEL_18:
    *(a1 + 252) = 0;
    *(a1 + 248) = 0;
    *(a1 + 253) = 0;
  }

  sub_100047F74(a1);
  v14 = *(a1 + 655);
  if (v14)
  {
    dispatch_source_cancel(v14);
    v15 = *(a1 + 655);
    *(a1 + 655) = 0;
  }
}

void sub_100047F74(_BYTE *a1)
{
  if (a1)
  {
    if (a1[255] == 1)
    {
      [a1 removeObserver:a1 forKeyPath:@"_connection.connectionState" context:0];
      a1[255] = 0;
    }

    v2 = [a1 connection];

    if (v2)
    {
      v3 = _NRCopyLogObjectForNRUUID();
      IsLevelEnabled = _NRLogIsLevelEnabled();

      if (IsLevelEnabled)
      {
        v5 = _NRCopyLogObjectForNRUUID();
        v6 = [a1 copyDescription];
        v7 = [a1 connection];
        _NRLogWithArgs(v5, 1, "%s%.30s:%-4d %@: Cancelling %@", "", "[NRLinkQuickRelay invalidateConnection]", 733, v6, v7);
      }

      v8 = [a1 connection];
      [v8 cancel];

      [a1 setConnection:0];
    }
  }
}

void sub_100048164(uint64_t a1)
{
  v2 = [*(a1 + 32) connection];
  v3 = [v2 connectionState];

  v4 = *(a1 + 32);
  if (v3 > 2)
  {
    switch(v3)
    {
      case 3:
        v5 = @"Ready";
        goto LABEL_15;
      case 4:
        v5 = @"Failed";
        goto LABEL_15;
      case 5:
        v5 = @"Cancelled";
        goto LABEL_15;
    }

LABEL_12:
    v5 = [[NSString alloc] initWithFormat:@"Unknown[%lld]", v3];
    v6 = *(a1 + 32);
    goto LABEL_16;
  }

  if (!v3)
  {
    v5 = @"Invalid";
    goto LABEL_15;
  }

  if (v3 == 1)
  {
    v5 = @"Waiting";
    goto LABEL_15;
  }

  if (v3 != 2)
  {
    goto LABEL_12;
  }

  v5 = @"Preparing";
LABEL_15:
  v6 = *(a1 + 32);
LABEL_16:
  v7 = [v6 connection];
  [v4 reportEvent:10020 detailsFormat:@"%@ %@", v5, v7];

  if (v3 == 3)
  {
    sub_100048794(*(a1 + 32));
    v8 = [*(a1 + 32) ikeClassDEstablished];
    v9 = *(a1 + 32);
    if (v8 && v9 && *(v9 + 311))
    {
      objc_initWeak(location, v9);
      v10 = nr_absolute_time();
      v11 = *(a1 + 32);
      if (v11)
      {
        v12 = v10;
        v13 = *(v11 + 687);
        if (v13)
        {
          v13[21] = v12;
        }
      }

      else
      {
        v13 = 0;
      }

      v14 = *(a1 + 32);
      if (v14)
      {
        v14 = *(v14 + 311);
      }

      v15 = v14;
      v16 = [*(a1 + 32) queue];
      v47[0] = _NSConcreteStackBlock;
      v47[1] = 3221225472;
      v47[2] = sub_100048A70;
      v47[3] = &unk_1001FC018;
      objc_copyWeak(&v48, location);
      [v15 sendKeepaliveWithRetries:3 retryIntervalInMilliseconds:3000 callbackQueue:v16 callback:v47];

      objc_destroyWeak(&v48);
      objc_destroyWeak(location);
      v9 = *(a1 + 32);
    }

    v17 = [v9 ikeClassCEstablished];
    v18 = *(a1 + 32);
    if (v17 && v18 && *(v18 + 319))
    {
      objc_initWeak(location, v18);
      v19 = nr_absolute_time();
      v20 = *(a1 + 32);
      if (v20)
      {
        v21 = v19;
        v22 = *(v20 + 687);
        if (v22)
        {
          v22[23] = v21;
        }
      }

      else
      {
        v22 = 0;
      }

      v23 = *(a1 + 32);
      if (v23)
      {
        v23 = *(v23 + 319);
      }

      v24 = v23;
      v25 = [*(a1 + 32) queue];
      v45[0] = _NSConcreteStackBlock;
      v45[1] = 3221225472;
      v45[2] = sub_100048B88;
      v45[3] = &unk_1001FC018;
      objc_copyWeak(&v46, location);
      [v24 sendKeepaliveWithRetries:3 retryIntervalInMilliseconds:3000 callbackQueue:v25 callback:v45];

      objc_destroyWeak(&v46);
      objc_destroyWeak(location);
      v18 = *(a1 + 32);
    }

    if (![v18 ikeClassCEstablished] || (objc_msgSend(*(a1 + 32), "ikeClassDEstablished") & 1) == 0)
    {
      v26 = *(a1 + 32);
      if (v26 && (*(v26 + 258) = 0, (v27 = *(a1 + 32)) != 0))
      {
        *(v27 + 259) = 0;
        v28 = *(a1 + 32);
      }

      else
      {
        v28 = 0;
      }

      sub_100048CA0(v28);
      v29 = *(a1 + 32);
      if (!v29)
      {
        return;
      }

      if (*(v29 + 251) == 1)
      {
        *(v29 + 251) = 0;
        v30 = *(a1 + 32);
        if (!v30)
        {
          return;
        }

        if (*(v30 + 249) == 1)
        {
          dispatch_resume(*(v30 + 367));
          v31 = *(a1 + 32);
          if (!v31)
          {
            return;
          }

          *(v31 + 249) = 0;
        }
      }
    }

    v32 = *(a1 + 32);
    if (v32)
    {
      v33 = [v32 queue];
      dispatch_assert_queue_V2(v33);

      v34 = *(v32 + 655);
      if (v34)
      {
        dispatch_source_cancel(v34);
        v35 = *(v32 + 655);
        *(v32 + 655) = 0;
      }

      if ([v32 state] == 255)
      {
        v41 = _NRCopyLogObjectForNRUUID();
        IsLevelEnabled = _NRLogIsLevelEnabled();

        if (IsLevelEnabled)
        {
          v43 = _NRCopyLogObjectForNRUUID();
          v44 = [v32 copyDescription];
          _NRLogWithArgs(v43, 0, "%s%.30s:%-4d %@: not arming link idle timer as link is cancelled", "", "[NRLinkQuickRelay armLinkIdleTimer]", 998, v44);
        }
      }

      else if (!*(v32 + 655))
      {
        v36 = [v32 queue];
        v37 = dispatch_source_create(&_dispatch_source_type_timer, 0, 0, v36);

        v38 = dispatch_time(0x8000000000000000, 10000000000);
        dispatch_source_set_timer(v37, v38, 0x2540BE400uLL, 0);
        objc_initWeak(&from, v32);
        location[0] = _NSConcreteStackBlock;
        location[1] = 3221225472;
        location[2] = sub_100049448;
        location[3] = &unk_1001FC730;
        objc_copyWeak(&v50, &from);
        dispatch_source_set_event_handler(v37, location);
        dispatch_resume(v37);
        v39 = *(v32 + 655);
        *(v32 + 655) = v37;

        objc_destroyWeak(&v50);
        objc_destroyWeak(&from);
      }
    }
  }

  else if ((v3 & 0xFFFFFFFFFFFFFFFELL) == 4)
  {
    v40 = *(a1 + 32);

    sub_100047D2C(v40);
  }
}

void sub_100048768(_Unwind_Exception *a1)
{
  objc_destroyWeak((v1 + 32));
  objc_destroyWeak((v2 - 96));
  _Unwind_Resume(a1);
}

void sub_100048794(uint64_t a1)
{
  if (!a1)
  {
    return;
  }

  dispatch_assert_queue_V2(*(a1 + 8));
  if (*(a1 + 16) == 255)
  {
    v4 = _NRCopyLogObjectForNRUUID();
    IsLevelEnabled = _NRLogIsLevelEnabled();

    if (!IsLevelEnabled)
    {
      return;
    }

    v15 = _NRCopyLogObjectForNRUUID();
    v6 = [a1 copyDescription];
    _NRLogWithArgs(v15, 16, "%s%.30s:%-4d %@: Cannot read datagram as link is cancelled", "", "[NRLinkQuickRelay readDatagramFromSession]", 1726, v6);
LABEL_10:

LABEL_16:

    return;
  }

  v2 = *(a1 + 695);
  if (!v2)
  {
    v7 = _NRCopyLogObjectForNRUUID();
    v8 = _NRLogIsLevelEnabled();

    if (!v8)
    {
      return;
    }

    v15 = _NRCopyLogObjectForNRUUID();
    v6 = [a1 copyDescription];
    _NRLogWithArgs(v15, 0, "%s%.30s:%-4d %@: Ignoring reading datagrams as connection does not exist", "", "[NRLinkQuickRelay readDatagramFromSession]", 1733, v6);
    goto LABEL_10;
  }

  if ([v2 connectionState] == 3)
  {
    objc_initWeak(&location, a1);
    v3 = *(a1 + 695);
    v16[0] = _NSConcreteStackBlock;
    v16[1] = 3221225472;
    v16[2] = sub_10004EBE4;
    v16[3] = &unk_1001FAFC0;
    objc_copyWeak(&v17, &location);
    [v3 readDatagramsWithMinimumCount:1 maximumCount:0xFFFFFFFFLL completionHandler:v16];
    objc_destroyWeak(&v17);
    objc_destroyWeak(&location);
    return;
  }

  v9 = *(a1 + 695);
  v10 = [v9 connectionState];
  if (v10 >= 6)
  {
    v11 = [[NSString alloc] initWithFormat:@"Unknown[%lld]", v10];
  }

  else
  {
    v11 = *(&off_1001FAB20 + v10);
  }

  [a1 reportEvent:10021 detailsFormat:@"cannot read from connection %@ state %@", v9, v11];

  v12 = _NRCopyLogObjectForNRUUID();
  v13 = _NRLogIsLevelEnabled();

  if (v13)
  {
    v15 = _NRCopyLogObjectForNRUUID();
    v14 = [a1 copyDescription];
    _NRLogWithArgs(v15, 17, "%@: Cannot read from connection %@, state: %llu", v14, *(a1 + 695), [*(a1 + 695) connectionState]);

    goto LABEL_16;
  }
}

void sub_100048A54(_Unwind_Exception *a1)
{
  objc_destroyWeak((v1 + 32));
  objc_destroyWeak((v2 - 40));
  _Unwind_Resume(a1);
}

void sub_100048A70(uint64_t a1, int a2)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  if (WeakRetained)
  {
    v12 = WeakRetained;
    v4 = _NRCopyLogObjectForNRUUID();
    IsLevelEnabled = _NRLogIsLevelEnabled();

    if (IsLevelEnabled)
    {
      v6 = _NRCopyLogObjectForNRUUID();
      v7 = [v12 copyDescription];
      v8 = v7;
      v9 = "NO";
      if (a2)
      {
        v9 = "YES";
      }

      _NRLogWithArgs(v6, 0, "%s%.30s:%-4d %@: ClassD keepalive response received: %s", "", "[NRLinkQuickRelay observeValueForKeyPath:ofObject:change:context:]_block_invoke_2", 2613, v7, v9);
    }

    WeakRetained = v12;
    if (a2)
    {
      v10 = nr_absolute_time();
      v11 = *(v12 + 687);
      if (v11)
      {
        *(v11 + 176) = v10;
      }

      sub_10004B914(v12);
      WeakRetained = v12;
    }
  }
}

void sub_100048B88(uint64_t a1, int a2)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  if (WeakRetained)
  {
    v12 = WeakRetained;
    v4 = _NRCopyLogObjectForNRUUID();
    IsLevelEnabled = _NRLogIsLevelEnabled();

    if (IsLevelEnabled)
    {
      v6 = _NRCopyLogObjectForNRUUID();
      v7 = [v12 copyDescription];
      v8 = v7;
      v9 = "NO";
      if (a2)
      {
        v9 = "YES";
      }

      _NRLogWithArgs(v6, 0, "%s%.30s:%-4d %@: ClassC keepalive response received: %s", "", "[NRLinkQuickRelay observeValueForKeyPath:ofObject:change:context:]_block_invoke_3", 2638, v7, v9);
    }

    WeakRetained = v12;
    if (a2)
    {
      v10 = nr_absolute_time();
      v11 = *(v12 + 687);
      if (v11)
      {
        *(v11 + 192) = v10;
      }

      sub_10004B914(v12);
      WeakRetained = v12;
    }
  }
}

void sub_100048CA0(uint64_t a1)
{
  if (!a1)
  {
    return;
  }

  v2 = [a1 queue];
  dispatch_assert_queue_V2(v2);

  v3 = *(a1 + 327);
  if (v3)
  {
    goto LABEL_3;
  }

  if (![a1 hasCompanionDatapath])
  {
    goto LABEL_10;
  }

  v4 = [*(a1 + 279) sessionID];
  v51 = [NSString stringWithFormat:@"Terminus QuickRelay link <%@>", v4];

  v5 = sub_1001482F4(v51, a1, 1, 0, 0, 0);
  v6 = *(a1 + 327);
  *(a1 + 327) = v5;

  v7 = *(a1 + 327);
  if (!v7)
  {
    v35 = _NRCopyLogObjectForNRUUID();
    IsLevelEnabled = _NRLogIsLevelEnabled();

    if (!IsLevelEnabled)
    {
      goto LABEL_39;
    }

    v37 = _NRCopyLogObjectForNRUUID();
    v38 = [a1 copyDescription];
    _NRLogWithArgs(v37, 16, "%s%.30s:%-4d %@: failed to create packet nexus", "", "[NRLinkQuickRelay setupIPsec]", 1594, v38);
LABEL_38:

    goto LABEL_39;
  }

  [a1 setVirtualInterface:{objc_msgSend(v7, "virtualInterface")}];
  if (([a1 setInterfaceSubfamily] & 1) == 0)
  {
    v39 = _NRCopyLogObjectForNRUUID();
    v40 = _NRLogIsLevelEnabled();

    if (!v40)
    {
      goto LABEL_39;
    }

    v37 = _NRCopyLogObjectForNRUUID();
    v38 = [a1 copyDescription];
    _NRLogWithArgs(v37, 17, "%@: failed to setup interface sub family", v38);
    goto LABEL_38;
  }

  if (([a1 setNoACKPrioritization] & 1) == 0)
  {
    v41 = _NRCopyLogObjectForNRUUID();
    v42 = _NRLogIsLevelEnabled();

    if (v42)
    {
      v37 = _NRCopyLogObjectForNRUUID();
      v38 = [a1 copyDescription];
      _NRLogWithArgs(v37, 17, "%@: failed to setup no ack prioritization", v38);
      goto LABEL_38;
    }

LABEL_39:

    return;
  }

  v8 = sub_100163A30(NRDLocalDevice, *(a1 + 32));
  if (!v8)
  {
    v44 = sub_100046E64();
    v45 = _NRLogIsLevelEnabled();

    if (v45)
    {
      v46 = sub_100046E64();
      _NRLogWithArgs(v46, 16, "%s%.30s:%-4d ABORTING: Assertion Failed: (localDevice) != ((void*)0)", "", "[NRLinkQuickRelay setupIPsec]", 1610);
    }

    v47 = _os_log_pack_size();
    v48 = &v51 - ((__chkstk_darwin() + 15) & 0xFFFFFFFFFFFFFFF0);
    v49 = __error();
    v50 = _os_log_pack_fill(v48, v47, *v49, &_mh_execute_header, "%{public}s Assertion Failed: (localDevice) != ((void*)0)");
    *v50 = 136446210;
    *(v50 + 4) = "[NRLinkQuickRelay setupIPsec]";
    sub_100046E64();
    _NRLogAbortWithPack();
  }

  v9 = v8;
  v10 = sub_100173200(v8);
  [*(a1 + 327) setLocalAddresses:v10];

  [a1 virtualInterface];
  v11 = sub_100003490();
  dispatch_assert_queue_V2(v11);

  v12 = sub_100003490();
  dispatch_assert_queue_V2(v12);

  v13 = sub_1001677D0(v9, @"0");
  v14 = [v13 hostname];

  NEVirtualInterfaceAddIPv6Route();
  [a1 virtualInterface];
  v15 = sub_100003490();
  dispatch_assert_queue_V2(v15);

  v16 = sub_100003490();
  dispatch_assert_queue_V2(v16);

  v17 = sub_100167B9C(v9, @"0");
  v18 = [v17 hostname];

  NEVirtualInterfaceAddIPv6Route();
  [a1 virtualInterface];
  NEVirtualInterfaceUpdateAdHocService();
  [*(a1 + 327) setAvailability:0];

  v3 = v51;
LABEL_3:

LABEL_10:
  if (([a1 hasCompanionDatapath] & 1) == 0 && !sub_100049614(a1))
  {
    return;
  }

  v19 = [a1 queue];
  dispatch_assert_queue_V2(v19);

  if (*(a1 + 254) == 1 && !*(a1 + 303))
  {
    v20 = sub_100146840(1);
    if ([a1 hasCompanionDatapath])
    {
      [v20 setRequestChildlessSA:0];
    }

    v21 = [[NEIKEv2Listener alloc] initWithListenerIKEConfig:v20 kernelSASessionName:@"terminusIKE-QuickRelay-Listener" packetDelegate:a1 listenerQueue:*(a1 + 8) delegate:a1 delegateQueue:*(a1 + 8)];
    v22 = *(a1 + 303);
    *(a1 + 303) = v21;

    v23 = *(a1 + 303);
    v24 = _NRCopyLogObjectForNRUUID();
    if (v23)
    {
      v25 = _NRLogIsLevelEnabled();

      if (!v25)
      {
LABEL_20:

        goto LABEL_21;
      }

      v26 = _NRCopyLogObjectForNRUUID();
      v27 = [a1 copyDescription];
      _NRLogWithArgs(v26, 0, "%s%.30s:%-4d %@: Created IKE listener", "", "[NRLinkQuickRelay setupIKEListener]", 1477, v27);
    }

    else
    {
      v43 = _NRLogIsLevelEnabled();

      if (!v43)
      {
        goto LABEL_20;
      }

      v26 = _NRCopyLogObjectForNRUUID();
      v27 = [a1 copyDescription];
      _NRLogWithArgs(v26, 17, "%@: Failed to create IKE listener", v27);
    }

    goto LABEL_20;
  }

LABEL_21:
  if ([a1 ikeClassDEstablished])
  {
    v28 = _NRCopyLogObjectForNRUUID();
    v29 = _NRLogIsLevelEnabled();

    if (v29)
    {
      v30 = _NRCopyLogObjectForNRUUID();
      v31 = [a1 copyDescription];
      _NRLogWithArgs(v30, 0, "%s%.30s:%-4d %@: IKE classD already established", "", "[NRLinkQuickRelay setupIPsecClassD]", 1483, v31);
    }
  }

  else
  {
    sub_100049D84(a1, 4);
  }

  if ([a1 ikeClassCEstablished])
  {
    v32 = _NRCopyLogObjectForNRUUID();
    v33 = _NRLogIsLevelEnabled();

    if (!v33)
    {
      return;
    }

    v51 = _NRCopyLogObjectForNRUUID();
    v34 = [a1 copyDescription];
    _NRLogWithArgs(v51, 0, "%s%.30s:%-4d %@: IKE classC already established", "", "[NRLinkQuickRelay setupIPsecClassC]", 1493, v34);

    goto LABEL_39;
  }

  sub_100049D84(a1, 3);
}

void sub_100049448(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  if (WeakRetained)
  {
    if (*(WeakRetained + 463) == *(WeakRetained + 439) && *(WeakRetained + 471) == *(WeakRetained + 455) && *(WeakRetained + 423) == *(WeakRetained + 415))
    {
      v8 = WeakRetained;
      v2 = *(WeakRetained + 279);
      v3 = [v2 sessionID];
      sub_100047AF0(v8, 10009, v3);

      sub_100047C04(v8);
      WeakRetained = v8;
    }

    else
    {
      if (gNRPacketLoggingEnabled == 1)
      {
        v9 = WeakRetained;
        v4 = _NRCopyLogObjectForNRUUID();
        IsLevelEnabled = _NRLogIsLevelEnabled();

        WeakRetained = v9;
        if (IsLevelEnabled)
        {
          v6 = _NRCopyLogObjectForNRUUID();
          v7 = [v9 copyDescription];
          _NRLogWithArgs(v6, 1, "%s%.30s:%-4d %@: QR link has been active", "", "[NRLinkQuickRelay armLinkIdleTimer]_block_invoke", 1021, v7);

          WeakRetained = v9;
        }
      }

      *(WeakRetained + 471) = *(WeakRetained + 455);
      *(WeakRetained + 463) = *(WeakRetained + 439);
      *(WeakRetained + 423) = *(WeakRetained + 415);
    }
  }
}

uint64_t sub_100049614(void *a1)
{
  v2 = [a1 queue];
  dispatch_assert_queue_V2(v2);

  if (([a1 hasCompanionDatapath] & 1) == 0 && !objc_msgSend(a1, "virtualInterface"))
  {
    v4 = getpid();
    v5 = sub_10013EF7C(v4);
    v59[0] = 0;
    v59[1] = 0;
    [v5 getUUIDBytes:v59];
    v6 = [a1 queue];
    [a1 setVirtualInterface:NEVirtualInterfaceCreateNexusExtended()];

    if (![a1 virtualInterface])
    {
      v33 = _NRCopyLogObjectForNRUUID();
      IsLevelEnabled = _NRLogIsLevelEnabled();

      if (!IsLevelEnabled)
      {
        v32 = 0;
LABEL_38:

        return v32;
      }

      v8 = _NRCopyLogObjectForNRUUID();
      v35 = [a1 copyDescription];
      _NRLogWithArgs(v8, 16, "%s%.30s:%-4d %@: failed to setup interface", "", "[NRLinkQuickRelay setupUTUN]", 1527, v35);

      goto LABEL_36;
    }

    [a1 virtualInterface];
    NEVirtualInterfaceEnableFlowswitch();
    v7 = [a1 nrUUID];
    v8 = sub_100163A30(NRDLocalDevice, v7);

    if (!v8)
    {
      v52 = sub_100046E64();
      v53 = _NRLogIsLevelEnabled();

      if (v53)
      {
        v54 = sub_100046E64();
        _NRLogWithArgs(v54, 16, "%s%.30s:%-4d ABORTING: Assertion Failed: (localDevice) != ((void*)0)", "", "[NRLinkQuickRelay setupUTUN]", 1541);
      }

      v55 = _os_log_pack_size();
      v56 = __error();
      v57 = _os_log_pack_fill(&v59[-1] - ((v55 + 15) & 0xFFFFFFFFFFFFFFF0), v55, *v56, &_mh_execute_header, "%{public}s Assertion Failed: (localDevice) != ((void*)0)");
      *v57 = 136446210;
      *(v57 + 4) = "[NRLinkQuickRelay setupUTUN]";
      sub_100046E64();
      _NRLogAbortWithPack();
    }

    [a1 virtualInterface];
    v9 = sub_100003490();
    dispatch_assert_queue_V2(v9);

    v10 = sub_100003490();
    dispatch_assert_queue_V2(v10);

    v11 = sub_1001672A0(v8, @"0");
    v12 = [v11 hostname];

    v13 = NEVirtualInterfaceAddAddress();
    if (v13)
    {
      [a1 virtualInterface];
      v14 = sub_100003490();
      dispatch_assert_queue_V2(v14);

      v15 = sub_100003490();
      dispatch_assert_queue_V2(v15);

      v16 = sub_1001679E0(v8, @"0");
      v17 = [v16 hostname];

      v18 = NEVirtualInterfaceAddAddress();
      if (v18)
      {
        [a1 virtualInterface];
        v19 = sub_100003490();
        dispatch_assert_queue_V2(v19);

        v20 = sub_1001730E8(v8);
        v21 = [v20 hostname];

        v22 = NEVirtualInterfaceAddAddress();
        if (v22)
        {
          [a1 virtualInterface];
          if (NEVirtualInterfaceAddAddress())
          {
            [a1 virtualInterface];
            v23 = sub_100172EF0(v8);
            v24 = NEVirtualInterfaceAddIPv6Route();

            if (v24)
            {
              [a1 virtualInterface];
              v25 = sub_100172F58(v8);
              v26 = NEVirtualInterfaceAddIPv6Route();

              if (v26)
              {
                [a1 virtualInterface];
                if (NEVirtualInterfaceUpdateAdHocService())
                {
                  [a1 virtualInterface];
                  v27 = NEVirtualInterfaceCopyName();
                  v28 = _NRCopyLogObjectForNRUUID();
                  v29 = _NRLogIsLevelEnabled();

                  if (v29)
                  {
                    v30 = _NRCopyLogObjectForNRUUID();
                    v31 = [a1 copyDescription];
                    _NRLogWithArgs(v30, 0, "%s%.30s:%-4d %@: Created virtual interface %@", "", "[NRLinkQuickRelay setupUTUN]", 1578, v31, v27);
                  }

                  [a1 setLocalInterfaceName:v27];

                  v32 = 1;
                  goto LABEL_37;
                }

                v50 = _NRCopyLogObjectForNRUUID();
                v51 = _NRLogIsLevelEnabled();

                if (!v51)
                {
                  goto LABEL_35;
                }

                v38 = _NRCopyLogObjectForNRUUID();
                v39 = [a1 copyDescription];
                _NRLogWithArgs(v38, 17, "%@: failed to update ad-hoc service", v39);
                goto LABEL_34;
              }

              v48 = _NRCopyLogObjectForNRUUID();
              v49 = _NRLogIsLevelEnabled();

              if (v49)
              {
                v38 = _NRCopyLogObjectForNRUUID();
                v39 = [a1 copyDescription];
                _NRLogWithArgs(v38, 17, "%@: failed to add ClassC route", v39);
                goto LABEL_34;
              }

LABEL_35:
              [a1 invalidateVirtualInterface];
LABEL_36:
              v32 = 0;
LABEL_37:

              goto LABEL_38;
            }

            v46 = _NRCopyLogObjectForNRUUID();
            v47 = _NRLogIsLevelEnabled();

            if (!v47)
            {
              goto LABEL_35;
            }

            v38 = _NRCopyLogObjectForNRUUID();
            v39 = [a1 copyDescription];
            _NRLogWithArgs(v38, 17, "%@: failed to add ClassD route", v39);
          }

          else
          {
            v44 = _NRCopyLogObjectForNRUUID();
            v45 = _NRLogIsLevelEnabled();

            if (!v45)
            {
              goto LABEL_35;
            }

            v38 = _NRCopyLogObjectForNRUUID();
            v39 = [a1 copyDescription];
            _NRLogWithArgs(v38, 17, "%@: failed to add bogus IPv4 address", v39);
          }
        }

        else
        {
          v42 = _NRCopyLogObjectForNRUUID();
          v43 = _NRLogIsLevelEnabled();

          if (!v43)
          {
            goto LABEL_35;
          }

          v38 = _NRCopyLogObjectForNRUUID();
          v39 = [a1 copyDescription];
          _NRLogWithArgs(v38, 17, "%@: failed to add link-local address", v39);
        }
      }

      else
      {
        v40 = _NRCopyLogObjectForNRUUID();
        v41 = _NRLogIsLevelEnabled();

        if (!v41)
        {
          goto LABEL_35;
        }

        v38 = _NRCopyLogObjectForNRUUID();
        v39 = [a1 copyDescription];
        _NRLogWithArgs(v38, 17, "%@: failed to add ClassC address", v39);
      }
    }

    else
    {
      v36 = _NRCopyLogObjectForNRUUID();
      v37 = _NRLogIsLevelEnabled();

      if (!v37)
      {
        goto LABEL_35;
      }

      v38 = _NRCopyLogObjectForNRUUID();
      v39 = [a1 copyDescription];
      _NRLogWithArgs(v38, 17, "%@: failed to add ClassD address", v39);
    }

LABEL_34:

    goto LABEL_35;
  }

  return 1;
}

void sub_100049D84(uint64_t a1, uint64_t a2)
{
  v4 = [a1 queue];
  dispatch_assert_queue_V2(v4);

  if ((*(a1 + 254) & 1) == 0)
  {
    sub_10004A258(a1, a2);
    if (!*v5)
    {
      v6 = v5;
      String = NRDataProtectionClassCreateString();
      v8 = [a1 nrUUID];
      v9 = sub_100163A30(NRDLocalDevice, v8);

      if (v9)
      {
        v10 = sub_100164D70(v9, a2);

        if (v10)
        {
          v11 = String;
          v12 = sub_100147400(1, v9, a2);
          v13 = [NWAddressEndpoint endpointWithHostname:@"::" port:@"0"];
          v14 = [NEIKEv2ConfigurationMessage alloc];
          v15 = [[NEIKEv2InitiatorTransportIPv6Address alloc] initWithAddress:v13];
          v49[0] = v15;
          v46 = v13;
          v16 = [[NEIKEv2ResponderTransportIPv6Address alloc] initWithAddress:v13];
          v49[1] = v16;
          v17 = [NSArray arrayWithObjects:v49 count:2];
          v18 = [v14 initWithWithAttributes:v17];
          v47 = v12;
          [v12 setConfigurationRequest:v18];

          v48 = v9;
          v19 = sub_100146654(v9, 0);
          v20 = *(a1 + 56);
          if (([a1 hasCompanionDatapath] & 1) == 0)
          {
            [v19 setRequestChildlessSA:1];
            v20 = 0;
          }

          String = v11;
          v21 = [[NSString alloc] initWithFormat:@"terminusIKE-QuickRelay-%@", v11];
          v22 = [NEIKEv2Session alloc];
          v23 = v48;
          v24 = sub_100146D34(0, 0);
          sub_100147008(v24, v23, 0);

          v25 = v22;
          v26 = v47;
          v27 = [v25 initWithIKEConfig:v19 firstChildConfig:v24 sessionConfig:v47 queue:*(a1 + 8) ipsecInterface:v20 ikeSocketHandler:0 kernelSASessionName:v21 packetDelegate:a1];
          v28 = *v6;
          *v6 = v27;

          if (!*v6)
          {
            v42 = _NRCopyLogObjectForNRUUID();
            IsLevelEnabled = _NRLogIsLevelEnabled();

            v29 = v46;
            v26 = v47;
            if (IsLevelEnabled)
            {
              v44 = _NRCopyLogObjectForNRUUID();
              v45 = [a1 copyDescription];
              _NRLogWithArgs(v44, 17, "%@: Failed to create initiator %@ IKE session", v45, String);

              v26 = v47;
            }

            goto LABEL_22;
          }

          [a1 reportEvent:3015 detailsFormat:@"%@ %@", String, *v6];
          sub_10004A3CC(a1, a2);
          if (a2 == 3)
          {
            v38 = nr_absolute_time();
            v39 = *(a1 + 687);
            if (!v39)
            {
              v32 = 0;
              v29 = v46;
              goto LABEL_20;
            }

            *(v39 + 40) = v38;
            v32 = *(a1 + 687);
            v29 = v46;
            if (v32)
            {
              v33 = &OBJC_IVAR___NRAnalyticsCmpnLink__ikeClassCAttempts;
              goto LABEL_19;
            }
          }

          else
          {
            v29 = v46;
            if (a2 != 4)
            {
LABEL_21:
              [*v6 connect];
LABEL_22:

              v9 = v48;
              goto LABEL_23;
            }

            v30 = nr_absolute_time();
            v31 = *(a1 + 687);
            if (!v31)
            {
              v32 = 0;
              goto LABEL_20;
            }

            *(v31 + 56) = v30;
            v32 = *(a1 + 687);
            if (v32)
            {
              v33 = &OBJC_IVAR___NRAnalyticsCmpnLink__ikeClassDAttempts;
LABEL_19:
              ++*&v32[*v33];
            }
          }

LABEL_20:

          goto LABEL_21;
        }

        v34 = _NRCopyLogObjectForNRUUID();
        v35 = _NRLogIsLevelEnabled();

        if (!v35)
        {
LABEL_23:

          return;
        }

        v36 = _NRCopyLogObjectForNRUUID();
        v37 = [a1 copyDescription];
        _NRLogWithArgs(v36, 0, "%s%.30s:%-4d %@: Not starting %@ IKE initiator session because we do not have keys %@", "", "[NRLinkQuickRelay setupIKEInitiatorSessionForClass:]", 1409, v37, String, v9);
      }

      else
      {
        v40 = _NRCopyLogObjectForNRUUID();
        v41 = _NRLogIsLevelEnabled();

        if (!v41)
        {
          goto LABEL_23;
        }

        v36 = _NRCopyLogObjectForNRUUID();
        v37 = [a1 copyDescription];
        _NRLogWithArgs(v36, 17, "%@: Not starting %@ IKE initiator session because localDevice is missing", v37, String);
      }

      goto LABEL_23;
    }
  }
}

void sub_10004A258(uint64_t result, int a2)
{
  if (result && a2 != 4 && a2 != 3)
  {
    v12[1] = a2;
    v2 = sub_100046E64();
    IsLevelEnabled = _NRLogIsLevelEnabled();

    if (IsLevelEnabled)
    {
      v4 = sub_100046E64();
      String = NRDataProtectionClassCreateString();
      _NRLogWithArgs(v4, 16, "%s%.30s:%-4d ABORTING: Cannot copy IKE session pointer for %@", "", "[NRLinkQuickRelay ikeSessionPointerForDataProtectionClass:]", 1144, String);
    }

    v6 = _os_log_pack_size();
    v7 = __error();
    v8 = _os_log_pack_fill(v12 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0), v6, *v7, &_mh_execute_header, "%{public}s Cannot copy IKE session pointer for %@");
    v9 = NRDataProtectionClassCreateString();
    *v8 = 136446466;
    *(v8 + 4) = "[NRLinkQuickRelay ikeSessionPointerForDataProtectionClass:]";
    *(v8 + 12) = 2112;
    *(v8 + 14) = v9;
    sub_100046E64();
    v10 = _NRLogAbortWithPack();
    sub_10004A3CC(v10, v11);
  }
}

void sub_10004A3CC(void *a1, uint64_t a2)
{
  if (a1)
  {
    v2 = a2;
    v4 = [a1 queue];
    dispatch_assert_queue_V2(v4);

    String = NRDataProtectionClassCreateString();
    sub_10004A258(a1, v2);
    v7 = *v6;
    v8 = v7;
    if (v7)
    {
      v9 = v7;
      [v9 setClientQueue:a1[1]];
      objc_initWeak(location, a1);
      v56[0] = _NSConcreteStackBlock;
      v56[1] = 3221225472;
      v56[2] = sub_10004A974;
      v56[3] = &unk_1001FB810;
      objc_copyWeak(&v59, location);
      v10 = String;
      v57 = v10;
      v11 = v9;
      v58 = v11;
      v60 = v2;
      [v11 setStateUpdateBlock:v56];
      v51[0] = _NSConcreteStackBlock;
      v51[1] = 3221225472;
      v51[2] = sub_10004AFAC;
      v51[3] = &unk_1001FB838;
      objc_copyWeak(&v54, location);
      v12 = v10;
      v52 = v12;
      v13 = v11;
      v53 = v13;
      v55 = v2;
      [v13 setChildStateUpdateBlock:v51];
      v47[0] = _NSConcreteStackBlock;
      v47[1] = 3221225472;
      v47[2] = sub_10004B114;
      v47[3] = &unk_1001FB860;
      objc_copyWeak(&v50, location);
      v14 = v12;
      v48 = v14;
      v15 = v13;
      v49 = v15;
      [v15 setConfigurationUpdateBlock:v47];
      v43[0] = _NSConcreteStackBlock;
      v43[1] = 3221225472;
      v43[2] = sub_10004B1F4;
      v43[3] = &unk_1001FB888;
      objc_copyWeak(&v46, location);
      v16 = v14;
      v44 = v16;
      v17 = v15;
      v45 = v17;
      [v17 setTrafficSelectorUpdateBlock:v43];
      v39[0] = _NSConcreteStackBlock;
      v39[1] = 3221225472;
      v39[2] = sub_10004B2F4;
      v39[3] = &unk_1001FB8B0;
      objc_copyWeak(&v42, location);
      v18 = v16;
      v40 = v18;
      v19 = v17;
      v41 = v19;
      [v19 setAdditionalAddressesUpdateBlock:v39];
      v35[0] = _NSConcreteStackBlock;
      v35[1] = 3221225472;
      v35[2] = sub_10004B3D4;
      v35[3] = &unk_1001FB8D8;
      objc_copyWeak(&v38, location);
      v20 = v18;
      v36 = v20;
      v21 = v19;
      v37 = v21;
      [v21 setShortDPDEventBlock:v35];
      v31[0] = _NSConcreteStackBlock;
      v31[1] = 3221225472;
      v31[2] = sub_10004B4A8;
      v31[3] = &unk_1001FB8B0;
      objc_copyWeak(&v34, location);
      v22 = v20;
      v32 = v22;
      v23 = v21;
      v33 = v23;
      [v23 setPrivateNotifyStatusEvent:v31];
      v24 = _NRCopyLogObjectForNRUUID();
      IsLevelEnabled = _NRLogIsLevelEnabled();

      if (IsLevelEnabled)
      {
        v26 = _NRCopyLogObjectForNRUUID();
        v27 = [a1 copyDescription];
        _NRLogWithArgs(v26, 0, "%s%.30s:%-4d %@: Setup IKE %@ %@ callbacks", "", "[NRLinkQuickRelay setupIKECallbacksForClass:]", 1378, v27, v22, v23);
      }

      objc_destroyWeak(&v34);
      objc_destroyWeak(&v38);

      objc_destroyWeak(&v42);
      objc_destroyWeak(&v46);

      objc_destroyWeak(&v50);
      objc_destroyWeak(&v54);

      objc_destroyWeak(&v59);
      objc_destroyWeak(location);
    }

    else
    {
      v28 = sub_100046E64();
      v29 = _NRLogIsLevelEnabled();

      if (v29)
      {
        v30 = sub_100046E64();
        _NRLogWithArgs(v30, 17, "%s called with null ikeSession", "[NRLinkQuickRelay setupIKECallbacksForClass:]");
      }
    }
  }
}

void sub_10004A8E4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, id a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, id a50)
{
  objc_destroyWeak((v52 + 48));
  objc_destroyWeak((v50 + 48));
  objc_destroyWeak((v51 + 48));
  objc_destroyWeak(&a43);
  objc_destroyWeak(&a50);
  objc_destroyWeak((v53 - 192));
  objc_destroyWeak((v53 - 128));
  objc_destroyWeak((v53 - 112));
  _Unwind_Resume(a1);
}

void sub_10004A974(uint64_t a1, uint64_t a2, void *a3)
{
  v51 = a3;
  WeakRetained = objc_loadWeakRetained((a1 + 48));
  if (!WeakRetained)
  {
    goto LABEL_59;
  }

  v6 = *(a1 + 32);
  v7 = *(a1 + 40);
  SessionStateString = NEIKEv2CreateSessionStateString();
  if (!v51)
  {
    [WeakRetained reportEvent:3009 detailsFormat:@"%@ session %@ changed state to %@", v6, v7, SessionStateString];

    if (a2 > 2)
    {
      if (a2 == 3)
      {
        v22 = _NRCopyLogObjectForNRUUID();
        IsLevelEnabled = _NRLogIsLevelEnabled();

        if (IsLevelEnabled)
        {
          v24 = _NRCopyLogObjectForNRUUID();
          v25 = [WeakRetained copyDescription];
          _NRLogWithArgs(v24, 0, "%s%.30s:%-4d %@: %@ IKE %@ disconnected", "", "[NRLinkQuickRelay setupIKECallbacksForClass:]_block_invoke", 1273, v25, *(a1 + 32), *(a1 + 40));
        }

        v26 = *(a1 + 56);
        if (v26 == 4)
        {
          [WeakRetained setIkeClassDEstablished:0];
        }

        else if (v26 == 3)
        {
          [WeakRetained setIkeClassCEstablished:0];
        }

        if (WeakRetained[252] == 1)
        {
          sub_10004B718(WeakRetained, *(a1 + 56));
        }

        else
        {
          [WeakRetained invalidateIKESessionForClass:*(a1 + 56)];
        }

        goto LABEL_59;
      }

      if (a2 == 4)
      {
        [WeakRetained cancelWithReason:{@"%@ session %@ got unexpected MOBIKE state", *(a1 + 32), *(a1 + 40)}];
        goto LABEL_59;
      }
    }

    else
    {
      if (a2 == 1)
      {
        if ([WeakRetained state] == 1)
        {
          v18 = _NRCopyLogObjectForNRUUID();
          v19 = _NRLogIsLevelEnabled();

          if (v19)
          {
            v20 = _NRCopyLogObjectForNRUUID();
            v21 = [WeakRetained copyDescription];
            _NRLogWithArgs(v20, 0, "%s%.30s:%-4d %@: %@ IKE %@ now connecting", "", "[NRLinkQuickRelay setupIKECallbacksForClass:]_block_invoke", 1241, v21, *(a1 + 32), *(a1 + 40));
          }

          [WeakRetained changeStateTo:5];
          goto LABEL_59;
        }

        v27 = [WeakRetained state];
        v28 = _NRCopyLogObjectForNRUUID();
        if (v27 != 5)
        {
          v46 = _NRLogIsLevelEnabled();

          if (!v46)
          {
            goto LABEL_59;
          }

          v30 = _NRCopyLogObjectForNRUUID();
          v31 = [WeakRetained copyDescription];
          v49 = *(a1 + 32);
          v50 = *(a1 + 40);
          v47 = 1246;
          v48 = v31;
          v32 = "%s%.30s:%-4d %@: %@ IKE %@ connecting but weird state";
          v44 = v30;
          v45 = 16;
          goto LABEL_58;
        }

        v29 = _NRLogIsLevelEnabled();

        if (!v29)
        {
          goto LABEL_59;
        }

        v30 = _NRCopyLogObjectForNRUUID();
        v31 = [WeakRetained copyDescription];
        v49 = *(a1 + 32);
        v50 = *(a1 + 40);
        v47 = 1244;
        v48 = v31;
        v32 = "%s%.30s:%-4d %@: %@ IKE %@ already connecting";
LABEL_55:
        v44 = v30;
        v45 = 0;
LABEL_58:
        _NRLogWithArgs(v44, v45, v32, "", "[NRLinkQuickRelay setupIKECallbacksForClass:]_block_invoke", v47, v48, v49, v50);

        goto LABEL_59;
      }

      if (a2 == 2)
      {
        v10 = *(a1 + 56);
        if (v10 == 3)
        {
          v33 = nr_absolute_time();
          v34 = *(WeakRetained + 687);
          if (v34)
          {
            *(v34 + 48) = v33;
          }

          [WeakRetained setIkeClassCEstablished:1];
          WeakRetained[259] = 0;
          v13 = objc_alloc_init(NSDate);
          sub_10004B904(WeakRetained, v13);
        }

        else
        {
          if (v10 != 4)
          {
LABEL_41:
            v35 = WeakRetained[16];
            if ((v35 - 8) < 2)
            {
              v36 = _NRCopyLogObjectForNRUUID();
              v37 = _NRLogIsLevelEnabled();

              if (v37)
              {
                v38 = _NRCopyLogObjectForNRUUID();
                v39 = [WeakRetained copyDescription];
                _NRLogWithArgs(v38, 0, "%s%.30s:%-4d %@: %@ IKE %@ connected", "", "[NRLinkQuickRelay setupIKECallbacksForClass:]_block_invoke", 1265, v39, *(a1 + 32), *(a1 + 40));
LABEL_47:

                goto LABEL_48;
              }

              goto LABEL_48;
            }

            if (v35 == 5)
            {
              v40 = _NRCopyLogObjectForNRUUID();
              v41 = _NRLogIsLevelEnabled();

              if (v41)
              {
                v38 = _NRCopyLogObjectForNRUUID();
                v39 = [WeakRetained copyDescription];
                _NRLogWithArgs(v38, 0, "%s%.30s:%-4d %@: %@ IKE %@ connected", "", "[NRLinkQuickRelay setupIKECallbacksForClass:]_block_invoke", 1262, v39, *(a1 + 32), *(a1 + 40));
                goto LABEL_47;
              }

LABEL_48:
              sub_10004B914(WeakRetained);
              goto LABEL_59;
            }

            v42 = _NRCopyLogObjectForNRUUID();
            v43 = _NRLogIsLevelEnabled();

            if (!v43)
            {
              goto LABEL_59;
            }

            v30 = _NRCopyLogObjectForNRUUID();
            v31 = [WeakRetained copyDescription];
            v49 = *(a1 + 32);
            v50 = *(a1 + 40);
            v47 = 1268;
            v48 = v31;
            v32 = "%s%.30s:%-4d %@: %@ IKE %@ connected but weird state";
            goto LABEL_55;
          }

          v11 = nr_absolute_time();
          v12 = *(WeakRetained + 687);
          if (v12)
          {
            *(v12 + 64) = v11;
          }

          [WeakRetained setIkeClassDEstablished:1];
          WeakRetained[258] = 0;
          v13 = objc_alloc_init(NSDate);
          sub_10004B8F4(WeakRetained, v13);
        }

        goto LABEL_41;
      }
    }

    v15 = *(a1 + 32);
    v16 = *(a1 + 40);
    v17 = NEIKEv2CreateSessionStateString();
    [WeakRetained cancelWithReason:{@"%@ session %@ got bad IKE state %@", v15, v16, v17}];

    goto LABEL_59;
  }

  [WeakRetained reportEvent:3018 detailsFormat:@"%@ session %@ got IKE error %@ with state %@", v6, v7, v51, SessionStateString];

  v9 = *(a1 + 56);
  if (v9 == 3)
  {
    [WeakRetained setIkeClassCEstablished:0];
  }

  else if (v9 == 4)
  {
    [WeakRetained setIkeClassDEstablished:0];
  }

  v14 = *(a1 + 56);
  if ((WeakRetained[248] & 1) == 0)
  {
    [WeakRetained processIKEDisconnection:v14 error:v51];
    if ([WeakRetained state] == 255)
    {
      goto LABEL_59;
    }

    v14 = *(a1 + 56);
  }

  if (WeakRetained[252] == 1)
  {
    sub_10004B718(WeakRetained, v14);
  }

  else
  {
    [WeakRetained invalidateIKESessionForClass:v14];
  }

LABEL_59:
}

void sub_10004AFAC(uint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  v14 = a4;
  WeakRetained = objc_loadWeakRetained((a1 + 48));
  if (WeakRetained)
  {
    if (v14)
    {
      v8 = *(a1 + 32);
      v9 = *(a1 + 40);
      SessionStateString = NEIKEv2CreateSessionStateString();
      [WeakRetained reportEvent:3018 detailsFormat:@"%@ session %@ got child %u state update %@ error %@", v8, v9, a2, SessionStateString, v14];

      if ((WeakRetained[248] & 1) == 0)
      {
        [WeakRetained processIKEDisconnection:*(a1 + 56) error:v14];
        if ([WeakRetained state] == 255)
        {
          goto LABEL_12;
        }
      }
    }

    else
    {
      v11 = *(a1 + 32);
      v12 = *(a1 + 40);
      if (a3 != 3)
      {
        v13 = NEIKEv2CreateSessionStateString();
        [WeakRetained reportEvent:3009 detailsFormat:@"%@ session %@ child %u state update %@", v11, v12, a2, v13];

        goto LABEL_12;
      }

      [WeakRetained reportEvent:3018 detailsFormat:@"%@ session %@ got child %u Disconnected state with no error", v11, *(a1 + 40), a2];
    }

    if (WeakRetained[252] == 1)
    {
      sub_10004B718(WeakRetained, *(a1 + 56));
    }

    else
    {
      [WeakRetained invalidateIKESessionForClass:*(a1 + 56)];
    }
  }

LABEL_12:
}

void sub_10004B114(uint64_t a1, void *a2)
{
  v8 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 48));
  if (WeakRetained)
  {
    v4 = _NRCopyLogObjectForNRUUID();
    IsLevelEnabled = _NRLogIsLevelEnabled();

    if (IsLevelEnabled)
    {
      v6 = _NRCopyLogObjectForNRUUID();
      v7 = [WeakRetained copyDescription];
      _NRLogWithArgs(v6, 0, "%s%.30s:%-4d %@: %@ session %@ got config update %@", "", "[NRLinkQuickRelay setupIKECallbacksForClass:]_block_invoke_3", 1336, v7, *(a1 + 32), *(a1 + 40), v8);
    }
  }
}

void sub_10004B1F4(uint64_t a1, uint64_t a2, void *a3, void *a4)
{
  v13 = a3;
  v7 = a4;
  WeakRetained = objc_loadWeakRetained((a1 + 48));
  if (WeakRetained)
  {
    v9 = _NRCopyLogObjectForNRUUID();
    IsLevelEnabled = _NRLogIsLevelEnabled();

    if (IsLevelEnabled)
    {
      v11 = _NRCopyLogObjectForNRUUID();
      v12 = [WeakRetained copyDescription];
      _NRLogWithArgs(v11, 0, "%s%.30s:%-4d %@: %@ session %@ got child %u traffic selector update local %@ remote %@", "", "[NRLinkQuickRelay setupIKECallbacksForClass:]_block_invoke_4", 1347, v12, *(a1 + 32), *(a1 + 40), a2, v13, v7);
    }
  }
}

void sub_10004B2F4(uint64_t a1, void *a2)
{
  v8 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 48));
  if (WeakRetained)
  {
    v4 = _NRCopyLogObjectForNRUUID();
    IsLevelEnabled = _NRLogIsLevelEnabled();

    if (IsLevelEnabled)
    {
      v6 = _NRCopyLogObjectForNRUUID();
      v7 = [WeakRetained copyDescription];
      _NRLogWithArgs(v6, 0, "%s%.30s:%-4d %@: %@ session %@ got additional addresses %@", "", "[NRLinkQuickRelay setupIKECallbacksForClass:]_block_invoke_5", 1356, v7, *(a1 + 32), *(a1 + 40), v8);
    }
  }
}

void sub_10004B3D4(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 48));
  if (WeakRetained)
  {
    v7 = WeakRetained;
    v3 = _NRCopyLogObjectForNRUUID();
    IsLevelEnabled = _NRLogIsLevelEnabled();

    WeakRetained = v7;
    if (IsLevelEnabled)
    {
      v5 = _NRCopyLogObjectForNRUUID();
      v6 = [v7 copyDescription];
      _NRLogWithArgs(v5, 0, "%s%.30s:%-4d %@: %@ session %@ got short DPD", "", "[NRLinkQuickRelay setupIKECallbacksForClass:]_block_invoke_6", 1364, v6, *(a1 + 32), *(a1 + 40));

      WeakRetained = v7;
    }
  }
}

void sub_10004B4A8(uint64_t a1, void *a2)
{
  v3 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 48));
  if (WeakRetained)
  {
    v5 = _NRCopyLogObjectForNRUUID();
    IsLevelEnabled = _NRLogIsLevelEnabled();

    if (IsLevelEnabled)
    {
      v7 = _NRCopyLogObjectForNRUUID();
      v8 = [WeakRetained copyDescription];
      _NRLogWithArgs(v7, 0, "%s%.30s:%-4d %@: %@ session %@ got private notifies %@", "", "[NRLinkQuickRelay setupIKECallbacksForClass:]_block_invoke_7", 1372, v8, *(a1 + 32), *(a1 + 40), v3);
    }

    v25 = 0u;
    v26 = 0u;
    v23 = 0u;
    v24 = 0u;
    v22 = v3;
    v9 = v3;
    v10 = [v9 countByEnumeratingWithState:&v23 objects:v27 count:16];
    if (v10)
    {
      v11 = v10;
      v12 = *v24;
      do
      {
        for (i = 0; i != v11; i = i + 1)
        {
          if (*v24 != v12)
          {
            objc_enumerationMutation(v9);
          }

          v14 = *(*(&v23 + 1) + 8 * i);
          v15 = [v14 notifyStatus];
          v16 = [v14 notifyData];
          v17 = _NRCopyLogObjectForNRUUID();
          v18 = _NRLogIsLevelEnabled();

          if (v18)
          {
            v19 = _NRCopyLogObjectForNRUUID();
            v20 = [WeakRetained copyDescription];
            _NRLogWithArgs(v19, 1, "%s%.30s:%-4d %@: Received notify code %u %@", "", "[NRLinkQuickRelay handleNotifyCode:payload:]", 1383, v20, v15, v16);
          }

          if (v15 == 50702)
          {
            v21 = [WeakRetained linkDelegate];
            [v21 linkDidReceiveData:WeakRetained data:v16];
          }
        }

        v11 = [v9 countByEnumeratingWithState:&v23 objects:v27 count:16];
      }

      while (v11);
    }

    v3 = v22;
  }
}

void sub_10004B718(_BYTE *a1, uint64_t a2)
{
  v4 = [a1 queue];
  dispatch_assert_queue_V2(v4);

  [a1 invalidateIKESessionForClass:a2];
  if (a2 == 4)
  {
    if (++a1[258] >= 3u)
    {
      v11 = _NRCopyLogObjectForNRUUID();
      IsLevelEnabled = _NRLogIsLevelEnabled();

      if (IsLevelEnabled)
      {
        v13 = _NRCopyLogObjectForNRUUID();
        v14 = [a1 copyDescription];
        _NRLogWithArgs(v13, 0, "%s%.30s:%-4d %@: hit max number of retries for ClassD IKE. Will retry when path changes", "", "[NRLinkQuickRelay restartIKESessionForClass:]", 1174, v14);
      }

      v9 = a1;
      v10 = 10023;
      goto LABEL_11;
    }
  }

  else if (a2 == 3 && ++a1[259] >= 3u)
  {
    v5 = _NRCopyLogObjectForNRUUID();
    v6 = _NRLogIsLevelEnabled();

    if (v6)
    {
      v7 = _NRCopyLogObjectForNRUUID();
      v8 = [a1 copyDescription];
      _NRLogWithArgs(v7, 0, "%s%.30s:%-4d %@: hit max number of retries for ClassC IKE. Will retry when path changes", "", "[NRLinkQuickRelay restartIKESessionForClass:]", 1167, v8);
    }

    v9 = a1;
    v10 = 10024;
LABEL_11:

    [v9 reportEvent:v10];
    return;
  }

  sub_100049D84(a1, a2);
}

void sub_10004B914(uint64_t a1)
{
  v2 = [a1 queue];
  dispatch_assert_queue_V2(v2);

  if ([a1 state] != 255)
  {
    sub_10004BA40(a1);
    if ([a1 hasCompanionDatapath])
    {
      [*(a1 + 327) setAvailability:1];
    }

    else if ([a1 virtualInterface])
    {
      [a1 virtualInterface];
      NEVirtualInterfaceSetRankNever();
      [a1 virtualInterface];
      NEVirtualInterfaceUpdateAdHocService();
    }

    if (*(a1 + 251) == 1)
    {
      *(a1 + 251) = 0;
      if (*(a1 + 249) == 1)
      {
        dispatch_resume(*(a1 + 367));
        *(a1 + 249) = 0;
      }
    }

    [a1 changeStateTo:8];
    v3 = [a1 linkDelegate];
    [v3 linkIsReady:a1];
  }
}

void sub_10004BA40(uint64_t a1)
{
  v2 = [a1 queue];
  dispatch_assert_queue_V2(v2);

  if (!*(a1 + 343))
  {
    v229[0] = 0;
    v229[1] = 0;
    if ([a1 hasCompanionDatapath])
    {
      v3 = [*(a1 + 327) nexusInstances];
    }

    else
    {
      v3 = sub_10013F0B0([a1 virtualInterface], 1);
    }

    v4 = v3;
    v5 = _NRCopyLogObjectForNRUUID();
    if (v4)
    {
      IsLevelEnabled = _NRLogIsLevelEnabled();

      if (IsLevelEnabled)
      {
        v7 = _NRCopyLogObjectForNRUUID();
        v8 = [a1 copyDescription];
        _NRLogWithArgs(v7, 1, "%s%.30s:%-4d %@: Created nexus instances: %@", "", "[NRLinkQuickRelay setupNexus]", 819, v8, v4);
      }

      if ([v4 count] == 1)
      {
        v9 = [v4 firstObject];
        [v9 getUUIDBytes:v229];
        if (!os_channel_attr_create())
        {
          v22 = _NRCopyLogObjectForNRUUID();
          v23 = _NRLogIsLevelEnabled();

          if (v23)
          {
            v24 = _NRCopyLogObjectForNRUUID();
            v25 = [a1 copyDescription];
            _NRLogWithArgs(v24, 17, "%@: os_channel_attr_create failed", v25);
          }

          goto LABEL_28;
        }

        os_channel_attr_set();
        extended = os_channel_create_extended();
        v11 = extended;
        if (!extended)
        {
          v26 = *__error();
          if (strerror_r(v26, v228, 0x80uLL))
          {
            LOBYTE(v228[0]) = 0;
          }

          if (qword_100228FA0 != -1)
          {
            dispatch_once(&qword_100228FA0, &stru_1001FAAA0);
          }

          if (_NRLogIsLevelEnabled())
          {
            v27 = sub_100046E64();
            _NRLogWithArgs(v27, 17, "os_channel_create_extended failed: [%d] %s", v26, v228);
          }

          [a1 virtualInterface];
          NEVirtualInterfaceDisableChannel();
          os_channel_attr_destroy();
          goto LABEL_28;
        }

        *(a1 + 343) = extended;
        v228[0] = 0;
        v12 = os_channel_attr_get();
        v13 = _NRCopyLogObjectForNRUUID();
        if (v12)
        {
          v14 = _NRLogIsLevelEnabled();

          if (v14)
          {
            v15 = _NRCopyLogObjectForNRUUID();
            v16 = [a1 copyDescription];
            _NRLogWithArgs(v15, 17, "%@: os_channel_attr_get(TX_RINGS) returned %d", v16, v12);
          }

          goto LABEL_28;
        }

        v28 = _NRLogIsLevelEnabled();

        if (v28)
        {
          v29 = _NRCopyLogObjectForNRUUID();
          v30 = [a1 copyDescription];
          _NRLogWithArgs(v29, 1, "%s%.30s:%-4d %@: Nexus Channel TX_RINGS = %llu", "", "[NRLinkQuickRelay setupNexus]", 864, v30, v228[0]);
        }

        v228[0] = 0;
        v31 = os_channel_attr_get();
        v32 = _NRCopyLogObjectForNRUUID();
        if (v31)
        {
          v33 = _NRLogIsLevelEnabled();

          if (v33)
          {
            v34 = _NRCopyLogObjectForNRUUID();
            v35 = [a1 copyDescription];
            _NRLogWithArgs(v34, 17, "%@: os_channel_attr_get(RX_RINGS) returned %d", v35, v31);
          }

          goto LABEL_28;
        }

        v36 = _NRLogIsLevelEnabled();

        if (v36)
        {
          v37 = _NRCopyLogObjectForNRUUID();
          v38 = [a1 copyDescription];
          _NRLogWithArgs(v37, 1, "%s%.30s:%-4d %@: Nexus Channel RX_RINGS = %llu", "", "[NRLinkQuickRelay setupNexus]", 865, v38, v228[0]);
        }

        v228[0] = 0;
        v39 = os_channel_attr_get();
        v40 = _NRCopyLogObjectForNRUUID();
        if (v39)
        {
          v41 = _NRLogIsLevelEnabled();

          if (v41)
          {
            v42 = _NRCopyLogObjectForNRUUID();
            v43 = [a1 copyDescription];
            _NRLogWithArgs(v42, 17, "%@: os_channel_attr_get(TX_SLOTS) returned %d", v43, v39);
          }

          goto LABEL_28;
        }

        v44 = _NRLogIsLevelEnabled();

        if (v44)
        {
          v45 = _NRCopyLogObjectForNRUUID();
          v46 = [a1 copyDescription];
          _NRLogWithArgs(v45, 1, "%s%.30s:%-4d %@: Nexus Channel TX_SLOTS = %llu", "", "[NRLinkQuickRelay setupNexus]", 866, v46, v228[0]);
        }

        v228[0] = 0;
        v47 = os_channel_attr_get();
        v48 = _NRCopyLogObjectForNRUUID();
        if (v47)
        {
          v49 = _NRLogIsLevelEnabled();

          if (v49)
          {
            v50 = _NRCopyLogObjectForNRUUID();
            v51 = [a1 copyDescription];
            _NRLogWithArgs(v50, 17, "%@: os_channel_attr_get(RX_SLOTS) returned %d", v51, v47);
          }

          goto LABEL_28;
        }

        v52 = _NRLogIsLevelEnabled();

        if (v52)
        {
          v53 = _NRCopyLogObjectForNRUUID();
          v54 = [a1 copyDescription];
          _NRLogWithArgs(v53, 1, "%s%.30s:%-4d %@: Nexus Channel RX_SLOTS = %llu", "", "[NRLinkQuickRelay setupNexus]", 867, v54, v228[0]);
        }

        v228[0] = 0;
        v55 = os_channel_attr_get();
        v56 = _NRCopyLogObjectForNRUUID();
        if (v55)
        {
          v57 = _NRLogIsLevelEnabled();

          if (v57)
          {
            v58 = _NRCopyLogObjectForNRUUID();
            v59 = [a1 copyDescription];
            _NRLogWithArgs(v58, 17, "%@: os_channel_attr_get(SLOT_BUF_SIZE) returned %d", v59, v55);
          }

          goto LABEL_28;
        }

        v60 = _NRLogIsLevelEnabled();

        if (v60)
        {
          v61 = _NRCopyLogObjectForNRUUID();
          v62 = [a1 copyDescription];
          _NRLogWithArgs(v61, 1, "%s%.30s:%-4d %@: Nexus Channel SLOT_BUF_SIZE = %llu", "", "[NRLinkQuickRelay setupNexus]", 868, v62, v228[0]);
        }

        v228[0] = 0;
        v63 = os_channel_attr_get();
        v64 = _NRCopyLogObjectForNRUUID();
        if (v63)
        {
          v65 = _NRLogIsLevelEnabled();

          if (v65)
          {
            v66 = _NRCopyLogObjectForNRUUID();
            v67 = [a1 copyDescription];
            _NRLogWithArgs(v66, 17, "%@: os_channel_attr_get(SLOT_META_SIZE) returned %d", v67, v63);
          }

          goto LABEL_28;
        }

        v68 = _NRLogIsLevelEnabled();

        if (v68)
        {
          v69 = _NRCopyLogObjectForNRUUID();
          v70 = [a1 copyDescription];
          _NRLogWithArgs(v69, 1, "%s%.30s:%-4d %@: Nexus Channel SLOT_META_SIZE = %llu", "", "[NRLinkQuickRelay setupNexus]", 869, v70, v228[0]);
        }

        v228[0] = 0;
        v71 = os_channel_attr_get();
        v72 = _NRCopyLogObjectForNRUUID();
        if (v71)
        {
          v73 = _NRLogIsLevelEnabled();

          if (v73)
          {
            v74 = _NRCopyLogObjectForNRUUID();
            v75 = [a1 copyDescription];
            _NRLogWithArgs(v74, 17, "%@: os_channel_attr_get(EXCLUSIVE) returned %d", v75, v71);
          }

          goto LABEL_28;
        }

        v76 = _NRLogIsLevelEnabled();

        if (v76)
        {
          v77 = _NRCopyLogObjectForNRUUID();
          v78 = [a1 copyDescription];
          _NRLogWithArgs(v77, 1, "%s%.30s:%-4d %@: Nexus Channel EXCLUSIVE = %llu", "", "[NRLinkQuickRelay setupNexus]", 870, v78, v228[0]);
        }

        v228[0] = 0;
        v79 = os_channel_attr_get();
        v80 = _NRCopyLogObjectForNRUUID();
        if (v79)
        {
          v81 = _NRLogIsLevelEnabled();

          if (v81)
          {
            v82 = _NRCopyLogObjectForNRUUID();
            v83 = [a1 copyDescription];
            _NRLogWithArgs(v82, 17, "%@: os_channel_attr_get(NO_AUTO_SYNC) returned %d", v83, v79);
          }

          goto LABEL_28;
        }

        v84 = _NRLogIsLevelEnabled();

        if (v84)
        {
          v85 = _NRCopyLogObjectForNRUUID();
          v86 = [a1 copyDescription];
          _NRLogWithArgs(v85, 1, "%s%.30s:%-4d %@: Nexus Channel NO_AUTO_SYNC = %llu", "", "[NRLinkQuickRelay setupNexus]", 871, v86, v228[0]);
        }

        v228[0] = 0;
        v87 = os_channel_attr_get();
        v88 = _NRCopyLogObjectForNRUUID();
        if (v87)
        {
          v89 = _NRLogIsLevelEnabled();

          if (v89)
          {
            v90 = _NRCopyLogObjectForNRUUID();
            v91 = [a1 copyDescription];
            _NRLogWithArgs(v90, 17, "%@: os_channel_attr_get(TX_LOWAT_UNIT) returned %d", v91, v87);
          }

          goto LABEL_28;
        }

        v92 = _NRLogIsLevelEnabled();

        if (v92)
        {
          v93 = _NRCopyLogObjectForNRUUID();
          v94 = [a1 copyDescription];
          _NRLogWithArgs(v93, 1, "%s%.30s:%-4d %@: Nexus Channel TX_LOWAT_UNIT = %llu", "", "[NRLinkQuickRelay setupNexus]", 872, v94, v228[0]);
        }

        v228[0] = 0;
        v95 = os_channel_attr_get();
        v96 = _NRCopyLogObjectForNRUUID();
        if (v95)
        {
          v97 = _NRLogIsLevelEnabled();

          if (v97)
          {
            v98 = _NRCopyLogObjectForNRUUID();
            v99 = [a1 copyDescription];
            _NRLogWithArgs(v98, 17, "%@: os_channel_attr_get(TX_LOWAT_VALUE) returned %d", v99, v95);
          }

          goto LABEL_28;
        }

        v100 = _NRLogIsLevelEnabled();

        if (v100)
        {
          v101 = _NRCopyLogObjectForNRUUID();
          v102 = [a1 copyDescription];
          _NRLogWithArgs(v101, 1, "%s%.30s:%-4d %@: Nexus Channel TX_LOWAT_VALUE = %llu", "", "[NRLinkQuickRelay setupNexus]", 873, v102, v228[0]);
        }

        v228[0] = 0;
        v103 = os_channel_attr_get();
        v104 = _NRCopyLogObjectForNRUUID();
        if (v103)
        {
          v105 = _NRLogIsLevelEnabled();

          if (v105)
          {
            v106 = _NRCopyLogObjectForNRUUID();
            v107 = [a1 copyDescription];
            _NRLogWithArgs(v106, 17, "%@: os_channel_attr_get(RX_LOWAT_UNIT) returned %d", v107, v103);
          }

          goto LABEL_28;
        }

        v108 = _NRLogIsLevelEnabled();

        if (v108)
        {
          v109 = _NRCopyLogObjectForNRUUID();
          v110 = [a1 copyDescription];
          _NRLogWithArgs(v109, 1, "%s%.30s:%-4d %@: Nexus Channel RX_LOWAT_UNIT = %llu", "", "[NRLinkQuickRelay setupNexus]", 874, v110, v228[0]);
        }

        v228[0] = 0;
        v111 = os_channel_attr_get();
        v112 = _NRCopyLogObjectForNRUUID();
        if (v111)
        {
          v113 = _NRLogIsLevelEnabled();

          if (v113)
          {
            v114 = _NRCopyLogObjectForNRUUID();
            v115 = [a1 copyDescription];
            _NRLogWithArgs(v114, 17, "%@: os_channel_attr_get(RX_LOWAT_VALUE) returned %d", v115, v111);
          }

          goto LABEL_28;
        }

        v116 = _NRLogIsLevelEnabled();

        if (v116)
        {
          v117 = _NRCopyLogObjectForNRUUID();
          v118 = [a1 copyDescription];
          _NRLogWithArgs(v117, 1, "%s%.30s:%-4d %@: Nexus Channel RX_LOWAT_VALUE = %llu", "", "[NRLinkQuickRelay setupNexus]", 875, v118, v228[0]);
        }

        v228[0] = 0;
        v119 = os_channel_attr_get();
        v120 = _NRCopyLogObjectForNRUUID();
        if (v119)
        {
          v121 = _NRLogIsLevelEnabled();

          if (v121)
          {
            v122 = _NRCopyLogObjectForNRUUID();
            v123 = [a1 copyDescription];
            _NRLogWithArgs(v122, 17, "%@: os_channel_attr_get(NEXUS_TYPE) returned %d", v123, v119);
          }

          goto LABEL_28;
        }

        v124 = _NRLogIsLevelEnabled();

        if (v124)
        {
          v125 = _NRCopyLogObjectForNRUUID();
          v126 = [a1 copyDescription];
          _NRLogWithArgs(v125, 1, "%s%.30s:%-4d %@: Nexus Channel NEXUS_TYPE = %llu", "", "[NRLinkQuickRelay setupNexus]", 876, v126, v228[0]);
        }

        v228[0] = 0;
        v127 = os_channel_attr_get();
        v128 = _NRCopyLogObjectForNRUUID();
        if (v127)
        {
          v129 = _NRLogIsLevelEnabled();

          if (v129)
          {
            v130 = _NRCopyLogObjectForNRUUID();
            v131 = [a1 copyDescription];
            _NRLogWithArgs(v130, 17, "%@: os_channel_attr_get(NEXUS_EXTENSIONS) returned %d", v131, v127);
          }

          goto LABEL_28;
        }

        v132 = _NRLogIsLevelEnabled();

        if (v132)
        {
          v133 = _NRCopyLogObjectForNRUUID();
          v134 = [a1 copyDescription];
          _NRLogWithArgs(v133, 1, "%s%.30s:%-4d %@: Nexus Channel NEXUS_EXTENSIONS = %llu", "", "[NRLinkQuickRelay setupNexus]", 877, v134, v228[0]);
        }

        v228[0] = 0;
        v135 = os_channel_attr_get();
        v136 = _NRCopyLogObjectForNRUUID();
        if (v135)
        {
          v137 = _NRLogIsLevelEnabled();

          if (v137)
          {
            v138 = _NRCopyLogObjectForNRUUID();
            v139 = [a1 copyDescription];
            _NRLogWithArgs(v138, 17, "%@: os_channel_attr_get(NEXUS_MHINTS) returned %d", v139, v135);
          }

          goto LABEL_28;
        }

        v140 = _NRLogIsLevelEnabled();

        if (v140)
        {
          v141 = _NRCopyLogObjectForNRUUID();
          v142 = [a1 copyDescription];
          _NRLogWithArgs(v141, 1, "%s%.30s:%-4d %@: Nexus Channel NEXUS_MHINTS = %llu", "", "[NRLinkQuickRelay setupNexus]", 878, v142, v228[0]);
        }

        v228[0] = 0;
        v143 = os_channel_attr_get();
        v144 = _NRCopyLogObjectForNRUUID();
        if (v143)
        {
          v145 = _NRLogIsLevelEnabled();

          if (v145)
          {
            v146 = _NRCopyLogObjectForNRUUID();
            v147 = [a1 copyDescription];
            _NRLogWithArgs(v146, 17, "%@: os_channel_attr_get(NEXUS_IFINDEX) returned %d", v147, v143);
          }

          goto LABEL_28;
        }

        v148 = _NRLogIsLevelEnabled();

        if (v148)
        {
          v149 = _NRCopyLogObjectForNRUUID();
          v150 = [a1 copyDescription];
          _NRLogWithArgs(v149, 1, "%s%.30s:%-4d %@: Nexus Channel NEXUS_IFINDEX = %llu", "", "[NRLinkQuickRelay setupNexus]", 879, v150, v228[0]);
        }

        v228[0] = 0;
        v151 = os_channel_attr_get();
        v152 = _NRCopyLogObjectForNRUUID();
        if (v151)
        {
          v153 = _NRLogIsLevelEnabled();

          if (v153)
          {
            v154 = _NRCopyLogObjectForNRUUID();
            v155 = [a1 copyDescription];
            _NRLogWithArgs(v154, 17, "%@: os_channel_attr_get(NEXUS_STATS_SIZE) returned %d", v155, v151);
          }

          goto LABEL_28;
        }

        v156 = _NRLogIsLevelEnabled();

        if (v156)
        {
          v157 = _NRCopyLogObjectForNRUUID();
          v158 = [a1 copyDescription];
          _NRLogWithArgs(v157, 1, "%s%.30s:%-4d %@: Nexus Channel NEXUS_STATS_SIZE = %llu", "", "[NRLinkQuickRelay setupNexus]", 880, v158, v228[0]);
        }

        v228[0] = 0;
        v159 = os_channel_attr_get();
        v160 = _NRCopyLogObjectForNRUUID();
        if (v159)
        {
          v161 = _NRLogIsLevelEnabled();

          if (v161)
          {
            v162 = _NRCopyLogObjectForNRUUID();
            v163 = [a1 copyDescription];
            _NRLogWithArgs(v162, 17, "%@: os_channel_attr_get(NEXUS_FLOWADV_MAX) returned %d", v163, v159);
          }

          goto LABEL_28;
        }

        v164 = _NRLogIsLevelEnabled();

        if (v164)
        {
          v165 = _NRCopyLogObjectForNRUUID();
          v166 = [a1 copyDescription];
          _NRLogWithArgs(v165, 1, "%s%.30s:%-4d %@: Nexus Channel NEXUS_FLOWADV_MAX = %llu", "", "[NRLinkQuickRelay setupNexus]", 881, v166, v228[0]);
        }

        os_channel_attr_destroy();
        os_channel_ring_id();
        v167 = os_channel_rx_ring();
        *(a1 + 351) = v167;
        if (!v167)
        {
          v185 = _NRCopyLogObjectForNRUUID();
          v186 = _NRLogIsLevelEnabled();

          if (v186)
          {
            v187 = _NRCopyLogObjectForNRUUID();
            v188 = [a1 copyDescription];
            _NRLogWithArgs(v187, 17, "%@: _nexusInputRing is NULL", v188);
          }

          goto LABEL_28;
        }

        os_channel_ring_id();
        v168 = os_channel_tx_ring();
        *(a1 + 359) = v168;
        if (!v168)
        {
          v189 = _NRCopyLogObjectForNRUUID();
          v190 = _NRLogIsLevelEnabled();

          if (v190)
          {
            v191 = _NRCopyLogObjectForNRUUID();
            v192 = [a1 copyDescription];
            _NRLogWithArgs(v191, 17, "%@: _nexusOutputRing is NULL", v192);
          }

          goto LABEL_28;
        }

        fd = os_channel_get_fd();
        if ((fd & 0x80000000) != 0)
        {
          v193 = _NRCopyLogObjectForNRUUID();
          v194 = _NRLogIsLevelEnabled();

          if (v194)
          {
            v195 = _NRCopyLogObjectForNRUUID();
            v196 = [a1 copyDescription];
            _NRLogWithArgs(v195, 17, "%@: os_channel_get_fd failed", v196);
          }

          goto LABEL_28;
        }

        v170 = dispatch_group_create();
        if (v170)
        {
          v171 = v170;
          v172 = dispatch_source_create(&_dispatch_source_type_read, fd, 0, *(a1 + 8));
          v173 = *(a1 + 367);
          *(a1 + 367) = v172;

          if (*(a1 + 367))
          {
            objc_initWeak(v228, a1);
            v174 = *(a1 + 367);
            v226[0] = _NSConcreteStackBlock;
            v226[1] = 3221225472;
            v226[2] = sub_10004D6C4;
            v226[3] = &unk_1001FC730;
            objc_copyWeak(&v227, v228);
            dispatch_source_set_event_handler(v174, v226);
            dispatch_group_enter(v171);
            v175 = *(a1 + 367);
            v224[0] = _NSConcreteStackBlock;
            v224[1] = 3221225472;
            v224[2] = sub_10004DC0C;
            v224[3] = &unk_1001FD3C8;
            v176 = v171;
            v225 = v176;
            dispatch_source_set_cancel_handler(v175, v224);
            dispatch_activate(*(a1 + 367));
            v177 = dispatch_source_create(&_dispatch_source_type_write, fd, 0, *(a1 + 8));
            v178 = *(a1 + 375);
            *(a1 + 375) = v177;

            v179 = *(a1 + 375);
            if (v179)
            {
              v222[0] = _NSConcreteStackBlock;
              v222[1] = 3221225472;
              v222[2] = sub_10004DC14;
              v222[3] = &unk_1001FC730;
              objc_copyWeak(&v223, v228);
              dispatch_source_set_event_handler(v179, v222);
              dispatch_group_enter(v176);
              v180 = *(a1 + 375);
              v220[0] = _NSConcreteStackBlock;
              v220[1] = 3221225472;
              v220[2] = sub_10004E264;
              v220[3] = &unk_1001FD3C8;
              v181 = v176;
              v221 = v181;
              dispatch_source_set_cancel_handler(v180, v220);
              *(a1 + 250) = 1;
              v182 = *(a1 + 8);
              v219[0] = _NSConcreteStackBlock;
              v219[1] = 3221225472;
              v219[2] = sub_10004E26C;
              v219[3] = &unk_1001FCDD8;
              v219[4] = v11;
              dispatch_group_notify(v181, v182, v219);
              v183 = *(a1 + 383);
              *(a1 + 383) = v181;
              v184 = v181;

              objc_destroyWeak(&v223);
              objc_destroyWeak(&v227);
              objc_destroyWeak(v228);
LABEL_28:

              goto LABEL_29;
            }

            v211 = sub_100046E64();
            v212 = _NRLogIsLevelEnabled();

            if (v212)
            {
              v213 = sub_100046E64();
              _NRLogWithArgs(v213, 16, "%s%.30s:%-4d ABORTING: Assertion Failed: (_dNexusWriteSource) != ((void*)0)", "", "[NRLinkQuickRelay setupNexus]", 950);
            }

            v214 = _os_log_pack_size();
            v215 = &v219[-1] - ((__chkstk_darwin() + 15) & 0xFFFFFFFFFFFFFFF0);
            v216 = __error();
            v217 = _os_log_pack_fill(v215, v214, *v216, &_mh_execute_header, "%{public}s Assertion Failed: (_dNexusWriteSource) != ((void*)0)");
            *v217 = 136446210;
            *(v217 + 4) = "[NRLinkQuickRelay setupNexus]";
            sub_100046E64();
            _NRLogAbortWithPack();
          }

          else
          {
            v204 = sub_100046E64();
            v205 = _NRLogIsLevelEnabled();

            if (v205)
            {
              v206 = sub_100046E64();
              _NRLogWithArgs(v206, 16, "%s%.30s:%-4d ABORTING: Assertion Failed: (_dNexusReadSource) != ((void*)0)", "", "[NRLinkQuickRelay setupNexus]", 915);
            }

            v207 = _os_log_pack_size();
            v208 = &v219[-1] - ((__chkstk_darwin() + 15) & 0xFFFFFFFFFFFFFFF0);
            v209 = __error();
            v210 = _os_log_pack_fill(v208, v207, *v209, &_mh_execute_header, "%{public}s Assertion Failed: (_dNexusReadSource) != ((void*)0)");
            *v210 = 136446210;
            *(v210 + 4) = "[NRLinkQuickRelay setupNexus]";
            sub_100046E64();
            _NRLogAbortWithPack();
          }
        }

        else
        {
          v197 = sub_100046E64();
          v198 = _NRLogIsLevelEnabled();

          if (v198)
          {
            v199 = sub_100046E64();
            _NRLogWithArgs(v199, 16, "%s%.30s:%-4d ABORTING: Assertion Failed: (nexusGroup) != ((void*)0)", "", "[NRLinkQuickRelay setupNexus]", 912);
          }

          v200 = _os_log_pack_size();
          v201 = &v219[-1] - ((__chkstk_darwin() + 15) & 0xFFFFFFFFFFFFFFF0);
          v202 = __error();
          v203 = _os_log_pack_fill(v201, v200, *v202, &_mh_execute_header, "%{public}s Assertion Failed: (nexusGroup) != ((void*)0)");
          *v203 = 136446210;
          *(v203 + 4) = "[NRLinkQuickRelay setupNexus]";
          sub_100046E64();
          _NRLogAbortWithPack();
        }

        __break(1u);
        return;
      }

      v20 = _NRCopyLogObjectForNRUUID();
      v21 = _NRLogIsLevelEnabled();

      if (v21)
      {
        v18 = _NRCopyLogObjectForNRUUID();
        v19 = [a1 copyDescription];
        _NRLogWithArgs(v18, 17, "%@: Expected to receive count: %@", v19, v4);
        goto LABEL_18;
      }
    }

    else
    {
      v17 = _NRLogIsLevelEnabled();

      if (v17)
      {
        v18 = _NRCopyLogObjectForNRUUID();
        v19 = [a1 copyDescription];
        _NRLogWithArgs(v18, 17, "%@: Failed to get nexus instances", v19);
LABEL_18:
      }
    }

LABEL_29:
  }
}

void sub_10004D698(_Unwind_Exception *a1)
{
  objc_destroyWeak((v1 + 200));
  objc_destroyWeak((v1 + 208));
  _Unwind_Resume(a1);
}

void sub_10004D6C4(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v2 = WeakRetained;
  if (WeakRetained)
  {
    if (WeakRetained[16] == 255)
    {
      v10 = _NRCopyLogObjectForNRUUID();
      IsLevelEnabled = _NRLogIsLevelEnabled();

      if (IsLevelEnabled)
      {
        v3 = _NRCopyLogObjectForNRUUID();
        v8 = [v2 copyDescription];
        _NRLogWithArgs(v3, 16, "%s%.30s:%-4d %@: Nexus input available but cancelled", "", "[NRLinkQuickRelay setupNexus]_block_invoke", 926, v8);
LABEL_26:

        goto LABEL_27;
      }
    }

    else
    {
      if (gNRPacketLoggingEnabled == 1)
      {
        v25 = _NRCopyLogObjectForNRUUID();
        v26 = _NRLogIsLevelEnabled();

        if (v26)
        {
          v27 = _NRCopyLogObjectForNRUUID();
          v28 = [v2 copyDescription];
          _NRLogWithArgs(v27, 1, "%s%.30s:%-4d %@: Nexus input available", "", "[NRLinkQuickRelay setupNexus]_block_invoke", 930, v28);
        }
      }

      ++*(v2 + 495);
      if (*(v2 + 279))
      {
        v3 = v2;
        v4 = [v3 queue];
        dispatch_assert_queue_V2(v4);

        v5 = v2[16];
        if (v5 == 255)
        {
          v6 = _NRCopyLogObjectForNRUUID();
          v7 = _NRLogIsLevelEnabled();

          if (v7)
          {
            v8 = _NRCopyLogObjectForNRUUID();
            v9 = [v3 copyDescription];
            _NRLogWithArgs(v8, 16, "%s%.30s:%-4d %@: link is cancelled", "", "NRLinkLoopInterfaceToQR", 2037, v9);
LABEL_25:

            goto LABEL_26;
          }

LABEL_27:

          goto LABEL_28;
        }

        if (v5 == 1)
        {
          v29 = _NRCopyLogObjectForNRUUID();
          v30 = _NRLogIsLevelEnabled();

          if (!v30)
          {
            goto LABEL_27;
          }

          v8 = _NRCopyLogObjectForNRUUID();
          v9 = [v3 copyDescription];
          v31 = v9;
          v21 = "%@: Link not ready to accept packets";
        }

        else
        {
          if (*(v3 + 343))
          {
            v12 = *(v3 + 695);
            if (v12 && [v12 connectionState] == 3)
            {
              if (v3[249] != 1)
              {
                v39 = 0;
                v22 = sub_10004E2D0(v3, &v39);
                objc_initWeak(&location, v3);
                *(v3 + 431) += v39;
                v23 = [v3 connection];
                v35[0] = _NSConcreteStackBlock;
                v35[1] = 3221225472;
                v35[2] = sub_10004E90C;
                v35[3] = &unk_1001FAAC8;
                objc_copyWeak(v37, &location);
                v24 = v22;
                v36 = v24;
                v37[1] = v39;
                [v23 writeDatagrams:v24 completionHandler:v35];

                dispatch_suspend(*(v3 + 367));
                v3[249] = 1;

                objc_destroyWeak(v37);
                objc_destroyWeak(&location);

                goto LABEL_27;
              }

              if (gNRPacketLoggingEnabled != 1)
              {
                goto LABEL_27;
              }

              v13 = _NRCopyLogObjectForNRUUID();
              v14 = _NRLogIsLevelEnabled();

              if (!v14)
              {
                goto LABEL_27;
              }

              v8 = _NRCopyLogObjectForNRUUID();
              v9 = [v3 copyDescription];
              _NRLogWithArgs(v8, 1, "%s%.30s:%-4d %@: Skipping writing to QR because source suspended", "", "NRLinkLoopInterfaceToQR", 2058, v9);
            }

            else
            {
              if (gNRPacketLoggingEnabled != 1)
              {
                goto LABEL_27;
              }

              v15 = _NRCopyLogObjectForNRUUID();
              v16 = _NRLogIsLevelEnabled();

              if (!v16)
              {
                goto LABEL_27;
              }

              v8 = _NRCopyLogObjectForNRUUID();
              v9 = [v3 copyDescription];
              v17 = *(v3 + 695);
              v18 = sub_10004E274([v17 connectionState]);
              _NRLogWithArgs(v8, 1, "%s%.30s:%-4d %@: Skipping writing to QR because connection %@ state %@", "", "NRLinkLoopInterfaceToQR", 2053, v9, v17, v18);
            }

            goto LABEL_25;
          }

          v19 = _NRCopyLogObjectForNRUUID();
          v20 = _NRLogIsLevelEnabled();

          if (!v20)
          {
            goto LABEL_27;
          }

          v8 = _NRCopyLogObjectForNRUUID();
          v9 = [v3 copyDescription];
          v31 = v9;
          v21 = "%@: No nexus channel";
        }

        _NRLogWithArgs(v8, 17, v21, v31, v32, v33, v34);
        goto LABEL_25;
      }

      v2[251] = 1;
      dispatch_suspend(*(v2 + 367));
      v2[249] = 1;
    }
  }

LABEL_28:
}

void sub_10004DBE8(_Unwind_Exception *a1)
{
  objc_destroyWeak((v1 + 40));
  objc_destroyWeak((v2 - 64));
  _Unwind_Resume(a1);
}

void sub_10004DC14(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v2 = WeakRetained;
  if (WeakRetained)
  {
    if (WeakRetained[16] != 255)
    {
      if (gNRPacketLoggingEnabled == 1)
      {
        v29 = _NRCopyLogObjectForNRUUID();
        IsLevelEnabled = _NRLogIsLevelEnabled();

        if (IsLevelEnabled)
        {
          v31 = _NRCopyLogObjectForNRUUID();
          v32 = [v2 copyDescription];
          _NRLogWithArgs(v31, 1, "%s%.30s:%-4d %@: Nexus output available", "", "[NRLinkQuickRelay setupNexus]_block_invoke", 962, v32);
        }
      }

      ++*(v2 + 503);
      v3 = v2;
      v4 = [v3 queue];
      dispatch_assert_queue_V2(v4);

      if (v2[16] == 255)
      {
        v25 = _NRCopyLogObjectForNRUUID();
        v26 = _NRLogIsLevelEnabled();

        if (v26)
        {
          v27 = _NRCopyLogObjectForNRUUID();
          v28 = [v3 copyDescription];
          _NRLogWithArgs(v27, 16, "%s%.30s:%-4d %@: link is cancelled", "", "NRLinkLoopQRToInterface", 2108, v28);
        }
      }

      else if ([*(v3 + 391) count])
      {
        v43 = v2;
        os_channel_ring_id();
        os_channel_tx_ring();
        v56 = 0u;
        v57 = 0u;
        v54 = 0u;
        v55 = 0u;
        v50 = 0u;
        v51 = 0u;
        v52 = 0u;
        v53 = 0u;
        obj = *(v3 + 391);
        v45 = [obj countByEnumeratingWithState:&v50 objects:v58 count:16];
        v5 = 0;
        v6 = 0;
        i = 0;
        if (v45)
        {
          v44 = *v51;
          while (2)
          {
            v8 = 0;
            v9 = v5;
            v5 += v45;
            do
            {
              if (*v51 != v44)
              {
                objc_enumerationMutation(obj);
              }

              v48 = v8;
              v10 = *(*(&v50 + 1) + 8 * v8);
              v11 = [v10 length];
              v12 = [v10 bytes];
              next_slot = os_channel_get_next_slot();
              if (!next_slot)
              {
                v5 = v9;
                goto LABEL_37;
              }

              v49 = v9;
              v46 = v11;
              v14 = v11;
              if (v11 >= 1)
              {
                for (i = next_slot; ; i = v19)
                {
                  v15 = *(v3 + 263);
                  if (*(v3 + 263))
                  {
                    *v55 = 503316480;
                    v15 = *(v3 + 263);
                  }

                  if ((WORD1(v54) - v15) >= v14)
                  {
                    v16 = v14;
                  }

                  else
                  {
                    v16 = WORD1(v54) - v15;
                  }

                  WORD1(v54) = v15 + v16;
                  v17 = v16;
                  memcpy((v55 + v15), v12, v16);
                  os_channel_set_slot_properties();
                  v14 -= v16;
                  if (v14 < 1)
                  {
                    v6 = (v16 + v6);
                    goto LABEL_26;
                  }

                  v18 = os_channel_get_next_slot();
                  if (!v18)
                  {
                    break;
                  }

                  v19 = v18;
                  if (gNRPacketLoggingEnabled)
                  {
                    v20 = _NRCopyLogObjectForNRUUID();
                    v41 = _NRLogIsLevelEnabled();

                    if (v41)
                    {
                      v21 = _NRCopyLogObjectForNRUUID();
                      v42 = [v3 copyDescription];
                      _NRLogWithArgs(v21, 1, "%s%.30s:%-4d %@: Writing partial packet", "", "NRLinkLoopQRToInterface", 2153, v42);
                    }
                  }

                  v12 += v17;
                  v6 = (v17 + v6);
                }

                if (gNRPacketLoggingEnabled)
                {
                  v37 = _NRCopyLogObjectForNRUUID();
                  v38 = _NRLogIsLevelEnabled();

                  if (v38)
                  {
                    v39 = _NRCopyLogObjectForNRUUID();
                    v40 = [v3 copyDescription];
                    _NRLogWithArgs(v39, 1, "%s%.30s:%-4d %@: No slot midway", "", "NRLinkLoopQRToInterface", 2150, v40);
                  }
                }

LABEL_36:
                v5 = v49;
                goto LABEL_37;
              }

LABEL_26:
              if (v14)
              {
                goto LABEL_36;
              }

              *(v3 + 487) += v46;
              v9 = v49 + 1;
              v8 = v48 + 1;
            }

            while ((v48 + 1) != v45);
            v45 = [obj countByEnumeratingWithState:&v50 objects:v58 count:16];
            if (v45)
            {
              continue;
            }

            break;
          }
        }

LABEL_37:

        if (gNRPacketLoggingEnabled == 1)
        {
          v33 = _NRCopyLogObjectForNRUUID();
          v34 = _NRLogIsLevelEnabled();

          if (v34)
          {
            v35 = _NRCopyLogObjectForNRUUID();
            v36 = [v3 copyDescription];
            _NRLogWithArgs(v35, 1, "%s%.30s:%-4d %@: Read from QR: %d bytes", "", "NRLinkLoopQRToInterface", 2168, v36, v6);
          }
        }

        if (i)
        {
          os_channel_advance_slot();
          os_channel_sync();
          if (v5 >= 1)
          {
            do
            {
              [*(v3 + 391) removeFirstObject];
              --v5;
            }

            while (v5);
          }
        }

        v2 = v43;
      }

      else
      {
        dispatch_suspend(*(v3 + 375));
        v3[250] = 1;
      }

      goto LABEL_42;
    }

    v22 = _NRCopyLogObjectForNRUUID();
    v23 = _NRLogIsLevelEnabled();

    if (v23)
    {
      v3 = _NRCopyLogObjectForNRUUID();
      v24 = [v2 copyDescription];
      _NRLogWithArgs(v3, 16, "%s%.30s:%-4d %@: Nexus output available but cancelled", "", "[NRLinkQuickRelay setupNexus]_block_invoke", 959, v24);

LABEL_42:
    }
  }
}

id sub_10004E274(unint64_t a1)
{
  if (a1 >= 6)
  {
    return [[NSString alloc] initWithFormat:@"Unknown[%lld]", a1];
  }

  else
  {
    return *(&off_1001FAB20 + a1);
  }
}

id sub_10004E2D0(void *a1, void *a2)
{
  v3 = a1;
  v4 = v3;
  if (v3[16] == 255)
  {
    v24 = _NRCopyLogObjectForNRUUID();
    IsLevelEnabled = _NRLogIsLevelEnabled();

    if (IsLevelEnabled)
    {
      v26 = _NRCopyLogObjectForNRUUID();
      v27 = [v4 copyDescription];
      _NRLogWithArgs(v26, 16, "%s%.30s:%-4d %@: link is cancelled", "", "NRLinkLoopInterfaceToQRInner", 1942, v27);
LABEL_38:
    }

LABEL_39:
    v28 = 0;
    goto LABEL_44;
  }

  if (!*(v3 + 343))
  {
    v29 = _NRCopyLogObjectForNRUUID();
    v30 = _NRLogIsLevelEnabled();

    if (v30)
    {
      v26 = _NRCopyLogObjectForNRUUID();
      v27 = [v4 copyDescription];
      _NRLogWithArgs(v26, 17, "%@: No nexus channel", v27);
      goto LABEL_38;
    }

    goto LABEL_39;
  }

  os_channel_ring_id();
  v5 = os_channel_rx_ring();
  v6 = objc_alloc_init(NSMutableArray);
  v52 = 0u;
  v53 = 0u;
  v50 = 0u;
  v51 = 0u;
  v46 = v5;
  if (os_channel_get_next_slot())
  {
    v44 = v6;
    v45 = a2;
    while (1)
    {
      v7 = WORD1(v50) - *(v4 + 263);
      v8 = v7;
      *(v4 + 479) += v7;
      v9 = objc_alloc_init(NSMutableData);
      v10 = v54;
      bzero(v54, 0x800uLL);
      if (v7 >= 0x7FCu)
      {
        v11 = v7 + 5;
        v12 = malloc_type_calloc(1uLL, v11, 0x69A3AB9AuLL);
        if (!v12)
        {
          v36 = sub_100046E64();
          v37 = _NRLogIsLevelEnabled();

          if (v37)
          {
            v38 = sub_100046E64();
            _NRLogWithArgs(v38, 16, "%s%.30s:%-4d ABORTING: strict_calloc(%zu, %zu) failed", "", "NRLinkLoopInterfaceToQRInner", 1973, 1uLL, (v8 + 5));
          }

          v39 = _os_log_pack_size();
          v40 = &v43 - ((__chkstk_darwin() + 15) & 0xFFFFFFFFFFFFFFF0);
          v41 = __error();
          v42 = _os_log_pack_fill(v40, v39, *v41, &_mh_execute_header, "%{public}s strict_calloc(%zu, %zu) failed");
          *v42 = 136446722;
          *(v42 + 4) = "NRLinkLoopInterfaceToQRInner";
          *(v42 + 12) = 2048;
          *(v42 + 14) = 1;
          *(v42 + 22) = 2048;
          *(v42 + 24) = v11;
          sub_100046E64();
          _NRLogAbortWithPack();
        }

        v10 = v12;
      }

      v47 = v10;
      v49 = 0;
      v13 = nrPacketToTLV();
      v14 = v13;
      v48 = v13;
      v15 = *v10;
      if (v15 > 0x65)
      {
        if (*v10 <= 0x67u)
        {
          if (v15 == 102)
          {
            v16 = &OBJC_IVAR___NRLinkQuickRelay__sentKnownIPv6Hdr_TCP;
          }

          else
          {
            v16 = &OBJC_IVAR___NRLinkQuickRelay__sentKnownIPv6Hdr_TCP_ECT0;
          }

          goto LABEL_25;
        }

        if (v15 == 104)
        {
          v16 = &OBJC_IVAR___NRLinkQuickRelay__sentKnownIPv6Hdr_ESP_ClassC;
          goto LABEL_25;
        }

        if (v15 == 105)
        {
          v16 = &OBJC_IVAR___NRLinkQuickRelay__sentKnownIPv6Hdr_ESP_ClassC_ECT0;
          goto LABEL_25;
        }
      }

      else
      {
        if (*v10 > 0x63u)
        {
          if (v15 == 100)
          {
            v16 = &OBJC_IVAR___NRLinkQuickRelay__sentKnownIPv6Hdr_ESP;
          }

          else
          {
            v16 = &OBJC_IVAR___NRLinkQuickRelay__sentKnownIPv6Hdr_ESP_ECT0;
          }

          goto LABEL_25;
        }

        v16 = &OBJC_IVAR___NRLinkQuickRelay__sentUncompressedIP;
        if (v15 == 2)
        {
          goto LABEL_25;
        }

        if (v15 == 3)
        {
          v16 = &OBJC_IVAR___NRLinkQuickRelay__sentEncapsulated6LoWPAN;
LABEL_25:
          ++*&v4[*v16];
        }
      }

      v17 = *(v10 + 1);
      [v9 appendBytes:? length:?];
      if (v10 != v54)
      {
        free(v10);
      }

      if (gNRPacketLoggingEnabled == 1)
      {
        v19 = _NRCopyLogObjectForNRUUID();
        v20 = _NRLogIsLevelEnabled();

        if (v20)
        {
          v21 = _NRCopyLogObjectForNRUUID();
          v22 = [v4 copyDescription];
          StringFromNRTLVType = createStringFromNRTLVType();
          _NRLogWithArgs(v21, 1, "%s%.30s:%-4d %@: Sending packet [%@(%u/%u), %llu]", "", "NRLinkLoopInterfaceToQRInner", 2013, v22, StringFromNRTLVType, bswap32(v17) >> 16, v7, [v9 length]);
        }
      }

      v6 = v44;
      [v44 addObject:v9];
      next_slot = os_channel_get_next_slot();
      if (v45)
      {
        *v45 += v14;
      }

      if (!next_slot)
      {
        os_channel_advance_slot();
        os_channel_sync();
        v28 = v6;
        goto LABEL_43;
      }
    }
  }

  v31 = _NRCopyLogObjectForNRUUID();
  v32 = _NRLogIsLevelEnabled();

  if (v32)
  {
    v33 = _NRCopyLogObjectForNRUUID();
    v34 = [v4 copyDescription];
    _NRLogWithArgs(v33, 16, "%s%.30s:%-4d %@: Could not read any slot, when input available", "", "NRLinkLoopInterfaceToQRInner", 2024, v34);
  }

  v28 = 0;
LABEL_43:

LABEL_44:

  return v28;
}

void sub_10004E90C(uint64_t a1, void *a2)
{
  v3 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  v5 = WeakRetained;
  if (WeakRetained)
  {
    if (v3)
    {
      v6 = _NRCopyLogObjectForNRUUID();
      IsLevelEnabled = _NRLogIsLevelEnabled();

      if (IsLevelEnabled)
      {
        v8 = _NRCopyLogObjectForNRUUID();
        v9 = [v5 copyDescription];
        _NRLogWithArgs(v8, 16, "%s%.30s:%-4d %@: Failed to write datagram array of length %llu", "", "NRLinkLoopInterfaceToQR_block_invoke", 2077, v9, [*(a1 + 32) count]);
      }

      *(v5 + 447) += *(a1 + 48);
      v10 = [v5 connection];
      v11 = [v5 connection];
      v12 = [v11 connectionState];
      if (v12 >= 6)
      {
        v13 = [[NSString alloc] initWithFormat:@"Unknown[%lld]", v12];
      }

      else
      {
        v13 = *(&off_1001FAB20 + v12);
      }

      [v5 reportEvent:10022 detailsFormat:@"connection %@ state %@ error %@", v10, v13, v3];
    }

    else
    {
      *(WeakRetained + 439) += *(a1 + 48);
    }

    v14 = [v5 queue];
    block[0] = _NSConcreteStackBlock;
    block[1] = 3221225472;
    block[2] = sub_10004EBB0;
    block[3] = &unk_1001FD3C8;
    v15 = v5;
    v21 = v15;
    dispatch_async(v14, block);

    if (gNRPacketLoggingEnabled == 1)
    {
      v16 = _NRCopyLogObjectForNRUUID();
      v17 = _NRLogIsLevelEnabled();

      if (v17)
      {
        v18 = _NRCopyLogObjectForNRUUID();
        v19 = [v15 copyDescription];
        _NRLogWithArgs(v18, 1, "%s%.30s:%-4d %@: Wrote to QR: %llu bytes, %llu datagrams", "", "NRLinkLoopInterfaceToQR_block_invoke", 2097, v19, *(a1 + 48), [*(a1 + 32) count]);
      }
    }
  }
}

void sub_10004EBB0(uint64_t a1)
{
  v1 = *(a1 + 32);
  if (*(v1 + 249) == 1)
  {
    *(v1 + 249) = 0;
    dispatch_resume(*(*(a1 + 32) + 367));
  }
}

void sub_10004EBE4(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v8 = WeakRetained;
  if (WeakRetained)
  {
    v9 = [WeakRetained queue];
    block[0] = _NSConcreteStackBlock;
    block[1] = 3221225472;
    block[2] = sub_10004ECD8;
    block[3] = &unk_1001FD088;
    v11 = v6;
    v12 = v8;
    v13 = v5;
    dispatch_async(v9, block);
  }
}

void sub_10004ECD8(uint64_t a1)
{
  v3 = *(a1 + 32);
  if (!v3)
  {
    v149 = 0u;
    v150 = 0u;
    v147 = 0u;
    v148 = 0u;
    v140 = *(a1 + 48);
    v141 = [v140 countByEnumeratingWithState:&v147 objects:v152 count:16];
    if (!v141)
    {
LABEL_99:

      sub_100048794(*(a1 + 40));
      return;
    }

    v10 = 0;
    v11 = *v148;
    v139 = *v148;
    while (1)
    {
      if (v11 != v139)
      {
        objc_enumerationMutation(v140);
      }

      v142 = v10;
      v12 = *(*(&v147 + 1) + 8 * v10);
      if ([v12 length] > 2)
      {
        break;
      }

      v13 = v12;
      v14 = _NRCopyLogObjectForNRUUID();
      IsLevelEnabled = _NRLogIsLevelEnabled();

      if (IsLevelEnabled)
      {
        v16 = _NRCopyLogObjectForNRUUID();
        v17 = [*(a1 + 40) copyDescription];
        _NRLogWithArgs(v16, 17, "%@: Invalid packet length received: %llu", v17, [v13 length]);
LABEL_14:

LABEL_15:
      }

LABEL_96:
      v10 = v142 + 1;
      if (v142 + 1 >= v141)
      {
        v141 = [v140 countByEnumeratingWithState:&v147 objects:v152 count:16];
        if (!v141)
        {
          goto LABEL_99;
        }

        v10 = 0;
      }

      v11 = *v148;
    }

    v18 = [v12 length];
    v136 = v12;
    v137 = v18;
    v138 = [v12 bytes];
    v19 = v18;
    *(*(a1 + 40) + 455) += v18;
    if (!v18)
    {
      goto LABEL_96;
    }

    v20 = v138;
    v21 = &v138[v18];
    v144 = &v138[v19];
    while (1)
    {
      if (v20 + 3 > v21)
      {
        v64 = _NRCopyLogObjectForNRUUID();
        v65 = _NRLogIsLevelEnabled();

        if (!v65)
        {
          goto LABEL_96;
        }

        v16 = _NRCopyLogObjectForNRUUID();
        v17 = [*(a1 + 40) copyDescription];
        _NRLogWithArgs(v16, 17, "%@: Received incomplete/malformed datagram: [%p + %zu > %p + %u]", v17, v20, 3, v138, v137);
        goto LABEL_14;
      }

      v145 = v20;
      v146 = 0;
      v22 = *v20;
      v23 = *(v20 + 1);
      v24 = __rev16(v23);
      v25 = (v24 + 5);
      v146 = v25;
      if (&v20[v25] > v21)
      {
        v66 = _NRCopyLogObjectForNRUUID();
        v67 = _NRLogIsLevelEnabled();

        if (!v67)
        {
          goto LABEL_96;
        }

        v16 = _NRCopyLogObjectForNRUUID();
        v1 = [*(a1 + 40) copyDescription];
        _NRLogWithArgs(v16, 17, "%@: Received incomplete/malformed datagram: [%p + %lu + %u + %lu > %p + %u]", v1, v20, 3, v24, 2, v138, v137);
        goto LABEL_95;
      }

      if (v22 < 100)
      {
        if (v146 >= v24 + 3)
        {
          v29 = v24 + 3;
        }

        else
        {
          v29 = v146;
        }

        if (!v146)
        {
          p_vtable = NRSCDInterfaceConfig.vtable;
          if (qword_100228FA0 == -1)
          {
            goto LABEL_114;
          }

          goto LABEL_140;
        }

        v143 = (v24 + 3);
        v30 = os_inet_checksum();
        v1 = v24 + 3;
        if (v24 + 3 > v146)
        {
          v92 = sub_100046E64();
          v93 = _NRLogIsLevelEnabled();

          v87 = "nrChecksumIOVecInner";
          if (v93)
          {
            v94 = sub_100046E64();
            _NRLogWithArgs(v94, 16, "%s%.30s:%-4d ABORTING: Assertion Failed: computedBytes == writtenLength", "", "nrChecksumIOVecInner", 164);
          }

          v95 = _os_log_pack_size();
          v96 = &v135 - ((__chkstk_darwin() + 15) & 0xFFFFFFFFFFFFFFF0);
          v97 = *__error();
          v91 = _os_log_pack_fill(v96, v95, v97, &_mh_execute_header, "%{public}s Assertion Failed: computedBytes == writtenLength", v135);
          goto LABEL_122;
        }

        p_vtable = v146;
        if (v146 < v25)
        {
          v113 = v29 >= v146;
          v114 = sub_100046E64();
          v115 = _NRLogIsLevelEnabled();

          if (v146 < v24 + 4)
          {
            if (v115)
            {
              v130 = sub_100046E64();
              IOVecString = createIOVecString();
              _NRLogWithArgs(v130, 16, "%s%.30s:%-4d ABORTING: Assertion Failed: iovecs[iovecIndex].len >= bytesToCheckThisIOVec + 1; %@, iovecIndex=%u bytesToCheckThisIOVec=%u", "", "nrChecksumIOVecInner", 189, IOVecString, v113, v143);
            }

            v132 = _os_log_pack_size();
            v133 = &v135 - ((__chkstk_darwin() + 15) & 0xFFFFFFFFFFFFFFF0);
            v134 = *__error();
            v121 = _os_log_pack_fill(v133, v132, v134, &_mh_execute_header, "%{public}s Assertion Failed: iovecs[iovecIndex].len >= bytesToCheckThisIOVec + 1; %@, iovecIndex=%u bytesToCheckThisIOVec=%u", v135);
          }

          else
          {
            if (v115)
            {
              v116 = sub_100046E64();
              v117 = createIOVecString();
              _NRLogWithArgs(v116, 16, "%s%.30s:%-4d ABORTING: Assertion Failed: iovecIndex + 1 < numIOVecs; %@, iovecIndex=%u bytesToCheckThisIOVec=%u", "", "nrChecksumIOVecInner", 191, v117, v113, v143);
            }

            v118 = _os_log_pack_size();
            v119 = &v135 - ((__chkstk_darwin() + 15) & 0xFFFFFFFFFFFFFFF0);
            v120 = *__error();
            v121 = _os_log_pack_fill(v119, v118, v120, &_mh_execute_header, "%{public}s Assertion Failed: iovecIndex + 1 < numIOVecs; %@, iovecIndex=%u bytesToCheckThisIOVec=%u", v135);
          }

          v122 = v121;
          v123 = createIOVecString();
          sub_10005015C(v122, "nrChecksumIOVecInner", v123, v113, v143);
          goto LABEL_139;
        }

        v32 = ~v30;
        if (v143[v145] != ~v30 || v143[v145 + 1] != (v32 & 0xFF00) >> 8)
        {
          v68 = sub_100046E64();
          v69 = _NRLogIsLevelEnabled();

          if (v69)
          {
            v70 = sub_100046E64();
            _NRLogWithArgs(v70, 16, "%s%.30s:%-4d checksum failed same IOVec received 0x%02x%02x != computed 0x%02x%02x", "", "nrChecksumIOVecInner", 179, v143[v145], v143[v145 + 1], v32, HIBYTE(v32));
          }

LABEL_93:
          v71 = _NRCopyLogObjectForNRUUID();
          v72 = _NRLogIsLevelEnabled();

          if (v72)
          {
            v16 = _NRCopyLogObjectForNRUUID();
            v1 = [*(a1 + 40) copyDescription];
            StringFromNRTLVType = createStringFromNRTLVType();
            v74 = createIOVecString();
            _NRLogWithArgs(v16, 17, "%@: Invalid checksum detected %@ len %u %@", v1, StringFromNRTLVType, v24, v74);

LABEL_95:
            goto LABEL_15;
          }

          goto LABEL_96;
        }

        v21 = v144;
        if (v22 <= 100)
        {
LABEL_31:
          if (v22 <= 2)
          {
            if (v22 == 1)
            {
              v33 = _NRCopyLogObjectForNRUUID();
              v34 = _NRLogIsLevelEnabled();

              if (v34)
              {
                v35 = _NRCopyLogObjectForNRUUID();
                v36 = [*(a1 + 40) copyDescription];
                _NRLogWithArgs(v35, 1, "%s%.30s:%-4d %@: Handling PadN %u", "", "[NRLinkQuickRelay readDatagramFromSession]_block_invoke_2", 1848, v36, v24);
              }

              goto LABEL_20;
            }

            v28 = &OBJC_IVAR___NRLinkQuickRelay__recvUncompressedIP;
            if (v22 == 2)
            {
              goto LABEL_63;
            }
          }

          else
          {
            switch(v22)
            {
              case 3:
                v28 = &OBJC_IVAR___NRLinkQuickRelay__recvEncapsulated6LoWPAN;
                goto LABEL_63;
              case 4:
                v37 = [[NSData alloc] initWithBytes:v145 + 3 length:v24];
                v1 = *(a1 + 40);
                v143 = *(v1 + 519);
                IKEv2PacketString = createIKEv2PacketString();
                v135 = [v37 length];
                v39 = [*(a1 + 40) connection];
                v40 = [*(a1 + 40) connection];
                v41 = [v40 connectionState];
                if (v41 >= 6)
                {
                  v42 = [[NSString alloc] initWithFormat:@"Unknown[%lld]", v41];
                }

                else
                {
                  v42 = *(&off_1001FAB20 + v41);
                }

                [v1 reportEvent:3007 detailsFormat:@"Receiving IKEv2 packet #%llu %@ len %llu connection %@ state %@", v143, IKEv2PacketString, v135, v39, v42];

                ++*(*(a1 + 40) + 519);
                v52 = *(*(a1 + 40) + 335);
                if (v52)
                {
                  [v52 receivePacketData:v37];
                }

                else
                {
                  v53 = _NRCopyLogObjectForNRUUID();
                  v54 = _NRLogIsLevelEnabled();

                  if (v54)
                  {
                    v55 = _NRCopyLogObjectForNRUUID();
                    v56 = [*(a1 + 40) copyDescription];
                    _NRLogWithArgs(v55, 16, "%s%.30s:%-4d %@: not ready to handle IKE yet", "", "[NRLinkQuickRelay readDatagramFromSession]_block_invoke", 1917, v56);
                  }

                  [*(*(a1 + 40) + 671) addObject:v37];
                }

                goto LABEL_20;
              case 100:
                v28 = &OBJC_IVAR___NRLinkQuickRelay__recvKnownIPv6Hdr_ESP;
                goto LABEL_63;
            }
          }

          goto LABEL_20;
        }
      }

      else
      {
        v151[0] = 0;
        v1 = (v24 + 3);
        v26 = v146 - v1;
        if (v146 <= v1)
        {
          goto LABEL_127;
        }

        if (v26 >= 2)
        {
          v27 = 2;
        }

        else
        {
          v27 = v26;
        }

        __memcpy_chk();
        if (v26 <= 1)
        {
          goto LABEL_128;
        }

        v21 = v144;
        if (v151[0] != ((v23 ^ (v22 >> 4)) | (((16 * v22) ^ (v23 >> 8)) << 8)))
        {
          goto LABEL_93;
        }

        if (v22 <= 100)
        {
          goto LABEL_31;
        }
      }

      if (v22 <= 102)
      {
        if (v22 == 101)
        {
          v28 = &OBJC_IVAR___NRLinkQuickRelay__recvKnownIPv6Hdr_ESP_ECT0;
        }

        else
        {
          v28 = &OBJC_IVAR___NRLinkQuickRelay__recvKnownIPv6Hdr_TCP;
        }

LABEL_63:
        ++*(*(a1 + 40) + *v28);
        v1 = v151;
        bzero(v151, 0x800uLL);
        if (v24 >= 0x7D9)
        {
          if (v24 == 0xFFD8)
          {
            v98 = sub_100046E64();
            v99 = _NRLogIsLevelEnabled();

            if (v99)
            {
              v100 = sub_100046E64();
              _NRLogWithArgs(v100, 16, "%s%.30s:%-4d ABORTING: strict_calloc called with size 0", "", "[NRLinkQuickRelay readDatagramFromSession]_block_invoke_2", 1866);
            }

            v101 = _os_log_pack_size();
            v102 = &v135 - ((__chkstk_darwin() + 15) & 0xFFFFFFFFFFFFFFF0);
            v103 = __error();
            v104 = _os_log_pack_fill(v102, v101, *v103, &_mh_execute_header, "%{public}s strict_calloc called with size 0");
            *v104 = 136446210;
            *(v104 + 4) = "[NRLinkQuickRelay readDatagramFromSession]_block_invoke_2";
            goto LABEL_126;
          }

          v43 = (v24 + 40);
          v44 = malloc_type_calloc(1uLL, v43, 0x20CD4179uLL);
          if (!v44)
          {
            v124 = sub_100046E64();
            v125 = _NRLogIsLevelEnabled();

            if (v125)
            {
              v126 = sub_100046E64();
              _NRLogWithArgs(v126, 16, "%s%.30s:%-4d ABORTING: strict_calloc(%zu, %zu) failed", "", "[NRLinkQuickRelay readDatagramFromSession]_block_invoke", 1866, 1uLL, v43);
            }

            p_vtable = _os_log_pack_size();
            v127 = &v135 - ((__chkstk_darwin() + 15) & 0xFFFFFFFFFFFFFFF0);
            v128 = __error();
            v129 = _os_log_pack_fill(v127, p_vtable, *v128, &_mh_execute_header, "%{public}s strict_calloc(%zu, %zu) failed");
            *v129 = 136446722;
            *(v129 + 4) = "[NRLinkQuickRelay readDatagramFromSession]_block_invoke";
            *(v129 + 12) = 2048;
            *(v129 + 14) = 1;
            *(v129 + 22) = 2048;
            *(v129 + 24) = v43;
            while (1)
            {
LABEL_139:
              sub_100046E64();
              _NRLogAbortWithPack();
LABEL_140:
              dispatch_once(&qword_100228FA0, &stru_1001FAAA0);
LABEL_114:
              v87 = "nrChecksumUpdate";
              if (_NRLogIsLevelEnabled())
              {
                if (*(p_vtable + 4000) != -1)
                {
                  dispatch_once(&qword_100228FA0, &stru_1001FAAA0);
                }

                _NRLogWithArgs(qword_100228F98, 16, "%s%.30s:%-4d ABORTING: Assertion Failed: dataLen > 0", "", "nrChecksumUpdate", 69);
              }

              v88 = _os_log_pack_size();
              v89 = &v135 - ((__chkstk_darwin() + 15) & 0xFFFFFFFFFFFFFFF0);
              v90 = *__error();
              v91 = _os_log_pack_fill(v89, v88, v90, &_mh_execute_header, "%{public}s Assertion Failed: dataLen > 0", v135);
LABEL_122:
              *v91 = 136446210;
              *(v91 + 4) = v87;
LABEL_126:
              sub_100046E64();
              _NRLogAbortWithPack();
LABEL_127:
              v27 = 0;
LABEL_128:
              v105 = sub_100046E64();
              v106 = _NRLogIsLevelEnabled();

              if (v106)
              {
                v107 = sub_100046E64();
                v108 = createIOVecString();
                _NRLogWithArgs(v107, 16, "%s%.30s:%-4d ABORTING: Assertion Failed: bytesWritten == length; bytesWritten (%u) != length (%u), offset: %u, ioVec: %@", "", "nrWriteIOVecToBuffer", 342, v27, 2, v1, v108);
              }

              v109 = _os_log_pack_size();
              v110 = &v135 - ((__chkstk_darwin() + 15) & 0xFFFFFFFFFFFFFFF0);
              v111 = __error();
              p_vtable = _os_log_pack_fill(v110, v109, *v111, &_mh_execute_header, "%{public}s Assertion Failed: bytesWritten == length; bytesWritten (%u) != length (%u), offset: %u, ioVec: %@");
              v112 = createIOVecString();
              sub_100050120(p_vtable, "nrWriteIOVecToBuffer", v27, 2, v1, v112);
            }
          }

          v1 = v44;
          v21 = v144;
        }

        v45 = nrTLVToPacket();
        if (gNRPacketLoggingEnabled == 1)
        {
          v57 = _NRCopyLogObjectForNRUUID();
          v58 = _NRLogIsLevelEnabled();

          if (v58)
          {
            v143 = _NRCopyLogObjectForNRUUID();
            v135 = [*(a1 + 40) copyDescription];
            v59 = createStringFromNRTLVType();
            _NRLogWithArgs(v143, 1, "%s%.30s:%-4d %@: Receiving packet [%@(%u/%u), %llu]", "", "-[NRLinkQuickRelay readDatagramFromSession]_block_invoke", 1876, v135, v59, v24, v45, [v136 length]);
          }
        }

        if (v45)
        {
          v46 = objc_alloc_init(NSMutableData);
          [v46 appendBytes:v1 length:v45];
          [*(*(a1 + 40) + 391) addObject:v46];
          goto LABEL_72;
        }

        v47 = _NRCopyLogObjectForNRUUID();
        v48 = _NRLogIsLevelEnabled();

        if (v48)
        {
          v46 = _NRCopyLogObjectForNRUUID();
          v49 = [*(a1 + 40) copyDescription];
          v50 = createStringFromNRTLVType();
          _NRLogWithArgs(v46, 17, "%@: failed to reinject %@ tlvLen=%u", v49, v50, v24);

LABEL_72:
        }

        if (v1 != v151)
        {
          free(v1);
        }

        v51 = *(a1 + 40);
        if (*(v51 + 250) == 1)
        {
          if (gNRPacketLoggingEnabled == 1)
          {
            v60 = _NRCopyLogObjectForNRUUID();
            v61 = _NRLogIsLevelEnabled();

            v51 = *(a1 + 40);
            if (v61)
            {
              v62 = _NRCopyLogObjectForNRUUID();
              v63 = [*(a1 + 40) copyDescription];
              _NRLogWithArgs(v62, 1, "%s%.30s:%-4d %@: Resuming write source", "", "[NRLinkQuickRelay readDatagramFromSession]_block_invoke", 1893, v63);

              v51 = *(a1 + 40);
            }
          }

          dispatch_resume(*(v51 + 375));
          *(*(a1 + 40) + 250) = 0;
        }

        goto LABEL_20;
      }

      switch(v22)
      {
        case 'g':
          v28 = &OBJC_IVAR___NRLinkQuickRelay__recvKnownIPv6Hdr_TCP_ECT0;
          goto LABEL_63;
        case 'h':
          v28 = &OBJC_IVAR___NRLinkQuickRelay__recvKnownIPv6Hdr_ESP_ClassC;
          goto LABEL_63;
        case 'i':
          v28 = &OBJC_IVAR___NRLinkQuickRelay__recvKnownIPv6Hdr_ESP_ClassC_ECT0;
          goto LABEL_63;
      }

LABEL_20:
      v20 += v146;
      if (v20 >= v21)
      {
        goto LABEL_96;
      }
    }
  }

  v4 = v3;
  if ([v4 code] == 89)
  {
    v5 = [v4 domain];
    v6 = [v5 isEqualToString:NSPOSIXErrorDomain];

    if (v6)
    {
      v7 = _NRCopyLogObjectForNRUUID();
      v8 = _NRLogIsLevelEnabled();

      if (!v8)
      {
        return;
      }

      v144 = _NRCopyLogObjectForNRUUID();
      v9 = [*(a1 + 40) copyDescription];
      _NRLogWithArgs(v144, 16, "%s%.30s:%-4d %@: Read failed on cancelled connection", "", "[NRLinkQuickRelay readDatagramFromSession]_block_invoke_2", 1758, v9);

      goto LABEL_110;
    }
  }

  else
  {
  }

  v75 = *(a1 + 40);
  v76 = [v75 connection];
  v77 = [*(a1 + 40) connection];
  v78 = [v77 connectionState];
  if (v78 >= 6)
  {
    v79 = [[NSString alloc] initWithFormat:@"Unknown[%lld]", v78];
  }

  else
  {
    v79 = *(&off_1001FAB20 + v78);
  }

  [v75 reportEvent:10021 detailsFormat:@"connection %@ state %@ error %@", v76, v79, *(a1 + 32)];

  v80 = _NRCopyLogObjectForNRUUID();
  v81 = _NRLogIsLevelEnabled();

  if (v81)
  {
    v144 = _NRCopyLogObjectForNRUUID();
    v82 = [*(a1 + 40) copyDescription];
    v83 = [*(a1 + 40) connection];
    v84 = [*(a1 + 40) connection];
    v85 = [v84 connectionState];
    if (v85 >= 6)
    {
      v86 = [[NSString alloc] initWithFormat:@"Unknown[%lld]", v85];
    }

    else
    {
      v86 = *(&off_1001FAB20 + v85);
    }

    _NRLogWithArgs(v144, 17, "%@: Failed to read data on connection %@ state %@: %@", v82, v83, v86, *(a1 + 32));

LABEL_110:
  }
}

double sub_100050120(uint64_t a1, uint64_t a2, int a3, int a4, int a5, uint64_t a6)
{
  *&result = 136447234;
  *a1 = 136447234;
  *(a1 + 4) = a2;
  *(a1 + 12) = 1024;
  *(a1 + 14) = a3;
  *(a1 + 18) = 1024;
  *(a1 + 20) = a4;
  *(a1 + 24) = 1024;
  *(a1 + 26) = a5;
  *(a1 + 30) = 2112;
  *(a1 + 32) = a6;
  return result;
}

double sub_10005015C(uint64_t a1, uint64_t a2, uint64_t a3, int a4, int a5)
{
  *&result = 136446978;
  *a1 = 136446978;
  *(a1 + 4) = a2;
  *(a1 + 12) = 2112;
  *(a1 + 14) = a3;
  *(a1 + 22) = 1024;
  *(a1 + 24) = a4;
  *(a1 + 28) = 1024;
  *(a1 + 30) = a5;
  return result;
}

void sub_100050704(uint64_t a1)
{
  v2 = *(a1 + 32);
  v3 = [*(a1 + 40) destination];
  v14 = 0;
  v4 = [v2 datagramConnectionForSessionDestination:v3 uid:501 error:&v14];
  v5 = v14;

  v9[0] = _NSConcreteStackBlock;
  v9[1] = 3221225472;
  v9[2] = sub_10005081C;
  v9[3] = &unk_1001FAA80;
  v6 = *(a1 + 48);
  v9[4] = *(a1 + 56);
  v10 = *(a1 + 40);
  v11 = v4;
  v12 = *(a1 + 32);
  v13 = v5;
  v7 = v5;
  v8 = v4;
  dispatch_async(v6, v9);
}

void sub_10005081C(uint64_t a1)
{
  v2 = [*(a1 + 32) queue];
  dispatch_assert_queue_V2(v2);

  if (*(a1 + 40) && (v3 = *(*(a1 + 32) + 279)) != 0 && ((v4 = v3, [*(a1 + 40) sessionID], v5 = objc_claimAutoreleasedReturnValue(), (v6 = *(a1 + 32)) == 0) ? (v7 = 0) : (v7 = *(v6 + 279)), objc_msgSend(v7, "sessionID"), v8 = objc_claimAutoreleasedReturnValue(), v9 = objc_msgSend(v5, "isEqualToString:", v8), v8, v5, v4, (v9 & 1) != 0))
  {
    [*(a1 + 32) setConnection:*(a1 + 48)];
    v10 = [*(a1 + 32) connection];

    v11 = *(a1 + 32);
    if (v10)
    {
      if (v11)
      {
        v12 = *(v11 + 279);
      }

      else
      {
        v12 = 0;
      }

      v13 = v12;
      v14 = [v13 sessionID];
      sub_100047AF0(v11, 10008, v14);

      v15 = *(a1 + 32);
      v16 = *(a1 + 40);
      v17 = [v15 connection];
      [v15 reportEvent:10008 detailsFormat:@"session %@ connection %@", v16, v17];

      v18 = *(a1 + 32);
      if (!v18 || (v18[255] & 1) == 0)
      {
        [v18 addObserver:*(a1 + 32) forKeyPath:@"_connection.connectionState" options:5 context:0];
        *(*(a1 + 32) + 255) = 1;
      }

      v19 = _NRCopyLogObjectForNRUUID();
      IsLevelEnabled = _NRLogIsLevelEnabled();

      if (IsLevelEnabled)
      {
        v34 = _NRCopyLogObjectForNRUUID();
        v21 = [*(a1 + 32) copyDescription];
        v22 = [*(a1 + 32) connection];
        _NRLogWithArgs(v34, 0, "%s%.30s:%-4d %@: Obtained connection: %@", "", "[NRLinkQuickRelay sessionStarted:]_block_invoke_2", 2582, v21, v22);
      }
    }

    else
    {
      [v11 cancelWithReason:{@"No datagram connection for session %@ service %@ error %@", *(a1 + 40), *(a1 + 56), *(a1 + 64)}];
    }
  }

  else
  {
    v23 = _NRCopyLogObjectForNRUUID();
    v24 = _NRLogIsLevelEnabled();

    if (v24)
    {
      v25 = _NRCopyLogObjectForNRUUID();
      v26 = [*(a1 + 32) copyDescription];
      v27 = v26;
      v28 = *(a1 + 32);
      if (v28)
      {
        v28 = *(v28 + 279);
      }

      _NRLogWithArgs(v25, 0, "%s%.30s:%-4d %@: mismatched ids session: current %@, previous %@,skip adding KVO for previous connection", "", "[NRLinkQuickRelay sessionStarted:]_block_invoke_2", 2555, v26, v28, *(a1 + 40));
    }

    if (*(a1 + 48))
    {
      v29 = _NRCopyLogObjectForNRUUID();
      v30 = _NRLogIsLevelEnabled();

      if (v30)
      {
        v31 = _NRCopyLogObjectForNRUUID();
        v32 = [*(a1 + 32) copyDescription];
        _NRLogWithArgs(v31, 1, "%s%.30s:%-4d %@: Cancelling %@", "", "[NRLinkQuickRelay sessionStarted:]_block_invoke_2", 2557, v32, *(a1 + 48));
      }

      v33 = *(a1 + 48);

      [v33 cancel];
    }
  }
}

void sub_1000522F4(uint64_t a1, void *a2)
{
  if (a1)
  {
    objc_storeStrong((a1 + 319), a2);
  }
}

void sub_100052CA0(uint64_t a1, void *a2)
{
  v3 = a2;
  v26 = v3;
  if (!v3)
  {
    if (gNRPacketLoggingEnabled == 1)
    {
      v22 = _NRCopyLogObjectForNRUUID();
      IsLevelEnabled = _NRLogIsLevelEnabled();

      if (IsLevelEnabled)
      {
        v24 = _NRCopyLogObjectForNRUUID();
        v25 = [*(a1 + 32) copyDescription];
        _NRLogWithArgs(v24, 1, "%s%.30s:%-4d %@: Wrote %llu bytes", "", "-[NRLinkQuickRelay writeDatagramToSession:]_block_invoke", 1714, v25, [*(a1 + 40) length]);
      }
    }

    v15 = [*(a1 + 40) length];
    v16 = *(a1 + 32);
    v17 = 439;
    goto LABEL_14;
  }

  if ([v3 code] != 89 || (objc_msgSend(v26, "domain"), v4 = objc_claimAutoreleasedReturnValue(), v5 = objc_msgSend(v4, "isEqualToString:", NSPOSIXErrorDomain), v4, !v5))
  {
    v10 = *(a1 + 32);
    v11 = [v10 connection];
    v12 = [*(a1 + 32) connection];
    v13 = [v12 connectionState];
    if (v13 >= 6)
    {
      v14 = [[NSString alloc] initWithFormat:@"Unknown[%lld]", v13];
    }

    else
    {
      v14 = *(&off_1001FAB20 + v13);
    }

    [v10 reportEvent:10022 detailsFormat:@"connection %@ state %@ error %@", v11, v14, v26];

    v18 = _NRCopyLogObjectForNRUUID();
    v19 = _NRLogIsLevelEnabled();

    if (v19)
    {
      v20 = _NRCopyLogObjectForNRUUID();
      v21 = [*(a1 + 32) copyDescription];
      _NRLogWithArgs(v20, 17, "%@: Failed to write %llu bytes, error %@", v21, [*(a1 + 40) length], v26);
    }

    v15 = [*(a1 + 40) length];
    v16 = *(a1 + 32);
    v17 = 447;
LABEL_14:
    *(v16 + v17) += v15;
    goto LABEL_15;
  }

  v6 = _NRCopyLogObjectForNRUUID();
  v7 = _NRLogIsLevelEnabled();

  if (v7)
  {
    v8 = _NRCopyLogObjectForNRUUID();
    v9 = [*(a1 + 32) copyDescription];
    _NRLogWithArgs(v8, 16, "%s%.30s:%-4d %@: Write failed on cancelled connection", "", "[NRLinkQuickRelay writeDatagramToSession:]_block_invoke", 1704, v9);
  }

LABEL_15:
}

void sub_10005321C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, id location)
{
  objc_destroyWeak((v18 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_100053248(uint64_t a1, int a2)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  if (WeakRetained)
  {
    v10 = WeakRetained;
    if (a2)
    {
      v4 = _NRCopyLogObjectForNRUUID();
      IsLevelEnabled = _NRLogIsLevelEnabled();

      WeakRetained = v10;
      if (!IsLevelEnabled)
      {
        goto LABEL_8;
      }

      v6 = _NRCopyLogObjectForNRUUID();
      v7 = [v10 copyDescription];
      _NRLogWithArgs(v6, 0, "%s%.30s:%-4d %@: Received response to control notify", "", "[NRLinkQuickRelay sendControlData:]_block_invoke", 1665, v7);
    }

    else
    {
      [WeakRetained cancelWithReason:@"Did not receive response to control notify"];
      v8 = _NRCopyLogObjectForNRUUID();
      v9 = _NRLogIsLevelEnabled();

      WeakRetained = v10;
      if (!v9)
      {
        goto LABEL_8;
      }

      v6 = _NRCopyLogObjectForNRUUID();
      v7 = [v10 copyDescription];
      _NRLogWithArgs(v6, 16, "%s%.30s:%-4d %@: Did not receive response to control notify", "", "[NRLinkQuickRelay sendControlData:]_block_invoke", 1668, v7);
    }

    WeakRetained = v10;
  }

LABEL_8:
}

void sub_1000535E8(uint64_t a1)
{
  if (!a1)
  {
    return;
  }

  v2 = [a1 queue];
  dispatch_assert_queue_V2(v2);

  if (++*(a1 + 257) >= 3u)
  {
    [a1 reportEvent:10025];
    if (*(a1 + 251) != 1)
    {
      return;
    }

    v21 = sub_10004E2D0(a1, 0);
    v3 = _NRCopyLogObjectForNRUUID();
    IsLevelEnabled = _NRLogIsLevelEnabled();

    if (IsLevelEnabled)
    {
      v5 = _NRCopyLogObjectForNRUUID();
      v6 = [a1 copyDescription];
      _NRLogWithArgs(v5, 1, "%s%.30s:%-4d %@: Drained %zu packets", "", "-[NRLinkQuickRelay setupIDSSessionAndSendInvitation]", 606, v6, [v21 count]);
    }

    *(a1 + 251) = 0;
    if (*(a1 + 249) == 1)
    {
      dispatch_resume(*(a1 + 367));
      *(a1 + 249) = 0;
    }

    goto LABEL_19;
  }

  if (*(a1 + 16) == 255)
  {
    v10 = _NRCopyLogObjectForNRUUID();
    v11 = _NRLogIsLevelEnabled();

    if (!v11)
    {
      return;
    }

    v21 = _NRCopyLogObjectForNRUUID();
    v9 = [a1 copyDescription];
    _NRLogWithArgs(v21, 16, "%s%.30s:%-4d %@: Asked to setup IDS session but cancelled", "", "[NRLinkQuickRelay setupIDSSessionAndSendInvitation]", 618, v9);
    goto LABEL_18;
  }

  if (!sub_1000539DC(a1))
  {
    return;
  }

  if (*(a1 + 256) == 1)
  {
    v7 = _NRCopyLogObjectForNRUUID();
    v8 = _NRLogIsLevelEnabled();

    if (!v8)
    {
      return;
    }

    v21 = _NRCopyLogObjectForNRUUID();
    v9 = [a1 copyDescription];
    _NRLogWithArgs(v21, 0, "%s%.30s:%-4d %@: Tried to setup IDS Session but already in progress", "", "[NRLinkQuickRelay setupIDSSessionAndSendInvitation]", 628, v9);
LABEL_18:

LABEL_19:

    return;
  }

  if (*(a1 + 279))
  {
    v12 = _NRCopyLogObjectForNRUUID();
    v13 = _NRLogIsLevelEnabled();

    if (!v13)
    {
      return;
    }

    v21 = _NRCopyLogObjectForNRUUID();
    v9 = [a1 copyDescription];
    _NRLogWithArgs(v21, 17, "%@: Tried to setup IDS Session but we already have one", v9);
    goto LABEL_18;
  }

  *(a1 + 256) = 1;
  v14 = *(a1 + 271);
  v15 = [a1 queue];
  v16 = [a1 description];
  if (qword_1002292C0 != -1)
  {
    dispatch_once(&qword_1002292C0, &stru_1001FC4B0);
  }

  v17 = qword_1002292C8;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_100053C00;
  block[3] = &unk_1001FCE28;
  v23 = v16;
  v24 = v14;
  v25 = v15;
  v26 = a1;
  v18 = v15;
  v19 = v14;
  v20 = v16;
  dispatch_async(v17, block);
}

uint64_t sub_1000539DC(void *a1)
{
  v1 = a1;
  if (a1)
  {
    v2 = [a1 queue];
    dispatch_assert_queue_V2(v2);

    v3 = *(v1 + 271);
    v4 = _NRCopyLogObjectForNRUUID();
    IsLevelEnabled = _NRLogIsLevelEnabled();

    if (!v3)
    {
      if (IsLevelEnabled)
      {
        v8 = _NRCopyLogObjectForNRUUID();
        v9 = [v1 copyDescription];
        _NRLogWithArgs(v8, 0, "%s%.30s:%-4d %@: Bootstrapping IDSService", "", "[NRLinkQuickRelay setupIDSService]", 579, v9);
      }

      v10 = [[IDSService alloc] initWithService:@"com.apple.private.alloy.terminus"];
      if (!v10)
      {
        if (qword_100228FA0 != -1)
        {
          dispatch_once(&qword_100228FA0, &stru_1001FAAA0);
        }

        if (_NRLogIsLevelEnabled())
        {
          if (qword_100228FA0 != -1)
          {
            dispatch_once(&qword_100228FA0, &stru_1001FAAA0);
          }

          _NRLogWithArgs(qword_100228F98, 17, "[IDSService alloc] initWithService:%@] failed", @"com.apple.private.alloy.terminus");
        }

        v6 = 0;
        v1 = 0;
        goto LABEL_18;
      }

      v6 = v10;
      v11 = [v1 queue];
      [v6 addDelegate:v1 queue:v11];

      objc_storeStrong((v1 + 271), v6);
LABEL_9:
      v1 = 1;
LABEL_18:

      return v1;
    }

    if (IsLevelEnabled)
    {
      v6 = _NRCopyLogObjectForNRUUID();
      v7 = [v1 copyDescription];
      _NRLogWithArgs(v6, 0, "%s%.30s:%-4d %@: IDSService already exists: %@", "", "[NRLinkQuickRelay setupIDSService]", 575, v7, *(v1 + 271));

      goto LABEL_9;
    }

    return 1;
  }

  return v1;
}

void sub_100053C00(uint64_t a1)
{
  if (qword_100228FA0 != -1)
  {
    dispatch_once(&qword_100228FA0, &stru_1001FAAA0);
  }

  if (_NRLogIsLevelEnabled())
  {
    if (qword_100228FA0 != -1)
    {
      dispatch_once(&qword_100228FA0, &stru_1001FAAA0);
    }

    _NRLogWithArgs(qword_100228F98, 0, "%s%.30s:%-4d %@ Bootstrapping IDSSession", "", "[NRLinkQuickRelay setupIDSSessionAndSendInvitation]_block_invoke", 643, *(a1 + 32));
  }

  v45 = 0u;
  v46 = 0u;
  v43 = 0u;
  v44 = 0u;
  v2 = [*(a1 + 40) devices];
  v3 = [v2 countByEnumeratingWithState:&v43 objects:v50 count:16];
  if (v3)
  {
    v4 = v3;
    v5 = *v44;
LABEL_9:
    v6 = 0;
    while (1)
    {
      if (*v44 != v5)
      {
        objc_enumerationMutation(v2);
      }

      v7 = *(*(&v43 + 1) + 8 * v6);
      if ([v7 isDefaultPairedDevice])
      {
        break;
      }

      if (v4 == ++v6)
      {
        v4 = [v2 countByEnumeratingWithState:&v43 objects:v50 count:16];
        if (v4)
        {
          goto LABEL_9;
        }

        goto LABEL_15;
      }
    }

    v8 = v7;

    if (!v8)
    {
      goto LABEL_31;
    }

    if (qword_100228FA0 != -1)
    {
      dispatch_once(&qword_100228FA0, &stru_1001FAAA0);
    }

    if (_NRLogIsLevelEnabled())
    {
      if (qword_100228FA0 != -1)
      {
        dispatch_once(&qword_100228FA0, &stru_1001FAAA0);
      }

      _NRLogWithArgs(qword_100228F98, 1, "%s%.30s:%-4d %@ Default device: %@", "", "[NRLinkQuickRelay setupIDSSessionAndSendInvitation]_block_invoke", 665, *(a1 + 32), v8);
    }

    v9 = [[IDSAccountController alloc] initWithService:@"com.apple.private.alloy.terminus"];
    v10 = [v9 accounts];
    if (qword_100228FA0 != -1)
    {
      dispatch_once(&qword_100228FA0, &stru_1001FAAA0);
    }

    if (_NRLogIsLevelEnabled())
    {
      if (qword_100228FA0 != -1)
      {
        dispatch_once(&qword_100228FA0, &stru_1001FAAA0);
      }

      _NRLogWithArgs(qword_100228F98, 1, "%s%.30s:%-4d %@ Received the following accounts: %@", "", "[NRLinkQuickRelay setupIDSSessionAndSendInvitation]_block_invoke", 670, *(a1 + 32), v10);
    }

    v32 = v9;
    v40 = 0u;
    v41 = 0u;
    v38 = 0u;
    v39 = 0u;
    v11 = v10;
    v12 = [v11 countByEnumeratingWithState:&v38 objects:v49 count:16];
    if (v12)
    {
      v13 = v12;
      v14 = *v39;
LABEL_39:
      v16 = 0;
      while (1)
      {
        if (*v39 != v14)
        {
          objc_enumerationMutation(v11);
        }

        v17 = *(*(&v38 + 1) + 8 * v16);
        if (v17)
        {
          if ([*(*(&v38 + 1) + 8 * v16) isActive])
          {
            break;
          }
        }

        if (v13 == ++v16)
        {
          v13 = [v11 countByEnumeratingWithState:&v38 objects:v49 count:16];
          if (!v13)
          {
            goto LABEL_58;
          }

          goto LABEL_39;
        }
      }

      v33 = v17;

      if (qword_100228FA0 != -1)
      {
        dispatch_once(&qword_100228FA0, &stru_1001FAAA0);
      }

      if (_NRLogIsLevelEnabled())
      {
        if (qword_100228FA0 != -1)
        {
          dispatch_once(&qword_100228FA0, &stru_1001FAAA0);
        }

        _NRLogWithArgs(qword_100228F98, 1, "%s%.30s:%-4d %@ Default account: %@", "", "[NRLinkQuickRelay setupIDSSessionAndSendInvitation]_block_invoke", 690, *(a1 + 32), v33);
      }

      v18 = [v8 pushToken];
      v19 = [v8 identities];
      v20 = [v8 service];
      v31 = v18;
      v21 = _IDSCopyIDForPushTokenAndIdentitiesWithService();
      v22 = [IDSSession alloc];
      v23 = [NSSet setWithObject:v21];
      v47[0] = IDSSessionSingleChannelDirectModeKey;
      v47[1] = IDSSessionForceInternetInvitationKey;
      v48[0] = &__kCFBooleanTrue;
      v48[1] = &__kCFBooleanTrue;
      v24 = [NSDictionary dictionaryWithObjects:v48 forKeys:v47 count:2];
      v25 = [v22 initWithAccount:v33 destinations:v23 options:v24];

      if (qword_100228FA0 != -1)
      {
        dispatch_once(&qword_100228FA0, &stru_1001FAAA0);
      }

      if (_NRLogIsLevelEnabled())
      {
        if (qword_100228FA0 != -1)
        {
          dispatch_once(&qword_100228FA0, &stru_1001FAAA0);
        }

        _NRLogWithArgs(qword_100228F98, 1, "%s%.30s:%-4d %@ Default session: %@", "", "[NRLinkQuickRelay setupIDSSessionAndSendInvitation]_block_invoke", 705, *(a1 + 32), v25, v31);
      }

      v34[0] = _NSConcreteStackBlock;
      v34[1] = 3221225472;
      v34[2] = sub_100054498;
      v34[3] = &unk_1001FD088;
      v26 = *(a1 + 48);
      v34[4] = *(a1 + 56);
      v35 = v25;
      v36 = v21;
      v27 = v21;
      v28 = v25;
      dispatch_async(v26, v34);

      v29 = v32;
    }

    else
    {
LABEL_58:

      if (qword_100228FA0 != -1)
      {
        dispatch_once(&qword_100228FA0, &stru_1001FAAA0);
      }

      v29 = v32;
      if (_NRLogIsLevelEnabled())
      {
        if (qword_100228FA0 != -1)
        {
          dispatch_once(&qword_100228FA0, &stru_1001FAAA0);
        }

        _NRLogWithArgs(qword_100228F98, 17, "Failed to find default account for service %@", @"com.apple.private.alloy.terminus");
      }

      v37[0] = _NSConcreteStackBlock;
      v37[1] = 3221225472;
      v37[2] = sub_10005444C;
      v37[3] = &unk_1001FD3C8;
      v30 = *(a1 + 48);
      v37[4] = *(a1 + 56);
      dispatch_async(v30, v37);
    }
  }

  else
  {
LABEL_15:

LABEL_31:
    if (qword_100228FA0 != -1)
    {
      dispatch_once(&qword_100228FA0, &stru_1001FAAA0);
    }

    if (_NRLogIsLevelEnabled())
    {
      if (qword_100228FA0 != -1)
      {
        dispatch_once(&qword_100228FA0, &stru_1001FAAA0);
      }

      _NRLogWithArgs(qword_100228F98, 16, "%s%.30s:%-4d Failed to find default device for service %@", "", "[NRLinkQuickRelay setupIDSSessionAndSendInvitation]_block_invoke", 656, @"com.apple.private.alloy.terminus");
    }

    block[0] = _NSConcreteStackBlock;
    block[1] = 3221225472;
    block[2] = sub_100054400;
    block[3] = &unk_1001FD3C8;
    v15 = *(a1 + 48);
    block[4] = *(a1 + 56);
    dispatch_async(v15, block);
  }
}

id sub_100054400(uint64_t a1)
{
  v2 = [*(a1 + 32) queue];
  dispatch_assert_queue_V2(v2);

  v3 = *(a1 + 32);

  return [v3 suspend];
}

id sub_10005444C(uint64_t a1)
{
  v2 = [*(a1 + 32) queue];
  dispatch_assert_queue_V2(v2);

  v3 = *(a1 + 32);

  return [v3 suspend];
}

void sub_100054498(id *a1)
{
  v2 = [a1[4] queue];
  dispatch_assert_queue_V2(v2);

  *(a1[4] + 256) = 0;
  v3 = a1[4];
  if (v3[16] == 255)
  {
    v18 = _NRCopyLogObjectForNRUUID();
    IsLevelEnabled = _NRLogIsLevelEnabled();

    if (IsLevelEnabled)
    {
      v21 = _NRCopyLogObjectForNRUUID();
      v20 = [a1[4] copyDescription];
      _NRLogWithArgs(v21, 16, "%s%.30s:%-4d %@: Asked to finish setting up IDS session but cancelled", "", "[NRLinkQuickRelay setupIDSSessionAndSendInvitation]_block_invoke_4", 711, v20);
    }
  }

  else
  {
    v4 = a1[5];
    v5 = [a1[4] queue];
    [v4 setDelegate:v3 queue:v5];

    v6 = a1[4];
    if (v6)
    {
      objc_storeStrong((v6 + 279), a1[5]);
      v7 = a1[4];
      if (v7)
      {
        objc_storeStrong((v7 + 287), a1[6]);
        v8 = a1[4];
        if (v8)
        {
          v9 = [v8 queue];
          dispatch_assert_queue_V2(v9);

          v10 = _NRCopyLogObjectForNRUUID();
          v11 = _NRLogIsLevelEnabled();

          if (v11)
          {
            v12 = _NRCopyLogObjectForNRUUID();
            v13 = [v8 copyDescription];
            _NRLogWithArgs(v12, 0, "%s%.30s:%-4d %@: Sending session invitation", "", "[NRLinkQuickRelay sendInvitation]", 791, v13);
          }

          v8[253] = 1;
          [*(v8 + 279) sendInvitation];
          v14 = *(v8 + 279);
          v15 = [v14 sessionID];
          sub_100047AF0(v8, 10003, v15);

          [v8 reportEvent:10003 detailsFormat:@"%@", *(v8 + 279)];
          ++*(v8 + 415);
          v16 = nr_absolute_time();
          v17 = *(v8 + 687);
          if (v17)
          {
            *(v17 + 120) = v16;
          }
        }
      }
    }
  }
}

uint64_t sub_10005674C(uint64_t result)
{
  if (dword_100228380 == -1)
  {
    IsLevelEnabled = notify_register_check("com.apple.private.restrict-post.networkrelay.endpointcache", &dword_100228380);
    if (IsLevelEnabled)
    {
      v3 = IsLevelEnabled;
      dword_100228380 = -1;
      if (qword_100228FC0 != -1)
      {
        dispatch_once(&qword_100228FC0, &stru_1001FABC0);
      }

      IsLevelEnabled = _NRLogIsLevelEnabled();
      if (IsLevelEnabled)
      {
        if (qword_100228FC0 != -1)
        {
          dispatch_once(&qword_100228FC0, &stru_1001FABC0);
        }

        return _NRLogWithArgs(qword_100228FB8, 17, "notify_register_check(%s) failed: %u", "com.apple.private.restrict-post.networkrelay.endpointcache", v3);
      }

      return IsLevelEnabled;
    }

    if (dword_100228380 == -1)
    {
      return IsLevelEnabled;
    }
  }

  v1 = sub_10013A56C();
  if (qword_100228FC0 != -1)
  {
    dispatch_once(&qword_100228FC0, &stru_1001FABC0);
  }

  if (_NRLogIsLevelEnabled())
  {
    if (qword_100228FC0 != -1)
    {
      dispatch_once(&qword_100228FC0, &stru_1001FABC0);
    }

    _NRLogWithArgs(qword_100228FB8, 1, "%s%.30s:%-4d Setting NREndpoint cache generation to %llu", "", "notifyNREndpointCacheChanged", 89, v1);
  }

  if (notify_set_state(dword_100228380, v1))
  {
    if (qword_100228FC0 != -1)
    {
      dispatch_once(&qword_100228FC0, &stru_1001FABC0);
    }

    if (_NRLogIsLevelEnabled())
    {
      if (qword_100228FC0 != -1)
      {
        dispatch_once(&qword_100228FC0, &stru_1001FABC0);
      }

      _NRLogWithArgs(qword_100228FB8, 17, "notify_set_state(%s, %d) failed: %u");
    }
  }

  else
  {
    IsLevelEnabled = notify_post("com.apple.private.restrict-post.networkrelay.endpointcache");
    if (!IsLevelEnabled)
    {
      return IsLevelEnabled;
    }

    if (qword_100228FC0 != -1)
    {
      dispatch_once(&qword_100228FC0, &stru_1001FABC0);
    }

    if (_NRLogIsLevelEnabled())
    {
      if (qword_100228FC0 != -1)
      {
        dispatch_once(&qword_100228FC0, &stru_1001FABC0);
      }

      _NRLogWithArgs(qword_100228FB8, 17, "notify_post(%s) failed: %u");
    }
  }

  IsLevelEnabled = notify_cancel(dword_100228380);
  dword_100228380 = -1;
  return IsLevelEnabled;
}

void sub_100056A04(id a1)
{
  v1 = os_log_create("com.apple.networkrelay", "");
  v2 = qword_100228FB8;
  qword_100228FB8 = v1;

  _objc_release_x1(v1, v2);
}

char *sub_100056A48(char *a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v7 = v6;
  if (!a1)
  {
    goto LABEL_16;
  }

  if (!v6)
  {
    v18 = sub_100056D2C();
    IsLevelEnabled = _NRLogIsLevelEnabled();

    if (IsLevelEnabled)
    {
      v20 = sub_100056D2C();
      _NRLogWithArgs(v20, 17, "%s called with null connection", "[TXSContext initWithRequest:onConnection:]");

      v16 = 0;
      goto LABEL_6;
    }

LABEL_16:
    v16 = 0;
    goto LABEL_6;
  }

  v31.receiver = a1;
  v31.super_class = TXSContext;
  v8 = objc_msgSendSuper2(&v31, "init");
  if (!v8)
  {
    v21 = sub_100056D2C();
    v22 = _NRLogIsLevelEnabled();

    a1 = "[TXSContext initWithRequest:onConnection:]";
    if (v22)
    {
      v23 = sub_100056D2C();
      _NRLogWithArgs(v23, 16, "%s%.30s:%-4d ABORTING: [super init] failed", "", "[TXSContext initWithRequest:onConnection:]", 127);
    }

    v5 = _os_log_pack_size();
    v7 = &v30 - ((__chkstk_darwin() + 15) & 0xFFFFFFFFFFFFFFF0);
    v24 = *__error();
    v25 = _os_log_pack_fill(v7, v5, v24, &_mh_execute_header, "%{public}s [super init] failed");
    goto LABEL_15;
  }

  v10 = v8;
  objc_setProperty_atomic(v8, v9, v7, 8);
  objc_setProperty_atomic(v10, v11, v5, 16);
  v12 = v5;
  reply = xpc_dictionary_create_reply(v12);
  if (!reply)
  {
    v26 = sub_100056D2C();
    v27 = _NRLogIsLevelEnabled();

    a1 = "nr_xpc_dictionary_create_reply";
    if (v27)
    {
      v28 = sub_100056D2C();
      _NRLogWithArgs(v28, 16, "%s%.30s:%-4d ABORTING: xpc_dictionary_create_reply failed", "", "nr_xpc_dictionary_create_reply", 92);
    }

    v5 = _os_log_pack_size();
    v7 = &v30 - ((__chkstk_darwin() + 15) & 0xFFFFFFFFFFFFFFF0);
    v29 = *__error();
    v25 = _os_log_pack_fill(v7, v5, v29, &_mh_execute_header, "%{public}s xpc_dictionary_create_reply failed");
LABEL_15:
    *v25 = 136446210;
    *(v25 + 4) = a1;
    sub_100056D2C();
    _NRLogAbortWithPack();
    goto LABEL_16;
  }

  v14 = reply;

  objc_setProperty_atomic(v10, v15, v14, 24);
  a1 = v10;
  v16 = a1;
LABEL_6:

  return v16;
}

id sub_100056D2C()
{
  if (qword_100228FC0 != -1)
  {
    dispatch_once(&qword_100228FC0, &stru_1001FABC0);
  }

  v1 = qword_100228FB8;

  return v1;
}

id sub_100056D80(void *self, const char *a2)
{
  if (!self)
  {
    return 0;
  }

  v3 = self[4];
  if (!v3)
  {
    Property = objc_getProperty(self, a2, 8, 1);
    pid = xpc_connection_get_pid(Property);
    v6 = [[NSString alloc] initWithFormat:@"unknown:%d", pid];
    bzero(buffer, 0x400uLL);
    if (pid >= 1 && proc_pidpath(pid, buffer, 0x400u) >= 1 && buffer[0])
    {
      v7 = [[NSString alloc] initWithFormat:@"%s:%d", buffer, pid];

      v6 = v7;
    }

    v8 = self[4];
    self[4] = v6;

    v3 = self[4];
  }

  return v3;
}

void *sub_100056ED8(void *a1, uint64_t a2, void *a3)
{
  v5 = a3;
  if (a1)
  {
    v16.receiver = a1;
    v16.super_class = TXSHandler;
    v6 = objc_msgSendSuper2(&v16, "init");
    if (!v6)
    {
      v9 = sub_100056D2C();
      IsLevelEnabled = _NRLogIsLevelEnabled();

      if (IsLevelEnabled)
      {
        v11 = sub_100056D2C();
        _NRLogWithArgs(v11, 16, "%s%.30s:%-4d ABORTING: [super init] failed", "", "[TXSHandler initWithHandlerFunction:allowedEntitlementGroup:]", 163);
      }

      v12 = _os_log_pack_size();
      v13 = __error();
      v14 = _os_log_pack_fill(&v15 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0), v12, *v13, &_mh_execute_header, "%{public}s [super init] failed");
      *v14 = 136446210;
      *(v14 + 4) = "[TXSHandler initWithHandlerFunction:allowedEntitlementGroup:]";
      sub_100056D2C();
      _NRLogAbortWithPack();
    }

    a1 = v6;
    v6[2] = a2;
    objc_setProperty_atomic(v6, v7, v5, 8);
  }

  return a1;
}

void *sub_10005703C(void *a1)
{
  if (!a1)
  {
    return 0;
  }

  v39.receiver = a1;
  v39.super_class = TerminusdXPCServer;
  v1 = objc_msgSendSuper2(&v39, "init");
  if (!v1)
  {
    v29 = sub_100056D2C();
    IsLevelEnabled = _NRLogIsLevelEnabled();

    if (IsLevelEnabled)
    {
      v31 = sub_100056D2C();
      _NRLogWithArgs(v31, 16, "%s%.30s:%-4d ABORTING: [super init] failed", "", "[TerminusdXPCServer initInternal]", 1438);
    }

    v32 = _os_log_pack_size();
    v33 = __error();
    v34 = _os_log_pack_fill(&v35 - ((v32 + 15) & 0xFFFFFFFFFFFFFFF0), v32, *v33, &_mh_execute_header, "%{public}s [super init] failed");
    *v34 = 136446210;
    *(v34 + 4) = "[TerminusdXPCServer initInternal]";
    sub_100056D2C();
    _NRLogAbortWithPack();
    return 0;
  }

  v2 = v1;
  v3 = sub_100003490();
  objc_setProperty_atomic(v2, v4, v3, 8);

  Property = objc_getProperty(v2, v5, 8, 1);
  dispatch_assert_queue_V2(Property);
  v7 = objc_alloc_init(NSMutableDictionary);
  objc_setProperty_atomic(v2, v8, v7, 32);

  v9 = objc_alloc_init(NSMutableSet);
  objc_setProperty_atomic(v2, v10, v9, 40);

  v11 = objc_alloc_init(NSMutableSet);
  objc_setProperty_atomic(v2, v12, v11, 24);

  sub_10005738C(v2);
  v13 = objc_alloc_init(NSMutableArray);
  objc_setProperty_atomic(v2, v14, v13, 48);

  v38 = 0u;
  v37 = 0u;
  v36 = 0u;
  v35 = 0u;
  v16 = objc_getProperty(v2, v15, 40, 1);
  v17 = [v16 countByEnumeratingWithState:&v35 objects:v41 count:16];
  if (v17)
  {
    v19 = v17;
    v20 = *v36;
    do
    {
      v21 = 0;
      do
      {
        if (*v36 != v20)
        {
          objc_enumerationMutation(v16);
        }

        v22 = *(*(&v35 + 1) + 8 * v21);
        v23 = objc_getProperty(v2, v18, 48, 1);
        v40 = v22;
        v24 = v23;
        v25 = [NSArray arrayWithObjects:&v40 count:1, v35];
        [v24 addObject:v25];

        v21 = v21 + 1;
      }

      while (v19 != v21);
      v19 = [v16 countByEnumeratingWithState:&v35 objects:v41 count:16];
    }

    while (v19);
  }

  objc_setProperty_atomic(v2, v26, 0, 40);
  sub_100058E60(v2, v27);
  return v2;
}

void sub_10005738C(void *a1)
{
  v2 = [NSString alloc];
  v3 = [v2 initWithUTF8String:nrXPCEntitlementPing];
  v296 = v3;
  v4 = [NSArray arrayWithObjects:&v296 count:1];
  v297 = v4;
  v5 = [NSArray arrayWithObjects:&v297 count:1];
  sub_1000591D8(a1, sub_10006CEA4, 1, v5);

  v6 = [NSString alloc];
  v7 = nrXPCEntitlementCompanionLink;
  v8 = [v6 initWithUTF8String:nrXPCEntitlementCompanionLink];
  v294 = v8;
  v9 = [NSArray arrayWithObjects:&v294 count:1];
  v295 = v9;
  v10 = [NSArray arrayWithObjects:&v295 count:1];
  sub_1000591D8(a1, sub_10006CCC8, 25, v10);

  v11 = [[NSString alloc] initWithUTF8String:v7];
  v292 = v11;
  v12 = [NSArray arrayWithObjects:&v292 count:1];
  v293 = v12;
  v13 = [NSArray arrayWithObjects:&v293 count:1];
  sub_1000591D8(a1, sub_10006CAEC, 2, v13);

  v14 = [[NSString alloc] initWithUTF8String:v7];
  v290 = v14;
  v15 = [NSArray arrayWithObjects:&v290 count:1];
  v291 = v15;
  v16 = [NSArray arrayWithObjects:&v291 count:1];
  sub_1000591D8(a1, sub_10006C910, 3, v16);

  v17 = [NSString alloc];
  v18 = [v17 initWithUTF8String:nrXPCEntitlementCompanionLinkIsEnabled];
  v288 = v18;
  v19 = [NSArray arrayWithObjects:&v288 count:1];
  v289 = v19;
  v20 = [NSArray arrayWithObjects:&v289 count:1];
  sub_1000591D8(a1, sub_10006C6E0, 12, v20);

  v21 = [[NSString alloc] initWithUTF8String:v7];
  v286 = v21;
  v22 = [NSArray arrayWithObjects:&v286 count:1];
  v287 = v22;
  v23 = [NSArray arrayWithObjects:&v287 count:1];
  sub_1000591D8(a1, sub_10006C4A0, 4, v23);

  v24 = [NSString alloc];
  v25 = nrXPCEntitlementDiagnostic;
  v26 = [v24 initWithUTF8String:nrXPCEntitlementDiagnostic];
  v284 = v26;
  v27 = [NSArray arrayWithObjects:&v284 count:1];
  v285 = v27;
  v28 = [NSArray arrayWithObjects:&v285 count:1];
  sub_1000591D8(a1, sub_10006BFC4, 21, v28);

  v29 = [[NSString alloc] initWithUTF8String:v25];
  v282 = v29;
  v30 = [NSArray arrayWithObjects:&v282 count:1];
  v283 = v30;
  v31 = [NSArray arrayWithObjects:&v283 count:1];
  sub_1000591D8(a1, sub_10006B39C, 22, v31);

  v32 = [[NSString alloc] initWithUTF8String:v25];
  v280 = v32;
  v33 = [NSArray arrayWithObjects:&v280 count:1];
  v281 = v33;
  v34 = [NSArray arrayWithObjects:&v281 count:1];
  sub_1000591D8(a1, sub_100069D40, 33, v34);

  v35 = [[NSString alloc] initWithUTF8String:v7];
  v278 = v35;
  v36 = [NSArray arrayWithObjects:&v278 count:1];
  v279 = v36;
  v37 = [NSArray arrayWithObjects:&v279 count:1];
  sub_1000591D8(a1, sub_100069AEC, 5, v37);

  v38 = [[NSString alloc] initWithUTF8String:v7];
  v276 = v38;
  v39 = [NSArray arrayWithObjects:&v276 count:1];
  v277 = v39;
  v40 = [NSArray arrayWithObjects:&v277 count:1];
  sub_1000591D8(a1, sub_1000697D0, 48, v40);

  v41 = [NSString alloc];
  v42 = nrXPCEntitlementDevicesRead;
  v43 = [v41 initWithUTF8String:nrXPCEntitlementDevicesRead];
  v274 = v43;
  v44 = [NSArray arrayWithObjects:&v274 count:1];
  v275 = v44;
  v45 = [NSArray arrayWithObjects:&v275 count:1];
  sub_1000591D8(a1, sub_100068DB4, 6, v45);

  v46 = [[NSString alloc] initWithUTF8String:v7];
  v272 = v46;
  v47 = [NSArray arrayWithObjects:&v272 count:1];
  v273 = v47;
  v48 = [NSArray arrayWithObjects:&v273 count:1];
  sub_1000591D8(a1, sub_100068674, 7, v48);

  v49 = [[NSString alloc] initWithUTF8String:v7];
  v270 = v49;
  v50 = [NSArray arrayWithObjects:&v270 count:1];
  v271 = v50;
  v51 = [NSArray arrayWithObjects:&v271 count:1];
  sub_1000591D8(a1, sub_100067FE4, 31, v51);

  v52 = [[NSString alloc] initWithUTF8String:v42];
  v268 = v52;
  v53 = [NSArray arrayWithObjects:&v268 count:1];
  v269 = v53;
  v54 = [NSArray arrayWithObjects:&v269 count:1];
  sub_1000591D8(a1, sub_1000678F0, 13, v54);

  v55 = [[NSString alloc] initWithUTF8String:v42];
  v266 = v55;
  v56 = [NSArray arrayWithObjects:&v266 count:1];
  v267 = v56;
  v57 = [NSArray arrayWithObjects:&v267 count:1];
  sub_1000591D8(a1, sub_1000671F8, 50, v57);

  v58 = [[NSString alloc] initWithUTF8String:v42];
  v264 = v58;
  v59 = [NSArray arrayWithObjects:&v264 count:1];
  v265 = v59;
  v60 = [NSArray arrayWithObjects:&v265 count:1];
  sub_1000591D8(a1, sub_100066958, 46, v60);

  v61 = [[NSString alloc] initWithUTF8String:v42];
  v262 = v61;
  v62 = [NSArray arrayWithObjects:&v262 count:1];
  v263 = v62;
  v63 = [NSArray arrayWithObjects:&v263 count:1];
  sub_1000591D8(a1, sub_10006674C, 45, v63);

  v64 = [NSString alloc];
  v65 = nrXPCEntitlementTesting;
  v66 = [v64 initWithUTF8String:nrXPCEntitlementTesting];
  v260 = v66;
  v67 = [NSArray arrayWithObjects:&v260 count:1];
  v261 = v67;
  v68 = [NSArray arrayWithObjects:&v261 count:1];
  sub_1000591D8(a1, sub_1000662F4, 20, v68);

  v69 = [NSString alloc];
  v70 = nrXPCEntitlementDevicesWrite;
  v71 = [v69 initWithUTF8String:nrXPCEntitlementDevicesWrite];
  v258 = v71;
  v72 = [NSArray arrayWithObjects:&v258 count:1];
  v259 = v72;
  v73 = [NSArray arrayWithObjects:&v259 count:1];
  sub_1000591D8(a1, sub_100064B28, 14, v73);

  v74 = [[NSString alloc] initWithUTF8String:v70];
  v256 = v74;
  v75 = [NSArray arrayWithObjects:&v256 count:1];
  v257 = v75;
  v76 = [NSArray arrayWithObjects:&v257 count:1];
  sub_1000591D8(a1, sub_100064520, 15, v76);

  v77 = [[NSString alloc] initWithUTF8String:v70];
  v254 = v77;
  v78 = [NSArray arrayWithObjects:&v254 count:1];
  v255 = v78;
  v79 = [NSArray arrayWithObjects:&v255 count:1];
  sub_1000591D8(a1, sub_100063EF0, 19, v79);

  v80 = [[NSString alloc] initWithUTF8String:v70];
  v252 = v80;
  v81 = [NSArray arrayWithObjects:&v252 count:1];
  v253 = v81;
  v82 = [NSArray arrayWithObjects:&v253 count:1];
  sub_1000591D8(a1, sub_100063960, 16, v82);

  v83 = [[NSString alloc] initWithUTF8String:v70];
  v250 = v83;
  v84 = [NSArray arrayWithObjects:&v250 count:1];
  v251 = v84;
  v85 = [NSArray arrayWithObjects:&v251 count:1];
  sub_1000591D8(a1, sub_1000633D0, 17, v85);

  v86 = [[NSString alloc] initWithUTF8String:v65];
  v248 = v86;
  v87 = [NSArray arrayWithObjects:&v248 count:1];
  v249 = v87;
  v88 = [NSArray arrayWithObjects:&v249 count:1];
  sub_1000591D8(a1, sub_100063020, 18, v88);

  v89 = [[NSString alloc] initWithUTF8String:v65];
  v246 = v89;
  v90 = [NSArray arrayWithObjects:&v246 count:1];
  v247 = v90;
  v91 = [NSArray arrayWithObjects:&v247 count:1];
  sub_1000591D8(a1, sub_100062C9C, 47, v91);

  v92 = [[NSString alloc] initWithUTF8String:v65];
  v244 = v92;
  v93 = [NSArray arrayWithObjects:&v244 count:1];
  v245 = v93;
  v94 = [NSArray arrayWithObjects:&v245 count:1];
  sub_1000591D8(a1, sub_100062A78, 23, v94);

  v95 = [[NSString alloc] initWithUTF8String:v65];
  v242 = v95;
  v96 = [NSArray arrayWithObjects:&v242 count:1];
  v243 = v96;
  v97 = [NSArray arrayWithObjects:&v243 count:1];
  sub_1000591D8(a1, sub_100062854, 24, v97);

  v98 = [NSString alloc];
  v99 = [v98 initWithUTF8String:nrXPCEntitlementDeviceMonitor];
  v240 = v99;
  v100 = [NSArray arrayWithObjects:&v240 count:1];
  v241 = v100;
  v101 = [NSArray arrayWithObjects:&v241 count:1];
  sub_1000591D8(a1, sub_100061F04, 10, v101);

  v102 = [NSString alloc];
  v103 = [v102 initWithUTF8String:nrXPCEntitlementDevicePreferences];
  v238 = v103;
  v104 = [NSArray arrayWithObjects:&v238 count:1];
  v239 = v104;
  v105 = [NSArray arrayWithObjects:&v239 count:1];
  sub_1000591D8(a1, sub_100060B24, 11, v105);

  v106 = [NSString alloc];
  v107 = [v106 initWithUTF8String:nrXPCEntitlementTestLinkRecommendation];
  v236 = v107;
  v108 = [NSArray arrayWithObjects:&v236 count:1];
  v237 = v108;
  v109 = [NSArray arrayWithObjects:&v237 count:1];
  sub_1000591D8(a1, sub_100060950, 26, v109);

  v110 = [[NSString alloc] initWithUTF8String:v65];
  v234 = v110;
  v111 = [NSArray arrayWithObjects:&v234 count:1];
  v235 = v111;
  v112 = [NSArray arrayWithObjects:&v235 count:1];
  sub_1000591D8(a1, sub_100060724, 27, v112);

  v113 = [[NSString alloc] initWithUTF8String:v65];
  v232 = v113;
  v114 = [NSArray arrayWithObjects:&v232 count:1];
  v233 = v114;
  v115 = [NSArray arrayWithObjects:&v233 count:1];
  sub_1000591D8(a1, sub_10005FED8, 28, v115);

  v116 = [[NSString alloc] initWithUTF8String:v65];
  v230 = v116;
  v117 = [NSArray arrayWithObjects:&v230 count:1];
  v231 = v117;
  v118 = [NSArray arrayWithObjects:&v231 count:1];
  sub_1000591D8(a1, sub_10005FC5C, 38, v118);

  v119 = [[NSString alloc] initWithUTF8String:v65];
  v228 = v119;
  v120 = [NSArray arrayWithObjects:&v228 count:1];
  v229 = v120;
  v121 = [NSArray arrayWithObjects:&v229 count:1];
  sub_1000591D8(a1, sub_10005F868, 29, v121);

  v122 = [[NSString alloc] initWithUTF8String:v65];
  v226 = v122;
  v123 = [NSArray arrayWithObjects:&v226 count:1];
  v227 = v123;
  v124 = [NSArray arrayWithObjects:&v227 count:1];
  sub_1000591D8(a1, sub_10005F5E4, 37, v124);

  v125 = [[NSString alloc] initWithUTF8String:v65];
  v224 = v125;
  v126 = [NSArray arrayWithObjects:&v224 count:1];
  v225 = v126;
  v127 = [NSArray arrayWithObjects:&v225 count:1];
  sub_1000591D8(a1, sub_10005F1F0, 30, v127);

  v128 = [[NSString alloc] initWithUTF8String:v65];
  v222 = v128;
  v129 = [NSArray arrayWithObjects:&v222 count:1];
  v223 = v129;
  v130 = [NSArray arrayWithObjects:&v223 count:1];
  sub_1000591D8(a1, sub_10005EDD0, 51, v130);

  v131 = [[NSString alloc] initWithUTF8String:v65];
  v220 = v131;
  v132 = [NSArray arrayWithObjects:&v220 count:1];
  v221 = v132;
  v133 = [NSArray arrayWithObjects:&v221 count:1];
  sub_1000591D8(a1, sub_10005E910, 39, v133);

  v134 = [[NSString alloc] initWithUTF8String:v65];
  v218 = v134;
  v135 = [NSArray arrayWithObjects:&v218 count:1];
  v219 = v135;
  v136 = [NSArray arrayWithObjects:&v219 count:1];
  sub_1000591D8(a1, sub_10005E100, 40, v136);

  v137 = [[NSString alloc] initWithUTF8String:v65];
  v216 = v137;
  v138 = [NSArray arrayWithObjects:&v216 count:1];
  v217 = v138;
  v139 = [NSArray arrayWithObjects:&v217 count:1];
  sub_1000591D8(a1, sub_10005DCD4, 43, v139);

  v140 = [[NSString alloc] initWithUTF8String:v65];
  v214 = v140;
  v141 = [NSArray arrayWithObjects:&v214 count:1];
  v215 = v141;
  v142 = [NSArray arrayWithObjects:&v215 count:1];
  sub_1000591D8(a1, sub_10005D7B4, 34, v142);

  v143 = [NSString alloc];
  v144 = [v143 initWithUTF8String:nrXPCEntitlementFixedInterfaceMode];
  v212 = v144;
  v145 = [NSArray arrayWithObjects:&v212 count:1];
  v213 = v145;
  v146 = [NSArray arrayWithObjects:&v213 count:1];
  sub_1000591D8(a1, sub_10005D224, 32, v146);

  v147 = [[NSString alloc] initWithUTF8String:v42];
  v210 = v147;
  v148 = [NSArray arrayWithObjects:&v210 count:1];
  v211 = v148;
  v149 = [NSArray arrayWithObjects:&v211 count:1];
  sub_1000591D8(a1, sub_10005CDFC, 35, v149);

  v150 = [NSString alloc];
  v151 = [v150 initWithUTF8String:nrXPCEntitlementRetryConnections];
  v208 = v151;
  v152 = [NSArray arrayWithObjects:&v208 count:1];
  v209 = v152;
  v153 = [NSArray arrayWithObjects:&v209 count:1];
  sub_1000591D8(a1, sub_10005CA20, 36, v153);

  v154 = [NSString alloc];
  v155 = [v154 initWithUTF8String:nrXPCEntitlementXPCComm];
  v206 = v155;
  v156 = [NSArray arrayWithObjects:&v206 count:1];
  v207 = v156;
  v157 = [NSArray arrayWithObjects:&v207 count:1];
  sub_1000591D8(a1, sub_10005C294, 41, v157);

  v158 = [[NSString alloc] initWithUTF8String:v65];
  v204 = v158;
  v159 = [NSArray arrayWithObjects:&v204 count:1];
  v205 = v159;
  v160 = [NSArray arrayWithObjects:&v205 count:1];
  sub_1000591D8(a1, sub_10005BF3C, 42, v160);

  v161 = [[NSString alloc] initWithUTF8String:v65];
  v202 = v161;
  v162 = [NSArray arrayWithObjects:&v202 count:1];
  v203 = v162;
  v163 = [NSArray arrayWithObjects:&v203 count:1];
  sub_1000591D8(a1, sub_10005BD68, 44, v163);

  v164 = [NSString alloc];
  v165 = nrXPCEntitlementPairing;
  v166 = [v164 initWithUTF8String:nrXPCEntitlementPairing];
  v200 = v166;
  v167 = [NSArray arrayWithObjects:&v200 count:1];
  v201 = v167;
  v168 = [NSArray arrayWithObjects:&v201 count:1];
  sub_1000591D8(a1, sub_1000030E4, 49, v168);

  v169 = [NSString alloc];
  v170 = [v169 initWithUTF8String:nrXPCEntitlementIdentityProxy];
  v198 = v170;
  v171 = [NSArray arrayWithObjects:&v198 count:1];
  v199 = v171;
  v172 = [NSArray arrayWithObjects:&v199 count:1];
  sub_1000591D8(a1, sub_10005B908, 52, v172);

  v173 = [[NSString alloc] initWithUTF8String:v65];
  v196 = v173;
  v174 = [NSArray arrayWithObjects:&v196 count:1];
  v197 = v174;
  v175 = [NSArray arrayWithObjects:&v197 count:1];
  sub_1000591D8(a1, sub_10005B504, 53, v175);

  v176 = [[NSString alloc] initWithUTF8String:v65];
  v194 = v176;
  v177 = [NSArray arrayWithObjects:&v194 count:1];
  v195 = v177;
  v178 = [NSArray arrayWithObjects:&v195 count:1];
  sub_1000591D8(a1, sub_10005B228, 55, v178);

  v179 = [[NSString alloc] initWithUTF8String:v165];
  v192 = v179;
  v180 = [NSArray arrayWithObjects:&v192 count:1];
  v193 = v180;
  v181 = [NSArray arrayWithObjects:&v193 count:1];
  sub_1000591D8(a1, sub_10005A828, 54, v181);

  v182 = [[NSString alloc] initWithUTF8String:v70];
  v190 = v182;
  v183 = [NSArray arrayWithObjects:&v190 count:1];
  v191 = v183;
  v184 = [NSArray arrayWithObjects:&v191 count:1];
  sub_1000591D8(a1, sub_100059DEC, 56, v184);

  v185 = [[NSString alloc] initWithUTF8String:v70];
  v188 = v185;
  v186 = [NSArray arrayWithObjects:&v188 count:1];
  v189 = v186;
  v187 = [NSArray arrayWithObjects:&v189 count:1];
  sub_1000591D8(a1, sub_10005969C, 57, v187);
}

void sub_100058E60(void *a1, const char *a2)
{
  Property = objc_getProperty(a1, a2, 8, 1);
  dispatch_assert_queue_V2(Property);
  v4 = nrXPCServiceName;
  v6 = objc_getProperty(a1, v5, 8, 1);
  mach_service = xpc_connection_create_mach_service(v4, v6, 1uLL);
  objc_setProperty_atomic(a1, v8, mach_service, 16);

  if (!objc_getProperty(a1, v9, 16, 1))
  {
    v16 = sub_100056D2C();
    IsLevelEnabled = _NRLogIsLevelEnabled();

    if (IsLevelEnabled)
    {
      v18 = sub_100056D2C();
      _NRLogWithArgs(v18, 16, "%s%.30s:%-4d ABORTING: Assertion Failed: (self.listener) != ((void*)0)", "", "[TerminusdXPCServer startXPCListener]", 1685);
    }

    v19 = _os_log_pack_size();
    v20 = __error();
    v21 = _os_log_pack_fill(handler - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0), v19, *v20, &_mh_execute_header, "%{public}s Assertion Failed: (self.listener) != ((void*)0)");
    *v21 = 136446210;
    *(v21 + 4) = "[TerminusdXPCServer startXPCListener]";
    sub_100056D2C();
    _NRLogAbortWithPack();
LABEL_10:
    __break(1u);
  }

  v11 = objc_getProperty(a1, v10, 16, 1);
  if (xpc_get_type(v11) != &_xpc_type_connection)
  {
    v22 = sub_100056D2C();
    v23 = _NRLogIsLevelEnabled();

    if (v23)
    {
      v24 = sub_100056D2C();
      _NRLogWithArgs(v24, 16, "%s%.30s:%-4d ABORTING: Assertion Failed: (&_xpc_type_connection) == xpc_get_type(self.listener)", "", "[TerminusdXPCServer startXPCListener]", 1686);
    }

    v25 = _os_log_pack_size();
    v26 = __error();
    v27 = _os_log_pack_fill(handler - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0), v25, *v26, &_mh_execute_header, "%{public}s Assertion Failed: (&_xpc_type_connection) == xpc_get_type(self.listener)");
    *v27 = 136446210;
    *(v27 + 4) = "[TerminusdXPCServer startXPCListener]";
    sub_100056D2C();
    _NRLogAbortWithPack();
    goto LABEL_10;
  }

  objc_initWeak(&location, a1);
  v13 = objc_getProperty(a1, v12, 16, 1);
  handler[0] = _NSConcreteStackBlock;
  handler[1] = 3221225472;
  handler[2] = sub_1000018C8;
  handler[3] = &unk_1001FABA0;
  objc_copyWeak(&v29, &location);
  handler[4] = a1;
  xpc_connection_set_event_handler(v13, handler);

  v15 = objc_getProperty(a1, v14, 16, 1);
  xpc_connection_resume(v15);

  objc_destroyWeak(&v29);
  objc_destroyWeak(&location);
}

void sub_100059188(_Unwind_Exception *a1)
{
  objc_destroyWeak((v1 + 40));
  objc_destroyWeak((v2 - 48));
  _Unwind_Resume(a1);
}

uint64_t sub_1000591C0(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_1000591D8(void *a1, uint64_t a2, uint64_t a3, void *a4)
{
  v7 = a4;
  if (a2)
  {
    v8 = sub_100056ED8([TXSHandler alloc], a2, v7);
    if (v8)
    {
      v9 = [NSNumber numberWithUnsignedLongLong:a3];
      v11 = [objc_getProperty(a1 v10];

      if (v11)
      {
        if (qword_100228FC0 != -1)
        {
          dispatch_once(&qword_100228FC0, &stru_1001FABC0);
        }

        if (!_NRLogIsLevelEnabled())
        {
          goto LABEL_47;
        }

        if (qword_100228FC0 != -1)
        {
          dispatch_once(&qword_100228FC0, &stru_1001FABC0);
        }

        v12 = qword_100228FB8;
        StringFromNRXPCType = createStringFromNRXPCType();
        _NRLogWithArgs(v12, 17, "Trying to reregister handler for type %@", StringFromNRXPCType);
      }

      else
      {
        v44 = 0u;
        v45 = 0u;
        v42 = 0u;
        v43 = 0u;
        v14 = v7;
        v37 = [v14 countByEnumeratingWithState:&v42 objects:v47 count:16];
        if (v37)
        {
          v35 = v7;
          v15 = 0;
          v16 = *v43;
          v36 = v14;
          v34 = *v43;
          do
          {
            for (i = 0; i != v37; i = i + 1)
            {
              if (*v43 != v16)
              {
                objc_enumerationMutation(v14);
              }

              v18 = *(*(&v42 + 1) + 8 * i);
              v38 = 0u;
              v39 = 0u;
              v40 = 0u;
              v41 = 0u;
              v19 = v18;
              v20 = [v19 countByEnumeratingWithState:&v38 objects:v46 count:16];
              if (v20)
              {
                v21 = v20;
                v22 = *v39;
                while (2)
                {
                  for (j = 0; j != v21; j = j + 1)
                  {
                    if (*v39 != v22)
                    {
                      objc_enumerationMutation(v19);
                    }

                    v24 = *(*(&v38 + 1) + 8 * j);
                    if (([v24 hasPrefix:@"com.apple."] & 1) == 0)
                    {
                      if (qword_100228FC0 != -1)
                      {
                        dispatch_once(&qword_100228FC0, &stru_1001FABC0);
                      }

                      v7 = v35;
                      if (_NRLogIsLevelEnabled())
                      {
                        if (qword_100228FC0 != -1)
                        {
                          dispatch_once(&qword_100228FC0, &stru_1001FABC0);
                        }

                        v27 = qword_100228FB8;
                        v28 = createStringFromNRXPCType();
                        _NRLogWithArgs(v27, 17, "Refusing to register handler for type %@ with invalid entitlement %@", v28, v24);
                      }

                      goto LABEL_47;
                    }

                    [objc_getProperty(a1 v25];
                  }

                  v21 = [v19 countByEnumeratingWithState:&v38 objects:v46 count:16];
                  if (v21)
                  {
                    continue;
                  }

                  break;
                }

                v15 = 1;
                v14 = v36;
                v16 = v34;
              }
            }

            v37 = [v14 countByEnumeratingWithState:&v42 objects:v47 count:16];
          }

          while (v37);

          v7 = v35;
          if (v15)
          {
            [objc_getProperty(a1 v26];
            goto LABEL_47;
          }
        }

        else
        {
        }

        if (qword_100228FC0 != -1)
        {
          dispatch_once(&qword_100228FC0, &stru_1001FABC0);
        }

        if (!_NRLogIsLevelEnabled())
        {
          goto LABEL_47;
        }

        if (qword_100228FC0 != -1)
        {
          dispatch_once(&qword_100228FC0, &stru_1001FABC0);
        }

        v12 = qword_100228FB8;
        StringFromNRXPCType = createStringFromNRXPCType();
        _NRLogWithArgs(v12, 17, "Refusing to register handler for type %@ without any entitlement", StringFromNRXPCType);
      }
    }

    else
    {
      v32 = sub_100056D2C();
      IsLevelEnabled = _NRLogIsLevelEnabled();

      if (!IsLevelEnabled)
      {
LABEL_48:

        goto LABEL_49;
      }

      v9 = sub_100056D2C();
      _NRLogWithArgs(v9, 17, "[TXSHandler initWithHandlerFunction:] failed");
    }

LABEL_47:

    goto LABEL_48;
  }

  v29 = sub_100056D2C();
  v30 = _NRLogIsLevelEnabled();

  if (v30)
  {
    v31 = sub_100056D2C();
    _NRLogWithArgs(v31, 17, "%s called with null handlerFunction", "[TerminusdXPCServer registerHandlerFunction:type:allowedEntitlementGroup:]");
  }

LABEL_49:
}

uint64_t sub_10005969C(void *a1)
{
  v1 = a1;
  if (qword_100228FC0 != -1)
  {
    dispatch_once(&qword_100228FC0, &stru_1001FABC0);
  }

  if (_NRLogIsLevelEnabled())
  {
    if (qword_100228FC0 != -1)
    {
      dispatch_once(&qword_100228FC0, &stru_1001FABC0);
    }

    v3 = qword_100228FB8;
    if (v1)
    {
      v4 = v1[4];
      if (!v4)
      {
        Property = objc_getProperty(v1, v2, 8, 1);
        pid = xpc_connection_get_pid(Property);
        v7 = [[NSString alloc] initWithFormat:@"unknown:%d", pid];
        bzero(buffer, 0x400uLL);
        if (pid >= 1 && proc_pidpath(pid, buffer, 0x400u) >= 1 && buffer[0])
        {
          v8 = [[NSString alloc] initWithFormat:@"%s:%d", buffer, pid];

          v7 = v8;
        }

        v9 = v1[4];
        v1[4] = v7;

        v4 = v1[4];
      }

      v10 = v4;
    }

    else
    {
      v10 = 0;
    }

    _NRLogWithArgs(v3, 0, "%s%.30s:%-4d Client %@ scrubbing all devices", "", "handleScrubAllDevices", 859, v10);
  }

  v27[0] = _NSConcreteStackBlock;
  v27[1] = 3221225472;
  v28 = sub_100059CCC;
  v29 = &unk_1001FBF50;
  v30 = v1;
  v26 = v1;
  v25 = v27;
  v11 = objc_opt_self();
  v12 = sub_100003490();
  dispatch_assert_queue_V2(v12);

  sub_1001619D8(v11);
  v13 = [qword_100229428 copy];
  v31 = 0u;
  v32 = 0u;
  v33 = 0u;
  v34 = 0u;
  v14 = v13;
  v15 = [v14 countByEnumeratingWithState:&v31 objects:buffer count:16];
  if (v15)
  {
    v16 = v15;
    v17 = *v32;
    do
    {
      for (i = 0; i != v16; i = i + 1)
      {
        if (*v32 != v17)
        {
          objc_enumerationMutation(v14);
        }

        v19 = *(*(&v31 + 1) + 8 * i);
        v20 = sub_100163B2C(NRDLocalDevice, v19, 0);
        v21 = v20;
        if (!v20)
        {
          v23 = qword_100229428;
LABEL_28:
          [v23 setObject:0 forKeyedSubscript:?];
LABEL_29:
          sub_1000B76C8(v19, 0);
          sub_100164E90(v21);
          if (qword_100229448)
          {
            [qword_100229448 setObject:0 forKeyedSubscript:v19];
          }

          if (qword_100229450)
          {
            [qword_100229450 setObject:0 forKeyedSubscript:v19];
          }

          if (qword_100229458)
          {
            [qword_100229458 setObject:0 forKeyedSubscript:v19];
          }

          if (qword_100229478)
          {
            [qword_100229478 setObject:0 forKeyedSubscript:v19];
          }

          if (qword_100229488 != -1)
          {
            dispatch_once(&qword_100229488, &stru_1001FD018);
          }

          if (_NRLogIsLevelEnabled())
          {
            if (qword_100229488 != -1)
            {
              dispatch_once(&qword_100229488, &stru_1001FD018);
            }

            _NRLogWithArgs(qword_100229480, 0, "%s%.30s:%-4d Scrubbed device %@", "", "+[NRDLocalDevice scrubAllDevicesWithCompletionBlock:]", 3018, v21);
          }

          goto LABEL_20;
        }

        v22 = *(v20 + 48);
        if (v22)
        {
          if (qword_100229488 != -1)
          {
            dispatch_once(&qword_100229488, &stru_1001FD018);
          }

          if (_NRLogIsLevelEnabled())
          {
            if (qword_100229488 != -1)
            {
              dispatch_once(&qword_100229488, &stru_1001FD018);
            }

            _NRLogWithArgs(qword_100229480, 1, "%s%.30s:%-4d Not scrubbing registered NRUUID %@", "", "+[NRDLocalDevice scrubAllDevicesWithCompletionBlock:]", 2987, v19);
          }
        }

        else
        {
          if ((v22 & 2) == 0)
          {
            [qword_100229428 setObject:0 forKeyedSubscript:v19];
            if (v21[7])
            {
              v23 = qword_100229430;
              goto LABEL_28;
            }

            goto LABEL_29;
          }

          if (qword_100229488 != -1)
          {
            dispatch_once(&qword_100229488, &stru_1001FD018);
          }

          if (_NRLogIsLevelEnabled())
          {
            if (qword_100229488 != -1)
            {
              dispatch_once(&qword_100229488, &stru_1001FD018);
            }

            _NRLogWithArgs(qword_100229480, 1, "%s%.30s:%-4d Not scrubbing enabled NRUUID %@", "", "+[NRDLocalDevice scrubAllDevicesWithCompletionBlock:]", 2990, v19);
          }
        }

LABEL_20:
      }

      v16 = [v14 countByEnumeratingWithState:&v31 objects:buffer count:16];
    }

    while (v16);
  }

  sub_1001629FC(v11, 1);
  if (qword_100229488 != -1)
  {
    dispatch_once(&qword_100229488, &stru_1001FD018);
  }

  if (_NRLogIsLevelEnabled())
  {
    if (qword_100229488 != -1)
    {
      dispatch_once(&qword_100229488, &stru_1001FD018);
    }

    _NRLogWithArgs(qword_100229480, 0, "%s%.30s:%-4d Scrubbed all devices", "", "+[NRDLocalDevice scrubAllDevicesWithCompletionBlock:]", 3022);
  }

  v28(v25, 0, 0);

  return -2000;
}

void sub_100059CCC(uint64_t a1, int64_t a2, void *a3)
{
  v18 = a3;
  sub_10005674C(v18);
  Property = *(a1 + 32);
  if (Property)
  {
    Property = objc_getProperty(Property, v5, 24, 1);
  }

  xpc_dictionary_set_int64(Property, nrXPCKeyResult, a2);
  if (v18)
  {
    v9 = v18;
    v10 = *(a1 + 32);
    if (v10)
    {
      v10 = objc_getProperty(v10, v8, 24, 1);
    }

    v11 = nrXPCKeyErrorDescription;
    v12 = v10;
    xpc_dictionary_set_string(v12, v11, [v9 UTF8String]);
  }

  v13 = *(a1 + 32);
  if (v13)
  {
    v13 = objc_getProperty(v13, v7, 8, 1);
  }

  v15 = v13;
  v16 = *(a1 + 32);
  if (v16)
  {
    v17 = objc_getProperty(v16, v14, 24, 1);
  }

  else
  {
    v17 = 0;
  }

  xpc_connection_send_message(v15, v17);
}

uint64_t sub_100059DEC(void *a1)
{
  Property = a1;
  v3 = Property;
  if (Property)
  {
    Property = objc_getProperty(Property, v2, 16, 1);
  }

  v4 = Property;
  v5 = v4;
  if (!v4)
  {
    v34 = sub_100056D2C();
    IsLevelEnabled = _NRLogIsLevelEnabled();

    if (!IsLevelEnabled)
    {
      goto LABEL_81;
    }

    v36 = sub_100056D2C();
    _NRLogWithArgs(v36, 17, "%s called with null dict");
LABEL_80:

    goto LABEL_81;
  }

  if (!nrXPCKeyNRUUID)
  {
    v37 = sub_100056D2C();
    v38 = _NRLogIsLevelEnabled();

    if (!v38)
    {
      goto LABEL_81;
    }

    v36 = sub_100056D2C();
    _NRLogWithArgs(v36, 17, "%s called with null key");
    goto LABEL_80;
  }

  uuid = xpc_dictionary_get_uuid(v4, nrXPCKeyNRUUID);
  if (!uuid)
  {
    v39 = sub_100056D2C();
    v40 = _NRLogIsLevelEnabled();

    if (!v40)
    {
      goto LABEL_81;
    }

    v36 = sub_100056D2C();
    _NRLogWithArgs(v36, 16, "%s%.30s:%-4d Failed to get UUID for key %s");
    goto LABEL_80;
  }

  v7 = uuid;
  if (uuid_is_null(uuid))
  {
    v41 = sub_100056D2C();
    v42 = _NRLogIsLevelEnabled();

    if (v42)
    {
      v36 = sub_100056D2C();
      _NRLogWithArgs(v36, 16, "%s%.30s:%-4d UUID is null for key %s");
      goto LABEL_80;
    }

LABEL_81:

    goto LABEL_82;
  }

  v8 = [[NSUUID alloc] initWithUUIDBytes:v7];

  if (v8)
  {
    if (qword_100228FC0 != -1)
    {
      dispatch_once(&qword_100228FC0, &stru_1001FABC0);
    }

    if (_NRLogIsLevelEnabled())
    {
      if (qword_100228FC0 != -1)
      {
        dispatch_once(&qword_100228FC0, &stru_1001FABC0);
      }

      v10 = qword_100228FB8;
      if (v3)
      {
        v11 = v3[4];
        if (!v11)
        {
          v12 = objc_getProperty(v3, v9, 8, 1);
          pid = xpc_connection_get_pid(v12);
          v14 = [[NSString alloc] initWithFormat:@"unknown:%d", pid];
          bzero(buffer, 0x400uLL);
          if (pid >= 1 && proc_pidpath(pid, buffer, 0x400u) >= 1 && buffer[0])
          {
            v15 = [[NSString alloc] initWithFormat:@"%s:%d", buffer, pid];

            v14 = v15;
          }

          v16 = v3[4];
          v3[4] = v14;

          v11 = v3[4];
        }

        v17 = v11;
      }

      else
      {
        v17 = 0;
      }

      v18 = [v8 UUIDString];
      _NRLogWithArgs(v10, 0, "%s%.30s:%-4d Client %@ scrubbing %@", "", "handleScrubDeviceByNRUUID", 837, v17, v18);
    }

    objc_opt_self();
    if (qword_1002290C0 != -1)
    {
      dispatch_once(&qword_1002290C0, &stru_1001FB2B0);
    }

    v20 = qword_1002290B8;
    if (v3)
    {
      v21 = objc_getProperty(v3, v19, 8, 1);
    }

    else
    {
      v21 = 0;
    }

    sub_1000CA9A0(v20, 0, v21);

    v50[0] = _NSConcreteStackBlock;
    v50[1] = 3221225472;
    v51 = sub_10005A708;
    v52 = &unk_1001FBF50;
    v53 = v3;
    v22 = v8;
    v23 = v50;
    v24 = objc_opt_self();
    v25 = sub_100003490();
    dispatch_assert_queue_V2(v25);

    if (_NRIsUUIDNonZero())
    {
      sub_1001619D8(v24);
      v26 = sub_100163B2C(NRDLocalDevice, v22, 0);
      if (!v26)
      {
        if (qword_100229488 != -1)
        {
          dispatch_once(&qword_100229488, &stru_1001FD018);
        }

        if (_NRLogIsLevelEnabled())
        {
          if (qword_100229488 != -1)
          {
            dispatch_once(&qword_100229488, &stru_1001FD018);
          }

          _NRLogWithArgs(qword_100229480, 16, "%s%.30s:%-4d Did not scrub unknown NRUUID %@", "", "+[NRDLocalDevice scrubDeviceWithNRUUID:completionBlock:]", 2934, v22);
        }

        v29 = [[NSString alloc] initWithFormat:@"Unknown NRUUID %@", v22];
        v51(v23, -2008, v29);

        v27 = 0;
        goto LABEL_69;
      }

      v27 = v26;
      v28 = *(v26 + 48);
      if (v28)
      {
        if (qword_100229488 != -1)
        {
          dispatch_once(&qword_100229488, &stru_1001FD018);
        }

        if (_NRLogIsLevelEnabled())
        {
          if (qword_100229488 != -1)
          {
            dispatch_once(&qword_100229488, &stru_1001FD018);
          }

          _NRLogWithArgs(qword_100229480, 16, "%s%.30s:%-4d Did not scrub registered NRUUID %@", "", "+[NRDLocalDevice scrubDeviceWithNRUUID:completionBlock:]", 2938, v22);
        }

        v30 = [[NSString alloc] initWithFormat:@"Registered NRUUID %@", v22];
      }

      else
      {
        if ((v28 & 2) == 0)
        {
          [qword_100229428 setObject:0 forKeyedSubscript:v22];
          if (v27[7])
          {
            [qword_100229430 setObject:0 forKeyedSubscript:?];
          }

          sub_1000B76C8(v22, 0);
          sub_100164E90(v27);
          sub_1001629FC(v24, 1);
          if (qword_100229448)
          {
            [qword_100229448 setObject:0 forKeyedSubscript:v22];
          }

          if (qword_100229450)
          {
            [qword_100229450 setObject:0 forKeyedSubscript:v22];
          }

          if (qword_100229458)
          {
            [qword_100229458 setObject:0 forKeyedSubscript:v22];
          }

          if (qword_100229478)
          {
            [qword_100229478 setObject:0 forKeyedSubscript:v22];
          }

          if (qword_100229488 != -1)
          {
            dispatch_once(&qword_100229488, &stru_1001FD018);
          }

          if (_NRLogIsLevelEnabled())
          {
            if (qword_100229488 != -1)
            {
              dispatch_once(&qword_100229488, &stru_1001FD018);
            }

            _NRLogWithArgs(qword_100229480, 0, "%s%.30s:%-4d Scrubbed device %@", "", "+[NRDLocalDevice scrubDeviceWithNRUUID:completionBlock:]", 2972, v27);
          }

          v51(v23, 0, 0);
          goto LABEL_69;
        }

        if (qword_100229488 != -1)
        {
          dispatch_once(&qword_100229488, &stru_1001FD018);
        }

        if (_NRLogIsLevelEnabled())
        {
          if (qword_100229488 != -1)
          {
            dispatch_once(&qword_100229488, &stru_1001FD018);
          }

          _NRLogWithArgs(qword_100229480, 16, "%s%.30s:%-4d Did not scrub enabled NRUUID %@", "", "+[NRDLocalDevice scrubDeviceWithNRUUID:completionBlock:]", 2942, v22);
        }

        v30 = [[NSString alloc] initWithFormat:@"Enabled NRUUID %@", v22];
      }

      v31 = v30;
      v51(v23, -2005, v30);
    }

    else
    {
      v48 = sub_10015B480();
      v49 = _NRLogIsLevelEnabled();

      if (!v49)
      {
        goto LABEL_70;
      }

      v27 = sub_10015B480();
      _NRLogWithArgs(v27, 17, "called with all-zero nrUUID");
    }

LABEL_69:

LABEL_70:
    v32 = -2000;
    goto LABEL_71;
  }

LABEL_82:
  v43 = sub_100056D2C();
  v44 = _NRLogIsLevelEnabled();

  if (v44)
  {
    v45 = sub_100056D2C();
    v47 = sub_100056D80(v3, v46);
    _NRLogWithArgs(v45, 16, "%s%.30s:%-4d Invalid NRUUID from %@", "", "handleScrubDeviceByNRUUID", 834, v47);
  }

  v32 = -2005;
LABEL_71:

  return v32;
}

void sub_10005A708(uint64_t a1, int64_t a2, void *a3)
{
  v18 = a3;
  sub_10005674C(v18);
  Property = *(a1 + 32);
  if (Property)
  {
    Property = objc_getProperty(Property, v5, 24, 1);
  }

  xpc_dictionary_set_int64(Property, nrXPCKeyResult, a2);
  if (v18)
  {
    v9 = v18;
    v10 = *(a1 + 32);
    if (v10)
    {
      v10 = objc_getProperty(v10, v8, 24, 1);
    }

    v11 = nrXPCKeyErrorDescription;
    v12 = v10;
    xpc_dictionary_set_string(v12, v11, [v9 UTF8String]);
  }

  v13 = *(a1 + 32);
  if (v13)
  {
    v13 = objc_getProperty(v13, v7, 8, 1);
  }

  v15 = v13;
  v16 = *(a1 + 32);
  if (v16)
  {
    v17 = objc_getProperty(v16, v14, 24, 1);
  }

  else
  {
    v17 = 0;
  }

  xpc_connection_send_message(v15, v17);
}

uint64_t sub_10005A828(void *a1)
{
  Property = a1;
  v3 = Property;
  if (Property)
  {
    Property = objc_getProperty(Property, v2, 16, 1);
  }

  v4 = Property;
  v5 = v4;
  if (!v4)
  {
    v34 = sub_100056D2C();
    IsLevelEnabled = _NRLogIsLevelEnabled();

    if (!IsLevelEnabled)
    {
      goto LABEL_39;
    }

    v36 = sub_100056D2C();
    _NRLogWithArgs(v36, 17, "%s called with null dict");
LABEL_38:

    goto LABEL_39;
  }

  if (!nrXPCKeyNRUUID)
  {
    v37 = sub_100056D2C();
    v38 = _NRLogIsLevelEnabled();

    if (!v38)
    {
      goto LABEL_39;
    }

    v36 = sub_100056D2C();
    _NRLogWithArgs(v36, 17, "%s called with null key");
    goto LABEL_38;
  }

  uuid = xpc_dictionary_get_uuid(v4, nrXPCKeyNRUUID);
  if (!uuid)
  {
    v39 = sub_100056D2C();
    v40 = _NRLogIsLevelEnabled();

    if (!v40)
    {
      goto LABEL_39;
    }

    v36 = sub_100056D2C();
    _NRLogWithArgs(v36, 16, "%s%.30s:%-4d Failed to get UUID for key %s");
    goto LABEL_38;
  }

  v7 = uuid;
  if (uuid_is_null(uuid))
  {
    v41 = sub_100056D2C();
    v42 = _NRLogIsLevelEnabled();

    if (v42)
    {
      v36 = sub_100056D2C();
      _NRLogWithArgs(v36, 16, "%s%.30s:%-4d UUID is null for key %s");
      goto LABEL_38;
    }

LABEL_39:

    goto LABEL_40;
  }

  v8 = [[NSUUID alloc] initWithUUIDBytes:v7];

  if (v8)
  {
    if (qword_100228FC0 != -1)
    {
      dispatch_once(&qword_100228FC0, &stru_1001FABC0);
    }

    if (_NRLogIsLevelEnabled())
    {
      if (qword_100228FC0 != -1)
      {
        dispatch_once(&qword_100228FC0, &stru_1001FABC0);
      }

      v10 = qword_100228FB8;
      if (v3)
      {
        v11 = v3[4];
        if (!v11)
        {
          v12 = objc_getProperty(v3, v9, 8, 1);
          pid = xpc_connection_get_pid(v12);
          v14 = [[NSString alloc] initWithFormat:@"unknown:%d", pid];
          bzero(buffer, 0x400uLL);
          if (pid >= 1 && proc_pidpath(pid, buffer, 0x400u) >= 1 && LOBYTE(buffer[0]))
          {
            v15 = [[NSString alloc] initWithFormat:@"%s:%d", buffer, pid];

            v14 = v15;
          }

          v16 = v3[4];
          v3[4] = v14;

          v11 = v3[4];
        }

        v17 = v11;
      }

      else
      {
        v17 = 0;
      }

      v18 = [v8 UUIDString];
      _NRLogWithArgs(v10, 0, "%s%.30s:%-4d Client %@ unpairing %@", "", "handleUnpairDeviceByNRUUID", 779, v17, v18);
    }

    v48[0] = _NSConcreteStackBlock;
    v48[1] = 3221225472;
    v49 = sub_10005AE10;
    v50 = &unk_1001FAC60;
    v51 = v8;
    v52 = v3;
    v19 = v8;
    v20 = v48;
    v21 = v19;
    objc_opt_self();
    objc_opt_self();
    if (qword_1002290C0 != -1)
    {
      dispatch_once(&qword_1002290C0, &stru_1001FB2B0);
    }

    v22 = qword_1002290B8;
    v23 = v21;
    v24 = v20;
    v25 = v24;
    if (v22)
    {
      v26 = v22[5];
      if (v26)
      {
        buffer[0] = _NSConcreteStackBlock;
        buffer[1] = 3221225472;
        buffer[2] = sub_1000C987C;
        buffer[3] = &unk_1001FB328;
        v27 = v23;
        v54 = v27;
        v55 = v25;
        v28 = buffer;
        v29 = v27;
        v30 = sub_100022944([NRBluetoothPairer alloc], v29);

        v31 = *(v26 + 24);
        sub_100022CE8(v30, v31, v28);
      }

      else
      {
        v49(v24, 22, @"Already unpaired or bluetooth device not found");
      }
    }

    v32 = -2000;
    goto LABEL_29;
  }

LABEL_40:
  v43 = sub_100056D2C();
  v44 = _NRLogIsLevelEnabled();

  if (v44)
  {
    v45 = sub_100056D2C();
    v47 = sub_100056D80(v3, v46);
    _NRLogWithArgs(v45, 16, "%s%.30s:%-4d Invalid NRUUID from %@", "", "handleUnpairDeviceByNRUUID", 776, v47);
  }

  v32 = -2005;
LABEL_29:

  return v32;
}

void sub_10005AE10(uint64_t a1, uint64_t a2, void *a3)
{
  v5 = a3;
  v6 = _NRCopyLogObjectForNRUUID();
  IsLevelEnabled = _NRLogIsLevelEnabled();

  if (IsLevelEnabled)
  {
    v8 = _NRCopyLogObjectForNRUUID();
    _NRLogWithArgs(v8, 0, "%s%.30s:%-4d unpairBluetoothDeviceWithNRUUID returned with result:%lld and error: %@", "", "handleUnpairDeviceByNRUUID_block_invoke", 781, a2, v5);
  }

  objc_opt_self();
  if (qword_1002290C0 != -1)
  {
    dispatch_once(&qword_1002290C0, &stru_1001FB2B0);
  }

  v10 = qword_1002290B8;
  v11 = *(a1 + 40);
  if (v11)
  {
    Property = objc_getProperty(v11, v9, 8, 1);
  }

  else
  {
    Property = 0;
  }

  sub_1000CA9A0(v10, 0, Property);

  v13 = sub_100163B2C(NRDLocalDevice, *(a1 + 32), 0);
  if (v13)
  {
    v14 = *(a1 + 32);
    v26[0] = _NSConcreteStackBlock;
    v26[1] = 3221225472;
    v26[2] = sub_10005B0A0;
    v26[3] = &unk_1001FAC60;
    v27 = v14;
    v28 = *(a1 + 40);
    sub_10016BD8C(NRDLocalDevice, v27, v26);
  }

  else
  {
    v15 = _NRCopyLogObjectForNRUUID();
    v16 = _NRLogIsLevelEnabled();

    if (v16)
    {
      v18 = _NRCopyLogObjectForNRUUID();
      _NRLogWithArgs(v18, 16, "%s%.30s:%-4d localDevice not found", "", "handleUnpairDeviceByNRUUID_block_invoke", 785);
    }

    v19 = *(a1 + 40);
    if (v19)
    {
      v19 = objc_getProperty(v19, v17, 24, 1);
    }

    xpc_dictionary_set_int64(v19, nrXPCKeyResult, -2008);
    v21 = *(a1 + 40);
    if (v21)
    {
      v21 = objc_getProperty(v21, v20, 8, 1);
    }

    v23 = v21;
    v24 = *(a1 + 40);
    if (v24)
    {
      v25 = objc_getProperty(v24, v22, 24, 1);
    }

    else
    {
      v25 = 0;
    }

    xpc_connection_send_message(v23, v25);
  }
}

void sub_10005B0A0(uint64_t a1, int64_t a2, void *a3)
{
  v21 = a3;
  sub_10005674C(v21);
  v5 = _NRCopyLogObjectForNRUUID();
  IsLevelEnabled = _NRLogIsLevelEnabled();

  if (IsLevelEnabled)
  {
    v8 = _NRCopyLogObjectForNRUUID();
    _NRLogWithArgs(v8, 0, "%s%.30s:%-4d unregisterDeviceWithNRUUID: result %lld error %@", "", "handleUnpairDeviceByNRUUID_block_invoke_2", 796, a2, v21);
  }

  Property = *(a1 + 40);
  if (Property)
  {
    Property = objc_getProperty(Property, v7, 24, 1);
  }

  xpc_dictionary_set_int64(Property, nrXPCKeyResult, a2);
  if (v21)
  {
    v12 = v21;
    v13 = *(a1 + 40);
    if (v13)
    {
      v13 = objc_getProperty(v13, v11, 24, 1);
    }

    v14 = nrXPCKeyErrorDescription;
    v15 = v13;
    xpc_dictionary_set_string(v15, v14, [v12 UTF8String]);
  }

  v16 = *(a1 + 40);
  if (v16)
  {
    v16 = objc_getProperty(v16, v10, 8, 1);
  }

  v18 = v16;
  v19 = *(a1 + 40);
  if (v19)
  {
    v20 = objc_getProperty(v19, v17, 24, 1);
  }

  else
  {
    v20 = 0;
  }

  xpc_connection_send_message(v18, v20);
}

uint64_t sub_10005B228(void *a1)
{
  Property = a1;
  v3 = Property;
  if (Property)
  {
    Property = objc_getProperty(Property, v2, 16, 1);
  }

  v4 = xpc_dictionary_get_BOOL(Property, nrXPCKeySimulateSlicingEnabled);
  if (qword_100228FC0 != -1)
  {
    dispatch_once(&qword_100228FC0, &stru_1001FABC0);
  }

  if (_NRLogIsLevelEnabled())
  {
    if (qword_100228FC0 != -1)
    {
      dispatch_once(&qword_100228FC0, &stru_1001FABC0);
    }

    v6 = qword_100228FB8;
    if (v3)
    {
      v7 = v3[4];
      if (!v7)
      {
        v8 = objc_getProperty(v3, v5, 8, 1);
        pid = xpc_connection_get_pid(v8);
        v10 = [[NSString alloc] initWithFormat:@"unknown:%d", pid];
        bzero(buffer, 0x400uLL);
        if (pid >= 1 && proc_pidpath(pid, buffer, 0x400u) >= 1 && buffer[0])
        {
          v11 = [[NSString alloc] initWithFormat:@"%s:%d", buffer, pid];

          v10 = v11;
        }

        v12 = v3[4];
        v3[4] = v10;

        v7 = v3[4];
      }

      v13 = v7;
    }

    else
    {
      v13 = 0;
    }

    _NRLogWithArgs(v6, 0, "%s%.30s:%-4d Client %@ trying to set simulate slicing enabled to %d", "", "handleSimulateSlicingEnabled", 1114, v13, v4);
  }

  if (qword_1002290B0 != -1)
  {
    dispatch_once(&qword_1002290B0, &stru_1001FB278);
  }

  if (_NRLogIsLevelEnabled())
  {
    if (qword_1002290B0 != -1)
    {
      dispatch_once(&qword_1002290B0, &stru_1001FB278);
    }

    _NRLogWithArgs(qword_1002290A8, 0, "%s%.30s:%-4d Setting Simulate slicing enabled to %d", "", "terminusdSettingsSetSimulateSlicingEnabled", 197, v4);
  }

  if (v4)
  {
    v14 = [NSNumber numberWithBool:1];
    sub_1000B7458(0, @"simulateSlicingEnabled", v14);
  }

  else
  {
    sub_1000B76C8(0, @"simulateSlicingEnabled");
  }

  return 0;
}

uint64_t sub_10005B504(void *a1)
{
  Property = a1;
  v3 = Property;
  if (Property)
  {
    Property = objc_getProperty(Property, v2, 16, 1);
  }

  v24 = xpc_dictionary_get_BOOL(Property, nrXPCKeyTestCompanionAPL);
  if (qword_100228FC0 != -1)
  {
    dispatch_once(&qword_100228FC0, &stru_1001FABC0);
  }

  if (_NRLogIsLevelEnabled())
  {
    if (qword_100228FC0 != -1)
    {
      dispatch_once(&qword_100228FC0, &stru_1001FABC0);
    }

    v5 = qword_100228FB8;
    if (v3)
    {
      v6 = v3[4];
      if (!v6)
      {
        v7 = objc_getProperty(v3, v4, 8, 1);
        pid = xpc_connection_get_pid(v7);
        v9 = [[NSString alloc] initWithFormat:@"unknown:%d", pid];
        bzero(buffer, 0x400uLL);
        if (pid >= 1 && proc_pidpath(pid, buffer, 0x400u) >= 1 && buffer[0])
        {
          v10 = [[NSString alloc] initWithFormat:@"%s:%d", buffer, pid];

          v9 = v10;
        }

        v11 = v3[4];
        v3[4] = v9;

        v6 = v3[4];
      }

      v12 = v6;
    }

    else
    {
      v12 = 0;
    }

    _NRLogWithArgs(v5, 0, "%s%.30s:%-4d Client %@ trying to set companion APL to %d", "", "handleSetCompanionAPLForTesting", 1122, v12, v24);
  }

  v13 = [NSNumber numberWithBool:v24];
  if (qword_1002290B0 != -1)
  {
    dispatch_once(&qword_1002290B0, &stru_1001FB278);
  }

  if (_NRLogIsLevelEnabled())
  {
    if (qword_1002290B0 != -1)
    {
      dispatch_once(&qword_1002290B0, &stru_1001FB278);
    }

    _NRLogWithArgs(qword_1002290A8, 0, "%s%.30s:%-4d Setting Companion APL allowed to %@", "", "terminusdSettingsSetCompanionAPLAllowed", 208, v13);
  }

  sub_1000B7458(0, @"companionAPLAllowed", v13);
  v27 = 0u;
  v28 = 0u;
  v25 = 0u;
  v26 = 0u;
  v14 = sub_10016C8BC(NRDLocalDevice);
  v15 = [v14 countByEnumeratingWithState:&v25 objects:buffer count:16];
  if (v15)
  {
    v16 = v15;
    v17 = *v26;
    do
    {
      for (i = 0; i != v16; i = i + 1)
      {
        if (*v26 != v17)
        {
          objc_enumerationMutation(v14);
        }

        v22 = sub_100163A30(NRDLocalDevice, *(*(&v25 + 1) + 8 * i));
        if (sub_100169428(v22))
        {
          objc_opt_self();
          if (qword_1002290C0 != -1)
          {
            dispatch_once(&qword_1002290C0, &stru_1001FB2B0);
          }

          v19 = qword_1002290B8;
          if (v22)
          {
            v20 = v22[3];
          }

          else
          {
            v20 = 0;
          }

          v21 = v20;
          sub_1000CA5A8(v19, v24, v21);
        }
      }

      v16 = [v14 countByEnumeratingWithState:&v25 objects:buffer count:16];
    }

    while (v16);
  }

  return 0;
}

uint64_t sub_10005B908(void *a1)
{
  v1 = a1;
  if (qword_100228FC0 != -1)
  {
    dispatch_once(&qword_100228FC0, &stru_1001FABC0);
  }

  if (_NRLogIsLevelEnabled())
  {
    if (qword_100228FC0 != -1)
    {
      dispatch_once(&qword_100228FC0, &stru_1001FABC0);
    }

    v3 = qword_100228FB8;
    if (v1)
    {
      v4 = v1[4];
      if (!v4)
      {
        Property = objc_getProperty(v1, v2, 8, 1);
        pid = xpc_connection_get_pid(Property);
        v7 = [[NSString alloc] initWithFormat:@"unknown:%d", pid];
        bzero(buffer, 0x400uLL);
        if (pid >= 1 && proc_pidpath(pid, buffer, 0x400u) >= 1 && buffer[0])
        {
          v8 = [[NSString alloc] initWithFormat:@"%s:%d", buffer, pid];

          v7 = v8;
        }

        v9 = v1[4];
        v1[4] = v7;

        v4 = v1[4];
      }

      v10 = v4;
    }

    else
    {
      v10 = 0;
    }

    _NRLogWithArgs(v3, 0, "%s%.30s:%-4d Client %@ trying to resolve identity proxy", "", "handleIdentityProxyResolutionRequest", 1092, v10);
  }

  v11 = objc_alloc_init(NSMutableDictionary);
  objc_opt_self();
  if (qword_1002290C0 != -1)
  {
    dispatch_once(&qword_1002290C0, &stru_1001FB2B0);
  }

  v12 = qword_1002290B8;
  v13 = v12;
  if (v12)
  {
    v14 = *(v12 + 15);
  }

  else
  {
    v14 = 0;
  }

  v15 = v14;
  [v11 setObject:v15 forKeyedSubscript:@"id-ref"];

  objc_opt_self();
  if (qword_1002290C0 != -1)
  {
    dispatch_once(&qword_1002290C0, &stru_1001FB2B0);
  }

  v16 = qword_1002290B8;
  v17 = v16;
  if (v16)
  {
    v18 = *(v16 + 14);
  }

  else
  {
    v18 = 0;
  }

  v19 = v18;
  [v11 setObject:v19 forKeyedSubscript:@"cert-ref"];

  objc_opt_self();
  if (qword_1002290C0 != -1)
  {
    dispatch_once(&qword_1002290C0, &stru_1001FB2B0);
  }

  v20 = qword_1002290B8;
  v21 = v20;
  if (v20)
  {
    v22 = *(v20 + 16);
  }

  else
  {
    v22 = 0;
  }

  v23 = v22;
  [v11 setObject:v23 forKeyedSubscript:@"key-ref"];

  v24 = _CFXPCCreateXPCObjectFromCFObject();
  if (v24)
  {
    if (qword_100228FC0 != -1)
    {
      dispatch_once(&qword_100228FC0, &stru_1001FABC0);
    }

    if (_NRLogIsLevelEnabled())
    {
      if (qword_100228FC0 != -1)
      {
        dispatch_once(&qword_100228FC0, &stru_1001FABC0);
      }

      _NRLogWithArgs(qword_100228FB8, 0, "%s%.30s:%-4d sending response %@", "", "handleIdentityProxyResolutionRequest", 1105, v11);
    }

    if (v1)
    {
      v26 = objc_getProperty(v1, v25, 24, 1);
    }

    else
    {
      v26 = 0;
    }

    xpc_dictionary_set_value(v26, nrXPCKeyIdentityProxyReferences, v24);
    v27 = 0;
  }

  else
  {
    v29 = sub_100056D2C();
    IsLevelEnabled = _NRLogIsLevelEnabled();

    if (IsLevelEnabled)
    {
      v31 = sub_100056D2C();
      _NRLogWithArgs(v31, 17, "_CFXPCCreateXPCObjectFromCFObject failed");
    }

    v27 = -2001;
  }

  return v27;
}

uint64_t sub_10005BD68(void *a1)
{
  v1 = a1;
  if (qword_100228FC0 != -1)
  {
    dispatch_once(&qword_100228FC0, &stru_1001FABC0);
  }

  if (_NRLogIsLevelEnabled())
  {
    if (qword_100228FC0 != -1)
    {
      dispatch_once(&qword_100228FC0, &stru_1001FABC0);
    }

    v3 = qword_100228FB8;
    if (v1)
    {
      v4 = v1[4];
      if (!v4)
      {
        Property = objc_getProperty(v1, v2, 8, 1);
        pid = xpc_connection_get_pid(Property);
        v7 = [[NSString alloc] initWithFormat:@"unknown:%d", pid];
        bzero(buffer, 0x400uLL);
        if (pid >= 1 && proc_pidpath(pid, buffer, 0x400u) >= 1 && buffer[0])
        {
          v8 = [[NSString alloc] initWithFormat:@"%s:%d", buffer, pid];

          v7 = v8;
        }

        v9 = v1[4];
        v1[4] = v7;

        v4 = v1[4];
      }

      v10 = v4;
    }

    else
    {
      v10 = 0;
    }

    _NRLogWithArgs(v3, 0, "%s%.30s:%-4d Ignoring request to set companion link encryption type from %@", "", "handleCompanionLinkSetEncryptionType", 1347, v10);
  }

  return 0;
}

uint64_t sub_10005BF3C(void *a1)
{
  Property = a1;
  v3 = Property;
  if (Property)
  {
    Property = objc_getProperty(Property, v2, 16, 1);
  }

  v4 = xpc_dictionary_get_BOOL(Property, nrXPCKeyEnableBluetoothPacketParser);
  if (qword_100228FC0 != -1)
  {
    dispatch_once(&qword_100228FC0, &stru_1001FABC0);
  }

  if (_NRLogIsLevelEnabled())
  {
    if (qword_100228FC0 != -1)
    {
      dispatch_once(&qword_100228FC0, &stru_1001FABC0);
    }

    v6 = qword_100228FB8;
    if (v3)
    {
      v7 = v3[4];
      if (!v7)
      {
        v8 = objc_getProperty(v3, v5, 8, 1);
        pid = xpc_connection_get_pid(v8);
        v10 = [[NSString alloc] initWithFormat:@"unknown:%d", pid];
        bzero(buffer, 0x400uLL);
        if (pid >= 1 && proc_pidpath(pid, buffer, 0x400u) >= 1 && buffer[0])
        {
          v11 = [[NSString alloc] initWithFormat:@"%s:%d", buffer, pid];

          v10 = v11;
        }

        v12 = v3[4];
        v3[4] = v10;

        v7 = v3[4];
      }

      v13 = v7;
    }

    else
    {
      v13 = 0;
    }

    _NRLogWithArgs(v6, 0, "%s%.30s:%-4d Client %@ setting bluetooth proxy path state enabled=%d", "", "handleEnableBluetoothPacketParser", 971, v13, v4);
  }

  objc_opt_self();
  if (qword_1002290C0 != -1)
  {
    dispatch_once(&qword_1002290C0, &stru_1001FB2B0);
  }

  v14 = qword_1002290B8;
  if (v14)
  {
    if (qword_1002290F0 != -1)
    {
      dispatch_once(&qword_1002290F0, &stru_1001FB680);
    }

    if (_NRLogIsLevelEnabled())
    {
      if (qword_1002290F0 != -1)
      {
        dispatch_once(&qword_1002290F0, &stru_1001FB680);
      }

      _NRLogWithArgs(qword_1002290E8, 0, "%s%.30s:%-4d Setting bluetooth proxy path state enabled=%d", "", "[NRLinkDirector setEnableBluetoothPacketParserForTesting:]", 1170, v4);
    }

    if (v4)
    {
      v15 = [NSNumber numberWithBool:1];
      sub_1000B7458(0, @"EnableBluetoothPacketParser", v15);

      v21 = "YES";
    }

    else
    {
      sub_1000B76C8(0, @"EnableBluetoothPacketParser");
      v21 = "NO";
    }

    sub_1000B926C(v14, 1039, @"%s", v16, v17, v18, v19, v20, v21);
  }

  return 0;
}

uint64_t sub_10005C294(void *a1)
{
  Property = a1;
  v3 = Property;
  if (Property)
  {
    Property = objc_getProperty(Property, v2, 16, 1);
  }

  v4 = Property;
  v5 = v4;
  if (!v4)
  {
    v45 = sub_100056D2C();
    IsLevelEnabled = _NRLogIsLevelEnabled();

    if (!IsLevelEnabled)
    {
      goto LABEL_63;
    }

    v47 = sub_100056D2C();
    _NRLogWithArgs(v47, 17, "%s called with null dict");
LABEL_62:

    goto LABEL_63;
  }

  if (!nrXPCKeyDeviceIdentifier)
  {
    v48 = sub_100056D2C();
    v49 = _NRLogIsLevelEnabled();

    if (!v49)
    {
      goto LABEL_63;
    }

    v47 = sub_100056D2C();
    _NRLogWithArgs(v47, 17, "%s called with null key");
    goto LABEL_62;
  }

  uuid = xpc_dictionary_get_uuid(v4, nrXPCKeyDeviceIdentifier);
  if (!uuid)
  {
    v50 = sub_100056D2C();
    v51 = _NRLogIsLevelEnabled();

    if (!v51)
    {
      goto LABEL_63;
    }

    v47 = sub_100056D2C();
    _NRLogWithArgs(v47, 16, "%s%.30s:%-4d Failed to get UUID for key %s");
    goto LABEL_62;
  }

  v7 = uuid;
  if (uuid_is_null(uuid))
  {
    v52 = sub_100056D2C();
    v53 = _NRLogIsLevelEnabled();

    if (v53)
    {
      v47 = sub_100056D2C();
      _NRLogWithArgs(v47, 16, "%s%.30s:%-4d UUID is null for key %s");
      goto LABEL_62;
    }

LABEL_63:

    goto LABEL_64;
  }

  v8 = [[NSUUID alloc] initWithUUIDBytes:v7];

  if (v8)
  {
    if (qword_100228FC0 != -1)
    {
      dispatch_once(&qword_100228FC0, &stru_1001FABC0);
    }

    if (_NRLogIsLevelEnabled())
    {
      if (qword_100228FC0 != -1)
      {
        dispatch_once(&qword_100228FC0, &stru_1001FABC0);
      }

      v11 = qword_100228FB8;
      if (v3)
      {
        v12 = v3[4];
        if (!v12)
        {
          v13 = objc_getProperty(v3, v10, 8, 1);
          pid = xpc_connection_get_pid(v13);
          v15 = [[NSString alloc] initWithFormat:@"unknown:%d", pid];
          bzero(&buffer, 0x400uLL);
          if (pid >= 1 && proc_pidpath(pid, &buffer, 0x400u) >= 1 && buffer)
          {
            v16 = [[NSString alloc] initWithFormat:@"%s:%d", &buffer, pid];

            v15 = v16;
          }

          v17 = v3[4];
          v3[4] = v15;

          v12 = v3[4];
        }

        v18 = v12;
      }

      else
      {
        v18 = 0;
      }

      _NRLogWithArgs(v11, 0, "%s%.30s:%-4d Received XPCComm %@ from %@", "", "handleXPCComm", 1412, v8, v18);
    }

    if (v3)
    {
      v19 = objc_getProperty(v3, v9, 16, 1);
    }

    else
    {
      v19 = 0;
    }

    v20 = xpc_dictionary_get_dictionary(v19, nrXPCKeyXPCCommNotification);
    objc_opt_self();
    if (qword_1002290C0 != -1)
    {
      dispatch_once(&qword_1002290C0, &stru_1001FB2B0);
    }

    v22 = qword_1002290B8;
    if (v3)
    {
      v23 = objc_getProperty(v3, v21, 8, 1);
    }

    else
    {
      v23 = 0;
    }

    v24 = v8;
    v25 = v23;
    v26 = v20;
    if (v22)
    {
      v27 = [v22[28] objectForKeyedSubscript:v24];
      v28 = v25;
      v29 = v26;
      if (v27 && *(v27 + 14) == 1 && (*(v27 + 43) & 1) == 0)
      {
        v57 = v25;
        [*(v27 + 184) addObject:v28];
        v30 = _NRCopyLogObjectForNRUUID();
        v31 = _NRLogIsLevelEnabled();

        if (v31)
        {
          v32 = _NRCopyLogObjectForNRUUID();
          _NRLogWithArgs(v32, 0, "%s%.30s:%-4d Received notification: %@", "", "[NRDDeviceConductor processXPCCommNotificationForConnection:notificationDictionary:]", 7993, v29);
        }

        dispatch_assert_queue_V2(*(v27 + 136));
        v33 = sub_100163A30(NRDLocalDevice, *(v27 + 96));
        v34 = v33;
        if (v33)
        {
          v35 = *(v33 + 144);
        }

        else
        {
          v35 = 0;
        }

        v36 = v35;
        v37 = [v36 getDefaultLinkSubtypeForLinkType:1];

        v38 = sub_1000EA2C8(v27, 1, v37);
        v25 = v57;
        if (v38)
        {
          objc_opt_class();
          isKindOfClass = objc_opt_isKindOfClass();
          if (v29)
          {
            if ((isKindOfClass & 1) != 0 && [v38 state] != 255)
            {
              buffer = 0;
              p_buffer = &buffer;
              v61 = 0x3032000000;
              v62 = sub_1000FD2F4;
              v63 = sub_1000FD304;
              v64 = 0;
              applier[0] = _NSConcreteStackBlock;
              applier[1] = 3221225472;
              applier[2] = sub_10011447C;
              applier[3] = &unk_1001FBB10;
              applier[4] = v27;
              applier[5] = &buffer;
              xpc_dictionary_apply(v29, applier);
              sub_100091434(v38, p_buffer[5]);
              _Block_object_dispose(&buffer, 8);
            }
          }
        }

        if ([*(v27 + 192) count])
        {
          sub_100114680(v27, 0);
        }
      }

      v40 = xpc_connection_get_pid(v28);
      v41 = sub_10013EF7C(v40);
      v42 = v22[33];
      v22[33] = v41;

      if (!v22[33])
      {
        if (qword_1002290F0 != -1)
        {
          dispatch_once(&qword_1002290F0, &stru_1001FB680);
        }

        if (_NRLogIsLevelEnabled())
        {
          if (qword_1002290F0 != -1)
          {
            dispatch_once(&qword_1002290F0, &stru_1001FB680);
          }

          _NRLogWithArgs(qword_1002290E8, 17, "Failed to retrieve process UUID");
        }
      }
    }

    v43 = 0;
    goto LABEL_52;
  }

LABEL_64:
  v54 = sub_100056D2C();
  v55 = _NRLogIsLevelEnabled();

  if (!v55)
  {
    v43 = -2005;
    goto LABEL_53;
  }

  v24 = sub_100056D2C();
  v26 = sub_100056D80(v3, v56);
  _NRLogWithArgs(v24, 16, "%s%.30s:%-4d Invalid NRUUID from %@", "", "handleXPCComm", 1409, v26);
  v43 = -2005;
LABEL_52:

LABEL_53:
  return v43;
}

void sub_10005CA04(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, ...)
{
  va_start(va, a20);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t sub_10005CA20(void *a1)
{
  v1 = a1;
  if (qword_100228FC0 != -1)
  {
    dispatch_once(&qword_100228FC0, &stru_1001FABC0);
  }

  if (_NRLogIsLevelEnabled())
  {
    if (qword_100228FC0 != -1)
    {
      dispatch_once(&qword_100228FC0, &stru_1001FABC0);
    }

    v3 = qword_100228FB8;
    if (v1)
    {
      v4 = v1[4];
      if (!v4)
      {
        Property = objc_getProperty(v1, v2, 8, 1);
        pid = xpc_connection_get_pid(Property);
        v7 = [[NSString alloc] initWithFormat:@"unknown:%d", pid];
        bzero(buffer, 0x400uLL);
        if (pid >= 1 && proc_pidpath(pid, buffer, 0x400u) >= 1 && buffer[0])
        {
          v8 = [[NSString alloc] initWithFormat:@"%s:%d", buffer, pid];

          v7 = v8;
        }

        v9 = v1[4];
        v1[4] = v7;

        v4 = v1[4];
      }

      v10 = v4;
    }

    else
    {
      v10 = 0;
    }

    _NRLogWithArgs(v3, 0, "%s%.30s:%-4d %@ requested a refresh of the companion link agent generation", "", "handleRefreshCompanionProxyAgent", 1398, v10);
  }

  objc_opt_self();
  if (qword_1002290C0 != -1)
  {
    dispatch_once(&qword_1002290C0, &stru_1001FB2B0);
  }

  v11 = qword_1002290B8;
  if (v11)
  {
    v26 = v11;
    [v11[28] allValues];
    v27 = 0u;
    v28 = 0u;
    v29 = 0u;
    v12 = v30 = 0u;
    v13 = [v12 countByEnumeratingWithState:&v27 objects:v36 count:16];
    if (v13)
    {
      v14 = v13;
      v15 = *v28;
      do
      {
        for (i = 0; i != v14; i = i + 1)
        {
          if (*v28 != v15)
          {
            objc_enumerationMutation(v12);
          }

          v17 = *(*(&v27 + 1) + 8 * i);
          if (v17)
          {
            if (*(v17 + 14))
            {
              v33 = 0u;
              v34 = 0u;
              v31 = 0u;
              v32 = 0u;
              v18 = *(v17 + 144);
              v19 = [v18 countByEnumeratingWithState:&v31 objects:buffer count:16];
              if (v19)
              {
                v20 = v19;
                v21 = *v32;
                do
                {
                  for (j = 0; j != v20; j = j + 1)
                  {
                    if (*v32 != v21)
                    {
                      objc_enumerationMutation(v18);
                    }

                    [*(*(&v31 + 1) + 8 * j) refreshCompanionProxyAgent];
                  }

                  v20 = [v18 countByEnumeratingWithState:&v31 objects:buffer count:16];
                }

                while (v20);
              }

              goto LABEL_22;
            }

            v23 = _NRCopyLogObjectForNRUUID();
            IsLevelEnabled = _NRLogIsLevelEnabled();

            if (IsLevelEnabled)
            {
              v18 = _NRCopyLogObjectForNRUUID();
              _NRLogWithArgs(v18, 1, "%s%.30s:%-4d Ignoring refreshCompanionProxyAgent as conductor is disabled", "", "[NRDDeviceConductor refreshCompanionProxyAgent]", 2884);
LABEL_22:

              continue;
            }
          }
        }

        v14 = [v12 countByEnumeratingWithState:&v27 objects:v36 count:16];
      }

      while (v14);
    }

    v11 = v26;
  }

  return 0;
}

uint64_t sub_10005CDFC(void *a1)
{
  Property = a1;
  v3 = Property;
  if (Property)
  {
    Property = objc_getProperty(Property, v2, 16, 1);
  }

  v4 = Property;
  v5 = v4;
  if (!v4)
  {
    v22 = sub_100056D2C();
    IsLevelEnabled = _NRLogIsLevelEnabled();

    if (!IsLevelEnabled)
    {
      goto LABEL_36;
    }

    v24 = sub_100056D2C();
    _NRLogWithArgs(v24, 17, "%s called with null dict");
LABEL_35:

    goto LABEL_36;
  }

  if (!nrXPCKeyDeviceIdentifier)
  {
    v25 = sub_100056D2C();
    v26 = _NRLogIsLevelEnabled();

    if (!v26)
    {
      goto LABEL_36;
    }

    v24 = sub_100056D2C();
    _NRLogWithArgs(v24, 17, "%s called with null key");
    goto LABEL_35;
  }

  uuid = xpc_dictionary_get_uuid(v4, nrXPCKeyDeviceIdentifier);
  if (!uuid)
  {
    v27 = sub_100056D2C();
    v28 = _NRLogIsLevelEnabled();

    if (!v28)
    {
      goto LABEL_36;
    }

    v24 = sub_100056D2C();
    _NRLogWithArgs(v24, 16, "%s%.30s:%-4d Failed to get UUID for key %s");
    goto LABEL_35;
  }

  v7 = uuid;
  if (uuid_is_null(uuid))
  {
    v29 = sub_100056D2C();
    v30 = _NRLogIsLevelEnabled();

    if (v30)
    {
      v24 = sub_100056D2C();
      _NRLogWithArgs(v24, 16, "%s%.30s:%-4d UUID is null for key %s");
      goto LABEL_35;
    }

LABEL_36:

    goto LABEL_37;
  }

  v8 = [[NSUUID alloc] initWithUUIDBytes:v7];

  if (v8)
  {
    if (qword_100228FC0 != -1)
    {
      dispatch_once(&qword_100228FC0, &stru_1001FABC0);
    }

    if (_NRLogIsLevelEnabled())
    {
      if (qword_100228FC0 != -1)
      {
        dispatch_once(&qword_100228FC0, &stru_1001FABC0);
      }

      v11 = qword_100228FB8;
      if (v3)
      {
        v12 = v3[4];
        if (!v12)
        {
          v13 = objc_getProperty(v3, v10, 8, 1);
          pid = xpc_connection_get_pid(v13);
          v15 = [[NSString alloc] initWithFormat:@"unknown:%d", pid];
          bzero(buffer, 0x400uLL);
          if (pid >= 1 && proc_pidpath(pid, buffer, 0x400u) >= 1 && buffer[0])
          {
            v16 = [[NSString alloc] initWithFormat:@"%s:%d", buffer, pid];

            v15 = v16;
          }

          v17 = v3[4];
          v3[4] = v15;

          v12 = v3[4];
        }

        v18 = v12;
      }

      else
      {
        v18 = 0;
      }

      _NRLogWithArgs(v11, 0, "%s%.30s:%-4d Received SupportsRestrictedPorts %@ from %@", "", "handleSupportsRestrictedPorts", 1391, v8, v18);
    }

    if (v3)
    {
      v19 = objc_getProperty(v3, v9, 24, 1);
    }

    else
    {
      v19 = 0;
    }

    xpc_dictionary_set_BOOL(v19, nrXPCKeySupportsRestrictedPorts, 1);
    v20 = 0;
    goto LABEL_25;
  }

LABEL_37:
  v31 = sub_100056D2C();
  v32 = _NRLogIsLevelEnabled();

  if (!v32)
  {
    v20 = -2005;
    goto LABEL_26;
  }

  v8 = sub_100056D2C();
  v34 = sub_100056D80(v3, v33);
  _NRLogWithArgs(v8, 16, "%s%.30s:%-4d Invalid NRUUID from %@", "", "handleSupportsRestrictedPorts", 1388, v34);

  v20 = -2005;
LABEL_25:

LABEL_26:
  return v20;
}

uint64_t sub_10005D224(void *a1)
{
  Property = a1;
  v3 = Property;
  if (Property)
  {
    Property = objc_getProperty(Property, v2, 16, 1);
  }

  v5 = xpc_dictionary_get_BOOL(Property, nrXPCKeyFixedInterfaceModeSetEnabled);
  if (v3)
  {
    v6 = objc_getProperty(v3, v4, 16, 1);
  }

  else
  {
    v6 = 0;
  }

  string = xpc_dictionary_get_string(v6, nrXPCKeyFixedInterfaceModeInterfaceName);
  if (v3)
  {
    v9 = objc_getProperty(v3, v7, 16, 1);
  }

  else
  {
    v9 = 0;
  }

  v11 = xpc_dictionary_get_string(v9, nrXPCKeyFixedInterfaceModePeerAddress);
  if (v3)
  {
    v12 = objc_getProperty(v3, v10, 16, 1);
  }

  else
  {
    v12 = 0;
  }

  v13 = xpc_dictionary_get_string(v12, nrXPCKeyIDSDeviceID);
  v14 = v13;
  if (!v5)
  {
    if (qword_100228FC0 != -1)
    {
      dispatch_once(&qword_100228FC0, &stru_1001FABC0);
    }

    if (_NRLogIsLevelEnabled())
    {
      if (qword_100228FC0 != -1)
      {
        dispatch_once(&qword_100228FC0, &stru_1001FABC0);
      }

      v18 = qword_100228FB8;
      if (v3)
      {
        v27 = v3[4];
        if (!v27)
        {
          v28 = objc_getProperty(v3, v26, 8, 1);
          pid = xpc_connection_get_pid(v28);
          v30 = [[NSString alloc] initWithFormat:@"unknown:%d", pid];
          bzero(buffer, 0x400uLL);
          if (pid >= 1 && proc_pidpath(pid, buffer, 0x400u) >= 1 && buffer[0])
          {
            v31 = [[NSString alloc] initWithFormat:@"%s:%d", buffer, pid];

            v30 = v31;
          }

          v32 = v3[4];
          v3[4] = v30;

          v27 = v3[4];
        }

        v25 = v27;
      }

      else
      {
        v25 = 0;
      }

      _NRLogWithArgs(v18, 0, "%s%.30s:%-4d Client %@ setting fixed-interface mode disabled", "", "handleSetFixedInterfaceMode", 1067, v25);
      goto LABEL_45;
    }

LABEL_46:
    objc_opt_self();
    if (qword_1002290C0 != -1)
    {
      dispatch_once(&qword_1002290C0, &stru_1001FB2B0);
    }

    v33 = qword_1002290B8;
    if (string)
    {
      v34 = [NSString stringWithUTF8String:string];
      if (v11)
      {
        goto LABEL_50;
      }
    }

    else
    {
      v34 = 0;
      if (v11)
      {
LABEL_50:
        v35 = [NSString stringWithUTF8String:v11];
        if (v14)
        {
          goto LABEL_51;
        }

        goto LABEL_58;
      }
    }

    v35 = 0;
    if (v14)
    {
LABEL_51:
      v36 = [NSString stringWithUTF8String:v14];
      sub_1000C9CDC(v33, v5, v34, v35, v36);

      if (!v11)
      {
LABEL_53:
        if (string)
        {
        }

        v37 = 0;
        goto LABEL_67;
      }

LABEL_52:

      goto LABEL_53;
    }

LABEL_58:
    sub_1000C9CDC(v33, v5, v34, v35, 0);
    if (!v11)
    {
      goto LABEL_53;
    }

    goto LABEL_52;
  }

  if (string)
  {
    v15 = 0;
  }

  else
  {
    v15 = v11 == 0;
  }

  if (!v15 || v13 != 0)
  {
    if (qword_100228FC0 != -1)
    {
      dispatch_once(&qword_100228FC0, &stru_1001FABC0);
    }

    if (_NRLogIsLevelEnabled())
    {
      if (qword_100228FC0 != -1)
      {
        dispatch_once(&qword_100228FC0, &stru_1001FABC0);
      }

      v18 = qword_100228FB8;
      if (v3)
      {
        v19 = v3[4];
        if (!v19)
        {
          v20 = objc_getProperty(v3, v17, 8, 1);
          v21 = xpc_connection_get_pid(v20);
          v22 = [[NSString alloc] initWithFormat:@"unknown:%d", v21];
          bzero(buffer, 0x400uLL);
          if (v21 >= 1 && proc_pidpath(v21, buffer, 0x400u) >= 1 && buffer[0])
          {
            v23 = [[NSString alloc] initWithFormat:@"%s:%d", buffer, v21];

            v22 = v23;
          }

          v24 = v3[4];
          v3[4] = v22;

          v19 = v3[4];
        }

        v25 = v19;
      }

      else
      {
        v25 = 0;
      }

      _NRLogWithArgs(v18, 0, "%s%.30s:%-4d Client %@ setting fixed-interface mode enabled: %d, interface: %s, peer address: %s", "", "handleSetFixedInterfaceMode", 1065, v25, 1, string, v11);
LABEL_45:

      goto LABEL_46;
    }

    goto LABEL_46;
  }

  if (qword_100228FC0 != -1)
  {
    dispatch_once(&qword_100228FC0, &stru_1001FABC0);
  }

  if (_NRLogIsLevelEnabled())
  {
    if (qword_100228FC0 != -1)
    {
      dispatch_once(&qword_100228FC0, &stru_1001FABC0);
    }

    _NRLogWithArgs(qword_100228FB8, 16, "%s%.30s:%-4d No interface name/address/idsDeviceID for fixed-interface mode", "", "handleSetFixedInterfaceMode", 1061);
  }

  v37 = -2005;
LABEL_67:

  return v37;
}