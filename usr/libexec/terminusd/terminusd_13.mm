void sub_10012B2F8(uint64_t a1, unsigned __int8 *a2)
{
  if (a1)
  {
    sub_1001246D8(a1, a2, 0xCuLL, 0);

    sub_100129A18(a1);
  }
}

void sub_10012B340(uint64_t a1)
{
  v2 = *(a1 + 184);
  if (v2)
  {
    v3 = objc_alloc_init(NSMutableArray);
    if (qword_100229238 != -1)
    {
      dispatch_once(&qword_100229238, &stru_1001FC340);
    }

    if ((byte_100229230 & 1) == 0)
    {
      v4 = [[NEIKEv2PrivateNotify alloc] initWithNotifyStatus:50503 notifyData:*(a1 + 216)];
      [v3 addObject:v4];
    }

    v5 = [[NEIKEv2PrivateNotify alloc] initWithNotifyStatus:50504 notifyData:*(a1 + 224)];
    [v3 addObject:v5];

    v6 = [[NEIKEv2PrivateNotify alloc] initWithNotifyStatus:50505 notifyData:*(a1 + 232)];
    [v3 addObject:v6];

    v7 = [[NEIKEv2PrivateNotify alloc] initWithNotifyStatus:50351 notifyData:*(a1 + 240)];
    [v3 addObject:v7];

    LOWORD(location) = 6144;
    v8 = [[NSMutableData alloc] initWithBytes:&location length:2];
    v9 = [[NEIKEv2PrivateNotify alloc] initWithNotifyStatus:48602 notifyData:v8];
    [v3 addObject:v9];

    if (qword_100229228 != -1)
    {
      dispatch_once(&qword_100229228, &stru_1001FC320);
    }

    v10 = qword_100229220;
    v11 = [v10 dataUsingEncoding:4];

    v12 = [[NEIKEv2PrivateNotify alloc] initWithNotifyStatus:48603 notifyData:v11];
    [v3 addObject:v12];

    if (qword_100229218 != -1)
    {
      dispatch_once(&qword_100229218, &stru_1001FC300);
    }

    v13 = qword_100229210;
    v14 = [v13 dataUsingEncoding:4];

    v15 = [[NEIKEv2PrivateNotify alloc] initWithNotifyStatus:48604 notifyData:v14];
    [v3 addObject:v15];

    if (qword_100229298 != -1)
    {
      dispatch_once(&qword_100229298, &stru_1001FC450);
    }

    LOBYTE(location) = byte_100229290;
    v16 = [[NSData alloc] initWithBytes:&location length:1];
    v17 = [[NEIKEv2PrivateNotify alloc] initWithNotifyStatus:48606 notifyData:v16];
    [v3 addObject:v17];

    objc_opt_self();
    LOBYTE(location) = 1;
    v18 = [[NSData alloc] initWithBytes:&location length:1];
    v19 = [[NEIKEv2PrivateNotify alloc] initWithNotifyStatus:51401 notifyData:v18];
    [v3 addObject:v19];

    WeakRetained = objc_loadWeakRetained((a1 + 16));
    v21 = WeakRetained;
    if (WeakRetained)
    {
      v22 = *(WeakRetained + 18);
    }

    else
    {
      v22 = 0;
    }

    v23 = [v22 dataUsingEncoding:4];

    if (v23)
    {
      v24 = [[NEIKEv2PrivateNotify alloc] initWithNotifyStatus:48607 notifyData:v23];
      [v3 addObject:v24];
    }

    v25 = sub_100163A30(NRDLocalDevice, *(a1 + 248));
    v26 = v25;
    if (!v25)
    {
      v36 = sub_100123258();
      IsLevelEnabled = _NRLogIsLevelEnabled();

      if (IsLevelEnabled)
      {
        v38 = sub_100123258();
        _NRLogWithArgs(v38, 16, "%s%.30s:%-4d ABORTING: Assertion Failed: (localDevice) != ((void*)0)", "", "[NRDevicePairingCandidateContext sendPairingNotifies]", 2866);
      }

      v39 = _os_log_pack_size();
      v40 = v43 - ((__chkstk_darwin() + 15) & 0xFFFFFFFFFFFFFFF0);
      v41 = __error();
      v42 = _os_log_pack_fill(v40, v39, *v41, &_mh_execute_header, "%{public}s Assertion Failed: (localDevice) != ((void*)0)");
      *v42 = 136446210;
      *(v42 + 4) = "[NRDevicePairingCandidateContext sendPairingNotifies]";
      sub_100123258();
      _NRLogAbortWithPack();
      __break(1u);
    }

    location = 0uLL;
    sub_100167D5C(v25, &location);
    v27 = [[NSData alloc] initWithBytes:&location length:16];
    v28 = [[NEIKEv2PrivateNotify alloc] initWithNotifyStatus:50801 notifyData:v27];
    [v3 addObject:v28];

    location = 0uLL;
    sub_100168638(v26, &location);
    v29 = [[NSData alloc] initWithBytes:&location length:16];
    v30 = [[NEIKEv2PrivateNotify alloc] initWithNotifyStatus:50802 notifyData:v29];
    [v3 addObject:v30];

    location = 0uLL;
    sub_1001727AC(v26, &location);
    v31 = [[NSData alloc] initWithBytes:&location length:16];
    v32 = [[NEIKEv2PrivateNotify alloc] initWithNotifyStatus:50811 notifyData:v31];
    [v3 addObject:v32];

    location = 0uLL;
    sub_100172608(v26, &location);
    v33 = [[NSData alloc] initWithBytes:&location length:16];
    v34 = [[NEIKEv2PrivateNotify alloc] initWithNotifyStatus:50812 notifyData:v33];
    [v3 addObject:v34];

    objc_initWeak(&location, a1);
    v35 = *(a1 + 24);
    v43[0] = _NSConcreteStackBlock;
    v43[1] = 3221225472;
    v43[2] = sub_10012BA60;
    v43[3] = &unk_1001FC018;
    objc_copyWeak(&v44, &location);
    [v2 sendPrivateNotifies:v3 maxRetries:10 retryIntervalInMilliseconds:500 callbackQueue:v35 callback:v43];

    objc_destroyWeak(&v44);
    objc_destroyWeak(&location);
  }
}

void sub_10012BA00(_Unwind_Exception *a1)
{
  objc_destroyWeak((v1 + 32));
  objc_destroyWeak((v2 - 88));
  _Unwind_Resume(a1);
}

void sub_10012BA20(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  sub_100127188(WeakRetained);
}

uint64_t sub_10012BA60(uint64_t a1, int a2)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v4 = WeakRetained;
  if (WeakRetained)
  {
    v6 = WeakRetained;
    if (a2)
    {
      if (qword_1002291E8 != -1)
      {
        dispatch_once(&qword_1002291E8, &stru_1001FC218);
      }

      WeakRetained = _NRLogIsLevelEnabled();
      v4 = v6;
      if (WeakRetained)
      {
        if (qword_1002291E8 != -1)
        {
          dispatch_once(&qword_1002291E8, &stru_1001FC218);
          v4 = v6;
        }

        WeakRetained = _NRLogWithArgs(qword_1002291E0, 1, "%s%.30s:%-4d %@: Received ACK for pairing notifies", "", "[NRDevicePairingCandidateContext sendPairingNotifies]_block_invoke", 2927, v4);
LABEL_15:
        v4 = v6;
      }
    }

    else
    {
      if (qword_1002291E8 != -1)
      {
        dispatch_once(&qword_1002291E8, &stru_1001FC218);
      }

      WeakRetained = _NRLogIsLevelEnabled();
      v4 = v6;
      if (WeakRetained)
      {
        if (qword_1002291E8 != -1)
        {
          dispatch_once(&qword_1002291E8, &stru_1001FC218);
          v4 = v6;
        }

        WeakRetained = _NRLogWithArgs(qword_1002291E0, 16, "%s%.30s:%-4d %@: Didn't receive ACK for pairing notifies", "", "[NRDevicePairingCandidateContext sendPairingNotifies]_block_invoke", 2929, v4);
        goto LABEL_15;
      }
    }
  }

  return _objc_release_x1(WeakRetained, v4);
}

void sub_10012BBD8(uint64_t a1, uint64_t a2, void *a3)
{
  v5 = a3;
  if (qword_1002291E8 != -1)
  {
    dispatch_once(&qword_1002291E8, &stru_1001FC218);
  }

  if (_NRLogIsLevelEnabled())
  {
    if (qword_1002291E8 != -1)
    {
      dispatch_once(&qword_1002291E8, &stru_1001FC218);
    }

    _NRLogWithArgs(qword_1002291E0, 0, "%s%.30s:%-4d %@: Device unregistered with res %lld %@", "", "[NRDevicePairingCandidateContext prepareLocalDeviceForPairing]_block_invoke", 2713, *(a1 + 32), a2, v5);
  }
}

void sub_10012BCC4(uint64_t a1, void *a2, void *a3, void *a4)
{
  v16 = a2;
  v8 = a3;
  v9 = a4;
  if (qword_1002291E8 != -1)
  {
    dispatch_once(&qword_1002291E8, &stru_1001FC218);
  }

  if (_NRLogIsLevelEnabled())
  {
    if (qword_1002291E8 != -1)
    {
      dispatch_once(&qword_1002291E8, &stru_1001FC218);
    }

    v10 = *(a1 + 32);
    v11 = qword_1002291E0;
    LogString = _NRKeyCreateLogString();
    v13 = _NRKeyCreateLogString();
    _NRLogWithArgs(v11, 0, "%s%.30s:%-4d %@: Queried for pairing keys for modern pairing D %@ C %@", "", "[NRDevicePairingCandidateContext prepareLocalDeviceForPairing]_block_invoke_2", 2746, v10, LogString, v13);
  }

  v14 = *(a1 + 32);
  if (v14)
  {
    objc_storeStrong((v14 + 224), a2);
    v15 = *(a1 + 32);
    if (v15)
    {
      objc_storeStrong((v15 + 232), a3);
    }
  }
}

void sub_10012BE3C(uint64_t a1)
{
  v2 = *(a1 + 176);
  v3 = v2;
  if (*(a1 + 208) && [v2 state] == 2)
  {
    v4 = objc_alloc_init(NSMutableData);
    v15 = *(a1 + 208);
    NRTLVAdd();
    if (v15 == 3)
    {
      v5 = *(a1 + 56);
      if (v5)
      {
        v5 = v5[5];
      }

      v6 = v5;
      NRTLVAddData();
    }

    v7 = [[NEIKEv2PrivateNotify alloc] initWithNotifyStatus:50501 notifyData:v4];
    if (qword_1002291E8 != -1)
    {
      dispatch_once(&qword_1002291E8, &stru_1001FC218);
    }

    if (_NRLogIsLevelEnabled())
    {
      if (qword_1002291E8 != -1)
      {
        dispatch_once(&qword_1002291E8, &stru_1001FC218);
      }

      _NRLogWithArgs(qword_1002291E0, 1, "%s%.30s:%-4d %@: Sending auth method request for type %zu", "", "[NRDevicePairingCandidateContext sendAuthMethodRequestIfNeeded]", 3128, a1, *(a1 + 208));
    }

    objc_initWeak(&location, a1);
    v16 = v7;
    v8 = [NSArray arrayWithObjects:&v16 count:1];
    v9 = *(a1 + 24);
    v12[0] = _NSConcreteStackBlock;
    v12[1] = 3221225472;
    v12[2] = sub_10012D24C;
    v12[3] = &unk_1001FC018;
    objc_copyWeak(&v13, &location);
    [v3 sendPrivateNotifies:v8 maxRetries:10 retryIntervalInMilliseconds:500 callbackQueue:v9 callback:v12];

    objc_destroyWeak(&v13);
    objc_destroyWeak(&location);
  }

  else
  {
    if (qword_1002291E8 != -1)
    {
      dispatch_once(&qword_1002291E8, &stru_1001FC218);
    }

    if (_NRLogIsLevelEnabled())
    {
      if (qword_1002291E8 != -1)
      {
        dispatch_once(&qword_1002291E8, &stru_1001FC218);
      }

      v10 = *(a1 + 208);
      v11 = qword_1002291E0;
      _NRLogWithArgs(v11, 1, "%s%.30s:%-4d %@: Skipping sending auth method request: pending %zu IKE state %zu", "", "-[NRDevicePairingCandidateContext sendAuthMethodRequestIfNeeded]", 3113, a1, v10, [v3 state]);
    }
  }
}

void sub_10012C150(_Unwind_Exception *a1)
{
  objc_destroyWeak((v1 + 32));
  objc_destroyWeak((v2 - 80));
  _Unwind_Resume(a1);
}

void sub_10012C17C(uint64_t a1, uint64_t a2, void *a3)
{
  v5 = a3;
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  if (WeakRetained)
  {
    if (qword_1002291E8 != -1)
    {
      dispatch_once(&qword_1002291E8, &stru_1001FC218);
    }

    if (_NRLogIsLevelEnabled())
    {
      if (qword_1002291E8 != -1)
      {
        dispatch_once(&qword_1002291E8, &stru_1001FC218);
      }

      _NRLogWithArgs(qword_1002291E0, 0, "%s%.30s:%-4d %@: Control session received state update %zu error %@", "", "[NRDevicePairingCandidateContext setupIKECallbacksForControlSession]_block_invoke", 3681, WeakRetained, a2, v5);
    }

    if (a2 == 2)
    {
      sub_10012BE3C(WeakRetained);
    }

    else if (a2 == 3 || v5)
    {
      sub_100123ADC(NRDevicePairingCandidateContext, WeakRetained + 22);
      v7 = dispatch_time(0, 1000000000);
      v8 = *(a1 + 32);
      if (v8)
      {
        v8 = v8[3];
      }

      block[0] = _NSConcreteStackBlock;
      block[1] = 3221225472;
      block[2] = sub_10012D20C;
      block[3] = &unk_1001FC730;
      v9 = v8;
      objc_copyWeak(&v11, (a1 + 40));
      dispatch_after(v7, v9, block);

      objc_destroyWeak(&v11);
    }
  }
}

void sub_10012C330(uint64_t a1, void *a2)
{
  v26 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  if (WeakRetained)
  {
    v4 = [v26 sortedArrayUsingComparator:&stru_1001FC4F0];
    if (qword_1002291E8 != -1)
    {
      dispatch_once(&qword_1002291E8, &stru_1001FC218);
    }

    if (_NRLogIsLevelEnabled())
    {
      if (qword_1002291E8 != -1)
      {
        dispatch_once(&qword_1002291E8, &stru_1001FC218);
      }

      _NRLogWithArgs(qword_1002291E0, 0, "%s%.30s:%-4d %@: Control ssession got private notifies %@", "", "[NRDevicePairingCandidateContext setupIKECallbacksForControlSession]_block_invoke_3", 3703, WeakRetained, v4);
    }

    v32 = 0u;
    v33 = 0u;
    v30 = 0u;
    v31 = 0u;
    obj = v4;
    v5 = [obj countByEnumeratingWithState:&v30 objects:v54 count:16];
    if (v5)
    {
      v6 = *v31;
      do
      {
        v7 = 0;
        do
        {
          if (*v31 != v6)
          {
            objc_enumerationMutation(obj);
          }

          v8 = *(*(&v30 + 1) + 8 * v7);
          v9 = [v8 notifyStatus];
          v10 = [v8 notifyData];
          if (qword_1002291E8 != -1)
          {
            dispatch_once(&qword_1002291E8, &stru_1001FC218);
          }

          if (_NRLogIsLevelEnabled())
          {
            if (qword_1002291E8 != -1)
            {
              dispatch_once(&qword_1002291E8, &stru_1001FC218);
            }

            v11 = qword_1002291E0;
            _NRLogWithArgs(v11, 2, "%s%.30s:%-4d %@: Received notify code %u len %llu for control session", "", "-[NRDevicePairingCandidateContext handleNotifyCodeForControlSession:payload:]", 3188, WeakRetained, v9, [v10 length]);
          }

          if (v9 > 50500)
          {
            if (v9 > 50800)
            {
              if (v9 > 51300)
              {
                if (v9 > 51500)
                {
                  if (v9 == 51501)
                  {
                    goto LABEL_42;
                  }

                  v12 = 51601;
                }

                else
                {
                  if (v9 == 51301)
                  {
                    goto LABEL_42;
                  }

                  v12 = 51401;
                }
              }

              else
              {
                if ((v9 - 50801) <= 0xB && ((1 << (v9 - 113)) & 0xC03) != 0)
                {
                  goto LABEL_42;
                }

                v12 = 50901;
              }

              goto LABEL_41;
            }

            if ((v9 - 50503) < 3)
            {
              goto LABEL_42;
            }

            if ((v9 - 50501) < 2)
            {
              v50 = 0;
              v51 = &v50;
              v52 = 0x2020000000;
              v53 = 0;
              v44 = 0;
              v45 = &v44;
              v46 = 0x3032000000;
              v47 = sub_10012CCDC;
              v48 = sub_10012CCEC;
              v49 = 0;
              v42[0] = 0;
              v42[1] = v42;
              v42[2] = 0x3032000000;
              v42[3] = sub_10012CCDC;
              v42[4] = sub_10012CCEC;
              v43 = 0;
              v34 = _NSConcreteStackBlock;
              v35 = 3221225472;
              v36 = sub_10012CCF4;
              v37 = &unk_1001FC040;
              v38 = WeakRetained;
              v39 = &v50;
              v40 = &v44;
              v41 = v42;
              if ((NRTLVParse() & 1) == 0)
              {
                goto LABEL_85;
              }

              if (v9 != 50502)
              {
                v17 = sub_100123258();
                IsLevelEnabled = _NRLogIsLevelEnabled();

                if (IsLevelEnabled)
                {
                  v28 = sub_100123258();
                  _NRLogWithArgs(v28, 16, "%s%.30s:%-4d %@: Unexpectedly received auth method request", "", "[NRDevicePairingCandidateContext handleNotifyCodeForControlSession:payload:]", 3243, WeakRetained);
                }

                goto LABEL_85;
              }

              v13 = v51[3];
              v14 = v45[5];
              v27 = v14;
              v15 = objc_loadWeakRetained(WeakRetained + 2);
              if (!v15)
              {
                goto LABEL_84;
              }

              if (!WeakRetained[26])
              {
                v19 = sub_100123258();
                v25 = _NRLogIsLevelEnabled();

                if (v25)
                {
                  v20 = sub_100123258();
                  _NRLogWithArgs(v20, 16, "%s%.30s:%-4d %@: Auth method response for type %zu received w/ no active request", "", "[NRDevicePairingCandidateContext handleAuthMethodResponse:salt:]", 3011, WeakRetained, v13);
                }

                goto LABEL_84;
              }

              if (qword_1002291E8 != -1)
              {
                dispatch_once(&qword_1002291E8, &stru_1001FC218);
              }

              if (_NRLogIsLevelEnabled())
              {
                if (qword_1002291E8 != -1)
                {
                  dispatch_once(&qword_1002291E8, &stru_1001FC218);
                }

                _NRLogWithArgs(qword_1002291E0, 0, "%s%.30s:%-4d %@: Received auth method response with type %zu, salt %@", "", "[NRDevicePairingCandidateContext handleAuthMethodResponse:salt:]", 3015, WeakRetained, v13, v27);
              }

              if (WeakRetained[26] == v13)
              {
                if (v13 != 2)
                {
                  goto LABEL_70;
                }

                if (v27)
                {
                  if (qword_1002291E8 != -1)
                  {
                    dispatch_once(&qword_1002291E8, &stru_1001FC218);
                  }

                  if (_NRLogIsLevelEnabled())
                  {
                    if (qword_1002291E8 != -1)
                    {
                      dispatch_once(&qword_1002291E8, &stru_1001FC218);
                    }

                    _NRLogWithArgs(qword_1002291E0, 1, "%s%.30s:%-4d %@: Received salt %@", "", "[NRDevicePairingCandidateContext handleAuthMethodResponse:salt:]", 3025, WeakRetained, v27);
                  }

                  objc_storeStrong(WeakRetained + 32, v14);
LABEL_70:
                  sub_10012CF7C(WeakRetained);
LABEL_84:

LABEL_85:
                  _Block_object_dispose(v42, 8);

                  _Block_object_dispose(&v44, 8);
                  _Block_object_dispose(&v50, 8);
                  goto LABEL_48;
                }

                v21 = sub_100123258();
                v22 = _NRLogIsLevelEnabled();

                if (v22)
                {
                  v23 = sub_100123258();
                  _NRLogWithArgs(v23, 16, "%s%.30s:%-4d %@: PIN auth response missing salt", "", "[NRDevicePairingCandidateContext handleAuthMethodResponse:salt:]", 3022, WeakRetained);
                }
              }

              else
              {
                if (qword_1002291E8 != -1)
                {
                  dispatch_once(&qword_1002291E8, &stru_1001FC218);
                }

                if (_NRLogIsLevelEnabled())
                {
                  if (qword_1002291E8 != -1)
                  {
                    dispatch_once(&qword_1002291E8, &stru_1001FC218);
                  }

                  _NRLogWithArgs(qword_1002291E0, 16, "%s%.30s:%-4d %@: Auth method response type %zu != requested type %zu", "", "[NRDevicePairingCandidateContext handleAuthMethodResponse:salt:]", 3018, WeakRetained, v13, WeakRetained[26]);
                }
              }

              sub_100124444(WeakRetained, 0xFFFFFFFFFFFFF446);
              goto LABEL_84;
            }

            if ((v9 - 50701) < 2)
            {
LABEL_42:
              if (qword_1002291E8 != -1)
              {
                dispatch_once(&qword_1002291E8, &stru_1001FC218);
              }

              if (_NRLogIsLevelEnabled())
              {
                if (qword_1002291E8 != -1)
                {
                  dispatch_once(&qword_1002291E8, &stru_1001FC218);
                }

                _NRLogWithArgs(qword_1002291E0, 16, "%s%.30s:%-4d %@: Control session received unexpected notify code %u", "", "[NRDevicePairingCandidateContext handleNotifyCodeForControlSession:payload:]", 3290, WeakRetained, v9);
              }

              goto LABEL_48;
            }
          }

          else
          {
            if (v9 <= 50350)
            {
              if ((v9 - 48601) < 7 || !v9)
              {
                goto LABEL_42;
              }

              v12 = 48701;
LABEL_41:
              if (v9 == v12)
              {
                goto LABEL_42;
              }

              goto LABEL_71;
            }

            if ((v9 - 50351) <= 0x3E && ((1 << (v9 + 81)) & 0x701C000000000003) != 0)
            {
              goto LABEL_42;
            }
          }

LABEL_71:
          if (qword_1002291E8 != -1)
          {
            dispatch_once(&qword_1002291E8, &stru_1001FC218);
          }

          if (_NRLogIsLevelEnabled())
          {
            if (qword_1002291E8 != -1)
            {
              dispatch_once(&qword_1002291E8, &stru_1001FC218);
            }

            v16 = qword_1002291E0;
            _NRLogWithArgs(v16, 16, "%s%.30s:%-4d %@: Received unknown notify code %u", "", "[NRDevicePairingCandidateContext handleNotifyCodeForControlSession:payload:]", 3297, WeakRetained, v9);
          }

LABEL_48:

          v7 = v7 + 1;
        }

        while (v5 != v7);
        v24 = [obj countByEnumeratingWithState:&v30 objects:v54 count:16];
        v5 = v24;
      }

      while (v24);
    }
  }
}

void sub_10012CCA8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, ...)
{
  va_start(va, a52);
  _Block_object_dispose(&a41, 8);
  _Block_object_dispose(&a47, 8);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t sub_10012CCDC(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

uint64_t sub_10012CCF4(void *a1, unsigned __int8 *a2)
{
  v4 = *(a2 + 1);
  v5 = __rev16(v4);
  v6 = *a2;
  if (v6 == 3)
  {
    if (v5 > 0x3F)
    {
      v7 = [[NSData alloc] initWithBytes:a2 + 3 length:v5];
      v8 = a1[7];
      goto LABEL_10;
    }

    v15 = sub_100123258();
    IsLevelEnabled = _NRLogIsLevelEnabled();

    if (!IsLevelEnabled)
    {
      return 0;
    }

    v14 = sub_100123258();
    _NRLogWithArgs(v14, 16, "%s%.30s:%-4d %@: Invalid TLV length %u for previous pairing salt", "", "[NRDevicePairingCandidateContext handleNotifyCodeForControlSession:payload:]_block_invoke", 3218, a1[4], v5);
LABEL_24:

    return 0;
  }

  if (v6 == 2)
  {
    if (v5 > 0x1F)
    {
      v7 = [[NSData alloc] initWithBytes:a2 + 3 length:v5];
      v8 = a1[6];
LABEL_10:
      v9 = *(v8 + 8);
      v10 = *(v9 + 40);
      *(v9 + 40) = v7;

      return 1;
    }

    v12 = sub_100123258();
    v13 = _NRLogIsLevelEnabled();

    if (!v13)
    {
      return 0;
    }

    v14 = sub_100123258();
    _NRLogWithArgs(v14, 16, "%s%.30s:%-4d %@: Invalid TLV length %u for PIN salt", "", "[NRDevicePairingCandidateContext handleNotifyCodeForControlSession:payload:]_block_invoke", 3209, a1[4], v5);
    goto LABEL_24;
  }

  if (v6 != 1)
  {
    if (qword_1002291E8 != -1)
    {
      dispatch_once(&qword_1002291E8, &stru_1001FC218);
    }

    if (_NRLogIsLevelEnabled())
    {
      if (qword_1002291E8 != -1)
      {
        dispatch_once(&qword_1002291E8, &stru_1001FC218);
      }

      _NRLogWithArgs(qword_1002291E0, 16, "%s%.30s:%-4d %@: Unrecognized TLV type %u", "", "[NRDevicePairingCandidateContext handleNotifyCodeForControlSession:payload:]_block_invoke", 3226, a1[4], *a2);
    }

    return 1;
  }

  if (v4 == 256)
  {
    *(*(a1[5] + 8) + 24) = a2[3];
    return 1;
  }

  v17 = sub_100123258();
  v18 = _NRLogIsLevelEnabled();

  if (v18)
  {
    v14 = sub_100123258();
    _NRLogWithArgs(v14, 16, "%s%.30s:%-4d %@: Invalid TLV length %u for auth method", "", "[NRDevicePairingCandidateContext handleNotifyCodeForControlSession:payload:]_block_invoke", 3201, a1[4], v5);
    goto LABEL_24;
  }

  return 0;
}

void sub_10012CF7C(uint64_t a1)
{
  if (*(a1 + 208))
  {
    WeakRetained = objc_loadWeakRetained((a1 + 16));
    *(a1 + 208) = 0;
    v4 = *(a1 + 200);
    if (v4)
    {
      dispatch_source_cancel(v4);
      v5 = *(a1 + 200);
      *(a1 + 200) = 0;
    }

    v6 = xpc_dictionary_create(0, 0, 0);
    if (v6)
    {
      v7 = v6;
      v8 = nrXPCKeyTargetPairingCandidate;
      v9 = [*(a1 + 32) uuid];
      v10 = v7;
      v11 = v9;
      v1 = v11;
      if (v8)
      {
        if (v11)
        {
          *uuid = 0;
          v24 = 0;
          [v11 getUUIDBytes:uuid];
          xpc_dictionary_set_uuid(v10, v8, uuid);
LABEL_8:

          sub_1001246D8(WeakRetained, 0, 8uLL, v10);
          sub_100124A48(WeakRetained);

          return;
        }

        v20 = sub_100123258();
        IsLevelEnabled = _NRLogIsLevelEnabled();

        if (!IsLevelEnabled)
        {
          goto LABEL_8;
        }

        v19 = sub_100123258();
        _NRLogWithArgs(v19, 17, "%s called with null uuid");
LABEL_17:

        goto LABEL_8;
      }
    }

    else
    {
      v12 = sub_100123258();
      v13 = _NRLogIsLevelEnabled();

      if (v13)
      {
        v14 = sub_100123258();
        _NRLogWithArgs(v14, 16, "%s%.30s:%-4d ABORTING: xpc_dictionary_create(%p, %p, %u) failed", "", "nr_xpc_dictionary_create", 74, 0, 0, 0);
      }

      WeakRetained = _os_log_pack_size();
      v10 = &uuid[-((__chkstk_darwin() + 15) & 0xFFFFFFFFFFFFFFF0) - 8];
      v15 = __error();
      v16 = _os_log_pack_fill(v10, WeakRetained, *v15, &_mh_execute_header, "%{public}s xpc_dictionary_create(%p, %p, %u) failed");
      sub_1000F4320(v16, "nr_xpc_dictionary_create");
      sub_100123258();
      _NRLogAbortWithPack();
    }

    v17 = sub_100123258();
    v18 = _NRLogIsLevelEnabled();

    if (!v18)
    {
      goto LABEL_8;
    }

    v19 = sub_100123258();
    _NRLogWithArgs(v19, 17, "%s called with null key");
    goto LABEL_17;
  }
}

void sub_10012D20C(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  sub_100126844(WeakRetained);
}

uint64_t sub_10012D24C(uint64_t a1, int a2)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v4 = WeakRetained;
  if (WeakRetained)
  {
    v7 = WeakRetained;
    if (!a2)
    {
      if (qword_1002291E8 != -1)
      {
        dispatch_once(&qword_1002291E8, &stru_1001FC218);
      }

      if (_NRLogIsLevelEnabled())
      {
        v5 = v7;
        if (qword_1002291E8 != -1)
        {
          dispatch_once(&qword_1002291E8, &stru_1001FC218);
          v5 = v7;
        }

        _NRLogWithArgs(qword_1002291E0, 16, "%s%.30s:%-4d %@: Didn't receive ACK for pairing auth method request", "", "[NRDevicePairingCandidateContext sendAuthMethodRequestIfNeeded]_block_invoke", 3144, v5);
      }

      sub_100124444(v7, 0xFFFFFFFFFFFFF446);
      goto LABEL_16;
    }

    if (qword_1002291E8 != -1)
    {
      dispatch_once(&qword_1002291E8, &stru_1001FC218);
    }

    WeakRetained = _NRLogIsLevelEnabled();
    v4 = v7;
    if (WeakRetained)
    {
      if (qword_1002291E8 != -1)
      {
        dispatch_once(&qword_1002291E8, &stru_1001FC218);
        v4 = v7;
      }

      WeakRetained = _NRLogWithArgs(qword_1002291E0, 1, "%s%.30s:%-4d %@: Received ACK for pairing auth method request", "", "[NRDevicePairingCandidateContext sendAuthMethodRequestIfNeeded]_block_invoke", 3142, v4);
LABEL_16:
      v4 = v7;
    }
  }

  return _objc_release_x1(WeakRetained, v4);
}

BOOL sub_10012D3D4(void *a1, char *a2, unint64_t a3, void *a4)
{
  if (a4)
  {
    *a4 = 0;
  }

  v7 = a1;
  if (!v7 || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
  {
    if (qword_1002291E8 != -1)
    {
      dispatch_once(&qword_1002291E8, &stru_1001FC218);
    }

    if (_NRLogIsLevelEnabled())
    {
      if (qword_1002291E8 != -1)
      {
        dispatch_once(&qword_1002291E8, &stru_1001FC218);
      }

      _NRLogWithArgs(qword_1002291E0, 16, "%s%.30s:%-4d %@: invalid context", "", "NRLinkParserWriteOutputCallback", 3544, v7);
    }

    goto LABEL_21;
  }

  if (!*(v7 + 15))
  {
LABEL_21:
    v13 = 0;
    goto LABEL_22;
  }

  __n_2 = 0;
  next_slot = os_channel_get_next_slot();
  v9 = a3;
  if (a3)
  {
    v9 = a3;
    if (next_slot)
    {
      v9 = a3;
      do
      {
        v12 = __n_2;
        if (v9 < __n_2)
        {
          __n_2 = v9;
          v12 = v9;
        }

        memcpy(0, a2, v12);
        a2 += v12;
        v9 -= v12;
        os_channel_set_slot_properties();
        v10 = os_channel_get_next_slot();
        if (v9)
        {
          v11 = v10 == 0;
        }

        else
        {
          v11 = 1;
        }
      }

      while (!v11);
      v15 = os_channel_advance_slot();
      if (v15)
      {
        v17 = v15;
        v18 = sub_100123258();
        IsLevelEnabled = _NRLogIsLevelEnabled();

        if (IsLevelEnabled)
        {
          v20 = sub_100123258();
          _NRLogWithArgs(v20, 17, "os_channel_advance_slot failed: %d", v17);
        }
      }

      v16 = os_channel_sync();
      if (v16)
      {
        v21 = v16;
        v22 = sub_100123258();
        v23 = _NRLogIsLevelEnabled();

        if (v23)
        {
          v24 = sub_100123258();
          _NRLogWithArgs(v24, 17, "os_channel_advance_slot failed: %d", v21);
        }
      }
    }
  }

  if (a4)
  {
    *a4 = a3 - v9;
  }

  v13 = v9 == 0;
  if (v9 && *(v7 + 9) == 1)
  {
    dispatch_resume(*(v7 + 17));
    *(v7 + 9) = 0;
  }

LABEL_22:

  return v13;
}

void sub_10012DB18(id *a1, void *a2)
{
  v5 = a2;
  if (a1)
  {
    v3 = [a1[4] pairingCriteria];
    v4 = [v3 migrationPairing];

    if (v4)
    {
      if (sub_100123380(v5))
      {
        sub_10012DBA8(a1);
      }
    }

    else
    {
      sub_100124A48(a1);
    }
  }
}

void sub_10012DBA8(id *a1)
{
  v10 = 0u;
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  obj = a1[7];
  v2 = [obj countByEnumeratingWithState:&v10 objects:v18 count:16];
  if (v2)
  {
    v3 = *v11;
    do
    {
      v4 = 0;
      do
      {
        if (*v11 != v3)
        {
          objc_enumerationMutation(obj);
        }

        v5 = *(*(&v10 + 1) + 8 * v4);
        if (qword_1002291E8 != -1)
        {
          dispatch_once(&qword_1002291E8, &stru_1001FC218);
        }

        if (_NRLogIsLevelEnabled())
        {
          if (qword_1002291E8 != -1)
          {
            dispatch_once(&qword_1002291E8, &stru_1001FC218);
          }

          _NRLogWithArgs(qword_1002291E0, 0, "%s%.30s:%-4d %@: Connecting device for %@", "", "[NRDevicePairingManagerContext connectToAllPairingCandidatesUsingPairingInfo]", 1503, a1, v5);
        }

        v6 = v5;
        objc_initWeak(&location, a1);
        v7 = [v6 nrDeviceIdentifier];
        v14[0] = _NSConcreteStackBlock;
        v14[1] = 3221225472;
        v14[2] = sub_10012DE30;
        v14[3] = &unk_1001FBF28;
        objc_copyWeak(&v16, &location);
        v8 = v6;
        v15 = v8;
        sub_1001746C0(NRDLocalDevice, v7, v14);

        objc_destroyWeak(&v16);
        objc_destroyWeak(&location);

        v4 = v4 + 1;
      }

      while (v2 != v4);
      v2 = [obj countByEnumeratingWithState:&v10 objects:v18 count:16];
    }

    while (v2);
  }
}

void sub_10012DE30(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  if (WeakRetained)
  {
    if (v6)
    {
      if (qword_1002291E8 != -1)
      {
        dispatch_once(&qword_1002291E8, &stru_1001FC218);
      }

      if (_NRLogIsLevelEnabled())
      {
        if (qword_1002291E8 != -1)
        {
          dispatch_once(&qword_1002291E8, &stru_1001FC218);
        }

        _NRLogWithArgs(qword_1002291E0, 0, "%s%.30s:%-4d %@: readPairingInfoFromKeychain for %@ migration returned %@", "", "[NRDevicePairingManagerContext connectToPairingCandidateUsingPairingInfo:]_block_invoke", 1452, WeakRetained, v5, v6);
      }

      v8 = v6[2];
      v9 = _NRCreateMACAddressString();

      v10 = v6[3];
      v11 = [v10 unsignedCharValue];

      v23 = v11;
      v12 = [[NSMutableData alloc] initWithBytes:&v23 length:1];
      v13 = v6[2];
      [v12 appendData:v13];

      v14 = WeakRetained[11];
      v15 = [v14 retrievePeripheralWithAddress:v9];

      if (v15 || (v16 = WeakRetained[11], [v16 createPeripheralWithAddress:v12 andIdentifier:0], v15 = objc_claimAutoreleasedReturnValue(), v16, v15))
      {
        v22 = v9;
        v17 = [v15 identifier];
        v18 = sub_1001232AC(WeakRetained, v17);
        if (!v18)
        {
          v19 = [[NRDevicePairingCandidate alloc] initInternal];
          [v19 setMetadata:0];
          [v19 setCbUUID:v17];
          [v19 setNrDeviceIdentifier:*(a1 + 32)];
          v18 = sub_10012E4CC([NRDevicePairingCandidateContext alloc], v19, WeakRetained[3], WeakRetained);
          sub_10012E66C(WeakRetained, v18);
        }

        if (qword_1002291E8 != -1)
        {
          dispatch_once(&qword_1002291E8, &stru_1001FC218);
        }

        if (_NRLogIsLevelEnabled())
        {
          if (qword_1002291E8 != -1)
          {
            dispatch_once(&qword_1002291E8, &stru_1001FC218);
          }

          _NRLogWithArgs(qword_1002291E0, 0, "%s%.30s:%-4d %@: Got peripheral for %@ migration: %@", "", "[NRDevicePairingManagerContext connectToPairingCandidateUsingPairingInfo:]_block_invoke", 1477, v18, v5, v15);
        }

        if (v18)
        {
          objc_storeStrong(v18 + 11, v15);
          objc_storeStrong(v18 + 7, a3);
        }

        if ([v15 state] == 2)
        {
          if (qword_1002291E8 != -1)
          {
            dispatch_once(&qword_1002291E8, &stru_1001FC218);
          }

          if (_NRLogIsLevelEnabled())
          {
            if (qword_1002291E8 != -1)
            {
              dispatch_once(&qword_1002291E8, &stru_1001FC218);
            }

            _NRLogWithArgs(qword_1002291E0, 0, "%s%.30s:%-4d %@: Peripheral already connected", "", "[NRDevicePairingManagerContext connectToPairingCandidateUsingPairingInfo:]_block_invoke", 1483, v18);
          }
        }

        else if ([v15 state] != 1)
        {
          if (qword_1002291E8 != -1)
          {
            dispatch_once(&qword_1002291E8, &stru_1001FC218);
          }

          if (_NRLogIsLevelEnabled())
          {
            if (qword_1002291E8 != -1)
            {
              dispatch_once(&qword_1002291E8, &stru_1001FC218);
            }

            _NRLogWithArgs(qword_1002291E0, 0, "%s%.30s:%-4d %@: Connecting to peripheral", "", "[NRDevicePairingManagerContext connectToPairingCandidateUsingPairingInfo:]_block_invoke", 1485, v18);
          }

          v25[0] = v12;
          v24[0] = CBConnectPeripheralOptionTemporaryIdentityAddress;
          v24[1] = CBConnectPeripheralOptionTemporaryIRKValue;
          v20 = v6[1];
          v25[1] = v20;
          v21 = [NSDictionary dictionaryWithObjects:v25 forKeys:v24 count:2];

          [WeakRetained[11] connectPeripheral:v15 options:v21];
        }

        v9 = v22;
      }

      else
      {
        if (qword_1002291E8 != -1)
        {
          dispatch_once(&qword_1002291E8, &stru_1001FC218);
        }

        if (_NRLogIsLevelEnabled())
        {
          if (qword_1002291E8 != -1)
          {
            dispatch_once(&qword_1002291E8, &stru_1001FC218);
          }

          _NRLogWithArgs(qword_1002291E0, 16, "%s%.30s:%-4d %@: Failed to retrieve or create peripheral for %@ migration with addr: %@", "", "[NRDevicePairingManagerContext connectToPairingCandidateUsingPairingInfo:]_block_invoke", 1492, WeakRetained, v5, v9);
        }
      }
    }

    else
    {
      if (qword_1002291E8 != -1)
      {
        dispatch_once(&qword_1002291E8, &stru_1001FC218);
      }

      if (_NRLogIsLevelEnabled())
      {
        if (qword_1002291E8 != -1)
        {
          dispatch_once(&qword_1002291E8, &stru_1001FC218);
        }

        _NRLogWithArgs(qword_1002291E0, 16, "%s%.30s:%-4d %@: Failed to get pairing info for %@ migration", "", "[NRDevicePairingManagerContext connectToPairingCandidateUsingPairingInfo:]_block_invoke", 1495, WeakRetained, v5);
      }
    }
  }

  else
  {
    if (qword_1002291E8 != -1)
    {
      dispatch_once(&qword_1002291E8, &stru_1001FC218);
    }

    if (_NRLogIsLevelEnabled())
    {
      if (qword_1002291E8 != -1)
      {
        dispatch_once(&qword_1002291E8, &stru_1001FC218);
      }

      _NRLogWithArgs(qword_1002291E0, 16, "%s%.30s:%-4d Invalid pairingManager for %@ migration", "", "[NRDevicePairingManagerContext connectToPairingCandidateUsingPairingInfo:]_block_invoke", 1447, v5);
    }
  }
}

id *sub_10012E4CC(id *a1, void *a2, void *a3, void *a4)
{
  v8 = a2;
  v9 = a3;
  v10 = a4;
  if (a1)
  {
    v20.receiver = a1;
    v20.super_class = NRDevicePairingCandidateContext;
    v11 = objc_msgSendSuper2(&v20, "init");
    if (!v11)
    {
      v13 = sub_100123258();
      IsLevelEnabled = _NRLogIsLevelEnabled();

      if (IsLevelEnabled)
      {
        v15 = sub_100123258();
        _NRLogWithArgs(v15, 16, "%s%.30s:%-4d ABORTING: [super init] failed", "", "[NRDevicePairingCandidateContext initWithCandidateInfo:queue:pairingManager:]", 1868);
      }

      v16 = _os_log_pack_size();
      v17 = __error();
      v18 = _os_log_pack_fill(&v19 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0), v16, *v17, &_mh_execute_header, "%{public}s [super init] failed");
      *v18 = 136446210;
      *(v18 + 4) = "[NRDevicePairingCandidateContext initWithCandidateInfo:queue:pairingManager:]";
      sub_100123258();
      _NRLogAbortWithPack();
    }

    a1 = v11;
    objc_storeWeak(v11 + 2, v10);
    objc_storeStrong(a1 + 3, a3);
    objc_storeStrong(a1 + 4, a2);
  }

  return a1;
}

void sub_10012E66C(uint64_t a1, void *a2)
{
  v3 = a2;
  v8 = v3;
  if (v3)
  {
    v4 = [v3[4] uuid];
    [*(a1 + 40) setObject:v8 forKeyedSubscript:v4];
    v5 = [v8[4] cbUUID];
    if (v5)
    {
      [*(a1 + 48) setObject:v4 forKeyedSubscript:v5];
    }

    goto LABEL_5;
  }

  v6 = sub_100123258();
  IsLevelEnabled = _NRLogIsLevelEnabled();

  if (IsLevelEnabled)
  {
    v4 = sub_100123258();
    _NRLogWithArgs(v4, 17, "%s called with null pairingCandidate", "[NRDevicePairingManagerContext addPairingCandidate:]");
LABEL_5:
  }
}

void sub_10012FDA8(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  if (WeakRetained)
  {
    v3 = WeakRetained[7];
    v4 = *(a1 + 32);
    v9 = WeakRetained;
    if (v4)
    {
      v4 = v4[4];
    }

    v5 = v4;
    v6 = v3;
    v7 = [v5 nrDeviceIdentifier];
    [v6 removeObject:v7];

    v8 = [v9[4] pairingCriteria];
    LODWORD(v6) = [v8 migrationPairing];

    if (v6 && [v9[7] count])
    {
      sub_1001242E0(*(a1 + 32), 1);
    }

    else
    {
      sub_10012FE90(v9);
    }

    WeakRetained = v9;
  }
}

void sub_10012FE90(uint64_t a1)
{
  v2 = *(a1 + 112);
  if (v2)
  {
    [v2 setDelegate:0];
    v3 = *(a1 + 112);
    *(a1 + 112) = 0;
  }

  v22 = 0u;
  v23 = 0u;
  v20 = 0u;
  v21 = 0u;
  v4 = *(a1 + 40);
  v5 = [v4 countByEnumeratingWithState:&v20 objects:v24 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v21;
    do
    {
      v8 = 0;
      do
      {
        if (*v21 != v7)
        {
          objc_enumerationMutation(v4);
        }

        v9 = sub_100125108(a1, *(*(&v20 + 1) + 8 * v8));
        sub_10012357C(v9);
        sub_1001242E0(v9, 1);

        v8 = v8 + 1;
      }

      while (v6 != v8);
      v6 = [v4 countByEnumeratingWithState:&v20 objects:v24 count:16];
    }

    while (v6);
  }

  v10 = *(a1 + 104);
  if (v10)
  {
    [v10 setDelegate:{0, v20}];
    v11 = *(a1 + 104);
    *(a1 + 104) = 0;
  }

  v12 = *(a1 + 88);
  if (v12)
  {
    [v12 setDelegate:0];
    v13 = *(a1 + 88);
    *(a1 + 88) = 0;
  }

  v14 = *(a1 + 96);
  if (v14)
  {
    [v14 setDelegate:0];
    v15 = *(a1 + 96);
    *(a1 + 96) = 0;
  }

  objc_opt_self();
  objc_opt_self();
  if (qword_1002291D8)
  {
    v16 = qword_1002291D8;
  }

  else
  {
    v17 = objc_alloc_init(NRDevicePairingDirector);
    v18 = qword_1002291D8;
    qword_1002291D8 = v17;

    v16 = qword_1002291D8;
    if (!v16)
    {
      goto LABEL_21;
    }
  }

  WeakRetained = objc_loadWeakRetained(v16 + 3);

  if (WeakRetained == a1)
  {
    objc_storeWeak(v16 + 3, 0);
  }

LABEL_21:
}

void sub_100130704(uint64_t a1)
{
  if (a1)
  {
    v16 = 0u;
    v17 = 0u;
    v14 = 0u;
    v15 = 0u;
    v2 = *(a1 + 40);
    v3 = [v2 countByEnumeratingWithState:&v14 objects:v18 count:16];
    if (v3)
    {
      v4 = v3;
      v5 = *v15;
      do
      {
        v6 = 0;
        do
        {
          if (*v15 != v5)
          {
            objc_enumerationMutation(v2);
          }

          v7 = sub_100125108(a1, *(*(&v14 + 1) + 8 * v6));
          sub_1001234B8(v7);

          v6 = v6 + 1;
        }

        while (v4 != v6);
        v4 = [v2 countByEnumeratingWithState:&v14 objects:v18 count:16];
      }

      while (v4);
    }

    [*(a1 + 40) removeAllObjects];
    [*(a1 + 48) removeAllObjects];
    v8 = *(a1 + 136);
    if (v8)
    {
      dispatch_source_cancel(v8);
      v9 = *(a1 + 136);
      *(a1 + 136) = 0;
    }

    v10 = *(a1 + 80);
    if (v10)
    {
      [v10 invalidate];
      v11 = *(a1 + 80);
      *(a1 + 80) = 0;
    }

    v12 = *(a1 + 120);
    if (v12)
    {
      if (*(v12 + 15) == 1)
      {
        sub_10014F1DC(v12);
        v13 = *(a1 + 120);
        *(a1 + 120) = 0;
      }
    }

    sub_100130894(a1);
    sub_10012FE90(a1);
  }
}

void sub_100130894(uint64_t a1)
{
  v2 = *(a1 + 128);
  if (v2)
  {
    dispatch_source_cancel(v2);
    v3 = *(a1 + 128);
    *(a1 + 128) = 0;
  }

  v4 = *(a1 + 72);
  if (v4)
  {
    [v4 invalidate];
    v5 = *(a1 + 72);
    *(a1 + 72) = 0;
  }

  v6 = *(a1 + 120);
  if (v6 && *(v6 + 16) == 1)
  {
    sub_10014F1DC(v6);
    v7 = *(a1 + 120);
    *(a1 + 120) = 0;
  }

  v8 = [*(a1 + 32) pairingCriteria];
  v9 = [v8 psm];

  if (v9)
  {
    objc_opt_self();
    if (qword_1002290C0 != -1)
    {
      dispatch_once(&qword_1002290C0, &stru_1001FB2B0);
    }

    v10 = qword_1002290B8;
    v11 = v10;
    if (v10)
    {
      v12 = *(v10 + 5);
    }

    else
    {
      v12 = 0;
    }

    v13 = v12;
    v14 = [*(a1 + 32) pairingCriteria];
    v15 = [v14 psm];
    if (v13)
    {
      v16 = v15;
      v17 = v13[22];
      if ([v17 count])
      {
        v18 = v13[22];
        v19 = [NSNumber numberWithUnsignedShort:v16];
        v20 = [v18 objectForKeyedSubscript:v19];

        if (v20)
        {
          v21 = v13[22];
          v22 = [NSNumber numberWithUnsignedShort:v16];
          [v21 setObject:0 forKeyedSubscript:v22];

          if ([v13[28] count])
          {
            v23 = v13[28];
            v24 = [NSNumber numberWithUnsignedShort:v16];
            [v23 setObject:0 forKeyedSubscript:v24];
          }

          if ([v13[27] count])
          {
            v25 = v13[27];
            v26 = [NSNumber numberWithUnsignedShort:v16];
            [v25 setObject:0 forKeyedSubscript:v26];
          }

          if (qword_100228F70 != -1)
          {
            dispatch_once(&qword_100228F70, &stru_1001FA8E0);
          }

          if (_NRLogIsLevelEnabled())
          {
            if (qword_100228F70 != -1)
            {
              dispatch_once(&qword_100228F70, &stru_1001FA8E0);
            }

            v27 = v13[22];
            v28 = qword_100228F68;
            _NRLogWithArgs(v28, 0, "%s%.30s:%-4d remaining L2CAP PSMs to monitor %@", "", "[NRLinkManagerBluetooth stopMonitoringL2CAPChannelConnectionsForPSM:]", 2268, v27);
          }

          sub_1000315B8(v13);
        }
      }

      else
      {
      }
    }
  }

  v29 = [*(a1 + 32) pairingCriteria];
  v30 = [v29 migrationPairing];

  if (v30)
  {
    v31 = *(a1 + 104);
    if (v31)
    {
      [v31 unregisterAllEndpoints];
      [*(a1 + 104) setDelegate:0];
      v32 = *(a1 + 104);
      *(a1 + 104) = 0;
    }

    v33 = *(a1 + 88);
    if (v33)
    {
      [v33 setDelegate:0];
      v34 = *(a1 + 88);
      *(a1 + 88) = 0;
    }
  }
}

void *sub_100130C70(void *a1, void *a2)
{
  v4 = a2;
  if (a1)
  {
    v16.receiver = a1;
    v16.super_class = NRDevicePairingManagerConnection;
    v5 = objc_msgSendSuper2(&v16, "init");
    if (!v5)
    {
      v9 = sub_100123258();
      IsLevelEnabled = _NRLogIsLevelEnabled();

      if (IsLevelEnabled)
      {
        v11 = sub_100123258();
        _NRLogWithArgs(v11, 16, "%s%.30s:%-4d ABORTING: [super init] failed", "", "[NRDevicePairingManagerConnection initWithConnection:]", 356);
      }

      v12 = _os_log_pack_size();
      v13 = __error();
      v14 = _os_log_pack_fill(&v15 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0), v12, *v13, &_mh_execute_header, "%{public}s [super init] failed");
      *v14 = 136446210;
      *(v14 + 4) = "[NRDevicePairingManagerConnection initWithConnection:]";
      sub_100123258();
      _NRLogAbortWithPack();
    }

    a1 = v5;
    objc_storeStrong(v5 + 1, a2);
    v6 = objc_alloc_init(NSMutableDictionary);
    v7 = a1[2];
    a1[2] = v6;
  }

  return a1;
}

id *sub_100130DE8(id *a1, void *a2, void *a3, void *a4)
{
  v8 = a2;
  v9 = a3;
  v10 = a4;
  if (a1)
  {
    v32.receiver = a1;
    v32.super_class = NRDevicePairingManagerContext;
    v11 = objc_msgSendSuper2(&v32, "init");
    if (!v11)
    {
      v25 = sub_100123258();
      IsLevelEnabled = _NRLogIsLevelEnabled();

      if (IsLevelEnabled)
      {
        v27 = sub_100123258();
        _NRLogWithArgs(v27, 16, "%s%.30s:%-4d ABORTING: [super init] failed", "", "[NRDevicePairingManagerContext initWithInfo:queue:managerConnection:]", 384);
      }

      v28 = _os_log_pack_size();
      v29 = __error();
      v30 = _os_log_pack_fill(&v31 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0), v28, *v29, &_mh_execute_header, "%{public}s [super init] failed");
      *v30 = 136446210;
      *(v30 + 4) = "[NRDevicePairingManagerContext initWithInfo:queue:managerConnection:]";
      sub_100123258();
      _NRLogAbortWithPack();
    }

    a1 = v11;
    objc_storeWeak(v11 + 2, v10);
    objc_storeStrong(a1 + 3, a3);
    objc_storeStrong(a1 + 4, a2);
    v12 = [v8 pairingCriteria];
    v13 = [v12 nrDeviceIdentifiers];
    v14 = [v13 count];

    if (v14)
    {
      v15 = [NSMutableSet alloc];
      v16 = [v8 pairingCriteria];
      v17 = [v16 nrDeviceIdentifiers];
      v18 = [v15 initWithArray:v17];
      v19 = a1[7];
      a1[7] = v18;
    }

    v20 = objc_alloc_init(NSMutableDictionary);
    v21 = a1[5];
    a1[5] = v20;

    v22 = objc_alloc_init(NSMutableDictionary);
    v23 = a1[6];
    a1[6] = v22;
  }

  return a1;
}

void sub_100131038(uint64_t a1, void *a2)
{
  v3 = a2;
  v11 = v3;
  if (v3)
  {
    v4 = [v3[4] cbUUID];
    if (v4)
    {
      [*(a1 + 48) setObject:0 forKeyedSubscript:v4];
    }

    v5 = *(a1 + 40);
    v6 = v11[4];
    v7 = v5;
    v8 = [v6 uuid];
    [v7 setObject:0 forKeyedSubscript:v8];

    sub_1001234B8(v11);
    goto LABEL_5;
  }

  v9 = sub_100123258();
  IsLevelEnabled = _NRLogIsLevelEnabled();

  if (IsLevelEnabled)
  {
    v4 = sub_100123258();
    _NRLogWithArgs(v4, 17, "%s called with null pairingCandidate", "[NRDevicePairingManagerContext removePairingCandidate:]");
LABEL_5:
  }
}

void sub_100131138(void **a1, void *a2)
{
  v4 = a2;
  v5 = &qword_100229000;
  if (qword_1002291E8 != -1)
  {
    dispatch_once(&qword_1002291E8, &stru_1001FC218);
  }

  v6 = &qword_100229000;
  if (_NRLogIsLevelEnabled())
  {
    if (qword_1002291E8 != -1)
    {
      dispatch_once(&qword_1002291E8, &stru_1001FC218);
    }

    _NRLogWithArgs(qword_1002291E0, 1, "%s%.30s:%-4d %@: Discovered device: %@", "", "[NRDevicePairingManagerContext handleDiscoveredDeviceEndpoint:]", 581, a1, v4);
  }

  v7 = [NSUUID alloc];
  if (!v4)
  {
    goto LABEL_50;
  }

  for (i = v4[2]; ; i = 0)
  {
    v9 = i;
    v10 = [v7 initWithUUIDString:v9];

    if (!v10)
    {
      break;
    }

    if (!v4 || (v11 = v4[13], (v12 = v11) == 0))
    {
      v24 = sub_100123258();
      IsLevelEnabled = _NRLogIsLevelEnabled();

      if (IsLevelEnabled)
      {
        v26 = sub_100123258();
        _NRLogWithArgs(v26, 1, "%s%.30s:%-4d %@: Ignoring device with no Watch setup data", "", "[NRDevicePairingManagerContext handleDiscoveredDeviceEndpoint:]", 592, a1);
      }

      v13 = 0;
      goto LABEL_24;
    }

    v13 = v12;
    if ([v12 length] <= 4)
    {
      v27 = sub_100123258();
      v28 = _NRLogIsLevelEnabled();

      if (v28)
      {
        v23 = sub_100123258();
        _NRLogWithArgs(v23, 1, "%s%.30s:%-4d %@: Ignoring device with too short Watch setup data (%zu < %zu)", "", "-[NRDevicePairingManagerContext handleDiscoveredDeviceEndpoint:]", 596, a1, [v13 length], 5);
        goto LABEL_42;
      }

      goto LABEL_24;
    }

    v39 = 0;
    v38 = 0;
    [v13 getBytes:&v38 length:5];
    if ((v38 & 0xE0) != 0x20)
    {
      if (v5[61] != -1)
      {
        dispatch_once(&qword_1002291E8, &stru_1001FC218);
      }

      if (_NRLogIsLevelEnabled())
      {
        if (v5[61] != -1)
        {
          dispatch_once(&qword_1002291E8, &stru_1001FC218);
        }

        _NRLogWithArgs(v6[60], 1, "%s%.30s:%-4d %@: Ignoring device with unrecognized header version %u", "", "[NRDevicePairingManagerContext handleDiscoveredDeviceEndpoint:]", 603, a1, v38 >> 5);
      }

      goto LABEL_24;
    }

    v14 = [a1[5] objectForKeyedSubscript:v10];
    v15 = v14;
    if (v14)
    {
      if ((*(v14 + 8) & 1) == 0)
      {
        goto LABEL_16;
      }

      goto LABEL_17;
    }

    v5 = [[NSData alloc] initWithBytes:&v38 + 1 length:4];
    v16 = [v13 length];
    if (v16 == 5)
    {
      v6 = 0;
    }

    else
    {
      v6 = [v13 subdataWithRange:{5, v16 - 5}];
    }

    v17 = [[NRDevicePairingCandidate alloc] initInternalWithUUID:v10];
    if (v17)
    {
      v18 = v17;
      [v17 setIdentifier:v5];
      [v18 setMetadata:v6];
      [v18 setCbUUID:v10];
      v19 = sub_10012E4CC([NRDevicePairingCandidateContext alloc], v18, a1[3], a1);
      if (v19)
      {
        v15 = v19;
        objc_storeStrong(v19 + 8, a2);
        objc_storeStrong((v15 + 72), v11);
        sub_10012E66C(a1, v15);

        if ((*(v15 + 8) & 1) == 0)
        {
LABEL_16:
          *(v15 + 8) = 1;
          sub_100126038(a1, *(v15 + 32));
        }

LABEL_17:

LABEL_24:
        goto LABEL_25;
      }

      v34 = sub_100123258();
      v35 = _NRLogIsLevelEnabled();

      if (v35)
      {
        v36 = sub_100123258();
        _NRLogWithArgs(v36, 16, "%s%.30s:%-4d ABORTING: Assertion Failed: (pairingCandidate) != ((void*)0)", "", "[NRDevicePairingManagerContext handleDiscoveredDeviceEndpoint:]", 627);
      }

      v4 = _os_log_pack_size();
      v7 = &v38 - ((__chkstk_darwin() + 15) & 0xFFFFFFFFFFFFFFF0);
      v37 = *__error();
      v33 = _os_log_pack_fill(v7, v4, v37, &_mh_execute_header, "%{public}s Assertion Failed: (pairingCandidate) != ((void*)0)");
    }

    else
    {
      v29 = sub_100123258();
      v30 = _NRLogIsLevelEnabled();

      if (v30)
      {
        v31 = sub_100123258();
        _NRLogWithArgs(v31, 16, "%s%.30s:%-4d ABORTING: Assertion Failed: (candidateInfo) != ((void*)0)", "", "[NRDevicePairingManagerContext handleDiscoveredDeviceEndpoint:]", 619);
      }

      v4 = _os_log_pack_size();
      v7 = &v38 - ((__chkstk_darwin() + 15) & 0xFFFFFFFFFFFFFFF0);
      v32 = *__error();
      v33 = _os_log_pack_fill(v7, v4, v32, &_mh_execute_header, "%{public}s Assertion Failed: (candidateInfo) != ((void*)0)");
    }

    *v33 = 136446210;
    *(v33 + 4) = "[NRDevicePairingManagerContext handleDiscoveredDeviceEndpoint:]";
    sub_100123258();
    _NRLogAbortWithPack();
LABEL_50:
    ;
  }

  v20 = sub_100123258();
  v21 = _NRLogIsLevelEnabled();

  if (v21)
  {
    v13 = sub_100123258();
    if (v4)
    {
      v22 = v4[2];
    }

    else
    {
      v22 = 0;
    }

    v23 = v22;
    _NRLogWithArgs(v13, 1, "%s%.30s:%-4d %@: Ignoring device with unrecognized identifier format %@", "", "[NRDevicePairingManagerContext handleDiscoveredDeviceEndpoint:]", 586, a1, v23);
LABEL_42:

    goto LABEL_24;
  }

LABEL_25:
}

void sub_100131774(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  if (WeakRetained && WeakRetained[16] == *(a1 + 32))
  {
    v12 = WeakRetained;
    if ([WeakRetained[5] count])
    {
      nr_continuous_time();
      NRConvertMachTimeToMicroseconds();
      v15 = 0u;
      v16 = 0u;
      v13 = 0u;
      v14 = 0u;
      v3 = [v12[5] allKeys];
      v4 = [v3 countByEnumeratingWithState:&v13 objects:v17 count:16];
      if (v4)
      {
        v5 = v4;
        v6 = *v14;
        do
        {
          for (i = 0; i != v5; i = i + 1)
          {
            if (*v14 != v6)
            {
              objc_enumerationMutation(v3);
            }

            v8 = *(*(&v13 + 1) + 8 * i);
            if (([v8 isEqual:v12[8]] & 1) == 0)
            {
              v9 = sub_100125108(v12, v8);
              if (v9)
              {
                NRDiffMicroTimeInSeconds();
                if (v10 >= 4.0)
                {
                  if (*(v9 + 8) == 1)
                  {
                    v11 = v10;
                    if (qword_1002291E8 != -1)
                    {
                      dispatch_once(&qword_1002291E8, &stru_1001FC218);
                    }

                    if (_NRLogIsLevelEnabled())
                    {
                      if (qword_1002291E8 != -1)
                      {
                        dispatch_once(&qword_1002291E8, &stru_1001FC218);
                      }

                      _NRLogWithArgs(qword_1002291E0, 0, "%s%.30s:%-4d %@: expired", "", "[NRDevicePairingManagerContext handleCandidateCleanupTimerExpiry]", 873, v9);
                    }

                    *(v9 + 8) = 0;
                    sub_1001236B4(v12, *(v9 + 32));
                    v10 = v11;
                  }

LABEL_25:
                  if (v10 >= 8.0)
                  {
                    if (qword_1002291E8 != -1)
                    {
                      dispatch_once(&qword_1002291E8, &stru_1001FC218);
                    }

                    if (_NRLogIsLevelEnabled())
                    {
                      if (qword_1002291E8 != -1)
                      {
                        dispatch_once(&qword_1002291E8, &stru_1001FC218);
                      }

                      _NRLogWithArgs(qword_1002291E0, 0, "%s%.30s:%-4d %@: tombstoned", "", "[NRDevicePairingManagerContext handleCandidateCleanupTimerExpiry]", 879, v9);
                    }

                    sub_100131038(v12, v9);
                  }
                }
              }

              else
              {
                NRDiffMicroTimeInSeconds();
                if (v10 >= 4.0)
                {
                  goto LABEL_25;
                }
              }

              continue;
            }
          }

          v5 = [v3 countByEnumeratingWithState:&v13 objects:v17 count:16];
        }

        while (v5);
      }
    }

    WeakRetained = v12;
  }
}

void sub_100131A7C(uint64_t a1, void *a2)
{
  v6 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v5 = WeakRetained;
  if (WeakRetained)
  {
    objc_storeStrong(WeakRetained + 18, a2);
  }
}

void sub_100131AE4(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  if (WeakRetained && WeakRetained[17] == *(a1 + 32) && WeakRetained[8])
  {
    v7 = WeakRetained;
    if (qword_1002291E8 != -1)
    {
      dispatch_once(&qword_1002291E8, &stru_1001FC218);
    }

    if (_NRLogIsLevelEnabled())
    {
      if (qword_1002291E8 != -1)
      {
        dispatch_once(&qword_1002291E8, &stru_1001FC218);
      }

      v3 = v7[5];
      v4 = v7[8];
      v5 = qword_1002291E0;
      v6 = [v3 objectForKeyedSubscript:v4];
      _NRLogWithArgs(v5, 16, "%s%.30s:%-4d %@: Pairing completion timer expired while pairing %@", "", "[NRDevicePairingManagerContext handlePairingCompletionTimerExpiry]", 1018, v7, v6);
    }

    sub_1001246D8(v7, 0xFFFFFFFFFFFFF444, 0xCuLL, 0);
    sub_100129A18(v7);
    WeakRetained = v7;
  }
}

void sub_100131C38(uint64_t a1, void *a2)
{
  WeakRetained = objc_loadWeakRetained((a1 + 16));
  if (WeakRetained)
  {
    if (qword_1002291E8 != -1)
    {
      dispatch_once(&qword_1002291E8, &stru_1001FC218);
    }

    if (_NRLogIsLevelEnabled())
    {
      if (qword_1002291E8 != -1)
      {
        dispatch_once(&qword_1002291E8, &stru_1001FC218);
      }

      _NRLogWithArgs(qword_1002291E0, 0, "%s%.30s:%-4d %@: Handling client request for auth method %zu", "", "[NRDevicePairingCandidateContext handleAuthMethodRequestFromClient:]", 2448, a1, a2);
    }

    if (*(a1 + 208))
    {
      if (qword_1002291E8 != -1)
      {
        dispatch_once(&qword_1002291E8, &stru_1001FC218);
      }

      if (_NRLogIsLevelEnabled())
      {
        if (qword_1002291E8 != -1)
        {
          dispatch_once(&qword_1002291E8, &stru_1001FC218);
        }

        _NRLogWithArgs(qword_1002291E0, 16, "%s%.30s:%-4d %@: Already has a pending authMethod request for method %zu", "", "[NRDevicePairingCandidateContext handleAuthMethodRequestFromClient:]", 2451, a1, *(a1 + 208));
      }

      v5 = xpc_dictionary_create(0, 0, 0);
      if (v5)
      {
        v6 = v5;
        v7 = [*(a1 + 32) uuid];
        v8 = nrXPCKeyTargetPairingCandidate;
        v9 = v6;
        v10 = v7;
        a2 = v10;
        if (v8)
        {
          if (v10)
          {
            *uuid = 0;
            v31 = 0;
            [v10 getUUIDBytes:uuid];
            xpc_dictionary_set_uuid(v9, v8, uuid);
LABEL_19:

            sub_1001246D8(WeakRetained, 0xFFFFFFFFFFFFF82BLL, 8uLL, v9);
            goto LABEL_23;
          }

          v27 = sub_100123258();
          IsLevelEnabled = _NRLogIsLevelEnabled();

          if (!IsLevelEnabled)
          {
            goto LABEL_19;
          }

          v26 = sub_100123258();
          _NRLogWithArgs(v26, 17, "%s called with null uuid");
LABEL_33:

          goto LABEL_19;
        }
      }

      else
      {
        v19 = sub_100123258();
        v20 = _NRLogIsLevelEnabled();

        if (v20)
        {
          v21 = sub_100123258();
          _NRLogWithArgs(v21, 16, "%s%.30s:%-4d ABORTING: xpc_dictionary_create(%p, %p, %u) failed", "", "nr_xpc_dictionary_create", 74, 0, 0, 0);
        }

        WeakRetained = _os_log_pack_size();
        v9 = &uuid[-((__chkstk_darwin() + 15) & 0xFFFFFFFFFFFFFFF0) - 8];
        v22 = __error();
        v23 = _os_log_pack_fill(v9, WeakRetained, *v22, &_mh_execute_header, "%{public}s xpc_dictionary_create(%p, %p, %u) failed");
        sub_1000F4320(v23, "nr_xpc_dictionary_create");
        sub_100123258();
        _NRLogAbortWithPack();
        __break(1u);
      }

      v24 = sub_100123258();
      v25 = _NRLogIsLevelEnabled();

      if (!v25)
      {
        goto LABEL_19;
      }

      v26 = sub_100123258();
      _NRLogWithArgs(v26, 17, "%s called with null key");
      goto LABEL_33;
    }

    *(a1 + 208) = a2;
    if (!*(a1 + 200))
    {
      v11 = dispatch_source_create(&_dispatch_source_type_timer, 0, 0, *(a1 + 24));
      v12 = dispatch_time(0x8000000000000000, 10000000000);
      dispatch_source_set_timer(v11, v12, 0xFFFFFFFFFFFFFFFFLL, 0x3B9ACA00uLL);
      objc_initWeak(&location, a1);
      *uuid = _NSConcreteStackBlock;
      v31 = 3221225472;
      v32 = sub_100132154;
      v33 = &unk_1001FD0D8;
      objc_copyWeak(&v35, &location);
      v13 = v11;
      v34 = v13;
      dispatch_source_set_event_handler(v13, uuid);
      dispatch_activate(v13);
      v14 = *(a1 + 200);
      *(a1 + 200) = v13;
      v15 = v13;

      objc_destroyWeak(&v35);
      objc_destroyWeak(&location);
    }

    sub_100126844(a1);
  }

  else
  {
    v16 = sub_100123258();
    v17 = _NRLogIsLevelEnabled();

    if (v17)
    {
      v18 = sub_100123258();
      _NRLogWithArgs(v18, 1, "%s%.30s:%-4d %@: Not handling client request for auth method %zu as pairing manager is gone", "", "[NRDevicePairingCandidateContext handleAuthMethodRequestFromClient:]", 2445, a1, a2);
    }
  }

LABEL_23:
}

void sub_100132154(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  if (WeakRetained && WeakRetained[25] == *(a1 + 32))
  {
    v3 = WeakRetained;
    sub_100124444(WeakRetained, 0xFFFFFFFFFFFFF444);
    WeakRetained = v3;
  }
}

void sub_1001321B8(uint64_t a1, void *a2)
{
  v8 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  v4 = WeakRetained;
  if (WeakRetained)
  {
    v5 = WeakRetained[33];
  }

  else
  {
    v5 = 0;
  }

  if (v5 == *(a1 + 32))
  {
    v6 = [NSMutableData _newZeroingDataWithBytes:0 length:0];
    [v6 appendData:v8];
    if (v4)
    {
      [v6 appendData:*(v4 + 9)];
      objc_storeStrong(v4 + 34, v6);
      v7 = *(v4 + 33);
      *(v4 + 33) = 0;
    }

    else
    {
      [v6 appendData:0];
    }
  }
}

void sub_100132284(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 64));

  if (WeakRetained)
  {
    v3 = *(a1 + 32);
    v4 = *(a1 + 40);
    if (qword_1002291E8 != -1)
    {
      dispatch_once(&qword_1002291E8, &stru_1001FC218);
    }

    if (_NRLogIsLevelEnabled())
    {
      if (qword_1002291E8 != -1)
      {
        dispatch_once(&qword_1002291E8, &stru_1001FC218);
      }

      _NRLogWithArgs(qword_1002291E0, 1, "%s%.30s:%-4d Starting PBKDF2", "", "NRDevicePairingGenerateSaltedPIN_block_invoke", 104);
    }

    memset(v14, 0, sizeof(v14));
    ccsha256_di();
    [v3 length];
    [v3 bytes];
    [v4 length];
    [v4 bytes];
    v5 = ccpbkdf2_hmac();
    if (qword_1002291E8 != -1)
    {
      dispatch_once(&qword_1002291E8, &stru_1001FC218);
    }

    if (_NRLogIsLevelEnabled())
    {
      if (qword_1002291E8 != -1)
      {
        dispatch_once(&qword_1002291E8, &stru_1001FC218);
      }

      _NRLogWithArgs(qword_1002291E0, 1, "%s%.30s:%-4d Finished running PBKDF2, res %d", "", "NRDevicePairingGenerateSaltedPIN_block_invoke", 112, v5);
    }

    v6 = objc_loadWeakRetained((a1 + 64));
    if (v6)
    {
      v7 = [NSData _newZeroingDataWithBytes:v14 length:32];
      cc_clear();
      block[0] = _NSConcreteStackBlock;
      block[1] = 3221225472;
      block[2] = sub_100132564;
      block[3] = &unk_1001FCE50;
      v8 = *(a1 + 48);
      v9 = *(a1 + 56);
      v12 = v7;
      v13 = v9;
      v10 = v7;
      dispatch_async(v8, block);
    }

    else
    {
      cc_clear();
    }
  }
}

void sub_100132578(id a1)
{
  v1 = _NRCopySerialQueueAttr();
  v2 = dispatch_queue_attr_make_with_qos_class(v1, QOS_CLASS_USER_INITIATED, 0);

  if (!v2)
  {
    v7 = sub_100123258();
    IsLevelEnabled = _NRLogIsLevelEnabled();

    if (IsLevelEnabled)
    {
      v9 = sub_100123258();
      _NRLogWithArgs(v9, 16, "%s%.30s:%-4d ABORTING: dispatch_queue_attr_make_with_qos_class(%u) failed", "", "nr_dispatch_queue_create_with_qos", 208, 25);
    }

    v3 = _os_log_pack_size();
    v10 = &v20 - ((__chkstk_darwin() + 15) & 0xFFFFFFFFFFFFFFF0);
    v11 = __error();
    v12 = _os_log_pack_fill(v10, v3, *v11, &_mh_execute_header, "%{public}s dispatch_queue_attr_make_with_qos_class(%u) failed");
    *v12 = 136446466;
    *(v12 + 4) = "nr_dispatch_queue_create_with_qos";
    *(v12 + 12) = 1024;
    *(v12 + 14) = 25;
    sub_100123258();
    _NRLogAbortWithPack();
LABEL_9:
    v13 = sub_100123258();
    v14 = _NRLogIsLevelEnabled();

    if (v14)
    {
      v15 = sub_100123258();
      _NRLogWithArgs(v15, 16, "%s%.30s:%-4d ABORTING: dispatch_queue_create(%s) failed", "", "nr_dispatch_queue_create_with_qos", 212, v3);
    }

    v16 = _os_log_pack_size();
    v17 = &v20 - ((__chkstk_darwin() + 15) & 0xFFFFFFFFFFFFFFF0);
    v18 = __error();
    v19 = _os_log_pack_fill(v17, v16, *v18, &_mh_execute_header, "%{public}s dispatch_queue_create(%s) failed");
    *v19 = 136446466;
    *(v19 + 4) = "nr_dispatch_queue_create_with_qos";
    *(v19 + 12) = 2080;
    *(v19 + 14) = v3;
    sub_100123258();
    _NRLogAbortWithPack();
  }

  v3 = "terminusd.Pairing.Crypto";
  v4 = dispatch_queue_create("terminusd.Pairing.Crypto", v2);
  if (!v4)
  {
    goto LABEL_9;
  }

  v5 = v4;

  v6 = qword_1002291F8;
  qword_1002291F8 = v5;
}

void sub_100132800(uint64_t a1, int64_t a2, void *a3, void *a4)
{
  v6 = a3;
  v7 = a4;
  objc_opt_self();
  v8 = v6;
  if (!v8)
  {
    v11 = sub_100123258();
    IsLevelEnabled = _NRLogIsLevelEnabled();

    if (IsLevelEnabled)
    {
      v13 = sub_100123258();
      _NRLogWithArgs(v13, 16, "%s%.30s:%-4d ABORTING: nr_xpc_dictionary_create_reply called with NULL original", "", "nr_xpc_dictionary_create_reply", 88);
    }

    v14 = _os_log_pack_size();
    v15 = &v25 - ((__chkstk_darwin() + 15) & 0xFFFFFFFFFFFFFFF0);
    v16 = __error();
    v17 = _os_log_pack_fill(v15, v14, *v16, &_mh_execute_header, "%{public}s nr_xpc_dictionary_create_reply called with NULL original");
    *v17 = 136446210;
    *(v17 + 4) = "nr_xpc_dictionary_create_reply";
LABEL_12:
    sub_100123258();
    _NRLogAbortWithPack();
  }

  v25 = v8;
  reply = xpc_dictionary_create_reply(v8);
  if (!reply)
  {
    v18 = sub_100123258();
    v19 = _NRLogIsLevelEnabled();

    if (v19)
    {
      v20 = sub_100123258();
      _NRLogWithArgs(v20, 16, "%s%.30s:%-4d ABORTING: xpc_dictionary_create_reply failed", "", "nr_xpc_dictionary_create_reply", 92);
    }

    v21 = _os_log_pack_size();
    v22 = &v25 - ((__chkstk_darwin() + 15) & 0xFFFFFFFFFFFFFFF0);
    v23 = __error();
    v24 = _os_log_pack_fill(v22, v21, *v23, &_mh_execute_header, "%{public}s xpc_dictionary_create_reply failed");
    *v24 = 136446210;
    *(v24 + 4) = "nr_xpc_dictionary_create_reply";
    goto LABEL_12;
  }

  v10 = reply;

  xpc_dictionary_set_int64(v10, nrXPCKeyResult, a2);
  xpc_connection_send_message(v7, v10);
}

void sub_100132A8C(uint64_t a1, void *a2, void *a3)
{
  xdict = a2;
  v6 = a3;
  if (a1)
  {
    v165 = v6;
    v167 = [*(a1 + 16) objectForKeyedSubscript:v6];
    if (!v167)
    {
      if (qword_1002291E8 != -1)
      {
        dispatch_once(&qword_1002291E8, &stru_1001FC218);
      }

      if (_NRLogIsLevelEnabled())
      {
        if (qword_1002291E8 != -1)
        {
          dispatch_once(&qword_1002291E8, &stru_1001FC218);
        }

        _NRLogWithArgs(qword_1002291E0, 16, "%s%.30s:%-4d Unable to find connection entry for %@", "", "[NRDevicePairingDirector handleIncomingRequest:forConnection:]", 3905, v165);
      }

      goto LABEL_133;
    }

    v7 = xpc_dictionary_get_value(xdict, nrXPCKeyPairingManagerOperation);
    object = v7;
    v8 = v7;
    if (v7)
    {
      if (xpc_get_type(v7) == &_xpc_type_uint64)
      {
        value = xpc_uint64_get_value(v8);
        if (value <= 5)
        {
          if (value <= 2)
          {
            if (value != 1)
            {
              v10 = object;
              if (value == 2)
              {
                v11 = xdict;
                v12 = v167;
                v162 = v11;
                v13 = xpc_dictionary_get_value(v11, nrXPCKeyPairingManagers);
                xarray = v13;
                if (v13 && xpc_get_type(v13) == &_xpc_type_array)
                {
                  v180 = 0;
                  v181 = &v180;
                  v182 = 0x2020000000;
                  v183 = 0;
                  v174 = 0;
                  v175 = &v174;
                  v176 = 0x3032000000;
                  v177 = sub_10012CCDC;
                  v178 = sub_10012CCEC;
                  v179 = [[NSMutableSet alloc] initWithCapacity:xpc_array_get_count(xarray)];
                  applier[0] = _NSConcreteStackBlock;
                  applier[1] = 3221225472;
                  applier[2] = sub_1001395A0;
                  applier[3] = &unk_1001FC130;
                  applier[4] = &v180;
                  applier[5] = &v174;
                  xpc_array_apply(xarray, applier);
                  if ((v181[3] & 1) != 0 || ![v175[5] count])
                  {
                    v94 = sub_100123258();
                    IsLevelEnabled = _NRLogIsLevelEnabled();

                    if (IsLevelEnabled)
                    {
                      v96 = sub_100123258();
                      _NRLogWithArgs(v96, 16, "%s%.30s:%-4d Failed to get pairing manager UUIDs from message", "", "[NRDevicePairingDirector handleManagerUnregisterRequest:forConnection:]", 4098);
                    }

                    v28 = v12[1];
                    sub_100132800(NRDevicePairingDirector, -2005, v11, v28);
                  }

                  else
                  {
                    v171 = 0u;
                    v172 = 0u;
                    v169 = 0u;
                    v170 = 0u;
                    obj = v175[5];
                    v14 = [obj countByEnumeratingWithState:&v169 objects:length count:16];
                    if (v14)
                    {
                      v15 = *v170;
                      do
                      {
                        v16 = 0;
                        do
                        {
                          if (*v170 != v15)
                          {
                            objc_enumerationMutation(obj);
                          }

                          v17 = *(*(&v169 + 1) + 8 * v16);
                          v18 = v12[2];
                          v19 = [v18 objectForKeyedSubscript:v17];

                          if (v19)
                          {
                            if (qword_1002291E8 != -1)
                            {
                              dispatch_once(&qword_1002291E8, &stru_1001FC218);
                            }

                            v20 = qword_1002291E0;
                            v21 = _NRLogIsLevelEnabled();

                            if (v21)
                            {
                              if (qword_1002291E8 != -1)
                              {
                                dispatch_once(&qword_1002291E8, &stru_1001FC218);
                              }

                              v22 = qword_1002291E0;
                              _NRLogWithArgs(v22, 0, "%s%.30s:%-4d %@: Unregistered", "", "[NRDevicePairingDirector handleManagerUnregisterRequest:forConnection:]", 4112, v19);
                            }

                            sub_100129A18(v19);
                            sub_100130704(v19);
                            v23 = v12[2];
                            [v23 setObject:0 forKeyedSubscript:v17];
LABEL_26:

                            goto LABEL_27;
                          }

                          *(v181 + 24) = 1;
                          if (qword_1002291E8 != -1)
                          {
                            dispatch_once(&qword_1002291E8, &stru_1001FC218);
                          }

                          v24 = qword_1002291E0;
                          v25 = _NRLogIsLevelEnabled();

                          if (v25)
                          {
                            if (qword_1002291E8 != -1)
                            {
                              dispatch_once(&qword_1002291E8, &stru_1001FC218);
                            }

                            v23 = qword_1002291E0;
                            _NRLogWithArgs(v23, 16, "%s%.30s:%-4d Pairing manager %@ is not registered", "", "[NRDevicePairingDirector handleManagerUnregisterRequest:forConnection:]", 4109, v17);
                            goto LABEL_26;
                          }

LABEL_27:

                          v16 = v16 + 1;
                        }

                        while (v14 != v16);
                        v26 = [obj countByEnumeratingWithState:&v169 objects:length count:16];
                        v14 = v26;
                      }

                      while (v26);
                    }

                    v27 = *(v181 + 24);
                    v28 = v12[1];
                    if (v27)
                    {
                      v29 = -2005;
                    }

                    else
                    {
                      v29 = 0;
                    }

                    sub_100132800(NRDevicePairingDirector, v29, v162, v28);
                  }

                  _Block_object_dispose(&v174, 8);
                  _Block_object_dispose(&v180, 8);
                }

                else
                {
                  v91 = sub_100123258();
                  v92 = _NRLogIsLevelEnabled();

                  if (v92)
                  {
                    v93 = sub_100123258();
                    _NRLogWithArgs(v93, 16, "%s%.30s:%-4d Failed to get pairing manager UUID array from message", "", "[NRDevicePairingDirector handleManagerUnregisterRequest:forConnection:]", 4076);
                  }

                  sub_100132800(NRDevicePairingDirector, -2005, v162, v12[1]);
                }

                goto LABEL_131;
              }

LABEL_104:
              v71 = value;
              if (qword_1002291E8 != -1)
              {
                dispatch_once(&qword_1002291E8, &stru_1001FC218);
              }

              if (_NRLogIsLevelEnabled())
              {
                if (qword_1002291E8 != -1)
                {
                  dispatch_once(&qword_1002291E8, &stru_1001FC218);
                }

                _NRLogWithArgs(qword_1002291E0, 16, "%s%.30s:%-4d Received unexpected operation code %llu", "", "[NRDevicePairingDirector handleIncomingRequest:forConnection:]", 3966, v71);
              }

              sub_100132800(NRDevicePairingDirector, -2003, xdict, v167[1]);
              goto LABEL_132;
            }

            v48 = xdict;
            v49 = v167;
            v50 = objc_opt_class();
            v51 = v48;
            v52 = v51;
            if (v51)
            {
              v53 = nrXPCKeyPairingManagerInfo;
              if (nrXPCKeyPairingManagerInfo)
              {
                if (v50)
                {
                  length[0] = 0;
                  data = xpc_dictionary_get_data(v51, nrXPCKeyPairingManagerInfo, length);
                  if (data)
                  {
                    if (length[0])
                    {
                      v55 = [NSData alloc];
                      v56 = [v55 initWithBytesNoCopy:data length:length[0] freeWhenDone:0];
                      *&v169 = 0;
                      v57 = [NSKeyedUnarchiver unarchivedObjectOfClass:v50 fromData:v56 error:&v169];
                      v58 = v169;
                      if (v58 || !v57)
                      {
                        v145 = sub_100123258();
                        v146 = _NRLogIsLevelEnabled();

                        if (v146)
                        {
                          v147 = sub_100123258();
                          _NRLogWithArgs(v147, 17, "Failed to unarchive object of type %@: %@", v50, v58);
                        }

                        v59 = 0;
                      }

                      else
                      {
                        v59 = v57;
                      }

                      if (v59)
                      {
                        v60 = v49[2];
                        v61 = [v59 uuid];
                        v62 = [v60 objectForKeyedSubscript:v61];

                        if (v62)
                        {
                          v148 = sub_100123258();
                          v149 = _NRLogIsLevelEnabled();

                          if (v149)
                          {
                            v150 = sub_100123258();
                            _NRLogWithArgs(v150, 16, "%s%.30s:%-4d %@ is already registered", "", "[NRDevicePairingDirector handleManagerRegisterRequest:forConnection:]", 3989, v59);
                          }

                          sub_100132800(NRDevicePairingDirector, -2005, v52, v49[1]);

                          goto LABEL_130;
                        }

                        v63 = [v59 pairingCriteria];
                        v64 = v63;
                        if (!v63)
                        {
                          v151 = sub_100123258();
                          v152 = _NRLogIsLevelEnabled();

                          if (v152)
                          {
                            v153 = sub_100123258();
                            _NRLogWithArgs(v153, 16, "%s%.30s:%-4d %@: No criteria", "", "[NRDevicePairingDirector handleManagerRegisterRequest:forConnection:]", 3999, v59);
                          }

                          goto LABEL_239;
                        }

                        if ([v63 pairingTransport] != 1)
                        {
                          v154 = sub_100123258();
                          v155 = _NRLogIsLevelEnabled();

                          if (v155)
                          {
                            v156 = sub_100123258();
                            _NRLogWithArgs(v156, 16, "%s%.30s:%-4d %@: Unsupported transport %u", "", "-[NRDevicePairingDirector handleManagerRegisterRequest:forConnection:]", 4008, v59, [v64 pairingTransport]);
                          }

                          goto LABEL_239;
                        }

                        v65 = [v59 pairingCriteria];
                        if ([v65 deviceType] == 1)
                        {
                        }

                        else
                        {
                          v157 = [v59 pairingCriteria];
                          v158 = [v157 deviceType] == 3;

                          if (!v158)
                          {
                            if (qword_1002291E8 != -1)
                            {
                              dispatch_once(&qword_1002291E8, &stru_1001FC218);
                            }

                            if (_NRLogIsLevelEnabled())
                            {
                              if (qword_1002291E8 != -1)
                              {
                                dispatch_once(&qword_1002291E8, &stru_1001FC218);
                              }

                              v159 = qword_1002291E0;
                              _NRLogWithArgs(v159, 16, "%s%.30s:%-4d %@: Unsupported device type %zu", "", "-[NRDevicePairingDirector handleManagerRegisterRequest:forConnection:]", 4036, v59, [v64 deviceType]);
                            }

                            goto LABEL_239;
                          }
                        }

                        v66 = [v59 pairingCriteria];
                        if ([v66 psm])
                        {
                          v67 = [v59 pairingCriteria];
                          v68 = [v67 deviceType] == 3;

                          if (!v68)
                          {
                            if (qword_1002291E8 != -1)
                            {
                              dispatch_once(&qword_1002291E8, &stru_1001FC218);
                            }

                            if (_NRLogIsLevelEnabled())
                            {
                              if (qword_1002291E8 != -1)
                              {
                                dispatch_once(&qword_1002291E8, &stru_1001FC218);
                              }

                              v69 = qword_1002291E0;
                              v70 = [v59 pairingCriteria];
                              _NRLogWithArgs(v69, 16, "%s%.30s:%-4d %@: Unsupported PSM %u for device type %zu", "", "-[NRDevicePairingDirector handleManagerRegisterRequest:forConnection:]", 4046, v59, [v70 psm], objc_msgSend(v64, "deviceType"));
                            }

LABEL_239:
                            sub_100132800(NRDevicePairingDirector, -2005, v52, v49[1]);
LABEL_129:

LABEL_130:
                            goto LABEL_131;
                          }
                        }

                        else
                        {
                        }

                        v72 = [v59 pairingCriteria];
                        if ([v72 psm])
                        {
                        }

                        else
                        {
                          v73 = [v59 pairingCriteria];
                          v74 = [v73 deviceType] == 3;

                          if (v74)
                          {
                            if (qword_1002291E8 != -1)
                            {
                              dispatch_once(&qword_1002291E8, &stru_1001FC218);
                            }

                            if (_NRLogIsLevelEnabled())
                            {
                              if (qword_1002291E8 != -1)
                              {
                                dispatch_once(&qword_1002291E8, &stru_1001FC218);
                              }

                              v75 = qword_1002291E0;
                              _NRLogWithArgs(v75, 16, "%s%.30s:%-4d %@: Unspecified PSM for device type %zu", "", "-[NRDevicePairingDirector handleManagerRegisterRequest:forConnection:]", 4053, v59, [v64 deviceType]);
                            }

                            goto LABEL_239;
                          }
                        }

                        v76 = sub_100130DE8([NRDevicePairingManagerContext alloc], v59, *(a1 + 8), v49);
                        v77 = v49[2];
                        v78 = [v59 uuid];
                        [v77 setObject:v76 forKeyedSubscript:v78];

                        if (qword_1002291E8 != -1)
                        {
                          dispatch_once(&qword_1002291E8, &stru_1001FC218);
                        }

                        if (_NRLogIsLevelEnabled())
                        {
                          if (qword_1002291E8 != -1)
                          {
                            dispatch_once(&qword_1002291E8, &stru_1001FC218);
                          }

                          v79 = qword_1002291E0;
                          v80 = [v59 fullDescription];
                          _NRLogWithArgs(v79, 0, "%s%.30s:%-4d Registered %@", "", "[NRDevicePairingDirector handleManagerRegisterRequest:forConnection:]", 4065, v80);
                        }

                        sub_100132800(NRDevicePairingDirector, 0, v52, v49[1]);

                        goto LABEL_129;
                      }

LABEL_208:
                      v133 = sub_100123258();
                      v134 = _NRLogIsLevelEnabled();

                      if (v134)
                      {
                        v135 = sub_100123258();
                        _NRLogWithArgs(v135, 16, "%s%.30s:%-4d Failed to get NRDevicePairingManagerInfo from request", "", "[NRDevicePairingDirector handleManagerRegisterRequest:forConnection:]", 3981);
                      }

                      sub_100132800(NRDevicePairingDirector, -2005, v52, v49[1]);
                      goto LABEL_130;
                    }

                    v131 = sub_100123258();
                    v132 = _NRLogIsLevelEnabled();

                    if (v132)
                    {
                      v130 = sub_100123258();
                      _NRLogWithArgs(v130, 16, "%s%.30s:%-4d XPC data for key %s is empty", "", "nr_xpc_dictionary_get_nsobject", 170, v53);
                      goto LABEL_206;
                    }
                  }

                  else
                  {
                    v128 = sub_100123258();
                    v129 = _NRLogIsLevelEnabled();

                    if (v129)
                    {
                      v130 = sub_100123258();
                      _NRLogWithArgs(v130, 16, "%s%.30s:%-4d Failed to get XPC data for key %s", "", "nr_xpc_dictionary_get_nsobject", 167, v53);
LABEL_206:
                    }
                  }

                  goto LABEL_208;
                }

                v112 = sub_100123258();
                v113 = _NRLogIsLevelEnabled();

                if (v113)
                {
                  v99 = "%s called with null cls";
                  goto LABEL_182;
                }

LABEL_183:

                goto LABEL_208;
              }

              v106 = sub_100123258();
              v107 = _NRLogIsLevelEnabled();

              if ((v107 & 1) == 0)
              {
                goto LABEL_183;
              }

              v99 = "%s called with null key";
            }

            else
            {
              v97 = sub_100123258();
              v98 = _NRLogIsLevelEnabled();

              if ((v98 & 1) == 0)
              {
                goto LABEL_183;
              }

              v99 = "%s called with null dict";
            }

LABEL_182:
            v114 = sub_100123258();
            _NRLogWithArgs(v114, 17, v99, "nr_xpc_dictionary_get_nsobject");

            goto LABEL_183;
          }

          if (value != 3)
          {
            v10 = object;
            if (value != 4)
            {
              goto LABEL_104;
            }

            v30 = xdict;
            v31 = v167;
            v32 = v30;
            v33 = v32;
            if (v32)
            {
              if (nrXPCKeyPairingManager)
              {
                uuid = xpc_dictionary_get_uuid(v32, nrXPCKeyPairingManager);
                if (uuid)
                {
                  v35 = uuid;
                  if (!uuid_is_null(uuid))
                  {
                    v36 = [[NSUUID alloc] initWithUUIDBytes:v35];

                    if (v36)
                    {
                      v37 = [v31[2] objectForKeyedSubscript:v36];
                      v38 = v37;
                      if (v37)
                      {
                        v39 = *(v37 + 72);
                        v10 = object;
                        if (!v39)
                        {
                          v40 = *(v38 + 32);
                          v41 = [v40 pairingCriteria];
                          if (![v41 psm])
                          {
                            v81 = *(v38 + 120);
                            if (!v81 || (v82 = *(v38 + 120), (v3 = v82) == 0) || (v82[16] & 1) == 0)
                            {
                              v83 = [*(v38 + 32) pairingCriteria];
                              v84 = [v83 migrationPairing];

                              if (v84)
                              {
                                v85 = *(v38 + 88);
                                if (v81)
                                {
                                }

                                v10 = object;
                                if (v85)
                                {
                                  goto LABEL_64;
                                }
                              }

                              else
                              {
                                if (v81)
                                {
                                }

                                v10 = object;
                              }

                              if (qword_1002291E8 != -1)
                              {
                                dispatch_once(&qword_1002291E8, &stru_1001FC218);
                              }

                              if (_NRLogIsLevelEnabled())
                              {
                                if (qword_1002291E8 != -1)
                                {
                                  dispatch_once(&qword_1002291E8, &stru_1001FC218);
                                }

                                _NRLogWithArgs(qword_1002291E0, 16, "%s%.30s:%-4d %@: Discovery stop request received when discovery not started", "", "[NRDevicePairingDirector handleStopDiscoveryRequest:forConnection:]", 4422, v38);
                              }

                              v47 = -2005;
                              goto LABEL_76;
                            }
                          }

                          v39 = v40;
                          v10 = object;
                        }

LABEL_64:
                        sub_100130894(v38);
LABEL_75:
                        v47 = 0;
LABEL_76:
                        sub_100132800(NRDevicePairingDirector, v47, v33, v31[1]);

LABEL_77:
                        goto LABEL_132;
                      }

                      v136 = sub_100123258();
                      v137 = _NRLogIsLevelEnabled();

                      if (v137)
                      {
                        v138 = sub_100123258();
                        v139 = v138;
                        v160 = 4411;
                        v161 = v36;
                        v140 = "[NRDevicePairingDirector handleStopDiscoveryRequest:forConnection:]";
LABEL_215:
                        _NRLogWithArgs(v138, 16, "%s%.30s:%-4d %@ is not registered", "", v140, v160, v161);
LABEL_218:

                        goto LABEL_219;
                      }

                      goto LABEL_219;
                    }

LABEL_192:
                    v121 = sub_100123258();
                    v122 = _NRLogIsLevelEnabled();

                    if (v122)
                    {
                      v123 = sub_100123258();
                      _NRLogWithArgs(v123, 16, "%s%.30s:%-4d Received invalid pairingManager UUID", "", "[NRDevicePairingDirector handleStopDiscoveryRequest:forConnection:]", 4403);
LABEL_200:

                      goto LABEL_201;
                    }

                    goto LABEL_201;
                  }

                  v119 = sub_100123258();
                  v120 = _NRLogIsLevelEnabled();

                  if (v120)
                  {
                    v102 = sub_100123258();
                    _NRLogWithArgs(v102, 16, "%s%.30s:%-4d UUID is null for key %s");
                    goto LABEL_190;
                  }

LABEL_191:

                  goto LABEL_192;
                }

                v115 = sub_100123258();
                v116 = _NRLogIsLevelEnabled();

                if (!v116)
                {
                  goto LABEL_191;
                }

                v102 = sub_100123258();
                _NRLogWithArgs(v102, 16, "%s%.30s:%-4d Failed to get UUID for key %s");
              }

              else
              {
                v108 = sub_100123258();
                v109 = _NRLogIsLevelEnabled();

                if (!v109)
                {
                  goto LABEL_191;
                }

                v102 = sub_100123258();
                _NRLogWithArgs(v102, 17, "%s called with null key");
              }
            }

            else
            {
              v100 = sub_100123258();
              v101 = _NRLogIsLevelEnabled();

              if (!v101)
              {
                goto LABEL_191;
              }

              v102 = sub_100123258();
              _NRLogWithArgs(v102, 17, "%s called with null dict");
            }

LABEL_190:

            goto LABEL_191;
          }

          sub_10013456C(a1, xdict, v167);
LABEL_131:
          v10 = object;
          goto LABEL_132;
        }

        if (value <= 9)
        {
          if (value != 6)
          {
            v10 = object;
            if (value != 9)
            {
              goto LABEL_104;
            }

LABEL_132:

LABEL_133:
            v6 = v165;
            goto LABEL_134;
          }

          sub_100135F94(a1, xdict, v167);
          goto LABEL_131;
        }

        if (value == 10)
        {
          sub_100136854(a1, xdict, v167);
          goto LABEL_131;
        }

        v10 = object;
        if (value != 11)
        {
          goto LABEL_104;
        }

        v42 = xdict;
        v31 = v167;
        v43 = v42;
        v33 = v43;
        if (v43)
        {
          if (nrXPCKeyPairingManager)
          {
            v44 = xpc_dictionary_get_uuid(v43, nrXPCKeyPairingManager);
            if (v44)
            {
              v45 = v44;
              if (!uuid_is_null(v44))
              {
                v36 = [[NSUUID alloc] initWithUUIDBytes:v45];

                if (v36)
                {
                  v46 = [v31[2] objectForKeyedSubscript:v36];
                  v38 = v46;
                  if (v46)
                  {
                    v10 = object;
                    if (*(v46 + 64))
                    {
                      sub_100129A18(v46);
                      goto LABEL_75;
                    }

                    v143 = sub_100123258();
                    v144 = _NRLogIsLevelEnabled();

                    if (v144)
                    {
                      v139 = sub_100123258();
                      _NRLogWithArgs(v139, 16, "%s%.30s:%-4d %@: Pairing stop request received when pairing not started", "", "[NRDevicePairingDirector handleStopPairingRequest:forConnection:]", 4845, v38);
                      goto LABEL_218;
                    }
                  }

                  else
                  {
                    v141 = sub_100123258();
                    v142 = _NRLogIsLevelEnabled();

                    if (v142)
                    {
                      v138 = sub_100123258();
                      v139 = v138;
                      v160 = 4825;
                      v161 = v36;
                      v140 = "[NRDevicePairingDirector handleStopPairingRequest:forConnection:]";
                      goto LABEL_215;
                    }
                  }

LABEL_219:
                  v47 = -2005;
                  v10 = object;
                  goto LABEL_76;
                }

LABEL_198:
                v126 = sub_100123258();
                v127 = _NRLogIsLevelEnabled();

                if (v127)
                {
                  v123 = sub_100123258();
                  _NRLogWithArgs(v123, 16, "%s%.30s:%-4d Received invalid pairingManager UUID", "", "[NRDevicePairingDirector handleStopPairingRequest:forConnection:]", 4817);
                  goto LABEL_200;
                }

LABEL_201:
                sub_100132800(NRDevicePairingDirector, -2005, v33, v31[1]);
                goto LABEL_77;
              }

              v124 = sub_100123258();
              v125 = _NRLogIsLevelEnabled();

              if (v125)
              {
                v105 = sub_100123258();
                _NRLogWithArgs(v105, 16, "%s%.30s:%-4d UUID is null for key %s");
                goto LABEL_196;
              }

LABEL_197:

              goto LABEL_198;
            }

            v117 = sub_100123258();
            v118 = _NRLogIsLevelEnabled();

            if (!v118)
            {
              goto LABEL_197;
            }

            v105 = sub_100123258();
            _NRLogWithArgs(v105, 16, "%s%.30s:%-4d Failed to get UUID for key %s");
          }

          else
          {
            v110 = sub_100123258();
            v111 = _NRLogIsLevelEnabled();

            if (!v111)
            {
              goto LABEL_197;
            }

            v105 = sub_100123258();
            _NRLogWithArgs(v105, 17, "%s called with null key");
          }
        }

        else
        {
          v103 = sub_100123258();
          v104 = _NRLogIsLevelEnabled();

          if (!v104)
          {
            goto LABEL_197;
          }

          v105 = sub_100123258();
          _NRLogWithArgs(v105, 17, "%s called with null dict");
        }

LABEL_196:

        goto LABEL_197;
      }

      v89 = sub_100123258();
      v90 = _NRLogIsLevelEnabled();

      if (v90)
      {
        v88 = sub_100123258();
        _NRLogWithArgs(v88, 16, "%s%.30s:%-4d Received invalid operation code type");
        goto LABEL_160;
      }
    }

    else
    {
      v86 = sub_100123258();
      v87 = _NRLogIsLevelEnabled();

      if (v87)
      {
        v88 = sub_100123258();
        _NRLogWithArgs(v88, 16, "%s%.30s:%-4d Received request without operation code");
LABEL_160:
      }
    }

    sub_100134330(a1, v165);
    goto LABEL_131;
  }

LABEL_134:
}

void sub_1001342F0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, ...)
{
  va_start(va, a36);
  _Block_object_dispose(va, 8);
  _Block_object_dispose((v36 - 256), 8);
  _Unwind_Resume(a1);
}

void sub_100134330(uint64_t a1, void *a2)
{
  v3 = a2;
  if (a1)
  {
    v4 = [*(a1 + 16) objectForKeyedSubscript:v3];
    v5 = v4;
    if (v4)
    {
      v6 = *(v4 + 8);
      if (v6)
      {
        xpc_connection_cancel(v6);
        v7 = *(v5 + 8);
        *(v5 + 8) = 0;
      }

      v17 = 0u;
      v18 = 0u;
      v15 = 0u;
      v16 = 0u;
      v8 = *(v5 + 16);
      v9 = [v8 countByEnumeratingWithState:&v15 objects:v19 count:16];
      if (v9)
      {
        v10 = v9;
        v11 = *v16;
        do
        {
          for (i = 0; i != v10; i = i + 1)
          {
            if (*v16 != v11)
            {
              objc_enumerationMutation(v8);
            }

            v13 = [*(v5 + 16) objectForKeyedSubscript:*(*(&v15 + 1) + 8 * i)];
            sub_100129A18(v13);
            sub_100130704(v13);
          }

          v10 = [v8 countByEnumeratingWithState:&v15 objects:v19 count:16];
        }

        while (v10);
      }

      [*(v5 + 16) removeAllObjects];
      [*(a1 + 16) setObject:0 forKeyedSubscript:v3];
      if (![*(a1 + 16) count])
      {
        v14 = sub_100003490();
        dispatch_async(v14, &stru_1001FAE90);
      }
    }

    else
    {
      if (qword_1002291E8 != -1)
      {
        dispatch_once(&qword_1002291E8, &stru_1001FC218);
      }

      if (_NRLogIsLevelEnabled())
      {
        if (qword_1002291E8 != -1)
        {
          dispatch_once(&qword_1002291E8, &stru_1001FC218);
        }

        _NRLogWithArgs(qword_1002291E0, 16, "%s%.30s:%-4d Unable to find connection entry for %@", "", "[NRDevicePairingDirector invalidateDevicePairingConnection:]", 4887, v3);
      }
    }
  }
}

void sub_10013456C(uint64_t a1, void *a2, void *a3)
{
  v201 = a2;
  v5 = a3;
  if (qword_100229238 != -1)
  {
    dispatch_once(&qword_100229238, &stru_1001FC340);
  }

  v200 = v5;
  if (byte_100229230 == 1)
  {
    v6 = v201;
    v7 = v5;
    v8 = v6;
    v9 = v8;
    if (v8)
    {
      if (nrXPCKeyPairingManager)
      {
        uuid = xpc_dictionary_get_uuid(v8, nrXPCKeyPairingManager);
        if (uuid)
        {
          v11 = uuid;
          if (!uuid_is_null(uuid))
          {
            v12 = a1;
            v13 = [[NSUUID alloc] initWithUUIDBytes:v11];

            if (v13)
            {
              v198 = v7;
              v14 = [v7[2] objectForKeyedSubscript:v13];
              v15 = v14;
              if (!v14)
              {
                v154 = sub_100123258();
                IsLevelEnabled = _NRLogIsLevelEnabled();

                if (IsLevelEnabled)
                {
                  v156 = sub_100123258();
                  _NRLogWithArgs(v156, 16, "%s%.30s:%-4d Pairing manager %@ is not registered", "", "[NRDevicePairingDirector handleStartDiscoveryRequestVM:forConnection:]", 4144, v13);
                }

                v157 = v7[1];
                goto LABEL_177;
              }

              if (!*(v14 + 120))
              {
                v225 = 0u;
                v226 = 0u;
                v223 = 0u;
                v224 = 0u;
                v16 = *(v14 + 40);
                v17 = [v16 countByEnumeratingWithState:&v223 objects:v221 count:16];
                if (v17)
                {
                  v18 = *v224;
                  do
                  {
                    for (i = 0; i != v17; i = i + 1)
                    {
                      if (*v224 != v18)
                      {
                        objc_enumerationMutation(v16);
                      }

                      v20 = sub_100125108(v15, *(*(&v223 + 1) + 8 * i));
                      if (v20)
                      {
                        v20[8] = 0;
                      }
                    }

                    v17 = [v16 countByEnumeratingWithState:&v223 objects:v221 count:16];
                  }

                  while (v17);
                }

                v21 = [NRDiscoveryClient alloc];
                v22 = *(v12 + 8);
                v23 = sub_10014F018(&v21->super.isa, v22, 0);
                v24 = v15[15];
                v15[15] = v23;

                v25 = v15[15];
                if (v25)
                {
                  if ((v25[19] & 1) != 0 || (v25[22] = 1, (v25 = v15[15]) != 0))
                  {
                    v25[16] = 1;
                  }
                }

                objc_initWeak(&location, v15);
                v26 = v15[15];
                from[0] = _NSConcreteStackBlock;
                from[1] = 3221225472;
                from[2] = sub_1001392D0;
                from[3] = &unk_1001FC158;
                objc_copyWeak(&v218, &location);
                v27 = from;
                v28 = v27;
                if (v26 && (*(v26 + 19) & 1) == 0)
                {
                  v29 = objc_retainBlock(v27);
                  v30 = v26[9];
                  v26[9] = v29;
                }

                v31 = v15[15];
                v215[0] = _NSConcreteStackBlock;
                v215[1] = 3221225472;
                v215[2] = sub_100139334;
                v215[3] = &unk_1001FC158;
                objc_copyWeak(&v216, &location);
                v32 = v215;
                v33 = v32;
                if (v31 && (*(v31 + 19) & 1) == 0)
                {
                  v34 = objc_retainBlock(v32);
                  v35 = v31[10];
                  v31[10] = v34;
                }

                v36 = v15[15];
                v213[0] = _NSConcreteStackBlock;
                v213[1] = 3221225472;
                v213[2] = sub_10013953C;
                v213[3] = &unk_1001FC158;
                objc_copyWeak(&v214, &location);
                v37 = v213;
                v38 = v37;
                if (v36 && (*(v36 + 19) & 1) == 0)
                {
                  v39 = objc_retainBlock(v37);
                  v40 = v36[11];
                  v36[11] = v39;
                }

                if (qword_1002291E8 != -1)
                {
                  dispatch_once(&qword_1002291E8, &stru_1001FC218);
                }

                v41 = qword_1002291E0;
                v42 = _NRLogIsLevelEnabled();

                if (v42)
                {
                  if (qword_1002291E8 != -1)
                  {
                    dispatch_once(&qword_1002291E8, &stru_1001FC218);
                  }

                  v43 = qword_1002291E0;
                  v44 = v15[15];
                  v45 = v44;
                  if (v44)
                  {
                    v46 = v44[15];
                  }

                  else
                  {
                    v46 = 0;
                  }

                  v47 = v15[15];
                  v48 = v47;
                  if (v47)
                  {
                    v49 = v47[16];
                  }

                  else
                  {
                    v49 = 0;
                  }

                  _NRLogWithArgs(v43, 0, "%s%.30s:%-4d %@: Initiating discovery for devices (advertise:%d/browse:%d)", "", "[NRDevicePairingDirector handleStartDiscoveryRequestVM:forConnection:]", 4191, v15, v46, v49);
                }

                v50 = v15[15];
                sub_10014F958(v50, 255);

                v51 = v15[15];
                v52 = @"nr-modern-device-pairing-discovery";
                if (v51 && (*(v51 + 19) & 1) == 0)
                {
                  objc_storeStrong(v51 + 25, @"nr-modern-device-pairing-discovery");
                }

                v53 = v15[15];
                sub_100153210(v53);

                v54 = v198[1];
                sub_100132800(NRDevicePairingDirector, 0, v9, v54);

                objc_destroyWeak(&v214);
                objc_destroyWeak(&v216);
                objc_destroyWeak(&v218);
                objc_destroyWeak(&location);
                goto LABEL_47;
              }

              v161 = sub_100123258();
              v162 = _NRLogIsLevelEnabled();

              if (!v162)
              {
LABEL_176:
                v157 = v7[1];
LABEL_177:
                sub_100132800(NRDevicePairingDirector, -2005, v9, v157);
LABEL_47:

                v7 = v198;
LABEL_48:

LABEL_138:
                v128 = v200;
                goto LABEL_139;
              }

              v163 = sub_100123258();
              v164 = v15[15];
              v165 = v164;
              if (v164)
              {
                v166 = v164[16];
                v167 = v15[15];
                if (!v167)
                {
LABEL_175:
                  _NRLogWithArgs(v163, 16, "%s%.30s:%-4d %@: Start Discovery request received when discovery=%u or advertise=%u already in progress", "", "[NRDevicePairingDirector handleStartDiscoveryRequestVM:forConnection:]", 4153, v15, v166, v167);

                  goto LABEL_176;
                }
              }

              else
              {
                v166 = 0;
                v167 = v15[15];
                if (!v167)
                {
                  goto LABEL_175;
                }
              }

              v167 = v167[15];
              goto LABEL_175;
            }

LABEL_156:
            v146 = sub_100123258();
            v147 = _NRLogIsLevelEnabled();

            if (v147)
            {
              v148 = sub_100123258();
              _NRLogWithArgs(v148, 16, "%s%.30s:%-4d Received invalid pairingManager UUID", "", "[NRDevicePairingDirector handleStartDiscoveryRequestVM:forConnection:]", 4136);
            }

            sub_100132800(NRDevicePairingDirector, -2005, v9, v7[1]);
            goto LABEL_48;
          }

          v144 = sub_100123258();
          v145 = _NRLogIsLevelEnabled();

          if (v145)
          {
            v131 = sub_100123258();
            _NRLogWithArgs(v131, 16, "%s%.30s:%-4d UUID is null for key %s");
            goto LABEL_154;
          }

LABEL_155:

          goto LABEL_156;
        }

        v140 = sub_100123258();
        v141 = _NRLogIsLevelEnabled();

        if (!v141)
        {
          goto LABEL_155;
        }

        v131 = sub_100123258();
        _NRLogWithArgs(v131, 16, "%s%.30s:%-4d Failed to get UUID for key %s");
      }

      else
      {
        v136 = sub_100123258();
        v137 = _NRLogIsLevelEnabled();

        if (!v137)
        {
          goto LABEL_155;
        }

        v131 = sub_100123258();
        _NRLogWithArgs(v131, 17, "%s called with null key");
      }
    }

    else
    {
      v129 = sub_100123258();
      v130 = _NRLogIsLevelEnabled();

      if (!v130)
      {
        goto LABEL_155;
      }

      v131 = sub_100123258();
      _NRLogWithArgs(v131, 17, "%s called with null dict");
    }

LABEL_154:

    goto LABEL_155;
  }

  v55 = v201;
  v56 = v55;
  if (!v55)
  {
    v132 = v5;
    v133 = sub_100123258();
    v134 = _NRLogIsLevelEnabled();

    if (!v134)
    {
      goto LABEL_162;
    }

    v135 = sub_100123258();
    _NRLogWithArgs(v135, 17, "%s called with null dict");
LABEL_161:

    goto LABEL_162;
  }

  v57 = nrXPCKeyPairingManager;
  if (!nrXPCKeyPairingManager)
  {
    v132 = v5;
    v138 = sub_100123258();
    v139 = _NRLogIsLevelEnabled();

    if (!v139)
    {
      goto LABEL_162;
    }

    v135 = sub_100123258();
    _NRLogWithArgs(v135, 17, "%s called with null key");
    goto LABEL_161;
  }

  v58 = xpc_dictionary_get_uuid(v55, nrXPCKeyPairingManager);
  if (!v58)
  {
    v132 = v5;
    v142 = sub_100123258();
    v143 = _NRLogIsLevelEnabled();

    if (!v143)
    {
      goto LABEL_162;
    }

    v135 = sub_100123258();
    _NRLogWithArgs(v135, 16, "%s%.30s:%-4d Failed to get UUID for key %s");
    goto LABEL_161;
  }

  v59 = v58;
  if (uuid_is_null(v58))
  {
    v132 = v5;
    v149 = sub_100123258();
    v150 = _NRLogIsLevelEnabled();

    if (v150)
    {
      v135 = sub_100123258();
      _NRLogWithArgs(v135, 16, "%s%.30s:%-4d UUID is null for key %s");
      goto LABEL_161;
    }

LABEL_162:

    v5 = v132;
    goto LABEL_163;
  }

  v196 = a1;
  v60 = [[NSUUID alloc] initWithUUIDBytes:v59];

  if (v60)
  {
    v199 = v60;
    v61 = [v5[2] objectForKeyedSubscript:v60];
    v62 = v61;
    if (v61)
    {
      if (!*(v61 + 72))
      {
        if (!*(v61 + 80))
        {
          v211 = 0u;
          v212 = 0u;
          v209 = 0u;
          v210 = 0u;
          v63 = *(v61 + 40);
          v64 = [v63 countByEnumeratingWithState:&v209 objects:v220 count:16];
          if (v64)
          {
            v65 = *v210;
            do
            {
              for (j = 0; j != v64; j = j + 1)
              {
                if (*v210 != v65)
                {
                  objc_enumerationMutation(v63);
                }

                v67 = sub_100125108(v62, *(*(&v209 + 1) + 8 * j));
                if (v67)
                {
                  v67[8] = 0;
                }
              }

              v64 = [v63 countByEnumeratingWithState:&v209 objects:v220 count:16];
            }

            while (v64);
          }

          v68 = [*(v62 + 32) pairingCriteria];
          v69 = [v68 migrationPairing];

          if (v69)
          {
            if (qword_100229238 == -1)
            {
              if ((byte_100229230 & 1) == 0)
              {
                goto LABEL_69;
              }
            }

            else
            {
              dispatch_once(&qword_100229238, &stru_1001FC340);
              if ((byte_100229230 & 1) == 0)
              {
LABEL_69:
                if ((sub_100124F20(v62) & 1) == 0)
                {
                  if (qword_1002291E8 != -1)
                  {
                    dispatch_once(&qword_1002291E8, &stru_1001FC218);
                  }

                  if (_NRLogIsLevelEnabled())
                  {
                    if (qword_1002291E8 != -1)
                    {
                      dispatch_once(&qword_1002291E8, &stru_1001FC218);
                    }

                    v115 = qword_1002291E0;
                    WeakRetained = objc_loadWeakRetained((v196 + 24));
                    _NRLogWithArgs(v115, 16, "%s%.30s:%-4d %@ currently owns the BT connections", "", "[NRDevicePairingDirector handleStartDiscoveryRequest:forConnection:]", 4320, WeakRetained);
                  }

                  sub_100132800(NRDevicePairingDirector, -3001, v56, v200[1]);
                  goto LABEL_137;
                }
              }
            }

            sub_100132800(NRDevicePairingDirector, 0, v56, v200[1]);
LABEL_137:

            goto LABEL_138;
          }

          v70 = [*(v62 + 32) pairingCriteria];
          v71 = [v70 psm] == 0;

          if (v71)
          {
            v107 = objc_alloc_init(CBDiscovery);
            v108 = *(v62 + 72);
            *(v62 + 72) = v107;

            [v107 setDispatchQueue:*(v196 + 8)];
            [v107 addDiscoveryType:23];
            [v107 setDiscoveryFlags:0x282000000];
            v109 = [*(v62 + 32) pairingCriteria];
            v110 = [v109 rssi];
            v111 = v110 == 0;

            if (v111)
            {
              *(v62 + 8) = 0;
            }

            else
            {
              v112 = [*(v62 + 32) pairingCriteria];
              v113 = [v112 rssi];
              v114 = [v113 charValue];

              *(v62 + 8) = v114;
              [v107 setBleRSSIThresholdHint:v114];
            }

            objc_initWeak(v221, v62);
            v207[0] = _NSConcreteStackBlock;
            v207[1] = 3221225472;
            v207[2] = sub_1001380B0;
            v207[3] = &unk_1001FC978;
            objc_copyWeak(&v208, v221);
            [v107 setDeviceFoundHandler:v207];
            v205[0] = _NSConcreteStackBlock;
            v205[1] = 3221225472;
            v205[2] = sub_1001389F8;
            v205[3] = &unk_1001FC978;
            objc_copyWeak(&v206, v221);
            [v107 setDeviceLostHandler:v205];
            v202[0] = _NSConcreteStackBlock;
            v202[1] = 3221225472;
            v202[2] = sub_100138C54;
            v202[3] = &unk_1001FC1A8;
            objc_copyWeak(&v204, v221);
            v203 = v56;
            [v107 activateWithCompletion:v202];

            objc_destroyWeak(&v204);
            objc_destroyWeak(&v206);
            objc_destroyWeak(&v208);
            objc_destroyWeak(v221);

            goto LABEL_137;
          }

          v72 = v56;
          v194 = v200;
          v195 = v72;
          v73 = xpc_dictionary_get_uuid(v195, v57);
          v74 = v73;
          if (v73)
          {
            if (!uuid_is_null(v73))
            {
              v193 = [[NSUUID alloc] initWithUUIDBytes:v74];

              if (v193)
              {
                v75 = [v200[2] objectForKeyedSubscript:?];
                if (!v75)
                {
                  v180 = sub_100123258();
                  v181 = _NRLogIsLevelEnabled();

                  if (v181)
                  {
                    v182 = sub_100123258();
                    _NRLogWithArgs(v182, 16, "%s%.30s:%-4d Pairing manager %@ is not registered", "", "[NRDevicePairingDirector handleStartPSMBasedDiscoveryRequest:forConnection:]", 4218, v193);
                  }

                  sub_100132800(NRDevicePairingDirector, -2005, v195, v194[1]);
                  goto LABEL_135;
                }

                if (qword_1002291E8 != -1)
                {
                  dispatch_once(&qword_1002291E8, &stru_1001FC218);
                }

                if (_NRLogIsLevelEnabled())
                {
                  if (qword_1002291E8 != -1)
                  {
                    dispatch_once(&qword_1002291E8, &stru_1001FC218);
                  }

                  v76 = qword_1002291E0;
                  v77 = v75[4];
                  v78 = v76;
                  v79 = [v77 pairingCriteria];
                  _NRLogWithArgs(v78, 0, "%s%.30s:%-4d %@: monitoring devices connecting to PSM %u", "", "-[NRDevicePairingDirector handleStartPSMBasedDiscoveryRequest:forConnection:]", 4225, v75, [v79 psm]);
                }

                objc_initWeak(from, v75);
                objc_opt_self();
                if (qword_1002290C0 != -1)
                {
                  dispatch_once(&qword_1002290C0, &stru_1001FB2B0);
                }

                v80 = qword_1002290B8;
                v185 = v80;
                if (v80)
                {
                  v81 = *(v80 + 5);
                }

                else
                {
                  v81 = 0;
                }

                v82 = v81;
                v188 = v75[4];
                v192 = [v188 pairingCriteria];
                v83 = [v192 psm];
                v187 = v75[4];
                v191 = [v187 pairingCriteria];
                v84 = [v191 serviceUUID];
                v189 = v75[4];
                v85 = [v189 pairingCriteria];
                v183 = [v85 bluetoothRole];
                v186 = v85;
                v221[0] = _NSConcreteStackBlock;
                v221[1] = 3221225472;
                v221[2] = sub_100138F8C;
                v221[3] = &unk_1001FC180;
                objc_copyWeak(v222, from);
                v221[4] = v196;
                v197 = v84;
                newValue = v221;
                if (!v82 || (v86 = v82[22], +[NSNumber numberWithUnsignedShort:](NSNumber, "numberWithUnsignedShort:", v83), v87 = objc_claimAutoreleasedReturnValue(), [v86 objectForKeyedSubscript:v87], v88 = objc_claimAutoreleasedReturnValue(), v86, v88, v87, v88))
                {
LABEL_134:

                  v127 = v194[1];
                  sub_100132800(NRDevicePairingDirector, 0, v195, v127);

                  objc_destroyWeak(v222);
                  objc_destroyWeak(from);
LABEL_135:

LABEL_136:
                  goto LABEL_137;
                }

                v89 = objc_alloc_init(NRL2CAPMonitorRequest);
                v91 = v89;
                if (v89)
                {
                  v89->_psm = v83;
                  objc_setProperty_nonatomic_copy(v89, v90, newValue, 16);
                }

                v92 = v82[22];
                v93 = [NSNumber numberWithUnsignedShort:v83];
                [v92 setObject:v91 forKeyedSubscript:v93];

                if (qword_100228F70 != -1)
                {
                  dispatch_once(&qword_100228F70, &stru_1001FA8E0);
                }

                if (_NRLogIsLevelEnabled())
                {
                  if (qword_100228F70 != -1)
                  {
                    dispatch_once(&qword_100228F70, &stru_1001FA8E0);
                  }

                  v94 = v82[22];
                  v95 = qword_100228F68;
                  _NRLogWithArgs(v95, 0, "%s%.30s:%-4d monitoring PSMs %@", "", "[NRLinkManagerBluetooth monitorL2CAPChannelConnectionsForPSM:serviceUUID:bluetoothRole:updateBlock:]", 2284, v94);
                }

                if (v197 && v183 == 2)
                {
                  *&v223 = v197;
                  v96 = [NSArray arrayWithObjects:&v223 count:1];
                  v97 = v91;
                  v98 = v82[28];
                  v184 = v96;
                  if (!v98)
                  {
                    v99 = objc_alloc_init(NSMutableDictionary);
                    v100 = v82[28];
                    v82[28] = v99;
                  }

                  v101 = objc_alloc_init(NRBluetoothAdvertiseRequest);
                  v91 = v97;
                  v102 = sub_10003E4E0(v184);

                  if (v101)
                  {
                    objc_storeStrong(&v101->super._serviceUUIDs, v102);
                  }

                  v103 = v82[28];
                  v104 = [NSNumber numberWithUnsignedShort:v83];
                  [v103 setObject:v101 forKeyedSubscript:v104];

                  if (qword_100228F70 != -1)
                  {
                    dispatch_once(&qword_100228F70, &stru_1001FA8E0);
                  }

                  if (_NRLogIsLevelEnabled())
                  {
                    if (qword_100228F70 != -1)
                    {
                      dispatch_once(&qword_100228F70, &stru_1001FA8E0);
                    }

                    v105 = v82[28];
                    v106 = qword_100228F68;
                    _NRLogWithArgs(v106, 0, "%s%.30s:%-4d advertising services %@", "", "[NRLinkManagerBluetooth advertiseServiceUUIDs:identifier:]", 2895, v105);
                  }
                }

                else
                {
                  if (!v197 || v183 != 1)
                  {
                    goto LABEL_133;
                  }

                  *&v223 = v197;
                  v117 = [NSArray arrayWithObjects:&v223 count:1];
                  v118 = v91;
                  v119 = v82[27];
                  v184 = v117;
                  if (!v119)
                  {
                    v120 = objc_alloc_init(NSMutableDictionary);
                    v121 = v82[27];
                    v82[27] = v120;
                  }

                  v101 = objc_alloc_init(NRBluetoothScanRequest);
                  v91 = v118;
                  v122 = sub_10003E4E0(v184);

                  if (v101)
                  {
                    objc_storeStrong(&v101->super._serviceUUIDs, v122);
                  }

                  v123 = v82[27];
                  v124 = [NSNumber numberWithUnsignedShort:v83];
                  [v123 setObject:v101 forKeyedSubscript:v124];

                  if (qword_100228F70 != -1)
                  {
                    dispatch_once(&qword_100228F70, &stru_1001FA8E0);
                  }

                  if (_NRLogIsLevelEnabled())
                  {
                    if (qword_100228F70 != -1)
                    {
                      dispatch_once(&qword_100228F70, &stru_1001FA8E0);
                    }

                    v125 = v82[27];
                    v126 = qword_100228F68;
                    _NRLogWithArgs(v126, 0, "%s%.30s:%-4d scanning services %@", "", "[NRLinkManagerBluetooth scanForServiceUUIDs:identifier:]", 2908, v125);
                  }
                }

                sub_1000315B8(v82);

LABEL_133:
                sub_1000315B8(v82);

                goto LABEL_134;
              }

LABEL_192:
              v177 = sub_100123258();
              v178 = _NRLogIsLevelEnabled();

              if (v178)
              {
                v179 = sub_100123258();
                _NRLogWithArgs(v179, 16, "%s%.30s:%-4d Received invalid pairingManager UUID", "", "[NRDevicePairingDirector handleStartPSMBasedDiscoveryRequest:forConnection:]", 4210);
              }

              sub_100132800(NRDevicePairingDirector, -2005, v195, v194[1]);
              goto LABEL_136;
            }

            v175 = sub_100123258();
            v176 = _NRLogIsLevelEnabled();

            if (v176)
            {
              v174 = sub_100123258();
              _NRLogWithArgs(v174, 16, "%s%.30s:%-4d UUID is null for key %s", "", "nr_xpc_dictionary_get_nsuuid", 132, v57);
              goto LABEL_190;
            }
          }

          else
          {
            v172 = sub_100123258();
            v173 = _NRLogIsLevelEnabled();

            if (v173)
            {
              v174 = sub_100123258();
              _NRLogWithArgs(v174, 16, "%s%.30s:%-4d Failed to get UUID for key %s", "", "nr_xpc_dictionary_get_nsuuid", 129, v57);
LABEL_190:
            }
          }

          goto LABEL_192;
        }

        v170 = sub_100123258();
        v171 = _NRLogIsLevelEnabled();

        if (v171)
        {
          v160 = sub_100123258();
          _NRLogWithArgs(v160, 16, "%s%.30s:%-4d %@: Discovery start request received when client has outstanding pairing request", "", "[NRDevicePairingDirector handleStartDiscoveryRequest:forConnection:]", 4306, v62);
          goto LABEL_182;
        }

LABEL_183:
        sub_100132800(NRDevicePairingDirector, -2005, v56, v200[1]);
        goto LABEL_137;
      }

      v168 = sub_100123258();
      v169 = _NRLogIsLevelEnabled();

      if (!v169)
      {
        goto LABEL_183;
      }

      v160 = sub_100123258();
      _NRLogWithArgs(v160, 16, "%s%.30s:%-4d %@: Discovery start request received when discovery already started", "", "[NRDevicePairingDirector handleStartDiscoveryRequest:forConnection:]", 4298, v62);
    }

    else
    {
      v158 = sub_100123258();
      v159 = _NRLogIsLevelEnabled();

      if (!v159)
      {
        goto LABEL_183;
      }

      v160 = sub_100123258();
      _NRLogWithArgs(v160, 16, "%s%.30s:%-4d Pairing manager %@ is not registered", "", "[NRDevicePairingDirector handleStartDiscoveryRequest:forConnection:]", 4290, v60);
    }

LABEL_182:

    goto LABEL_183;
  }

LABEL_163:
  v128 = v5;
  v151 = sub_100123258();
  v152 = _NRLogIsLevelEnabled();

  if (v152)
  {
    v153 = sub_100123258();
    _NRLogWithArgs(v153, 16, "%s%.30s:%-4d Received invalid pairingManager UUID", "", "[NRDevicePairingDirector handleStartDiscoveryRequest:forConnection:]", 4282);
  }

  sub_100132800(NRDevicePairingDirector, -2005, v56, v128[1]);
LABEL_139:
}

void sub_100135EF0(_Unwind_Exception *a1)
{
  objc_destroyWeak((v2 + 40));
  objc_destroyWeak((v3 + 32));
  objc_destroyWeak((v1 + 32));
  objc_destroyWeak(&STACK[0x270]);
  _Unwind_Resume(a1);
}

void sub_100135F64(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, uint64_t a55, uint64_t a56, uint64_t a57, uint64_t a58, uint64_t a59, uint64_t a60, uint64_t a61, uint64_t a62, uint64_t a63)
{
  objc_destroyWeak((v66 + 32));
  objc_destroyWeak((v65 + 32));
  objc_destroyWeak((v67 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_100135F94(uint64_t a1, void *a2, void *a3)
{
  v6 = a2;
  v7 = a3;
  v8 = v6;
  v9 = v8;
  if (!v8)
  {
    v28 = sub_100123258();
    IsLevelEnabled = _NRLogIsLevelEnabled();

    if (!IsLevelEnabled)
    {
      goto LABEL_47;
    }

    v30 = sub_100123258();
    _NRLogWithArgs(v30, 17, "%s called with null dict");
LABEL_46:

    goto LABEL_47;
  }

  if (!nrXPCKeyPairingManager)
  {
    v31 = sub_100123258();
    v32 = _NRLogIsLevelEnabled();

    if (!v32)
    {
      goto LABEL_47;
    }

    v30 = sub_100123258();
    _NRLogWithArgs(v30, 17, "%s called with null key");
    goto LABEL_46;
  }

  v10 = xpc_dictionary_get_uuid(v8, nrXPCKeyPairingManager);
  if (!v10)
  {
    v33 = sub_100123258();
    v34 = _NRLogIsLevelEnabled();

    if (!v34)
    {
      goto LABEL_47;
    }

    v30 = sub_100123258();
    _NRLogWithArgs(v30, 16, "%s%.30s:%-4d Failed to get UUID for key %s");
    goto LABEL_46;
  }

  v11 = v10;
  if (uuid_is_null(v10))
  {
    v35 = sub_100123258();
    v36 = _NRLogIsLevelEnabled();

    if (v36)
    {
      v30 = sub_100123258();
      _NRLogWithArgs(v30, 16, "%s%.30s:%-4d UUID is null for key %s");
      goto LABEL_46;
    }

LABEL_47:

    goto LABEL_48;
  }

  v12 = [[NSUUID alloc] initWithUUIDBytes:v11];

  if (v12)
  {
    v13 = [v7[2] objectForKeyedSubscript:v12];
    if (!v13)
    {
      v39 = sub_100123258();
      v40 = _NRLogIsLevelEnabled();

      if (!v40)
      {
        goto LABEL_27;
      }

      v41 = sub_100123258();
      _NRLogWithArgs(v41, 16, "%s%.30s:%-4d %@ is not registered", "", "[NRDevicePairingDirector handleStartAuthMethodRequest:forConnection:]", 4506, v12);
LABEL_62:

      goto LABEL_27;
    }

    v14 = nrXPCKeyTargetPairingCandidate;
    v15 = v9;
    v16 = v15;
    if (v14)
    {
      v17 = xpc_dictionary_get_uuid(v15, v14);
      if (v17)
      {
        v18 = v17;
        if (!uuid_is_null(v17))
        {
          v19 = [[NSUUID alloc] initWithUUIDBytes:v18];

          if (v19)
          {
            v20 = [v13[5] objectForKeyedSubscript:v19];
            if (v20)
            {
              uint64 = xpc_dictionary_get_uint64(v16, nrXPCKeyAuthRequestType);
              if (uint64 - 1 >= 3)
              {
                if (qword_1002291E8 != -1)
                {
                  dispatch_once(&qword_1002291E8, &stru_1001FC218);
                }

                v3 = &qword_100229000;
                if (!_NRLogIsLevelEnabled())
                {
                  goto LABEL_23;
                }

                if (qword_1002291E8 != -1)
                {
                  goto LABEL_72;
                }

                goto LABEL_22;
              }

              if (qword_100229238 != -1)
              {
                dispatch_once(&qword_100229238, &stru_1001FC340);
              }

              if (byte_100229230 & 1) != 0 || (sub_100124F20(v13))
              {
                sub_100131C38(v20, uint64);
LABEL_26:

LABEL_27:
                goto LABEL_28;
              }

              uint64 = &qword_100229000;
              if (qword_1002291E8 != -1)
              {
                dispatch_once(&qword_1002291E8, &stru_1001FC218);
              }

              v3 = &qword_100229000;
              if (_NRLogIsLevelEnabled())
              {
                if (qword_1002291E8 != -1)
                {
                  dispatch_once(&qword_1002291E8, &stru_1001FC218);
                }

                uint64 = qword_1002291E0;
                WeakRetained = objc_loadWeakRetained((a1 + 24));
                _NRLogWithArgs(uint64, 16, "%s%.30s:%-4d %@ currently owns the BT connections", "", "[NRDevicePairingDirector handleStartAuthMethodRequest:forConnection:]", 4541, WeakRetained);
              }

              v27 = xpc_dictionary_create(0, 0, 0);
              if (v27)
              {
                *uuid = 0;
                v62 = 0;
                v23 = v27;
                [v19 getUUIDBytes:uuid];
                xpc_dictionary_set_uuid(v23, v14, uuid);

                v24 = v13;
                v25 = -3001;
                goto LABEL_25;
              }
            }

            else
            {
              v51 = sub_100123258();
              uint64 = _NRLogIsLevelEnabled();

              if (uint64)
              {
                v52 = sub_100123258();
                _NRLogWithArgs(v52, 16, "%s%.30s:%-4d %@: No candidate for %@", "", "[NRDevicePairingDirector handleStartAuthMethodRequest:forConnection:]", 4517, v13, v19);
              }

              v22 = xpc_dictionary_create(0, 0, 0);
              if (v22)
              {
LABEL_24:
                *uuid = 0;
                v62 = 0;
                v23 = v22;
                [v19 getUUIDBytes:uuid];
                xpc_dictionary_set_uuid(v23, v14, uuid);

                v24 = v13;
                v25 = -2005;
LABEL_25:
                sub_1001246D8(v24, v25, 8uLL, v23);

                goto LABEL_26;
              }
            }

            v53 = sub_100123258();
            v54 = _NRLogIsLevelEnabled();

            if (!v54)
            {
              goto LABEL_71;
            }

            v55 = sub_100123258();
            _NRLogWithArgs(v55, 16, "%s%.30s:%-4d ABORTING: xpc_dictionary_create(%p, %p, %u) failed", "", "nr_xpc_dictionary_create", 74, 0, 0, 0);
LABEL_70:

LABEL_71:
            while (1)
            {
              v7 = _os_log_pack_size();
              v9 = &uuid[-((__chkstk_darwin() + 15) & 0xFFFFFFFFFFFFFFF0) - 8];
              v58 = __error();
              v59 = _os_log_pack_fill(v9, v7, *v58, &_mh_execute_header, "%{public}s xpc_dictionary_create(%p, %p, %u) failed");
              sub_1000F4320(v59, "nr_xpc_dictionary_create");
              sub_100123258();
              _NRLogAbortWithPack();
LABEL_72:
              dispatch_once(&qword_1002291E8, &stru_1001FC218);
LABEL_22:
              _NRLogWithArgs(v3[60], 16, "%s%.30s:%-4d %@: Invalid auth method type %llu", "", "[NRDevicePairingDirector handleStartAuthMethodRequest:forConnection:]", 4530, v13, uint64);
LABEL_23:
              v22 = xpc_dictionary_create(0, 0, 0);
              if (v22)
              {
                goto LABEL_24;
              }

              v56 = sub_100123258();
              v57 = _NRLogIsLevelEnabled();

              if (v57)
              {
                v55 = sub_100123258();
                _NRLogWithArgs(v55, 16, "%s%.30s:%-4d ABORTING: xpc_dictionary_create(%p, %p, %u) failed", "", "nr_xpc_dictionary_create", 74, 0, 0, 0);
                goto LABEL_70;
              }
            }
          }

          goto LABEL_60;
        }

        v47 = sub_100123258();
        v48 = _NRLogIsLevelEnabled();

        if (v48)
        {
          v44 = sub_100123258();
          _NRLogWithArgs(v44, 16, "%s%.30s:%-4d UUID is null for key %s");
          goto LABEL_58;
        }

LABEL_59:

LABEL_60:
        v49 = sub_100123258();
        v50 = _NRLogIsLevelEnabled();

        if (!v50)
        {
          goto LABEL_27;
        }

        v41 = sub_100123258();
        _NRLogWithArgs(v41, 16, "%s%.30s:%-4d %@: Auth method request result missing pairing target UUID", "", "[NRDevicePairingDirector handleStartAuthMethodRequest:forConnection:]", 4512, v13);
        goto LABEL_62;
      }

      v45 = sub_100123258();
      v46 = _NRLogIsLevelEnabled();

      if (!v46)
      {
        goto LABEL_59;
      }

      v44 = sub_100123258();
      _NRLogWithArgs(v44, 16, "%s%.30s:%-4d Failed to get UUID for key %s");
    }

    else
    {
      v42 = sub_100123258();
      v43 = _NRLogIsLevelEnabled();

      if (!v43)
      {
        goto LABEL_59;
      }

      v44 = sub_100123258();
      _NRLogWithArgs(v44, 17, "%s called with null key", "nr_xpc_dictionary_get_nsuuid");
    }

LABEL_58:

    goto LABEL_59;
  }

LABEL_48:
  v37 = sub_100123258();
  v38 = _NRLogIsLevelEnabled();

  if (!v38)
  {
    goto LABEL_29;
  }

  v12 = sub_100123258();
  _NRLogWithArgs(v12, 16, "%s%.30s:%-4d Received invalid pairingManager UUID", "", "[NRDevicePairingDirector handleStartAuthMethodRequest:forConnection:]", 4501);
LABEL_28:

LABEL_29:
}

void sub_100136854(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v7 = v5;
  v8 = v7;
  if (!v7)
  {
    v73 = sub_100123258();
    IsLevelEnabled = _NRLogIsLevelEnabled();

    if (!IsLevelEnabled)
    {
      goto LABEL_105;
    }

    v75 = sub_100123258();
    _NRLogWithArgs(v75, 17, "%s called with null dict");
LABEL_104:

    goto LABEL_105;
  }

  if (!nrXPCKeyPairingManager)
  {
    v76 = sub_100123258();
    v77 = _NRLogIsLevelEnabled();

    if (!v77)
    {
      goto LABEL_105;
    }

    v75 = sub_100123258();
    _NRLogWithArgs(v75, 17, "%s called with null key");
    goto LABEL_104;
  }

  uuid = xpc_dictionary_get_uuid(v7, nrXPCKeyPairingManager);
  if (!uuid)
  {
    v78 = sub_100123258();
    v79 = _NRLogIsLevelEnabled();

    if (!v79)
    {
      goto LABEL_105;
    }

    v75 = sub_100123258();
    _NRLogWithArgs(v75, 16, "%s%.30s:%-4d Failed to get UUID for key %s");
    goto LABEL_104;
  }

  v10 = uuid;
  if (uuid_is_null(uuid))
  {
    v80 = sub_100123258();
    v81 = _NRLogIsLevelEnabled();

    if (v81)
    {
      v75 = sub_100123258();
      _NRLogWithArgs(v75, 16, "%s%.30s:%-4d UUID is null for key %s");
      goto LABEL_104;
    }

LABEL_105:

    goto LABEL_106;
  }

  v137 = a1;
  v11 = [[NSUUID alloc] initWithUUIDBytes:v10];

  if (v11)
  {
    v12 = v6[2];
    v13 = [v12 objectForKeyedSubscript:v11];

    if (!v13)
    {
      v85 = sub_100123258();
      v86 = _NRLogIsLevelEnabled();

      if (v86)
      {
        v87 = sub_100123258();
        _NRLogWithArgs(v87, 16, "%s%.30s:%-4d %@ is not registered", "", "[NRDevicePairingDirector handleStartPairingRequest:forConnection:]", 4648, v11);
      }

      v18 = v6[1];
      v19 = -2005;
      goto LABEL_15;
    }

    if (*(v13 + 64))
    {
      if (qword_1002291E8 != -1)
      {
        dispatch_once(&qword_1002291E8, &stru_1001FC218);
      }

      if (_NRLogIsLevelEnabled())
      {
        if (qword_1002291E8 != -1)
        {
          dispatch_once(&qword_1002291E8, &stru_1001FC218);
        }

        v14 = *(v13 + 40);
        v15 = *(v13 + 64);
        v16 = qword_1002291E0;
        v17 = [v14 objectForKeyedSubscript:v15];
        _NRLogWithArgs(v16, 16, "%s%.30s:%-4d %@: Already pairing another candidate %@", "", "[NRDevicePairingDirector handleStartPairingRequest:forConnection:]", 4720, v13, v17);
      }

      v18 = v6[1];
      v19 = -3003;
LABEL_15:
      sub_100132800(NRDevicePairingDirector, v19, v8, v18);
LABEL_94:

      goto LABEL_95;
    }

    if (qword_100229238 != -1)
    {
      dispatch_once(&qword_100229238, &stru_1001FC340);
    }

    if ((byte_100229230 & 1) == 0 && (sub_100124F20(v13) & 1) == 0)
    {
      if (qword_1002291E8 != -1)
      {
        dispatch_once(&qword_1002291E8, &stru_1001FC218);
      }

      if (_NRLogIsLevelEnabled())
      {
        if (qword_1002291E8 != -1)
        {
          dispatch_once(&qword_1002291E8, &stru_1001FC218);
        }

        v50 = qword_1002291E0;
        WeakRetained = objc_loadWeakRetained((v137 + 24));
        _NRLogWithArgs(v50, 16, "%s%.30s:%-4d %@ currently owns the BT connections", "", "[NRDevicePairingDirector handleStartPairingRequest:forConnection:]", 4728, WeakRetained);
      }

      v18 = v6[1];
      v19 = -3001;
      goto LABEL_15;
    }

    v20 = nrXPCKeyPairingTarget;
    v21 = objc_opt_class();
    v136 = v8;
    if (v20)
    {
      if (v21)
      {
        length = 0;
        data = xpc_dictionary_get_data(v136, v20, &length);
        if (data)
        {
          if (length)
          {
            v23 = [NSData alloc];
            v24 = [v23 initWithBytesNoCopy:data length:length freeWhenDone:0];
            location[0] = 0;
            v25 = [NSKeyedUnarchiver unarchivedObjectOfClass:v21 fromData:v24 error:location];
            v26 = location[0];
            if (v26 || !v25)
            {
              v102 = sub_100123258();
              v103 = _NRLogIsLevelEnabled();

              if (v103)
              {
                v104 = sub_100123258();
                _NRLogWithArgs(v104, 17, "Failed to unarchive object of type %@: %@", v21, v26);
              }

              v27 = 0;
            }

            else
            {
              v27 = v25;
            }

            if (v27)
            {
LABEL_28:
              v28 = [v27 candidate];
              v29 = [v28 uuid];
              v30 = sub_100125108(v13, v29);

              if (!v30)
              {
                if (qword_1002291E8 != -1)
                {
                  dispatch_once(&qword_1002291E8, &stru_1001FC218);
                }

                if (_NRLogIsLevelEnabled())
                {
                  if (qword_1002291E8 != -1)
                  {
                    dispatch_once(&qword_1002291E8, &stru_1001FC218);
                  }

                  v48 = qword_1002291E0;
                  v49 = [v27 candidate];
                  _NRLogWithArgs(v48, 16, "%s%.30s:%-4d %@: Pairing candidate %@ not found", "", "[NRDevicePairingDirector handleStartPairingRequest:forConnection:]", 4746, v13, v49);
                }

                sub_100132800(NRDevicePairingDirector, -2005, v136, v6[1]);
                goto LABEL_93;
              }

              v31 = [v27 candidate];
              v135 = [v31 cbUUID];

              if (!v135)
              {
                goto LABEL_33;
              }

              v32 = sub_100168BE8(NRDLocalDevice, v135, 0);
              p_super = &v32->super;
              if (!v32 || (v32->_databaseFlags & 1) == 0)
              {

LABEL_33:
                if (qword_1002291E8 != -1)
                {
                  dispatch_once(&qword_1002291E8, &stru_1001FC218);
                }

                if (_NRLogIsLevelEnabled())
                {
                  if (qword_1002291E8 != -1)
                  {
                    dispatch_once(&qword_1002291E8, &stru_1001FC218);
                  }

                  _NRLogWithArgs(qword_1002291E0, 0, "%s%.30s:%-4d %@: Starting pairing for %@", "", "[NRDevicePairingDirector handleStartPairingRequest:forConnection:]", 4767, v13, v27);
                }

                v34 = [*(v30 + 32) uuid];
                v35 = *(v13 + 64);
                *(v13 + 64) = v34;

                objc_storeStrong((v30 + 40), v27);
                if (!*(v13 + 136))
                {
                  v36 = dispatch_source_create(&_dispatch_source_type_timer, 0, 0, *(v13 + 24));
                  v37 = dispatch_time(0x8000000000000000, 45000000000);
                  dispatch_source_set_timer(v36, v37, 0xFFFFFFFFFFFFFFFFLL, 0x3B9ACA00uLL);
                  objc_initWeak(location, v13);
                  length = _NSConcreteStackBlock;
                  v150 = 3221225472;
                  v151 = sub_100131AE4;
                  v152 = &unk_1001FD0D8;
                  objc_copyWeak(&v154, location);
                  v38 = v36;
                  v153 = v38;
                  dispatch_source_set_event_handler(v38, &length);
                  dispatch_activate(v38);
                  v39 = *(v13 + 136);
                  *(v13 + 136) = v38;
                  v40 = v38;

                  objc_destroyWeak(&v154);
                  objc_destroyWeak(location);
                }

                v41 = dispatch_group_create();
                p_super = v41;
                v42 = [*(v30 + 40) authMethod];
                v43 = *(v30 + 40);
                v134 = [v43 authData];

                v44 = [v134 length];
                if (v42 == 3)
                {
                  if (v44)
                  {
                    v105 = sub_100123258();
                    v106 = _NRLogIsLevelEnabled();

                    if (v106)
                    {
                      v107 = sub_100123258();
                      v108 = NRCreateStringFromPairingAuthMethod();
                      _NRLogWithArgs(v107, 16, "%s%.30s:%-4d %@: Auth data unexpectedly present for %@", "", "[NRDevicePairingCandidateContext deriveSharedSecretForPairingWithDispatchGroup:]", 2604, v30, v108);
                    }
                  }

                  else
                  {
                    *(v30 + 48) = 3;
                    v45 = *(v30 + 56);
                    v46 = v45;
                    if (v45)
                    {
                      v47 = *(v45 + 4);
                    }

                    else
                    {
                      v47 = 0;
                    }

                    objc_storeStrong((v30 + 272), v47);
                  }
                }

                else if (v44)
                {
                  *(v30 + 48) = v42;
                  if (v42 == 2)
                  {
                    if (*(v30 + 256))
                    {
                      if (qword_1002291E8 != -1)
                      {
                        dispatch_once(&qword_1002291E8, &stru_1001FC218);
                      }

                      if (_NRLogIsLevelEnabled())
                      {
                        if (qword_1002291E8 != -1)
                        {
                          dispatch_once(&qword_1002291E8, &stru_1001FC218);
                        }

                        _NRLogWithArgs(qword_1002291E0, 1, "%s%.30s:%-4d %@: Generating salted PIN using PBKDF2", "", "[NRDevicePairingCandidateContext deriveSharedSecretForPairingWithDispatchGroup:]", 2628, v30);
                      }

                      objc_storeStrong((v30 + 264), v41);
                      objc_initWeak(&from, v30);
                      v62 = *(v30 + 256);
                      v132 = objc_loadWeakRetained(&from);
                      v63 = *(v30 + 24);
                      location[0] = _NSConcreteStackBlock;
                      location[1] = 3221225472;
                      location[2] = sub_1001321B8;
                      location[3] = &unk_1001FBFC8;
                      objc_copyWeak(&v146, &from);
                      v64 = p_super;
                      v145 = v64;
                      v131 = v134;
                      v130 = v62;
                      objc_initWeak(&v148, v132);
                      v65 = v63;
                      v129 = location;
                      v66 = qword_1002291F0;
                      v133 = v64;
                      if (v66 != -1)
                      {
                        dispatch_once(&qword_1002291F0, &stru_1001FC260);
                      }

                      length = _NSConcreteStackBlock;
                      v150 = 3221225472;
                      v151 = sub_100132284;
                      v152 = &unk_1001FC240;
                      v67 = qword_1002291F8;
                      objc_copyWeak(&v157, &v148);
                      v153 = v131;
                      v154 = v130;
                      v155 = v65;
                      v156 = v129;
                      v129 = v131;
                      v131 = v130;
                      v68 = v65;
                      dispatch_group_async(v133, v67, &length);

                      objc_destroyWeak(&v157);
                      objc_destroyWeak(&v148);

                      objc_destroyWeak(&v146);
                      objc_destroyWeak(&from);
                    }

                    else
                    {
                      v125 = sub_100123258();
                      v126 = _NRLogIsLevelEnabled();

                      if (v126)
                      {
                        v127 = sub_100123258();
                        _NRLogWithArgs(v127, 16, "%s%.30s:%-4d %@: No PIN salt present", "", "[NRDevicePairingCandidateContext deriveSharedSecretForPairingWithDispatchGroup:]", 2625, v30);
                      }
                    }
                  }

                  else if (v42 == 1)
                  {
                    v52 = [NSMutableData _newZeroingDataWithBytes:0 length:0];
                    [v52 appendData:v134];
                    [v52 appendData:*(v30 + 72)];
                    v53 = *(v30 + 272);
                    *(v30 + 272) = v52;
                  }
                }

                else
                {
                  v109 = sub_100123258();
                  v110 = _NRLogIsLevelEnabled();

                  if (v110)
                  {
                    v111 = sub_100123258();
                    v112 = NRCreateStringFromPairingAuthMethod();
                    _NRLogWithArgs(v111, 16, "%s%.30s:%-4d %@: No auth data present for %@", "", "[NRDevicePairingCandidateContext deriveSharedSecretForPairingWithDispatchGroup:]", 2599, v30, v112);
                  }
                }

                objc_initWeak(&v148, v30);
                v69 = *(v137 + 8);
                block[0] = _NSConcreteStackBlock;
                block[1] = 3221225472;
                block[2] = sub_100137E88;
                block[3] = &unk_1001FC1D0;
                v70 = v69;
                objc_copyWeak(&v143, &v148);
                v139 = v27;
                v140 = v136;
                v141 = v6;
                v71 = v13;
                v142 = v71;
                dispatch_group_notify(p_super, v70, block);

                if (!v71[18])
                {
                  objc_initWeak(location, v71);
                  objc_opt_self();
                  if (qword_1002290C0 != -1)
                  {
                    dispatch_once(&qword_1002290C0, &stru_1001FB2B0);
                  }

                  v72 = qword_1002290B8;
                  length = _NSConcreteStackBlock;
                  v150 = 3221225472;
                  v151 = sub_100131A7C;
                  v152 = &unk_1001FBF00;
                  objc_copyWeak(&v153, location);

                  objc_destroyWeak(&v153);
                  objc_destroyWeak(location);
                }

                objc_destroyWeak(&v143);
                objc_destroyWeak(&v148);
LABEL_92:

LABEL_93:
                goto LABEL_94;
              }

              if (qword_1002291E8 != -1)
              {
                dispatch_once(&qword_1002291E8, &stru_1001FC218);
              }

              if (_NRLogIsLevelEnabled())
              {
                if (qword_1002291E8 != -1)
                {
                  dispatch_once(&qword_1002291E8, &stru_1001FC218);
                }

                _NRLogWithArgs(qword_1002291E0, 16, "%s%.30s:%-4d %@: Paired device %@ already exists for %@", "", "[NRDevicePairingDirector handleStartPairingRequest:forConnection:]", 4757, v13, p_super, v27);
              }

              v54 = v136;
              reply = xpc_dictionary_create_reply(v54);
              if (reply)
              {

                xpc_dictionary_set_int64(reply, nrXPCKeyResult, -3007);
                v56 = nrXPCKeyBluetoothUUID;
                reply = reply;
                if (v56)
                {
                  length = 0;
                  v150 = 0;
                  [v135 getUUIDBytes:&length];
                  xpc_dictionary_set_uuid(reply, v56, &length);
LABEL_73:

                  v57 = nrXPCKeyNRUUID;
                  v58 = p_super[3].isa;
                  v59 = reply;
                  v60 = v58;
                  v61 = v60;
                  if (v57)
                  {
                    if (v60)
                    {
                      length = 0;
                      v150 = 0;
                      [(objc_class *)v60 getUUIDBytes:&length];
                      xpc_dictionary_set_uuid(v59, v57, &length);
                    }

                    else
                    {
                      v123 = sub_100123258();
                      LODWORD(v137) = _NRLogIsLevelEnabled();

                      if (v137)
                      {
                        v124 = sub_100123258();
                        _NRLogWithArgs(v124, 17, "%s called with null uuid", "nr_xpc_dictionary_set_nsuuid");
                      }
                    }
                  }

                  else
                  {
                    v121 = sub_100123258();
                    LODWORD(v137) = _NRLogIsLevelEnabled();

                    if (v137)
                    {
                      v122 = sub_100123258();
                      _NRLogWithArgs(v122, 17, "%s called with null key", "nr_xpc_dictionary_set_nsuuid");
                    }
                  }

                  xpc_connection_send_message(v6[1], v59);
                  goto LABEL_92;
                }
              }

              else
              {
                v113 = sub_100123258();
                v114 = _NRLogIsLevelEnabled();

                if (v114)
                {
                  v115 = sub_100123258();
                  _NRLogWithArgs(v115, 16, "%s%.30s:%-4d ABORTING: xpc_dictionary_create_reply failed", "", "nr_xpc_dictionary_create_reply", 92);
                }

                v6 = _os_log_pack_size();
                v8 = &v128 - ((__chkstk_darwin() + 15) & 0xFFFFFFFFFFFFFFF0);
                v116 = __error();
                v117 = _os_log_pack_fill(v8, v6, *v116, &_mh_execute_header, "%{public}s xpc_dictionary_create_reply failed");
                *v117 = 136446210;
                *(v117 + 4) = "nr_xpc_dictionary_create_reply";
                sub_100123258();
                _NRLogAbortWithPack();
                __break(1u);
              }

              v118 = sub_100123258();
              v119 = _NRLogIsLevelEnabled();

              if (v119)
              {
                v120 = sub_100123258();
                _NRLogWithArgs(v120, 17, "%s called with null key", "nr_xpc_dictionary_set_nsuuid");
              }

              goto LABEL_73;
            }

LABEL_124:
            v99 = sub_100123258();
            v100 = _NRLogIsLevelEnabled();

            if (v100)
            {
              v101 = sub_100123258();
              _NRLogWithArgs(v101, 16, "%s%.30s:%-4d %@: Received invalid pairingTarget for pairing", "", "[NRDevicePairingDirector handleStartPairingRequest:forConnection:]", 4738, v13);
            }

            sub_100132800(NRDevicePairingDirector, -2005, v136, v6[1]);
            v27 = 0;
            goto LABEL_28;
          }

          v97 = sub_100123258();
          v98 = _NRLogIsLevelEnabled();

          if (v98)
          {
            v96 = sub_100123258();
            _NRLogWithArgs(v96, 16, "%s%.30s:%-4d XPC data for key %s is empty", "", "nr_xpc_dictionary_get_nsobject", 170, v20);
            goto LABEL_122;
          }
        }

        else
        {
          v94 = sub_100123258();
          v95 = _NRLogIsLevelEnabled();

          if (v95)
          {
            v96 = sub_100123258();
            _NRLogWithArgs(v96, 16, "%s%.30s:%-4d Failed to get XPC data for key %s", "", "nr_xpc_dictionary_get_nsobject", 167, v20);
LABEL_122:
          }
        }

        goto LABEL_124;
      }

      v91 = sub_100123258();
      v92 = _NRLogIsLevelEnabled();

      if (v92)
      {
        v90 = "%s called with null cls";
        goto LABEL_116;
      }
    }

    else
    {
      v88 = sub_100123258();
      v89 = _NRLogIsLevelEnabled();

      if (v89)
      {
        v90 = "%s called with null key";
LABEL_116:
        v93 = sub_100123258();
        _NRLogWithArgs(v93, 17, v90, "nr_xpc_dictionary_get_nsobject");
      }
    }

    goto LABEL_124;
  }

LABEL_106:
  v82 = sub_100123258();
  v83 = _NRLogIsLevelEnabled();

  if (v83)
  {
    v84 = sub_100123258();
    _NRLogWithArgs(v84, 16, "%s%.30s:%-4d Received invalid pairingManager UUID", "", "[NRDevicePairingDirector handleStartPairingRequest:forConnection:]", 4640);
  }

  sub_100132800(NRDevicePairingDirector, -2005, v8, v6[1]);
LABEL_95:
}

void sub_100137E4C(_Unwind_Exception *a1)
{
  objc_destroyWeak((v1 + 32));
  objc_destroyWeak((v3 - 248));
  objc_destroyWeak((v2 + 64));
  objc_destroyWeak((v3 - 192));
  _Unwind_Resume(a1);
}

void sub_100137E88(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 64));
  if (sub_100123434(WeakRetained))
  {
    if (WeakRetained && WeakRetained[34])
    {
      if (qword_1002291E8 != -1)
      {
        dispatch_once(&qword_1002291E8, &stru_1001FC218);
      }

      if (_NRLogIsLevelEnabled())
      {
        if (qword_1002291E8 != -1)
        {
          dispatch_once(&qword_1002291E8, &stru_1001FC218);
        }

        _NRLogWithArgs(qword_1002291E0, 0, "%s%.30s:%-4d %@: Attempting to establish pairing session", "", "[NRDevicePairingDirector handleStartPairingRequest:forConnection:]_block_invoke", 4791, WeakRetained);
      }

      sub_100127188(WeakRetained);

      v2 = *(a1 + 40);
      v3 = *(a1 + 48);
      if (v3)
      {
        v4 = *(v3 + 8);
      }

      else
      {
        v4 = 0;
      }

      v5 = 0;
    }

    else
    {
      v6 = sub_100123258();
      IsLevelEnabled = _NRLogIsLevelEnabled();

      if (IsLevelEnabled)
      {
        v8 = sub_100123258();
        [*(a1 + 32) authMethod];
        v9 = NRCreateStringFromPairingAuthMethod();
        v10 = [*(a1 + 32) authData];
        LogString = _NRKeyCreateLogString();
        _NRLogWithArgs(v8, 16, "%s%.30s:%-4d %@: deriveSharedSecretForPairing with authMethod %@ authData %@ failed", "", "[NRDevicePairingDirector handleStartPairingRequest:forConnection:]_block_invoke", 4787, WeakRetained, v9, LogString);
      }

      sub_100129A18(*(a1 + 56));
      v2 = *(a1 + 40);
      v12 = *(a1 + 48);
      if (v12)
      {
        v4 = *(v12 + 8);
      }

      else
      {
        v4 = 0;
      }

      v5 = -3002;
    }

    sub_100132800(NRDevicePairingDirector, v5, v2, v4);
  }

  else
  {
  }
}

void sub_1001380B0(uint64_t a1, void *a2)
{
  v46 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  if (WeakRetained)
  {
    v4 = v46;
    if (qword_1002291E8 != -1)
    {
      dispatch_once(&qword_1002291E8, &stru_1001FC218);
    }

    if (_NRLogIsLevelEnabled())
    {
      if (qword_1002291E8 != -1)
      {
        dispatch_once(&qword_1002291E8, &stru_1001FC218);
      }

      _NRLogWithArgs(qword_1002291E0, 2, "%s%.30s:%-4d %@: Found device: %@", "", "[NRDevicePairingManagerContext handleFoundDevice:]", 686, WeakRetained, v4);
    }

    v5 = [v4 bleAdvertisementTimestampMachContinuous];
    if (!v5)
    {
      v31 = sub_100123258();
      IsLevelEnabled = _NRLogIsLevelEnabled();

      if (!IsLevelEnabled)
      {
        goto LABEL_76;
      }

      v8 = sub_100123258();
      _NRLogWithArgs(v8, 16, "%s%.30s:%-4d %@: Ignoring device with invalid timestamp: %@", "", "[NRDevicePairingManagerContext handleFoundDevice:]", 691, WeakRetained, v4);
      goto LABEL_75;
    }

    v6 = v5;
    v7 = [v4 watchSetupData];
    v8 = v7;
    if (!v7)
    {
      v33 = sub_100123258();
      v34 = _NRLogIsLevelEnabled();

      if (!v34)
      {
        goto LABEL_75;
      }

      v11 = sub_100123258();
      _NRLogWithArgs(v11, 16, "%s%.30s:%-4d %@: Ignoring device with no Watch setup data: %@", "", "[NRDevicePairingManagerContext handleFoundDevice:]", 697, WeakRetained, v4);
LABEL_74:

LABEL_75:
LABEL_76:

      goto LABEL_77;
    }

    if ([v7 length] <= 4)
    {
      v35 = sub_100123258();
      v36 = _NRLogIsLevelEnabled();

      if (!v36)
      {
        goto LABEL_75;
      }

      v11 = sub_100123258();
      _NRLogWithArgs(v11, 16, "%s%.30s:%-4d %@: Ignoring device with too short Watch setup data (%zu < %zu): %@", "", "-[NRDevicePairingManagerContext handleFoundDevice:]", 701, WeakRetained, [v8 length], 5, v4);
      goto LABEL_74;
    }

    v9 = [NSUUID alloc];
    v10 = [v4 identifier];
    v11 = [v9 initWithUUIDString:v10];

    if (!v11)
    {
      v37 = sub_100123258();
      v38 = _NRLogIsLevelEnabled();

      if (!v38)
      {
        goto LABEL_74;
      }

      v13 = sub_100123258();
      v39 = [v4 identifier];
      _NRLogWithArgs(v13, 1, "%s%.30s:%-4d %@: Ignoring device with unrecognized identifier format %@", "", "[NRDevicePairingManagerContext handleFoundDevice:]", 707, WeakRetained, v39);

      goto LABEL_73;
    }

    v12 = [WeakRetained[6] objectForKeyedSubscript:v11];
    v13 = [WeakRetained[5] objectForKeyedSubscript:v12];

    nr_continuous_time();
    NRConvertMachTimeToMicroseconds();
    NRDiffMicroTimeInSeconds();
    if (v14 >= 1.0)
    {
      v40 = v14;
      v41 = sub_100123258();
      v42 = _NRLogIsLevelEnabled();

      if (v42)
      {
        v43 = sub_100123258();
        _NRLogWithArgs(v43, 16, "%s%.30s:%-4d %@: Ignoring stale advertisement last seen %fs ago: %@", "", "[NRDevicePairingManagerContext handleFoundDevice:]", 718, WeakRetained, *&v40, v4);
      }

      if (v13)
      {
        *(v13 + 80) = v6;
      }

      goto LABEL_73;
    }

    if (v13)
    {
      if ([v8 isEqualToData:*(v13 + 72)])
      {
        goto LABEL_44;
      }

      if (qword_1002291E8 != -1)
      {
        dispatch_once(&qword_1002291E8, &stru_1001FC218);
      }

      if (_NRLogIsLevelEnabled())
      {
        if (qword_1002291E8 != -1)
        {
          dispatch_once(&qword_1002291E8, &stru_1001FC218);
        }

        v15 = *(v13 + 72);
        v16 = qword_1002291E0;
        _NRLogWithArgs(v16, 0, "%s%.30s:%-4d %@: Advertisement data changed! old: %@ new: %@", "", "[NRDevicePairingManagerContext handleFoundDevice:]", 725, v13, v15, v8);
      }

      if (*(v13 + 8) == 1)
      {
        sub_1001236B4(WeakRetained, *(v13 + 32));
      }

      sub_100131038(WeakRetained, v13);
    }

    v48 = 0;
    v47 = 0;
    [v8 getBytes:&v47 length:5];
    if ((v47 & 0xE0) != 0x20)
    {
      if (qword_1002291E8 != -1)
      {
        dispatch_once(&qword_1002291E8, &stru_1001FC218);
      }

      if (_NRLogIsLevelEnabled())
      {
        if (qword_1002291E8 != -1)
        {
          dispatch_once(&qword_1002291E8, &stru_1001FC218);
        }

        _NRLogWithArgs(qword_1002291E0, 16, "%s%.30s:%-4d %@: Ignoring device with unrecognized header version %u: %@", "", "[NRDevicePairingManagerContext handleFoundDevice:]", 739, WeakRetained, v47 >> 5, v4);
      }

      v13 = 0;
      goto LABEL_73;
    }

    v45 = v11;
    v17 = [[NSData alloc] initWithBytes:&v47 + 1 length:4];
    v18 = [v8 length];
    if (v18 == 5)
    {
      v19 = 0;
    }

    else
    {
      v19 = [v8 subdataWithRange:{5, v18 - 5}];
    }

    v20 = [[NRDevicePairingCandidate alloc] initInternal];
    [v20 setIdentifier:v17];
    [v20 setMetadata:v19];
    [v20 setCbUUID:v11];
    v21 = sub_10012E4CC([NRDevicePairingCandidateContext alloc], v20, WeakRetained[3], WeakRetained);
    v13 = v21;
    if (v21)
    {
      objc_storeStrong(v21 + 9, v8);
    }

    if (qword_1002291E8 != -1)
    {
      dispatch_once(&qword_1002291E8, &stru_1001FC218);
    }

    if (_NRLogIsLevelEnabled())
    {
      v44 = v17;
      if (qword_1002291E8 != -1)
      {
        dispatch_once(&qword_1002291E8, &stru_1001FC218);
      }

      v22 = qword_1002291E0;
      v23 = [v20 fullDescription];
      _NRLogWithArgs(v22, 0, "%s%.30s:%-4d %@: Discovered %@", "", "[NRDevicePairingManagerContext handleFoundDevice:]", 762, WeakRetained, v23);

      v17 = v44;
    }

    sub_10012E66C(WeakRetained, v13);

    if (!v13)
    {
      v27 = *(WeakRetained + 8);
      if (!*(WeakRetained + 8))
      {
        goto LABEL_73;
      }

      LOBYTE(v24) = *(WeakRetained + 8);
      v26 = 1;
      goto LABEL_57;
    }

LABEL_44:
    *(v13 + 80) = v6;
    v24 = *(WeakRetained + 8);
    if (*(v13 + 8))
    {
      if (*(WeakRetained + 8))
      {
        v25 = [v4 rssi];
        if (qword_1002291E8 != -1)
        {
          dispatch_once(&qword_1002291E8, &stru_1001FC218);
        }

        if (_NRLogIsLevelEnabled())
        {
          if (qword_1002291E8 != -1)
          {
            dispatch_once(&qword_1002291E8, &stru_1001FC218);
          }

          _NRLogWithArgs(qword_1002291E0, 2, "%s%.30s:%-4d %@: Active: Device RSSI %d Target RSSI %d", "", "[NRDevicePairingManagerContext handleFoundDevice:]", 784, v13, v25, v24);
        }

        if (v25 && v25 < v24)
        {
          *(v13 + 8) = 0;
LABEL_72:
          sub_1001236B4(WeakRetained, *(v13 + 32));
          goto LABEL_73;
        }

        if ((*(v13 + 8) & 1) == 0)
        {
          goto LABEL_72;
        }
      }

LABEL_73:

      goto LABEL_74;
    }

    if (!*(WeakRetained + 8))
    {
      goto LABEL_66;
    }

    v45 = v11;
    v26 = 0;
    v27 = *(WeakRetained + 8);
LABEL_57:
    v28 = [v4 rssi];
    if (qword_1002291E8 != -1)
    {
      dispatch_once(&qword_1002291E8, &stru_1001FC218);
    }

    if (_NRLogIsLevelEnabled())
    {
      if (qword_1002291E8 != -1)
      {
        dispatch_once(&qword_1002291E8, &stru_1001FC218);
      }

      _NRLogWithArgs(qword_1002291E0, 2, "%s%.30s:%-4d %@: Inactive: Device RSSI %d Target RSSI %d", "", "[NRDevicePairingManagerContext handleFoundDevice:]", 774, v13, v28, v27);
    }

    if (!v28 || v28 < v24)
    {
      v11 = v45;
      if ((v26 & 1) != 0 || (*(v13 + 8) & 1) == 0)
      {
        goto LABEL_73;
      }

      goto LABEL_67;
    }

    v11 = v45;
    if (v26)
    {
      goto LABEL_73;
    }

LABEL_66:
    *(v13 + 8) = 1;
LABEL_67:
    sub_100126038(WeakRetained, *(v13 + 32));
    goto LABEL_73;
  }

  v29 = sub_100123258();
  v30 = _NRLogIsLevelEnabled();

  if (v30)
  {
    v4 = sub_100123258();
    _NRLogWithArgs(v4, 0, "%s%.30s:%-4d Invalid pairingManager", "", "[NRDevicePairingDirector handleStartDiscoveryRequest:forConnection:]_block_invoke", 4354);
    goto LABEL_76;
  }

LABEL_77:
}

void sub_1001389F8(uint64_t a1, void *a2)
{
  v15 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  if (WeakRetained)
  {
    v4 = v15;
    if (qword_1002291E8 != -1)
    {
      dispatch_once(&qword_1002291E8, &stru_1001FC218);
    }

    if (_NRLogIsLevelEnabled())
    {
      if (qword_1002291E8 != -1)
      {
        dispatch_once(&qword_1002291E8, &stru_1001FC218);
      }

      _NRLogWithArgs(qword_1002291E0, 1, "%s%.30s:%-4d %@: Lost device: %@", "", "[NRDevicePairingManagerContext handleLostDevice:]", 801, WeakRetained, v4);
    }

    v5 = [NSUUID alloc];
    v6 = [v4 identifier];
    v7 = [v5 initWithUUIDString:v6];

    if (v7)
    {
      v8 = [WeakRetained[6] objectForKeyedSubscript:v7];
      v9 = [WeakRetained[5] objectForKeyedSubscript:v8];

      if (v9 && *(v9 + 8) == 1)
      {
        *(v9 + 8) = 0;
        sub_1001236B4(WeakRetained, *(v9 + 32));
      }
    }

    else
    {
      v12 = sub_100123258();
      IsLevelEnabled = _NRLogIsLevelEnabled();

      if (!IsLevelEnabled)
      {
        goto LABEL_13;
      }

      v9 = sub_100123258();
      v14 = [v4 identifier];
      _NRLogWithArgs(v9, 1, "%s%.30s:%-4d %@: Ignoring device with unrecognized identifier format %@", "", "[NRDevicePairingManagerContext handleLostDevice:]", 804, WeakRetained, v14);
    }

LABEL_13:
LABEL_14:

    goto LABEL_15;
  }

  v10 = sub_100123258();
  v11 = _NRLogIsLevelEnabled();

  if (v11)
  {
    v4 = sub_100123258();
    _NRLogWithArgs(v4, 0, "%s%.30s:%-4d Invalid pairingManager", "", "[NRDevicePairingDirector handleStartDiscoveryRequest:forConnection:]_block_invoke_2", 4363);
    goto LABEL_14;
  }

LABEL_15:
}

void sub_100138C54(uint64_t a1, void *a2)
{
  v15 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  v4 = WeakRetained;
  if (WeakRetained && (v5 = objc_loadWeakRetained(WeakRetained + 2)) != 0)
  {
    v6 = v5;
    if (v15)
    {
      v12 = sub_100123258();
      IsLevelEnabled = _NRLogIsLevelEnabled();

      if (IsLevelEnabled)
      {
        v14 = sub_100123258();
        _NRLogWithArgs(v14, 16, "%s%.30s:%-4d %@: Failed to start CBDiscovery: %@", "", "[NRDevicePairingDirector handleStartDiscoveryRequest:forConnection:]_block_invoke_3", 4384, v4, v15);
      }

      sub_100132800(NRDevicePairingDirector, -3002, *(a1 + 32), v6[1]);
    }

    else
    {
      if (qword_1002291E8 != -1)
      {
        dispatch_once(&qword_1002291E8, &stru_1001FC218);
      }

      if (_NRLogIsLevelEnabled())
      {
        if (qword_1002291E8 != -1)
        {
          dispatch_once(&qword_1002291E8, &stru_1001FC218);
        }

        _NRLogWithArgs(qword_1002291E0, 0, "%s%.30s:%-4d %@: Started discovery", "", "[NRDevicePairingDirector handleStartDiscoveryRequest:forConnection:]_block_invoke_3", 4378, v4);
      }

      sub_100132800(NRDevicePairingDirector, 0, *(a1 + 32), v6[1]);
      if (!v4[16])
      {
        v7 = dispatch_source_create(&_dispatch_source_type_timer, 0, 0, v4[3]);
        v8 = dispatch_time(0x8000000000000000, 2000000000);
        dispatch_source_set_timer(v7, v8, 0x77359400uLL, 0xEE6B280uLL);
        objc_initWeak(&location, v4);
        handler[0] = _NSConcreteStackBlock;
        handler[1] = 3221225472;
        handler[2] = sub_100131774;
        handler[3] = &unk_1001FD0D8;
        objc_copyWeak(&v18, &location);
        v9 = v7;
        v17 = v9;
        dispatch_source_set_event_handler(v9, handler);
        dispatch_activate(v9);
        v10 = v4[16];
        v4[16] = v9;
        v11 = v9;

        objc_destroyWeak(&v18);
        objc_destroyWeak(&location);
      }
    }
  }

  else
  {
    if (qword_1002291E8 != -1)
    {
      dispatch_once(&qword_1002291E8, &stru_1001FC218);
    }

    if (_NRLogIsLevelEnabled())
    {
      if (qword_1002291E8 != -1)
      {
        dispatch_once(&qword_1002291E8, &stru_1001FC218);
      }

      _NRLogWithArgs(qword_1002291E0, 0, "%s%.30s:%-4d Invalid pairingManager(%@) or manager connection(%@)", "", "[NRDevicePairingDirector handleStartDiscoveryRequest:forConnection:]_block_invoke_3", 4373, v4, 0);
    }
  }
}

void sub_100138F8C(uint64_t a1, int a2, void *a3, int a4)
{
  v7 = a3;
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  v9 = WeakRetained;
  if (WeakRetained)
  {
    v10 = [WeakRetained[4] pairingCriteria];
    v11 = [v10 psm];

    if (v11 == a4)
    {
      if (qword_1002291E8 != -1)
      {
        dispatch_once(&qword_1002291E8, &stru_1001FC218);
      }

      if (_NRLogIsLevelEnabled())
      {
        if (qword_1002291E8 != -1)
        {
          dispatch_once(&qword_1002291E8, &stru_1001FC218);
        }

        v12 = "dis";
        if (a2)
        {
          v12 = "";
        }

        _NRLogWithArgs(qword_1002291E0, 0, "%s%.30s:%-4d %@: device %@ %sconnected", "", "[NRDevicePairingDirector handleStartPSMBasedDiscoveryRequest:forConnection:]_block_invoke", 4235, v9, v7, v12);
      }

      v13 = sub_100125108(v9, v7);
      v14 = v13;
      if (a2)
      {
        if (v13)
        {
          goto LABEL_17;
        }

        v15 = [[NRDevicePairingCandidate alloc] initInternalWithUUID:v7];
        if (!v15)
        {
          v22 = sub_100123258();
          IsLevelEnabled = _NRLogIsLevelEnabled();

          if (IsLevelEnabled)
          {
            v24 = sub_100123258();
            _NRLogWithArgs(v24, 16, "%s%.30s:%-4d ABORTING: Assertion Failed: (candidateInfo) != ((void*)0)", "", "[NRDevicePairingDirector handleStartPSMBasedDiscoveryRequest:forConnection:]_block_invoke", 4240);
          }

          v25 = _os_log_pack_size();
          v26 = &v30[-1] - ((__chkstk_darwin() + 15) & 0xFFFFFFFFFFFFFFF0);
          v27 = __error();
          v28 = _os_log_pack_fill(v26, v25, *v27, &_mh_execute_header, "%{public}s Assertion Failed: (candidateInfo) != ((void*)0)");
          *v28 = 136446210;
          *(v28 + 4) = "[NRDevicePairingDirector handleStartPSMBasedDiscoveryRequest:forConnection:]_block_invoke";
          sub_100123258();
          _NRLogAbortWithPack();
        }

        v16 = v15;
        v30[0] = 0;
        v30[1] = 0;
        [v7 getUUIDBytes:v30];
        v17 = [[NSData alloc] initWithBytes:v30 length:16];
        [v16 setIdentifier:v17];

        [v16 setCbUUID:v7];
        v18 = [NRDevicePairingCandidateContext alloc];
        v19 = *(a1 + 32);
        v20 = v19 ? *(v19 + 8) : 0;
        v14 = sub_10012E4CC(&v18->super.isa, v16, v20, v9);
        sub_10012E66C(v9, v14);

        if (v14)
        {
LABEL_17:
          if (v14[1])
          {
LABEL_23:

            goto LABEL_24;
          }

          *(v14 + 8) = 1;
          v21 = v14[4];
        }

        else
        {
          v21 = 0;
        }

        sub_100126038(v9, v21);
        goto LABEL_23;
      }

      if (v13)
      {
        if (*(v13 + 8) == 1)
        {
          *(v13 + 8) = 0;
          sub_1001236B4(v9, *(v13 + 32));
        }

        goto LABEL_23;
      }
    }
  }

LABEL_24:
}

void sub_1001392D0(uint64_t a1, void *a2)
{
  v5 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v4 = WeakRetained;
  if (WeakRetained)
  {
    sub_100131138(WeakRetained, v5);
  }
}

void sub_100139334(uint64_t a1, void *a2)
{
  v16 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  if (WeakRetained)
  {
    v4 = v16;
    if (qword_1002291E8 != -1)
    {
      dispatch_once(&qword_1002291E8, &stru_1001FC218);
    }

    if (_NRLogIsLevelEnabled())
    {
      if (qword_1002291E8 != -1)
      {
        dispatch_once(&qword_1002291E8, &stru_1001FC218);
      }

      _NRLogWithArgs(qword_1002291E0, 1, "%s%.30s:%-4d %@: Lost device: %@", "", "[NRDevicePairingManagerContext handleLostDeviceEndpoint:]", 643, WeakRetained, v4);
    }

    v5 = [NSUUID alloc];
    if (v4)
    {
      v6 = v4[2];
    }

    else
    {
      v6 = 0;
    }

    v7 = v6;
    v8 = [v5 initWithUUIDString:v7];

    if (v8)
    {
      v9 = [WeakRetained[5] objectForKeyedSubscript:v8];
      if (v9 && *(v9 + 8) == 1)
      {
        *(v9 + 8) = 0;
        v10 = v9;
        sub_1001236B4(WeakRetained, *(v9 + 32));
        v9 = v10;
      }
    }

    else
    {
      v11 = sub_100123258();
      IsLevelEnabled = _NRLogIsLevelEnabled();

      if (!IsLevelEnabled)
      {
        goto LABEL_15;
      }

      v13 = sub_100123258();
      if (v4)
      {
        v14 = v4[2];
      }

      else
      {
        v14 = 0;
      }

      v15 = v14;
      _NRLogWithArgs(v13, 1, "%s%.30s:%-4d %@: Ignoring device with unrecognized identifier format %@", "", "[NRDevicePairingManagerContext handleLostDeviceEndpoint:]", 647, WeakRetained, v15);

      v9 = v13;
    }

LABEL_15:
  }
}

void sub_10013953C(uint64_t a1, void *a2)
{
  v5 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v4 = WeakRetained;
  if (WeakRetained)
  {
    sub_100131138(WeakRetained, v5);
  }
}

BOOL sub_1001395A0(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = a3;
  type = xpc_get_type(v4);
  if (type == &_xpc_type_uuid)
  {
    v6 = [[NSUUID alloc] initWithUUIDBytes:xpc_uuid_get_bytes(v4)];
    [*(*(*(a1 + 40) + 8) + 40) addObject:v6];
  }

  else
  {
    *(*(*(a1 + 32) + 8) + 24) = 1;
  }

  return type == &_xpc_type_uuid;
}

void sub_100139650(uint64_t a1, void *a2)
{
  v4 = a2;
  type = xpc_get_type(v4);
  if (type == &_xpc_type_dictionary)
  {
    if (qword_1002291E8 != -1)
    {
      dispatch_once(&qword_1002291E8, &stru_1001FC218);
    }

    if (_NRLogIsLevelEnabled())
    {
      if (qword_1002291E8 != -1)
      {
        dispatch_once(&qword_1002291E8, &stru_1001FC218);
      }

      _NRLogWithArgs(qword_1002291E0, 2, "%s%.30s:%-4d Received XPC dict: %@", "", "[NRDevicePairingDirector addDevicePairingConnection:]_block_invoke", 4869, v4);
    }

    sub_100132A8C(*(a1 + 32), v4, *(a1 + 40));
  }

  else
  {
    if (type == &_xpc_type_error)
    {
      if (qword_1002291E8 != -1)
      {
        dispatch_once(&qword_1002291E8, &stru_1001FC218);
      }

      if (_NRLogIsLevelEnabled())
      {
        if (qword_1002291E8 != -1)
        {
          dispatch_once(&qword_1002291E8, &stru_1001FC218);
        }

        _NRLogWithArgs(qword_1002291E0, 16, "%s%.30s:%-4d Received XPC error: %@, invalidating connection %@", "", "[NRDevicePairingDirector addDevicePairingConnection:]_block_invoke", 4873, v4, *(a1 + 40));
      }
    }

    else
    {
      if (qword_1002291E8 != -1)
      {
        dispatch_once(&qword_1002291E8, &stru_1001FC218);
      }

      if (_NRLogIsLevelEnabled())
      {
        if (qword_1002291E8 != -1)
        {
          dispatch_once(&qword_1002291E8, &stru_1001FC218);
        }

        _NRLogWithArgs(qword_1002291E0, 16, "%s%.30s:%-4d Received unexpected XPC object: %@, invalidating connection %@", "", "[NRDevicePairingDirector addDevicePairingConnection:]_block_invoke", 4876, v4, *(a1 + 40));
      }
    }

    sub_100134330(*(a1 + 32), *(a1 + 40));
  }
}

void sub_1001399F8(id a1)
{
  v1 = os_log_create("com.apple.networkrelay", "");
  v2 = qword_100229200;
  qword_100229200 = v1;

  _objc_release_x1(v1, v2);
}

id sub_100139E64()
{
  if (qword_100229208 != -1)
  {
    dispatch_once(&qword_100229208, &stru_1001FC280);
  }

  v1 = qword_100229200;

  return v1;
}

void sub_100139EB8(id a1)
{
  v1 = MGCopyAnswer();
  v2 = qword_100229210;
  qword_100229210 = v1;

  if (qword_1002292D8 != -1)
  {
    dispatch_once(&qword_1002292D8, &stru_1001FC510);
  }

  if (_NRLogIsLevelEnabled())
  {
    if (qword_1002292D8 != -1)
    {
      dispatch_once(&qword_1002292D8, &stru_1001FC510);
    }

    _NRLogWithArgs(qword_1002292D0, 1, "%s%.30s:%-4d deviceBuildVersion is %@", "", "_NRCopyDeviceBuildVersion_block_invoke", 61, qword_100229210);
  }

  v3 = qword_100229210;
  if (!qword_100229210)
  {
    qword_100229210 = @"Unknown";
    v3 = @"Unknown";
  }

  if ([(__CFString *)v3 length]>= 0xFF)
  {
    v4 = [qword_100229210 substringToIndex:254];
    v5 = qword_100229210;
    qword_100229210 = v4;

    _objc_release_x1(v4, v5);
  }
}

void sub_100139FF8(id a1)
{
  v1 = os_log_create("com.apple.networkrelay", "");
  v2 = qword_1002292D0;
  qword_1002292D0 = v1;

  _objc_release_x1(v1, v2);
}

void sub_10013A03C(id a1)
{
  v1 = MGCopyAnswer();
  v2 = qword_100229220;
  qword_100229220 = v1;

  if (qword_1002292D8 != -1)
  {
    dispatch_once(&qword_1002292D8, &stru_1001FC510);
  }

  if (_NRLogIsLevelEnabled())
  {
    if (qword_1002292D8 != -1)
    {
      dispatch_once(&qword_1002292D8, &stru_1001FC510);
    }

    _NRLogWithArgs(qword_1002292D0, 1, "%s%.30s:%-4d deviceName is %@", "", "_NRCopyDeviceName_block_invoke", 79, qword_100229220);
  }

  v3 = qword_100229220;
  if (!qword_100229220)
  {
    qword_100229220 = @"Unknown";
    v3 = @"Unknown";
  }

  if ([(__CFString *)v3 length]>= 0x10000)
  {
    v4 = [qword_100229220 substringToIndex:0xFFFFLL];
    v5 = qword_100229220;
    qword_100229220 = v4;

    _objc_release_x1(v4, v5);
  }
}

void sub_10013A17C(id a1)
{
  v3 = 0;
  v2 = 4;
  if (sysctlbyname("kern.hv_vmm_present", &v3, &v2, 0, 0))
  {
    v1 = *__error();
    if (strerror_r(v1, __strerrbuf, 0x80uLL))
    {
      __strerrbuf[0] = 0;
    }

    if (qword_1002292D8 != -1)
    {
      dispatch_once(&qword_1002292D8, &stru_1001FC510);
    }

    if (_NRLogIsLevelEnabled())
    {
      if (qword_1002292D8 != -1)
      {
        dispatch_once(&qword_1002292D8, &stru_1001FC510);
      }

      _NRLogWithArgs(qword_1002292D0, 17, "Failed to read sysctl kern.hv_vmm_present: [%d] %s", v1, __strerrbuf);
    }
  }

  else
  {
    byte_100229230 = v3 != 0;
  }
}

void sub_10013A2B4(id a1)
{
  v1 = MGCopyAnswer();
  byte_100229240 = v1 == kCFBooleanTrue;
  if (v1)
  {

    CFRelease(v1);
  }
}

id sub_10013A310()
{
  if (qword_1002292D8 != -1)
  {
    dispatch_once(&qword_1002292D8, &stru_1001FC510);
  }

  v1 = qword_1002292D0;

  return v1;
}

uint64_t sub_10013A364(void *a1, void *a2, int a3)
{
  v5 = a1;
  v6 = a2;
  if (!v5)
  {
    v12 = sub_10013A310();
    IsLevelEnabled = _NRLogIsLevelEnabled();

    if (!IsLevelEnabled)
    {
      goto LABEL_23;
    }

    v14 = sub_10013A310();
    _NRLogWithArgs(v14, 17, "%s called with null filePath");
LABEL_22:

    goto LABEL_23;
  }

  if (![v5 length])
  {
    v15 = sub_10013A310();
    v16 = _NRLogIsLevelEnabled();

    if (!v16)
    {
      goto LABEL_23;
    }

    v14 = sub_10013A310();
    _NRLogWithArgs(v14, 17, "%s called with null filePath.length");
    goto LABEL_22;
  }

  if (!v6)
  {
    v17 = sub_10013A310();
    v18 = _NRLogIsLevelEnabled();

    if (v18)
    {
      v14 = sub_10013A310();
      _NRLogWithArgs(v14, 17, "%s called with null dictionaryToWrite");
      goto LABEL_22;
    }

LABEL_23:
    v10 = 0;
    goto LABEL_15;
  }

  v19 = 0;
  v7 = [NSPropertyListSerialization dataWithPropertyList:v6 format:200 options:0 error:&v19];
  v8 = v19;
  v9 = v8;
  if (!v7 || v8)
  {
    if (qword_1002292D8 != -1)
    {
      dispatch_once(&qword_1002292D8, &stru_1001FC510);
    }

    if (_NRLogIsLevelEnabled())
    {
      if (qword_1002292D8 != -1)
      {
        dispatch_once(&qword_1002292D8, &stru_1001FC510);
      }

      _NRLogWithArgs(qword_1002292D0, 17, "Failed to serialize %@: %@", v6, v9);
    }

    v10 = 0;
  }

  else
  {
    v10 = sub_100003984(v5, v7, a3);
  }

LABEL_15:
  return v10;
}

unint64_t sub_10013A56C()
{
  if (qword_100229258 != -1)
  {
    dispatch_once(&qword_100229258, &stru_1001FC380);
  }

    ;
  }

  if (qword_1002292D8 != -1)
  {
    dispatch_once(&qword_1002292D8, &stru_1001FC510);
  }

  if (_NRLogIsLevelEnabled())
  {
    if (qword_1002292D8 != -1)
    {
      dispatch_once(&qword_1002292D8, &stru_1001FC510);
    }

    _NRLogWithArgs(qword_1002292D0, 1, "%s%.30s:%-4d Returning sequence number: %llu", "", "NRDGetUniqueSequenceNumber", 310, i);
  }

  return i;
}

void sub_10013A678(id a1)
{
  info = 0;
  mach_timebase_info(&info);
  v1 = mach_boottime_usec();
  qword_100229250 = v1 + ((mach_continuous_time() * info.numer / (1000 * info.denom)) >> 1);
}

id sub_10013A6D4(void *a1)
{
  v1 = a1;
  [v1 UTF8String];
  v2 = NEHelperCacheCopyAppUUIDMapping();
  v3 = v2;
  if (v2 && xpc_get_type(v2) == &_xpc_type_array)
  {
    +[NSMutableArray array];
    applier[0] = _NSConcreteStackBlock;
    applier[1] = 3221225472;
    applier[2] = sub_10013A7D8;
    v4 = applier[3] = &unk_1001FC538;
    v7 = v4;
    xpc_array_apply(v3, applier);
    if (![v4 count])
    {

      v4 = 0;
    }
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

uint64_t sub_10013A7D8(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = a3;
  v5 = v4;
  if (v4 && xpc_get_type(v4) == &_xpc_type_uuid)
  {
    v6 = [[NSUUID alloc] initWithUUIDBytes:xpc_uuid_get_bytes(v5)];
    [*(a1 + 32) addObject:v6];
  }

  return 1;
}

void sub_10013A864(id a1)
{
  v1 = _NRCopySerialQueueAttr();
  v2 = dispatch_queue_create("com.apple.networkrelay.powerlog", v1);

  if (!v2)
  {
    v4 = sub_10013A310();
    IsLevelEnabled = _NRLogIsLevelEnabled();

    if (IsLevelEnabled)
    {
      v6 = sub_10013A310();
      _NRLogWithArgs(v6, 16, "%s%.30s:%-4d ABORTING: dispatch_queue_create(%s) failed", "", "nr_dispatch_queue_create", 196, "com.apple.networkrelay.powerlog");
    }

    v7 = _os_log_pack_size();
    v8 = &v11 - ((__chkstk_darwin() + 15) & 0xFFFFFFFFFFFFFFF0);
    v9 = __error();
    v10 = _os_log_pack_fill(v8, v7, *v9, &_mh_execute_header, "%{public}s dispatch_queue_create(%s) failed");
    *v10 = 136446466;
    *(v10 + 4) = "nr_dispatch_queue_create";
    *(v10 + 12) = 2080;
    *(v10 + 14) = "com.apple.networkrelay.powerlog";
    sub_10013A310();
    _NRLogAbortWithPack();
  }

  v3 = qword_100229260;
  qword_100229260 = v2;
}

uint64_t sub_10013A9E4(void *a1)
{
  v1 = a1;
  if (!v1)
  {
LABEL_27:
    v5 = 0;
    goto LABEL_38;
  }

  v2 = socket(2, 2, 0);
  if (v2 < 0)
  {
    LODWORD(v6) = *__error();
    v7 = &qword_100229000;
    if (qword_1002292D8 == -1)
    {
      goto LABEL_23;
    }

    goto LABEL_42;
  }

  v3 = v2;
  v16 = 0u;
  v17 = 0u;
  v4 = [v1 UTF8String];
  if (!v4)
  {
    v10 = sub_10013A310();
    IsLevelEnabled = _NRLogIsLevelEnabled();

    v7 = "_strict_strlcpy";
    if (IsLevelEnabled)
    {
      v12 = sub_10013A310();
      _NRLogWithArgs(v12, 16, "%s%.30s:%-4d ABORTING: strict_strlcpy called with NULL src", "", "_strict_strlcpy", 221);
    }

    v1 = _os_log_pack_size();
    v6 = &__strerrbuf[-((__chkstk_darwin() + 15) & 0xFFFFFFFFFFFFFFF0)];
    v13 = __error();
    v14 = _os_log_pack_fill(v6, v1, *v13, &_mh_execute_header, "%{public}s strict_strlcpy called with NULL src");
    *v14 = 136446210;
    *(v14 + 4) = "_strict_strlcpy";
    sub_10013A310();
    _NRLogAbortWithPack();
LABEL_42:
    dispatch_once(&qword_1002292D8, &stru_1001FC510);
LABEL_23:
    if (_NRLogIsLevelEnabled())
    {
      if (v7[91] != -1)
      {
        dispatch_once(&qword_1002292D8, &stru_1001FC510);
      }

      _NRLogWithArgs(qword_1002292D0, 17, "Failed to create socket for setting interface sub family - %d", v6);
    }

    goto LABEL_27;
  }

  LOBYTE(v16) = *v4;
  if (v16)
  {
    BYTE1(v16) = v4[1];
    if (BYTE1(v16))
    {
      BYTE2(v16) = v4[2];
      if (BYTE2(v16))
      {
        BYTE3(v16) = v4[3];
        if (BYTE3(v16))
        {
          BYTE4(v16) = v4[4];
          if (BYTE4(v16))
          {
            BYTE5(v16) = v4[5];
            if (BYTE5(v16))
            {
              BYTE6(v16) = v4[6];
              if (BYTE6(v16))
              {
                BYTE7(v16) = v4[7];
                if (BYTE7(v16))
                {
                  BYTE8(v16) = v4[8];
                  if (BYTE8(v16))
                  {
                    BYTE9(v16) = v4[9];
                    if (BYTE9(v16))
                    {
                      BYTE10(v16) = v4[10];
                      if (BYTE10(v16))
                      {
                        BYTE11(v16) = v4[11];
                        if (BYTE11(v16))
                        {
                          BYTE12(v16) = v4[12];
                          if (BYTE12(v16))
                          {
                            BYTE13(v16) = v4[13];
                            if (BYTE13(v16))
                            {
                              BYTE14(v16) = v4[14];
                              if (BYTE14(v16))
                              {
                                HIBYTE(v16) = 0;
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

  if (ioctl(v3, 0xC020699FuLL, &v16) < 0)
  {
    v8 = *__error();
    if (strerror_r(v8, __strerrbuf, 0x80uLL))
    {
      __strerrbuf[0] = 0;
    }

    if (qword_1002292D8 != -1)
    {
      dispatch_once(&qword_1002292D8, &stru_1001FC510);
    }

    if (_NRLogIsLevelEnabled())
    {
      if (qword_1002292D8 != -1)
      {
        dispatch_once(&qword_1002292D8, &stru_1001FC510);
      }

      _NRLogWithArgs(qword_1002292D0, 17, "ioctl SIOCGIFTYPE failed: [%d] %s", v8, __strerrbuf);
    }

    v5 = 0;
  }

  else
  {
    v5 = DWORD2(v17);
  }

  close(v3);
LABEL_38:

  return v5;
}

uint64_t sub_10013AD6C(void *a1, uint64_t *a2)
{
  v3 = a1;
  if (!v3)
  {
    v14 = sub_10013A310();
    IsLevelEnabled = _NRLogIsLevelEnabled();

    if (!IsLevelEnabled)
    {
      goto LABEL_69;
    }

    v15 = sub_10013A310();
    _NRLogWithArgs(v15, 17, "%s called with null intfName", "NRSetInterfaceSubfamily");

    goto LABEL_58;
  }

  v4 = socket(2, 2, 0);
  if (v4 < 0)
  {
    LODWORD(v11) = *__error();
    a2 = &qword_100229000;
    if (qword_1002292D8 == -1)
    {
      goto LABEL_54;
    }
  }

  else
  {
    v5 = v4;
    v44 = 0u;
    v45 = 0u;
    v6 = [v3 UTF8String];
    if (v6)
    {
      LOBYTE(v44) = *v6;
      if (v44)
      {
        BYTE1(v44) = v6[1];
        if (BYTE1(v44))
        {
          BYTE2(v44) = v6[2];
          if (BYTE2(v44))
          {
            BYTE3(v44) = v6[3];
            if (BYTE3(v44))
            {
              BYTE4(v44) = v6[4];
              if (BYTE4(v44))
              {
                BYTE5(v44) = v6[5];
                if (BYTE5(v44))
                {
                  BYTE6(v44) = v6[6];
                  if (BYTE6(v44))
                  {
                    BYTE7(v44) = v6[7];
                    if (BYTE7(v44))
                    {
                      BYTE8(v44) = v6[8];
                      if (BYTE8(v44))
                      {
                        BYTE9(v44) = v6[9];
                        if (BYTE9(v44))
                        {
                          BYTE10(v44) = v6[10];
                          if (BYTE10(v44))
                          {
                            BYTE11(v44) = v6[11];
                            if (BYTE11(v44))
                            {
                              BYTE12(v44) = v6[12];
                              if (BYTE12(v44))
                              {
                                BYTE13(v44) = v6[13];
                                if (BYTE13(v44))
                                {
                                  BYTE14(v44) = v6[14];
                                  if (BYTE14(v44))
                                  {
                                    HIBYTE(v44) = 0;
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

      LOBYTE(v45) = 1;
      if (ioctl(v5, 0x802069E3uLL, &v44) < 0)
      {
        v12 = *__error();
        if (strerror_r(v12, __strerrbuf, 0x80uLL))
        {
          __strerrbuf[0] = 0;
        }

        if (qword_1002292D8 != -1)
        {
          dispatch_once(&qword_1002292D8, &stru_1001FC510);
        }

        if (_NRLogIsLevelEnabled())
        {
          if (qword_1002292D8 != -1)
          {
            dispatch_once(&qword_1002292D8, &stru_1001FC510);
          }

          _NRLogWithArgs(qword_1002292D0, 17, "ioctl SIOCSIFISCOMPANIONLINK failed: [%d] %s", v12, __strerrbuf);
        }

        IsLevelEnabled = 0;
        goto LABEL_68;
      }

      if (qword_1002292D8 != -1)
      {
        dispatch_once(&qword_1002292D8, &stru_1001FC510);
      }

      if (_NRLogIsLevelEnabled())
      {
        if (qword_1002292D8 != -1)
        {
          dispatch_once(&qword_1002292D8, &stru_1001FC510);
        }

        _NRLogWithArgs(qword_1002292D0, 0, "%s%.30s:%-4d successfully marked interface %@ as companion link interface", "", "NRSetInterfaceSubfamily", 654, v3);
      }

      v7 = [v3 UTF8String];
      if (v7)
      {
        v26 = *v7;
        if (v26)
        {
          if (v7[1])
          {
            if (v7[2])
            {
              if (v7[3])
              {
                if (v7[4])
                {
                  if (v7[5])
                  {
                    if (v7[6])
                    {
                      if (v7[7])
                      {
                        if (v7[8])
                        {
                          if (v7[9])
                          {
                            if (v7[10])
                            {
                              if (v7[11])
                              {
                                if (v7[12])
                                {
                                  if (v7[13])
                                  {
                                    if (v7[14])
                                    {
                                      v41 = 0;
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

        DWORD2(v42) = a2;
        v8 = ioctl(v5, 0xC02069BCuLL, &v26);
        IsLevelEnabled = v8 >= 0;
        if (v8 < 0)
        {
          v10 = *__error();
          if (strerror_r(v10, __strerrbuf, 0x80uLL))
          {
            __strerrbuf[0] = 0;
          }

          if (qword_1002292D8 != -1)
          {
            dispatch_once(&qword_1002292D8, &stru_1001FC510);
          }

          if (_NRLogIsLevelEnabled())
          {
            if (qword_1002292D8 != -1)
            {
              dispatch_once(&qword_1002292D8, &stru_1001FC510);
            }

            _NRLogWithArgs(qword_1002292D0, 17, "ioctl SIOCSIFSUBFAMILY failed: [%d] %s", v10, __strerrbuf);
          }
        }

LABEL_68:
        close(v5);
        goto LABEL_69;
      }

      v21 = sub_10013A310();
      v22 = _NRLogIsLevelEnabled();

      a2 = "_strict_strlcpy";
      if (v22)
      {
        v23 = sub_10013A310();
        _NRLogWithArgs(v23, 16, "%s%.30s:%-4d ABORTING: strict_strlcpy called with NULL src", "", "_strict_strlcpy", 221);
      }

      v3 = _os_log_pack_size();
      v11 = &v26 - ((__chkstk_darwin() + 15) & 0xFFFFFFFFFFFFFFF0);
      v24 = __error();
      v25 = _os_log_pack_fill(v11, v3, *v24, &_mh_execute_header, "%{public}s strict_strlcpy called with NULL src");
      *v25 = 136446210;
      *(v25 + 4) = "_strict_strlcpy";
    }

    else
    {
      v16 = sub_10013A310();
      v17 = _NRLogIsLevelEnabled();

      if (v17)
      {
        v18 = sub_10013A310();
        _NRLogWithArgs(v18, 16, "%s%.30s:%-4d ABORTING: strict_strlcpy called with NULL src", "", "_strict_strlcpy", 221);
      }

      v3 = _os_log_pack_size();
      v11 = &v26 - ((__chkstk_darwin() + 15) & 0xFFFFFFFFFFFFFFF0);
      v19 = __error();
      v20 = _os_log_pack_fill(v11, v3, *v19, &_mh_execute_header, "%{public}s strict_strlcpy called with NULL src");
      *v20 = 136446210;
      *(v20 + 4) = "_strict_strlcpy";
    }

    sub_10013A310();
    _NRLogAbortWithPack();
  }

  dispatch_once(&qword_1002292D8, &stru_1001FC510);
LABEL_54:
  if (_NRLogIsLevelEnabled())
  {
    if (a2[91] != -1)
    {
      dispatch_once(&qword_1002292D8, &stru_1001FC510);
    }

    _NRLogWithArgs(qword_1002292D0, 17, "Failed to create socket for setting interface sub family - %d", v11);
  }

LABEL_58:
  IsLevelEnabled = 0;
LABEL_69:

  return IsLevelEnabled;
}

BOOL sub_10013B488(void *a1, const char *a2)
{
  v5 = a1;
  if (v5)
  {
    v6 = socket(2, 2, 0);
    if ((v6 & 0x80000000) == 0)
    {
      LODWORD(v7) = v6;
      v22 = 0u;
      v23 = 0u;
      v8 = [v5 UTF8String];
      if (v8)
      {
        LOBYTE(v22) = *v8;
        if (v22)
        {
          BYTE1(v22) = v8[1];
          if (BYTE1(v22))
          {
            BYTE2(v22) = v8[2];
            if (BYTE2(v22))
            {
              BYTE3(v22) = v8[3];
              if (BYTE3(v22))
              {
                BYTE4(v22) = v8[4];
                if (BYTE4(v22))
                {
                  BYTE5(v22) = v8[5];
                  if (BYTE5(v22))
                  {
                    BYTE6(v22) = v8[6];
                    if (BYTE6(v22))
                    {
                      BYTE7(v22) = v8[7];
                      if (BYTE7(v22))
                      {
                        BYTE8(v22) = v8[8];
                        if (BYTE8(v22))
                        {
                          BYTE9(v22) = v8[9];
                          if (BYTE9(v22))
                          {
                            BYTE10(v22) = v8[10];
                            if (BYTE10(v22))
                            {
                              BYTE11(v22) = v8[11];
                              if (BYTE11(v22))
                              {
                                BYTE12(v22) = v8[12];
                                if (BYTE12(v22))
                                {
                                  BYTE13(v22) = v8[13];
                                  if (BYTE13(v22))
                                  {
                                    BYTE14(v22) = v8[14];
                                    if (BYTE14(v22))
                                    {
                                      HIBYTE(v22) = 0;
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

        LODWORD(v23) = a2;
        v9 = ioctl(v7, 0xC02069DCuLL, &v22);
        v2 = v9 >= 0;
        if (v9 < 0)
        {
          v11 = *__error();
          if (strerror_r(v11, __strerrbuf, 0x80uLL))
          {
            __strerrbuf[0] = 0;
          }

          if (qword_1002292D8 != -1)
          {
            dispatch_once(&qword_1002292D8, &stru_1001FC510);
          }

          if (_NRLogIsLevelEnabled())
          {
            if (qword_1002292D8 != -1)
            {
              dispatch_once(&qword_1002292D8, &stru_1001FC510);
            }

            _NRLogWithArgs(qword_1002292D0, 17, "ioctl SIOCSIFPEEREGRESSFUNCTIONALTYPE failed: [%d] %s", v11, __strerrbuf);
          }

          goto LABEL_41;
        }

        v3 = &qword_100229000;
        if (qword_1002292D8 == -1)
        {
LABEL_22:
          if (_NRLogIsLevelEnabled())
          {
            if (v3[91] != -1)
            {
              dispatch_once(&qword_1002292D8, &stru_1001FC510);
            }

            _NRLogWithArgs(qword_1002292D0, 1, "%s%.30s:%-4d Set peer egress interface type for %@ to %u", "", "NRSetInterfacePeerDeviceEgressFunctionalType", 695, v5, a2);
          }

LABEL_41:
          close(v7);
          goto LABEL_42;
        }
      }

      else
      {
        v16 = sub_10013A310();
        IsLevelEnabled = _NRLogIsLevelEnabled();

        a2 = "_strict_strlcpy";
        if (IsLevelEnabled)
        {
          v18 = sub_10013A310();
          _NRLogWithArgs(v18, 16, "%s%.30s:%-4d ABORTING: strict_strlcpy called with NULL src", "", "_strict_strlcpy", 221);
        }

        v5 = _os_log_pack_size();
        v7 = &__strerrbuf[-((__chkstk_darwin() + 15) & 0xFFFFFFFFFFFFFFF0)];
        v19 = __error();
        v20 = _os_log_pack_fill(v7, v5, *v19, &_mh_execute_header, "%{public}s strict_strlcpy called with NULL src");
        *v20 = 136446210;
        *(v20 + 4) = "_strict_strlcpy";
        sub_10013A310();
        _NRLogAbortWithPack();
      }

      dispatch_once(&qword_1002292D8, &stru_1001FC510);
      goto LABEL_22;
    }

    v10 = *__error();
    if (qword_1002292D8 != -1)
    {
      dispatch_once(&qword_1002292D8, &stru_1001FC510);
    }

    if (_NRLogIsLevelEnabled())
    {
      if (qword_1002292D8 != -1)
      {
        dispatch_once(&qword_1002292D8, &stru_1001FC510);
      }

      _NRLogWithArgs(qword_1002292D0, 17, "Failed to create socket for setting interface peer family - %d", v10);
    }
  }

  else
  {
    v13 = sub_10013A310();
    v14 = _NRLogIsLevelEnabled();

    if (v14)
    {
      v15 = sub_10013A310();
      _NRLogWithArgs(v15, 17, "%s called with null intfName", "NRSetInterfacePeerDeviceEgressFunctionalType");
    }
  }

  v2 = 0;
LABEL_42:

  return v2;
}

uint64_t sub_10013B900(void *a1)
{
  v1 = a1;
  if (!v1)
  {
    v11 = sub_10013A310();
    IsLevelEnabled = _NRLogIsLevelEnabled();

    if (!IsLevelEnabled)
    {
      goto LABEL_36;
    }

    v12 = sub_10013A310();
    _NRLogWithArgs(v12, 17, "%s called with null intfName", "NRSetInterfaceNoACKPrioritization");

    goto LABEL_35;
  }

  v2 = socket(2, 2, 0);
  if (v2 < 0)
  {
    LODWORD(v8) = *__error();
    v9 = &qword_100229000;
    if (qword_1002292D8 == -1)
    {
      goto LABEL_31;
    }

    goto LABEL_42;
  }

  v3 = v2;
  v19 = 0u;
  v20 = 0u;
  v4 = [v1 UTF8String];
  if (!v4)
  {
    v13 = sub_10013A310();
    v14 = _NRLogIsLevelEnabled();

    v9 = "_strict_strlcpy";
    if (v14)
    {
      v15 = sub_10013A310();
      _NRLogWithArgs(v15, 16, "%s%.30s:%-4d ABORTING: strict_strlcpy called with NULL src", "", "_strict_strlcpy", 221);
    }

    v1 = _os_log_pack_size();
    v8 = &__strerrbuf[-((__chkstk_darwin() + 15) & 0xFFFFFFFFFFFFFFF0)];
    v16 = __error();
    v17 = _os_log_pack_fill(v8, v1, *v16, &_mh_execute_header, "%{public}s strict_strlcpy called with NULL src");
    *v17 = 136446210;
    *(v17 + 4) = "_strict_strlcpy";
    sub_10013A310();
    _NRLogAbortWithPack();
LABEL_42:
    dispatch_once(&qword_1002292D8, &stru_1001FC510);
LABEL_31:
    if (_NRLogIsLevelEnabled())
    {
      if (v9[91] != -1)
      {
        dispatch_once(&qword_1002292D8, &stru_1001FC510);
      }

      _NRLogWithArgs(qword_1002292D0, 17, "Failed to create socket for setting interface sub family - %d", v8);
    }

LABEL_35:
    IsLevelEnabled = 0;
    goto LABEL_36;
  }

  LOBYTE(v19) = *v4;
  if (v19)
  {
    BYTE1(v19) = v4[1];
    if (BYTE1(v19))
    {
      BYTE2(v19) = v4[2];
      if (BYTE2(v19))
      {
        BYTE3(v19) = v4[3];
        if (BYTE3(v19))
        {
          BYTE4(v19) = v4[4];
          if (BYTE4(v19))
          {
            BYTE5(v19) = v4[5];
            if (BYTE5(v19))
            {
              BYTE6(v19) = v4[6];
              if (BYTE6(v19))
              {
                BYTE7(v19) = v4[7];
                if (BYTE7(v19))
                {
                  BYTE8(v19) = v4[8];
                  if (BYTE8(v19))
                  {
                    BYTE9(v19) = v4[9];
                    if (BYTE9(v19))
                    {
                      BYTE10(v19) = v4[10];
                      if (BYTE10(v19))
                      {
                        BYTE11(v19) = v4[11];
                        if (BYTE11(v19))
                        {
                          BYTE12(v19) = v4[12];
                          if (BYTE12(v19))
                          {
                            BYTE13(v19) = v4[13];
                            if (BYTE13(v19))
                            {
                              BYTE14(v19) = v4[14];
                              if (BYTE14(v19))
                              {
                                HIBYTE(v19) = 0;
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

  LODWORD(v20) = 1;
  v5 = ioctl(v3, 0xC02069D0uLL, &v19);
  IsLevelEnabled = v5 >= 0;
  if (v5 < 0)
  {
    v7 = *__error();
    if (strerror_r(v7, __strerrbuf, 0x80uLL))
    {
      __strerrbuf[0] = 0;
    }

    if (qword_1002292D8 != -1)
    {
      dispatch_once(&qword_1002292D8, &stru_1001FC510);
    }

    if (_NRLogIsLevelEnabled())
    {
      if (qword_1002292D8 != -1)
      {
        dispatch_once(&qword_1002292D8, &stru_1001FC510);
      }

      _NRLogWithArgs(qword_1002292D0, 17, "ioctl SIOCSIFNOACKPRIO failed: [%d] %s", v7, __strerrbuf);
    }
  }

  close(v3);
LABEL_36:

  return IsLevelEnabled;
}

id sub_10013BCD8(void *a1)
{
  v1 = a1;
  if (!v1)
  {
    v11 = sub_10013A310();
    IsLevelEnabled = _NRLogIsLevelEnabled();

    if (IsLevelEnabled)
    {
      v13 = sub_10013A310();
      _NRLogWithArgs(v13, 17, "%s called with null intfName", "NRCopyNetIfUUID");
    }

    goto LABEL_54;
  }

  v2 = socket(2, 2, 0);
  if (v2 < 0)
  {
    LODWORD(v5) = *__error();
    if (strerror_r(v5, __strerrbuf, 0x80uLL))
    {
      __strerrbuf[0] = 0;
    }

    v6 = &qword_100229000;
    if (qword_1002292D8 == -1)
    {
      goto LABEL_31;
    }

    goto LABEL_61;
  }

  v3 = v2;
  v4 = [v1 UTF8String];
  if (!v4)
  {
    v14 = sub_10013A310();
    v15 = _NRLogIsLevelEnabled();

    v6 = "_strict_strlcpy";
    if (v15)
    {
      v16 = sub_10013A310();
      _NRLogWithArgs(v16, 16, "%s%.30s:%-4d ABORTING: strict_strlcpy called with NULL src", "", "_strict_strlcpy", 221);
    }

    v1 = _os_log_pack_size();
    v5 = &v19 - ((__chkstk_darwin() + 15) & 0xFFFFFFFFFFFFFFF0);
    v17 = __error();
    v18 = _os_log_pack_fill(v5, v1, *v17, &_mh_execute_header, "%{public}s strict_strlcpy called with NULL src");
    *v18 = 136446210;
    *(v18 + 4) = "_strict_strlcpy";
    sub_10013A310();
    _NRLogAbortWithPack();
LABEL_61:
    dispatch_once(&qword_1002292D8, &stru_1001FC510);
LABEL_31:
    if (_NRLogIsLevelEnabled())
    {
      if (v6[91] != -1)
      {
        dispatch_once(&qword_1002292D8, &stru_1001FC510);
      }

      _NRLogWithArgs(qword_1002292D0, 17, "Failed to create socket for SIOCGIFNEXUS: [%d] %s", v5, __strerrbuf);
    }

    goto LABEL_54;
  }

  v19 = *v4;
  if (v19)
  {
    if (v4[1])
    {
      if (v4[2])
      {
        if (v4[3])
        {
          if (v4[4])
          {
            if (v4[5])
            {
              if (v4[6])
              {
                if (v4[7])
                {
                  if (v4[8])
                  {
                    if (v4[9])
                    {
                      if (v4[10])
                      {
                        if (v4[11])
                        {
                          if (v4[12])
                          {
                            if (v4[13])
                            {
                              if (v4[14])
                              {
                                v34 = 0;
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

  if (ioctl(v3, 0xC06069C3uLL, &v19) < 0)
  {
    v7 = __error();
    v8 = *v7;
    if (v8 == 6)
    {
      if (strerror_r(6, __strerrbuf, 0x80uLL))
      {
        __strerrbuf[0] = 0;
      }

      if (qword_1002292D8 != -1)
      {
        dispatch_once(&qword_1002292D8, &stru_1001FC510);
      }

      if (_NRLogIsLevelEnabled())
      {
        if (qword_1002292D8 != -1)
        {
          dispatch_once(&qword_1002292D8, &stru_1001FC510);
        }

        _NRLogWithArgs(qword_1002292D0, 16, "%s%.30s:%-4d Failed to ioctl SIOCGIFNEXUS for %@: [%d] %s", "", "NRCopyNetIfUUID", 831, v1, 6, __strerrbuf);
      }
    }

    else
    {
      if (strerror_r(*v7, __strerrbuf, 0x80uLL))
      {
        __strerrbuf[0] = 0;
      }

      if (qword_1002292D8 != -1)
      {
        dispatch_once(&qword_1002292D8, &stru_1001FC510);
      }

      if (_NRLogIsLevelEnabled())
      {
        if (qword_1002292D8 != -1)
        {
          dispatch_once(&qword_1002292D8, &stru_1001FC510);
        }

        _NRLogWithArgs(qword_1002292D0, 17, "Failed to ioctl SIOCGIFNEXUS for %@: [%d] %s", v1, v8, __strerrbuf);
      }
    }

    close(v3);
    goto LABEL_54;
  }

  close(v3);
  if (uuid_is_null(v35))
  {
    if (qword_1002292D8 != -1)
    {
      dispatch_once(&qword_1002292D8, &stru_1001FC510);
    }

    if (_NRLogIsLevelEnabled())
    {
      if (qword_1002292D8 != -1)
      {
        dispatch_once(&qword_1002292D8, &stru_1001FC510);
      }

      _NRLogWithArgs(qword_1002292D0, 16, "%s%.30s:%-4d Nexus UUID is NULL for %@", "", "NRCopyNetIfUUID", 839, v1);
    }

LABEL_54:
    v9 = 0;
    goto LABEL_55;
  }

  v9 = [[NSUUID alloc] initWithUUIDBytes:v35];
LABEL_55:

  return v9;
}

void sub_10013C2A8(void *a1, void *a2, void *a3, int a4, void *a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  v13 = a1;
  v14 = a2;
  v15 = a3;
  v16 = 0;
  if (a5 && a4)
  {
    v29 = &a9;
    v17 = a5;
    v16 = [[NSString alloc] initWithFormat:v17 arguments:&a9];
  }

  objc_opt_self();
  if (qword_1002294C8 != -1)
  {
    dispatch_once(&qword_1002294C8, &stru_1001FD250);
  }

  v18 = qword_1002294C0;
  v23[0] = _NSConcreteStackBlock;
  v23[1] = 3221225472;
  v23[2] = sub_10013C438;
  v23[3] = &unk_1001FC3F0;
  v24 = v13;
  v25 = v14;
  v28 = a4;
  v26 = v15;
  v27 = v16;
  v19 = v16;
  v20 = v15;
  v21 = v14;
  v22 = v13;
  sub_1001816DC(v18, v23);
}

void sub_10013C438(uint64_t a1)
{
  v2 = dispatch_semaphore_create(0);
  if (objc_opt_class())
  {
    v3 = objc_alloc_init(SDRDiagnosticReporter);
    v4 = *(a1 + 32);
    v5 = *(a1 + 40);
    v6 = *(a1 + 48);
    v7 = +[NSProcessInfo processInfo];
    v8 = [v7 processName];
    v9 = [v3 signatureWithDomain:@"NetworkRelay" type:v4 subType:v5 subtypeContext:v6 detectedProcess:v8 triggerThresholdValues:0];

    if (qword_1002292D8 != -1)
    {
      dispatch_once(&qword_1002292D8, &stru_1001FC510);
    }

    if (_NRLogIsLevelEnabled())
    {
      if (qword_1002292D8 != -1)
      {
        dispatch_once(&qword_1002292D8, &stru_1001FC510);
      }

      _NRLogWithArgs(qword_1002292D0, 1, "%s%.30s:%-4d Trigger ABC report signature %@", "", "NRTriggerABC_block_invoke", 874, v9);
    }

    v23[0] = _NSConcreteStackBlock;
    v23[1] = 3221225472;
    v23[2] = sub_10013C820;
    v23[3] = &unk_1001FC3C8;
    v24 = v9;
    v25 = v2;
    v10 = v9;
    [v3 snapshotWithSignature:v10 duration:0 event:0 payload:v23 reply:0.0];
  }

  else
  {
    if (qword_1002292D8 != -1)
    {
      dispatch_once(&qword_1002292D8, &stru_1001FC510);
    }

    if (_NRLogIsLevelEnabled())
    {
      if (qword_1002292D8 != -1)
      {
        dispatch_once(&qword_1002292D8, &stru_1001FC510);
      }

      _NRLogWithArgs(qword_1002292D0, 16, "%s%.30s:%-4d SystemDiagnosticReporter not available", "", "NRTriggerABC_block_invoke", 891);
    }
  }

  if (*(a1 + 64) == 1)
  {
    if (_NRIsAppleInternal())
    {
      v11 = dispatch_time(0, 100000000);
      dispatch_semaphore_wait(v2, v11);
    }

    v12 = sub_10013A310();
    IsLevelEnabled = _NRLogIsLevelEnabled();

    if (IsLevelEnabled)
    {
      v14 = sub_10013A310();
      v15 = v14;
      v16 = *(a1 + 56);
      if (!v16)
      {
        v16 = &stru_1001FDE68;
      }

      _NRLogWithArgs(v14, 16, "%s%.30s:%-4d ABORTING: %@", "", "NRTriggerABC_block_invoke", 902, v16);
    }

    v17 = _os_log_pack_size();
    v18 = &v23[-1] - ((__chkstk_darwin() + 15) & 0xFFFFFFFFFFFFFFF0);
    v19 = __error();
    v20 = _os_log_pack_fill(v18, v17, *v19, &_mh_execute_header, "%{public}s %@");
    v21 = *(a1 + 56);
    if (!v21)
    {
      v21 = &stru_1001FDE68;
    }

    *v20 = 136446466;
    *(v20 + 4) = "NRTriggerABC_block_invoke";
    *(v20 + 12) = 2112;
    *(v20 + 14) = v21;
    sub_10013A310();
    _NRLogAbortWithPack();
  }
}

void sub_10013C820(uint64_t a1, void *a2)
{
  v9 = a2;
  v3 = [v9 objectForKeyedSubscript:kSymptomDiagnosticReplySuccess];
  v4 = [v3 BOOLValue];

  if (v4)
  {
    if (qword_1002292D8 != -1)
    {
      dispatch_once(&qword_1002292D8, &stru_1001FC510);
    }

    if (_NRLogIsLevelEnabled())
    {
      if (qword_1002292D8 != -1)
      {
        dispatch_once(&qword_1002292D8, &stru_1001FC510);
      }

      _NRLogWithArgs(qword_1002292D0, 1, "%s%.30s:%-4d ABC report sent for signature %@", "", "NRTriggerABC_block_invoke_2", 881, *(a1 + 32));
    }
  }

  else
  {
    v5 = [v9 objectForKeyedSubscript:kSymptomDiagnosticReplyReasonString];
    v6 = [v9 objectForKeyedSubscript:kSymptomDiagnosticReplyReason];
    if (qword_1002292D8 != -1)
    {
      dispatch_once(&qword_1002292D8, &stru_1001FC510);
    }

    if (_NRLogIsLevelEnabled())
    {
      if (qword_1002292D8 != -1)
      {
        dispatch_once(&qword_1002292D8, &stru_1001FC510);
      }

      v7 = *(a1 + 32);
      v8 = qword_1002292D0;
      _NRLogWithArgs(v8, 16, "%s%.30s:%-4d Failed to send ABC report for signature %@ with reason %@ (%d)", "", "NRTriggerABC_block_invoke_2", 886, v7, v5, [v6 intValue]);
    }
  }

  dispatch_semaphore_signal(*(a1 + 40));
}

BOOL sub_10013CA2C()
{
  v3 = 0;
  v0 = sysctlbyname("net.link.generic.system.companion_sndbuf_limit", 0, 0, &v3, 4uLL);
  if (v0 < 0)
  {
    v1 = *__error();
    if (strerror_r(v1, __strerrbuf, 0x80uLL))
    {
      __strerrbuf[0] = 0;
    }

    if (qword_1002292D8 != -1)
    {
      dispatch_once(&qword_1002292D8, &stru_1001FC510);
    }

    if (_NRLogIsLevelEnabled())
    {
      if (qword_1002292D8 != -1)
      {
        dispatch_once(&qword_1002292D8, &stru_1001FC510);
      }

      _NRLogWithArgs(qword_1002292D0, 16, "%s%.30s:%-4d sysctl net.link.generic.system.companion_sndbuf_limit -> 0 failed: [%d] %s", "", "NRRecoverCompanionLinkFlows", 932, v1, __strerrbuf);
    }
  }

  return v0 >= 0;
}

id sub_10013CB6C(uint64_t a1, char a2)
{
  v4 = [[NSString alloc] initWithFormat:@"unknown:%d", a1];
  bzero(buffer, 0x400uLL);
  if (a1 >= 1 && proc_pidpath(a1, buffer, 0x400u) >= 1 && buffer[0])
  {
    v5 = [[NSString alloc] initWithFormat:@"%s:%d", buffer, a1];

    v4 = v5;
  }

  if ((a2 & 1) == 0)
  {
    v6 = [v4 componentsSeparatedByString:@"/"];
    v7 = [v6 lastObject];

    return v7;
  }

  return v4;
}

void sub_10013CC88(void *a1)
{
  v1 = a1;
  if (v1)
  {
    v2 = socket(30, 2, 0);
    if ((v2 & 0x80000000) == 0)
    {
      LODWORD(v3) = v2;
      v19 = 0u;
      v20 = 0u;
      v4 = [v1 UTF8String];
      if (v4)
      {
        LOBYTE(v19) = *v4;
        if (v19)
        {
          BYTE1(v19) = v4[1];
          if (BYTE1(v19))
          {
            BYTE2(v19) = v4[2];
            if (BYTE2(v19))
            {
              BYTE3(v19) = v4[3];
              if (BYTE3(v19))
              {
                BYTE4(v19) = v4[4];
                if (BYTE4(v19))
                {
                  BYTE5(v19) = v4[5];
                  if (BYTE5(v19))
                  {
                    BYTE6(v19) = v4[6];
                    if (BYTE6(v19))
                    {
                      BYTE7(v19) = v4[7];
                      if (BYTE7(v19))
                      {
                        BYTE8(v19) = v4[8];
                        if (BYTE8(v19))
                        {
                          BYTE9(v19) = v4[9];
                          if (BYTE9(v19))
                          {
                            BYTE10(v19) = v4[10];
                            if (BYTE10(v19))
                            {
                              BYTE11(v19) = v4[11];
                              if (BYTE11(v19))
                              {
                                BYTE12(v19) = v4[12];
                                if (BYTE12(v19))
                                {
                                  BYTE13(v19) = v4[13];
                                  if (BYTE13(v19))
                                  {
                                    BYTE14(v19) = v4[14];
                                    if (BYTE14(v19))
                                    {
                                      HIBYTE(v19) = 0;
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

        LOBYTE(v20) = 4;
        BYTE3(v20) = 0;
        if (ioctl(v3, 0xC02069A9uLL, &v19) < 0)
        {
          v7 = __error();
          v8 = *v7;
          if (*v7 != 6)
          {
            if (strerror_r(*v7, __strerrbuf, 0x80uLL))
            {
              __strerrbuf[0] = 0;
            }

            if (qword_1002292D8 != -1)
            {
              dispatch_once(&qword_1002292D8, &stru_1001FC510);
            }

            if (_NRLogIsLevelEnabled())
            {
              if (qword_1002292D8 != -1)
              {
                dispatch_once(&qword_1002292D8, &stru_1001FC510);
              }

              v9 = qword_1002292D0;
              _NRLogWithArgs(v9, 17, "Failed to set interface availability for interface %s: [%d] %s", [v1 UTF8String], v8, __strerrbuf);
            }

            goto LABEL_42;
          }

          if (strerror_r(6, __strerrbuf, 0x80uLL))
          {
            __strerrbuf[0] = 0;
          }

          if (qword_1002292D8 != -1)
          {
            dispatch_once(&qword_1002292D8, &stru_1001FC510);
          }

          if (_NRLogIsLevelEnabled())
          {
            if (qword_1002292D8 != -1)
            {
              dispatch_once(&qword_1002292D8, &stru_1001FC510);
            }

            v6 = qword_1002292D0;
            [v1 UTF8String];
            _NRLogWithArgs(v6, 16, "%s%.30s:%-4d Failed to set interface availability for interface %s: [%d] %s", "");
            goto LABEL_41;
          }

LABEL_42:
          close(v3);
          goto LABEL_43;
        }

        v5 = &qword_100229000;
        if (qword_1002292D8 == -1)
        {
LABEL_22:
          if (_NRLogIsLevelEnabled())
          {
            if (v5[91] != -1)
            {
              dispatch_once(&qword_1002292D8, &stru_1001FC510);
            }

            v6 = qword_1002292D0;
            [v1 UTF8String];
            _NRLogWithArgs(v6, 0, "%s%.30s:%-4d Set interface availability on interface %s to %d (0 implies 'available')");
LABEL_41:

            goto LABEL_42;
          }

          goto LABEL_42;
        }
      }

      else
      {
        v13 = sub_10013A310();
        IsLevelEnabled = _NRLogIsLevelEnabled();

        v5 = "_strict_strlcpy";
        if (IsLevelEnabled)
        {
          v15 = sub_10013A310();
          _NRLogWithArgs(v15, 16, "%s%.30s:%-4d ABORTING: strict_strlcpy called with NULL src", "", "_strict_strlcpy", 221);
        }

        v1 = _os_log_pack_size();
        v3 = &__strerrbuf[-((__chkstk_darwin() + 15) & 0xFFFFFFFFFFFFFFF0)];
        v16 = __error();
        v17 = _os_log_pack_fill(v3, v1, *v16, &_mh_execute_header, "%{public}s strict_strlcpy called with NULL src");
        *v17 = 136446210;
        *(v17 + 4) = "_strict_strlcpy";
        sub_10013A310();
        _NRLogAbortWithPack();
      }

      dispatch_once(&qword_1002292D8, &stru_1001FC510);
      goto LABEL_22;
    }

    if (qword_1002292D8 != -1)
    {
      dispatch_once(&qword_1002292D8, &stru_1001FC510);
    }

    if (_NRLogIsLevelEnabled())
    {
      if (qword_1002292D8 != -1)
      {
        dispatch_once(&qword_1002292D8, &stru_1001FC510);
      }

      _NRLogWithArgs(qword_1002292D0, 17, "Failed to create socket");
    }
  }

  else
  {
    v10 = sub_10013A310();
    v11 = _NRLogIsLevelEnabled();

    if (v11)
    {
      v12 = sub_10013A310();
      _NRLogWithArgs(v12, 17, "%s called with null intfName", "NRDSetInterfaceAvailabilityForInterfaceName");
    }
  }

LABEL_43:
}

id sub_10013D1EC(void *a1, void *a2)
{
  v3 = a1;
  v4 = a2;
  v5 = v4;
  v6 = 0;
  if (v3 && v4)
  {
    if ([v4 length] && objc_msgSend(v3, "length"))
    {
      CCHmac(4u, [v5 bytes], objc_msgSend(v5, "length"), objc_msgSend(v3, "bytes"), objc_msgSend(v3, "length"), &v8);
      v6 = [[NSData alloc] initWithBytes:&v8 length:64];
    }

    else
    {
      v6 = 0;
    }
  }

  return v6;
}

id sub_10013D308(void *a1, unsigned int a2, int a3)
{
  v5 = a1;
  v6 = v5;
  if (v5)
  {
    v7 = [v5 addressData];
    v8 = [v7 length];
    v21 = 0;
    v22 = 0uLL;
    v23 = 0;
    [v7 getBytes:&v21 length:28];
    if (v8 < 0x10 || v8 < v21)
    {
      if (qword_1002292D8 != -1)
      {
        dispatch_once(&qword_1002292D8, &stru_1001FC510);
      }

      if (_NRLogIsLevelEnabled())
      {
        if (qword_1002292D8 != -1)
        {
          dispatch_once(&qword_1002292D8, &stru_1001FC510);
        }

        _NRLogWithArgs(qword_1002292D0, 16, "%s%.30s:%-4d addressData too short %@ for %@", "", "NRCreateAddressData", 1037, v7, v6);
      }
    }

    else
    {
      v9 = __rev16(a2);
      if (BYTE1(v21) == 2)
      {
        if (v21 > 0xFu)
        {
          *v20 = v9;
          *&v20[2] = HIDWORD(v21);
          if (!a3)
          {
            v18 = 0uLL;
            v19 = 0;
            v17 = 2;
            v12 = [[NSMutableData alloc] initWithBytes:&v17 length:1];
            LODWORD(v18) = *v20;
            WORD2(v18) = *&v20[4];
            [v12 appendBytes:&v18 length:6];
            goto LABEL_17;
          }

          v10 = [NSData alloc];
          v11 = 6;
LABEL_42:
          v12 = [v10 initWithBytes:v20 length:v11];
          goto LABEL_17;
        }

        if (qword_1002292D8 != -1)
        {
          dispatch_once(&qword_1002292D8, &stru_1001FC510);
        }

        if (_NRLogIsLevelEnabled())
        {
          if (qword_1002292D8 != -1)
          {
            dispatch_once(&qword_1002292D8, &stru_1001FC510);
          }

          _NRLogWithArgs(qword_1002292D0, 16, "%s%.30s:%-4d addressData4 too short %@ for %@", "", "NRCreateAddressData", 1063, v7, v6);
        }
      }

      else if (BYTE1(v21) == 30)
      {
        if (v8 >= 0x1C && v21 > 0x1Bu)
        {
          *v20 = v9;
          *&v20[2] = v22;
          if (!a3)
          {
            v18 = 0uLL;
            v19 = 0;
            v17 = 30;
            v12 = [[NSMutableData alloc] initWithBytes:&v17 length:1];
            v18 = *v20;
            v19 = *&v20[16];
            [v12 appendBytes:&v18 length:18];
            goto LABEL_17;
          }

          v10 = [NSData alloc];
          v11 = 18;
          goto LABEL_42;
        }

        if (qword_1002292D8 != -1)
        {
          dispatch_once(&qword_1002292D8, &stru_1001FC510);
        }

        if (_NRLogIsLevelEnabled())
        {
          if (qword_1002292D8 != -1)
          {
            dispatch_once(&qword_1002292D8, &stru_1001FC510);
          }

          _NRLogWithArgs(qword_1002292D0, 16, "%s%.30s:%-4d addressData6 too short %@ for %@", "", "NRCreateAddressData", 1044, v7, v6);
        }
      }

      else
      {
        if (qword_1002292D8 != -1)
        {
          dispatch_once(&qword_1002292D8, &stru_1001FC510);
        }

        if (_NRLogIsLevelEnabled())
        {
          if (qword_1002292D8 != -1)
          {
            dispatch_once(&qword_1002292D8, &stru_1001FC510);
          }

          _NRLogWithArgs(qword_1002292D0, 17, "addressData has unknown address family %u");
        }
      }
    }

    v12 = 0;
LABEL_17:

    goto LABEL_18;
  }

  v14 = sub_10013A310();
  IsLevelEnabled = _NRLogIsLevelEnabled();

  if (IsLevelEnabled)
  {
    v16 = sub_10013A310();
    _NRLogWithArgs(v16, 17, "%s called with null addressEndpoint", "NRCreateAddressData");
  }

  v12 = 0;
LABEL_18:

  return v12;
}

id sub_10013D760(void *a1, int a2, int a3, int a4)
{
  v7 = a1;
  v8 = v7;
  if (v7)
  {
    v9 = v7;
    v10 = v9;
    if (!a2)
    {
      goto LABEL_6;
    }

    *v20 = 0;
    *&v20[8] = 0;
    *&v20[15] = 0;
    if ([v9 length])
    {
      [v10 getBytes:v20 length:1];
      a3 = v20[0];
      if ([v10 length] > 1)
      {
        v11 = [v10 subdataWithRange:{1, objc_msgSend(v10, "length") - 1}];

        v10 = v11;
LABEL_6:
        if (a3 == 2)
        {
          *&v19[4] = 0;
          *v19 = 0;
          if ([v10 length] <= 5)
          {
            if (qword_1002292D8 != -1)
            {
              dispatch_once(&qword_1002292D8, &stru_1001FC510);
            }

            if (_NRLogIsLevelEnabled())
            {
              if (qword_1002292D8 != -1)
              {
                dispatch_once(&qword_1002292D8, &stru_1001FC510);
              }

              _NRLogWithArgs(qword_1002292D0, 16, "%s%.30s:%-4d Got data too short for IPv4 %@", "", "NRCreateEndpointFromDataInner", 1130, v10);
              goto LABEL_22;
            }

LABEL_36:
            v12 = 0;
            goto LABEL_42;
          }

          [v10 getBytes:v19 length:6];
          *v20 = xmmword_1001964B0;
          *&v20[2] = *v19;
          *&v20[4] = *&v19[2];
        }

        else
        {
          if (a3 != 30)
          {
            goto LABEL_36;
          }

          memset(v19, 0, sizeof(v19));
          if ([v10 length] <= 0x11)
          {
            if (qword_1002292D8 != -1)
            {
              dispatch_once(&qword_1002292D8, &stru_1001FC510);
            }

            if (_NRLogIsLevelEnabled())
            {
              if (qword_1002292D8 != -1)
              {
                dispatch_once(&qword_1002292D8, &stru_1001FC510);
              }

              _NRLogWithArgs(qword_1002292D0, 16, "%s%.30s:%-4d Got data too short for IPv6 %@", "", "NRCreateEndpointFromDataInner", 1113, v10);
LABEL_22:
              v12 = 0;
LABEL_42:

              goto LABEL_43;
            }

            goto LABEL_36;
          }

          [v10 getBytes:v19 length:18];
          *v20 = 7708;
          v21 = unk_100196598;
          *&v20[2] = *v19;
          *&v20[8] = *&v19[2];
          if (v19[2] == 254 && (v20[9] & 0xC0) == 0x80)
          {
            v21 = a4;
          }
        }

        v12 = [NWAddressEndpoint endpointWithAddress:v20];
        goto LABEL_42;
      }

      if (qword_1002292D8 != -1)
      {
        dispatch_once(&qword_1002292D8, &stru_1001FC510);
      }

      if (!_NRLogIsLevelEnabled())
      {
        goto LABEL_36;
      }

      if (qword_1002292D8 != -1)
      {
        dispatch_once(&qword_1002292D8, &stru_1001FC510);
      }

      v13 = qword_1002292D0;
      v14 = 1103;
    }

    else
    {
      if (qword_1002292D8 != -1)
      {
        dispatch_once(&qword_1002292D8, &stru_1001FC510);
      }

      if (!_NRLogIsLevelEnabled())
      {
        goto LABEL_36;
      }

      if (qword_1002292D8 != -1)
      {
        dispatch_once(&qword_1002292D8, &stru_1001FC510);
      }

      v13 = qword_1002292D0;
      v14 = 1096;
    }

    _NRLogWithArgs(v13, 16, "%s%.30s:%-4d Got data too short for address family %@", "", "NRCreateEndpointFromDataInner", v14, v10);
    goto LABEL_36;
  }

  v16 = sub_10013A310();
  IsLevelEnabled = _NRLogIsLevelEnabled();

  if (IsLevelEnabled)
  {
    v18 = sub_10013A310();
    _NRLogWithArgs(v18, 17, "%s called with null addressData", "NRCreateEndpointFromDataInner");
  }

  v12 = 0;
LABEL_43:

  return v12;
}

id sub_10013DBE4(void *a1, void **a2, void **a3, int a4)
{
  v7 = a1;
  if (!v7)
  {
    v32 = sub_10013A310();
    IsLevelEnabled = _NRLogIsLevelEnabled();

    if (IsLevelEnabled)
    {
      v34 = sub_10013A310();
      _NRLogWithArgs(v34, 17, "%s called with null interfaceName", "NRCopyLocalAddressesInner");
    }

    goto LABEL_15;
  }

  v35 = 0;
  if (getifaddrs(&v35) == -1)
  {
    if (qword_1002292D8 != -1)
    {
      dispatch_once(&qword_1002292D8, &stru_1001FC510);
    }

    if (_NRLogIsLevelEnabled())
    {
      if (qword_1002292D8 != -1)
      {
        dispatch_once(&qword_1002292D8, &stru_1001FC510);
      }

      _NRLogWithArgs(qword_1002292D0, 17, "getifaddrs failed");
    }

LABEL_15:
    v11 = 0;
    goto LABEL_79;
  }

  if (a2)
  {
    v8 = *a2;
    *a2 = 0;
  }

  if (a3)
  {
    v9 = *a3;
    *a3 = 0;
  }

  v10 = v35;
  if (v35)
  {
    v11 = 0;
    while (1)
    {
      if (v10->ifa_addr && v10->ifa_name && !strcmp([v7 UTF8String], v10->ifa_name))
      {
        if (!a3 && !a2 && !v11)
        {
          v11 = objc_alloc_init(NSMutableSet);
        }

        ifa_addr = v10->ifa_addr;
        sa_family = ifa_addr->sa_family;
        if (sa_family != 30)
        {
          if (sa_family != 2)
          {
            goto LABEL_30;
          }

          v23 = *&ifa_addr->sa_data[2];
          v21 = &ifa_addr->sa_data[2];
          v22 = v23;
          if (a4)
          {
            v12 = bswap32(v22);
            v13 = v12 & 0xFF000000;
            v14 = HIWORD(v12) == 43518 || v13 == 0;
            v15 = v14 || v13 == 2130706432;
            v16 = v12 & 0xF0000000;
            v17 = v15 || v22 == -1;
            if (v17 || v16 == -536870912)
            {
              goto LABEL_30;
            }
          }

          if (!inet_ntop(2, v21, v36, 0x10u))
          {
            if (qword_1002292D8 != -1)
            {
              dispatch_once(&qword_1002292D8, &stru_1001FC510);
            }

            if (_NRLogIsLevelEnabled())
            {
              if (qword_1002292D8 != -1)
              {
                dispatch_once(&qword_1002292D8, &stru_1001FC510);
              }

              _NRLogWithArgs(qword_1002292D0, 17, "inet_ntop(AF_INET, %s) failed");
            }

            goto LABEL_30;
          }

          v24 = [[NSString alloc] initWithFormat:@"%s", v36];
          if (a2)
          {
            v25 = *a2;
            if (!*a2)
            {
              v26 = objc_alloc_init(NSMutableSet);
              v27 = *a2;
              *a2 = v26;

              v25 = *a2;
            }

            goto LABEL_63;
          }

          goto LABEL_64;
        }

        if (!a4)
        {
          goto LABEL_59;
        }

        if (*&ifa_addr->sa_data[6])
        {
          if (*&ifa_addr->sa_data[6] != 255 && (*&ifa_addr->sa_data[6] != 254 || (*&ifa_addr->sa_data[6] & 0xC000) != 0x8000))
          {
            goto LABEL_59;
          }
        }

        else if (*&ifa_addr->sa_data[10] || *&ifa_addr[1].sa_len || (*&ifa_addr[1].sa_data[2] | 0x1000000) != 0x1000000)
        {
LABEL_59:
          if (!inet_ntop(30, &ifa_addr->sa_data[6], v36, 0x2Eu))
          {
            if (qword_1002292D8 != -1)
            {
              dispatch_once(&qword_1002292D8, &stru_1001FC510);
            }

            if (_NRLogIsLevelEnabled())
            {
              if (qword_1002292D8 != -1)
              {
                dispatch_once(&qword_1002292D8, &stru_1001FC510);
              }

              _NRLogWithArgs(qword_1002292D0, 17, "inet_ntop(AF_INET6, %s) failed");
            }

            goto LABEL_30;
          }

          v24 = [[NSString alloc] initWithFormat:@"%s", v36];
          if (a3)
          {
            v25 = *a3;
            if (!*a3)
            {
              v28 = objc_alloc_init(NSMutableSet);
              v29 = *a3;
              *a3 = v28;

              v25 = *a3;
            }

LABEL_63:
            [v25 addObject:v24];
          }

LABEL_64:
          if (v24)
          {
            [v11 addObject:v24];
          }
        }
      }

LABEL_30:
      v10 = v10->ifa_next;
      if (!v10)
      {
        v30 = v35;
        goto LABEL_78;
      }
    }
  }

  v30 = 0;
  v11 = 0;
LABEL_78:
  freeifaddrs(v30);
LABEL_79:

  return v11;
}

void sub_10013E080(id a1)
{
  v1 = MGGetSInt32Answer() - 1;
  if (v1 <= 0xA && ((0x56Du >> v1) & 1) != 0)
  {
    byte_100229290 = byte_10019659C[v1];
  }
}

void sub_10013E0D0(id a1)
{
  v1 = _NRCopySerialQueueAttr();
  v2 = dispatch_queue_attr_make_with_qos_class(v1, QOS_CLASS_USER_INITIATED, 0);

  if (!v2)
  {
    v7 = sub_10013A310();
    IsLevelEnabled = _NRLogIsLevelEnabled();

    if (IsLevelEnabled)
    {
      v9 = sub_10013A310();
      _NRLogWithArgs(v9, 16, "%s%.30s:%-4d ABORTING: dispatch_queue_attr_make_with_qos_class(%u) failed", "", "nr_dispatch_queue_create_with_qos", 208, 25);
    }

    v3 = _os_log_pack_size();
    v10 = &v20 - ((__chkstk_darwin() + 15) & 0xFFFFFFFFFFFFFFF0);
    v11 = __error();
    v12 = _os_log_pack_fill(v10, v3, *v11, &_mh_execute_header, "%{public}s dispatch_queue_attr_make_with_qos_class(%u) failed");
    *v12 = 136446466;
    *(v12 + 4) = "nr_dispatch_queue_create_with_qos";
    *(v12 + 12) = 1024;
    *(v12 + 14) = 25;
    sub_10013A310();
    _NRLogAbortWithPack();
LABEL_9:
    v13 = sub_10013A310();
    v14 = _NRLogIsLevelEnabled();

    if (v14)
    {
      v15 = sub_10013A310();
      _NRLogWithArgs(v15, 16, "%s%.30s:%-4d ABORTING: dispatch_queue_create(%s) failed", "", "nr_dispatch_queue_create_with_qos", 212, v3);
    }

    v16 = _os_log_pack_size();
    v17 = &v20 - ((__chkstk_darwin() + 15) & 0xFFFFFFFFFFFFFFF0);
    v18 = __error();
    v19 = _os_log_pack_fill(v17, v16, *v18, &_mh_execute_header, "%{public}s dispatch_queue_create(%s) failed");
    *v19 = 136446466;
    *(v19 + 4) = "nr_dispatch_queue_create_with_qos";
    *(v19 + 12) = 2080;
    *(v19 + 14) = v3;
    sub_10013A310();
    _NRLogAbortWithPack();
  }

  v3 = "terminusd.SystemConfiguration";
  v4 = dispatch_queue_create("terminusd.SystemConfiguration", v2);
  if (!v4)
  {
    goto LABEL_9;
  }

  v5 = v4;

  v6 = qword_1002292A8;
  qword_1002292A8 = v5;
}

void sub_10013E358(id a1)
{
  v1 = _NRCopySerialQueueAttr();
  v2 = dispatch_queue_attr_make_with_qos_class(v1, QOS_CLASS_USER_INITIATED, 0);

  if (!v2)
  {
    v7 = sub_10013A310();
    IsLevelEnabled = _NRLogIsLevelEnabled();

    if (IsLevelEnabled)
    {
      v9 = sub_10013A310();
      _NRLogWithArgs(v9, 16, "%s%.30s:%-4d ABORTING: dispatch_queue_attr_make_with_qos_class(%u) failed", "", "nr_dispatch_queue_create_with_qos", 208, 25);
    }

    v3 = _os_log_pack_size();
    v10 = &v20 - ((__chkstk_darwin() + 15) & 0xFFFFFFFFFFFFFFF0);
    v11 = __error();
    v12 = _os_log_pack_fill(v10, v3, *v11, &_mh_execute_header, "%{public}s dispatch_queue_attr_make_with_qos_class(%u) failed");
    *v12 = 136446466;
    *(v12 + 4) = "nr_dispatch_queue_create_with_qos";
    *(v12 + 12) = 1024;
    *(v12 + 14) = 25;
    sub_10013A310();
    _NRLogAbortWithPack();
LABEL_9:
    v13 = sub_10013A310();
    v14 = _NRLogIsLevelEnabled();

    if (v14)
    {
      v15 = sub_10013A310();
      _NRLogWithArgs(v15, 16, "%s%.30s:%-4d ABORTING: dispatch_queue_create(%s) failed", "", "nr_dispatch_queue_create_with_qos", 212, v3);
    }

    v16 = _os_log_pack_size();
    v17 = &v20 - ((__chkstk_darwin() + 15) & 0xFFFFFFFFFFFFFFF0);
    v18 = __error();
    v19 = _os_log_pack_fill(v17, v16, *v18, &_mh_execute_header, "%{public}s dispatch_queue_create(%s) failed");
    *v19 = 136446466;
    *(v19 + 4) = "nr_dispatch_queue_create_with_qos";
    *(v19 + 12) = 2080;
    *(v19 + 14) = v3;
    sub_10013A310();
    _NRLogAbortWithPack();
  }

  v3 = "terminusd.CoreBluetooth";
  v4 = dispatch_queue_create("terminusd.CoreBluetooth", v2);
  if (!v4)
  {
    goto LABEL_9;
  }

  v5 = v4;

  v6 = qword_1002292B8;
  qword_1002292B8 = v5;
}

void sub_10013E5E0(id a1)
{
  v1 = _NRCopySerialQueueAttr();
  v2 = dispatch_queue_attr_make_with_qos_class(v1, QOS_CLASS_USER_INITIATED, 0);

  if (!v2)
  {
    v7 = sub_10013A310();
    IsLevelEnabled = _NRLogIsLevelEnabled();

    if (IsLevelEnabled)
    {
      v9 = sub_10013A310();
      _NRLogWithArgs(v9, 16, "%s%.30s:%-4d ABORTING: dispatch_queue_attr_make_with_qos_class(%u) failed", "", "nr_dispatch_queue_create_with_qos", 208, 25);
    }

    v3 = _os_log_pack_size();
    v10 = &v20 - ((__chkstk_darwin() + 15) & 0xFFFFFFFFFFFFFFF0);
    v11 = __error();
    v12 = _os_log_pack_fill(v10, v3, *v11, &_mh_execute_header, "%{public}s dispatch_queue_attr_make_with_qos_class(%u) failed");
    *v12 = 136446466;
    *(v12 + 4) = "nr_dispatch_queue_create_with_qos";
    *(v12 + 12) = 1024;
    *(v12 + 14) = 25;
    sub_10013A310();
    _NRLogAbortWithPack();
LABEL_9:
    v13 = sub_10013A310();
    v14 = _NRLogIsLevelEnabled();

    if (v14)
    {
      v15 = sub_10013A310();
      _NRLogWithArgs(v15, 16, "%s%.30s:%-4d ABORTING: dispatch_queue_create(%s) failed", "", "nr_dispatch_queue_create_with_qos", 212, v3);
    }

    v16 = _os_log_pack_size();
    v17 = &v20 - ((__chkstk_darwin() + 15) & 0xFFFFFFFFFFFFFFF0);
    v18 = __error();
    v19 = _os_log_pack_fill(v17, v16, *v18, &_mh_execute_header, "%{public}s dispatch_queue_create(%s) failed");
    *v19 = 136446466;
    *(v19 + 4) = "nr_dispatch_queue_create_with_qos";
    *(v19 + 12) = 2080;
    *(v19 + 14) = v3;
    sub_10013A310();
    _NRLogAbortWithPack();
  }

  v3 = "terminusd.IdentityServices.QR";
  v4 = dispatch_queue_create("terminusd.IdentityServices.QR", v2);
  if (!v4)
  {
    goto LABEL_9;
  }

  v5 = v4;

  v6 = qword_1002292C8;
  qword_1002292C8 = v5;
}

void sub_10013E868(void *a1)
{
  v1 = a1;
  if (!v1)
  {
    goto LABEL_29;
  }

  v22 = v1;
  v2 = [v1 allowedLinkTypes];
  v3 = [v2 containsObject:&off_100209D58];

  if (v3)
  {
    v4 = [v22 allowedLinkSubtypes];
    v5 = [v4 count];

    if (!v5)
    {
      [v22 setAllowedLinkSubtypes:&off_10020A0F0];
    }
  }

  else
  {
    [v22 setIsReachableOverWiFi:0];
  }

  v6 = [v22 allowedLinkTypes];
  if (![v6 containsObject:&off_100209D88])
  {
    goto LABEL_11;
  }

  v7 = [v22 allowedLinkSubtypes];
  if ([v7 containsObject:&off_100209DA0])
  {

LABEL_11:
    goto LABEL_12;
  }

  v8 = [v22 allowedLinkSubtypes];
  v9 = [v8 containsObject:&off_100209DB8];

  if ((v9 & 1) == 0)
  {
    v10 = [NSMutableArray alloc];
    v11 = [v22 allowedLinkSubtypes];
    v6 = [v10 initWithArray:v11];

    [v6 addObject:&off_100209DA0];
    [v22 setAllowedLinkSubtypes:v6];
    goto LABEL_11;
  }

LABEL_12:
  v12 = [NSOrderedSet alloc];
  v13 = [v22 allowedLinkTypes];
  v14 = [v12 initWithArray:v13];

  v15 = [v14 array];
  [v22 setAllowedLinkTypes:v15];

  v16 = [v22 allowedLinkSubtypes];
  v17 = [v16 count];

  if (v17)
  {
    v18 = [NSOrderedSet alloc];
    v19 = [v22 allowedLinkSubtypes];
    v20 = [v18 initWithArray:v19];

    v21 = [v20 array];
    [v22 setAllowedLinkSubtypes:v21];
  }

  if ([v22 proxyCapability] != 2)
  {
    [v22 setAllowsDirectToCloud:0];
  }

  if ([v22 requiresReachability])
  {
    [v22 setAllowsPermittedClientsOnly:0];
  }

  if (qword_100229238 != -1)
  {
    dispatch_once(&qword_100229238, &stru_1001FC340);
  }

  if (byte_100229230 == 1)
  {
    [v22 setAllowsDeviceDiscovery:1];
  }

  if (qword_1002292D8 != -1)
  {
    dispatch_once(&qword_1002292D8, &stru_1001FC510);
  }

  if (_NRLogIsLevelEnabled())
  {
    if (qword_1002292D8 != -1)
    {
      dispatch_once(&qword_1002292D8, &stru_1001FC510);
    }

    _NRLogWithArgs(qword_1002292D0, 0, "%s%.30s:%-4d Resolved properties: %@", "", "NRResolveOperationalProperties", 1395, v22);
  }

  v1 = v22;
LABEL_29:
}

id sub_10013EBBC(void *a1, void *a2, void *a3)
{
  v5 = a1;
  v6 = a2;
  v7 = a3;
  v8 = v7;
  v9 = 0;
  if (v5 && v6 && v7)
  {
    if ([v5 length] && objc_msgSend(v6, "length") && objc_msgSend(v8, "length"))
    {
      [v6 bytes];
      [v6 length];
      [v8 bytes];
      [v8 length];
      Hkdf = CCKDFParametersCreateHkdf();
      if (Hkdf)
      {
        v11 = Hkdf;
        if (qword_1002292D8 != -1)
        {
          dispatch_once(&qword_1002292D8, &stru_1001FC510);
        }

        if (_NRLogIsLevelEnabled())
        {
          if (qword_1002292D8 != -1)
          {
            dispatch_once(&qword_1002292D8, &stru_1001FC510);
          }

          _NRLogWithArgs(qword_1002292D0, 17, "CCKDFParametersCreateHkdf failed: extract error: %d", v11);
        }
      }

      else
      {
        memset(v16, 0, sizeof(v16));
        [v5 bytes];
        [v5 length];
        v13 = CCDeriveKey();
        if (!v13)
        {
          v9 = [NSData _newZeroingDataWithBytes:v16 length:64];
          cc_clear();
          goto LABEL_15;
        }

        v14 = v13;
        if (qword_1002292D8 != -1)
        {
          dispatch_once(&qword_1002292D8, &stru_1001FC510);
        }

        if (_NRLogIsLevelEnabled())
        {
          v15 = sub_10013A310();
          _NRLogWithArgs(v15, 17, "CCDeriveKey failed: error: %d", v14);
        }
      }

      v9 = 0;
    }

    else
    {
      v9 = 0;
    }
  }

LABEL_15:

  return v9;
}

BOOL sub_10013EE38(void *a1, void *a2)
{
  v3 = a1;
  v4 = a2;
  v5 = v4;
  v6 = 0;
  if (v3 && v4)
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass() & 1) != 0 && (objc_opt_class(), (objc_opt_isKindOfClass()) && (v7 = [v3 length], v7 == objc_msgSend(v5, "length")) && objc_msgSend(v3, "length"))
    {
      [v3 length];
      [v3 bytes];
      [v5 bytes];
      v6 = cc_cmp_safe() == 0;
    }

    else
    {
      v6 = 0;
    }
  }

  return v6;
}

int64_t sub_10013EF24(id a1, id a2, id a3)
{
  v4 = a3;
  v5 = [a2 notifyStatus];
  v6 = [v4 notifyStatus];

  if (v5 < v6)
  {
    return -1;
  }

  else
  {
    return v5 > v6;
  }
}

id sub_10013EF7C(int a1)
{
  v4 = 0;
  memset(buffer, 0, sizeof(buffer));
  if (proc_pidinfo(a1, 17, 1uLL, buffer, 56) == 56)
  {
    return [[NSUUID alloc] initWithUUIDBytes:buffer];
  }

  if (qword_1002292D8 != -1)
  {
    dispatch_once(&qword_1002292D8, &stru_1001FC510);
  }

  if (_NRLogIsLevelEnabled())
  {
    if (qword_1002292D8 != -1)
    {
      dispatch_once(&qword_1002292D8, &stru_1001FC510);
    }

    _NRLogWithArgs(qword_1002292D0, 16, "%s%.30s:%-4d Failed to get exec UUID for %d", "", "NRCopyExecUUIDFromProcessPID", 1468, a1);
  }

  return 0;
}

id sub_10013F0B0(uint64_t a1, uint64_t a2)
{
  if (a1)
  {
    v2 = objc_alloc_init(NSMutableArray);
    v3 = NEVirtualInterfaceCopyNexusInstances();
    if (v3)
    {
      v4 = v3;
      if (CFArrayGetCount(v3) >= 1)
      {
        Count = CFArrayGetCount(v4);
        if (Count >= 1)
        {
          v6 = Count;
          for (i = 0; i != v6; ++i)
          {
            ValueAtIndex = CFArrayGetValueAtIndex(v4, i);
            v9 = CFUUIDCreateString(kCFAllocatorDefault, ValueAtIndex);
            v10 = [[NSUUID alloc] initWithUUIDString:v9];
            [v2 addObject:v10];
          }
        }
      }

      CFRelease(v4);
    }
  }

  else
  {
    v12 = sub_10013A310();
    IsLevelEnabled = _NRLogIsLevelEnabled();

    if (IsLevelEnabled)
    {
      v14 = sub_10013A310();
      _NRLogWithArgs(v14, 17, "%s called with null virtualInterface", "NRCopyNexusInstancesForInterface");
    }

    return 0;
  }

  return v2;
}

uint64_t sub_10013F1F8(void *a1)
{
  v1 = a1;
  if (v1)
  {
    AssertionID = 0;
    v2 = IOPMAssertionCreateWithName(@"NoIdleSleepAssertion", 0xFFu, v1, &AssertionID);
    if (v2)
    {
      v3 = v2;
      if (qword_1002292D8 != -1)
      {
        dispatch_once(&qword_1002292D8, &stru_1001FC510);
      }

      if (_NRLogIsLevelEnabled())
      {
        if (qword_1002292D8 != -1)
        {
          dispatch_once(&qword_1002292D8, &stru_1001FC510);
        }

        _NRLogWithArgs(qword_1002292D0, 17, "Failed to take power assertion for %@ (%d)", v1, v3);
      }
    }

    else
    {
      if (qword_1002292D8 != -1)
      {
        dispatch_once(&qword_1002292D8, &stru_1001FC510);
      }

      if (_NRLogIsLevelEnabled())
      {
        if (qword_1002292D8 != -1)
        {
          dispatch_once(&qword_1002292D8, &stru_1001FC510);
        }

        _NRLogWithArgs(qword_1002292D0, 0, "%s%.30s:%-4d Successfully took power assertion for %@ (id: %u)", "", "NRPowerAssertionCreate", 1502, v1, AssertionID);
      }
    }

    v4 = AssertionID;
  }

  else
  {
    v6 = sub_10013A310();
    IsLevelEnabled = _NRLogIsLevelEnabled();

    if (IsLevelEnabled)
    {
      v8 = sub_10013A310();
      _NRLogWithArgs(v8, 17, "%s called with null identifier", "NRPowerAssertionCreate");
    }

    v4 = 0;
  }

  return v4;
}