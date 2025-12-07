void sub_100086B50(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, id location)
{
  objc_destroyWeak((v21 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_100086B88(uint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  v23 = a4;
  WeakRetained = objc_loadWeakRetained((a1 + 48));
  if (WeakRetained)
  {
    if (!v23)
    {
      v14 = *(a1 + 32);
      v15 = *(a1 + 40);
      if (a3 != 3)
      {
        SessionStateString = NEIKEv2CreateSessionStateString();
        [WeakRetained reportEvent:3009 detailsFormat:@"%@ session %@ child %u state update %@", v14, v15, a2, SessionStateString];

        goto LABEL_18;
      }

      [WeakRetained reportEvent:3018 detailsFormat:@"%@ session %@ got child %u Disconnected state with no error", v14, *(a1 + 40), a2];
      v16 = *(a1 + 56);
      v17 = WeakRetained;
      v18 = 0;
      goto LABEL_17;
    }

    v8 = *(a1 + 32);
    v9 = *(a1 + 40);
    v10 = NEIKEv2CreateSessionStateString();
    [WeakRetained reportEvent:3018 detailsFormat:@"%@ session %@ got child %u state update %@ error %@", v8, v9, a2, v10, v23];

    [WeakRetained processIKEDisconnection:*(a1 + 56) error:v23];
    if ([WeakRetained state] == 255)
    {
      goto LABEL_18;
    }

    v11 = v23;
    if ([v11 code] == 24)
    {
      v12 = NEIKEv2ProtocolErrorDomain;
      v13 = [v11 domain];
      LOBYTE(v12) = [v13 isEqualToString:v12];

      if (v12)
      {
        goto LABEL_12;
      }
    }

    else
    {
    }

    v19 = v11;
    if ([v19 code] == 8)
    {
      v20 = NEIKEv2ErrorDomain;
      v21 = [v19 domain];
      LODWORD(v20) = [v21 isEqualToString:v20];

      if (v20)
      {
LABEL_12:
        v18 = 1;
LABEL_16:
        v16 = *(a1 + 56);
        v17 = WeakRetained;
LABEL_17:
        sub_100084C80(v17, v16, v18, 1);
        goto LABEL_18;
      }
    }

    else
    {
    }

    v18 = 0;
    goto LABEL_16;
  }

LABEL_18:
}

void sub_100086D7C(uint64_t a1, void *a2)
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
      _NRLogWithArgs(v6, 0, "%s%.30s:%-4d %@: %@ session %@ got config update %@", "", "[NRLinkBluetooth setupIKECallbacks:]_block_invoke_5", 9049, v7, *(a1 + 32), *(a1 + 40), v8);
    }
  }
}

void sub_100086E5C(uint64_t a1, uint64_t a2, void *a3, void *a4)
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
      _NRLogWithArgs(v11, 0, "%s%.30s:%-4d %@: %@ session %@ got child %u traffic selector update local %@ remote %@", "", "[NRLinkBluetooth setupIKECallbacks:]_block_invoke_6", 9060, v12, *(a1 + 32), *(a1 + 40), a2, v13, v7);
    }
  }
}

void sub_100086F5C(uint64_t a1, void *a2)
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
      _NRLogWithArgs(v6, 0, "%s%.30s:%-4d %@: %@ session %@ got additional addresses %@", "", "[NRLinkBluetooth setupIKECallbacks:]_block_invoke_7", 9069, v7, *(a1 + 32), *(a1 + 40), v8);
    }
  }
}

void sub_10008703C(uint64_t a1)
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
      _NRLogWithArgs(v5, 0, "%s%.30s:%-4d %@: %@ session %@ got short DPD", "", "[NRLinkBluetooth setupIKECallbacks:]_block_invoke_8", 9077, v6, *(a1 + 32), *(a1 + 40));

      WeakRetained = v7;
    }
  }
}

void sub_100087110(uint64_t a1, void *a2)
{
  v3 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 48));
  if (WeakRetained)
  {
    v5 = [v3 sortedArrayUsingComparator:&stru_1001FC4F0];
    v6 = _NRCopyLogObjectForNRUUID();
    IsLevelEnabled = _NRLogIsLevelEnabled();

    if (IsLevelEnabled)
    {
      v8 = _NRCopyLogObjectForNRUUID();
      v9 = [WeakRetained copyDescription];
      _NRLogWithArgs(v8, 0, "%s%.30s:%-4d %@: %@ session %@ got private notifies %@", "", "[NRLinkBluetooth setupIKECallbacks:]_block_invoke_9", 9087, v9, *(a1 + 32), *(a1 + 40), v5);
    }

    v20 = 0u;
    v21 = 0u;
    v18 = 0u;
    v19 = 0u;
    v10 = v5;
    v11 = [v10 countByEnumeratingWithState:&v18 objects:v22 count:16];
    if (v11)
    {
      v12 = v11;
      v13 = *v19;
      do
      {
        for (i = 0; i != v12; i = i + 1)
        {
          if (*v19 != v13)
          {
            objc_enumerationMutation(v10);
          }

          v15 = *(*(&v18 + 1) + 8 * i);
          v16 = [v15 notifyStatus];
          v17 = [v15 notifyData];
          sub_100087300(WeakRetained, v16, v17, *(a1 + 56));
        }

        v12 = [v10 countByEnumeratingWithState:&v18 objects:v22 count:16];
      }

      while (v12);
    }
  }
}

void sub_100087300(uint64_t a1, uint64_t a2, void *a3, int a4)
{
  v8 = a3;
  v9 = *(a1 + 16);
  p_vtable = _NRCopyLogObjectForNRUUID();
  IsLevelEnabled = _NRLogIsLevelEnabled();

  if (v9 == 255)
  {
    if (IsLevelEnabled)
    {
      v13 = _NRCopyLogObjectForNRUUID();
      v14 = [a1 copyDescription];
      _NRLogWithArgs(v13, 0, "%s%.30s:%-4d %@: Cancelled, ignoring notify code %u %@", "", "[NRLinkBluetooth handleNotifyCode:payload:dataProtectionClass:]", 8488, v14, a2, v8);
LABEL_12:
    }
  }

  else
  {
    if (IsLevelEnabled)
    {
      v12 = _NRCopyLogObjectForNRUUID();
      p_vtable = [a1 copyDescription];
      _NRLogWithArgs(v12, 0, "%s%.30s:%-4d %@: Received notify code %u len %llu", "", "-[NRLinkBluetooth handleNotifyCode:payload:dataProtectionClass:]", 8491, p_vtable, a2, [v8 length]);
    }

    if (a2 == 50901 && a4 == 4)
    {
      [a1 setSuspendWhenReady:1];
      goto LABEL_13;
    }

    if (a2 != 50000)
    {
LABEL_13:
      v17 = [a1 linkDelegate];
      v18 = *(a1 + 16);
      if ((v18 - 5) <= 1)
      {
        if (v18 == 6)
        {
          sub_1000891A4(a1);
          [a1 changeStateTo:8 details:@"(IKE received first notify after connected)"];
          [v17 linkIsReady:a1];
          [a1 checkProxyAgentWithForceUpdate:0];
        }

        else
        {
          [a1 changeStateTo:7];
        }
      }

      if (a2 <= 50500)
      {
        if (a2 <= 48606)
        {
          if (a2 > 48602)
          {
            if (a2 > 48604)
            {
              if (a2 == 48605)
              {
                location = 0;
                if ([v8 length] == 8)
                {
                  [v8 getBytes:&location length:8];
                  v76 = _NRCopyLogObjectForNRUUID();
                  v77 = _NRLogIsLevelEnabled();

                  if (v77)
                  {
                    v78 = _NRCopyLogObjectForNRUUID();
                    v79 = [a1 copyDescription];
                    _NRLogWithArgs(v78, 0, "%s%.30s:%-4d %@: Received remote device flags %#llx", "", "[NRLinkBluetooth handleNotifyCode:payload:dataProtectionClass:]", 8766, v79, location);
                  }

                  v80 = location;
                  v81 = [a1 nrUUID];
                  sub_100171F80(NRDLocalDevice, v80, v81);
                }

                else
                {
                  v100 = sub_10007CF34();
                  v101 = _NRLogIsLevelEnabled();

                  if (v101)
                  {
                    v102 = sub_10007CF34();
                    _NRLogWithArgs(v102, 16, "%s%.30s:%-4d %@: Invalid NRLinkIKEPrivateNotifyCodeDeviceFlags payload length %zu", "", "-[NRLinkBluetooth handleNotifyCode:payload:dataProtectionClass:]", 8762, a1, [v8 length]);
                  }
                }
              }

              else
              {
                LOBYTE(location) = 0;
                if ([v8 length] == 1)
                {
                  [v8 getBytes:&location length:1];
                  v60 = _NRCopyLogObjectForNRUUID();
                  v61 = _NRLogIsLevelEnabled();

                  if (v61)
                  {
                    v62 = _NRCopyLogObjectForNRUUID();
                    v63 = [a1 copyDescription];
                    _NRLogWithArgs(v62, 0, "%s%.30s:%-4d %@: Received remote device type %u", "", "[NRLinkBluetooth handleNotifyCode:payload:dataProtectionClass:]", 8571, v63, location);
                  }

                  v64 = location;
                  v65 = [a1 nrUUID];
                  sub_1001714EC(NRDLocalDevice, v64, v65);
                }
              }

              goto LABEL_179;
            }

            if (a2 == 48603)
            {
              v19 = [[NSString alloc] initWithData:v8 encoding:4];
              v72 = _NRCopyLogObjectForNRUUID();
              if (v19)
              {
                v73 = _NRLogIsLevelEnabled();

                if (v73)
                {
                  v74 = _NRCopyLogObjectForNRUUID();
                  v75 = [a1 copyDescription];
                  _NRLogWithArgs(v74, 0, "%s%.30s:%-4d %@: Received remote device name %@", "", "[NRLinkBluetooth handleNotifyCode:payload:dataProtectionClass:]", 8552, v75, v19);
                }

                sub_100089694(a1, v19);
                v24 = [a1 nrUUID];
                sub_1001716D4(NRDLocalDevice, v19, v24);
                goto LABEL_129;
              }

              v155 = _NRLogIsLevelEnabled();

              if (!v155)
              {
                goto LABEL_130;
              }

              v24 = _NRCopyLogObjectForNRUUID();
              v156 = [a1 copyDescription];
              _NRLogWithArgs(v24, 16, "%s%.30s:%-4d %@: Failed to decode remote device name %@", "", "[NRLinkBluetooth handleNotifyCode:payload:dataProtectionClass:]", 8549, v156, v8);
            }

            else
            {
              v19 = [[NSString alloc] initWithData:v8 encoding:4];
              v20 = _NRCopyLogObjectForNRUUID();
              if (v19)
              {
                v21 = _NRLogIsLevelEnabled();

                if (v21)
                {
                  v22 = _NRCopyLogObjectForNRUUID();
                  v23 = [a1 copyDescription];
                  _NRLogWithArgs(v22, 0, "%s%.30s:%-4d %@: Received remote build version %@", "", "[NRLinkBluetooth handleNotifyCode:payload:dataProtectionClass:]", 8563, v23, v19);
                }

                v24 = [a1 nrUUID];
                sub_1001718D8(NRDLocalDevice, v19, v24);
                goto LABEL_129;
              }

              v157 = _NRLogIsLevelEnabled();

              if (!v157)
              {
                goto LABEL_130;
              }

              v24 = _NRCopyLogObjectForNRUUID();
              v156 = [a1 copyDescription];
              _NRLogWithArgs(v24, 16, "%s%.30s:%-4d %@: Failed to decode remote build version %@", "", "[NRLinkBluetooth handleNotifyCode:payload:dataProtectionClass:]", 8560, v156, v8);
            }

LABEL_129:
LABEL_130:

            goto LABEL_179;
          }

          if (a2)
          {
            if (a2 != 48601)
            {
              if (a2 == 48602)
              {
                LOWORD(location) = 0;
                if ([v8 length] <= 1)
                {
                  [a1 cancelWithReason:{@"Private notify Terminus Version too short %@", v8, v176}];
                  goto LABEL_179;
                }

                [v8 getBytes:&location length:2];
                v4 = &OBJC_IVAR___BTPResolver__sdRefResolve;
                *(a1 + 309) = bswap32(location) >> 16;
                v41 = _NRCopyLogObjectForNRUUID();
                v42 = _NRLogIsLevelEnabled();

                if (v42)
                {
                  v43 = _NRCopyLogObjectForNRUUID();
                  v44 = [a1 copyDescription];
                  _NRLogWithArgs(v43, 0, "%s%.30s:%-4d %@: Received remote terminus version %u", "", "[NRLinkBluetooth handleNotifyCode:payload:dataProtectionClass:]", 8524, v44, *(a1 + 309));
                }

                p_vtable = NRSCDInterfaceConfig.vtable;
                v45 = sub_100163A30(NRDLocalDevice, *(a1 + 32));
                v46 = v45;
                if (v45)
                {
                  v47 = *(v45 + 16);
                  goto LABEL_58;
                }

LABEL_200:
                v47 = 0;
LABEL_58:
                v48 = p_vtable + 296;
                v49 = *(a1 + v4[607]);
                v50 = [a1 nrUUID];
                sub_100171304(v48, v49, v50);

                if (v46)
                {
                  v51 = *(v46 + 16);
                  if (v47 >= v51)
                  {
                    v52 = *(v46 + 16);
                  }

                  else
                  {
                    v52 = v47;
                  }

                  if (v47 <= v51)
                  {
                    LOWORD(v47) = *(v46 + 16);
                  }

                  v53 = v52 < 0x11;
                  if (a4 != 4)
                  {
                    goto LABEL_178;
                  }
                }

                else
                {
                  v53 = 1;
                  if (a4 != 4)
                  {
LABEL_178:

                    goto LABEL_179;
                  }
                }

                if (v47 <= 0x10u)
                {
                  v53 = 0;
                }

                if (v53)
                {
                  v54 = v46 ? *(v46 + 144) : 0;
                  v55 = v54;
                  v56 = [v55 proxyCapability] == 1;

                  if (v56)
                  {
                    sub_1000892A8(a1);
                  }
                }

                if (v46)
                {
                  v57 = *(v46 + 64);
                  if (v57)
                  {
                  }

                  else if (*(v46 + 16) >= 0x14u)
                  {
                    sub_1000894A8(a1);
                  }
                }

                goto LABEL_178;
              }

              goto LABEL_120;
            }

            if (([v8 isEqual:*(a1 + 431)] & 1) == 0)
            {
              [a1 cancelWithReason:{@"Received encrypted payload %@ does not match unencrypted %@", v8, *(a1 + 431)}];
              goto LABEL_179;
            }

            v82 = _NRCopyLogObjectForNRUUID();
            v83 = _NRLogIsLevelEnabled();

            if (v83)
            {
              v27 = _NRCopyLogObjectForNRUUID();
              v28 = [a1 copyDescription];
              _NRLogWithArgs(v27, 0, "%s%.30s:%-4d %@: Validated encrypted remote prelude", "", "[NRLinkBluetooth handleNotifyCode:payload:dataProtectionClass:]", 8638, v28);
              goto LABEL_147;
            }

LABEL_179:

            goto LABEL_180;
          }

LABEL_91:
          v67 = _NRCopyLogObjectForNRUUID();
          v68 = _NRLogIsLevelEnabled();

          if (v68)
          {
            v69 = _NRCopyLogObjectForNRUUID();
            v70 = [a1 copyDescription];
            _NRLogWithArgs(v69, 1, "%s%.30s:%-4d %@: Received unexpected notify code %u", "", "[NRLinkBluetooth handleNotifyCode:payload:dataProtectionClass:]", 8785, v70, a2);
LABEL_93:

            goto LABEL_179;
          }

          goto LABEL_179;
        }

        v30 = (a2 - 50351);
        if (v30 <= 0x3E)
        {
          if (((1 << (a2 + 81)) & 0x701C000000000000) != 0)
          {
            goto LABEL_91;
          }

          if (a2 == 50351)
          {
            [a1 reportEvent:3401 details:@"Identity"];
            v94 = *(a1 + 32);
            v178[0] = _NSConcreteStackBlock;
            v178[1] = 3221225472;
            v178[2] = sub_100089C88;
            v178[3] = &unk_1001FC068;
            v178[4] = a1;
            sub_10016E894(NRDLocalDevice, v8, v94, v178);
            goto LABEL_179;
          }

          if (v30 == 1)
          {
            v31 = _NRCopyLogObjectForNRUUID();
            v32 = _NRLogIsLevelEnabled();

            if (v32)
            {
              v33 = _NRCopyLogObjectForNRUUID();
              v34 = [a1 copyDescription];
              _NRLogWithArgs(v33, 0, "%s%.30s:%-4d %@: Received request for device identity", "", "[NRLinkBluetooth handleNotifyCode:payload:dataProtectionClass:]", 8755, v34);
            }

            sub_100089ED8(a1);
            goto LABEL_179;
          }
        }

        if (a2 == 48607)
        {
          v19 = [[NSString alloc] initWithData:v8 encoding:4];
          v95 = _NRCopyLogObjectForNRUUID();
          if (v19)
          {
            v96 = _NRLogIsLevelEnabled();

            if (v96)
            {
              v97 = _NRCopyLogObjectForNRUUID();
              v98 = [a1 copyDescription];
              LogString = _NRKeyCreateLogString();
              _NRLogWithArgs(v97, 0, "%s%.30s:%-4d %@: Received remote IDS device ID %@", "", "[NRLinkBluetooth handleNotifyCode:payload:dataProtectionClass:]", 8582, v98, LogString);
            }

            v24 = [a1 nrUUID];
            sub_1001756C0(NRDLocalDevice, v19, v24);
          }

          else
          {
            v158 = _NRLogIsLevelEnabled();

            if (!v158)
            {
              goto LABEL_130;
            }

            v24 = _NRCopyLogObjectForNRUUID();
            v159 = [a1 copyDescription];
            v160 = _NRKeyCreateLogString();
            _NRLogWithArgs(v24, 16, "%s%.30s:%-4d %@: Failed to decode remote IDS device ID %@", "", "[NRLinkBluetooth handleNotifyCode:payload:dataProtectionClass:]", 8579, v159, v160);
          }

          goto LABEL_129;
        }

        if (a2 == 48701)
        {
          v183 = 0;
          if ([v8 length])
          {
            [v8 getBytes:&v183 length:1];
            if (v183 < 0 && (*(a1 + 276) & 1) == 0)
            {
              *(a1 + 276) = 1;
              objc_initWeak(&location, a1);
              v71 = sub_100180AC4(NRDKeyManager);
              v181[0] = _NSConcreteStackBlock;
              v181[1] = 3221225472;
              v181[2] = sub_1000896A4;
              v181[3] = &unk_1001FC730;
              objc_copyWeak(&v182, &location);
              sub_1001816DC(v71, v181);

              objc_destroyWeak(&v182);
              objc_destroyWeak(&location);
            }
          }

          goto LABEL_179;
        }

LABEL_120:
        v92 = _NRCopyLogObjectForNRUUID();
        v93 = _NRLogIsLevelEnabled();

        if (!v93)
        {
          goto LABEL_179;
        }

        v69 = _NRCopyLogObjectForNRUUID();
        v70 = [a1 copyDescription];
        _NRLogWithArgs(v69, 1, "%s%.30s:%-4d %@: Received unknown notify code %u", "", "[NRLinkBluetooth handleNotifyCode:payload:dataProtectionClass:]", 8789, v70, a2);
        goto LABEL_93;
      }

      if (a2 <= 50801)
      {
        if (a2 <= 50700)
        {
          if ((a2 - 50501) < 5)
          {
            goto LABEL_91;
          }

          goto LABEL_120;
        }

        if (a2 == 50701)
        {
          sub_100171CD8(NRDLocalDevice, v8, *(a1 + 32));
          [a1 checkProxyAgentWithForceUpdate:0];
          goto LABEL_179;
        }

        if (a2 == 50702)
        {
          [v17 linkDidReceiveData:a1 data:v8];
          goto LABEL_179;
        }

        if (a2 != 50801)
        {
          goto LABEL_120;
        }

        if (*(a1 + 289) == 1)
        {
          v58 = _NRCopyLogObjectForNRUUID();
          v59 = _NRLogIsLevelEnabled();

          if (!v59)
          {
            goto LABEL_179;
          }

          v27 = _NRCopyLogObjectForNRUUID();
          v28 = [a1 copyDescription];
          v175 = 8648;
          v177 = v28;
          v29 = "%s%.30s:%-4d %@: Did not expect InnerAddressInitiatorClassD as responder";
          goto LABEL_117;
        }

        location = 0;
        v180 = 0;
        if ([v8 length] <= 0xF)
        {
          v109 = _NRCopyLogObjectForNRUUID();
          v110 = _NRLogIsLevelEnabled();

          if (!v110)
          {
            goto LABEL_179;
          }

          v27 = _NRCopyLogObjectForNRUUID();
          v28 = [a1 copyDescription];
          _NRLogWithArgs(v27, 16, "%s%.30s:%-4d %@: InnerAddressInitiatorClassD payload too short %@", "", "[NRLinkBluetooth handleNotifyCode:payload:dataProtectionClass:]", 8653, v28, v8);
          goto LABEL_147;
        }

        [v8 getBytes:&location length:16];
        if (!sub_10017332C(NRDLocalDevice, &location, *(a1 + 32)))
        {
          v150 = _NRCopyLogObjectForNRUUID();
          v151 = _NRLogIsLevelEnabled();

          if (v151)
          {
            v152 = _NRCopyLogObjectForNRUUID();
            v153 = [a1 copyDescription];
            IPv6AddrString = createIPv6AddrString();
            _NRLogWithArgs(v152, 0, "%s%.30s:%-4d %@: received local classD address %@", "", "[NRLinkBluetooth handleNotifyCode:payload:dataProtectionClass:]", 8666, v153, IPv6AddrString);
          }

          goto LABEL_179;
        }

        v46 = sub_100163A30(NRDLocalDevice, *(a1 + 32));
        if (v46)
        {
          v129 = _NRCopyLogObjectForNRUUID();
          v130 = _NRLogIsLevelEnabled();

          if (v130)
          {
            v131 = _NRCopyLogObjectForNRUUID();
            v132 = [a1 copyDescription];
            v133 = createIPv6AddrString();
            v134 = createIPv6AddrString();
            _NRLogWithArgs(v131, 0, "%s%.30s:%-4d %@: updated local classD address from %@ to %@", "", "[NRLinkBluetooth handleNotifyCode:payload:dataProtectionClass:]", 8661, v132, v133, v134);
          }

          sub_100168638(v46, (a1 + 2095));
          sub_1000896EC(a1);
          sub_100089894(a1);

          goto LABEL_179;
        }

        v170 = sub_10007CF34();
        v171 = _NRLogIsLevelEnabled();

        if (v171)
        {
          v172 = sub_10007CF34();
          _NRLogWithArgs(v172, 16, "%s%.30s:%-4d ABORTING: Assertion Failed: (localDevice) != ((void*)0)", "", "[NRLinkBluetooth handleNotifyCode:payload:dataProtectionClass:]", 8659);
        }

LABEL_199:
        v17 = _os_log_pack_size();
        v8 = v178 - ((__chkstk_darwin() + 15) & 0xFFFFFFFFFFFFFFF0);
        v173 = __error();
        v174 = _os_log_pack_fill(v8, v17, *v173, &_mh_execute_header, "%{public}s Assertion Failed: (localDevice) != ((void*)0)");
        *v174 = 136446210;
        *(v174 + 4) = "[NRLinkBluetooth handleNotifyCode:payload:dataProtectionClass:]";
        sub_10007CF34();
        _NRLogAbortWithPack();
        __break(1u);
        goto LABEL_200;
      }

      if (a2 > 51300)
      {
        if (a2 <= 51500)
        {
          if (a2 == 51301)
          {
            goto LABEL_91;
          }

          if (a2 == 51401)
          {
            LOBYTE(location) = 0;
            [v8 getBytes:&location length:1];
            v35 = _NRCopyLogObjectForNRUUID();
            v36 = _NRLogIsLevelEnabled();

            if (v36)
            {
              v37 = _NRCopyLogObjectForNRUUID();
              v38 = [a1 copyDescription];
              _NRLogWithArgs(v37, 0, "%s%.30s:%-4d %@: Received Always On Wi-Fi supported: %u", "", "[NRLinkBluetooth handleNotifyCode:payload:dataProtectionClass:]", 8589, v38, location);
            }

            v39 = location == 1;
            v40 = [a1 nrUUID];
            sub_100171ADC(NRDLocalDevice, v39, v40);

            goto LABEL_179;
          }

          goto LABEL_120;
        }

        if (a2 == 51501)
        {
          v88 = _NRCopyLogObjectForNRUUID();
          v89 = _NRLogIsLevelEnabled();

          if (v89)
          {
            v90 = _NRCopyLogObjectForNRUUID();
            v91 = [a1 copyDescription];
            _NRLogWithArgs(v90, 16, "%s%.30s:%-4d %@: Did not expect IsAltAccountDevice", "", "[NRLinkBluetooth handleNotifyCode:payload:dataProtectionClass:]", 8594, v91);
          }

          goto LABEL_120;
        }

        v66 = 51601;
      }

      else
      {
        if (a2 <= 50811)
        {
          if (a2 == 50802)
          {
            if (*(a1 + 289) == 1)
            {
              v84 = _NRCopyLogObjectForNRUUID();
              v85 = _NRLogIsLevelEnabled();

              if (!v85)
              {
                goto LABEL_179;
              }

              v27 = _NRCopyLogObjectForNRUUID();
              v28 = [a1 copyDescription];
              v175 = 8695;
              v177 = v28;
              v29 = "%s%.30s:%-4d %@: Did not expect InnerAddressResponderClassD as responder";
              goto LABEL_117;
            }

            location = 0;
            v180 = 0;
            if ([v8 length] > 0xF)
            {
              [v8 getBytes:&location length:16];
              if (!sub_100173B9C(NRDLocalDevice, &location, *(a1 + 32)))
              {
                v135 = _NRCopyLogObjectForNRUUID();
                v136 = _NRLogIsLevelEnabled();

                if (v136)
                {
                  v137 = _NRCopyLogObjectForNRUUID();
                  v138 = [a1 copyDescription];
                  v139 = createIPv6AddrString();
                  _NRLogWithArgs(v137, 0, "%s%.30s:%-4d %@: received remote classD address %@", "", "[NRLinkBluetooth handleNotifyCode:payload:dataProtectionClass:]", 8713, v138, v139);
                }

                goto LABEL_179;
              }

              v46 = sub_100163A30(NRDLocalDevice, *(a1 + 32));
              if (v46)
              {
                v111 = _NRCopyLogObjectForNRUUID();
                v112 = _NRLogIsLevelEnabled();

                if (v112)
                {
                  v113 = _NRCopyLogObjectForNRUUID();
                  v114 = [a1 copyDescription];
                  v115 = createIPv6AddrString();
                  v116 = createIPv6AddrString();
                  _NRLogWithArgs(v113, 0, "%s%.30s:%-4d %@: updated remote classD address from %@ to %@", "", "[NRLinkBluetooth handleNotifyCode:payload:dataProtectionClass:]", 8708, v114, v115, v116);
                }

                sub_100167D5C(v46, (a1 + 2111));
                sub_1000896EC(a1);
                sub_100089A48(a1);

                goto LABEL_179;
              }

              v161 = sub_10007CF34();
              v162 = _NRLogIsLevelEnabled();

              if (v162)
              {
                v163 = sub_10007CF34();
                _NRLogWithArgs(v163, 16, "%s%.30s:%-4d ABORTING: Assertion Failed: (localDevice) != ((void*)0)", "", "[NRLinkBluetooth handleNotifyCode:payload:dataProtectionClass:]", 8706);
              }

              goto LABEL_199;
            }

            v103 = _NRCopyLogObjectForNRUUID();
            v104 = _NRLogIsLevelEnabled();

            if (!v104)
            {
              goto LABEL_179;
            }

            v27 = _NRCopyLogObjectForNRUUID();
            v28 = [a1 copyDescription];
            _NRLogWithArgs(v27, 16, "%s%.30s:%-4d %@: InnerAddressResponderClassD payload too short %@", "", "[NRLinkBluetooth handleNotifyCode:payload:dataProtectionClass:]", 8700, v28, v8);
          }

          else
          {
            if (a2 != 50811)
            {
              goto LABEL_120;
            }

            if (*(a1 + 289) == 1)
            {
              v25 = _NRCopyLogObjectForNRUUID();
              v26 = _NRLogIsLevelEnabled();

              if (!v26)
              {
                goto LABEL_179;
              }

              v27 = _NRCopyLogObjectForNRUUID();
              v28 = [a1 copyDescription];
              v175 = 8672;
              v177 = v28;
              v29 = "%s%.30s:%-4d %@: Did not expect InnerAddressInitiatorClassC as responder";
LABEL_117:
              _NRLogWithArgs(v27, 16, v29, "", "[NRLinkBluetooth handleNotifyCode:payload:dataProtectionClass:]", v175, v177);
              goto LABEL_147;
            }

            location = 0;
            v180 = 0;
            if ([v8 length] > 0xF)
            {
              [v8 getBytes:&location length:16];
              if (!sub_100173764(NRDLocalDevice, &location, *(a1 + 32)))
              {
                v145 = _NRCopyLogObjectForNRUUID();
                v146 = _NRLogIsLevelEnabled();

                if (v146)
                {
                  v147 = _NRCopyLogObjectForNRUUID();
                  v148 = [a1 copyDescription];
                  v149 = createIPv6AddrString();
                  _NRLogWithArgs(v147, 0, "%s%.30s:%-4d %@: received local classC address %@", "", "[NRLinkBluetooth handleNotifyCode:payload:dataProtectionClass:]", 8689, v148, v149);
                }

                goto LABEL_179;
              }

              v46 = sub_100163A30(NRDLocalDevice, *(a1 + 32));
              if (v46)
              {
                v123 = _NRCopyLogObjectForNRUUID();
                v124 = _NRLogIsLevelEnabled();

                if (v124)
                {
                  v125 = _NRCopyLogObjectForNRUUID();
                  v126 = [a1 copyDescription];
                  v127 = createIPv6AddrString();
                  v128 = createIPv6AddrString();
                  _NRLogWithArgs(v125, 0, "%s%.30s:%-4d %@: updated local classC address from %@ to %@", "", "[NRLinkBluetooth handleNotifyCode:payload:dataProtectionClass:]", 8685, v126, v127, v128);
                }

                sub_100172608(v46, (a1 + 2127));
                sub_100089894(a1);

                goto LABEL_179;
              }

              v167 = sub_10007CF34();
              v168 = _NRLogIsLevelEnabled();

              if (v168)
              {
                v169 = sub_10007CF34();
                _NRLogWithArgs(v169, 16, "%s%.30s:%-4d ABORTING: Assertion Failed: (localDevice) != ((void*)0)", "", "[NRLinkBluetooth handleNotifyCode:payload:dataProtectionClass:]", 8683);
              }

              goto LABEL_199;
            }

            v107 = _NRCopyLogObjectForNRUUID();
            v108 = _NRLogIsLevelEnabled();

            if (!v108)
            {
              goto LABEL_179;
            }

            v27 = _NRCopyLogObjectForNRUUID();
            v28 = [a1 copyDescription];
            _NRLogWithArgs(v27, 16, "%s%.30s:%-4d %@: InnerAddressInitiatorClassC payload too short %@", "", "[NRLinkBluetooth handleNotifyCode:payload:dataProtectionClass:]", 8677, v28, v8);
          }

          goto LABEL_147;
        }

        if (a2 == 50812)
        {
          if (*(a1 + 289) == 1)
          {
            v86 = _NRCopyLogObjectForNRUUID();
            v87 = _NRLogIsLevelEnabled();

            if (!v87)
            {
              goto LABEL_179;
            }

            v27 = _NRCopyLogObjectForNRUUID();
            v28 = [a1 copyDescription];
            v175 = 8719;
            v177 = v28;
            v29 = "%s%.30s:%-4d %@: Did not expect InnerAddressResponderClassC as responder";
            goto LABEL_117;
          }

          location = 0;
          v180 = 0;
          if ([v8 length] > 0xF)
          {
            [v8 getBytes:&location length:16];
            if (!sub_100173FD4(NRDLocalDevice, &location, *(a1 + 32)))
            {
              v140 = _NRCopyLogObjectForNRUUID();
              v141 = _NRLogIsLevelEnabled();

              if (v141)
              {
                v142 = _NRCopyLogObjectForNRUUID();
                v143 = [a1 copyDescription];
                v144 = createIPv6AddrString();
                _NRLogWithArgs(v142, 0, "%s%.30s:%-4d %@: received remote classC address %@", "", "[NRLinkBluetooth handleNotifyCode:payload:dataProtectionClass:]", 8737, v143, v144);
              }

              goto LABEL_179;
            }

            v46 = sub_100163A30(NRDLocalDevice, *(a1 + 32));
            if (v46)
            {
              v117 = _NRCopyLogObjectForNRUUID();
              v118 = _NRLogIsLevelEnabled();

              if (v118)
              {
                v119 = _NRCopyLogObjectForNRUUID();
                v120 = [a1 copyDescription];
                v121 = createIPv6AddrString();
                v122 = createIPv6AddrString();
                _NRLogWithArgs(v119, 0, "%s%.30s:%-4d %@: updated remote classC address from %@ to %@", "", "[NRLinkBluetooth handleNotifyCode:payload:dataProtectionClass:]", 8732, v120, v121, v122);
              }

              sub_100167D5C(v46, (a1 + 2143));
              sub_100089A48(a1);

              goto LABEL_179;
            }

            v164 = sub_10007CF34();
            v165 = _NRLogIsLevelEnabled();

            if (v165)
            {
              v166 = sub_10007CF34();
              _NRLogWithArgs(v166, 16, "%s%.30s:%-4d ABORTING: Assertion Failed: (localDevice) != ((void*)0)", "", "[NRLinkBluetooth handleNotifyCode:payload:dataProtectionClass:]", 8730);
            }

            goto LABEL_199;
          }

          v105 = _NRCopyLogObjectForNRUUID();
          v106 = _NRLogIsLevelEnabled();

          if (!v106)
          {
            goto LABEL_179;
          }

          v27 = _NRCopyLogObjectForNRUUID();
          v28 = [a1 copyDescription];
          _NRLogWithArgs(v27, 16, "%s%.30s:%-4d %@: InnerAddressResponderClassC payload too short %@", "", "[NRLinkBluetooth handleNotifyCode:payload:dataProtectionClass:]", 8724, v28, v8);
LABEL_147:

          goto LABEL_179;
        }

        v66 = 50901;
      }

      if (a2 == v66)
      {
        goto LABEL_91;
      }

      goto LABEL_120;
    }

    v15 = _NRCopyLogObjectForNRUUID();
    v16 = _NRLogIsLevelEnabled();

    if (v16)
    {
      v13 = _NRCopyLogObjectForNRUUID();
      v14 = [a1 copyDescription];
      _NRLogWithArgs(v13, 1, "%s%.30s:%-4d %@: Received seq per TC notify", "", "[NRLinkBluetooth handleNotifyCode:payload:dataProtectionClass:]", 8497, v14);
      goto LABEL_12;
    }
  }

LABEL_180:
}

void sub_100089178(_Unwind_Exception *a1)
{
  objc_destroyWeak((v1 + 32));
  objc_destroyWeak((v2 - 152));
  _Unwind_Resume(a1);
}

void sub_1000891A4(uint64_t a1)
{
  if (([a1 hasCompanionDatapath] & 1) == 0)
  {
    v2 = sub_100163A30(NRDLocalDevice, *(a1 + 32));
    *(a1 + 311) = 4;
    v7 = v2;
    if (v2)
    {
      v3 = sub_100003490();
      dispatch_assert_queue_V2(v3);

      v4 = sub_1001672A0(v7, @"0");
      [a1 setLocalOuterEndpoint:v4];

      v5 = sub_100003490();
      dispatch_assert_queue_V2(v5);

      v6 = sub_1001677D0(v7, @"0");
    }

    else
    {
      [a1 setLocalOuterEndpoint:0];
      v6 = 0;
    }

    [a1 setRemoteOuterEndpoint:v6];
  }
}

void sub_1000892A8(void *a1)
{
  v2 = sub_100163A30(NRDLocalDevice, a1[4]);
  if (sub_100147B98(v2))
  {
    v3 = _NRCopyLogObjectForNRUUID();
    IsLevelEnabled = _NRLogIsLevelEnabled();

    if (IsLevelEnabled)
    {
      v5 = _NRCopyLogObjectForNRUUID();
      v6 = [a1 copyDescription];
      _NRLogWithArgs(v5, 0, "%s%.30s:%-4d %@: Sending proxy config to peer", "", "[NRLinkBluetooth sendProxyConfig]", 8381, v6);
    }

    objc_initWeak(&location, a1);
    v7 = *(a1 + 1311);
    v8 = sub_100147C1C(v2, 0);
    v14 = v8;
    v9 = [NSArray arrayWithObjects:&v14 count:1];
    v10 = [a1 queue];
    v11[0] = _NSConcreteStackBlock;
    v11[1] = 3221225472;
    v11[2] = sub_10008AB7C;
    v11[3] = &unk_1001FC018;
    objc_copyWeak(&v12, &location);
    [v7 sendPrivateNotifies:v9 maxRetries:10 retryIntervalInMilliseconds:10000 callbackQueue:v10 callback:v11];

    objc_destroyWeak(&v12);
    objc_destroyWeak(&location);
  }
}

void sub_10008947C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, id location)
{
  objc_destroyWeak((v18 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_1000894A8(void *a1)
{
  v2 = _NRCopyLogObjectForNRUUID();
  IsLevelEnabled = _NRLogIsLevelEnabled();

  if (IsLevelEnabled)
  {
    v4 = _NRCopyLogObjectForNRUUID();
    v5 = [a1 copyDescription];
    _NRLogWithArgs(v4, 0, "%s%.30s:%-4d %@: Requesting device identity from peer", "", "[NRLinkBluetooth sendDeviceIdentityRequest]", 8432, v5);
  }

  objc_initWeak(&location, a1);
  v6 = [[NEIKEv2PrivateNotify alloc] initWithNotifyStatus:50352 notifyData:0];
  v7 = *(a1 + 1311);
  v13 = v6;
  v8 = [NSArray arrayWithObjects:&v13 count:1];
  v9 = [a1 queue];
  v10[0] = _NSConcreteStackBlock;
  v10[1] = 3221225472;
  v10[2] = sub_10008AA58;
  v10[3] = &unk_1001FC018;
  objc_copyWeak(&v11, &location);
  [v7 sendPrivateNotifies:v8 maxRetries:10 retryIntervalInMilliseconds:10000 callbackQueue:v9 callback:v10];

  objc_destroyWeak(&v11);
  objc_destroyWeak(&location);
}

void sub_100089668(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, id location)
{
  objc_destroyWeak((v18 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_1000896A4(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  if (WeakRetained)
  {
    v2 = WeakRetained;
    sub_1000850B4(WeakRetained, 3);
    WeakRetained = v2;
  }
}

void sub_1000896EC(uint64_t a1)
{
  if (*(a1 + 293) == 1)
  {
    v3 = objc_alloc_init(NSMutableDictionary);
    v4 = [[NSData alloc] initWithBytes:a1 + 2095 length:16];
    v5 = [[NSData alloc] initWithBytes:a1 + 2111 length:16];
    [v3 setObject:v4 forKeyedSubscript:@"source-address-bytes"];
    [v3 setObject:v5 forKeyedSubscript:@"destination-address-bytes"];
    v13 = v3;
    v6 = *(a1 + 1399);
    if (v6 && [v6 direct])
    {
      [*(a1 + 1399) sendXPCCommDictionary:v13];
    }

    else
    {
      objc_opt_self();
      if (qword_1002290C0 != -1)
      {
        dispatch_once(&qword_1002290C0, &stru_1001FB2B0);
      }

      v7 = qword_1002290B8;
      v8 = v7;
      if (v7)
      {
        v9 = *(a1 + 32);
        v10 = *(v7 + 28);
        v11 = v13;
        v12 = [v10 objectForKeyedSubscript:v9];
        sub_100114680(v12, v11);
      }
    }
  }
}

void sub_100089894(void *a1)
{
  if ([a1 virtualInterface] || *(a1 + 1479))
  {
    v2 = sub_100163A30(NRDLocalDevice, a1[4]);
    v3 = sub_100173200(v2);
    v4 = *(a1 + 1479);
    if (v4)
    {
      [v4 setLocalAddresses:v3];
    }

    else if ([a1 virtualInterface])
    {
      [a1 virtualInterface];
      v10 = 0u;
      v11 = 0u;
      v12 = 0u;
      v13 = 0u;
      v5 = NEVirtualInterfaceCopyAddresses();
      v6 = [v5 countByEnumeratingWithState:&v10 objects:v14 count:16];
      if (v6)
      {
        v7 = v6;
        v8 = *v11;
        do
        {
          for (i = 0; i != v7; ++i)
          {
            if (*v11 != v8)
            {
              objc_enumerationMutation(v5);
            }

            [a1 virtualInterface];
            NEVirtualInterfaceRemoveAddress();
          }

          v7 = [v5 countByEnumeratingWithState:&v10 objects:v14 count:16];
        }

        while (v7);
      }

      [a1 virtualInterface];
      NEVirtualInterfaceRemoveAllRoutes();
      if (!sub_10008A218(a1))
      {
        [a1 cancelWithReason:@"failed to configure addresses"];
      }
    }
  }
}

void sub_100089A48(void *a1)
{
  v16 = sub_100163A30(NRDLocalDevice, a1[4]);
  if (!v16)
  {
    v10 = sub_10007CF34();
    IsLevelEnabled = _NRLogIsLevelEnabled();

    if (IsLevelEnabled)
    {
      v12 = sub_10007CF34();
      _NRLogWithArgs(v12, 16, "%s%.30s:%-4d ABORTING: Assertion Failed: (localDevice) != ((void*)0)", "", "[NRLinkBluetooth addVirtualInterfaceRoutes]", 6320);
    }

    v13 = _os_log_pack_size();
    v14 = __error();
    v15 = _os_log_pack_fill(&v16 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0), v13, *v14, &_mh_execute_header, "%{public}s Assertion Failed: (localDevice) != ((void*)0)");
    *v15 = 136446210;
    *(v15 + 4) = "[NRLinkBluetooth addVirtualInterfaceRoutes]";
    sub_10007CF34();
    _NRLogAbortWithPack();
  }

  NEVirtualInterfaceRemoveAllRoutes();
  v2 = sub_100003490();
  dispatch_assert_queue_V2(v2);

  v3 = sub_100003490();
  dispatch_assert_queue_V2(v3);

  v4 = sub_1001677D0(v16, @"0");
  v5 = [v4 hostname];

  NEVirtualInterfaceAddIPv6Route();
  v6 = sub_100003490();
  dispatch_assert_queue_V2(v6);

  v7 = sub_100003490();
  dispatch_assert_queue_V2(v7);

  v8 = sub_100167B9C(v16, @"0");
  v9 = [v8 hostname];

  NEVirtualInterfaceAddIPv6Route();
  NEVirtualInterfaceUpdateAdHocService();
  [a1 checkProxyAgentWithForceUpdate:1];
}

void sub_100089C88(uint64_t a1, void *a2)
{
  v25 = a2;
  v3 = _NRCopyLogObjectForNRUUID();
  IsLevelEnabled = _NRLogIsLevelEnabled();

  if (IsLevelEnabled)
  {
    v5 = _NRCopyLogObjectForNRUUID();
    v6 = [*(a1 + 32) copyDescription];
    _NRLogWithArgs(v5, 0, "%s%.30s:%-4d %@: Plumbed device identity %@", "", "[NRLinkBluetooth handleNotifyCode:payload:dataProtectionClass:]_block_invoke", 8746, v6, v25);
  }

  v7 = _NRCopyLogObjectForNRUUID();
  v8 = _NRLogIsLevelEnabled();

  if (v8)
  {
    v9 = _NRCopyLogObjectForNRUUID();
    v10 = [*(a1 + 32) copyDescription];
    if (v25)
    {
      v11 = v25[8];
      v12 = v11;
      if (v11)
      {
        v13 = *(v11 + 1);
      }

      else
      {
        v13 = 0;
      }
    }

    else
    {
      v12 = 0;
      v13 = 0;
    }

    v14 = v13;
    v15 = [v14 UUIDString];
    _NRLogWithArgs(v9, 0, "%s%.30s:%-4d %@: deviceIdentityUUID=%@", "", "[NRLinkBluetooth handleNotifyCode:payload:dataProtectionClass:]_block_invoke", 8748, v10, v15);
  }

  v16 = _NRCopyLogObjectForNRUUID();
  v17 = _NRLogIsLevelEnabled();

  if (v17)
  {
    v18 = _NRCopyLogObjectForNRUUID();
    v19 = [*(a1 + 32) copyDescription];
    if (v25)
    {
      v20 = v25[8];
      v21 = v20;
      if (v20)
      {
        v22 = *(v20 + 2);
      }

      else
      {
        v22 = 0;
      }
    }

    else
    {
      v21 = 0;
      v22 = 0;
    }

    v23 = v22;
    LogString = _NRKeyCreateLogString();
    _NRLogWithArgs(v18, 0, "%s%.30s:%-4d %@: deviceIdentityPublicKey=%@", "", "[NRLinkBluetooth handleNotifyCode:payload:dataProtectionClass:]_block_invoke", 8750, v19, LogString);
  }
}

void sub_100089ED8(void *a1)
{
  v2 = [a1 nrUUID];
  v3 = sub_10016D388(NRDLocalDevice, v2);

  if (v3)
  {
    v4 = _NRCopyLogObjectForNRUUID();
    IsLevelEnabled = _NRLogIsLevelEnabled();

    if (IsLevelEnabled)
    {
      v6 = _NRCopyLogObjectForNRUUID();
      v7 = [a1 copyDescription];
      _NRLogWithArgs(v6, 0, "%s%.30s:%-4d %@: Sending device identity to peer", "", "[NRLinkBluetooth sendDeviceIdentity]", 8461, v7);
    }

    objc_initWeak(&location, a1);
    v8 = [[NEIKEv2PrivateNotify alloc] initWithNotifyStatus:50351 notifyData:v3];
    v9 = *(a1 + 1311);
    v15 = v8;
    v10 = [NSArray arrayWithObjects:&v15 count:1];
    v11 = [a1 queue];
    v12[0] = _NSConcreteStackBlock;
    v12[1] = 3221225472;
    v12[2] = sub_10008A0F4;
    v12[3] = &unk_1001FC018;
    objc_copyWeak(&v13, &location);
    [v9 sendPrivateNotifies:v10 maxRetries:10 retryIntervalInMilliseconds:10000 callbackQueue:v11 callback:v12];

    objc_destroyWeak(&v13);
    objc_destroyWeak(&location);
  }
}

void sub_10008A0C8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, id location)
{
  objc_destroyWeak((v18 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_10008A0F4(uint64_t a1, int a2)
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
      _NRLogWithArgs(v6, 0, "%s%.30s:%-4d %@: Received response to device identity message", "", "[NRLinkBluetooth sendDeviceIdentity]_block_invoke", 8476, v7);
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
      _NRLogWithArgs(v6, 16, "%s%.30s:%-4d %@: Did not receive response to device identity message", "", "[NRLinkBluetooth sendDeviceIdentity]_block_invoke", 8478, v7);
    }

    WeakRetained = v9;
  }

LABEL_8:
}

BOOL sub_10008A218(void *a1)
{
  if (![a1 virtualInterface])
  {
    v63 = sub_10007CF34();
    IsLevelEnabled = _NRLogIsLevelEnabled();

    if (IsLevelEnabled)
    {
      v3 = sub_10007CF34();
      _NRLogWithArgs(v3, 17, "%s called with null self.virtualInterface", "[NRLinkBluetooth configureVirtualInterfaceAddresses]");
      goto LABEL_38;
    }

    return 0;
  }

  v2 = [a1 nrUUID];
  v3 = sub_100163A30(NRDLocalDevice, v2);

  if (!v3)
  {
    v65 = sub_10007CF34();
    v66 = _NRLogIsLevelEnabled();

    if (v66)
    {
      v67 = sub_10007CF34();
      _NRLogWithArgs(v67, 16, "%s%.30s:%-4d ABORTING: Assertion Failed: (localDevice) != ((void*)0)", "", "[NRLinkBluetooth configureVirtualInterfaceAddresses]", 6508);
    }

    v68 = _os_log_pack_size();
    v69 = __error();
    v70 = _os_log_pack_fill(&v71 - ((v68 + 15) & 0xFFFFFFFFFFFFFFF0), v68, *v69, &_mh_execute_header, "%{public}s Assertion Failed: (localDevice) != ((void*)0)");
    *v70 = 136446210;
    *(v70 + 4) = "[NRLinkBluetooth configureVirtualInterfaceAddresses]";
    sub_10007CF34();
    _NRLogAbortWithPack();
    return 0;
  }

  if ([a1 isExternalDeviceLink])
  {
    v4 = sub_100003490();
    dispatch_assert_queue_V2(v4);

    v72 = 0uLL;
    v74 = 0;
    v73 = 0;
    v5 = sub_100003490();
    dispatch_assert_queue_V2(v5);

    v6 = sub_100003490();
    dispatch_assert_queue_V2(v6);

    v7 = sub_1001672A0(v3, @"0");
    sub_1001681A4(NRDLocalDevice, &v72, v7);

    do
    {
      arc4random_buf(&v72 + 8, 0x10uLL);
    }

    while (BYTE3(v73) == 255 && BYTE4(v73) == 254);
    *(&v72 + 1) = 33022;
    v8 = [NWAddressEndpoint endpointWithAddress:&v72];
    v9 = [v8 hostname];

    [a1 virtualInterface];
    v10 = NEVirtualInterfaceAddAddress();
    v11 = v10 != 0;
    if (!v10)
    {
      v12 = _NRCopyLogObjectForNRUUID();
      v13 = _NRLogIsLevelEnabled();

      if (v13)
      {
        v14 = _NRCopyLogObjectForNRUUID();
        v15 = [a1 copyDescription];
        _NRLogWithArgs(v14, 17, "%@: failed to add link-local address", v15);
      }

      [a1 invalidateVirtualInterface];
    }

    goto LABEL_39;
  }

  [a1 virtualInterface];
  v16 = sub_100003490();
  dispatch_assert_queue_V2(v16);

  v17 = sub_100003490();
  dispatch_assert_queue_V2(v17);

  v18 = sub_1001672A0(v3, @"0");
  v19 = [v18 hostname];

  v20 = NEVirtualInterfaceAddAddress();
  if (!v20)
  {
    v46 = _NRCopyLogObjectForNRUUID();
    v47 = _NRLogIsLevelEnabled();

    if (!v47)
    {
      goto LABEL_37;
    }

    v48 = _NRCopyLogObjectForNRUUID();
    v49 = [a1 copyDescription];
    _NRLogWithArgs(v48, 17, "%@: failed to add ClassD address", v49);
LABEL_36:

    goto LABEL_37;
  }

  [a1 virtualInterface];
  v21 = sub_100003490();
  dispatch_assert_queue_V2(v21);

  v22 = sub_100003490();
  dispatch_assert_queue_V2(v22);

  v23 = sub_1001679E0(v3, @"0");
  v24 = [v23 hostname];

  v25 = NEVirtualInterfaceAddAddress();
  if (!v25)
  {
    v50 = _NRCopyLogObjectForNRUUID();
    v51 = _NRLogIsLevelEnabled();

    if (!v51)
    {
      goto LABEL_37;
    }

    v48 = _NRCopyLogObjectForNRUUID();
    v49 = [a1 copyDescription];
    _NRLogWithArgs(v48, 17, "%@: failed to add ClassC address", v49);
    goto LABEL_36;
  }

  [a1 virtualInterface];
  v26 = sub_100003490();
  dispatch_assert_queue_V2(v26);

  v27 = sub_1001730E8(v3);
  v28 = [v27 hostname];

  v29 = NEVirtualInterfaceAddAddress();
  if (!v29)
  {
    v52 = _NRCopyLogObjectForNRUUID();
    v53 = _NRLogIsLevelEnabled();

    if (!v53)
    {
      goto LABEL_37;
    }

    v48 = _NRCopyLogObjectForNRUUID();
    v49 = [a1 copyDescription];
    _NRLogWithArgs(v48, 17, "%@: failed to add link-local address", v49);
    goto LABEL_36;
  }

  [a1 virtualInterface];
  if (!NEVirtualInterfaceAddAddress())
  {
    v54 = _NRCopyLogObjectForNRUUID();
    v55 = _NRLogIsLevelEnabled();

    if (!v55)
    {
      goto LABEL_37;
    }

    v48 = _NRCopyLogObjectForNRUUID();
    v49 = [a1 copyDescription];
    _NRLogWithArgs(v48, 17, "%@: failed to add bogus IPv4 address", v49);
    goto LABEL_36;
  }

  [a1 virtualInterface];
  v30 = sub_100003490();
  dispatch_assert_queue_V2(v30);

  v31 = sub_100003490();
  dispatch_assert_queue_V2(v31);

  v32 = sub_1001677D0(v3, @"0");
  v33 = [v32 hostname];

  v34 = NEVirtualInterfaceAddIPv6Route();
  if (!v34)
  {
    v56 = _NRCopyLogObjectForNRUUID();
    v57 = _NRLogIsLevelEnabled();

    if (!v57)
    {
      goto LABEL_37;
    }

    v48 = _NRCopyLogObjectForNRUUID();
    v49 = [a1 copyDescription];
    _NRLogWithArgs(v48, 17, "%@: failed to add ClassD route", v49);
    goto LABEL_36;
  }

  [a1 virtualInterface];
  v35 = sub_100003490();
  dispatch_assert_queue_V2(v35);

  v36 = sub_100003490();
  dispatch_assert_queue_V2(v36);

  v37 = sub_100167B9C(v3, @"0");
  v38 = [v37 hostname];

  v39 = NEVirtualInterfaceAddIPv6Route();
  if (v39)
  {
    [a1 virtualInterface];
    if (NEVirtualInterfaceUpdateAdHocService())
    {
      [a1 virtualInterface];
      v40 = NEVirtualInterfaceCopyName();
      [a1 virtualInterface];
      v41 = NEVirtualInterfaceCopyAddresses();
      v42 = _NRCopyLogObjectForNRUUID();
      v43 = _NRLogIsLevelEnabled();

      if (v43)
      {
        v44 = _NRCopyLogObjectForNRUUID();
        v45 = [a1 copyDescription];
        _NRLogWithArgs(v44, 0, "%s%.30s:%-4d %@: added addresses to virtual interface %@ : %@", "", "[NRLinkBluetooth configureVirtualInterfaceAddresses]", 6556, v45, v40, v41);
      }

      v11 = 1;
      goto LABEL_39;
    }

    v60 = _NRCopyLogObjectForNRUUID();
    v61 = _NRLogIsLevelEnabled();

    if (!v61)
    {
      goto LABEL_37;
    }

    v48 = _NRCopyLogObjectForNRUUID();
    v49 = [a1 copyDescription];
    _NRLogWithArgs(v48, 17, "%@: failed to update ad-hoc service", v49);
    goto LABEL_36;
  }

  v58 = _NRCopyLogObjectForNRUUID();
  v59 = _NRLogIsLevelEnabled();

  if (v59)
  {
    v48 = _NRCopyLogObjectForNRUUID();
    v49 = [a1 copyDescription];
    _NRLogWithArgs(v48, 17, "%@: failed to add ClassC route", v49);
    goto LABEL_36;
  }

LABEL_37:
  [a1 invalidateVirtualInterface];
LABEL_38:
  v11 = 0;
LABEL_39:

  return v11;
}

void sub_10008AA58(uint64_t a1, int a2)
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
      _NRLogWithArgs(v6, 0, "%s%.30s:%-4d %@: Received response to device identity request", "", "[NRLinkBluetooth sendDeviceIdentityRequest]_block_invoke", 8448, v7);
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
      _NRLogWithArgs(v6, 16, "%s%.30s:%-4d %@: Did not receive response to device identity request", "", "[NRLinkBluetooth sendDeviceIdentityRequest]_block_invoke", 8450, v7);
    }

    WeakRetained = v9;
  }

LABEL_8:
}

void sub_10008AB7C(uint64_t a1, int a2)
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
      _NRLogWithArgs(v6, 0, "%s%.30s:%-4d %@: Received response to proxy notify payload", "", "[NRLinkBluetooth sendProxyConfig]_block_invoke", 8393, v7);
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
      _NRLogWithArgs(v6, 16, "%s%.30s:%-4d %@: Did not receive response to proxy notify payload", "", "[NRLinkBluetooth sendProxyConfig]_block_invoke", 8395, v7);
    }

    WeakRetained = v9;
  }

LABEL_8:
}

void sub_10008ACA0(_BYTE *a1)
{
  if ((a1[289] & 1) == 0)
  {
    a1[275] = 1;
    v2 = [a1 nrUUID];
    v3 = sub_100163A30(NRDLocalDevice, v2);

    if (v3)
    {
      if ((v3[24] & 0x4010) != 0 || v3[8] > 0x12u)
      {
        goto LABEL_7;
      }

      objc_initWeak(&location, a1);
      objc_opt_self();
      if (qword_1002294C8 == -1)
      {
LABEL_6:
        v4 = qword_1002294C0;
        v12[0] = _NSConcreteStackBlock;
        v12[1] = 3221225472;
        v12[2] = sub_10008B8A4;
        v12[3] = &unk_1001FC730;
        objc_copyWeak(&v13, &location);
        sub_100181B44(v4, v12);

        objc_destroyWeak(&v13);
        objc_destroyWeak(&location);
LABEL_7:

        return;
      }
    }

    else
    {
      v5 = sub_10007CF34();
      IsLevelEnabled = _NRLogIsLevelEnabled();

      if (IsLevelEnabled)
      {
        v7 = sub_10007CF34();
        _NRLogWithArgs(v7, 16, "%s%.30s:%-4d ABORTING: Assertion Failed: (localDevice) != ((void*)0)", "", "[NRLinkBluetooth scheduleIKESessionClassADueToConnectFailure]", 9819);
      }

      v3 = _os_log_pack_size();
      v8 = &v12[-1] - ((__chkstk_darwin() + 15) & 0xFFFFFFFFFFFFFFF0);
      v9 = __error();
      v10 = _os_log_pack_fill(v8, v3, *v9, &_mh_execute_header, "%{public}s Assertion Failed: (localDevice) != ((void*)0)");
      *v10 = 136446210;
      *(v10 + 4) = "[NRLinkBluetooth scheduleIKESessionClassADueToConnectFailure]";
      sub_10007CF34();
      _NRLogAbortWithPack();
      __break(1u);
    }

    dispatch_once(&qword_1002294C8, &stru_1001FD250);
    goto LABEL_6;
  }
}

void sub_10008AEFC(_Unwind_Exception *a1)
{
  objc_destroyWeak((v1 + 32));
  objc_destroyWeak((v2 - 48));
  _Unwind_Resume(a1);
}

void sub_10008AF24(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v2 = WeakRetained;
  if (WeakRetained && WeakRetained[16] != 255 && *(WeakRetained + 1311))
  {
    objc_initWeak(&location, WeakRetained);
    v3 = *(v2 + 1311);
    v4 = sub_100147A80();
    v10 = v4;
    v5 = [NSArray arrayWithObjects:&v10 count:1];
    v6 = [v2 queue];
    v7[0] = _NSConcreteStackBlock;
    v7[1] = 3221225472;
    v7[2] = sub_10008B780;
    v7[3] = &unk_1001FC018;
    objc_copyWeak(&v8, &location);
    [v3 sendPrivateNotifies:v5 maxRetries:10 retryIntervalInMilliseconds:10000 callbackQueue:v6 callback:v7];

    objc_destroyWeak(&v8);
    objc_destroyWeak(&location);
  }
}

void sub_10008B088(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, id location)
{
  objc_destroyWeak((v14 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

id sub_10008B0B4(void *a1)
{
  if ([a1 state] == 255 || !objc_msgSend(a1, "shouldSendIDSDeviceID"))
  {
    v6 = 0;
  }

  else
  {
    objc_opt_self();
    if (qword_1002290C0 != -1)
    {
      dispatch_once(&qword_1002290C0, &stru_1001FB2B0);
    }

    v2 = qword_1002290B8;
    v3 = sub_1000CAD2C(v2, 0);

    if (v3)
    {
      v4 = [v3 dataUsingEncoding:4];
      v5 = [[NEIKEv2PrivateNotify alloc] initWithNotifyStatus:48607 notifyData:v4];
    }

    else
    {
      objc_initWeak(&location, a1);
      objc_opt_self();
      if (qword_1002290C0 != -1)
      {
        dispatch_once(&qword_1002290C0, &stru_1001FB2B0);
      }

      v7 = qword_1002290B8;
      v9[0] = _NSConcreteStackBlock;
      v9[1] = 3221225472;
      v9[2] = sub_10008B3B8;
      v9[3] = &unk_1001FBF00;
      objc_copyWeak(&v10, &location);

      objc_destroyWeak(&v10);
      objc_destroyWeak(&location);
      v5 = 0;
    }

    v6 = v5;
  }

  return v6;
}

void sub_10008B270(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, id location)
{
  objc_destroyWeak((v14 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_10008B294(uint64_t a1, int a2)
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
      _NRLogWithArgs(v6, 0, "%s%.30s:%-4d %@: Received response to notify payloads", "", "[NRLinkBluetooth sendNotifyPayload]_block_invoke", 8424, v7);
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
      _NRLogWithArgs(v6, 16, "%s%.30s:%-4d %@: Did not receive response to notify payloads", "", "[NRLinkBluetooth sendNotifyPayload]_block_invoke", 8426, v7);
    }

    WeakRetained = v9;
  }

LABEL_8:
}

void sub_10008B3B8(uint64_t a1, void *a2)
{
  v3 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v5 = WeakRetained;
  if (WeakRetained && [WeakRetained state] != 255)
  {
    if (v3)
    {
      v6 = [v3 dataUsingEncoding:4];
      v7 = [[NEIKEv2PrivateNotify alloc] initWithNotifyStatus:48607 notifyData:v6];
      v8 = _NRCopyLogObjectForNRUUID();
      IsLevelEnabled = _NRLogIsLevelEnabled();

      if (IsLevelEnabled)
      {
        v10 = _NRCopyLogObjectForNRUUID();
        v11 = [v5 copyDescription];
        _NRLogWithArgs(v10, 0, "%s%.30s:%-4d %@: Sending IDS device ID to peer", "", "[NRLinkBluetooth getOrSendIDSDeviceID]_block_invoke", 8354, v11);
      }

      v12 = *(v5 + 1311);
      v21 = v7;
      v13 = [NSArray arrayWithObjects:&v21 count:1];
      v14 = [v5 queue];
      v19[0] = _NSConcreteStackBlock;
      v19[1] = 3221225472;
      v19[2] = sub_10008B65C;
      v19[3] = &unk_1001FC018;
      objc_copyWeak(&v20, (a1 + 32));
      [v12 sendPrivateNotifies:v13 maxRetries:10 retryIntervalInMilliseconds:10000 callbackQueue:v14 callback:v19];

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
        _NRLogWithArgs(v17, 16, "%s%.30s:%-4d %@: No IDS Device ID to send to peer", "", "[NRLinkBluetooth getOrSendIDSDeviceID]_block_invoke", 8347, v18);
      }
    }
  }
}

void sub_10008B65C(uint64_t a1, int a2)
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
      _NRLogWithArgs(v6, 0, "%s%.30s:%-4d %@: Received response to IDS device ID notify payload", "", "[NRLinkBluetooth getOrSendIDSDeviceID]_block_invoke_2", 8365, v7);
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
      _NRLogWithArgs(v6, 16, "%s%.30s:%-4d %@: Did not receive response to IDS device ID notify payload", "", "[NRLinkBluetooth getOrSendIDSDeviceID]_block_invoke_2", 8367, v7);
    }

    WeakRetained = v9;
  }

LABEL_8:
}

void sub_10008B780(uint64_t a1, int a2)
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
      _NRLogWithArgs(v6, 0, "%s%.30s:%-4d %@: Received response to classC unlock", "", "[NRLinkBluetooth setupIKECallbacks:]_block_invoke_3", 8939, v7);
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
      _NRLogWithArgs(v6, 16, "%s%.30s:%-4d %@: Did not receive response to classC unlock", "", "[NRLinkBluetooth setupIKECallbacks:]_block_invoke_3", 8941, v7);
    }

    WeakRetained = v9;
  }

LABEL_8:
}

void sub_10008B8A4(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  if (WeakRetained)
  {
    v11 = WeakRetained;
    v2 = [WeakRetained state] == 255;
    WeakRetained = v11;
    if (!v2)
    {
      v11[275] = 0;
      v3 = [WeakRetained nrUUID];
      v4 = sub_100163A30(NRDLocalDevice, v3);

      if (!v4)
      {
        v5 = sub_10007CF34();
        IsLevelEnabled = _NRLogIsLevelEnabled();

        if (IsLevelEnabled)
        {
          v7 = sub_10007CF34();
          _NRLogWithArgs(v7, 16, "%s%.30s:%-4d ABORTING: Assertion Failed: (localDevice2) != ((void*)0)", "", "[NRLinkBluetooth scheduleIKESessionClassADueToConnectFailure]_block_invoke", 9830);
        }

        v8 = _os_log_pack_size();
        v9 = __error();
        v10 = _os_log_pack_fill(&v11 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0), v8, *v9, &_mh_execute_header, "%{public}s Assertion Failed: (localDevice2) != ((void*)0)");
        *v10 = 136446210;
        *(v10 + 4) = "[NRLinkBluetooth scheduleIKESessionClassADueToConnectFailure]_block_invoke";
        sub_10007CF34();
        _NRLogAbortWithPack();
      }

      if ((v4[24] & 0x4010) == 0 && v4[8] <= 0x12u)
      {
        sub_100084C80(v11, 1, 0, 0);
      }

      WeakRetained = v11;
    }
  }
}

void sub_10008BA58(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5)
{
  v16 = a5;
  if ([*(a1 + 32) state] == 255)
  {
    v9 = _NRCopyLogObjectForNRUUID();
    IsLevelEnabled = _NRLogIsLevelEnabled();

    if (IsLevelEnabled)
    {
      v11 = _NRCopyLogObjectForNRUUID();
      v12 = [*(a1 + 32) copyDescription];
      _NRLogWithArgs(v11, 0, "%s%.30s:%-4d %@: Ignoring result as link is cancelled", "", "[NRLinkBluetooth sendlocalPublicClassCKeysEncryptedWithIDS]_block_invoke", 9139, v12);
    }
  }

  else if (v16)
  {
    v7 = *(a1 + 32);
    if (v7)
    {
      objc_storeStrong((v7 + 1383), a5);
      v8 = *(a1 + 32);
    }

    else
    {
      v8 = 0;
    }

    sub_10008448C(v8);
  }

  else
  {
    v13 = sub_10007CF34();
    v14 = _NRLogIsLevelEnabled();

    if (v14)
    {
      v15 = sub_10007CF34();
      _NRLogWithArgs(v15, 17, "%s called with null localPublicClassCKeysEncryptedWithIDS", "[NRLinkBluetooth sendlocalPublicClassCKeysEncryptedWithIDS]_block_invoke");
    }
  }
}

void sub_10008BBB0(uint64_t a1, int a2)
{
  v4 = _NRCopyLogObjectForNRUUID();
  if (a2)
  {
    IsLevelEnabled = _NRLogIsLevelEnabled();

    if (IsLevelEnabled)
    {
      v6 = _NRCopyLogObjectForNRUUID();
      v7 = [*(a1 + 32) copyDescription];
      _NRLogWithArgs(v6, 0, "%s%.30s:%-4d %@: localPublicClassCKeysEncryptedWithIDS was received", "", "[NRLinkBluetooth sendlocalPublicClassCKeysEncryptedWithIDS]_block_invoke_2", 9162, v7);
    }

    v8 = *(a1 + 32);
    if (v8)
    {

      sub_100084C80(v8, 3, 0, 0);
    }
  }

  else
  {
    v9 = _NRLogIsLevelEnabled();

    if (v9)
    {
      v11 = _NRCopyLogObjectForNRUUID();
      v10 = [*(a1 + 32) copyDescription];
      _NRLogWithArgs(v11, 16, "%s%.30s:%-4d %@: localPublicClassCKeysEncryptedWithIDS was not received", "", "[NRLinkBluetooth sendlocalPublicClassCKeysEncryptedWithIDS]_block_invoke_2", 9165, v10);
    }
  }
}

void sub_10008BD24(uint64_t a1, uint64_t a2, void *a3)
{
  v5 = a3;
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  if (WeakRetained)
  {
    if (v5)
    {
      v7 = [NSString alloc];
      v8 = *(a1 + 32);
      SessionStateString = NEIKEv2CreateSessionStateString();
      v10 = [v7 initWithFormat:@"pairing session %@ got IKE error %@ with state %@", v8, v5, SessionStateString];

LABEL_4:
      v11 = nr_absolute_time();
      v12 = *(WeakRetained + 2007);
      if (v12)
      {
        *(v12 + 128) = v11;
      }

      if (*(WeakRetained + 274))
      {
        [WeakRetained reportEvent:3009 details:v10];
      }

      else
      {
        sub_10016B844(NRDLocalDevice, -2013, v10, WeakRetained[4]);
        [WeakRetained cancelWithReason:{@"%@", v10}];
      }

LABEL_9:

      goto LABEL_10;
    }

    v13 = *(a1 + 32);
    v14 = NEIKEv2CreateSessionStateString();
    [WeakRetained reportEvent:3009 detailsFormat:@"pairing session %@ changed state to %@", v13, v14];

    if (a2 == 3)
    {
      v10 = [[NSString alloc] initWithFormat:@"pairing session IKE %@ disconnected", *(a1 + 32)];
      goto LABEL_4;
    }

    if (a2 == 2)
    {
      v15 = nr_absolute_time();
      v16 = *(WeakRetained + 2007);
      if (v16)
      {
        *(v16 + 128) = v15;
      }

      *(WeakRetained + 274) = 1;
      if ((*(WeakRetained + 289) & 1) == 0)
      {
        if (*(WeakRetained + 1375))
        {
          v17 = sub_100083C40(WeakRetained, 0);
          [WeakRetained reportEvent:3402 details:@"ClassD"];
          v39 = [[NEIKEv2PrivateNotify alloc] initWithNotifyStatus:50401 notifyData:*(WeakRetained + 1375)];
          [v17 addObject:?];
          v18 = [WeakRetained nrUUID];
          v19 = sub_10016D388(NRDLocalDevice, v18);

          if (v19)
          {
            [WeakRetained reportEvent:3400 details:@"Identity"];
            v20 = [[NEIKEv2PrivateNotify alloc] initWithNotifyStatus:50351 notifyData:v19];
            [v17 addObject:v20];
          }

          v21 = *(WeakRetained + 1375);
          *(WeakRetained + 1375) = 0;

          v22 = [*(WeakRetained + 1335) description];
          v23 = *(WeakRetained + 1335);
          v24 = WeakRetained[1];
          v42[0] = _NSConcreteStackBlock;
          v42[1] = 3221225472;
          v42[2] = sub_10008E354;
          v42[3] = &unk_1001FB060;
          v25 = WeakRetained;
          v43 = v25;
          v44 = v22;
          v26 = v22;
          [v23 sendPrivateNotifies:v17 maxRetries:10 retryIntervalInMilliseconds:10000 callbackQueue:v24 callback:v42];
          sub_10008448C(v25);
          sub_1000846C0(v25);
        }

        v10 = objc_alloc_init(NSMutableArray);
        if (*(WeakRetained + 1351))
        {
          [WeakRetained reportEvent:3400 details:@"ClassD"];
          v27 = [[NEIKEv2PrivateNotify alloc] initWithNotifyStatus:50411 notifyData:*(WeakRetained + 1351)];
          [v10 addObject:v27];
          v28 = *(WeakRetained + 1351);
          *(WeakRetained + 1351) = 0;
        }

        if (*(WeakRetained + 1359))
        {
          [WeakRetained reportEvent:3400 details:@"ClassC"];
          v29 = [[NEIKEv2PrivateNotify alloc] initWithNotifyStatus:50412 notifyData:*(WeakRetained + 1359)];
          [v10 addObject:v29];
          v30 = *(WeakRetained + 1359);
          *(WeakRetained + 1359) = 0;
        }

        if (*(WeakRetained + 1367))
        {
          [WeakRetained reportEvent:3400 details:@"ClassA"];
          v31 = [[NEIKEv2PrivateNotify alloc] initWithNotifyStatus:50413 notifyData:*(WeakRetained + 1367)];
          [v10 addObject:v31];
          v32 = *(WeakRetained + 1367);
          *(WeakRetained + 1367) = 0;
        }

        if ([v10 count])
        {
          v33 = [WeakRetained nrUUID];
          v34 = sub_10016D388(NRDLocalDevice, v33);

          if (v34)
          {
            [WeakRetained reportEvent:3400 details:@"Identity"];
            v35 = [[NEIKEv2PrivateNotify alloc] initWithNotifyStatus:50351 notifyData:v34];
            [v10 addObject:v35];
          }

          v36 = sub_100083C40(WeakRetained, 0);
          [v10 addObjectsFromArray:v36];

          v37 = *(WeakRetained + 1335);
          v38 = WeakRetained[1];
          v40[0] = _NSConcreteStackBlock;
          v40[1] = 3221225472;
          v40[2] = sub_10008E454;
          v40[3] = &unk_1001FB2D8;
          v41 = WeakRetained;
          [v37 sendPrivateNotifies:v10 maxRetries:10 retryIntervalInMilliseconds:10000 callbackQueue:v38 callback:v40];
        }

        goto LABEL_9;
      }
    }
  }

LABEL_10:
}

void sub_10008C2F0(uint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  v14 = a4;
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  if (WeakRetained)
  {
    v7 = _NRCopyLogObjectForNRUUID();
    IsLevelEnabled = _NRLogIsLevelEnabled();

    if (v14)
    {
      if (!IsLevelEnabled)
      {
        goto LABEL_8;
      }

      v9 = _NRCopyLogObjectForNRUUID();
      v10 = [WeakRetained copyDescription];
      v11 = *(a1 + 32);
      SessionStateString = NEIKEv2CreateSessionStateString();
      _NRLogWithArgs(v9, 0, "%s%.30s:%-4d %@: pairing session %@ got child %u state update %@ error %@", "", "[NRLinkBluetooth setupIKECallbacksPairing]_block_invoke_4", 9384, v10, v11, a2, SessionStateString, v14);
    }

    else
    {
      if (!IsLevelEnabled)
      {
        goto LABEL_8;
      }

      v9 = _NRCopyLogObjectForNRUUID();
      v10 = [WeakRetained copyDescription];
      v13 = *(a1 + 32);
      SessionStateString = NEIKEv2CreateSessionStateString();
      _NRLogWithArgs(v9, 0, "%s%.30s:%-4d %@: pairing session %@ got child %u state update %@", "", "[NRLinkBluetooth setupIKECallbacksPairing]_block_invoke_4", 9387, v10, v13, a2, SessionStateString);
    }
  }

LABEL_8:
}

void sub_10008C454(uint64_t a1, void *a2)
{
  v8 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  if (WeakRetained)
  {
    v4 = _NRCopyLogObjectForNRUUID();
    IsLevelEnabled = _NRLogIsLevelEnabled();

    if (IsLevelEnabled)
    {
      v6 = _NRCopyLogObjectForNRUUID();
      v7 = [WeakRetained copyDescription];
      _NRLogWithArgs(v6, 0, "%s%.30s:%-4d %@: pairing session %@ got config update %@", "", "[NRLinkBluetooth setupIKECallbacksPairing]_block_invoke_5", 9397, v7, *(a1 + 32), v8);
    }
  }
}

void sub_10008C530(uint64_t a1, uint64_t a2, void *a3, void *a4)
{
  v13 = a3;
  v7 = a4;
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  if (WeakRetained)
  {
    v9 = _NRCopyLogObjectForNRUUID();
    IsLevelEnabled = _NRLogIsLevelEnabled();

    if (IsLevelEnabled)
    {
      v11 = _NRCopyLogObjectForNRUUID();
      v12 = [WeakRetained copyDescription];
      _NRLogWithArgs(v11, 0, "%s%.30s:%-4d %@: pairing session %@ got child %u traffic selector update local %@ remote %@", "", "[NRLinkBluetooth setupIKECallbacksPairing]_block_invoke_6", 9408, v12, *(a1 + 32), a2, v13, v7);
    }
  }
}

void sub_10008C630(uint64_t a1, void *a2)
{
  v8 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  if (WeakRetained)
  {
    v4 = _NRCopyLogObjectForNRUUID();
    IsLevelEnabled = _NRLogIsLevelEnabled();

    if (IsLevelEnabled)
    {
      v6 = _NRCopyLogObjectForNRUUID();
      v7 = [WeakRetained copyDescription];
      _NRLogWithArgs(v6, 0, "%s%.30s:%-4d %@: pairing session %@ got additional addresses %@", "", "[NRLinkBluetooth setupIKECallbacksPairing]_block_invoke_7", 9417, v7, *(a1 + 32), v8);
    }
  }
}

void sub_10008C70C(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 40));
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
      _NRLogWithArgs(v5, 0, "%s%.30s:%-4d %@: pairing session %@ got short DPD", "", "[NRLinkBluetooth setupIKECallbacksPairing]_block_invoke_8", 9425, v6, *(a1 + 32));

      WeakRetained = v7;
    }
  }
}

void sub_10008C7E0(uint64_t a1, void *a2)
{
  v3 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  if (WeakRetained)
  {
    v32 = v3;
    v5 = [v3 sortedArrayUsingComparator:&stru_1001FC4F0];
    v6 = _NRCopyLogObjectForNRUUID();
    IsLevelEnabled = _NRLogIsLevelEnabled();

    if (IsLevelEnabled)
    {
      v8 = _NRCopyLogObjectForNRUUID();
      v9 = [WeakRetained copyDescription];
      _NRLogWithArgs(v8, 0, "%s%.30s:%-4d %@: pairing session %@ got private notifies %@", "", "[NRLinkBluetooth setupIKECallbacksPairing]_block_invoke_9", 9435, v9, *(a1 + 32), v5);
    }

    v49 = 0u;
    v50 = 0u;
    v47 = 0u;
    v48 = 0u;
    v10 = v5;
    v11 = [v10 countByEnumeratingWithState:&v47 objects:v51 count:16];
    if (v11)
    {
      v12 = v11;
      v13 = *v48;
      do
      {
        for (i = 0; i != v12; i = i + 1)
        {
          if (*v48 != v13)
          {
            objc_enumerationMutation(v10);
          }

          v18 = *(*(&v47 + 1) + 8 * i);
          if ([v18 notifyStatus] == 50351)
          {
            [WeakRetained reportEvent:3401 details:@"Identity"];
            v15 = [v18 notifyData];
            v16 = WeakRetained[4];
            v45[0] = _NSConcreteStackBlock;
            v45[1] = 3221225472;
            v45[2] = sub_10008CE9C;
            v45[3] = &unk_1001FC068;
            v46 = WeakRetained;
            sub_10016E894(NRDLocalDevice, v15, v16, v45);

            v17 = v46;
          }

          else if ([v18 notifyStatus] == 50411)
          {
            [WeakRetained reportEvent:3401 details:@"ClassD"];
            v19 = [v18 notifyData];
            v20 = WeakRetained[4];
            v43[0] = _NSConcreteStackBlock;
            v43[1] = 3221225472;
            v43[2] = sub_10008D0EC;
            v43[3] = &unk_1001FC068;
            v44 = WeakRetained;
            sub_10016F27C(NRDLocalDevice, v19, 0, v20, v43);

            v17 = v44;
          }

          else if ([v18 notifyStatus] == 50412)
          {
            [WeakRetained reportEvent:3401 details:@"ClassC"];
            v21 = [v18 notifyData];
            v22 = WeakRetained[4];
            v41[0] = _NSConcreteStackBlock;
            v41[1] = 3221225472;
            v41[2] = sub_10008D3FC;
            v41[3] = &unk_1001FC068;
            v42 = WeakRetained;
            sub_10016F524(NRDLocalDevice, v21, 0, v22, v41);

            v17 = v42;
          }

          else if ([v18 notifyStatus] == 50413)
          {
            [WeakRetained reportEvent:3401 details:@"ClassA"];
            v23 = [v18 notifyData];
            v24 = WeakRetained[4];
            v39[0] = _NSConcreteStackBlock;
            v39[1] = 3221225472;
            v39[2] = sub_10008D708;
            v39[3] = &unk_1001FC068;
            v40 = WeakRetained;
            sub_10016F8AC(NRDLocalDevice, v23, v24, v39);

            v17 = v40;
          }

          else if ([v18 notifyStatus] == 50401)
          {
            [WeakRetained reportEvent:3403 details:@"ClassD"];
            v25 = [v18 notifyData];
            v26 = WeakRetained[4];
            v37[0] = _NSConcreteStackBlock;
            v37[1] = 3221225472;
            v37[2] = sub_10008DA14;
            v37[3] = &unk_1001FC068;
            v38 = WeakRetained;
            sub_10016FC30(NRDLocalDevice, v25, v26, v37);

            v17 = v38;
          }

          else if ([v18 notifyStatus] == 50402)
          {
            [WeakRetained reportEvent:3403 details:@"ClassC"];
            v27 = [v18 notifyData];
            v28 = WeakRetained[4];
            v35[0] = _NSConcreteStackBlock;
            v35[1] = 3221225472;
            v35[2] = sub_10008DD24;
            v35[3] = &unk_1001FC068;
            v36 = WeakRetained;
            sub_100170110(NRDLocalDevice, v27, v28, v35);

            v17 = v36;
          }

          else if ([v18 notifyStatus] == 50403)
          {
            [WeakRetained reportEvent:3403 details:@"ClassA"];
            v29 = [v18 notifyData];
            v30 = WeakRetained[4];
            v33[0] = _NSConcreteStackBlock;
            v33[1] = 3221225472;
            v33[2] = sub_10008E034;
            v33[3] = &unk_1001FC068;
            v34 = WeakRetained;
            sub_1001707C4(NRDLocalDevice, v29, v30, v33);

            v17 = v34;
          }

          else
          {
            v31 = [v18 notifyStatus];
            v17 = [v18 notifyData];
            sub_100087300(WeakRetained, v31, v17, 0);
          }
        }

        v12 = [v10 countByEnumeratingWithState:&v47 objects:v51 count:16];
      }

      while (v12);
    }

    v3 = v32;
  }
}

void sub_10008CE9C(uint64_t a1, void *a2)
{
  v25 = a2;
  v3 = _NRCopyLogObjectForNRUUID();
  IsLevelEnabled = _NRLogIsLevelEnabled();

  if (IsLevelEnabled)
  {
    v5 = _NRCopyLogObjectForNRUUID();
    v6 = [*(a1 + 32) copyDescription];
    _NRLogWithArgs(v5, 0, "%s%.30s:%-4d %@: Plumbed device identity %@", "", "[NRLinkBluetooth setupIKECallbacksPairing]_block_invoke_10", 9442, v6, v25);
  }

  v7 = _NRCopyLogObjectForNRUUID();
  v8 = _NRLogIsLevelEnabled();

  if (v8)
  {
    v9 = _NRCopyLogObjectForNRUUID();
    v10 = [*(a1 + 32) copyDescription];
    if (v25)
    {
      v11 = v25[8];
      v12 = v11;
      if (v11)
      {
        v13 = *(v11 + 1);
      }

      else
      {
        v13 = 0;
      }
    }

    else
    {
      v12 = 0;
      v13 = 0;
    }

    v14 = v13;
    v15 = [v14 UUIDString];
    _NRLogWithArgs(v9, 0, "%s%.30s:%-4d %@: deviceIdentityUUID=%@", "", "[NRLinkBluetooth setupIKECallbacksPairing]_block_invoke_10", 9444, v10, v15);
  }

  v16 = _NRCopyLogObjectForNRUUID();
  v17 = _NRLogIsLevelEnabled();

  if (v17)
  {
    v18 = _NRCopyLogObjectForNRUUID();
    v19 = [*(a1 + 32) copyDescription];
    if (v25)
    {
      v20 = v25[8];
      v21 = v20;
      if (v20)
      {
        v22 = *(v20 + 2);
      }

      else
      {
        v22 = 0;
      }
    }

    else
    {
      v21 = 0;
      v22 = 0;
    }

    v23 = v22;
    LogString = _NRKeyCreateLogString();
    _NRLogWithArgs(v18, 0, "%s%.30s:%-4d %@: deviceIdentityPublicKey=%@", "", "[NRLinkBluetooth setupIKECallbacksPairing]_block_invoke_10", 9446, v19, LogString);
  }
}

void sub_10008D0EC(uint64_t a1, void *a2)
{
  v35 = a2;
  v3 = _NRCopyLogObjectForNRUUID();
  IsLevelEnabled = _NRLogIsLevelEnabled();

  if (IsLevelEnabled)
  {
    v5 = _NRCopyLogObjectForNRUUID();
    v6 = [*(a1 + 32) copyDescription];
    _NRLogWithArgs(v5, 0, "%s%.30s:%-4d %@: Plumbed classD keys with OOBK %@", "", "[NRLinkBluetooth setupIKECallbacksPairing]_block_invoke_11", 9454, v6, v35);
  }

  if (v35)
  {
    v7 = v35[9];
  }

  else
  {
    v7 = 0;
  }

  v8 = v7;
  v9 = _NRCopyLogObjectForNRUUID();
  v10 = _NRLogIsLevelEnabled();

  if (v10)
  {
    v11 = _NRCopyLogObjectForNRUUID();
    v12 = [*(a1 + 32) copyDescription];
    if (v8)
    {
      v13 = *(v8 + 1);
    }

    else
    {
      v13 = 0;
    }

    v14 = v13;
    v15 = sub_10015E4BC(v14);
    LogString = _NRKeyCreateLogString();
    _NRLogWithArgs(v11, 0, "%s%.30s:%-4d %@: classDRemotePublicKey=%@", "", "[NRLinkBluetooth setupIKECallbacksPairing]_block_invoke_11", 9457, v12, LogString);
  }

  v17 = _NRCopyLogObjectForNRUUID();
  v18 = _NRLogIsLevelEnabled();

  if (v18)
  {
    v19 = _NRCopyLogObjectForNRUUID();
    v20 = [*(a1 + 32) copyDescription];
    if (v8)
    {
      v21 = *(v8 + 2);
    }

    else
    {
      v21 = 0;
    }

    v22 = v21;
    v23 = sub_10015E4BC(v22);
    v24 = _NRKeyCreateLogString();
    _NRLogWithArgs(v19, 0, "%s%.30s:%-4d %@: classDLocalPublicKey=%@", "", "[NRLinkBluetooth setupIKECallbacksPairing]_block_invoke_11", 9459, v20, v24);
  }

  v25 = _NRCopyLogObjectForNRUUID();
  v26 = _NRLogIsLevelEnabled();

  if (v26)
  {
    v27 = _NRCopyLogObjectForNRUUID();
    v28 = [*(a1 + 32) copyDescription];
    if (v8)
    {
      v29 = *(v8 + 3);
      v30 = v29;
      if (v29)
      {
        v31 = *(v29 + 2);
LABEL_17:
        v32 = v31;
        v33 = _NRKeyCreateLogString();
        _NRLogWithArgs(v27, 0, "%s%.30s:%-4d %@: classDSharedSecret=%@", "", "[NRLinkBluetooth setupIKECallbacksPairing]_block_invoke_11", 9461, v28, v33);

        goto LABEL_18;
      }
    }

    else
    {
      v30 = 0;
    }

    v31 = 0;
    goto LABEL_17;
  }

LABEL_18:
  v34 = *(a1 + 32);
  if (v34)
  {
    sub_100084C80(v34, 4, 0, 0);
  }
}

void sub_10008D3FC(uint64_t a1, void *a2)
{
  v3 = a2;
  v36 = v3;
  if (v3)
  {
    v4 = v3[10];
  }

  else
  {
    v4 = 0;
  }

  v5 = v4;
  v6 = _NRCopyLogObjectForNRUUID();
  IsLevelEnabled = _NRLogIsLevelEnabled();

  if (IsLevelEnabled)
  {
    v8 = _NRCopyLogObjectForNRUUID();
    v9 = [*(a1 + 32) copyDescription];
    _NRLogWithArgs(v8, 0, "%s%.30s:%-4d %@: Plumbed classC keys with OOBK %@", "", "[NRLinkBluetooth setupIKECallbacksPairing]_block_invoke_12", 9471, v9, v36);
  }

  v10 = _NRCopyLogObjectForNRUUID();
  v11 = _NRLogIsLevelEnabled();

  if (v11)
  {
    v12 = _NRCopyLogObjectForNRUUID();
    v13 = [*(a1 + 32) copyDescription];
    if (v5)
    {
      v14 = *(v5 + 1);
    }

    else
    {
      v14 = 0;
    }

    v15 = v14;
    v16 = sub_10015E4BC(v15);
    LogString = _NRKeyCreateLogString();
    _NRLogWithArgs(v12, 0, "%s%.30s:%-4d %@: classCRemotePublicKey=%@", "", "[NRLinkBluetooth setupIKECallbacksPairing]_block_invoke_12", 9473, v13, LogString);
  }

  v18 = _NRCopyLogObjectForNRUUID();
  v19 = _NRLogIsLevelEnabled();

  if (v19)
  {
    v20 = _NRCopyLogObjectForNRUUID();
    v21 = [*(a1 + 32) copyDescription];
    if (v5)
    {
      v22 = *(v5 + 2);
    }

    else
    {
      v22 = 0;
    }

    v23 = v22;
    v24 = sub_10015E4BC(v23);
    v25 = _NRKeyCreateLogString();
    _NRLogWithArgs(v20, 0, "%s%.30s:%-4d %@: classCLocalPublicKey=%@", "", "[NRLinkBluetooth setupIKECallbacksPairing]_block_invoke_12", 9475, v21, v25);
  }

  v26 = _NRCopyLogObjectForNRUUID();
  v27 = _NRLogIsLevelEnabled();

  if (v27)
  {
    v28 = _NRCopyLogObjectForNRUUID();
    v29 = [*(a1 + 32) copyDescription];
    if (v5)
    {
      v30 = *(v5 + 3);
      v31 = v30;
      if (v30)
      {
        v32 = *(v30 + 2);
LABEL_17:
        v33 = v32;
        v34 = _NRKeyCreateLogString();
        _NRLogWithArgs(v28, 0, "%s%.30s:%-4d %@: classCSharedSecret=%@", "", "[NRLinkBluetooth setupIKECallbacksPairing]_block_invoke_12", 9477, v29, v34);

        goto LABEL_18;
      }
    }

    else
    {
      v31 = 0;
    }

    v32 = 0;
    goto LABEL_17;
  }

LABEL_18:
  v35 = *(a1 + 32);
  if (v35)
  {
    sub_100084C80(v35, 3, 0, 0);
  }
}

void sub_10008D708(uint64_t a1, void *a2)
{
  v3 = a2;
  v36 = v3;
  if (v3)
  {
    v4 = v3[11];
  }

  else
  {
    v4 = 0;
  }

  v5 = v4;
  v6 = _NRCopyLogObjectForNRUUID();
  IsLevelEnabled = _NRLogIsLevelEnabled();

  if (IsLevelEnabled)
  {
    v8 = _NRCopyLogObjectForNRUUID();
    v9 = [*(a1 + 32) copyDescription];
    _NRLogWithArgs(v8, 0, "%s%.30s:%-4d %@: Plumbed classA keys with OOBK %@", "", "[NRLinkBluetooth setupIKECallbacksPairing]_block_invoke_13", 9487, v9, v36);
  }

  v10 = _NRCopyLogObjectForNRUUID();
  v11 = _NRLogIsLevelEnabled();

  if (v11)
  {
    v12 = _NRCopyLogObjectForNRUUID();
    v13 = [*(a1 + 32) copyDescription];
    if (v5)
    {
      v14 = *(v5 + 1);
    }

    else
    {
      v14 = 0;
    }

    v15 = v14;
    v16 = sub_10015E4BC(v15);
    LogString = _NRKeyCreateLogString();
    _NRLogWithArgs(v12, 0, "%s%.30s:%-4d %@: classARemotePublicKey=%@", "", "[NRLinkBluetooth setupIKECallbacksPairing]_block_invoke_13", 9489, v13, LogString);
  }

  v18 = _NRCopyLogObjectForNRUUID();
  v19 = _NRLogIsLevelEnabled();

  if (v19)
  {
    v20 = _NRCopyLogObjectForNRUUID();
    v21 = [*(a1 + 32) copyDescription];
    if (v5)
    {
      v22 = *(v5 + 2);
    }

    else
    {
      v22 = 0;
    }

    v23 = v22;
    v24 = sub_10015E4BC(v23);
    v25 = _NRKeyCreateLogString();
    _NRLogWithArgs(v20, 0, "%s%.30s:%-4d %@: classALocalPublicKey=%@", "", "[NRLinkBluetooth setupIKECallbacksPairing]_block_invoke_13", 9491, v21, v25);
  }

  v26 = _NRCopyLogObjectForNRUUID();
  v27 = _NRLogIsLevelEnabled();

  if (v27)
  {
    v28 = _NRCopyLogObjectForNRUUID();
    v29 = [*(a1 + 32) copyDescription];
    if (v5)
    {
      v30 = *(v5 + 3);
      v31 = v30;
      if (v30)
      {
        v32 = *(v30 + 2);
LABEL_17:
        v33 = v32;
        v34 = _NRKeyCreateLogString();
        _NRLogWithArgs(v28, 0, "%s%.30s:%-4d %@: classASharedSecret=%@", "", "[NRLinkBluetooth setupIKECallbacksPairing]_block_invoke_13", 9493, v29, v34);

        goto LABEL_18;
      }
    }

    else
    {
      v31 = 0;
    }

    v32 = 0;
    goto LABEL_17;
  }

LABEL_18:
  v35 = *(a1 + 32);
  if (v35)
  {
    sub_100084C80(v35, 1, 0, 0);
  }
}

void sub_10008DA14(uint64_t a1, void *a2)
{
  v35 = a2;
  v3 = _NRCopyLogObjectForNRUUID();
  IsLevelEnabled = _NRLogIsLevelEnabled();

  if (IsLevelEnabled)
  {
    v5 = _NRCopyLogObjectForNRUUID();
    v6 = [*(a1 + 32) copyDescription];
    _NRLogWithArgs(v5, 0, "%s%.30s:%-4d %@: Plumbed classD keys with IDS keys %@", "", "[NRLinkBluetooth setupIKECallbacksPairing]_block_invoke_14", 9502, v6, v35);
  }

  if (v35)
  {
    v7 = v35[9];
  }

  else
  {
    v7 = 0;
  }

  v8 = v7;
  v9 = _NRCopyLogObjectForNRUUID();
  v10 = _NRLogIsLevelEnabled();

  if (v10)
  {
    v11 = _NRCopyLogObjectForNRUUID();
    v12 = [*(a1 + 32) copyDescription];
    if (v8)
    {
      v13 = *(v8 + 1);
    }

    else
    {
      v13 = 0;
    }

    v14 = v13;
    v15 = sub_10015E4BC(v14);
    LogString = _NRKeyCreateLogString();
    _NRLogWithArgs(v11, 0, "%s%.30s:%-4d %@: classDRemotePublicKey=%@", "", "[NRLinkBluetooth setupIKECallbacksPairing]_block_invoke_14", 9505, v12, LogString);
  }

  v17 = _NRCopyLogObjectForNRUUID();
  v18 = _NRLogIsLevelEnabled();

  if (v18)
  {
    v19 = _NRCopyLogObjectForNRUUID();
    v20 = [*(a1 + 32) copyDescription];
    if (v8)
    {
      v21 = *(v8 + 2);
    }

    else
    {
      v21 = 0;
    }

    v22 = v21;
    v23 = sub_10015E4BC(v22);
    v24 = _NRKeyCreateLogString();
    _NRLogWithArgs(v19, 0, "%s%.30s:%-4d %@: classDLocalPublicKey=%@", "", "[NRLinkBluetooth setupIKECallbacksPairing]_block_invoke_14", 9507, v20, v24);
  }

  v25 = _NRCopyLogObjectForNRUUID();
  v26 = _NRLogIsLevelEnabled();

  if (v26)
  {
    v27 = _NRCopyLogObjectForNRUUID();
    v28 = [*(a1 + 32) copyDescription];
    if (v8)
    {
      v29 = *(v8 + 3);
      v30 = v29;
      if (v29)
      {
        v31 = *(v29 + 2);
LABEL_17:
        v32 = v31;
        v33 = _NRKeyCreateLogString();
        _NRLogWithArgs(v27, 0, "%s%.30s:%-4d %@: classDSharedSecret=%@", "", "[NRLinkBluetooth setupIKECallbacksPairing]_block_invoke_14", 9509, v28, v33);

        goto LABEL_18;
      }
    }

    else
    {
      v30 = 0;
    }

    v31 = 0;
    goto LABEL_17;
  }

LABEL_18:
  v34 = *(a1 + 32);
  if (v34)
  {
    sub_100084C80(v34, 4, 0, 0);
  }
}

void sub_10008DD24(uint64_t a1, void *a2)
{
  v35 = a2;
  v3 = _NRCopyLogObjectForNRUUID();
  IsLevelEnabled = _NRLogIsLevelEnabled();

  if (IsLevelEnabled)
  {
    v5 = _NRCopyLogObjectForNRUUID();
    v6 = [*(a1 + 32) copyDescription];
    _NRLogWithArgs(v5, 0, "%s%.30s:%-4d %@: Plumbed classC keys with IDS keys %@", "", "[NRLinkBluetooth setupIKECallbacksPairing]_block_invoke_15", 9518, v6, v35);
  }

  if (v35)
  {
    v7 = v35[10];
  }

  else
  {
    v7 = 0;
  }

  v8 = v7;
  v9 = _NRCopyLogObjectForNRUUID();
  v10 = _NRLogIsLevelEnabled();

  if (v10)
  {
    v11 = _NRCopyLogObjectForNRUUID();
    v12 = [*(a1 + 32) copyDescription];
    if (v8)
    {
      v13 = *(v8 + 1);
    }

    else
    {
      v13 = 0;
    }

    v14 = v13;
    v15 = sub_10015E4BC(v14);
    LogString = _NRKeyCreateLogString();
    _NRLogWithArgs(v11, 0, "%s%.30s:%-4d %@: classCRemotePublicKey=%@", "", "[NRLinkBluetooth setupIKECallbacksPairing]_block_invoke_15", 9521, v12, LogString);
  }

  v17 = _NRCopyLogObjectForNRUUID();
  v18 = _NRLogIsLevelEnabled();

  if (v18)
  {
    v19 = _NRCopyLogObjectForNRUUID();
    v20 = [*(a1 + 32) copyDescription];
    if (v8)
    {
      v21 = *(v8 + 2);
    }

    else
    {
      v21 = 0;
    }

    v22 = v21;
    v23 = sub_10015E4BC(v22);
    v24 = _NRKeyCreateLogString();
    _NRLogWithArgs(v19, 0, "%s%.30s:%-4d %@: classCLocalPublicKey=%@", "", "[NRLinkBluetooth setupIKECallbacksPairing]_block_invoke_15", 9523, v20, v24);
  }

  v25 = _NRCopyLogObjectForNRUUID();
  v26 = _NRLogIsLevelEnabled();

  if (v26)
  {
    v27 = _NRCopyLogObjectForNRUUID();
    v28 = [*(a1 + 32) copyDescription];
    if (v8)
    {
      v29 = *(v8 + 3);
      v30 = v29;
      if (v29)
      {
        v31 = *(v29 + 2);
LABEL_17:
        v32 = v31;
        v33 = _NRKeyCreateLogString();
        _NRLogWithArgs(v27, 0, "%s%.30s:%-4d %@: classCSharedSecret=%@", "", "[NRLinkBluetooth setupIKECallbacksPairing]_block_invoke_15", 9525, v28, v33);

        goto LABEL_18;
      }
    }

    else
    {
      v30 = 0;
    }

    v31 = 0;
    goto LABEL_17;
  }

LABEL_18:
  v34 = *(a1 + 32);
  if (v34)
  {
    sub_100084C80(v34, 3, 0, 0);
  }
}

void sub_10008E034(uint64_t a1, void *a2)
{
  v3 = a2;
  v37 = v3;
  if (v3)
  {
    v4 = v3[11];
  }

  else
  {
    v4 = 0;
  }

  v5 = v4;
  v6 = _NRCopyLogObjectForNRUUID();
  IsLevelEnabled = _NRLogIsLevelEnabled();

  if (IsLevelEnabled)
  {
    v8 = _NRCopyLogObjectForNRUUID();
    v9 = [*(a1 + 32) copyDescription];
    _NRLogWithArgs(v8, 0, "%s%.30s:%-4d %@: Plumbed classA keys with IDS keys %@", "", "[NRLinkBluetooth setupIKECallbacksPairing]_block_invoke_16", 9535, v9, v37);
  }

  v10 = _NRCopyLogObjectForNRUUID();
  v11 = _NRLogIsLevelEnabled();

  if (v11)
  {
    v12 = _NRCopyLogObjectForNRUUID();
    v13 = [*(a1 + 32) copyDescription];
    if (v5)
    {
      v14 = *(v5 + 1);
    }

    else
    {
      v14 = 0;
    }

    v15 = v14;
    v16 = sub_10015E4BC(v15);
    LogString = _NRKeyCreateLogString();
    _NRLogWithArgs(v12, 0, "%s%.30s:%-4d %@: classARemotePublicKey=%@", "", "[NRLinkBluetooth setupIKECallbacksPairing]_block_invoke_16", 9537, v13, LogString);
  }

  v18 = _NRCopyLogObjectForNRUUID();
  v19 = _NRLogIsLevelEnabled();

  if (v19)
  {
    v20 = _NRCopyLogObjectForNRUUID();
    v21 = [*(a1 + 32) copyDescription];
    if (v5)
    {
      v22 = *(v5 + 2);
    }

    else
    {
      v22 = 0;
    }

    v23 = v22;
    v24 = sub_10015E4BC(v23);
    v25 = _NRKeyCreateLogString();
    _NRLogWithArgs(v20, 0, "%s%.30s:%-4d %@: classALocalPublicKey=%@", "", "[NRLinkBluetooth setupIKECallbacksPairing]_block_invoke_16", 9539, v21, v25);
  }

  v26 = _NRCopyLogObjectForNRUUID();
  v27 = _NRLogIsLevelEnabled();

  if (v27)
  {
    v28 = _NRCopyLogObjectForNRUUID();
    v29 = [*(a1 + 32) copyDescription];
    if (v5)
    {
      v30 = *(v5 + 3);
      v31 = v30;
      if (v30)
      {
        v32 = *(v30 + 2);
LABEL_17:
        v33 = v32;
        v34 = _NRKeyCreateLogString();
        _NRLogWithArgs(v28, 0, "%s%.30s:%-4d %@: classASharedSecret=%@", "", "[NRLinkBluetooth setupIKECallbacksPairing]_block_invoke_16", 9541, v29, v34);

        goto LABEL_18;
      }
    }

    else
    {
      v31 = 0;
    }

    v32 = 0;
    goto LABEL_17;
  }

LABEL_18:
  v35 = *(a1 + 32);
  if (v35)
  {
    *(v35 + 275) = 0;
    v36 = *(a1 + 32);
    if (v36)
    {
      sub_100084C80(v36, 1, 0, 0);
    }
  }
}

void sub_10008E354(uint64_t a1, int a2)
{
  v3 = *(a1 + 32);
  if (a2)
  {
    v4 = _NRCopyLogObjectForNRUUID();
    IsLevelEnabled = _NRLogIsLevelEnabled();

    if (IsLevelEnabled)
    {
      v6 = _NRCopyLogObjectForNRUUID();
      v7 = [*(a1 + 32) copyDescription];
      _NRLogWithArgs(v6, 0, "%s%.30s:%-4d %@: initiatorLocalPublicClassDKeysEncryptedWithIDS was received on %@", "", "[NRLinkBluetooth setupIKECallbacksPairing]_block_invoke_2", 9294, v7, *(a1 + 40));
    }

    v8 = *(a1 + 32);
    if (v8)
    {

      sub_100084C80(v8, 4, 0, 0);
    }
  }

  else
  {
    [v3 cancelWithReason:{@"initiatorLocalPublicClassDKeysEncryptedWithIDS was not received on %@", *(a1 + 40)}];
  }
}

void sub_10008E454(uint64_t a1, int a2)
{
  v4 = _NRCopyLogObjectForNRUUID();
  if (a2)
  {
    IsLevelEnabled = _NRLogIsLevelEnabled();

    if (IsLevelEnabled)
    {
      v6 = _NRCopyLogObjectForNRUUID();
      v7 = [*(a1 + 32) copyDescription];
      _NRLogWithArgs(v6, 0, "%s%.30s:%-4d %@: initiatorLocalPublicKeys were received", "", "[NRLinkBluetooth setupIKECallbacksPairing]_block_invoke_3", 9351, v7);
    }

    v8 = *(a1 + 32);
    if (v8)
    {

      sub_100084C80(v8, 4, 0, 0);
    }
  }

  else
  {
    v9 = _NRLogIsLevelEnabled();

    if (v9)
    {
      v11 = _NRCopyLogObjectForNRUUID();
      v10 = [*(a1 + 32) copyDescription];
      _NRLogWithArgs(v11, 16, "%s%.30s:%-4d %@: initiatorLocalPublicKeys were not received", "", "[NRLinkBluetooth setupIKECallbacksPairing]_block_invoke_3", 9356, v10);
    }
  }
}

void sub_10008E7E8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, id location)
{
  objc_destroyWeak((v16 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_10008E814(uint64_t a1, int a2)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  if (WeakRetained)
  {
    --*(WeakRetained + 359);
    v15 = WeakRetained;
    if ((*(WeakRetained + 359) & 0x80000000) != 0)
    {
      v4 = _NRCopyLogObjectForNRUUID();
      IsLevelEnabled = _NRLogIsLevelEnabled();

      if (IsLevelEnabled)
      {
        v6 = _NRCopyLogObjectForNRUUID();
        v7 = [v15 copyDescription];
        _NRLogWithArgs(v6, 17, "%@: Invalid control data send queue length: %d", v7, *(v15 + 359));
      }

      *(v15 + 359) = 0;
    }

    v8 = _NRCopyLogObjectForNRUUID();
    if (!a2)
    {
      v12 = _NRLogIsLevelEnabled();

      WeakRetained = v15;
      if (!v12)
      {
        goto LABEL_15;
      }

      v13 = _NRCopyLogObjectForNRUUID();
      v14 = [v15 copyDescription];
      _NRLogWithArgs(v13, 16, "%s%.30s:%-4d %@: Did not receive response to control notify", "", "[NRLinkBluetooth sendControlData:]_block_invoke", 8119, v14);

      goto LABEL_14;
    }

    v9 = _NRLogIsLevelEnabled();

    if (v9)
    {
      v10 = _NRCopyLogObjectForNRUUID();
      v11 = [v15 copyDescription];
      _NRLogWithArgs(v10, 0, "%s%.30s:%-4d %@: Received response to control notify", "", "[NRLinkBluetooth sendControlData:]_block_invoke", 8112, v11);
    }

    WeakRetained = v15;
    if (v15[271] == 1 && !*(v15 + 359))
    {
      sub_10008EA14(v15, 1);
LABEL_14:
      WeakRetained = v15;
    }
  }

LABEL_15:
}

void sub_10008EA14(_BYTE *result, uint64_t a2)
{
  if (result)
  {
    result[271] = 0;
    if (result[272] != a2)
    {
      v4 = _NRCopyLogObjectForNRUUID();
      IsLevelEnabled = _NRLogIsLevelEnabled();

      if (IsLevelEnabled)
      {
        v6 = _NRCopyLogObjectForNRUUID();
        v7 = [result copyDescription];
        _NRLogWithArgs(v6, 0, "%s%.30s:%-4d %@: Setting isSuspended: %d -> %d", "", "[NRLinkBluetooth setIsSuspended:]", 1854, v7, result[272], a2);
      }

      result[272] = a2;

      sub_10008EB24(result);
    }
  }
}

void sub_10008EB24(uint64_t a1)
{
  if (!a1)
  {
    return;
  }

  if (*(a1 + 272) == 1)
  {
    v2 = _NRCopyLogObjectForNRUUID();
    IsLevelEnabled = _NRLogIsLevelEnabled();

    if (IsLevelEnabled)
    {
      v4 = _NRCopyLogObjectForNRUUID();
      v5 = [a1 copyDescription];
      _NRLogWithArgs(v4, 0, "%s%.30s:%-4d %@: Setting packetNexus.availability: %zu -> %zu", "", "-[NRLinkBluetooth setPacketNexusAvailability]", 6361, v5, [*(a1 + 1479) availability], 0);
    }

    v6 = *(a1 + 1479);

    [v6 setAvailability:0];
    return;
  }

  v7 = [a1 shoesProxyAgentRegistration];
  if (v7)
  {
    v8 = [a1 state] == 8;
  }

  else
  {
    v9 = [a1 publishedMasqueProxyConfig];
    if (v9)
    {
      v8 = [a1 state] == 8;
    }

    else
    {
      v8 = 0;
    }
  }

  v10 = [a1 hasCompanionDatapath];
  v11 = [a1 nrUUID];
  v37 = sub_100163A30(NRDLocalDevice, v11);

  if ((v10 & 1) == 0)
  {
    if (v37)
    {
      v18 = v37[18];
      if (v18)
      {
        v19 = 0;
      }

      else
      {
        v19 = v8;
      }

      if (!v19)
      {
        v20 = v37[18];
        if (v20 && (v21 = v20, v22 = v37[18], v23 = [v22 requiresReachability] & v8, v22, v21, v23 == 1))
        {
          [a1 virtualInterface];
          NEVirtualInterfaceSetRankLast();
          [a1 virtualInterface];
          NEVirtualInterfaceSetRankPrimaryEligible();
        }

        else
        {
          [a1 virtualInterface];
          NEVirtualInterfaceSetRankLast();
        }
      }

      [a1 virtualInterface];
      NEVirtualInterfaceUpdateAdHocService();
      goto LABEL_35;
    }

    v31 = sub_10007CF34();
    v32 = _NRLogIsLevelEnabled();

    if (v32)
    {
      v33 = sub_10007CF34();
      _NRLogWithArgs(v33, 16, "%s%.30s:%-4d ABORTING: Assertion Failed: (localDevice) != ((void*)0)", "", "[NRLinkBluetooth setPacketNexusAvailability]", 6378);
    }

LABEL_43:
    v34 = _os_log_pack_size();
    v35 = __error();
    v36 = _os_log_pack_fill(&v37 - ((v34 + 15) & 0xFFFFFFFFFFFFFFF0), v34, *v35, &_mh_execute_header, "%{public}s Assertion Failed: (localDevice) != ((void*)0)");
    *v36 = 136446210;
    *(v36 + 4) = "[NRLinkBluetooth setPacketNexusAvailability]";
    sub_10007CF34();
    _NRLogAbortWithPack();
    return;
  }

  if (!v37)
  {
    v28 = sub_10007CF34();
    v29 = _NRLogIsLevelEnabled();

    if (v29)
    {
      v30 = sub_10007CF34();
      _NRLogWithArgs(v30, 16, "%s%.30s:%-4d ABORTING: Assertion Failed: (localDevice) != ((void*)0)", "", "[NRLinkBluetooth setPacketNexusAvailability]", 6398);
    }

    goto LABEL_43;
  }

  v12 = v37[18];

  if (v12 && (v13 = v37[18]) != 0)
  {
    v14 = v13;
    v15 = v37[18];
    v16 = [v15 requiresReachability] & v8;

    if (v16)
    {
      v17 = 2;
    }

    else
    {
      v17 = 1;
    }
  }

  else
  {
    v17 = 1;
  }

  v24 = _NRCopyLogObjectForNRUUID();
  v25 = _NRLogIsLevelEnabled();

  if (v25)
  {
    v26 = _NRCopyLogObjectForNRUUID();
    v27 = [a1 copyDescription];
    _NRLogWithArgs(v26, 0, "%s%.30s:%-4d %@: Setting packetNexus.availability: %lu -> %lu", "", "-[NRLinkBluetooth setPacketNexusAvailability]", 6414, v27, [*(a1 + 1479) availability], v17);
  }

  [*(a1 + 1479) setAvailability:{v17, v37}];
LABEL_35:
}

void sub_10008F50C(uint64_t a1, uint64_t a2)
{
  if (!a1 || [a1 state] == 255)
  {
    return;
  }

  if (gNRPacketLoggingEnabled == 1)
  {
    v22 = sub_10007CF34();
    IsLevelEnabled = _NRLogIsLevelEnabled();

    if (IsLevelEnabled)
    {
      v24 = sub_10007CF34();
      _NRLogWithArgs(v24, 1, "%s%.30s:%-4d received read stream event %u", "", "[NRLinkBluetooth handleReadStreamEvent:]", 3397, a2);
    }
  }

  if (a2 != 2)
  {
    if (a2 != 1)
    {
      return;
    }

    v4 = 285;
    goto LABEL_10;
  }

  if (*(a1 + 286) == 1)
  {
    if (gNRPacketLoggingEnabled == 1)
    {
      v25 = sub_10007CF34();
      v26 = _NRLogIsLevelEnabled();

      if (v26)
      {
        v27 = sub_10007CF34();
        _NRLogWithArgs(v27, 1, "%s%.30s:%-4d read stream has bytes available, but suspended", "", "[NRLinkBluetooth handleReadStreamEvent:]", 3402);
      }
    }

    v4 = 287;
LABEL_10:
    *(a1 + v4) = 1;
    return;
  }

  *(a1 + 287) = 0;
  if (gNRPacketLoggingEnabled == 1)
  {
    v28 = sub_10007CF34();
    v29 = _NRLogIsLevelEnabled();

    if (v29)
    {
      v30 = sub_10007CF34();
      _NRLogWithArgs(v30, 1, "%s%.30s:%-4d read stream has bytes available", "", "[NRLinkBluetooth handleReadStreamEvent:]", 3407);
    }
  }

  bzero(v65, 0x5DCuLL);
  v64 = 0;
  v5 = *(a1 + 1439);
  if (!v5)
  {
    *(a1 + 1447) = 0x4000;
    v31 = malloc_type_malloc(0x4000uLL, 0x7F334A19uLL);
    if (!v31)
    {
      goto LABEL_79;
    }

    v5 = v31;
    *(a1 + 1439) = v31;
  }

  v6 = *(a1 + 363);
  if (v6)
  {
    v7 = v6 - *(a1 + 367);
    if (v7 >= 0x5DC)
    {
      v8 = 1500;
    }

    else
    {
      v8 = v7;
    }

    __memcpy_chk();
    if (gNRPacketLoggingEnabled == 1)
    {
      v9 = sub_10007CF34();
      LODWORD(v63) = _NRLogIsLevelEnabled();

      if (v63)
      {
        v10 = sub_10007CF34();
        _NRLogWithArgs(v10, 1, "%s%.30s:%-4d pending read bytes %zu", "", "[NRLinkBluetooth handleReadStreamEvent:]", 3425, v8);
      }
    }
  }

  else
  {
    v8 = [*(a1 + 1423) read:v65 maxLength:1500];
    if ((v8 & 0x8000000000000000) != 0)
    {
      if (gNRPacketLoggingEnabled)
      {
        v19 = sub_10007CF34();
        v20 = _NRLogIsLevelEnabled();

        if (v20)
        {
          v21 = sub_10007CF34();
          _NRLogWithArgs(v21, 1, "%s%.30s:%-4d ignoring read %ld", "", "[NRLinkBluetooth handleReadStreamEvent:]", 3429, v8);
        }
      }

      return;
    }

    if (gNRPacketLoggingEnabled)
    {
      v35 = sub_10007CF34();
      LODWORD(v63) = _NRLogIsLevelEnabled();

      if (v63)
      {
        v36 = sub_10007CF34();
        _NRLogWithArgs(v36, 1, "%s%.30s:%-4d read bytes %zu (%ld)", "", "[NRLinkBluetooth handleReadStreamEvent:]", 3433, v8, v8);
      }
    }

    *(a1 + 743) += v8;
  }

  v11 = *(a1 + 1407);
  if (!v11)
  {
    return;
  }

  v12 = (*(v11 + 8))(*v11, v65, v8, &v64, 0, 0);
  if (gNRPacketLoggingEnabled == 1)
  {
    v63 = sub_10007CF34();
    v62 = _NRLogIsLevelEnabled();

    if (v62)
    {
      v63 = sub_10007CF34();
      _NRLogWithArgs(v63, 1, "%s%.30s:%-4d parser read %zu/%zu bytes", "", "[NRLinkBluetooth handleReadStreamEvent:]", 3442, v64, v8);
    }
  }

  v13 = v64;
  if (v6)
  {
    v14 = *(a1 + 367) + v64;
    *(a1 + 367) = v14;
    if (*(a1 + 363) == v14)
    {
      if (gNRPacketLoggingEnabled == 1)
      {
        v37 = sub_10007CF34();
        LODWORD(v63) = _NRLogIsLevelEnabled();

        if (v63)
        {
          v38 = sub_10007CF34();
          _NRLogWithArgs(v38, 1, "%s%.30s:%-4d finished injecting partial packet %zu/%zu", "", "[NRLinkBluetooth handleReadStreamEvent:]", 3446, v64, v8);
        }
      }

      *(a1 + 367) = 0;
      *(a1 + 363) = 0;
      v13 = v64;
    }
  }

  v15 = v8 > v13;
  v16 = v8 - v13;
  if (v15)
  {
    v17 = *(a1 + 363);
    v18 = *(a1 + 1447);
    if (v16 + v17 >= v18)
    {
      if (v16 + v17 >= 0x8000)
      {
        [a1 cancelWithReason:{@"unexpected buffer size requirement for pending %u bytes", v16 + v17}];
        return;
      }

      *(a1 + 1447) = v18 + 0x7FFF;
      if (v18 + 0x7FFF >= 0x1FFFD)
      {
        [a1 cancelWithReason:{@"unexpected buffer size requirement %u bytes", v18 + 0x7FFF}];
        return;
      }

      if (gNRPacketLoggingEnabled == 1)
      {
        v41 = sub_10007CF34();
        v42 = _NRLogIsLevelEnabled();

        if (v42)
        {
          v43 = sub_10007CF34();
          _NRLogWithArgs(v43, 1, "%s%.30s:%-4d expanding link stream buffer to %zu bytes", "", "[NRLinkBluetooth handleReadStreamEvent:]", 3465, *(a1 + 1447));
        }
      }

      v39 = *(a1 + 1447);
      if (!v39)
      {
        v44 = sub_10007CF34();
        v45 = _NRLogIsLevelEnabled();

        if (v45)
        {
          v46 = sub_10007CF34();
          _NRLogWithArgs(v46, 16, "%s%.30s:%-4d ABORTING: strict_reallocf called with size 0", "", "[NRLinkBluetooth handleReadStreamEvent:]", 3466);
        }

        v47 = _os_log_pack_size();
        v48 = *__error();
        v49 = _os_log_pack_fill(&v61[-((v47 + 15) & 0xFFFFFFFFFFFFFFF0)], v47, v48, &_mh_execute_header, "%{public}s strict_reallocf called with size 0");
        goto LABEL_74;
      }

      v40 = reallocf(*(a1 + 1439), v39);
      if (!v40)
      {
        v50 = sub_10007CF34();
        v51 = _NRLogIsLevelEnabled();

        if (v51)
        {
          v52 = sub_10007CF34();
          _NRLogWithArgs(v52, 16, "%s%.30s:%-4d ABORTING: strict_reallocf(%zu) failed", "", "[NRLinkBluetooth handleReadStreamEvent:]", 3466, v39);
        }

        v53 = _os_log_pack_size();
        v54 = __error();
        v55 = _os_log_pack_fill(&v61[-((v53 + 15) & 0xFFFFFFFFFFFFFFF0)], v53, *v54, &_mh_execute_header, "%{public}s strict_reallocf(%zu) failed");
        *v55 = 136446466;
        *(v55 + 4) = "[NRLinkBluetooth handleReadStreamEvent:]";
        *(v55 + 12) = 2048;
        *(v55 + 14) = v39;
        while (1)
        {
          sub_10007CF34();
          _NRLogAbortWithPack();
LABEL_79:
          v56 = sub_10007CF34();
          v57 = _NRLogIsLevelEnabled();

          if (v57)
          {
            v58 = sub_10007CF34();
            _NRLogWithArgs(v58, 16, "%s%.30s:%-4d ABORTING: strict allocator failed", "", "[NRLinkBluetooth handleReadStreamEvent:]", 3415);
          }

          v59 = _os_log_pack_size();
          v60 = *__error();
          v49 = _os_log_pack_fill(&v61[-((v59 + 15) & 0xFFFFFFFFFFFFFFF0)], v59, v60, &_mh_execute_header, "%{public}s strict allocator failed");
LABEL_74:
          *v49 = 136446210;
          *(v49 + 4) = "[NRLinkBluetooth handleReadStreamEvent:]";
        }
      }

      v5 = v40;
      *(a1 + 1439) = v40;
      v17 = *(a1 + 363);
      v13 = v64;
    }

    memcpy(&v5[v17], &v65[v13], v16);
    *(a1 + 363) += v16;
    (*(*(a1 + 1407) + 16))(**(a1 + 1407));
    if (v12)
    {
      return;
    }
  }

  else if (v12)
  {
    if ([*(a1 + 1423) hasBytesAvailable])
    {
      sub_10008F50C(a1, 2);
    }

    else
    {
      (*(*(a1 + 1407) + 16))(**(a1 + 1407));
    }

    return;
  }

  if (gNRPacketLoggingEnabled == 1)
  {
    v32 = sub_10007CF34();
    v33 = _NRLogIsLevelEnabled();

    if (v33)
    {
      v34 = sub_10007CF34();
      _NRLogWithArgs(v34, 1, "%s%.30s:%-4d parser cannot accept more, suspending stream", "", "[NRLinkBluetooth handleReadStreamEvent:]", 3480);
    }
  }

  *(a1 + 286) = 1;
  *(a1 + 287) = [*(a1 + 1423) hasBytesAvailable];
}

uint64_t sub_100090058(uint64_t result)
{
  if (result)
  {
    v1 = result;
    if (*(result + 407))
    {
      if (!*(result + 1399))
      {
        v2 = [[NRDeviceIdentifier alloc] initWithUUID:*(result + 32)];
        v3 = [[NRBluetoothPacketParser alloc] initWithDeviceIdentifier:v2 queue:*(v1 + 8)];
        [v3 setDirect:1];
        [v3 setIsNotEncapsulated:*(v1 + 128)];
        if ([v3 isNotEncapsulated])
        {
          [v3 setUses6LoWPAN:*(v1 + 282)];
        }

        if (*(v1 + 282) == 1)
        {
          [v3 setDatagramMode:1];
          v4 = 3;
        }

        else
        {
          v4 = 1;
        }

        v9 = [v3 createReadContextForPriority:v4 readAvailableCallback:sub_1000ACA88 readAvailableContext:v1];
        v10 = [v3 createWriteContextForPriority:v4 writeOutputCallback:sub_1000AC608 writeOutputContext:v1];
        objc_initWeak(&location, v1);
        v21 = _NSConcreteStackBlock;
        v22 = 3221225472;
        v23 = sub_100090E30;
        v24 = &unk_1001FAF98;
        objc_copyWeak(&v25, &location);
        [v3 setReceiveXPCCommDictionaryHandler:&v21];
        [v3 start];
        objc_storeStrong((v1 + 1399), v3);
        *(v1 + 1407) = v9;
        *(v1 + 1415) = v10;
        if (*(v1 + 282) == 1)
        {
          *(v1 + 285) = 1;
          *(v1 + 288) = 1;
          sub_100090EA4(v1);
        }

        else
        {
          v11 = [*(v1 + 407) inputStream];
          v12 = *(v1 + 1423);
          *(v1 + 1423) = v11;

          CFReadStreamSetDispatchQueue(*(v1 + 1423), *(v1 + 8));
          [*(v1 + 1423) setDelegate:v1];
          *(v1 + 285) = 0;
          if (qword_100229088 != -1)
          {
            dispatch_once(&qword_100229088, &stru_1001FB1C0);
          }

          v13 = qword_100229080;
          IsLevelEnabled = _NRLogIsLevelEnabled();

          if (IsLevelEnabled)
          {
            if (qword_100229088 != -1)
            {
              dispatch_once(&qword_100229088, &stru_1001FB1C0);
            }

            v15 = qword_100229080;
            _NRLogWithArgs(v15, 0, "%s%.30s:%-4d opening input stream %@", "", "[NRLinkBluetooth setupParserForL2CAPChannel]", 3302, *(v1 + 1423), v21, v22, v23, v24);
          }

          [*(v1 + 1423) open];
          v16 = [*(v1 + 407) outputStream];
          v17 = *(v1 + 1431);
          *(v1 + 1431) = v16;

          CFWriteStreamSetDispatchQueue(*(v1 + 1431), *(v1 + 8));
          [*(v1 + 1431) setDelegate:v1];
          *(v1 + 288) = 0;
          if (qword_100229088 != -1)
          {
            dispatch_once(&qword_100229088, &stru_1001FB1C0);
          }

          v18 = qword_100229080;
          v19 = _NRLogIsLevelEnabled();

          if (v19)
          {
            if (qword_100229088 != -1)
            {
              dispatch_once(&qword_100229088, &stru_1001FB1C0);
            }

            v20 = qword_100229080;
            _NRLogWithArgs(v20, 0, "%s%.30s:%-4d opening output stream %@", "", "[NRLinkBluetooth setupParserForL2CAPChannel]", 3309, *(v1 + 1431));
          }

          [*(v1 + 1431) open];
        }

        objc_destroyWeak(&v25);
        objc_destroyWeak(&location);
      }

      return 1;
    }

    else
    {
      v5 = _NRCopyLogObjectForNRUUID();
      v6 = _NRLogIsLevelEnabled();

      if (v6)
      {
        v7 = _NRCopyLogObjectForNRUUID();
        v8 = [v1 copyDescription];
        _NRLogWithArgs(v7, 16, "%s%.30s:%-4d %@: no L2CAP channel", "", "[NRLinkBluetooth setupParserForL2CAPChannel]", 3250, v8);
      }

      return 0;
    }
  }

  return result;
}

void sub_100090518(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, id location)
{
  objc_destroyWeak((v18 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

uint64_t sub_100090538(uint64_t result)
{
  if (result)
  {
    v1 = result;
    if ([result virtualInterface])
    {
      return 1;
    }

    else
    {
      if ([v1 subtype] != 121)
      {
        objc_opt_self();
        if (qword_1002290C0 == -1)
        {
          goto LABEL_7;
        }

        goto LABEL_26;
      }

      v2 = [v1 queue];
      [v1 setVirtualInterface:NEVirtualInterfaceCreateNexus()];

      while ([v1 virtualInterface])
      {
        [v1 virtualInterface];
        NEVirtualInterfaceEnableFlowswitch();
        v7 = [v1 nrUUID];
        v8 = sub_100163A30(NRDLocalDevice, v7);

        if (v8)
        {
          if (sub_10008A218(v1))
          {
            [v1 virtualInterface];
            v9 = NEVirtualInterfaceCopyName();
            v10 = _NRCopyLogObjectForNRUUID();
            IsLevelEnabled = _NRLogIsLevelEnabled();

            if (IsLevelEnabled)
            {
              v12 = _NRCopyLogObjectForNRUUID();
              v13 = [v1 copyDescription];
              _NRLogWithArgs(v12, 0, "%s%.30s:%-4d %@: Created virtual interface %@", "", "[NRLinkBluetooth setupUTUN]", 6497, v13, v9);
            }

            v14 = 1;
LABEL_18:
          }

          else
          {
            v14 = 0;
          }

          return v14;
        }

        v17 = sub_10007CF34();
        v18 = _NRLogIsLevelEnabled();

        if (v18)
        {
          v19 = sub_10007CF34();
          _NRLogWithArgs(v19, 16, "%s%.30s:%-4d ABORTING: Assertion Failed: (localDevice) != ((void*)0)", "", "[NRLinkBluetooth setupUTUN]", 6488);
        }

        v1 = _os_log_pack_size();
        v20 = &v24[-1] - ((__chkstk_darwin() + 15) & 0xFFFFFFFFFFFFFFF0);
        v21 = __error();
        v22 = _os_log_pack_fill(v20, v1, *v21, &_mh_execute_header, "%{public}s Assertion Failed: (localDevice) != ((void*)0)");
        *v22 = 136446210;
        *(v22 + 4) = "[NRLinkBluetooth setupUTUN]";
        sub_10007CF34();
        _NRLogAbortWithPack();
LABEL_26:
        dispatch_once(&qword_1002290C0, &stru_1001FB2B0);
LABEL_7:
        v3 = qword_1002290B8;
        v4 = v3;
        if (v3)
        {
          v5 = v3[33];
        }

        else
        {
          v5 = 0;
        }

        v24[0] = 0;
        v24[1] = 0;
        [v5 getUUIDBytes:v24];
        v6 = [v1 queue];
        [v1 setVirtualInterface:NEVirtualInterfaceCreateNexusExtended()];
      }

      v15 = _NRCopyLogObjectForNRUUID();
      v16 = _NRLogIsLevelEnabled();

      if (v16)
      {
        v8 = _NRCopyLogObjectForNRUUID();
        v9 = [v1 copyDescription];
        _NRLogWithArgs(v8, 16, "%s%.30s:%-4d %@: failed to setup interface", "", "[NRLinkBluetooth setupUTUN]", 6474, v9);
        v14 = 0;
        goto LABEL_18;
      }

      return 0;
    }
  }

  return result;
}

void sub_100090978(uint64_t a1, void *a2)
{
  v3 = a2;
  if (a1)
  {
    v4 = objc_alloc_init(NSMutableDictionary);
    v5 = objc_alloc_init(NSMutableArray);
    v21 = 0u;
    v22 = 0u;
    v23 = 0u;
    v24 = 0u;
    v6 = v3;
    v7 = [v6 countByEnumeratingWithState:&v21 objects:v25 count:16];
    if (v7)
    {
      v8 = v7;
      v9 = *v22;
      do
      {
        for (i = 0; i != v8; i = i + 1)
        {
          if (*v22 != v9)
          {
            objc_enumerationMutation(v6);
          }

          v11 = [*(*(&v21 + 1) + 8 * i) UUIDString];
          [v5 addObject:v11];
        }

        v8 = [v6 countByEnumeratingWithState:&v21 objects:v25 count:16];
      }

      while (v8);
    }

    [v4 setObject:v5 forKeyedSubscript:@"nexus-instances"];
    if ([a1 virtualInterface])
    {
      [a1 virtualInterface];
      if (NEVirtualInterfaceGetType() == 1)
      {
        v12 = [[NSNumber alloc] initWithUnsignedShort:4];
        [v4 setObject:v12 forKeyedSubscript:@"ip-header-offset"];
      }
    }

    v13 = v4;
    v14 = *(a1 + 1399);
    if (v14 && [v14 direct])
    {
      [*(a1 + 1399) sendXPCCommDictionary:v13];
    }

    else
    {
      objc_opt_self();
      if (qword_1002290C0 != -1)
      {
        dispatch_once(&qword_1002290C0, &stru_1001FB2B0);
      }

      v15 = qword_1002290B8;
      v16 = v15;
      if (v15)
      {
        v17 = *(a1 + 32);
        v18 = *(v15 + 28);
        v19 = v13;
        v20 = [v18 objectForKeyedSubscript:v17];
        sub_100114680(v20, v19);
      }
    }

    sub_1000896EC(a1);
  }
}

void sub_100090BF4(uint64_t a1, uint64_t a2, void *a3)
{
  v5 = a3;
  if (a1)
  {
    v23 = v5;
    v6 = objc_alloc_init(NSMutableDictionary);
    v7 = [[NSNumber alloc] initWithUnsignedInt:a2];
    [v6 setObject:v7 forKeyedSubscript:@"activate-datapath-offset"];

    [v6 setObject:v23 forKeyedSubscript:@"channel-id"];
    v8 = objc_alloc_init(NSMutableDictionary);
    [v8 setObject:v6 forKeyedSubscript:@"activate-datapath"];
    v9 = v8;
    v10 = *(a1 + 1399);
    if (v10 && [v10 direct])
    {
      [*(a1 + 1399) sendXPCCommDictionary:v9];
    }

    else
    {
      objc_opt_self();
      if (qword_1002290C0 != -1)
      {
        dispatch_once(&qword_1002290C0, &stru_1001FB2B0);
      }

      v11 = qword_1002290B8;
      v12 = v11;
      if (v11)
      {
        v13 = *(a1 + 32);
        v14 = *(v11 + 28);
        v15 = v9;
        v16 = [v14 objectForKeyedSubscript:v13];
        sub_100114680(v16, v15);
      }
    }

    v17 = [v23 integerValue];
    if (v17 == 3)
    {
      v18 = 296;
    }

    else if (v17 == 2)
    {
      v18 = 295;
    }

    else
    {
      if (v17 != 1)
      {
        v19 = _NRCopyLogObjectForNRUUID();
        IsLevelEnabled = _NRLogIsLevelEnabled();

        if (IsLevelEnabled)
        {
          v21 = _NRCopyLogObjectForNRUUID();
          v22 = [a1 copyDescription];
          _NRLogWithArgs(v21, 17, "%@: unsupported channel id %@", v22, v23);
        }

        goto LABEL_17;
      }

      v18 = 294;
    }

    *(a1 + v18) = 1;
LABEL_17:

    v5 = v23;
  }
}

void sub_100090E30(uint64_t a1, void *a2)
{
  v5 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v4 = WeakRetained;
  if (WeakRetained && [WeakRetained state] != 255)
  {
    sub_100091434(v4, v5);
  }
}

void sub_100090EA4(char *val)
{
  if (*(val + 407) && val[285] == 1 && (val[286] & 1) == 0 && (val[284] & 1) == 0)
  {
    val[284] = 1;
    objc_initWeak(&location, val);
    v2 = *(val + 407);
    v3[0] = _NSConcreteStackBlock;
    v3[1] = 3221225472;
    v3[2] = sub_100090FB4;
    v3[3] = &unk_1001FAFC0;
    objc_copyWeak(&v4, &location);
    [v2 readPacketsWithCompletionHandler:v3];
    objc_destroyWeak(&v4);
    objc_destroyWeak(&location);
  }
}

void sub_100090F98(_Unwind_Exception *a1)
{
  objc_destroyWeak((v1 + 32));
  objc_destroyWeak((v2 - 24));
  _Unwind_Resume(a1);
}

void sub_100090FB4(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v8 = WeakRetained;
  if (WeakRetained && [WeakRetained state] != 255)
  {
    v8[284] = 0;
    if (v6)
    {
      if (qword_100229088 != -1)
      {
        dispatch_once(&qword_100229088, &stru_1001FB1C0);
      }

      if (_NRLogIsLevelEnabled())
      {
        if (qword_100229088 != -1)
        {
          dispatch_once(&qword_100229088, &stru_1001FB1C0);
        }

        _NRLogWithArgs(qword_100229080, 16, "%s%.30s:%-4d l2CAP channel read error %@", "", "[NRLinkBluetooth readPacketsFromL2CAPChannel]_block_invoke", 3338, v6);
      }
    }

    else
    {
      if (gNRPacketLoggingEnabled == 1)
      {
        v26 = sub_10007CF34();
        IsLevelEnabled = _NRLogIsLevelEnabled();

        if (IsLevelEnabled)
        {
          v28 = sub_10007CF34();
          _NRLogWithArgs(v28, 1, "%s%.30s:%-4d received %lu datagrams", "", "-[NRLinkBluetooth readPacketsFromL2CAPChannel]_block_invoke", 3342, [v5 count]);
        }
      }

      if (*(v8 + 1407))
      {
        v30 = v5;
        v34 = 0u;
        v35 = 0u;
        v32 = 0u;
        v33 = 0u;
        v9 = v5;
        v10 = [v9 countByEnumeratingWithState:&v32 objects:v36 count:16];
        if (v10)
        {
          v11 = v10;
          v12 = *v33;
          do
          {
            for (i = 0; i != v11; i = i + 1)
            {
              if (*v33 != v12)
              {
                objc_enumerationMutation(v9);
              }

              v14 = *(*(&v32 + 1) + 8 * i);
              v31 = 0;
              v15 = [v14 bytes];
              v16 = [v14 length];
              *(v8 + 743) += v16;
              v17 = (*(*(v8 + 1407) + 8))(**(v8 + 1407), v15, v16, &v31, 0, 0);
              if (gNRPacketLoggingEnabled == 1)
              {
                if (qword_100229088 != -1)
                {
                  dispatch_once(&qword_100229088, &stru_1001FB1C0);
                }

                v21 = qword_100229080;
                v29 = _NRLogIsLevelEnabled();

                if (v29)
                {
                  v22 = sub_10007CF34();
                  _NRLogWithArgs(v22, 1, "%s%.30s:%-4d parser read %zu/%zu bytes", "", "[NRLinkBluetooth readPacketsFromL2CAPChannel]_block_invoke", 3355, v31, v16);
                }
              }

              if (v31 < v16 && (gNRPacketLoggingEnabled & 1) != 0)
              {
                v23 = sub_10007CF34();
                v24 = _NRLogIsLevelEnabled();

                if (v24)
                {
                  v25 = sub_10007CF34();
                  _NRLogWithArgs(v25, 1, "%s%.30s:%-4d parser failed to handle full packet", "", "[NRLinkBluetooth readPacketsFromL2CAPChannel]_block_invoke", 3357);
                }
              }

              if ((v17 & 1) == 0)
              {
                if (gNRPacketLoggingEnabled == 1)
                {
                  v18 = sub_10007CF34();
                  v19 = _NRLogIsLevelEnabled();

                  if (v19)
                  {
                    v20 = sub_10007CF34();
                    _NRLogWithArgs(v20, 1, "%s%.30s:%-4d parser cannot accept more, suspending stream", "", "[NRLinkBluetooth readPacketsFromL2CAPChannel]_block_invoke", 3360);
                  }
                }

                v8[286] = 1;
                v8[287] = 1;
              }
            }

            v11 = [v9 countByEnumeratingWithState:&v32 objects:v36 count:16];
          }

          while (v11);
        }

        (*(*(v8 + 1407) + 16))(**(v8 + 1407));
        v6 = 0;
        v5 = v30;
      }

      sub_100090EA4(v8);
    }
  }
}

void sub_100091434(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [a1 state];
  if (!v3 || v4 == 255)
  {
    goto LABEL_57;
  }

  v5 = [v3 objectForKeyedSubscript:@"checkin"];
  if ([v5 BOOLValue] && objc_msgSend(a1, "state") == 8)
  {
    sub_100090BF4(a1, 0, &off_100209B90);
    if (*(a1 + 1199) && *(a1 + 269) == 1)
    {
      sub_100090BF4(a1, 0, &off_100209BA8);
    }

    if (*(a1 + 1119))
    {
      sub_100090BF4(a1, 0, &off_100209BC0);
    }

    v6 = [*(a1 + 1479) nexusInstances];
    sub_100090978(a1, v6);
  }

  v7 = [v3 objectForKeyedSubscript:@"message"];
  v8 = v7;
  if (v7)
  {
    v9 = [v7 objectForKeyedSubscript:@"message-data"];
    if (!v9)
    {
LABEL_31:

      goto LABEL_32;
    }

    v10 = [v8 objectForKeyedSubscript:@"channel-id"];
    v11 = [v8 objectForKeyedSubscript:@"message-pre-act"];
    v12 = [v11 BOOLValue];
    if ([v10 integerValue] == 1)
    {
      if (v12 && *(a1 + 294) == 1)
      {
        v13 = _NRCopyLogObjectForNRUUID();
        IsLevelEnabled = _NRLogIsLevelEnabled();

        if (IsLevelEnabled)
        {
          v15 = _NRCopyLogObjectForNRUUID();
          v16 = [a1 copyDescription];
          v47 = 6716;
          v48 = v16;
          v45 = "";
          v46 = "[NRLinkBluetooth processXPCCommDictionary:]";
          v17 = "%s%.30s:%-4d %@: ignoring pre-activation message for medium";
LABEL_23:
          v20 = v15;
          v21 = 0;
LABEL_27:
          _NRLogWithArgs(v20, v21, v17, v45, v46, v47, v48);

          goto LABEL_30;
        }

        goto LABEL_30;
      }

      v22 = a1;
      v23 = v9;
      v24 = 0;
    }

    else
    {
      if ([v10 integerValue] != 2)
      {
        v25 = _NRCopyLogObjectForNRUUID();
        v26 = _NRLogIsLevelEnabled();

        if (v26)
        {
          v15 = _NRCopyLogObjectForNRUUID();
          v16 = [a1 copyDescription];
          v45 = v16;
          v46 = v10;
          v17 = "%@: Invalid channel ID: %@";
          v20 = v15;
          v21 = 17;
          goto LABEL_27;
        }

        goto LABEL_30;
      }

      if (v12 && *(a1 + 295) == 1)
      {
        v18 = _NRCopyLogObjectForNRUUID();
        v19 = _NRLogIsLevelEnabled();

        if (v19)
        {
          v15 = _NRCopyLogObjectForNRUUID();
          v16 = [a1 copyDescription];
          v47 = 6722;
          v48 = v16;
          v45 = "";
          v46 = "[NRLinkBluetooth processXPCCommDictionary:]";
          v17 = "%s%.30s:%-4d %@: ignoring pre-activation message for high";
          goto LABEL_23;
        }

LABEL_30:

        goto LABEL_31;
      }

      v22 = a1;
      v23 = v9;
      v24 = 1;
    }

    sub_100091A38(v22, v23, v24);
    goto LABEL_30;
  }

LABEL_32:
  v27 = [v3 objectForKeyedSubscript:@"datapath-report"];
  v28 = v27;
  if (v27)
  {
    v29 = [v27 objectForKeyedSubscript:@"datapath-report-stall"];
    if ([v29 BOOLValue])
    {
      v30 = [v28 objectForKeyedSubscript:@"channel-id-list"];
      v49 = 0u;
      v50 = 0u;
      v51 = 0u;
      v52 = 0u;
      v31 = [v30 countByEnumeratingWithState:&v49 objects:v56 count:16];
      if (v31)
      {
        v32 = v31;
        v33 = *v50;
        do
        {
          for (i = 0; i != v32; i = i + 1)
          {
            if (*v50 != v33)
            {
              objc_enumerationMutation(v30);
            }

            v35 = [*(*(&v49 + 1) + 8 * i) integerValue] - 1;
            if (v35 <= 2)
            {
              sub_100091F34(a1, (&off_1001FB220)[v35]);
            }
          }

          v32 = [v30 countByEnumeratingWithState:&v49 objects:v56 count:16];
        }

        while (v32);
      }
    }

    v36 = [v28 objectForKeyedSubscript:@"datapath-report-remediate"];
    if ([v36 BOOLValue])
    {
      sub_100092178(a1);
    }
  }

  v37 = [v3 objectForKeyedSubscript:@"error"];
  v38 = v37;
  if (v37)
  {
    [a1 cancelWithReason:{@"parser internal error: %@", v37}];
  }

  v39 = [v3 objectForKeyedSubscript:@"wake-pkt-sn"];
  v40 = [v3 objectForKeyedSubscript:@"wake-pkt-spi"];
  if (v39)
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      if (v40)
      {
        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          v41 = [v39 unsignedIntValue];
          v42 = [v40 unsignedIntValue];
          v43 = v5;
          if (qword_100229268 != -1)
          {
            dispatch_once(&qword_100229268, &stru_1001FC3A0);
          }

          v44 = qword_100229260;
          block[0] = _NSConcreteStackBlock;
          block[1] = 3221225472;
          block[2] = sub_1000922D0;
          block[3] = &unk_1001FCDD8;
          v54 = v42;
          v55 = v41;
          dispatch_async(v44, block);

          v5 = v43;
        }
      }
    }
  }

LABEL_57:
}

void sub_100091A38(uint64_t a1, void *a2, int a3)
{
  v5 = a2;
  v35 = v5;
  if (!a3)
  {
    if (*(a1 + 16) - 1 > 1)
    {
      sub_100094EDC(a1, v5);
      v6 = 371;
      goto LABEL_18;
    }

    v7 = *(a1 + 371);
    v8 = v7 + [v5 length];
    if (*(a1 + 315) < v8)
    {
      v9 = _NRCopyLogObjectForNRUUID();
      IsLevelEnabled = _NRLogIsLevelEnabled();

      if (IsLevelEnabled)
      {
        v11 = _NRCopyLogObjectForNRUUID();
        v12 = [a1 copyDescription];
        _NRLogWithArgs(v11, 0, "%s%.30s:%-4d %@: increasing size of _linkReadBuffer %u -> %u", "", "[NRLinkBluetooth processXPCCommMessage:isUrgentLink:]", 6812, v12, *(a1 + 315), v8);
      }

      v13 = reallocf(*(a1 + 1455), v8);
      if (!v13)
      {
        v26 = sub_10007CF34();
        v27 = _NRLogIsLevelEnabled();

        if (v27)
        {
          v28 = sub_10007CF34();
          _NRLogWithArgs(v28, 16, "%s%.30s:%-4d ABORTING: strict_reallocf(%zu) failed", "", "[NRLinkBluetooth processXPCCommMessage:isUrgentLink:]", 6813, v8);
        }

        goto LABEL_27;
      }

      *(a1 + 1455) = v13;
      *(a1 + 315) = v8;
      *(a1 + 323) = (*(a1 + 315) + 1) >> 1;
    }

    v14 = *(a1 + 1455);
    v15 = *(a1 + 371);
    v16 = [v35 bytes];
    memcpy((v14 + v15), v16, [v35 length]);
    *(a1 + 371) += [v35 length];
    sub_100092390(a1, 0);
    goto LABEL_19;
  }

  if ((*(a1 + 269) & 1) == 0)
  {
    v17 = *(a1 + 379);
    v8 = v17 + [v5 length];
    if (*(a1 + 319) >= v8)
    {
LABEL_16:
      v23 = *(a1 + 1463);
      v24 = *(a1 + 379);
      v25 = [v35 bytes];
      memcpy((v23 + v24), v25, [v35 length]);
      *(a1 + 379) += [v35 length];
      sub_100092390(a1, 1);
      goto LABEL_19;
    }

    v18 = _NRCopyLogObjectForNRUUID();
    v19 = _NRLogIsLevelEnabled();

    if (v19)
    {
      v20 = _NRCopyLogObjectForNRUUID();
      v21 = [a1 copyDescription];
      _NRLogWithArgs(v20, 0, "%s%.30s:%-4d %@: increasing size of _urgentLinkReadBuffer %u -> %u", "", "[NRLinkBluetooth processXPCCommMessage:isUrgentLink:]", 6796, v21, *(a1 + 319), v8);
    }

    v22 = reallocf(*(a1 + 1463), v8);
    if (v22)
    {
      *(a1 + 1463) = v22;
      *(a1 + 319) = v8;
      *(a1 + 327) = (*(a1 + 319) + 1) >> 1;
      goto LABEL_16;
    }

    v29 = sub_10007CF34();
    v30 = _NRLogIsLevelEnabled();

    if (v30)
    {
      v31 = sub_10007CF34();
      _NRLogWithArgs(v31, 16, "%s%.30s:%-4d ABORTING: strict_reallocf(%zu) failed", "", "[NRLinkBluetooth processXPCCommMessage:isUrgentLink:]", 6797, v8);
    }

LABEL_27:
    v32 = _os_log_pack_size();
    v33 = __error();
    v34 = _os_log_pack_fill(&v35 - ((v32 + 15) & 0xFFFFFFFFFFFFFFF0), v32, *v33, &_mh_execute_header, "%{public}s strict_reallocf(%zu) failed");
    *v34 = 136446466;
    *(v34 + 4) = "[NRLinkBluetooth processXPCCommMessage:isUrgentLink:]";
    *(v34 + 12) = 2048;
    *(v34 + 14) = v8;
    sub_10007CF34();
    _NRLogAbortWithPack();
  }

  sub_100094EDC(a1, v5);
  v6 = 379;
LABEL_18:
  *(a1 + v6) = 0;
LABEL_19:
}

BOOL sub_100091F34(void *a1, const char *a2)
{
  objc_opt_self();
  if (qword_1002290C0 != -1)
  {
    dispatch_once(&qword_1002290C0, &stru_1001FB2B0);
  }

  v4 = qword_1002290B8;
  if (v4)
  {
    v5 = v4;
    v6 = sub_100003490();
    dispatch_assert_queue_V2(v6);

    nr_absolute_time();
    NRDiffMachTimeInSeconds();
    v8 = v7;

    if (v8 > 0.0 && v8 < 3600.0)
    {
      return 0;
    }
  }

  v10 = a2 != 0;
  if (a2)
  {
    v23 = a2;
    v11 = [[NSString alloc] initWithFormat:@"%sOutput"];
    v12 = _NRCopyLogObjectForNRUUID();
    IsLevelEnabled = _NRLogIsLevelEnabled();

    if (IsLevelEnabled)
    {
      v17 = _NRCopyLogObjectForNRUUID();
      v24 = [a1 copyDescription];
      v23 = "";
      _NRLogWithArgs(v17, 0, "%s%.30s:%-4d %@: Data stall detected for %@");
    }

    sub_10013C2A8(@"NRLinkBluetooth", @"Data stall", v11, 0, 0, v14, v15, v16, v23);
    objc_opt_self();
    if (qword_1002290C0 != -1)
    {
      dispatch_once(&qword_1002290C0, &stru_1001FB2B0);
    }

    v18 = qword_1002290B8;
    if (v18)
    {
      v19 = sub_100003490();
      dispatch_assert_queue_V2(v19);

      v18[34] = nr_absolute_time();
    }

    goto LABEL_16;
  }

  v20 = sub_10007CF34();
  v21 = _NRLogIsLevelEnabled();

  if (!v21)
  {
    return 0;
  }

  v11 = sub_10007CF34();
  _NRLogWithArgs(v11, 17, "%s called with null srcName", "[NRLinkBluetooth reportDataStallForOutputSource:]");
LABEL_16:

  return v10;
}

uint64_t sub_100092178(uint64_t a1)
{
  if (*(a1 + 1119))
  {
    return 0;
  }

  objc_opt_self();
  if (qword_1002290C0 != -1)
  {
    dispatch_once(&qword_1002290C0, &stru_1001FB2B0);
  }

  v4 = qword_1002290B8;
  if (v4)
  {
    v5 = v4;
    v6 = sub_100003490();
    dispatch_assert_queue_V2(v6);

    nr_absolute_time();
    NRDiffMachTimeInSeconds();
    v8 = v7;

    if (v8 > 0.0 && v8 < 3600.0)
    {
      return 0;
    }
  }

  objc_opt_self();
  if (qword_1002290C0 != -1)
  {
    dispatch_once(&qword_1002290C0, &stru_1001FB2B0);
  }

  v10 = qword_1002290B8;
  if (v10)
  {
    v11 = sub_100003490();
    dispatch_assert_queue_V2(v11);

    v10[35] = nr_absolute_time();
  }

  sub_100080EB4(a1, @"LinkStats - Remediating data stall", v12, v13, v14, v15, v16, v17, v1);
  return 1;
}

void sub_1000922D0(uint64_t a1)
{
  v4 = objc_alloc_init(NSMutableDictionary);
  v2 = [NSNumber numberWithUnsignedInt:*(a1 + 32)];
  [v4 setObject:v2 forKeyedSubscript:@"Packet SPI"];

  v3 = [NSNumber numberWithUnsignedInt:*(a1 + 36)];
  [v4 setObject:v3 forKeyedSubscript:@"Packet sequence number"];

  sub_100008D1C(@"NetworkRelay waking packet", v4);
}

void sub_100092390(uint64_t a1, uint64_t *a2)
{
  v4 = a1;
  v5 = &OBJC_IVAR___NRLinkBluetooth__filledInUrgentLinkReadBufferBytes;
  if (!a2)
  {
    v5 = &OBJC_IVAR___NRLinkBluetooth__filledInLinkReadBufferBytes;
  }

  v6 = &OBJC_IVAR___NRLinkBluetooth__handledUrgentLinkReadBufferBytes;
  if (!a2)
  {
    v6 = &OBJC_IVAR___NRLinkBluetooth__handledLinkReadBufferBytes;
  }

  v7 = &OBJC_IVAR___NRLinkBluetooth__linkReadBuffer;
  if (a2)
  {
    v7 = &OBJC_IVAR___NRLinkBluetooth__urgentLinkReadBuffer;
  }

  v8 = *v6;
  v9 = *v5;
  if (*(a1 + v8) > *(a1 + v9))
  {
    v224 = sub_10007CF34();
    IsLevelEnabled = _NRLogIsLevelEnabled();

    if (IsLevelEnabled)
    {
      v226 = sub_10007CF34();
      _NRLogWithArgs(v226, 16, "%s%.30s:%-4d ABORTING: handledLinkReadBufferBytes=%u > filledInLinkReadBufferBytes=%u", "", "[NRLinkBluetooth handleReadData:]", 7189, *(v4 + v8), *(v4 + v9));
    }

    v227 = _os_log_pack_size();
    v10 = &v283 - ((__chkstk_darwin() + 15) & 0xFFFFFFFFFFFFFFF0);
    v228 = __error();
    v229 = _os_log_pack_fill(v10, v227, *v228, &_mh_execute_header, "%{public}s handledLinkReadBufferBytes=%u > filledInLinkReadBufferBytes=%u");
    v230 = *(v4 + v8);
    v231 = *(v4 + v9);
    *v229 = 136446722;
    *(v229 + 4) = "[NRLinkBluetooth handleReadData:]";
    *(v229 + 12) = 1024;
    *(v229 + 14) = v230;
    *(v229 + 18) = 1024;
    *(v229 + 20) = v231;
LABEL_330:
    sub_10007CF34();
    _NRLogAbortWithPack();
  }

  else
  {
    v10 = *(a1 + *v7);
    v3 = &gNRPacketLoggingEnabled;
    if (gNRPacketLoggingEnabled != 1)
    {
      goto LABEL_9;
    }
  }

  v2 = a2;
  v232 = _NRCopyLogObjectForNRUUID();
  v233 = _NRLogIsLevelEnabled();

  LODWORD(a2) = v2;
  if (v233)
  {
    v234 = _NRCopyLogObjectForNRUUID();
    v235 = [v4 copyDescription];
    _NRLogWithArgs(v234, 1, "%s%.30s:%-4d %@: handling %u bytes (handled %u)", "", "[NRLinkBluetooth handleReadData:]", 7191, v235, *(v4 + v9), *(v4 + v8));

    LODWORD(a2) = v2;
  }

LABEL_9:
  if (a2)
  {
    if (*(v4 + 269) == 1)
    {
      v11 = *(v4 + 16);
LABEL_16:
      if ((v11 - 4) <= 5)
      {
        v17 = *(v4 + 371);
        v18 = (v4 + 375);
        v19 = *(v4 + 375);
        v20 = v19 + 1;
        if (v17 < v19 + 1)
        {
LABEL_18:
          v21 = v4;
          v22 = 1;
LABEL_19:

          sub_100096520(v21, v22);
          return;
        }

        while (1)
        {
          v31 = (*(v4 + 1455) + v19);
          v32 = *v31;
          if (*v31)
          {
            break;
          }

          *v18 = v20;
          v38 = _NRCopyLogObjectForNRUUID();
          v39 = _NRLogIsLevelEnabled();

          if (v39)
          {
            v40 = _NRCopyLogObjectForNRUUID();
            v41 = [v4 copyDescription];
            _NRLogWithArgs(v40, 1, "%s%.30s:%-4d %@: Handling Pad0", "", "[NRLinkBluetooth handleReadData:]", 7514, v41);

LABEL_61:
          }

LABEL_35:
          v17 = *(v4 + 371);
          v18 = (v4 + 375);
          v19 = *(v4 + 375);
          v20 = v19 + 1;
          if (v17 < v19 + 1)
          {
            goto LABEL_18;
          }
        }

        if (v17 < v19 + 3)
        {
          v21 = v4;
          v22 = 3;
          goto LABEL_19;
        }

        v23 = bswap32(*(v31 + 1)) >> 16;
        if (v17 < v19 + v23 + 5)
        {
          if (*v3)
          {
            v240 = _NRCopyLogObjectForNRUUID();
            v241 = _NRLogIsLevelEnabled();

            if (v241)
            {
              v242 = _NRCopyLogObjectForNRUUID();
              v243 = [v4 copyDescription];
              StringFromNRTLVType = createStringFromNRTLVType();
              _NRLogWithArgs(v242, 1, "%s%.30s:%-4d %@: Got %@ len %u but only have %u", "", "[NRLinkBluetooth handleReadData:]", 7524, v243, StringFromNRTLVType, v23, (*(v4 + 371) - *(v4 + 375)));
            }
          }

          v22 = v23 + 5;
          v21 = v4;
          goto LABEL_19;
        }

        if (*v3)
        {
          v53 = *v31;
          v54 = _NRCopyLogObjectForNRUUID();
          v55 = _NRLogIsLevelEnabled();

          v32 = v53;
          if (v55)
          {
            v56 = _NRCopyLogObjectForNRUUID();
            v57 = [v4 copyDescription];
            v58 = createStringFromNRTLVType();
            _NRLogWithArgs(v56, 1, "%s%.30s:%-4d %@: Handling %@ len %u since we have %u", "", "[NRLinkBluetooth handleReadData:]", 7529, v57, v58, v23, (*(v4 + 371) - *(v4 + 375)));

            v32 = v53;
          }
        }

        v33 = *(v4 + 375);
        v34 = (*(v4 + 1455) + v33);
        v35 = v34 + 3;
        if (v32 < 100)
        {
          v42 = v32;
          v290 = &v283;
          LODWORD(v35) = *&v35[v23];
          v43 = os_inet_checksum();
          v44 = v23;
          LODWORD(v23) = ~v43;
          if (v35 != ~v43)
          {
            v59 = v44;
            v93 = &qword_100229000;
            if (qword_100229088 != -1)
            {
              goto LABEL_354;
            }

            goto LABEL_114;
          }

          *(v4 + 375) += v44 + 5;
          v23 = v44;
          v35 = v34 + 3;
          v32 = v42;
          if (v42 <= 3)
          {
            goto LABEL_48;
          }
        }

        else
        {
          v36 = *&v35[v23];
          v37 = (*v34 << 12) ^ (v34[2] << 8) | v34[1] ^ (*v34 >> 4);
          *(v4 + 375) = v23 + v33 + 5;
          if (v36 != v37)
          {
            goto LABEL_119;
          }

          if (v32 <= 3)
          {
LABEL_48:
            if (v32 == 1)
            {
              v45 = _NRCopyLogObjectForNRUUID();
              v46 = _NRLogIsLevelEnabled();

              if (v46)
              {
                v47 = _NRCopyLogObjectForNRUUID();
                v48 = [v4 copyDescription];
                _NRLogWithArgs(v47, 1, "%s%.30s:%-4d %@: Handling PadN %u", "", "[NRLinkBluetooth handleReadData:]", 7553, v48, v23);
              }

              goto LABEL_35;
            }

            if (v32 == 2)
            {
              ++*(v4 + 1735);
              v49 = _NRCopyLogObjectForNRUUID();
              v50 = _NRLogIsLevelEnabled();

              if (v50)
              {
                v51 = _NRCopyLogObjectForNRUUID();
                v52 = [v4 copyDescription];
                _NRLogWithArgs(v51, 1, "%s%.30s:%-4d %@: Reinjecting uncompressed packet len %u", "", "[NRLinkBluetooth handleReadData:]", 7557, v52, v23);
              }

              v40 = [[NSData alloc] initWithBytes:v35 length:v23];
              sub_10009674C(v4, v40);
              goto LABEL_61;
            }

            if (v32 != 3)
            {
              goto LABEL_35;
            }

            goto LABEL_34;
          }
        }

        if ((v32 - 100) >= 6)
        {
          if (v32 != 4)
          {
            if (v32 == 5)
            {
              sub_100096BD0(v4, v35, v23);
            }

            goto LABEL_35;
          }

          v40 = [[NSData alloc] initWithBytes:v35 length:v23];
          sub_100094EDC(v4, v40);
          goto LABEL_61;
        }

LABEL_34:
        sub_100096834(v4, v34, (v23 + 5), v23, v32);
        goto LABEL_35;
      }

      v27 = _NRCopyLogObjectForNRUUID();
      v28 = _NRLogIsLevelEnabled();

      if (!v28)
      {
        return;
      }

      v290 = _NRCopyLogObjectForNRUUID();
      v29 = [v4 copyDescription];
      _NRLogWithArgs(v290, 1, "%s%.30s:%-4d %@: Ignoring bytes due to unknown state", "", "[NRLinkBluetooth handleReadData:]", 7587, v29);

LABEL_29:
      v30 = v290;

      return;
    }
  }

  else
  {
    v11 = *(v4 + 16);
    if ((v11 - 1) > 1)
    {
      goto LABEL_16;
    }
  }

  v12 = *(v4 + v8);
  if ((*(v4 + v9) - v12) <= 0xB)
  {
    v13 = _NRCopyLogObjectForNRUUID();
    v14 = _NRLogIsLevelEnabled();

    if (!v14)
    {
      return;
    }

    v290 = _NRCopyLogObjectForNRUUID();
    v15 = [v4 copyDescription];
    v16 = sub_1001415A0(*(v4 + 16));
    _NRLogWithArgs(v290, 1, "%s%.30s:%-4d %@: State %@ not enough prelude bytes %u - %u < %zu", "", "[NRLinkBluetooth handleReadData:]", 7207, v15, v16, *(v4 + v9), *(v4 + v8), 12);

    goto LABEL_26;
  }

  v23 = &v10[v12];
  if (*&v10[v12] != 0x53554E494D524554)
  {
    v24 = a2;
    v290 = [[NSData alloc] initWithBytes:v23 length:8];
    v25 = [[NSData alloc] initWithBytes:&unk_100196530 length:8];
    v15 = v25;
    v26 = "";
    if (v24)
    {
      v26 = "urgent ";
    }

    [v4 cancelWithReason:{@"invalid %sprelude: received %@, expected %@, filledIn=%u, handled=%u", v26, v290, v25, *(v4 + v9), *(v4 + v8)}];
LABEL_26:

    goto LABEL_29;
  }

  v59 = *(v23 + 10);
  v60 = __rev16(v59) + 14;
  if (a2)
  {
    *(v4 + 269) = 1;
    [v4 reportEvent:4217];
    v61 = *(v4 + v9) - *(v4 + v8);
    if (v61 > v60)
    {
      if (*v3 == 1)
      {
        v245 = _NRCopyLogObjectForNRUUID();
        v246 = _NRLogIsLevelEnabled();

        if (v246)
        {
          v247 = _NRCopyLogObjectForNRUUID();
          v248 = [v4 copyDescription];
          _NRLogWithArgs(v247, 1, "%s%.30s:%-4d %@: memmoving the urgent linkReadBuffer by preludeLenFull=%u filledIn=%u handled=%u", "", "[NRLinkBluetooth handleReadData:]", 7231, v248, v60, *(v4 + 371), *(v4 + 375));
        }
      }

      memmove(v10, (v23 + v60), *(v4 + v9) - *(v4 + v8) - v60);
      v62 = *(v4 + v9) - *(v4 + v8) - v60;
      goto LABEL_81;
    }

    if (v61 != v60)
    {
      v249 = sub_10007CF34();
      v250 = _NRLogIsLevelEnabled();

      if (v250)
      {
        v251 = sub_10007CF34();
        _NRLogWithArgs(v251, 16, "%s%.30s:%-4d ABORTING: Bad prelude post-processing preludeLenFull=%u filledIn=%u handled=%u", "", "[NRLinkBluetooth handleReadData:]", 7240, v60, *(v4 + v9), *(v4 + v8));
      }

      v252 = _os_log_pack_size();
      v23 = &v283 - ((__chkstk_darwin() + 15) & 0xFFFFFFFFFFFFFFF0);
      v253 = __error();
      v254 = _os_log_pack_fill(v23, v252, *v253, &_mh_execute_header, "%{public}s Bad prelude post-processing preludeLenFull=%u filledIn=%u handled=%u");
      sub_100095124(v254, "[NRLinkBluetooth handleReadData:]", v60, *(v4 + v9), *(v4 + v8));
      sub_10007CF34();
      _NRLogAbortWithPack();
      goto LABEL_348;
    }

    if (*v3 == 1)
    {
      v255 = _NRCopyLogObjectForNRUUID();
      v256 = _NRLogIsLevelEnabled();

      if (!v256)
      {
        v62 = 0;
        goto LABEL_81;
      }

      v257 = _NRCopyLogObjectForNRUUID();
      v258 = [v4 copyDescription];
      _NRLogWithArgs(v257, 1, "%s%.30s:%-4d %@: not memmoving the urgent linkReadBuffer by preludeLenFull=%u filledIn=%u handled=%u", "", "[NRLinkBluetooth handleReadData:]", 7243, v258, v60, *(v4 + v9), *(v4 + v8));
    }

    v62 = 0;
LABEL_81:
    *(v4 + v9) = v62;
    *(v4 + v8) = 0;
    v68 = _NRCopyLogObjectForNRUUID();
    v69 = _NRLogIsLevelEnabled();

    if (v69)
    {
      v70 = _NRCopyLogObjectForNRUUID();
      v71 = [v4 copyDescription];
      _NRLogWithArgs(v70, 1, "%s%.30s:%-4d %@: Successfully received prelude for urgent link", "", "[NRLinkBluetooth handleReadData:]", 7248, v71);
    }

    if (*(v4 + 293) == 1)
    {

      sub_100090BF4(v4, v60, &off_100209BA8);
    }

    else
    {
      v88 = _NRCopyLogObjectForNRUUID();
      v89 = _NRLogIsLevelEnabled();

      if (v89)
      {
        v90 = _NRCopyLogObjectForNRUUID();
        v91 = [v4 copyDescription];
        _NRLogWithArgs(v90, 1, "%s%.30s:%-4d %@: Starting LtN-U since received prelude, about to async", "", "[NRLinkBluetooth handleReadData:]", 7254, v91);
      }

      v92 = *(v4 + 8);
      block[0] = _NSConcreteStackBlock;
      block[1] = 3221225472;
      block[2] = sub_100095154;
      block[3] = &unk_1001FD3C8;
      block[4] = v4;
      dispatch_async(v92, block);
    }

    return;
  }

  v8 = *(v23 + 8);
  v3 = &qword_100229000;
  v2 = &qword_100229000;
  v9 = &dispatch_group_enter_ptr;
  v289 = v60;
  if (v8 != 1)
  {
    if (qword_100229088 == -1)
    {
LABEL_88:
      v72 = v2[16];
      v73 = _NRLogIsLevelEnabled();

      if (v73)
      {
        v74 = sub_10007CF34();
        _NRLogWithArgs(v74, 0, "%s%.30s:%-4d Remote device speaks terminus version %u while we speak %u", "", "[NRLinkBluetooth handleReadData:]", 7270, v8, 1);
      }

      v67 = [objc_alloc(*(v9 + 3752)) initWithFormat:@"localVersion %u remoteVersion %u", 1, v8];
      goto LABEL_91;
    }

LABEL_348:
    dispatch_once(&qword_100229088, &stru_1001FB1C0);
    goto LABEL_88;
  }

  if (qword_100229088 != -1)
  {
    dispatch_once(&qword_100229088, &stru_1001FB1C0);
  }

  v63 = qword_100229080;
  v64 = _NRLogIsLevelEnabled();

  if (v64)
  {
    v65 = sub_10007CF34();
    _NRLogWithArgs(v65, 0, "%s%.30s:%-4d We both speak terminus version %u", "", "[NRLinkBluetooth handleReadData:]", 7275, 1);
  }

  v66 = [NSString alloc];
  v67 = [v66 initWithFormat:@"version %u", 1, v282];
LABEL_91:
  v290 = v67;
  *(v4 + 249) = *(v23 + 9);
  v75 = v3[17];
  if (*(v4 + 248) == *(v4 + 249))
  {
    if (v75 != -1)
    {
      dispatch_once(&qword_100229088, &stru_1001FB1C0);
    }

    if (_NRLogIsLevelEnabled())
    {
      v76 = sub_10007CF34();
      v77 = sub_100095210(*(v4 + 249));
      _NRLogWithArgs(v76, 0, "%s%.30s:%-4d We are both in prelude state %@", "", "[NRLinkBluetooth handleReadData:]", 7288, v77);
    }

    v78 = objc_alloc(*(v9 + 3752));
    v79 = *(v4 + 249);
    if (v79 > 0xB)
    {
      switch(v79)
      {
        case 0xC:
          v80 = @"PairWithOOBKeyOrIDSKeys";
          goto LABEL_139;
        case 0xD:
          v80 = @"ModernPairingKeyConfirmation";
          goto LABEL_139;
        case 0x14:
          v80 = @"HasCompletedPairing";
          goto LABEL_139;
      }
    }

    else
    {
      if (!*(v4 + 249))
      {
        v80 = @"Invalid";
        goto LABEL_139;
      }

      if (v79 == 10)
      {
        v80 = @"PairWithOOBKey";
        goto LABEL_139;
      }

      if (v79 == 11)
      {
        v80 = @"PairWithIDSKeys";
LABEL_139:
        v35 = [v78 initWithFormat:@"state %@", v80];
        goto LABEL_156;
      }
    }

    v102 = v78;
    v80 = [objc_alloc(*(v9 + 3752)) initWithFormat:@"Unknown(%lld)", v79];
    v78 = v102;
    goto LABEL_139;
  }

  if (v75 != -1)
  {
    dispatch_once(&qword_100229088, &stru_1001FB1C0);
  }

  v81 = v2[16];
  v82 = _NRLogIsLevelEnabled();

  if (v82)
  {
    v83 = sub_10007CF34();
    v84 = sub_100095210(*(v4 + 249));
    v85 = sub_100095210(*(v4 + 248));
    _NRLogWithArgs(v83, 0, "%s%.30s:%-4d Received remote prelude state %@ while we are %@", "", "[NRLinkBluetooth handleReadData:]", 7283, v84, v85);
  }

  v86 = objc_alloc(*(v9 + 3752));
  v87 = *(v4 + 248);
  if (v87 > 0xB)
  {
    if (v87 == 12)
    {
      v80 = @"PairWithOOBKeyOrIDSKeys";
      goto LABEL_141;
    }

    if (v87 != 13)
    {
      if (v87 == 20)
      {
        v80 = @"HasCompletedPairing";
        goto LABEL_141;
      }

      goto LABEL_135;
    }

    v80 = @"ModernPairingKeyConfirmation";
  }

  else
  {
    if (!*(v4 + 248))
    {
      v80 = @"Invalid";
      goto LABEL_141;
    }

    if (v87 != 10)
    {
      if (v87 == 11)
      {
        v80 = @"PairWithIDSKeys";
        goto LABEL_141;
      }

LABEL_135:
      v103 = v86;
      v80 = [objc_alloc(*(v9 + 3752)) initWithFormat:@"Unknown(%lld)", v87];
      v86 = v103;
      goto LABEL_141;
    }

    v80 = @"PairWithOOBKey";
  }

LABEL_141:
  v104 = *(v4 + 249);
  if (v104 > 0xB)
  {
    switch(v104)
    {
      case 0xC:
        v105 = @"PairWithOOBKeyOrIDSKeys";
        goto LABEL_155;
      case 0xD:
        v105 = @"ModernPairingKeyConfirmation";
        goto LABEL_155;
      case 0x14:
        v105 = @"HasCompletedPairing";
        goto LABEL_155;
    }

LABEL_152:
    v106 = *(v9 + 3752);
    v107 = v86;
    v105 = [[v106 alloc] initWithFormat:@"Unknown(%lld)", v104];
    v86 = v107;
    v9 = 0x1001F9000;
    goto LABEL_155;
  }

  if (!*(v4 + 249))
  {
    v105 = @"Invalid";
    goto LABEL_155;
  }

  if (v104 == 10)
  {
    v105 = @"PairWithOOBKey";
    goto LABEL_155;
  }

  if (v104 != 11)
  {
    goto LABEL_152;
  }

  v105 = @"PairWithIDSKeys";
LABEL_155:
  v35 = [v86 initWithFormat:@"localState %@ remoteState %@", v80, v105];

LABEL_156:
  v108 = *(v4 + 249);
  v109 = *(v4 + 248);
  if (v108 != v109)
  {
    if (v108 == 10 && v109 != 12 || v108 != 12 && (v109 == 10 || !*(v4 + 249) || v108 == 13 && v109 != 13))
    {
      [v4 cancelWithReason:{@"Incompatible pairing prelude states %@, %@", v35, v290}];
      goto LABEL_339;
    }

    if (v109 < v108)
    {
      LOBYTE(v108) = *(v4 + 248);
    }
  }

  *(v4 + 250) = v108;
  v110 = *(v4 + 250);
  if (*(v4 + 250) > 0xBu)
  {
    switch(v110)
    {
      case 0xC:
        v111 = @"PairWithOOBKeyOrIDSKeys";
        goto LABEL_182;
      case 0xD:
        v111 = @"ModernPairingKeyConfirmation";
        goto LABEL_182;
      case 0x14:
        v111 = @"HasCompletedPairing";
        goto LABEL_182;
    }

LABEL_179:
    v111 = [objc_alloc(*(v9 + 3752)) initWithFormat:@"Unknown(%lld)", v110];
    goto LABEL_182;
  }

  if (!*(v4 + 250))
  {
    v111 = @"Invalid";
    goto LABEL_182;
  }

  if (v110 == 10)
  {
    v111 = @"PairWithOOBKey";
    goto LABEL_182;
  }

  if (v110 != 11)
  {
    goto LABEL_179;
  }

  v111 = @"PairWithIDSKeys";
LABEL_182:
  [v4 reportEvent:3010 detailsFormat:@"%@, %@, using %@", v290, v35, v111];

  v112 = v289;
  v113 = v289;
  if (*(v4 + 371) - *(v4 + 375) < v289)
  {
    v114 = _NRCopyLogObjectForNRUUID();
    v115 = _NRLogIsLevelEnabled();

    if (v115)
    {
      v116 = _NRCopyLogObjectForNRUUID();
      v117 = [v4 copyDescription];
      v118 = sub_1001415A0(*(v4 + 16));
      _NRLogWithArgs(v116, 1, "%s%.30s:%-4d %@: State %@ not enough prelude and TLVs bytes %u - %u < %u", "", "[NRLinkBluetooth handleReadData:]", 7318, v117, v118, *(v4 + 371), *(v4 + 375), v113);
    }

    goto LABEL_339;
  }

  v288 = v35;
  v93 = v289;
  v119 = [[NSData alloc] initWithBytes:v23 length:v112];
  sub_1000952D8(v4, v119);

  v287 = v113;
  if (v113 == 2)
  {
    v259 = sub_10007CF34();
    v260 = _NRLogIsLevelEnabled();

    if (v260)
    {
      v261 = sub_10007CF34();
      _NRLogWithArgs(v261, 16, "%s%.30s:%-4d ABORTING: Assertion Failed: dataLen > 0", "", "nrChecksumVerify", 126);
    }

    v4 = _os_log_pack_size();
    v262 = &v283 - ((__chkstk_darwin() + 15) & 0xFFFFFFFFFFFFFFF0);
    v263 = __error();
    v264 = _os_log_pack_fill(v262, v4, *v263, &_mh_execute_header, "%{public}s Assertion Failed: dataLen > 0");
    *v264 = 136446210;
    *(v264 + 4) = "nrChecksumVerify";
    sub_10007CF34();
    _NRLogAbortWithPack();
LABEL_354:
    dispatch_once(&qword_100229088, &stru_1001FB1C0);
LABEL_114:
    if (_NRLogIsLevelEnabled())
    {
      if (*(v93 + 136) != -1)
      {
        dispatch_once(&qword_100229088, &stru_1001FB1C0);
      }

      _NRLogWithArgs(qword_100229080, 16, "%s%.30s:%-4d checksum failed computed 0x%04x != observed 0x%04x", "", "nrChecksumVerify", 133, bswap32(v23) >> 16, __rev16(v35));
    }

    *(v4 + 375) += v59 + 5;
LABEL_119:
    v94 = *(v4 + 2007);
    if (v94)
    {
      *(v94 + 106) = 1;
    }

    v95 = createStringFromNRTLVType();
    v282 = *(v4 + 375);
    v290 = v95;
    sub_100080EB4(v4, @"Invalid checksum detected in buffer on read type %@ len %u filledIn=%u handled=%u", v96, v97, v98, v99, v100, v101, v95);
    goto LABEL_29;
  }

  v286 = (v23 + v93);
  v3 = (v23 + v93 - 2);
  v120 = *v3;
  v121 = os_inet_checksum();
  v122 = ~v121;
  if (v120 != ~v121)
  {
    v132 = v3;
    v133 = sub_10007CF34();
    v134 = _NRLogIsLevelEnabled();

    if (v134)
    {
      v135 = sub_10007CF34();
      _NRLogWithArgs(v135, 16, "%s%.30s:%-4d checksum failed computed 0x%04x != observed 0x%04x", "", "nrChecksumVerify", 133, bswap32(v122) >> 16, __rev16(v120));
    }

    v136 = os_inet_checksum();
    v137 = *v132;
    v138 = *(v4 + 2007);
    if (v138)
    {
      *(v138 + 107) = 1;
    }

    v139 = ~v136;
    v140 = _NRCopyLogObjectForNRUUID();
    v141 = _NRLogIsLevelEnabled();

    v142 = &OBJC_IVAR___BTPResolver__sdRefResolve;
    if (v141)
    {
      v289 = _NRCopyLogObjectForNRUUID();
      v286 = [v4 copyDescription];
      v287 = *(v4 + 431);
      v143 = [v287 length];
      v144 = *(v4 + 431);
      v145 = _NRCreateDataString();
      v146 = *(v4 + 371);
      v147 = *(v4 + 375);

      v148 = v139;
      v280 = v146;
      v281 = v147;
      v142 = &OBJC_IVAR___BTPResolver__sdRefResolve;
      v279 = v143;
      v149 = v286;
      v150 = v289;
      _NRLogWithArgs(v289, 16, "%s%.30s:%-4d %@: Prelude checksum failed: received %llu bytes %@, filledIn=%u, handled=%u, receivedChecksum=0x%04x expectedChecksum=0x%04x", "", "[NRLinkBluetooth handleReadData:]", 7334, v286, v279, v145, v280, v281, v137, v139);
    }

    else
    {
      v148 = v139;
    }

    v35 = v288;
    v151 = *(v4 + v142[609]);
    [v4 cancelWithReason:{@"prelude checksum failed: received %llu bytes, filledIn=%u, handled=%u, receivedChecksum=0x%04x expectedChecksum=0x%04x", objc_msgSend(v151, "length"), *(v4 + 371), *(v4 + 375), v137, v148}];

    goto LABEL_339;
  }

  v8 = _NRCopyLogObjectForNRUUID();
  v123 = _NRLogIsLevelEnabled();

  if (v123)
  {
    v8 = _NRCopyLogObjectForNRUUID();
    v124 = [v4 copyDescription];
    v125 = *(v4 + 431);
    v126 = [v125 length];
    v127 = v3;
    v128 = *(v4 + 431);
    v129 = _NRCreateDataString();
    _NRLogWithArgs(v8, 1, "%s%.30s:%-4d %@: Received prelude %llu bytes %@", "", "[NRLinkBluetooth handleReadData:]", 7342, v124, v126, v129);

    v3 = v127;
  }

  if (!v59)
  {
    v190 = 0;
    v9 = 0x100224000;
    goto LABEL_287;
  }

  v9 = 0x100224000;
  v130 = 0;
  if (v289 < 0xFu)
  {
    goto LABEL_286;
  }

  v131 = (v23 + 12);
  v285 = v3;
  while (1)
  {
    v152 = *v131;
    if (!*v131)
    {
      goto LABEL_202;
    }

    v153 = v131 + 2;
    if (v131 + 2 > v3)
    {
      v191 = v3;
      v192 = _NRCopyLogObjectForNRUUID();
      v3 = _NRLogIsLevelEnabled();

      if (!v3)
      {
        goto LABEL_286;
      }

      v8 = _NRCopyLogObjectForNRUUID();
      v193 = [v4 copyDescription];
      _NRLogWithArgs(v8, 16, "%s%.30s:%-4d %@: TLV len is off the edge %lld > %lld", "", "[NRLinkBluetooth handleReadData:]", 7354, v193, &v153[-v23], v191 - v23);
      goto LABEL_285;
    }

    v154 = *(v131 + 1);
    v155 = __rev16(v154);
    v8 = (v131 + 3);
    v156 = &v131[v155 + 3];
    if (v156 > v3)
    {
      break;
    }

    if (v152 == 4)
    {
      if (v154 != 4096)
      {
        v8 = v3;
        v173 = _NRCopyLogObjectForNRUUID();
        v174 = _NRLogIsLevelEnabled();

        if (v174)
        {
          v175 = _NRCopyLogObjectForNRUUID();
          v176 = [v4 copyDescription];
          _NRLogWithArgs(v175, 16, "%s%.30s:%-4d %@: ignoring RandomUUID with invalid length %u", "", "[NRLinkBluetooth handleReadData:]", 7403, v176, v155);
        }

        v3 = v8;
        goto LABEL_201;
      }

      [*(v4 + 1503) getUUIDBytes:&v293];
      v157 = *v8;
      v309.i8[0] = v157 ^ v293;
      if (v293 == v157)
      {
        v158 = v131[4];
        v309.i8[1] = v158 ^ v294;
        if (v294 == v158)
        {
          v159 = v131[5];
          v309.i8[2] = v159 ^ v295;
          if (v295 == v159)
          {
            v160 = v131[6];
            v309.i8[3] = v160 ^ v296;
            if (v296 == v160)
            {
              v161 = v131[7];
              v309.i8[4] = v161 ^ v297;
              if (v297 == v161)
              {
                v162 = v131[8];
                v309.i8[5] = v162 ^ v298;
                if (v298 == v162)
                {
                  v163 = v131[9];
                  v309.i8[6] = v163 ^ v299;
                  if (v299 == v163)
                  {
                    v164 = v131[10];
                    v309.i8[7] = v164 ^ v300;
                    if (v300 == v164)
                    {
                      v165 = v131[11];
                      v309.i8[8] = v165 ^ v301;
                      if (v301 == v165)
                      {
                        v166 = v131[12];
                        v309.i8[9] = v166 ^ v302;
                        if (v302 == v166)
                        {
                          v167 = v131[13];
                          v309.i8[10] = v167 ^ v303;
                          if (v303 == v167)
                          {
                            v168 = v131[14];
                            v309.i8[11] = v168 ^ v304;
                            if (v304 == v168)
                            {
                              v169 = v131[15];
                              v309.i8[12] = v169 ^ v305;
                              if (v305 == v169)
                              {
                                v170 = v131[16];
                                v309.i8[13] = v170 ^ v306;
                                if (v306 == v170)
                                {
                                  v171 = v131[17];
                                  v309.i8[14] = v171 ^ v307;
                                  if (v307 == v171)
                                  {
                                    v172 = v131[18];
                                    v309.i8[15] = v172 ^ v308;
                                    v9 = 0x100224000;
                                    if (v308 > v172)
                                    {
                                      *(v4 + 289) = 1;
                                    }

                                    goto LABEL_248;
                                  }

                                  v9 = 0x100224000;
                                  if (v307 > v171)
                                  {
                                    *(v4 + 289) = 1;
                                  }

LABEL_247:
                                  v309.i8[15] = v131[18] ^ v308;
LABEL_248:
                                  v177 = [NSString alloc];
                                  v178 = sub_100145F4C(&v309);
                                  v179 = [v177 initWithFormat:@" %@", v178];
                                  v180 = *(v4 + 1511);
                                  *(v4 + 1511) = v179;

                                  v181 = _NRCopyLogObjectForNRUUID();
                                  LODWORD(v178) = _NRLogIsLevelEnabled();

                                  if (v178)
                                  {
                                    v182 = _NRCopyLogObjectForNRUUID();
                                    LODWORD(v289) = v130;
                                    v183 = v182;
                                    v184 = [v4 copyDescription];
                                    v284 = [[NSUUID alloc] initWithUUIDBytes:v131 + 3];
                                    v8 = [v284 UUIDString];
                                    v185 = [*(v4 + 1503) UUIDString];
                                    v186 = [[NSUUID alloc] initWithUUIDBytes:&v309];
                                    v187 = [v186 UUIDString];
                                    v188 = v187;
                                    v189 = "Initiator";
                                    if (*(v4 + 289))
                                    {
                                      v189 = "Responder";
                                    }

                                    _NRLogWithArgs(v183, 1, "%s%.30s:%-4d %@: received randomUUID %@, local %@, joint %@ hash%@, we are %s", "", "[NRLinkBluetooth handleReadData:]", 7401, v184, v8, v185, v187, *(v4 + 1511), v189);

                                    v9 = 0x100224000;
                                    v130 = v289;
                                  }

                                  v3 = v285;
                                  goto LABEL_201;
                                }

                                v9 = 0x100224000;
                                if (v306 > v170)
                                {
                                  *(v4 + 289) = 1;
                                }

LABEL_246:
                                v309.i8[14] = v131[17] ^ v307;
                                goto LABEL_247;
                              }

                              v9 = 0x100224000;
                              if (v305 > v169)
                              {
                                *(v4 + 289) = 1;
                              }

LABEL_245:
                              v309.i8[13] = v131[16] ^ v306;
                              goto LABEL_246;
                            }

                            v9 = 0x100224000;
                            if (v304 > v168)
                            {
                              *(v4 + 289) = 1;
                            }

LABEL_244:
                            v309.i8[12] = v131[15] ^ v305;
                            goto LABEL_245;
                          }

                          v9 = 0x100224000;
                          if (v303 > v167)
                          {
                            *(v4 + 289) = 1;
                          }

LABEL_243:
                          v309.i8[11] = v131[14] ^ v304;
                          goto LABEL_244;
                        }

                        v9 = 0x100224000;
                        if (v302 > v166)
                        {
                          *(v4 + 289) = 1;
                        }

LABEL_242:
                        v309.i8[10] = v131[13] ^ v303;
                        goto LABEL_243;
                      }

                      v9 = 0x100224000;
                      if (v301 > v165)
                      {
                        *(v4 + 289) = 1;
                      }

LABEL_241:
                      v309.i8[9] = v131[12] ^ v302;
                      goto LABEL_242;
                    }

                    v9 = 0x100224000;
                    if (v300 > v164)
                    {
                      *(v4 + 289) = 1;
                    }

LABEL_240:
                    v309.i8[8] = v131[11] ^ v301;
                    goto LABEL_241;
                  }

                  v9 = 0x100224000;
                  if (v299 > v163)
                  {
                    *(v4 + 289) = 1;
                  }

LABEL_239:
                  v309.i8[7] = v131[10] ^ v300;
                  goto LABEL_240;
                }

                if (v298 > v162)
                {
                  *(v4 + 289) = 1;
                }

LABEL_238:
                v309.i8[6] = v131[9] ^ v299;
                goto LABEL_239;
              }

              if (v297 > v161)
              {
                *(v4 + 289) = 1;
              }

LABEL_237:
              v309.i8[5] = v131[8] ^ v298;
              goto LABEL_238;
            }

            if (v296 > v160)
            {
              *(v4 + 289) = 1;
            }

LABEL_236:
            v309.i8[4] = v131[7] ^ v297;
            goto LABEL_237;
          }

          if (v295 > v159)
          {
            *(v4 + 289) = 1;
          }

LABEL_235:
          v309.i8[3] = v131[6] ^ v296;
          goto LABEL_236;
        }

        if (v294 > v158)
        {
          *(v4 + 289) = 1;
        }
      }

      else
      {
        if (v293 > v157)
        {
          *(v4 + 289) = 1;
        }

        v309.i8[1] = v131[4] ^ v294;
      }

      v309.i8[2] = v131[5] ^ v295;
      goto LABEL_235;
    }

    if (v152 == 5 && v154 == 512)
    {
      v130 = bswap32(*v8) >> 16;
    }

LABEL_201:
    v131 += (v155 + 3);
LABEL_202:
    if (v131 >= v3)
    {
      goto LABEL_286;
    }
  }

  v194 = _NRCopyLogObjectForNRUUID();
  v3 = _NRLogIsLevelEnabled();

  if (!v3)
  {
    goto LABEL_286;
  }

  v8 = _NRCopyLogObjectForNRUUID();
  v193 = [v4 copyDescription];
  _NRLogWithArgs(v8, 16, "%s%.30s:%-4d %@: TLV is off the edge %lld + 3 + %u = %lld > %lld", "", "[NRLinkBluetooth handleReadData:]", 7365, v193, &v131[-v23], v155, &v156[-v23], v285 - v23);
LABEL_285:

  v9 = &OBJC_IVAR___BTPResolver__sdRefResolve;
LABEL_286:
  v190 = v130;
LABEL_287:
  v195 = sub_1000952E8(v4);
  v196 = &OBJC_IVAR___BTPResolver__sdRefResolve;
  if ((v195 | v190))
  {
    if (v195 & 1) != 0 && (v190)
    {
      v199 = v195;
      v200 = _NRCopyLogObjectForNRUUID();
      v201 = _NRLogIsLevelEnabled();

      if (v201)
      {
        v202 = _NRCopyLogObjectForNRUUID();
        v203 = [v4 copyDescription];
        _NRLogWithArgs(v202, 0, "%s%.30s:%-4d %@: Both sides support APL", "", "[NRLinkBluetooth handleReadData:]", 7419, v203);
      }

      if (v199 >= 2 && (v190 & 2) != 0)
      {
        v204 = _NRCopyLogObjectForNRUUID();
        v205 = _NRLogIsLevelEnabled();

        v196 = &OBJC_IVAR___BTPResolver__sdRefResolve;
        if (!v205)
        {
          goto LABEL_288;
        }

        v206 = _NRCopyLogObjectForNRUUID();
        v8 = [v4 copyDescription];
        _NRLogWithArgs(v206, 0, "%s%.30s:%-4d %@: Both sides use APL", "", "[NRLinkBluetooth handleReadData:]", 7421, v8);
LABEL_315:

        goto LABEL_288;
      }

      if (v199 <= 1 && (v190 & 2) != 0)
      {
        v220 = _NRCopyLogObjectForNRUUID();
        v221 = _NRLogIsLevelEnabled();

        v35 = v288;
        if (v221)
        {
          v222 = _NRCopyLogObjectForNRUUID();
          v223 = [v4 copyDescription];
          _NRLogWithArgs(v222, 0, "%s%.30s:%-4d %@: Local doesn't use APL, but remote does", "", "[NRLinkBluetooth handleReadData:]", 7424, v223);
        }

        sub_100095388(v4);
        goto LABEL_339;
      }

      if (v199 >= 2 && (v190 & 2) == 0)
      {
        v236 = _NRCopyLogObjectForNRUUID();
        v237 = _NRLogIsLevelEnabled();

        v35 = v288;
        if (v237)
        {
          v238 = _NRCopyLogObjectForNRUUID();
          v239 = [v4 copyDescription];
          _NRLogWithArgs(v238, 0, "%s%.30s:%-4d %@: Remote doesn't use APL, but local does", "", "[NRLinkBluetooth handleReadData:]", 7429, v239);
        }

        goto LABEL_339;
      }

      sub_100095388(v4);
    }

    else
    {
      if ((v195 & 1) == 0)
      {
        v212 = _NRCopyLogObjectForNRUUID();
        v213 = _NRLogIsLevelEnabled();

        if (!v213)
        {
          goto LABEL_288;
        }

        v206 = _NRCopyLogObjectForNRUUID();
        v8 = [v4 copyDescription];
        _NRLogWithArgs(v206, 0, "%s%.30s:%-4d %@: Local doesn't support APL, but remote does", "", "[NRLinkBluetooth handleReadData:]", 7440, v8);
        goto LABEL_315;
      }

      if (v190)
      {
        goto LABEL_288;
      }

      v214 = v195;
      v215 = _NRCopyLogObjectForNRUUID();
      v216 = _NRLogIsLevelEnabled();

      if (v216)
      {
        v217 = _NRCopyLogObjectForNRUUID();
        v218 = [v4 copyDescription];
        _NRLogWithArgs(v217, 0, "%s%.30s:%-4d %@: Remote doesn't support APL, but local does", "", "[NRLinkBluetooth handleReadData:]", 7444, v218);
      }

      if (v214 < 2)
      {
        goto LABEL_288;
      }

      v219 = sub_1000BA648(NRLinkDirector);
      sub_1000CA5A8(v219, 0, *(v4 + 32));
    }

    v35 = v288;
    goto LABEL_339;
  }

LABEL_288:
  v197 = *(v4 + *(v9 + 1704)) - *(v4 + v196[427]);
  if (v197 > v287)
  {
    if (gNRPacketLoggingEnabled == 1)
    {
      v265 = _NRCopyLogObjectForNRUUID();
      v266 = _NRLogIsLevelEnabled();

      if (v266)
      {
        v267 = _NRCopyLogObjectForNRUUID();
        v268 = [v4 copyDescription];
        _NRLogWithArgs(v267, 1, "%s%.30s:%-4d %@: memmoving the linkReadBuffer by preludeLenFull=%u filledIn=%u handled=%u", "", "[NRLinkBluetooth handleReadData:]", 7456, v268, v287, *(v4 + *(v9 + 1704)), *(v4 + v196[427]));
      }
    }

    v198 = v287;
    memmove(*(v4 + 1455), v286, (*(v4 + *(v9 + 1704)) - (*(v4 + v196[427]) + v287)));
    *(v4 + *(v9 + 1704)) -= *(v4 + v196[427]) + v198;
    v35 = v288;
    goto LABEL_303;
  }

  if (v197 != v287)
  {
    v269 = sub_10007CF34();
    v270 = _NRLogIsLevelEnabled();

    if (v270)
    {
      v271 = sub_10007CF34();
      _NRLogWithArgs(v271, 16, "%s%.30s:%-4d ABORTING: Bad prelude post-processing preludeLenFull=%u filledIn=%u handled=%u", "", "[NRLinkBluetooth handleReadData:]", 7464, v287, *(v4 + 371), *(v4 + 375));
    }

    v272 = _os_log_pack_size();
    v10 = &v283 - ((__chkstk_darwin() + 15) & 0xFFFFFFFFFFFFFFF0);
    v273 = __error();
    v274 = _os_log_pack_fill(v10, v272, *v273, &_mh_execute_header, "%{public}s Bad prelude post-processing preludeLenFull=%u filledIn=%u handled=%u");
    sub_100095124(v274, "[NRLinkBluetooth handleReadData:]", v287, *(v4 + 371), *(v4 + 375));
    goto LABEL_330;
  }

  if (gNRPacketLoggingEnabled == 1)
  {
    v275 = _NRCopyLogObjectForNRUUID();
    v276 = _NRLogIsLevelEnabled();

    if (v276)
    {
      v277 = _NRCopyLogObjectForNRUUID();
      v278 = [v4 copyDescription];
      _NRLogWithArgs(v277, 1, "%s%.30s:%-4d %@: not memmoving the linkReadBuffer by preludeLenFull=%u filledIn=%u handled=%u", "", "[NRLinkBluetooth handleReadData:]", 7467, v278, v287, *(v4 + *(v9 + 1704)), *(v4 + v196[427]));
    }
  }

  *(v4 + *(v9 + 1704)) = 0;
  v198 = v287;
  v35 = v288;
LABEL_303:
  *(v4 + v196[427]) = 0;
  if (*(v4 + 16) == 1)
  {
    [v4 changeStateTo:3];
LABEL_306:
    if (*(v4 + 293) == 1)
    {
      if (*(v4 + 16) == 4)
      {
        sub_100090BF4(v4, v198, &off_100209B90);
      }
    }

    else
    {
      v207 = _NRCopyLogObjectForNRUUID();
      v208 = _NRLogIsLevelEnabled();

      if (v208)
      {
        v209 = _NRCopyLogObjectForNRUUID();
        v210 = [v4 copyDescription];
        _NRLogWithArgs(v209, 1, "%s%.30s:%-4d %@: Starting LtN since received prelude, about to async", "", "[NRLinkBluetooth handleReadData:]", 7488, v210);
      }

      v211 = *(v4 + 8);
      v291[0] = _NSConcreteStackBlock;
      v291[1] = 3221225472;
      v291[2] = sub_100096464;
      v291[3] = &unk_1001FD3C8;
      v291[4] = v4;
      dispatch_async(v211, v291);
    }
  }

  else
  {
    [v4 changeStateTo:4];
    if (sub_10009542C(v4))
    {
      goto LABEL_306;
    }

    [v4 cancelWithReason:@"failed to setup nexus"];
  }

LABEL_339:
}

void sub_100094EDC(uint64_t a1, void *a2)
{
  v3 = a2;
  if (a1)
  {
    v21 = v3;
    if (v3)
    {
      v4 = *(a1 + 1799);
      IKEv2PacketString = createIKEv2PacketString();
      [a1 reportEvent:3007 detailsFormat:@"Receiving IKEv2 packet #%llu %@ len %llu", v4, IKEv2PacketString, objc_msgSend(v21, "length")];

      ++*(a1 + 1799);
      if (gNRPacketLoggingEnabled == 1)
      {
        v14 = _NRCopyLogObjectForNRUUID();
        IsLevelEnabled = _NRLogIsLevelEnabled();

        if (IsLevelEnabled)
        {
          v16 = _NRCopyLogObjectForNRUUID();
          v17 = [a1 copyDescription];
          v18 = *(a1 + 1799);
          v19 = [v21 length];
          v20 = sub_10007D69C(v21);
          _NRLogWithArgs(v16, 1, "%s%.30s:%-4d %@: IKE #%llu RECEIVING dataLen=%u data=[\n%@]", "", "[NRLinkBluetooth handleIncomingIKEData:]", 8071, v17, v18, v19, v20);
        }
      }

      v6 = *(a1 + 1343);
      if (v6)
      {
        [v6 receivePacketData:v21];
      }

      else
      {
        v7 = _NRCopyLogObjectForNRUUID();
        v8 = _NRLogIsLevelEnabled();

        if (v8)
        {
          v9 = _NRCopyLogObjectForNRUUID();
          v10 = [a1 copyDescription];
          _NRLogWithArgs(v9, 16, "%s%.30s:%-4d %@: not ready to handle IKE yet", "", "[NRLinkBluetooth handleIncomingIKEData:]", 8074, v10);
        }

        [*(a1 + 1287) addObject:v21];
      }

      goto LABEL_9;
    }

    v11 = sub_10007CF34();
    v12 = _NRLogIsLevelEnabled();

    v3 = 0;
    if (v12)
    {
      v13 = sub_10007CF34();
      _NRLogWithArgs(v13, 17, "%s called with null data", "[NRLinkBluetooth handleIncomingIKEData:]");

LABEL_9:
      v3 = v21;
    }
  }
}

double sub_100095124(uint64_t a1, uint64_t a2, int a3, int a4, int a5)
{
  *&result = 136446978;
  *a1 = 136446978;
  *(a1 + 4) = a2;
  *(a1 + 12) = 1024;
  *(a1 + 14) = a3;
  *(a1 + 18) = 1024;
  *(a1 + 20) = a4;
  *(a1 + 24) = 1024;
  *(a1 + 26) = a5;
  return result;
}

void sub_100095154(uint64_t a1)
{
  v2 = _NRCopyLogObjectForNRUUID();
  IsLevelEnabled = _NRLogIsLevelEnabled();

  if (IsLevelEnabled)
  {
    v4 = _NRCopyLogObjectForNRUUID();
    v5 = [*(a1 + 32) copyDescription];
    _NRLogWithArgs(v4, 1, "%s%.30s:%-4d %@: Starting LtN-U since received prelude, in async block", "", "[NRLinkBluetooth handleReadData:]_block_invoke", 7258, v5);
  }

  v6 = *(a1 + 32);

  sub_1000A2C50(v6);
}

const __CFString *sub_100095210(unsigned int a1)
{
  if (a1 > 11)
  {
    if (a1 == 12)
    {
      return @"PairWithOOBKeyOrIDSKeys";
    }

    if (a1 != 13)
    {
      if (a1 == 20)
      {
        return @"HasCompletedPairing";
      }

      return [[NSString alloc] initWithFormat:@"Unknown(%lld)", a1];
    }

    return @"ModernPairingKeyConfirmation";
  }

  else
  {
    if (!a1)
    {
      return @"Invalid";
    }

    if (a1 != 10)
    {
      if (a1 == 11)
      {
        return @"PairWithIDSKeys";
      }

      return [[NSString alloc] initWithFormat:@"Unknown(%lld)", a1];
    }

    return @"PairWithOOBKey";
  }
}

uint64_t sub_1000952E8(void *a1)
{
  if (!a1)
  {
    return 0;
  }

  LODWORD(v2) = sub_1000B794C();
  v3 = [a1 nrUUID];
  v4 = sub_100163A30(NRDLocalDevice, v3);

  if (v4)
  {
    v5 = v4[18];
  }

  else
  {
    v5 = 0;
  }

  v6 = v5;
  v7 = [v6 usesTLS];

  if (v7)
  {
    v2 = v2 | 2;
  }

  else
  {
    v2 = v2;
  }

  return v2;
}

void sub_100095388(void *a1)
{
  objc_opt_self();
  if (qword_1002290C0 != -1)
  {
    dispatch_once(&qword_1002290C0, &stru_1001FB2B0);
  }

  v3 = qword_1002290B8;
  v2 = [a1 nrUUID];
  sub_1000CA5A8(v3, 1, v2);
}

uint64_t sub_10009542C(char *a1)
{
  v2 = _NRCopyLogObjectForNRUUID();
  IsLevelEnabled = _NRLogIsLevelEnabled();

  if (IsLevelEnabled)
  {
    v4 = _NRCopyLogObjectForNRUUID();
    v5 = [a1 copyDescription];
    _NRLogWithArgs(v4, 1, "%s%.30s:%-4d %@: setting up nexus", "", "[NRLinkBluetooth setupNexus]", 6574, v5);
  }

  v6 = *(a1 + 415);
  v7 = [*(a1 + 399) peer];
  v8 = [v7 identifier];
  v9 = [v8 UUIDString];
  v10 = [NSString stringWithFormat:@"Terminus Bluetooth link to %@ <%@>", v6, v9];

  v11 = _NRCopyLogObjectForNRUUID();
  LODWORD(v8) = _NRLogIsLevelEnabled();

  if (v8)
  {
    v12 = _NRCopyLogObjectForNRUUID();
    v13 = [a1 copyDescription];
    _NRLogWithArgs(v12, 0, "%s%.30s:%-4d %@: setup IPsec over BT with ring sizes if: %u kpipe tx: %u kpipe rx: %u", "", "[NRLinkBluetooth setupNexus]", 6580, v13, qword_100228A78, HIDWORD(qword_100228A78), unk_100228A80);
  }

  if ([a1 hasCompanionDatapath])
  {
    if (a1[293] == 1)
    {
      v14 = a1[18];
      v15 = [NEIPsecNexus alloc];
      v16 = qword_100228A78;
      v17 = HIDWORD(qword_100228A78);
      v18 = unk_100228A80;
      if (v14 == 121)
      {
        v19 = [v15 initWithName:v10 delegate:a1 enableWithChannelCount:1 netifRingSize:qword_100228A78 kernelPipeTxRingSize:HIDWORD(qword_100228A78) kernelPipeRxRingSize:unk_100228A80];
        v20 = *(a1 + 1479);
        *(a1 + 1479) = v19;
      }

      else
      {
        v30 = v15;
        objc_opt_self();
        if (qword_1002290C0 != -1)
        {
          dispatch_once(&qword_1002290C0, &stru_1001FB2B0);
        }

        v31 = qword_1002290B8;
        v20 = v31;
        if (v31)
        {
          v32 = v31[33];
        }

        else
        {
          v32 = 0;
        }

        v33 = [v30 initWithName:v10 delegate:a1 enableWithChannelCount:4 netifRingSize:v16 kernelPipeTxRingSize:v17 kernelPipeRxRingSize:v18 execUUID:v32];
        v34 = *(a1 + 1479);
        *(a1 + 1479) = v33;
      }

      v29 = [*(a1 + 1479) nexusInstances];
      sub_100090978(a1, v29);
    }

    else
    {
      v28 = sub_1001482F4(v10, a1, 4, qword_100228A78, HIDWORD(qword_100228A78), unk_100228A80);
      v29 = *(a1 + 1479);
      *(a1 + 1479) = v28;
    }

    [a1 setVirtualInterface:{objc_msgSend(*(a1 + 1479), "virtualInterface")}];
  }

  else
  {
    if (!sub_100090538(a1))
    {
      goto LABEL_104;
    }

    if (a1[293] == 1)
    {
      if (a1[18] == 121)
      {
        v21 = 1;
      }

      else
      {
        v21 = 4;
      }

      v22 = sub_10013F0B0([a1 virtualInterface], v21);
      v23 = [v22 count];
      v24 = _NRCopyLogObjectForNRUUID();
      if (!v23)
      {
        v62 = _NRLogIsLevelEnabled();

        if (v62)
        {
          v63 = _NRCopyLogObjectForNRUUID();
          v64 = [a1 copyDescription];
          _NRLogWithArgs(v63, 16, "%s%.30s:%-4d %@: Failed to enable channel for UTUN", "", "[NRLinkBluetooth setupNexus]", 6621, v64);
        }

        goto LABEL_50;
      }

      v25 = _NRLogIsLevelEnabled();

      if (v25)
      {
        v26 = _NRCopyLogObjectForNRUUID();
        v27 = [a1 copyDescription];
        _NRLogWithArgs(v26, 0, "%s%.30s:%-4d %@: Created UTUN nexus instances: %@", "", "[NRLinkBluetooth setupNexus]", 6618, v27, v22);
      }

      sub_100090978(a1, v22);
    }
  }

  [a1 virtualInterface];
  v35 = NEVirtualInterfaceCopyName();
  [a1 setLocalInterfaceName:v35];

  if (([a1 setInterfaceSubfamily] & 1) == 0 && objc_msgSend(a1, "hasCompanionDatapath"))
  {
    goto LABEL_45;
  }

  if ((sub_10009C0A8(a1) & 1) == 0)
  {
    v56 = _NRCopyLogObjectForNRUUID();
    v57 = _NRLogIsLevelEnabled();

    if (!v57)
    {
      goto LABEL_104;
    }

    v22 = _NRCopyLogObjectForNRUUID();
    v55 = [a1 copyDescription];
    _NRLogWithArgs(v22, 16, "%s%.30s:%-4d %@: failed to setup QoS marking", "", "[NRLinkBluetooth setupNexus]", 6643, v55);
    goto LABEL_49;
  }

  if ([a1 setNoACKPrioritization])
  {
    if ([a1 virtualInterface] || *(a1 + 1479))
    {
      if (a1[293] == 1)
      {
        v36 = _NRCopyLogObjectForNRUUID();
        v37 = _NRLogIsLevelEnabled();

        if (!v37)
        {
          goto LABEL_36;
        }

        v38 = _NRCopyLogObjectForNRUUID();
        v39 = [a1 copyDescription];
        _NRLogWithArgs(v38, 0, "%s%.30s:%-4d %@: Deferring nexus setup to the packet parser", "", "[NRLinkBluetooth setupNexusChannel]", 1923, v39);
        goto LABEL_35;
      }

      v59 = a1[18];
      if (v59 == 121)
      {
        v60 = 1;
      }

      else
      {
        v60 = 4;
      }

      if ([a1 hasCompanionDatapath])
      {
        v61 = [*(a1 + 1479) nexusInstances];
      }

      else
      {
        v61 = sub_10013F0B0([a1 virtualInterface], v60);
      }

      v38 = v61;
      v65 = _NRCopyLogObjectForNRUUID();
      if (v38)
      {
        v66 = _NRLogIsLevelEnabled();

        if (v66)
        {
          v67 = _NRCopyLogObjectForNRUUID();
          v68 = [a1 copyDescription];
          _NRLogWithArgs(v67, 1, "%s%.30s:%-4d %@: Created nexus instances: %@", "", "[NRLinkBluetooth setupNexusChannel]", 1940, v68, v38);
        }

        if ([v38 count] == v60)
        {
          if (v59 == 121)
          {
            v69 = [v38 firstObject];
            v70 = sub_10009F6F4(a1, v69);

            if (v70)
            {
LABEL_36:
              if (a1[289] != 1)
              {
                if (a1[250] - 10 > 2)
                {
                  sub_1000850B4(a1, 4);
                  objc_initWeak(&location, a1);
                  objc_opt_self();
                  if (qword_1002294C8 != -1)
                  {
                    goto LABEL_99;
                  }

                  goto LABEL_78;
                }

                sub_10009E6A4(a1);
                goto LABEL_79;
              }

              if (*(a1 + 1303))
              {
LABEL_79:
                while (1)
                {
                  v78 = sub_100163A30(NRDLocalDevice, *(a1 + 4));
                  if (v78)
                  {
                    break;
                  }

                  v91 = sub_10007CF34();
                  v92 = _NRLogIsLevelEnabled();

                  if (v92)
                  {
                    v93 = sub_10007CF34();
                    _NRLogWithArgs(v93, 16, "%s%.30s:%-4d ABORTING: Assertion Failed: (localDevice) != ((void*)0)", "", "[NRLinkBluetooth setupNexus]", 6674);
                  }

                  v10 = _os_log_pack_size();
                  a1 = &handler - ((__chkstk_darwin() + 15) & 0xFFFFFFFFFFFFFFF0);
                  v94 = __error();
                  v95 = _os_log_pack_fill(a1, v10, *v94, &_mh_execute_header, "%{public}s Assertion Failed: (localDevice) != ((void*)0)");
                  *v95 = 136446210;
                  *(v95 + 4) = "[NRLinkBluetooth setupNexus]";
                  sub_10007CF34();
                  _NRLogAbortWithPack();
                  __break(1u);
LABEL_99:
                  dispatch_once(&qword_1002294C8, &stru_1001FD250);
LABEL_78:
                  v77 = qword_1002294C0;
                  handler = _NSConcreteStackBlock;
                  v103 = 3221225472;
                  v104 = sub_10009E9F0;
                  v105 = &unk_1001FC730;
                  objc_copyWeak(v106, &location);
                  sub_1001816DC(v77, &handler);

                  objc_destroyWeak(v106);
                  objc_destroyWeak(&location);
                }

                v22 = v78;
                if ([a1 hasCompanionDatapath])
                {
                  v79 = sub_100173200(v22);
                  [*(a1 + 1479) setLocalAddresses:v79];
                  v80 = _NRCopyLogObjectForNRUUID();
                  v81 = _NRLogIsLevelEnabled();

                  if (v81)
                  {
                    v82 = _NRCopyLogObjectForNRUUID();
                    v83 = [a1 copyDescription];
                    v84 = [*(a1 + 1479) interfaceName];
                    _NRLogWithArgs(v82, 1, "%s%.30s:%-4d %@: created interface %@ with addresses %@ for nexus %@", "", "[NRLinkBluetooth setupNexus]", 6680, v83, v84, v79, v10);
                  }
                }

                sub_100089A48(a1);
                sub_10009C854(a1, 0);
                if (!*(a1 + 1871))
                {
                  v85 = [a1 queue];
                  v86 = dispatch_source_create(&_dispatch_source_type_timer, 0, 0, v85);
                  v87 = *(a1 + 1871);
                  *(a1 + 1871) = v86;

                  dispatch_source_set_timer(*(a1 + 1871), 0, 0x12A05F200uLL, 0x2FAF080uLL);
                  objc_initWeak(&location, a1);
                  v88 = *(a1 + 1871);
                  handler = _NSConcreteStackBlock;
                  v103 = 3221225472;
                  v104 = sub_1000043C0;
                  v105 = &unk_1001FD0B0;
                  objc_copyWeak(v106, &location);
                  v106[1] = 5;
                  dispatch_source_set_event_handler(v88, &handler);
                  dispatch_resume(*(a1 + 1871));
                  objc_destroyWeak(v106);
                  objc_destroyWeak(&location);
                }

                v58 = 1;
                goto LABEL_51;
              }

              v40 = sub_100146840(1);
              [v40 setMaximumPacketSize:2000];
              [v40 setHeaderOverhead:5];

              v41 = sub_100163A30(NRDLocalDevice, *(a1 + 4));
              v42 = v41;
              if (v41 && (*(v41 + 48) & 0x20) != 0)
              {
                v43 = [v40 extraSupportedSignatureHashes];
                v44 = [[NEIKEv2SignatureHashProtocol alloc] initWithHashType:2];
                v45 = [v43 setByAddingObject:v44];
                [v40 setExtraSupportedSignatureHashes:v45];
              }

              v46 = [[NEIKEv2Listener alloc] initWithListenerIKEConfig:v40 kernelSASessionName:@"terminusIKE-Bluetooth-Listener" packetDelegate:a1 listenerQueue:*(a1 + 1) delegate:a1 delegateQueue:*(a1 + 1)];
              v47 = *(a1 + 1303);
              *(a1 + 1303) = v46;

              v48 = *(a1 + 1303);
              v49 = _NRCopyLogObjectForNRUUID();
              if (v48)
              {
                v50 = _NRLogIsLevelEnabled();

                if (v50)
                {
                  v51 = _NRCopyLogObjectForNRUUID();
                  v52 = [a1 copyDescription];
                  _NRLogWithArgs(v51, 0, "%s%.30s:%-4d %@: Created IKE listener", "", "[NRLinkBluetooth setupIPsec]", 9924, v52);
                }

                goto LABEL_79;
              }

              v96 = _NRLogIsLevelEnabled();

              if (v96)
              {
                v97 = _NRCopyLogObjectForNRUUID();
                v98 = [a1 copyDescription];
                _NRLogWithArgs(v97, 17, "%@: Failed to create IKE listener", v98);
              }

              v99 = _NRCopyLogObjectForNRUUID();
              v100 = _NRLogIsLevelEnabled();

              if (v100)
              {
                v22 = _NRCopyLogObjectForNRUUID();
                v55 = [a1 copyDescription];
                _NRLogWithArgs(v22, 16, "%s%.30s:%-4d %@: failed to setup IPsec", "", "[NRLinkBluetooth setupNexus]", 6669, v55);
                goto LABEL_49;
              }

LABEL_104:
              v58 = 0;
              goto LABEL_105;
            }

            goto LABEL_89;
          }

          v39 = [v38 objectAtIndexedSubscript:0];
          if (sub_10009FED4(a1, v39))
          {

            v39 = [v38 objectAtIndexedSubscript:1];
            if (sub_1000A06B4(a1, v39))
            {

              v39 = [v38 objectAtIndexedSubscript:2];
              if (sub_10009F6F4(a1, v39))
              {

                v39 = [v38 objectAtIndexedSubscript:3];
                if (sub_1000A0E94(a1, v39))
                {
LABEL_35:

                  goto LABEL_36;
                }
              }
            }
          }

          goto LABEL_76;
        }

        v75 = _NRCopyLogObjectForNRUUID();
        v76 = _NRLogIsLevelEnabled();

        if (!v76)
        {
LABEL_88:

LABEL_89:
          v89 = _NRCopyLogObjectForNRUUID();
          v90 = _NRLogIsLevelEnabled();

          if (!v90)
          {
            goto LABEL_104;
          }

          v22 = _NRCopyLogObjectForNRUUID();
          v55 = [a1 copyDescription];
          _NRLogWithArgs(v22, 16, "%s%.30s:%-4d %@: failed to setup nexus channel", "", "[NRLinkBluetooth setupNexus]", 6664, v55);
          goto LABEL_49;
        }

        v39 = _NRCopyLogObjectForNRUUID();
        v72 = [a1 copyDescription];
        _NRLogWithArgs(v39, 17, "%@: Expected to receive only %u nexus instances: %@", v72, v60, v38);
      }

      else
      {
        v71 = _NRLogIsLevelEnabled();

        if (!v71)
        {
          v38 = 0;
          goto LABEL_88;
        }

        v39 = _NRCopyLogObjectForNRUUID();
        v72 = [a1 copyDescription];
        _NRLogWithArgs(v39, 17, "%@: Failed to get nexus instances", v72);
        v38 = 0;
      }

LABEL_76:
      goto LABEL_88;
    }

    v73 = _NRCopyLogObjectForNRUUID();
    v74 = _NRLogIsLevelEnabled();

    if (!v74)
    {
      goto LABEL_104;
    }

    v22 = _NRCopyLogObjectForNRUUID();
    v55 = [a1 copyDescription];
    _NRLogWithArgs(v22, 16, "%s%.30s:%-4d %@: failed to create packet nexus", "", "[NRLinkBluetooth setupNexus]", 6659, v55);
  }

  else
  {
LABEL_45:
    v53 = _NRCopyLogObjectForNRUUID();
    v54 = _NRLogIsLevelEnabled();

    if (!v54)
    {
      goto LABEL_104;
    }

    v22 = _NRCopyLogObjectForNRUUID();
    v55 = [a1 copyDescription];
    _NRLogWithArgs(v22, 17, "%@: failed to setup interface sub family", v55);
  }

LABEL_49:

LABEL_50:
  v58 = 0;
LABEL_51:

LABEL_105:
  return v58;
}

void sub_100096438(_Unwind_Exception *a1)
{
  objc_destroyWeak((v1 + 32));
  objc_destroyWeak((v2 - 96));
  _Unwind_Resume(a1);
}

void sub_100096464(uint64_t a1)
{
  v2 = _NRCopyLogObjectForNRUUID();
  IsLevelEnabled = _NRLogIsLevelEnabled();

  if (IsLevelEnabled)
  {
    v4 = _NRCopyLogObjectForNRUUID();
    v5 = [*(a1 + 32) copyDescription];
    _NRLogWithArgs(v4, 1, "%s%.30s:%-4d %@: Starting LtN since received prelude, in async block", "", "[NRLinkBluetooth handleReadData:]_block_invoke", 7491, v5);
  }

  v6 = *(a1 + 32);

  sub_100097378(v6);
}

void *sub_100096520(void *result, unsigned int a2)
{
  v2 = *(result + 375);
  if (a2 <= 0x800)
  {
    v3 = 2048;
  }

  else
  {
    v3 = a2;
  }

  v4 = *(result + 371);
  if (v2 == v4)
  {
    if (gNRPacketLoggingEnabled == 1)
    {
      v7 = result;
      v8 = _NRCopyLogObjectForNRUUID();
      IsLevelEnabled = _NRLogIsLevelEnabled();

      result = v7;
      if (IsLevelEnabled)
      {
        v10 = _NRCopyLogObjectForNRUUID();
        v11 = [v7 copyDescription];
        _NRLogWithArgs(v10, 1, "%s%.30s:%-4d %@: resetting the linkReadBuffer", "", "[NRLinkBluetooth cleanupLinkReadBufferWithExtra:]", 7147, v11);

        result = v7;
      }
    }

    *(result + 375) = 0;
    v5 = &OBJC_IVAR___NRLinkBluetooth__filledInLinkReadBufferBytes;
LABEL_7:
    *(result + *v5) = 0;
    return result;
  }

  if (v4 > v2 && v2 + v3 >= *(result + 315))
  {
    if (gNRPacketLoggingEnabled == 1)
    {
      v16 = result;
      v12 = _NRCopyLogObjectForNRUUID();
      v13 = _NRLogIsLevelEnabled();

      result = v16;
      if (v13)
      {
        v14 = _NRCopyLogObjectForNRUUID();
        v15 = [v16 copyDescription];
        _NRLogWithArgs(v14, 1, "%s%.30s:%-4d %@: memmoving the linkReadBuffer by %u", "", "[NRLinkBluetooth cleanupLinkReadBufferWithExtra:]", 7152, v15, *(v16 + 375));

        result = v16;
      }
    }

    v5 = &OBJC_IVAR___NRLinkBluetooth__handledLinkReadBufferBytes;
    v6 = result;
    memmove(*(result + 1455), (*(result + 1455) + *(result + 375)), (*(result + 371) - *(result + 375)));
    result = v6;
    *(v6 + 371) -= *(v6 + 375);
    goto LABEL_7;
  }

  return result;
}

void sub_10009674C(uint64_t a1, void *a2)
{
  v2 = a2;
  if (os_channel_get_next_slot())
  {
    v3 = [v2 length];
    v4 = v5;
    if (v5 > v3)
    {
      v4 = [v2 length];
    }

    memcpy(0, [v2 bytes], v4);
    os_channel_set_slot_properties();
    os_channel_advance_slot();
    os_channel_sync();
  }
}

void sub_100096834(char *a1, uint64_t a2, int a3, uint64_t a4, uint64_t a5)
{
  v5 = a5;
  v30[1] = a2;
  v31 = a3;
  v32 = 0;
  v7 = nrMaxPacketLengthForTLV();
  if (!v7)
  {
    v18 = sub_10007CF34();
    IsLevelEnabled = _NRLogIsLevelEnabled();

    if (IsLevelEnabled)
    {
      v20 = sub_10007CF34();
      _NRLogWithArgs(v20, 16, "%s%.30s:%-4d ABORTING: strict_malloc called with size 0", "", "[NRLinkBluetooth handleIncoming6LoWPANData:tlvBufferLength:length:tlvType:]", 7633);
    }

    v21 = _os_log_pack_size();
    v22 = __error();
    v23 = _os_log_pack_fill(v30 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0), v21, *v22, &_mh_execute_header, "%{public}s strict_malloc called with size 0");
    *v23 = 136446210;
    *(v23 + 4) = "[NRLinkBluetooth handleIncoming6LoWPANData:tlvBufferLength:length:tlvType:]";
    goto LABEL_27;
  }

  v8 = malloc_type_malloc(v7, 0x4497EEA5uLL);
  if (!v8)
  {
    while (1)
    {
      v24 = sub_10007CF34();
      v25 = _NRLogIsLevelEnabled();

      if (v25)
      {
        v26 = sub_10007CF34();
        _NRLogWithArgs(v26, 16, "%s%.30s:%-4d ABORTING: strict allocator failed", "", "[NRLinkBluetooth handleIncoming6LoWPANData:tlvBufferLength:length:tlvType:]", 7633);
      }

      v27 = _os_log_pack_size();
      v28 = __error();
      v29 = _os_log_pack_fill(v30 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0), v27, *v28, &_mh_execute_header, "%{public}s strict allocator failed");
      *v29 = 136446210;
      *(v29 + 4) = "[NRLinkBluetooth handleIncoming6LoWPANData:tlvBufferLength:length:tlvType:]";
LABEL_27:
      sub_10007CF34();
      _NRLogAbortWithPack();
    }
  }

  v9 = v8;
  v10 = nrTLVToPacket();
  if (v10)
  {
    v11 = [[NSData alloc] initWithBytes:v9 length:v10];
    if (v5 <= 101)
    {
      switch(v5)
      {
        case 3:
          v12 = 1743;
          goto LABEL_21;
        case 100:
          v12 = 1751;
          goto LABEL_21;
        case 101:
          v12 = 1759;
LABEL_21:
          ++*&a1[v12];
LABEL_22:
          sub_10009674C(a1, v11);

          goto LABEL_23;
      }
    }

    else
    {
      if (v5 <= 103)
      {
        if (v5 == 102)
        {
          v12 = 1783;
        }

        else
        {
          v12 = 1791;
        }

        goto LABEL_21;
      }

      if (v5 == 104)
      {
        v12 = 1767;
        goto LABEL_21;
      }

      if (v5 == 105)
      {
        v12 = 1775;
        goto LABEL_21;
      }
    }

    v13 = _NRCopyLogObjectForNRUUID();
    v14 = _NRLogIsLevelEnabled();

    if (v14)
    {
      v15 = _NRCopyLogObjectForNRUUID();
      v16 = [a1 copyDescription];
      StringFromNRTLVType = createStringFromNRTLVType();
      _NRLogWithArgs(v15, 17, "%@: Invalid type %@", v16, StringFromNRTLVType);
    }

    goto LABEL_22;
  }

LABEL_23:
  free(v9);
}

void sub_100096BD0(void *a1, unsigned __int8 *a2, uint64_t a3)
{
  v3 = a3;
  v5 = a1;
  if (a2 && v3)
  {
    v6 = *a2;
    v17 = v5;
    if (v6 == 2)
    {
      v7 = mach_absolute_time();
      if (v3 < 9)
      {
        v8 = 0;
      }

      else
      {
        v8 = *(a2 + 1);
      }

      v13 = _NRCopyLogObjectForNRUUID();
      IsLevelEnabled = _NRLogIsLevelEnabled();

      if (IsLevelEnabled)
      {
        v15 = _NRCopyLogObjectForNRUUID();
        v16 = [v17 copyDescription];
        _NRLogWithArgs(v15, 1, "%s%.30s:%-4d %@: Received pong seq %llu", "", "NRLBTHandleIncomingControlMessage", 3026, v16, v8);
      }

      sub_100097198(v17, bswap64(v8), v7);
    }

    else if (v6 == 1)
    {
      *a2 = 2;
      sub_100096D88(v5, a2, v3, 0);
    }

    else
    {
      v9 = _NRCopyLogObjectForNRUUID();
      v10 = _NRLogIsLevelEnabled();

      v5 = v17;
      if (!v10)
      {
        goto LABEL_15;
      }

      v11 = _NRCopyLogObjectForNRUUID();
      v12 = [v17 copyDescription];
      _NRLogWithArgs(v11, 16, "%s%.30s:%-4d %@: Received unknown message type %u", "", "NRLBTHandleIncomingControlMessage", 3032, v12, v6);
    }

    v5 = v17;
  }

LABEL_15:
}

uint64_t sub_100096D88(void *a1, const void *a2, unsigned int a3, int a4)
{
  v7 = a1;
  v8 = v7;
  if (!a2)
  {
    v23 = sub_10007CF34();
    IsLevelEnabled = _NRLogIsLevelEnabled();

    if (IsLevelEnabled)
    {
      v13 = sub_10007CF34();
      _NRLogWithArgs(v13, 17, "%s called with null messageData", "NRLBTSendControlMessage");
      goto LABEL_17;
    }

    goto LABEL_24;
  }

  if (v7[16] == 255)
  {
    v15 = _NRCopyLogObjectForNRUUID();
    v16 = _NRLogIsLevelEnabled();

    if (v16)
    {
      v13 = _NRCopyLogObjectForNRUUID();
      v14 = [v8 copyDescription];
      _NRLogWithArgs(v13, 16, "%s%.30s:%-4d %@: NRLBTSendControlMessage but cancelled", "", "NRLBTSendControlMessage", 2945, v14);
      goto LABEL_16;
    }

LABEL_24:
    v21 = 0;
    goto LABEL_25;
  }

  if (!*(v7 + 1063))
  {
    v17 = _NRCopyLogObjectForNRUUID();
    v18 = _NRLogIsLevelEnabled();

    if (v18)
    {
      v13 = _NRCopyLogObjectForNRUUID();
      v14 = [v8 copyDescription];
      _NRLogWithArgs(v13, 16, "%s%.30s:%-4d %@: Tried to NRLBTSendControlMessage but _linkOutputRing is NULL", "", "NRLBTSendControlMessage", 2949, v14);
      goto LABEL_16;
    }

    goto LABEL_24;
  }

  v9 = *(v7 + 339);
  if (v9 <= *(v7 + 343))
  {
    v26 = 0u;
    os_channel_get_next_slot();
    v9 = *(v8 + 339);
  }

  v10 = *(v8 + 331) - v9;
  if (v10 <= 4)
  {
    v11 = _NRCopyLogObjectForNRUUID();
    v12 = _NRLogIsLevelEnabled();

    if (v12)
    {
      v13 = _NRCopyLogObjectForNRUUID();
      v14 = [v8 copyDescription];
      _NRLogWithArgs(v13, 16, "%s%.30s:%-4d %@: NRLBTSendControlMessage but out of room1", "", "NRLBTSendControlMessage", 2984, v14, v26);
LABEL_16:

LABEL_17:
      v21 = 0;
      goto LABEL_25;
    }

    goto LABEL_24;
  }

  if (v10 - 5 < a3)
  {
    v19 = _NRCopyLogObjectForNRUUID();
    v20 = _NRLogIsLevelEnabled();

    if (v20)
    {
      v13 = _NRCopyLogObjectForNRUUID();
      v14 = [v8 copyDescription];
      _NRLogWithArgs(v13, 16, "%s%.30s:%-4d %@: NRLBTSendControlMessage but out of room2", "", "NRLBTSendControlMessage", 2988, v14, v26);
      goto LABEL_16;
    }

    goto LABEL_24;
  }

  v22 = *(v8 + 519) + v9;
  *v22 = 5;
  *(v22 + 1) = __rev16(a3);
  memcpy((v22 + 3), a2, a3);
  *(v22 + a3 + 3) = ~os_inet_checksum();
  *(v8 + 339) += a3;
  if (a4)
  {
    v21 = mach_absolute_time();
  }

  else
  {
    v21 = 0;
  }

  sub_10007D9C4(v8, *(v8 + 439));
LABEL_25:

  return v21;
}

void sub_100097198(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a1)
  {
    if (qword_100229078 != -1)
    {
      dispatch_once(&qword_100229078, &stru_1001FAF70);
    }

    v18 = 0u;
    v19 = 0u;
    v16 = 0u;
    v17 = 0u;
    v6 = [*(a1 + 1295) copy];
    v7 = [v6 countByEnumeratingWithState:&v16 objects:v20 count:16];
    if (v7)
    {
      v8 = v7;
      v9 = *v17;
      do
      {
        for (i = 0; i != v8; i = i + 1)
        {
          if (*v17 != v9)
          {
            objc_enumerationMutation(v6);
          }

          v13 = *(*(&v16 + 1) + 8 * i);
          if (v13)
          {
            if (v13[2] == a2)
            {
              v14 = v13[1];
              if (v14)
              {
                if (a3)
                {
                  v11 = (a3 - v13[3]) * dword_100229070 / *algn_100229074;
                }

                else
                {
                  v11 = 0;
                }

                (*(v14 + 16))(v14, v11);
                objc_setProperty_nonatomic_copy(v13, v12, 0, 8);
              }

LABEL_10:
              [*(a1 + 1295) removeObject:v13];
              continue;
            }
          }

          else if (!a2)
          {
            goto LABEL_10;
          }
        }

        v8 = [v6 countByEnumeratingWithState:&v16 objects:v20 count:16];
      }

      while (v8);
    }

    if (![*(a1 + 1295) count])
    {
      v15 = *(a1 + 1295);
      *(a1 + 1295) = 0;
    }
  }
}

void sub_100097378(void *a1)
{
  v1 = a1;
  v2 = v1;
  v3 = v1[16];
  if (v3 == 255)
  {
    v4 = _NRCopyLogObjectForNRUUID();
    IsLevelEnabled = _NRLogIsLevelEnabled();

    if (IsLevelEnabled)
    {
      StringFromNRTLVType = _NRCopyLogObjectForNRUUID();
      IOVecStringWithContents = [v2 copyDescription];
      _NRLogWithArgs(StringFromNRTLVType, 16, "%s%.30s:%-4d %@: LinkToNexusLoop but cancelled", "", "NRLinkLinkToNexusLoop", 5610, IOVecStringWithContents);
      goto LABEL_10;
    }

    goto LABEL_12;
  }

  if (!*(v1 + 1055))
  {
    v10 = _NRCopyLogObjectForNRUUID();
    v11 = _NRLogIsLevelEnabled();

    if (v11)
    {
      StringFromNRTLVType = _NRCopyLogObjectForNRUUID();
      IOVecStringWithContents = [v2 copyDescription];
      _NRLogWithArgs(StringFromNRTLVType, 17, "%@: Tried to linkToNexusLoop but _linkInputRing is NULL", IOVecStringWithContents);
      goto LABEL_10;
    }

    goto LABEL_12;
  }

  if ((v3 - 1) < 2)
  {
    v8 = _NRCopyLogObjectForNRUUID();
    v9 = _NRLogIsLevelEnabled();

    if (v9)
    {
      StringFromNRTLVType = _NRCopyLogObjectForNRUUID();
      IOVecStringWithContents = [v2 copyDescription];
      _NRLogWithArgs(StringFromNRTLVType, 17, "%@: Tried to linkToNexusLoop but bad state", IOVecStringWithContents);
      goto LABEL_10;
    }

    goto LABEL_12;
  }

  v607 = 0;
  v608 = 0;
  v605[2] = &v639;
  v606 = &v645 + 8;
  v610 = &v644 + 8;
  v12 = &OBJC_IVAR___BTPResolver__sdRefResolve;
  v13 = "NRLinkLinkToNexusLoop";
  v14 = &OBJC_IVAR___BTPResolver__sdRefResolve;
  v15 = &OBJC_IVAR___BTPResolver__sdRefResolve;
  v621 = v1;
LABEL_17:
  v16 = 0;
  LODWORD(v626) = 0;
  v622 = 0;
  v614 = 0uLL;
  v17 = 0;
  v635 = 0u;
  v636 = 0u;
  v633 = 0u;
  v634 = 0u;
  v631 = 0;
  v632 = 0;
  LODWORD(v620) = v2[v12[621]];
  while (1)
  {
    while (1)
    {
LABEL_18:
      v624 = 2015;
      *(v2 + 2015) = 4;
      if (v16 && v16 >= v626)
      {
        if (v16 != v626)
        {
          goto LABEL_494;
        }

        v18 = v624;
        *&v2[v624] = 12;
      }

      else
      {
        v18 = v624;
        if (v16)
        {
          *&v2[v624] = 36;
          if (!v17)
          {
            goto LABEL_379;
          }

          v619 = v17;
          goto LABEL_30;
        }
      }

      next_slot = os_channel_get_next_slot();
      *&v2[v18] |= 0x10uLL;
      if (!next_slot)
      {
LABEL_379:
        if (v2[261] == 1 && *(v2 + 1071))
        {
          v2[261] = 0;
          ++*(v2 + 1087);
          if (gNRPacketLoggingEnabled == 1)
          {
            v316 = _NRCopyLogObjectForNRUUID();
            v317 = _NRLogIsLevelEnabled();

            if (v317)
            {
              v318 = _NRCopyLogObjectForNRUUID();
              v319 = [v2 copyDescription];
              _NRLogWithArgs(v318, 1, "%s%.30s:%-4d %@: source-resume: LinkInput", "", "NRLinkResumeLinkInputSource", 853, v319);
            }
          }

          dispatch_resume(*(v2 + 1071));
        }

        if ((v2[253] & 1) == 0 && *(v2 + 471))
        {
          v2[253] = 1;
          ++*(v2 + 495);
          if (gNRPacketLoggingEnabled == 1)
          {
            v320 = _NRCopyLogObjectForNRUUID();
            v321 = _NRLogIsLevelEnabled();

            if (v321)
            {
              v322 = _NRCopyLogObjectForNRUUID();
              v323 = [v2 copyDescription];
              _NRLogWithArgs(v322, 1, "%s%.30s:%-4d %@: source-suspend: NexusOutput", "", "NRLinkSuspendNexusOutputSource", 864, v323);
            }
          }

          dispatch_suspend(*(v2 + 471));
        }

        *&v2[v624] |= 0x40uLL;
        goto LABEL_407;
      }

      v619 = next_slot;
      os_channel_slot_get_packet();
      os_packet_get_next_buflet();
      object_address = os_buflet_get_object_address();
      data_offset = os_buflet_get_data_offset();
      data_length = os_buflet_get_data_length();
      if (data_length >= 0x10000)
      {
        v379 = sub_10007CF34();
        v380 = _NRLogIsLevelEnabled();

        if (v380)
        {
          v381 = sub_10007CF34();
          _NRLogWithArgs(v381, 16, "%s%.30s:%-4d ABORTING: Assertion Failed: inputBufferLength <= 65535", "", "NRLinkLinkToNexusLoop", 5670);
        }

        v382 = _os_log_pack_size();
        v383 = v605 - ((__chkstk_darwin() + 15) & 0xFFFFFFFFFFFFFFF0);
        v384 = *__error();
        v385 = _os_log_pack_fill(v383, v382, v384, &_mh_execute_header, "%{public}s Assertion Failed: inputBufferLength <= 65535");
        goto LABEL_560;
      }

      LODWORD(v626) = data_length;
      v622 = (object_address + data_offset);
      os_packet_get_flow_uuid();
      v16 = 0;
      if (v2[292] == 1)
      {
        v2[292] = 0;
        LODWORD(v620) = 1;
      }

      else
      {
        LODWORD(v620) = v620 | BYTE2(v631);
      }

LABEL_30:
      if ((v2[261] & 1) == 0 && *(v2 + 1071))
      {
        v2[261] = 1;
        ++*(v2 + 1087);
        if (gNRPacketLoggingEnabled == 1)
        {
          v228 = _NRCopyLogObjectForNRUUID();
          v229 = _NRLogIsLevelEnabled();

          if (v229)
          {
            v230 = _NRCopyLogObjectForNRUUID();
            v231 = [v2 copyDescription];
            _NRLogWithArgs(v230, 1, "%s%.30s:%-4d %@: source-suspend: LinkInput", "", "NRLinkSuspendLinkInputSource", 845, v231);
          }
        }

        dispatch_suspend(*(v2 + 1071));
      }

      v23 = *&v2[v14[426]];
      v24 = *&v2[v15[427]];
      if (v23 <= v24)
      {
        break;
      }

      v25 = *(v2 + 1455);
      v26 = *(v25 + v24);
      v27 = v622;
      if (*(v25 + v24))
      {
        goto LABEL_47;
      }

      while (1)
      {
        v28 = _NRCopyLogObjectForNRUUID();
        v29 = _NRLogIsLevelEnabled();

        if (v29)
        {
          v30 = _NRCopyLogObjectForNRUUID();
          v31 = [v2 copyDescription];
          _NRLogWithArgs(v30, 1, "%s%.30s:%-4d %@: Handling Pad0 in linkReadBuffer", "", "NRLinkLinkToNexusLoop", 5719, v31);
        }

        ++*&v2[v15[427]];
        v23 = *&v2[v14[426]];
        v24 = *&v2[v15[427]];
        if (v23 <= v24)
        {
          break;
        }

        v32 = *(v2 + 1455);
        v26 = *(v32 + v24);
        if (*(v32 + v24))
        {
          goto LABEL_47;
        }
      }

      if (v23 != v24)
      {
        v514 = sub_10007CF34();
        v515 = _NRLogIsLevelEnabled();

        if (v515)
        {
          v516 = sub_10007CF34();
          _NRLogWithArgs(v516, 16, "%s%.30s:%-4d ABORTING: Assertion Failed: self->_filledInLinkReadBufferBytes == self->_handledLinkReadBufferBytes", "", "NRLinkLinkToNexusLoop", 5723);
        }

        v517 = _os_log_pack_size();
        v518 = v605 - ((__chkstk_darwin() + 15) & 0xFFFFFFFFFFFFFFF0);
        v519 = *__error();
        v385 = _os_log_pack_fill(v518, v517, v519, &_mh_execute_header, "%{public}s Assertion Failed: self->_filledInLinkReadBufferBytes == self->_handledLinkReadBufferBytes");
        goto LABEL_560;
      }

      v59 = _NRCopyLogObjectForNRUUID();
      v60 = _NRLogIsLevelEnabled();

      v17 = v619;
      if (v60)
      {
        v61 = _NRCopyLogObjectForNRUUID();
        v62 = [v2 copyDescription];
        _NRLogWithArgs(v61, 1, "%s%.30s:%-4d %@: Ended linkReadBuffer on a Pad0 handled=%u filledIn=%u", "", "NRLinkLinkToNexusLoop", 5725, v62, *&v2[v15[427]], *&v2[v14[426]]);

        v17 = v619;
      }
    }

    v27 = v622;
    while (1)
    {
      v26 = v27[v16];
      if (v27[v16])
      {
        break;
      }

      v33 = _NRCopyLogObjectForNRUUID();
      v34 = _NRLogIsLevelEnabled();

      if (v34)
      {
        v35 = _NRCopyLogObjectForNRUUID();
        v36 = [v2 copyDescription];
        _NRLogWithArgs(v35, 1, "%s%.30s:%-4d %@: Handling Pad0 in linkInputSlot alreadyRead=%u", "", "NRLinkLinkToNexusLoop", 5743, v36, v16);
      }

      v16 = (v16 + 1);
      if (v16 >= v626)
      {
        if (v16 == v626)
        {
          v249 = _NRCopyLogObjectForNRUUID();
          v250 = _NRLogIsLevelEnabled();

          if (v250)
          {
            v251 = _NRCopyLogObjectForNRUUID();
            v252 = [v2 copyDescription];
            _NRLogWithArgs(v251, 1, "%s%.30s:%-4d %@: Ended linkInputSlot on a Pad0 handled=%u filledIn=%u", "", "NRLinkLinkToNexusLoop", 5749, v252, *&v2[v15[427]], *&v2[v14[426]]);
          }

          goto LABEL_407;
        }

        v446 = sub_10007CF34();
        v447 = _NRLogIsLevelEnabled();

        if (v447)
        {
          v448 = sub_10007CF34();
          _NRLogWithArgs(v448, 16, "%s%.30s:%-4d ABORTING: Assertion Failed: curLinkInputSlotPartialBytesAlreadyRead == linkInputBufferLength", "", "NRLinkLinkToNexusLoop", 5747);
        }

LABEL_496:
        v394 = _os_log_pack_size();
        v395 = v605 - ((__chkstk_darwin() + 15) & 0xFFFFFFFFFFFFFFF0);
        v396 = *__error();
        v385 = _os_log_pack_fill(v395, v394, v396, &_mh_execute_header, "%{public}s Assertion Failed: curLinkInputSlotPartialBytesAlreadyRead == linkInputBufferLength");
LABEL_560:
        *v385 = 136446210;
        *(v385 + 4) = v13;
LABEL_483:
        sub_10007CF34();
        _NRLogAbortWithPack();
        goto LABEL_484;
      }
    }

    v24 = *&v2[v15[427]];
    v23 = *&v2[v14[426]];
LABEL_47:
    if (v23 <= v24 + 2)
    {
      if (v23 == v24 + 2)
      {
        v39 = *(*(v2 + 1455) + v24 + 1);
        if (v16 >= v626)
        {
          v38 = 0;
          v40 = 0;
          v41 = 512;
        }

        else
        {
          v38 = v27[v16];
          v40 = 1;
          v41 = 256;
        }
      }

      else
      {
        if (v23 == v24 + 1)
        {
          v56 = v16;
        }

        else
        {
          v56 = v16 + 1;
        }

        if (v56 + 2 >= v626)
        {
          v39 = 0;
          v38 = 0;
          v40 = 0;
          v41 = 2048;
        }

        else
        {
          v57 = bswap32(*&v27[v56]);
          v38 = BYTE2(v57);
          v39 = HIBYTE(v57);
          v40 = 1;
          v41 = 1024;
        }
      }
    }

    else
    {
      v37 = bswap32(*(*(v2 + 1455) + v24 + 1));
      v38 = BYTE2(v37);
      v39 = HIBYTE(v37);
      v40 = 1;
      v41 = 128;
    }

    v615 = v26;
    v42 = *&v2[v624] | v41;
    *&v2[v624] = v42;
    v658 = 0u;
    v659 = 0u;
    v656 = 0u;
    v657 = 0u;
    v654 = 0u;
    v655 = 0u;
    v652 = 0u;
    v653 = 0u;
    v650 = 0u;
    v651 = 0u;
    v648 = 0u;
    v649 = 0u;
    v646 = 0u;
    v647 = 0u;
    v644 = 0u;
    v645 = 0u;
    v43 = v23 - v24;
    v611 = v24;
    v612 = v23;
    if (v23 <= v24)
    {
      v45 = 0;
      v47 = 0;
      v46 = v624;
    }

    else
    {
      *&v644 = *(v2 + 1455) + v24;
      v44 = v38 | (v39 << 8);
      if (v44 + 5 >= v43)
      {
        v45 = v43;
      }

      else
      {
        v45 = (v44 + 5);
      }

      if (!v45)
      {
        v405 = sub_10007CF34();
        v406 = _NRLogIsLevelEnabled();

        if (v406)
        {
          v407 = sub_10007CF34();
          _NRLogWithArgs(v407, 16, "%s%.30s:%-4d ABORTING: Assertion Failed: lrbIOVecLen > 0; tlvLen=%u filledInLinkReadBufferBytes=%u handledLinkReadBufferBytes=%u", "", "NRLinkLinkToNexusLoop", 5827, v44, *&v2[v14[426]], *&v2[v15[427]]);
        }

        v408 = _os_log_pack_size();
        v409 = v605 - ((__chkstk_darwin() + 15) & 0xFFFFFFFFFFFFFFF0);
        v410 = __error();
        v411 = _os_log_pack_fill(v409, v408, *v410, &_mh_execute_header, "%{public}s Assertion Failed: lrbIOVecLen > 0; tlvLen=%u filledInLinkReadBufferBytes=%u handledLinkReadBufferBytes=%u");
        sub_100095124(v411, "NRLinkLinkToNexusLoop", v44, *&v2[v14[426]], *&v2[v15[427]]);
        goto LABEL_542;
      }

      DWORD2(v644) = v45;
      v42 |= 0x1000uLL;
      v46 = v624;
      *&v2[v624] = v42;
      v47 = 1;
    }

    v48 = v626;
    if (v16 < v626)
    {
      if (v40 && (v38 | (v39 << 8)) + 5 <= v45)
      {
        v623 = v45;
        v55 = 0;
        goto LABEL_98;
      }

      v49 = &v644 + v47;
      *v49 = &v27[v16];
      v50 = v48 - v16;
      *(v49 + 2) = v50;
      v51 = (v45 + v50);
      *&v2[v46] = v42 | 0x2000;
      v52 = (v47 + 1);
      if (v51 < 3)
      {
        v53 = 1;
      }

      else
      {
        v53 = v40;
      }

      if (v53)
      {
        if (!v40)
        {
          v623 = v51;
          v54 = 0;
          *&v2[v46] = v42 | 0xA000;
          v55 = 1;
          v47 = (v47 + 1);
          v16 = v626;
          v13 = "NRLinkLinkToNexusLoop";
          goto LABEL_104;
        }

        goto LABEL_93;
      }

      if (DWORD2(v644) >= 3)
      {
        v58 = *(v644 + 1);
LABEL_91:
        v63 = v58;
        v64 = v58 >> 8;
LABEL_92:
        v65 = bswap32(v63 | (v64 << 8));
        v38 = BYTE2(v65);
        v39 = HIBYTE(v65);
LABEL_93:
        v66 = (v38 | (v39 << 8)) + 5;
        if (v66 >= v51)
        {
          v623 = v51;
          v42 = *&v2[v46] | 0x8000;
          *&v2[v46] = v42;
          v55 = 1;
          v16 = v626;
          v47 = (v47 + 1);
        }

        else
        {
          v67 = v47;
          v68 = v47;
          v69 = (v51 - v66);
          v42 = *&v2[v46] | 0x4000;
          *&v2[v46] = v42;
          v70 = &v644 + v67;
          v71 = *(v70 + 2) - v69;
          *(v70 + 2) = v71;
          if (!v71)
          {
            v520 = v51;
            v521 = v68;
            v522 = sub_10007CF34();
            v523 = _NRLogIsLevelEnabled();

            if (v523)
            {
              v524 = sub_10007CF34();
              IOVecString = createIOVecString();
              _NRLogWithArgs(v524, 16, "%s%.30s:%-4d ABORTING: Assertion Failed: ioVecs[iovecIndex - 1].len > 0; Shrunk ioVecs[%u] down by %u to 0 - %@ ioVecContentLen=%u alreadyRead=%u", "", "NRLinkLinkToNexusLoop", 5865, v521, v69, IOVecString, v520, v48);
            }

            v526 = _os_log_pack_size();
            v527 = v605 - ((__chkstk_darwin() + 15) & 0xFFFFFFFFFFFFFFF0);
            v528 = __error();
            v529 = _os_log_pack_fill(v527, v526, *v528, &_mh_execute_header, "%{public}s Assertion Failed: ioVecs[iovecIndex - 1].len > 0; Shrunk ioVecs[%u] down by %u to 0 - %@ ioVecContentLen=%u alreadyRead=%u");
            v530 = createIOVecString();
            sub_10009C064(v529, "NRLinkLinkToNexusLoop", v521, v69, v530, v520, v48);
            goto LABEL_542;
          }

          v16 = (v626 - v69);
          v55 = 1;
          v47 = v52;
          v623 = ((v38 | (v39 << 8)) + 5);
        }

        v13 = "NRLinkLinkToNexusLoop";
        goto LABEL_98;
      }

      if (DWORD2(v644) == 2)
      {
        if (v612 <= v611)
        {
          goto LABEL_564;
        }

        v63 = *(v644 + 1);
        v64 = *v645;
        goto LABEL_92;
      }

      if (DWORD2(v644) == 1)
      {
        if (DWORD2(v645) < 2)
        {
          v581 = sub_10007CF34();
          v582 = _NRLogIsLevelEnabled();

          if (v582)
          {
            v583 = sub_10007CF34();
            v584 = createIOVecString();
            _NRLogWithArgs(v583, 16, "%s%.30s:%-4d ABORTING: Assertion Failed: numIOVecs > 2; %@", "", "nrReadTLVLenHBOFromIOVec", 274, v584);
          }

          v585 = _os_log_pack_size();
          v586 = v605 - ((__chkstk_darwin() + 15) & 0xFFFFFFFFFFFFFFF0);
          v587 = *__error();
          v544 = _os_log_pack_fill(v586, v585, v587, &_mh_execute_header, "%{public}s Assertion Failed: numIOVecs > 2; %@");
        }

        else
        {
          if (v612 > v611)
          {
            v58 = *v645;
            goto LABEL_91;
          }

          v545 = sub_10007CF34();
          v546 = _NRLogIsLevelEnabled();

          if (v546)
          {
            v547 = sub_10007CF34();
            v548 = createIOVecString();
            _NRLogWithArgs(v547, 16, "%s%.30s:%-4d ABORTING: Assertion Failed: numIOVecs > 1; %@", "", "nrReadTLVLenHBOFromIOVec", 271, v548);
          }

          v549 = _os_log_pack_size();
          v550 = v605 - ((__chkstk_darwin() + 15) & 0xFFFFFFFFFFFFFFF0);
          v551 = *__error();
          v544 = _os_log_pack_fill(v550, v549, v551, &_mh_execute_header, "%{public}s Assertion Failed: numIOVecs > 1; %@");
        }
      }

      else
      {
        v537 = sub_10007CF34();
        v538 = _NRLogIsLevelEnabled();

        if (v538)
        {
          v539 = sub_10007CF34();
          v540 = createIOVecString();
          _NRLogWithArgs(v539, 16, "%s%.30s:%-4d ABORTING: Assertion Failed: ioVecs[0].len == 1; %@", "", "nrReadTLVLenHBOFromIOVec", 269, v540);
        }

        v541 = _os_log_pack_size();
        v542 = v605 - ((__chkstk_darwin() + 15) & 0xFFFFFFFFFFFFFFF0);
        v543 = *__error();
        v544 = _os_log_pack_fill(v542, v541, v543, &_mh_execute_header, "%{public}s Assertion Failed: ioVecs[0].len == 1; %@");
      }

      v463 = v544;
      goto LABEL_527;
    }

    v623 = v45;
    v55 = 0;
    v54 = 0;
    if (!v40)
    {
      goto LABEL_104;
    }

LABEL_98:
    v72 = v16;
    v73 = v615;
    if ((v615 - 100) < 6 || (v615 - 2) < 4)
    {
      v74 = 2000;
      goto LABEL_101;
    }

    if (v615 == 1)
    {
      v74 = 255;
LABEL_101:
      v75 = v38 | (v39 << 8);
      if (v75 > v74)
      {
        StringFromNRTLVType = createStringFromNRTLVType();
        IOVecStringWithContents = createIOVecStringWithContents();
        v602 = v75;
        v2 = v621;
        sub_100080EB4(v621, @"Received invalid TLV len %u for %@ (max=%u) %@", v339, v340, v341, v342, v343, v344, v602);
        goto LABEL_10;
      }
    }

    if ((v38 | (v39 << 8)) + 5 <= v623)
    {
      v85 = v619;
      v2 = v621;
      v16 = v72;
      goto LABEL_187;
    }

    v54 = 1;
    v2 = v621;
    v16 = v72;
LABEL_104:
    LODWORD(v618) = v54;
    v76 = v39;
    v616 = v47;
    v77 = v38;
    v629 = 0uLL;
    v630 = 0uLL;
    v627 = 0uLL;
    v628 = 0uLL;
    v78 = v619;
    v79 = os_channel_get_next_slot();
    if (v79)
    {
      v625 = v16;
      v80 = v79;
      os_channel_slot_get_packet();
      os_packet_get_next_buflet();
      v81 = os_buflet_get_object_address();
      v82 = os_buflet_get_data_offset();
      v83 = os_buflet_get_data_length();
      if (HIWORD(v83))
      {
LABEL_468:
        if (qword_100229088 != -1)
        {
          dispatch_once(&qword_100229088, &stru_1001FB1C0);
        }

        v347 = "NRLinkLinkToNexusLoop";
        if (_NRLogIsLevelEnabled())
        {
          if (qword_100229088 != -1)
          {
            dispatch_once(&qword_100229088, &stru_1001FB1C0);
          }

          _NRLogWithArgs(qword_100229080, 16, "%s%.30s:%-4d ABORTING: Assertion Failed: inputBufferLength <= 65535", "", "NRLinkLinkToNexusLoop", 5906);
        }

        v359 = _os_log_pack_size();
        v360 = v605 - ((__chkstk_darwin() + 15) & 0xFFFFFFFFFFFFFFF0);
        v361 = *__error();
        v352 = _os_log_pack_fill(v360, v359, v361, &_mh_execute_header, "%{public}s Assertion Failed: inputBufferLength <= 65535");
      }

      else
      {
        v84 = v83;
        os_packet_get_flow_uuid();
        if (v2[292] == 1)
        {
          v2[292] = 0;
          LODWORD(v620) = 1;
        }

        else
        {
          LODWORD(v620) = v620 | BYTE2(v631);
        }

        v16 = v625;
        v86 = v623;
        v38 = v77;
        v39 = v76;
        v87 = v80;
        v88 = v618;
        v89 = v616;
        v27 = (v81 + v82);
        v90 = &v644 + v616;
        *v90 = v27;
        if (v84)
        {
          *(v90 + 2) = v84;
          v2 = v621;
          v91 = *&v621[v624] | 0x20000;
          *&v621[v624] = v91;
          v92 = v84 + v86;
          if (v92 < 3)
          {
            v93 = 1;
          }

          else
          {
            v93 = v88;
          }

          if (v93)
          {
            if (!v88)
            {
              v96 = 0;
              goto LABEL_141;
            }

LABEL_139:
            v102 = (v38 | (v39 << 8)) + 5;
            v91 = *&v2[v624];
            if (v102 <= v92)
            {
              v42 = v91 | 0x40000;
              *&v2[v624] = v42;
              v103 = (v92 - v102);
              v104 = v89;
              v105 = &v644 + v89;
              v106 = *(v105 + 2) - v103;
              *(v105 + 2) = v106;
              if (!v106)
              {
                v619 = (v89 + 1);
                v373 = v92;
LABEL_487:
                v374 = sub_10007CF34();
                v375 = _NRLogIsLevelEnabled();

                v2 = "NRLinkLinkToNexusLoop";
                if (v375)
                {
                  v376 = sub_10007CF34();
                  v13 = v619;
                  v377 = createIOVecString();
                  v378 = v625;
                  _NRLogWithArgs(v376, 16, "%s%.30s:%-4d ABORTING: Assertion Failed: ioVecs[iovecIndex - 1].len > 0; Shrunk last ioVecs[%u] down by %u to 0 - %@ ioVecContentLen=%u alreadyRead=%u", "", "NRLinkLinkToNexusLoop", 5955, v104, v103, v377, v373, v625);
                }

                else
                {
                  v378 = v625;
                  v13 = v619;
                }

                v386 = _os_log_pack_size();
                v387 = v605 - ((__chkstk_darwin() + 15) & 0xFFFFFFFFFFFFFFF0);
                v388 = __error();
                v389 = _os_log_pack_fill(v387, v386, *v388, &_mh_execute_header, "%{public}s Assertion Failed: ioVecs[iovecIndex - 1].len > 0; Shrunk last ioVecs[%u] down by %u to 0 - %@ ioVecContentLen=%u alreadyRead=%u");
                v390 = createIOVecString();
                sub_10009C064(v389, "NRLinkLinkToNexusLoop", v104, v103, v390, v373, v378);

                sub_10007CF34();
                _NRLogAbortWithPack();
LABEL_494:
                v391 = sub_10007CF34();
                v392 = _NRLogIsLevelEnabled();

                if (v392)
                {
                  v393 = sub_10007CF34();
                  _NRLogWithArgs(v393, 16, "%s%.30s:%-4d ABORTING: Assertion Failed: curLinkInputSlotPartialBytesAlreadyRead == linkInputBufferLength", "", v13, 5654);
                }

                goto LABEL_496;
              }

              v16 = v84 - v103;
              v633 = v627;
              v634 = v628;
              v96 = 1;
              v635 = v629;
              v636 = v630;
              v92 = (v38 | (v39 << 8)) + 5;
              LODWORD(v626) = v84;
              v613 = v87;
              goto LABEL_144;
            }

            v96 = 1;
            v16 = v625;
LABEL_141:
            v42 = v91 | 0x80000;
            *&v2[v624] = v42;
            v613 = v619;
            v27 = v622;
LABEL_144:
            v107 = (v89 + 2);
            v108 = &v606[16 * v89];
            while (1)
            {
              v47 = (v107 - 1);
              v623 = v92;
              if ((v96 & 1) != 0 && (v39 << 8) + v38 + 5 <= v92)
              {
                v55 = 1;
                v13 = "NRLinkLinkToNexusLoop";
                v73 = v615;
LABEL_186:
                v85 = v613;
                goto LABEL_187;
              }

              v109 = v108;
              v617 = v38;
              v618 = v39;
              v629 = 0u;
              v630 = 0u;
              v627 = 0u;
              v628 = 0u;
              v110 = v87;
              v111 = os_channel_get_next_slot();
              if (!v111)
              {
                v47 = (v107 - 1);
                v42 = *&v2[v624] | 0x10000;
                *&v2[v624] = v42;
                v73 = v615;
                if (v96)
                {
                  v55 = 1;
                  v619 = v110;
                  v13 = "NRLinkLinkToNexusLoop";
                  LODWORD(v38) = v617;
                  LODWORD(v39) = v618;
                  goto LABEL_186;
                }

                v619 = v110;
                v13 = "NRLinkLinkToNexusLoop";
                LOWORD(v38) = v617;
                LOWORD(v39) = v618;
LABEL_393:
                v254 = v47;
                if (gNRPacketLoggingEnabled == 1)
                {
                  v306 = v38;
                  v307 = v39;
                  v308 = _NRCopyLogObjectForNRUUID();
                  v309 = _NRLogIsLevelEnabled();

                  if (v309)
                  {
                    v310 = v307;
                    v311 = v306;
                    v312 = v310;
                    v313 = _NRCopyLogObjectForNRUUID();
                    v314 = [v2 copyDescription];
                    v315 = createStringFromNRTLVType();
                    _NRLogWithArgs(v313, 1, "%s%.30s:%-4d %@: LtN not enough input bytes from linkInputSlot %u to fit %@ tlvLen %u", "", "NRLinkLinkToNexusLoop", 5993, v314, v623, v315, v311 | (v312 << 8));
                  }
                }

                v15 = &OBJC_IVAR___BTPResolver__sdRefResolve;
                v14 = &OBJC_IVAR___BTPResolver__sdRefResolve;
                if (v2[261] == 1 && *(v2 + 1071))
                {
                  v2[261] = 0;
                  ++*(v2 + 1087);
                  if (gNRPacketLoggingEnabled == 1)
                  {
                    v324 = _NRCopyLogObjectForNRUUID();
                    v325 = _NRLogIsLevelEnabled();

                    if (v325)
                    {
                      v326 = _NRCopyLogObjectForNRUUID();
                      v327 = [v2 copyDescription];
                      _NRLogWithArgs(v326, 1, "%s%.30s:%-4d %@: source-resume: LinkInput", "", "NRLinkResumeLinkInputSource", 853, v327);
                    }
                  }

                  dispatch_resume(*(v2 + 1071));
                }

                if ((v612 > v611) < v254)
                {
                  v255 = v254 - (v612 > v611);
                  v256 = &v610[16 * (v612 > v611)];
                  do
                  {
                    if (gNRPacketLoggingEnabled == 1)
                    {
                      v258 = _NRCopyLogObjectForNRUUID();
                      v259 = _NRLogIsLevelEnabled();

                      if (v259)
                      {
                        v260 = _NRCopyLogObjectForNRUUID();
                        v261 = [v2 copyDescription];
                        _NRLogWithArgs(v260, 1, "%s%.30s:%-4d %@: partial TLV - consolidating %u bytes from linkInputSlot buf %p to linkReadBuffer filledIn=%u handled=%u", "", "NRLinkLinkToNexusLoop", 6000, v261, *v256, *(v256 - 1), *(v2 + 371), *(v2 + 375));
                      }
                    }

                    memcpy((*(v2 + 1455) + *(v2 + 371)), *(v256 - 1), *v256);
                    v257 = *v256;
                    v256 += 4;
                    *(v2 + 371) += v257;
                    --v255;
                  }

                  while (v255);
                }

                *&v2[v624] |= 0x100000uLL;
LABEL_406:
                *(&v614 + 1) = v619;
                goto LABEL_407;
              }

              v619 = v107;
              v616 = (v107 - 1);
              v622 = v27;
              v625 = v16;
              v112 = v111;
              os_channel_slot_get_packet();
              os_packet_get_next_buflet();
              v113 = os_buflet_get_object_address();
              v114 = os_buflet_get_data_offset();
              v115 = os_buflet_get_data_length();
              if (v115 >= 0x10000)
              {
                goto LABEL_468;
              }

              v116 = v115;
              os_packet_get_flow_uuid();
              if (v2[292] == 1)
              {
                v2[292] = 0;
                LODWORD(v620) = 1;
              }

              else
              {
                LODWORD(v620) = v620 | BYTE2(v631);
              }

              v117 = v623;
              v38 = v617;
              v39 = v618;
              v118 = v109;
              v87 = v112;
              v27 = (v113 + v114);
              *(v109 - 1) = v27;
              v16 = v625;
              if (!v116)
              {
                goto LABEL_475;
              }

              *v109 = v116;
              v119 = *&v621[v624];
              *&v621[v624] = v119 | 0x20000;
              v92 = v116 + v117;
              if (v96 & 1 | (v92 < 3))
              {
                v120 = v619;
                if ((v96 & 1) == 0)
                {
                  v42 = v119 | 0xA0000;
                  v2 = v621;
                  *&v621[v624] = v42;
                  if (v120 == 16)
                  {
                    goto LABEL_485;
                  }

                  v96 = 0;
                  v27 = v622;
                  goto LABEL_146;
                }

                v2 = v621;
                goto LABEL_175;
              }

              v120 = v619;
              if (DWORD2(v644) >= 3)
              {
                break;
              }

              if (DWORD2(v644) != 2)
              {
                if (DWORD2(v644) != 1)
                {
                  goto LABEL_497;
                }

                if (DWORD2(v645) <= 1)
                {
                  if (v616 <= 1)
                  {
                    goto LABEL_520;
                  }

                  v2 = v621;
                  if (DWORD2(v645) != 1)
                  {
                    goto LABEL_523;
                  }

                  v122 = *v645;
                  v123 = *v646;
                  goto LABEL_171;
                }

                v121 = *v645;
                goto LABEL_160;
              }

              v122 = *(v644 + 1);
              v123 = *v645;
              v2 = v621;
LABEL_171:
              v124 = v122 | (v123 << 8);
              v125 = bswap32(v124);
              v38 = BYTE2(v125);
              v39 = HIBYTE(v125);
              if ((v615 - 100) >= 6 && (v615 - 2) >= 4)
              {
                if (v615 != 1)
                {
                  goto LABEL_175;
                }

                v126 = 255;
              }

              else
              {
                v126 = 2000;
              }

              v101 = __rev16(v124);
              if (v101 > v126)
              {
                goto LABEL_462;
              }

LABEL_175:
              v127 = (v39 << 8) + v38 + 5;
              v128 = v624;
              v129 = *&v2[v624];
              if (v127 <= v92)
              {
                v42 = v129 | 0x40000;
                *&v2[v624] = v42;
                v103 = (v92 - v127);
                v130 = &v644 + v120 - 1;
                v131 = *(v130 + 2) - v103;
                *(v130 + 2) = v131;
                if (!v131)
                {
                  v372 = v120;
                  v373 = v92;
                  v104 = (v372 - 1);
                  goto LABEL_487;
                }

                v16 = v116 - v103;
                v633 = v627;
                v634 = v628;
                v635 = v629;
                v636 = v630;
                if (v120 == 16)
                {
                  v613 = v87;
                  LODWORD(v626) = v116;
                  v92 = (v39 << 8) + v38 + 5;
                  goto LABEL_194;
                }

                v96 = 1;
                v613 = v87;
                LODWORD(v626) = v116;
                v92 = (v39 << 8) + v38 + 5;
              }

              else
              {
                v42 = v129 | 0x80000;
                *&v2[v624] = v42;
                if (v120 == 16)
                {
                  v134 = v127 > v92;
                  v127 = v92;
                  v16 = v625;
                  v27 = v622;
                  if (!v134)
                  {
LABEL_194:
                    v623 = v92;
                    v617 = (v38 | (v39 << 8));
                    v47 = 16;
                    v132 = v38 | (v39 << 8);
                    v73 = v615;
                    v85 = v613;
LABEL_195:
                    v133 = v42 | 0x200000;
                    v619 = v85;
                    *(&v614 + 1) = v85;
                    goto LABEL_196;
                  }

LABEL_484:
                  v617 = v38;
                  v618 = v39;
LABEL_485:
                  v365 = createIOVecStringWithContents();
                  sub_100080EB4(v2, @"LtN not enough ioVecs %@ for %u", v366, v367, v368, v369, v370, v371, v365);

                  goto LABEL_12;
                }

                v96 = 1;
                v16 = v625;
                v27 = v622;
              }

LABEL_146:
              v107 = v120 + 1;
              v108 = (v118 + 4);
              v619 = v110;
            }

            v121 = *(v644 + 1);
LABEL_160:
            v122 = v121;
            v123 = v121 >> 8;
            v2 = v621;
            goto LABEL_171;
          }

          if (DWORD2(v644) > 2)
          {
            v94 = *(v644 + 1);
            v95 = HIBYTE(*(v644 + 1));
LABEL_135:
            v98 = v94 | (v95 << 8);
            v99 = bswap32(v98);
            v38 = BYTE2(v99);
            v39 = HIBYTE(v99);
            if ((v615 - 100) >= 6 && (v615 - 2) >= 4)
            {
              if (v615 != 1)
              {
                goto LABEL_139;
              }

              v100 = 255;
            }

            else
            {
              v100 = 2000;
            }

            v101 = __rev16(v98);
            if (v101 > v100)
            {
LABEL_462:
              v332 = createStringFromNRTLVType();
              v604 = createIOVecStringWithContents();
              sub_100080EB4(v2, @"LookAhead received invalid TLV len %u for %@ (max=%u) %@", v333, v334, v335, v336, v337, v338, v101);

              goto LABEL_12;
            }

            goto LABEL_139;
          }

          if (DWORD2(v644) == 2)
          {
            if (v616)
            {
              v97 = v645;
              v94 = *(v644 + 1);
LABEL_134:
              v95 = *v97;
              goto LABEL_135;
            }

LABEL_564:
            v531 = sub_10007CF34();
            v532 = _NRLogIsLevelEnabled();

            if (v532)
            {
              v533 = sub_10007CF34();
              _NRLogWithArgs(v533, 16, "%s%.30s:%-4d ABORTING: Assertion Failed: numIOVecs > 1", "", "nrReadTLVLenHBOFromIOVec", 265);
            }

            v534 = _os_log_pack_size();
            v535 = v605 - ((__chkstk_darwin() + 15) & 0xFFFFFFFFFFFFFFF0);
            v536 = __error();
            v418 = _os_log_pack_fill(v535, v534, *v536, &_mh_execute_header, "%{public}s Assertion Failed: numIOVecs > 1");
            *v418 = 136446210;
            v419 = "nrReadTLVLenHBOFromIOVec";
LABEL_509:
            *(v418 + 4) = v419;
            goto LABEL_483;
          }

          if (DWORD2(v644) == 1)
          {
            if (DWORD2(v645) > 1)
            {
              if (v616)
              {
                v94 = *v645;
                v95 = HIBYTE(*v645);
                goto LABEL_135;
              }

              v560 = sub_10007CF34();
              v561 = _NRLogIsLevelEnabled();

              if (v561)
              {
                v562 = sub_10007CF34();
                v563 = createIOVecString();
                _NRLogWithArgs(v562, 16, "%s%.30s:%-4d ABORTING: Assertion Failed: numIOVecs > 1; %@", "", "nrReadTLVLenHBOFromIOVec", 271, v563);
              }

              v564 = _os_log_pack_size();
              v565 = v605 - ((__chkstk_darwin() + 15) & 0xFFFFFFFFFFFFFFF0);
              v566 = __error();
              v463 = _os_log_pack_fill(v565, v564, *v566, &_mh_execute_header, "%{public}s Assertion Failed: numIOVecs > 1; %@");
              v464 = createIOVecString();
              *v463 = 136446466;
              *(v463 + 4) = "nrReadTLVLenHBOFromIOVec";
LABEL_528:
              *(v463 + 12) = 2112;
              *(v463 + 14) = v464;
              goto LABEL_483;
            }

            if (v616 < 2)
            {
LABEL_520:
              v449 = sub_10007CF34();
              v450 = _NRLogIsLevelEnabled();

              if (v450)
              {
                v451 = sub_10007CF34();
                v452 = createIOVecString();
                _NRLogWithArgs(v451, 16, "%s%.30s:%-4d ABORTING: Assertion Failed: numIOVecs > 2; %@", "", "nrReadTLVLenHBOFromIOVec", 274, v452);
              }

              v453 = _os_log_pack_size();
              v454 = v605 - ((__chkstk_darwin() + 15) & 0xFFFFFFFFFFFFFFF0);
              v455 = *__error();
              v404 = _os_log_pack_fill(v454, v453, v455, &_mh_execute_header, "%{public}s Assertion Failed: numIOVecs > 2; %@");
            }

            else
            {
              if (DWORD2(v645) == 1)
              {
                v97 = v646;
                v94 = *v645;
                goto LABEL_134;
              }

LABEL_523:
              v456 = sub_10007CF34();
              v457 = _NRLogIsLevelEnabled();

              if (v457)
              {
                v458 = sub_10007CF34();
                v459 = createIOVecString();
                _NRLogWithArgs(v458, 16, "%s%.30s:%-4d ABORTING: Assertion Failed: ioVecs[1].len == 1; %@", "", "nrReadTLVLenHBOFromIOVec", 275, v459);
              }

              v460 = _os_log_pack_size();
              v461 = v605 - ((__chkstk_darwin() + 15) & 0xFFFFFFFFFFFFFFF0);
              v462 = *__error();
              v404 = _os_log_pack_fill(v461, v460, v462, &_mh_execute_header, "%{public}s Assertion Failed: ioVecs[1].len == 1; %@");
            }
          }

          else
          {
LABEL_497:
            v397 = sub_10007CF34();
            v398 = _NRLogIsLevelEnabled();

            if (v398)
            {
              v399 = sub_10007CF34();
              v400 = createIOVecString();
              _NRLogWithArgs(v399, 16, "%s%.30s:%-4d ABORTING: Assertion Failed: ioVecs[0].len == 1; %@", "", "nrReadTLVLenHBOFromIOVec", 269, v400);
            }

            v401 = _os_log_pack_size();
            v402 = v605 - ((__chkstk_darwin() + 15) & 0xFFFFFFFFFFFFFFF0);
            v403 = *__error();
            v404 = _os_log_pack_fill(v402, v401, v403, &_mh_execute_header, "%{public}s Assertion Failed: ioVecs[0].len == 1; %@");
          }

          v463 = v404;
LABEL_527:
          v464 = createIOVecString();
          *v463 = 136446466;
          *(v463 + 4) = "nrReadTLVLenHBOFromIOVec";
          goto LABEL_528;
        }

LABEL_475:
        if (qword_100229088 != -1)
        {
          dispatch_once(&qword_100229088, &stru_1001FB1C0);
        }

        v347 = "NRLinkLinkToNexusLoop";
        if (_NRLogIsLevelEnabled())
        {
          if (qword_100229088 != -1)
          {
            dispatch_once(&qword_100229088, &stru_1001FB1C0);
          }

          _NRLogWithArgs(qword_100229080, 16, "%s%.30s:%-4d ABORTING: Assertion Failed: lookAheadLinkInputBufferLength > 0", "", "NRLinkLinkToNexusLoop", 5918);
        }

        v362 = _os_log_pack_size();
        v363 = v605 - ((__chkstk_darwin() + 15) & 0xFFFFFFFFFFFFFFF0);
        v364 = *__error();
        v352 = _os_log_pack_fill(v363, v362, v364, &_mh_execute_header, "%{public}s Assertion Failed: lookAheadLinkInputBufferLength > 0");
      }

LABEL_482:
      *v352 = 136446210;
      *(v352 + 4) = v347;
      goto LABEL_483;
    }

    v42 = *&v2[v624] | 0x10000;
    *&v2[v624] = v42;
    v85 = v78;
    v47 = v616;
    v73 = v615;
    LODWORD(v38) = v77;
    LODWORD(v39) = v76;
    if ((v618 & 1) == 0)
    {
      goto LABEL_393;
    }

LABEL_187:
    v127 = v623;
    v132 = v38 | (v39 << 8);
    v617 = (v38 | (v39 << 8));
    if (v617 + 5 > v623)
    {
      goto LABEL_393;
    }

    if (v55)
    {
      v128 = v624;
      goto LABEL_195;
    }

    v133 = v42 | 0x400000;
    v619 = v85;
    v128 = v624;
LABEL_196:
    *&v2[v128] = v133;
    *(v2 + 1519) += v127;
    v625 = v16;
    v616 = v47;
    v618 = v132;
    if (v73 >= 100)
    {
      break;
    }

    if (!v47)
    {
      v420 = sub_10007CF34();
      v421 = _NRLogIsLevelEnabled();

      if (v421)
      {
        v422 = sub_10007CF34();
        _NRLogWithArgs(v422, 16, "%s%.30s:%-4d ABORTING: Assertion Failed: numIOVecs > 0", "", "nrChecksumIOVecInner", 143);
      }

      v423 = _os_log_pack_size();
      v424 = v605 - ((__chkstk_darwin() + 15) & 0xFFFFFFFFFFFFFFF0);
      v425 = __error();
      v418 = _os_log_pack_fill(v424, v423, *v425, &_mh_execute_header, "%{public}s Assertion Failed: numIOVecs > 0");
      *v418 = 136446210;
      v419 = "nrChecksumIOVecInner";
      goto LABEL_509;
    }

    LODWORD(v609) = v47;
    v613 = v605;
    v144 = 0;
    v145 = 0;
    v146 = 0;
    v147 = 0;
    v148 = v132 + 3;
    v149 = v47;
    v150 = v610;
    do
    {
      v151 = v148 - v145;
      if (v148 <= v145)
      {
        v152 = 0;
        goto LABEL_229;
      }

      if (*v150 >= v151)
      {
        v152 = v151;
      }

      else
      {
        v152 = *v150;
      }

      if (!v152)
      {
        v345 = sub_10007CF34();
        v346 = _NRLogIsLevelEnabled();

        v347 = "nrChecksumUpdate";
        if (v346)
        {
          v348 = sub_10007CF34();
          _NRLogWithArgs(v348, 16, "%s%.30s:%-4d ABORTING: Assertion Failed: dataLen > 0", "", "nrChecksumUpdate", 69);
        }

        v349 = _os_log_pack_size();
        v350 = v605 - ((__chkstk_darwin() + 15) & 0xFFFFFFFFFFFFFFF0);
        v351 = *__error();
        v352 = _os_log_pack_fill(v350, v349, v351, &_mh_execute_header, "%{public}s Assertion Failed: dataLen > 0");
        goto LABEL_482;
      }

      v2 = v605;
      v153 = *(v150 - 1);
      if ((v146 & 1) == 0 || (v605[1] = *(v150 - 1), LOWORD(v627) = *v153 << 8, v147 = os_inet_checksum(), v152 != 1))
      {
        v147 = os_inet_checksum();
      }

      if (v152)
      {
        v146 ^= 1u;
      }

      v145 += v152;
      if (v145 >= v148 && v152 < *v150)
      {
        goto LABEL_229;
      }

      ++v144;
      v150 += 4;
    }

    while (v149 != v144);
    LOWORD(v144) = v616;
LABEL_229:
    v13 = "NRLinkLinkToNexusLoop";
    if (v145 != v148)
    {
      v440 = sub_10007CF34();
      v441 = _NRLogIsLevelEnabled();

      v347 = "nrChecksumIOVecInner";
      if (v441)
      {
        v442 = sub_10007CF34();
        _NRLogWithArgs(v442, 16, "%s%.30s:%-4d ABORTING: Assertion Failed: computedBytes == writtenLength", "", "nrChecksumIOVecInner", 164);
      }

      v443 = _os_log_pack_size();
      v444 = v605 - ((__chkstk_darwin() + 15) & 0xFFFFFFFFFFFFFFF0);
      v445 = *__error();
      v352 = _os_log_pack_fill(v444, v443, v445, &_mh_execute_header, "%{public}s Assertion Failed: computedBytes == writtenLength");
      goto LABEL_482;
    }

    v154 = ~v147;
    v155 = (~v147 >> 8);
    v156 = &v644 + v144;
    v157 = *(v156 + 2);
    if (v157 < v152 + 2)
    {
      if (v157 < v152 + 1)
      {
        v468 = sub_10007CF34();
        v469 = _NRLogIsLevelEnabled();

        if (v469)
        {
          v470 = sub_10007CF34();
          v471 = createIOVecString();
          _NRLogWithArgs(v470, 16, "%s%.30s:%-4d ABORTING: Assertion Failed: iovecs[iovecIndex].len >= bytesToCheckThisIOVec + 1; %@, iovecIndex=%u bytesToCheckThisIOVec=%u", "", "nrChecksumIOVecInner", 189, v471, v144, v152);
        }

        v472 = _os_log_pack_size();
        v473 = v605 - ((__chkstk_darwin() + 15) & 0xFFFFFFFFFFFFFFF0);
        v474 = __error();
        v475 = _os_log_pack_fill(v473, v472, *v474, &_mh_execute_header, "%{public}s Assertion Failed: iovecs[iovecIndex].len >= bytesToCheckThisIOVec + 1; %@, iovecIndex=%u bytesToCheckThisIOVec=%u");
        v476 = createIOVecString();
      }

      else if (v144 + 1 >= v609)
      {
        v477 = sub_10007CF34();
        v478 = _NRLogIsLevelEnabled();

        if (v478)
        {
          v479 = sub_10007CF34();
          v480 = createIOVecString();
          _NRLogWithArgs(v479, 16, "%s%.30s:%-4d ABORTING: Assertion Failed: iovecIndex + 1 < numIOVecs; %@, iovecIndex=%u bytesToCheckThisIOVec=%u", "", "nrChecksumIOVecInner", 191, v480, v144, v152);
        }

        v481 = _os_log_pack_size();
        v482 = v605 - ((__chkstk_darwin() + 15) & 0xFFFFFFFFFFFFFFF0);
        v483 = __error();
        v475 = _os_log_pack_fill(v482, v481, *v483, &_mh_execute_header, "%{public}s Assertion Failed: iovecIndex + 1 < numIOVecs; %@, iovecIndex=%u bytesToCheckThisIOVec=%u");
        v476 = createIOVecString();
      }

      else
      {
        v158 = (&v644 + v144 + 1);
        if (*(v158 + 2))
        {
          if (*(*v156 + v152) != v154 || **v158 != v155)
          {
            goto LABEL_543;
          }

          goto LABEL_239;
        }

        v484 = sub_10007CF34();
        v485 = _NRLogIsLevelEnabled();

        if (v485)
        {
          v486 = sub_10007CF34();
          v487 = createIOVecString();
          _NRLogWithArgs(v486, 16, "%s%.30s:%-4d ABORTING: Assertion Failed: iovecs[iovecIndex + 1].len >= 1; %@, iovecIndex=%u bytesToCheckThisIOVec=%u", "", "nrChecksumIOVecInner", 193, v487, v144, v152);
        }

        v488 = _os_log_pack_size();
        v489 = v605 - ((__chkstk_darwin() + 15) & 0xFFFFFFFFFFFFFFF0);
        v490 = __error();
        v475 = _os_log_pack_fill(v489, v488, *v490, &_mh_execute_header, "%{public}s Assertion Failed: iovecs[iovecIndex + 1].len >= 1; %@, iovecIndex=%u bytesToCheckThisIOVec=%u");
        v476 = createIOVecString();
      }

      v435 = v476;
      sub_10005015C(v475, "nrChecksumIOVecInner", v435, v144, v152);
      goto LABEL_541;
    }

    v159 = (*v156 + v152);
    if (*v159 != v154 || v159[1] != v155)
    {
      v465 = sub_10007CF34();
      v466 = _NRLogIsLevelEnabled();

      if (v466)
      {
        v467 = sub_10007CF34();
        _NRLogWithArgs(v467, 16, "%s%.30s:%-4d checksum failed same IOVec received 0x%02x%02x != computed 0x%02x%02x", "");
        goto LABEL_545;
      }

LABEL_546:
      v2 = v621;
      LOWORD(v16) = v625;
      goto LABEL_547;
    }

LABEL_239:
    v2 = v621;
    v16 = v625;
    v160 = v616;
LABEL_244:
    v629 = 0u;
    v630 = 0u;
    v627 = 0u;
    v628 = 0u;
    v162 = os_channel_get_next_slot();
    v14 = &OBJC_IVAR___BTPResolver__sdRefResolve;
    v622 = v27;
    if (!v162)
    {
      v15 = &OBJC_IVAR___BTPResolver__sdRefResolve;
      v167 = v611;
      v166 = v612;
      if (v2[253] == 1 && *(v2 + 471))
      {
        v2[253] = 0;
        ++*(v2 + 495);
        if (gNRPacketLoggingEnabled == 1)
        {
          v245 = _NRCopyLogObjectForNRUUID();
          v246 = _NRLogIsLevelEnabled();

          if (v246)
          {
            v247 = _NRCopyLogObjectForNRUUID();
            v248 = [v2 copyDescription];
            _NRLogWithArgs(v247, 1, "%s%.30s:%-4d %@: source-resume: NexusOutput", "", "NRLinkResumeNexusOutputSource", 874, v248);
          }
        }

        dispatch_resume(*(v2 + 471));
        v160 = v616;
        v167 = v611;
        v166 = v612;
      }

      v168 = *&v2[v624] | 0x800000;
      *&v2[v624] = v168;
      if ((v166 > v167) < v160)
      {
        v169 = v166 > v167;
        v170 = v160;
        v171 = &v610[16 * v169];
        while (1)
        {
          if (gNRPacketLoggingEnabled == 1)
          {
            v175 = _NRCopyLogObjectForNRUUID();
            v176 = _NRLogIsLevelEnabled();

            if (v176)
            {
              v177 = _NRCopyLogObjectForNRUUID();
              v178 = [v2 copyDescription];
              _NRLogWithArgs(v177, 1, "%s%.30s:%-4d %@: no nexusOutputSlot - consolidating %u bytes from linkInputSlot ioVecs[%u].buf=%p to linkReadBuffer filledIn=%u handled=%u", "", "NRLinkLinkToNexusLoop", 6064, v178, *v171, v169, *(v171 - 1), *(v2 + 371), *(v2 + 375));
            }
          }

          v172 = *(v2 + 371);
          v173 = *v171;
          if ((v173 + v172) >= *(v2 + 315))
          {
            break;
          }

          memcpy((*(v2 + 1455) + v172), *(v171 - 1), v173);
          v174 = *v171;
          v171 += 4;
          *(v2 + 371) += v174;
          if (v170 == ++v169)
          {
            v16 = v625;
            v168 = *&v2[v624];
            v160 = v616;
            v167 = v611;
            v166 = v612;
            goto LABEL_272;
          }
        }

        *&v2[v624] |= 0x1000000uLL;
        StringFromNRTLVType = createIOVecString();
        sub_100080EB4(v2, @"no nexusOutputSlot and linkReadBuffer is full %@ filledIn=%u handled=%u", v353, v354, v355, v356, v357, v358, StringFromNRTLVType);
        goto LABEL_11;
      }

LABEL_272:
      if (v166 <= v167 || v160 != 1)
      {
        *&v2[v624] = v168 | 0x4000000;
        v17 = v619;
        *(&v614 + 1) = v619;
        goto LABEL_18;
      }

      *&v2[v624] = v168 | 0x2000000;
      if (v16 && v626 > v16)
      {
        v253 = v626 - v16;
        if (gNRPacketLoggingEnabled == 1)
        {
          v328 = _NRCopyLogObjectForNRUUID();
          v329 = _NRLogIsLevelEnabled();

          if (v329)
          {
            v330 = _NRCopyLogObjectForNRUUID();
            v331 = [v2 copyDescription];
            _NRLogWithArgs(v330, 1, "%s%.30s:%-4d %@: no nexusOutputSlot - tail consolidating %u bytes from linkInputSlot to linkReadBuffer filledIn=%u handled=%u and marking curLinkInputSlot=%p as completed", "", "NRLinkLinkToNexusLoop", 6098, v331, v253, *(v2 + 371), *(v2 + 375), v619);
          }
        }

        memcpy((*(v2 + 1455) + *(v2 + 371)), &v622[v16], v253);
        *(v2 + 371) += v253;
        goto LABEL_406;
      }

LABEL_407:
      if (*(&v614 + 1))
      {
        v262 = *&v2[v14[426]];
        v263 = *&v2[v15[427]];
        if (v262 <= v263)
        {
          if (v263 != v262)
          {
            v508 = sub_10007CF34();
            v509 = _NRLogIsLevelEnabled();

            if (v509)
            {
              v510 = sub_10007CF34();
              _NRLogWithArgs(v510, 16, "%s%.30s:%-4d ABORTING: Assertion Failed: self->_handledLinkReadBufferBytes == self->_filledInLinkReadBufferBytes", "", "NRLinkLinkToNexusLoop", 6272);
            }

            v511 = _os_log_pack_size();
            v512 = v605 - ((__chkstk_darwin() + 15) & 0xFFFFFFFFFFFFFFF0);
            v513 = *__error();
            v385 = _os_log_pack_fill(v512, v511, v513, &_mh_execute_header, "%{public}s Assertion Failed: self->_handledLinkReadBufferBytes == self->_filledInLinkReadBufferBytes");
            goto LABEL_560;
          }

          *(v2 + 2015) |= 0x400000000uLL;
          if (gNRPacketLoggingEnabled == 1)
          {
            v298 = _NRCopyLogObjectForNRUUID();
            v299 = _NRLogIsLevelEnabled();

            if (v299)
            {
              v300 = _NRCopyLogObjectForNRUUID();
              v301 = [v2 copyDescription];
              _NRLogWithArgs(v300, 1, "%s%.30s:%-4d %@: resetting the linkReadBuffer (filledIn=%u)", "", "NRLinkLinkToNexusLoop", 6274, v301, *&v2[v14[426]]);
            }
          }

          *&v2[v14[426]] = 0;
LABEL_415:
          *&v2[v15[427]] = 0;
        }

        else
        {
          if (v263 > *(v2 + 323))
          {
            *(v2 + 2015) |= 0x80000000uLL;
            if (gNRPacketLoggingEnabled == 1)
            {
              v302 = _NRCopyLogObjectForNRUUID();
              v303 = _NRLogIsLevelEnabled();

              if (v303)
              {
                v304 = _NRCopyLogObjectForNRUUID();
                v305 = [v2 copyDescription];
                _NRLogWithArgs(v304, 1, "%s%.30s:%-4d %@: memmoving the linkReadBuffer by handled=%u (filledIn=%u) thresh=%u", "", "NRLinkLinkToNexusLoop", 6254, v305, *&v2[v15[427]], *&v2[v14[426]], *(v2 + 323));
              }
            }

            v264 = *&v2[v15[427]];
            memmove(*(v2 + 1455), (*(v2 + 1455) + v264), (*&v2[v14[426]] - v264));
            *&v2[v14[426]] -= *&v2[v15[427]];
            goto LABEL_415;
          }

          v271 = *(v2 + 2015);
          if (v263)
          {
            *(v2 + 2015) = v271 | &_mh_execute_header;
            if (gNRPacketLoggingEnabled == 1)
            {
              v272 = _NRCopyLogObjectForNRUUID();
              v273 = _NRLogIsLevelEnabled();

              if (v273)
              {
                v274 = _NRCopyLogObjectForNRUUID();
                v275 = [v2 copyDescription];
                _NRLogWithArgs(v274, 1, "%s%.30s:%-4d %@: not memmoving the linkReadBuffer thresh handled=%u filledIn=%u thresh=%u", "", "NRLinkLinkToNexusLoop", 6263, v275, *&v2[v15[427]], *&v2[v14[426]], *(v2 + 323));
                goto LABEL_439;
              }
            }
          }

          else
          {
            *(v2 + 2015) = v271 | 0x200000000;
            if (gNRPacketLoggingEnabled == 1)
            {
              v276 = _NRCopyLogObjectForNRUUID();
              v277 = _NRLogIsLevelEnabled();

              if (v277)
              {
                v274 = _NRCopyLogObjectForNRUUID();
                v275 = [v2 copyDescription];
                _NRLogWithArgs(v274, 1, "%s%.30s:%-4d %@: not memmoving the linkReadBuffer zero handled=%u filledIn=%u thresh=%u", "", "NRLinkLinkToNexusLoop", 6269, v275, *&v2[v15[427]], *&v2[v14[426]], *(v2 + 323));
LABEL_439:
              }
            }
          }
        }

        *(v2 + 2015) |= 0x800000000uLL;
        if (gNRPacketLoggingEnabled == 1)
        {
          v282 = _NRCopyLogObjectForNRUUID();
          v283 = _NRLogIsLevelEnabled();

          if (v283)
          {
            v284 = _NRCopyLogObjectForNRUUID();
            v285 = [v2 copyDescription];
            _NRLogWithArgs(v284, 1, "%s%.30s:%-4d %@: advancing past linkInputSlot=%p and syncing link input", "", "NRLinkLinkToNexusLoop", 6278, v285, *(&v614 + 1));
          }
        }

        if (gNRPacketLoggingEnabled == 1)
        {
          v286 = +[NSDate date];
          v287 = *(v2 + 1823);
          *(v2 + 1823) = v286;
        }

        os_channel_advance_slot();
        os_channel_sync();
        ++*(v2 + 1567);
      }

      if (v614)
      {
        if (*(v2 + 455))
        {
          *(v2 + 2015) |= 0x1000000000uLL;
          if (gNRPacketLoggingEnabled == 1)
          {
            v288 = _NRCopyLogObjectForNRUUID();
            v289 = _NRLogIsLevelEnabled();

            if (v289)
            {
              v290 = _NRCopyLogObjectForNRUUID();
              v291 = [v2 copyDescription];
              _NRLogWithArgs(v290, 1, "%s%.30s:%-4d %@: advancing past nexusOutputSlot=%p and syncing nexus output", "", "NRLinkLinkToNexusLoop", 6289, v291, v614);
            }
          }

          if (gNRPacketLoggingEnabled == 1)
          {
            v292 = +[NSDate date];
            v293 = *(v2 + 1815);
            *(v2 + 1815) = v292;
          }

          os_channel_advance_slot();
          os_channel_sync();
          if (gNRPacketLoggingEnabled == 1)
          {
            v294 = _NRCopyLogObjectForNRUUID();
            v295 = _NRLogIsLevelEnabled();

            if (v295)
            {
              v296 = _NRCopyLogObjectForNRUUID();
              v297 = [v2 copyDescription];
              _NRLogWithArgs(v296, 1, "%s%.30s:%-4d %@: Read %llu packets, %llu bytes", "", "NRLinkLinkToNexusLoop", 6293, v297, v607, v608);
            }
          }

          ++*(v2 + 551);
        }

        else
        {
          v278 = _NRCopyLogObjectForNRUUID();
          v279 = _NRLogIsLevelEnabled();

          if (v279)
          {
            v280 = _NRCopyLogObjectForNRUUID();
            v281 = [v2 copyDescription];
            _NRLogWithArgs(v280, 17, "%@: Tried to sync nexus output but _nexusOutputRing is NULL", v281);
          }
        }
      }

      if (*(v2 + 2015) && *(v2 + 2023))
      {
        v2[298] = v2[298] % v2[297];
        v265 = *(v2 + 2023);
        v266 = (v265 + 8 * v2[298]);
        if ((v266 + 1) <= v265 + 8 * v2[297])
        {
          if ((v266 & 7) == 0)
          {
            *v266 = *(v2 + 2015);
            ++v2[298];
            *(v2 + 2015) = 0;
          }
        }

        else
        {
          v267 = _NRCopyLogObjectForNRUUID();
          v268 = _NRLogIsLevelEnabled();

          if (v268)
          {
            v269 = _NRCopyLogObjectForNRUUID();
            v270 = [v2 copyDescription];
            _NRLogWithArgs(v269, 17, "%@: invalid index for link log list (curIdx: %u)", v270, v2[298]);
          }
        }
      }

      v12 = &OBJC_IVAR___BTPResolver__sdRefResolve;
      v2[260] = v620 & 1;
      if (v614 == 0)
      {
        goto LABEL_12;
      }

      goto LABEL_17;
    }

    v163 = v615;
    if (v612 > v611)
    {
      if (gNRPacketLoggingEnabled == 1)
      {
        v232 = v162;
        v233 = _NRCopyLogObjectForNRUUID();
        v234 = _NRLogIsLevelEnabled();

        v162 = v232;
        v163 = v615;
        if (v234)
        {
          v235 = _NRCopyLogObjectForNRUUID();
          v236 = [v2 copyDescription];
          _NRLogWithArgs(v235, 1, "%s%.30s:%-4d %@: Advancing linkReadBuffer handled by %u handled=%u filledIn=%u", "", "NRLinkLinkToNexusLoop", 6120, v236, DWORD2(v644), *(v2 + 375), *(v2 + 371));

          v162 = v232;
          v163 = v615;
        }
      }

      *(v2 + 375) += DWORD2(v644);
    }

    v164 = &OBJC_IVAR___BTPResolver__sdRefResolve;
    if (v163 > 99)
    {
      if (v163 <= 102)
      {
        if (v163 == 100)
        {
          v165 = &OBJC_IVAR___NRLinkBluetooth__recvKnownIPv6Hdr_ESP;
        }

        else if (v163 == 101)
        {
          v165 = &OBJC_IVAR___NRLinkBluetooth__recvKnownIPv6Hdr_ESP_ECT0;
        }

        else
        {
          v165 = &OBJC_IVAR___NRLinkBluetooth__recvKnownIPv6Hdr_TCP;
        }

LABEL_305:
        ++*&v2[*v165];
        v194 = *(v2 + 311);
        v623 = v162;
        if (v194)
        {
          *v628 = 503316480;
        }

        v195 = v618;
        v196 = nrTLVToPacket();
        if (v196)
        {
          v197 = v196;
          *&v2[v624] |= 0x8000000uLL;
          WORD1(v627) = *(v2 + 311) + v196;
          if (gNRPacketLoggingEnabled == 1)
          {
            ESPSequenceNumberFromPacket = getESPSequenceNumberFromPacket();
            if (gNRPacketLoggingEnabled)
            {
              v237 = _NRCopyLogObjectForNRUUID();
              v238 = _NRLogIsLevelEnabled();

              v2 = v621;
              if (v238)
              {
                v239 = _NRCopyLogObjectForNRUUID();
                v240 = [v2 copyDescription];
                _NRLogWithArgs(v239, 1, "%s%.30s:%-4d %@: Received ESP sequence number: %u", "", "NRLinkLinkToNexusLoop", 6181, v240, ESPSequenceNumberFromPacket);
              }

              v16 = v625;
            }
          }

          else
          {
            ESPSequenceNumberFromPacket = 0;
          }

          v179 = v623;
          packet = os_channel_slot_get_packet();
          if (v620)
          {
            memset(v643, 0, sizeof(v643));
            v642 = 1;
            if (packet)
            {
              os_packet_set_flow_uuid();
              *&v2[v624] |= 0x10000000uLL;
              if (gNRPacketLoggingEnabled == 1)
              {
                v241 = _NRCopyLogObjectForNRUUID();
                v242 = _NRLogIsLevelEnabled();

                if (v242)
                {
                  v243 = _NRCopyLogObjectForNRUUID();
                  v244 = [v2 copyDescription];
                  _NRLogWithArgs(v243, 1, "%s%.30s:%-4d %@: Set waking metadata for packet w/ ESP sequence number: %u", "", "NRLinkLinkToNexusLoop", 6189, v244, ESPSequenceNumberFromPacket);
                }
              }
            }

            v200 = getESPSequenceNumberFromPacket();
            ESPSPIFromPacket = getESPSPIFromPacket();
            if (qword_100229268 != -1)
            {
              dispatch_once(&qword_100229268, &stru_1001FC3A0);
            }

            v202 = qword_100229260;
            v637 = _NSConcreteStackBlock;
            v638 = 3221225472;
            v639 = sub_1000922D0;
            v640 = &unk_1001FCDD8;
            v641 = __PAIR64__(v200, ESPSPIFromPacket);
            dispatch_async(v202, &v637);

            v16 = v625;
          }

          else if (packet)
          {
            os_packet_clear_flow_uuid();
          }

          os_channel_set_slot_properties();
          LODWORD(v620) = 0;
          ++*(v2 + 567);
          *(v2 + 583) += v197;
          ++v607;
          v608 += v197;
        }

        else
        {
          v203 = _NRCopyLogObjectForNRUUID();
          v204 = _NRLogIsLevelEnabled();

          if (v204)
          {
            v205 = _NRCopyLogObjectForNRUUID();
            v206 = [v2 copyDescription];
            v207 = createStringFromNRTLVType();
            _NRLogWithArgs(v205, 17, "%@: failed to reinject %@ tlvLen=%u slotLen=%u", v206, v207, v195, WORD1(v627));

            v16 = v625;
          }

          v179 = v614;
        }

LABEL_352:
        v164 = &OBJC_IVAR___BTPResolver__sdRefResolve;
        goto LABEL_353;
      }

      switch(v163)
      {
        case 'g':
          v165 = &OBJC_IVAR___NRLinkBluetooth__recvKnownIPv6Hdr_TCP_ECT0;
          goto LABEL_305;
        case 'h':
          v165 = &OBJC_IVAR___NRLinkBluetooth__recvKnownIPv6Hdr_ESP_ClassC;
          goto LABEL_305;
        case 'i':
          v165 = &OBJC_IVAR___NRLinkBluetooth__recvKnownIPv6Hdr_ESP_ClassC_ECT0;
          goto LABEL_305;
      }

      goto LABEL_281;
    }

    if (v163 <= 2)
    {
      if (v163 == 1)
      {
        v180 = _NRCopyLogObjectForNRUUID();
        v181 = _NRLogIsLevelEnabled();

        if (v181)
        {
          v182 = _NRCopyLogObjectForNRUUID();
          v183 = [v2 copyDescription];
          _NRLogWithArgs(v182, 1, "%s%.30s:%-4d %@: Handling PadN %u", "", "NRLinkLinkToNexusLoop", 6149, v183, v618);
        }

        v179 = v614;
        goto LABEL_352;
      }

      v165 = &OBJC_IVAR___NRLinkBluetooth__recvUncompressedIP;
      if (v163 == 2)
      {
        goto LABEL_305;
      }

LABEL_281:
      v179 = v614;
      goto LABEL_353;
    }

    if (v163 == 3)
    {
      v165 = &OBJC_IVAR___NRLinkBluetooth__recvEncapsulated6LoWPAN;
      goto LABEL_305;
    }

    if (v163 != 4)
    {
      if (v163 != 5)
      {
        goto LABEL_281;
      }

      if (v616 == 1 && (DWORD2(v644) - 5) <= 0xFFFA)
      {
        sub_100096BD0(v2, (v644 + 3), (WORD4(v644) - 5));
        v179 = v614;
        goto LABEL_353;
      }

      v208 = v618;
      if (v618)
      {
        v209 = malloc_type_malloc(v617, 0x6526958AuLL);
        if (v209)
        {
          if (!v616)
          {
            goto LABEL_503;
          }

          v210 = v209;
          v623 = v605;
          v211 = 0;
          v212 = v208;
          v213 = v616;
          v214 = 3;
          v215 = v610;
          while (1)
          {
            v216 = *v215;
            if (v214)
            {
              if (v214 > v216)
              {
                v214 -= v216;
                goto LABEL_331;
              }

              if (v214 >= v216)
              {
                v214 = 0;
                goto LABEL_331;
              }
            }

            v217 = v216 - v214;
            if (v217 >= v208 - v211)
            {
              v218 = v208 - v211;
            }

            else
            {
              v218 = v217;
            }

            memcpy(&v210[v211], (*(v215 - 1) + v214), v218);
            v211 = (v218 + v211);
            if (v211 >= v208)
            {
              v16 = v625;
LABEL_350:
              if (v211 == v208)
              {
                sub_100096BD0(v2, v210, v208);
                free(v210);
                v179 = v614;
                v14 = &OBJC_IVAR___BTPResolver__sdRefResolve;
                goto LABEL_352;
              }

              v573 = sub_10007CF34();
              v574 = _NRLogIsLevelEnabled();

              if (v574)
              {
                v575 = sub_10007CF34();
                v576 = createIOVecString();
                _NRLogWithArgs(v575, 16, "%s%.30s:%-4d ABORTING: Assertion Failed: bytesWritten == length; bytesWritten (%u) != length (%u), offset: %u, ioVec: %@", "", "nrWriteIOVecToBuffer", 342, v211, v212, 3, v576);
              }

              v577 = _os_log_pack_size();
              v578 = v605 - ((__chkstk_darwin() + 15) & 0xFFFFFFFFFFFFFFF0);
              v579 = __error();
              v580 = _os_log_pack_fill(v578, v577, *v579, &_mh_execute_header, "%{public}s Assertion Failed: bytesWritten == length; bytesWritten (%u) != length (%u), offset: %u, ioVec: %@");
              v435 = createIOVecString();
              v436 = v580;
              v437 = v211;
              v438 = v212;
LABEL_587:
              v439 = 3;
LABEL_513:
              sub_100050120(v436, "nrWriteIOVecToBuffer", v437, v438, v439, v435);
LABEL_541:

LABEL_542:
              sub_10007CF34();
              _NRLogAbortWithPack();
LABEL_543:
              v491 = sub_10007CF34();
              v492 = _NRLogIsLevelEnabled();

              if (v492)
              {
                v467 = sub_10007CF34();
                _NRLogWithArgs(v467, 16, "%s%.30s:%-4d checksum failed disjoint IOVec received 0x%02x%02x != computed 0x%02x%02x", "");
LABEL_545:
              }

              goto LABEL_546;
            }

            v214 = 0;
            v16 = v625;
LABEL_331:
            v215 += 4;
            if (!--v213)
            {
              goto LABEL_350;
            }
          }
        }

        v594 = sub_10007CF34();
        v595 = _NRLogIsLevelEnabled();

        if (v595)
        {
          v596 = sub_10007CF34();
          _NRLogWithArgs(v596, 16, "%s%.30s:%-4d ABORTING: strict allocator failed", "", "NRLinkLinkToNexusLoop", 6235);
        }

        v597 = _os_log_pack_size();
        v598 = v605 - ((__chkstk_darwin() + 15) & 0xFFFFFFFFFFFFFFF0);
        v599 = *__error();
        v418 = _os_log_pack_fill(v598, v597, v599, &_mh_execute_header, "%{public}s strict allocator failed");
      }

      else
      {
        v567 = sub_10007CF34();
        v568 = _NRLogIsLevelEnabled();

        if (v568)
        {
          v569 = sub_10007CF34();
          _NRLogWithArgs(v569, 16, "%s%.30s:%-4d ABORTING: strict_malloc called with size 0", "", "NRLinkLinkToNexusLoop", 6235);
        }

        v570 = _os_log_pack_size();
        v571 = v605 - ((__chkstk_darwin() + 15) & 0xFFFFFFFFFFFFFFF0);
        v572 = *__error();
        v418 = _os_log_pack_fill(v571, v570, v572, &_mh_execute_header, "%{public}s strict_malloc called with size 0");
      }

      *v418 = 136446210;
      v419 = "NRLinkLinkToNexusLoop";
      goto LABEL_509;
    }

    v184 = v618;
    if (!v618)
    {
      v220 = objc_alloc_init(NSData);
      goto LABEL_344;
    }

    v185 = malloc_type_malloc(v617, 0x87367FC4uLL);
    if (!v185)
    {
      v588 = sub_10007CF34();
      v589 = _NRLogIsLevelEnabled();

      v347 = "createNSDataFromTLVIOVec";
      if (v589)
      {
        v590 = sub_10007CF34();
        _NRLogWithArgs(v590, 16, "%s%.30s:%-4d ABORTING: strict allocator failed", "", "createNSDataFromTLVIOVec", 423);
      }

      v591 = _os_log_pack_size();
      v592 = v605 - ((__chkstk_darwin() + 15) & 0xFFFFFFFFFFFFFFF0);
      v593 = *__error();
      v352 = _os_log_pack_fill(v592, v591, v593, &_mh_execute_header, "%{public}s strict allocator failed");
      goto LABEL_482;
    }

    if (!v616)
    {
      goto LABEL_503;
    }

    v186 = v185;
    v187 = 0;
    v188 = v616;
    v189 = 3;
    v190 = v610;
    while (1)
    {
      v191 = *v190;
      if (!v189)
      {
        break;
      }

      if (v189 <= v191)
      {
        if (v189 >= v191)
        {
          v189 = 0;
          goto LABEL_290;
        }

        break;
      }

      v189 -= v191;
LABEL_290:
      v190 += 4;
      if (!--v188)
      {
        goto LABEL_342;
      }
    }

    v192 = v191 - v189;
    if (v192 >= v184 - v187)
    {
      v193 = (v184 - v187);
    }

    else
    {
      v193 = v192;
    }

    memcpy(&v186[v187], (*(v190 - 1) + v189), v193);
    v187 = (v193 + v187);
    if (v187 < v184)
    {
      v189 = 0;
      v16 = v625;
      goto LABEL_290;
    }

    v16 = v625;
LABEL_342:
    if (v187 != v184)
    {
      v552 = sub_10007CF34();
      v553 = _NRLogIsLevelEnabled();

      if (v553)
      {
        v554 = sub_10007CF34();
        v555 = createIOVecString();
        _NRLogWithArgs(v554, 16, "%s%.30s:%-4d ABORTING: Assertion Failed: bytesWritten == length; bytesWritten (%u) != length (%u), offset: %u, ioVec: %@", "", "nrWriteIOVecToBuffer", 342, v187, v184, 3, v555);
      }

      v556 = _os_log_pack_size();
      v557 = v605 - ((__chkstk_darwin() + 15) & 0xFFFFFFFFFFFFFFF0);
      v558 = __error();
      v559 = _os_log_pack_fill(v557, v556, *v558, &_mh_execute_header, "%{public}s Assertion Failed: bytesWritten == length; bytesWritten (%u) != length (%u), offset: %u, ioVec: %@");
      v435 = createIOVecString();
      v436 = v559;
      v437 = v187;
      v438 = v184;
      goto LABEL_587;
    }

    v219 = [NSData alloc];
    v220 = [v219 initWithBytesNoCopy:v186 length:v617 freeWhenDone:1];
    v13 = "NRLinkLinkToNexusLoop";
    v14 = &OBJC_IVAR___BTPResolver__sdRefResolve;
LABEL_344:
    v164 = &OBJC_IVAR___BTPResolver__sdRefResolve;
    if (v620)
    {
      [v220 bytes];
      [v220 length];
      if (qword_100229268 != -1)
      {
        dispatch_once(&qword_100229268, &stru_1001FC3A0);
      }

      v221 = qword_100229260;
      v637 = _NSConcreteStackBlock;
      v638 = 3221225472;
      v639 = sub_1000922D0;
      v640 = &unk_1001FCDD8;
      v641 = 0;
      dispatch_async(v221, &v637);

      v164 = &OBJC_IVAR___BTPResolver__sdRefResolve;
    }

    *&v2[v624] |= 0x20000000uLL;
    sub_100094EDC(v2, v220);

    LODWORD(v620) = 0;
    v179 = v614;
LABEL_353:
    v17 = v619;
    *&v2[v624] |= 0x40000000uLL;
    if (*(v2 + 2015) && *&v2[v164[485]])
    {
      v2[298] = v2[298] % v2[297];
      v222 = *&v2[v164[485]];
      v223 = (v222 + 8 * v2[298]);
      if ((v223 + 1) <= v222 + 8 * v2[297])
      {
        if ((v223 & 7) == 0)
        {
          *v223 = *(v2 + 2015);
          ++v2[298];
          *(v2 + 2015) = 0;
        }
      }

      else
      {
        v224 = _NRCopyLogObjectForNRUUID();
        v225 = _NRLogIsLevelEnabled();

        if (v225)
        {
          v226 = _NRCopyLogObjectForNRUUID();
          v227 = [v2 copyDescription];
          _NRLogWithArgs(v226, 17, "%@: invalid index for link log list (curIdx: %u)", v227, v2[298]);
        }
      }

      *&v614 = v179;
      v15 = &OBJC_IVAR___BTPResolver__sdRefResolve;
      v17 = v619;
    }

    else
    {
      *&v614 = v179;
      v15 = &OBJC_IVAR___BTPResolver__sdRefResolve;
    }
  }

  LOWORD(v627) = 0;
  if (!v47)
  {
LABEL_503:
    v412 = sub_10007CF34();
    v413 = _NRLogIsLevelEnabled();

    if (v413)
    {
      v414 = sub_10007CF34();
      _NRLogWithArgs(v414, 16, "%s%.30s:%-4d ABORTING: Assertion Failed: numIOVecs > 0", "", "nrWriteIOVecToBuffer", 313);
    }

    v415 = _os_log_pack_size();
    v416 = v605 - ((__chkstk_darwin() + 15) & 0xFFFFFFFFFFFFFFF0);
    v417 = __error();
    v418 = _os_log_pack_fill(v416, v415, *v417, &_mh_execute_header, "%{public}s Assertion Failed: numIOVecs > 0");
    *v418 = 136446210;
    v419 = "nrWriteIOVecToBuffer";
    goto LABEL_509;
  }

  v613 = v605;
  v135 = 0;
  v136 = bswap32(v132);
  v47 = v47;
  v137 = v610;
  v609 = v132 + 3;
  v138 = v132 + 3;
  v139 = (v73 >> 4) ^ HIWORD(v136);
  v140 = (16 * v73) ^ HIBYTE(v136);
  while (1)
  {
    v141 = *v137;
    if (!v138)
    {
      break;
    }

    if (v138 <= v141)
    {
      if (v138 >= v141)
      {
        v138 = 0;
        goto LABEL_200;
      }

      break;
    }

    v138 -= v141;
LABEL_200:
    v137 += 4;
    if (!--v47)
    {
      goto LABEL_241;
    }
  }

  v142 = v141 - v138;
  if (v142 >= 2 - v135)
  {
    v143 = (2 - v135);
  }

  else
  {
    v143 = v142;
  }

  memcpy(&v627 + v135, (*(v137 - 1) + v138), v143);
  v135 = (v143 + v135);
  if (v135 <= 1)
  {
    v138 = 0;
    v16 = v625;
    goto LABEL_200;
  }

  v16 = v625;
LABEL_241:
  if (v135 != 2)
  {
    v426 = sub_10007CF34();
    v427 = _NRLogIsLevelEnabled();

    v428 = v609;
    if (v427)
    {
      v429 = sub_10007CF34();
      v430 = createIOVecString();
      _NRLogWithArgs(v429, 16, "%s%.30s:%-4d ABORTING: Assertion Failed: bytesWritten == length; bytesWritten (%u) != length (%u), offset: %u, ioVec: %@", "", "nrWriteIOVecToBuffer", 342, v135, 2, v428, v430);
    }

    v431 = _os_log_pack_size();
    v432 = v605 - ((__chkstk_darwin() + 15) & 0xFFFFFFFFFFFFFFF0);
    v433 = __error();
    v434 = _os_log_pack_fill(v432, v431, *v433, &_mh_execute_header, "%{public}s Assertion Failed: bytesWritten == length; bytesWritten (%u) != length (%u), offset: %u, ioVec: %@");
    v435 = createIOVecString();
    v436 = v434;
    v437 = v135;
    v438 = 2;
    v439 = v428;
    goto LABEL_513;
  }

  v161 = v627 == (v139 | (v140 << 8));
  v13 = "NRLinkLinkToNexusLoop";
  v160 = v616;
  if (v161)
  {
    goto LABEL_244;
  }

LABEL_547:
  v493 = *(v2 + 2007);
  v494 = v618;
  if (v493)
  {
    v493[105] = 1;
  }

  v495 = _NRCopyLogObjectForNRUUID();
  v496 = _NRLogIsLevelEnabled();

  if (v496)
  {
    v624 = _NRCopyLogObjectForNRUUID();
    v622 = [v2 copyDescription];
    v497 = createStringFromNRTLVType();
    v626 = v494;
    v620 = *(v621 + 371);
    v498 = *(v621 + 375);
    v499 = createIOVecString();
    v625 = v16;
    v603 = v16;
    v601 = v498;
    v2 = v621;
    v600 = v494;
    v500 = v622;
    v501 = v624;
    _NRLogWithArgs(v624, 17, "%@: Invalid checksum detected in loop on read type %@ len %u filledIn=%u handled=%u in %@ ioVecContentLen=%u alreadyRead=%u curLinkInputSlot=%p", v622, v497, v600, v620, v601, v499, v623, v603, v619);
  }

  else
  {
    v626 = v494;
    v625 = v16;
  }

  StringFromNRTLVType = createStringFromNRTLVType();
  IOVecStringWithContents = createIOVecString();
  sub_100080EB4(v2, @"Invalid checksum detected in loop on read type %@ len %u filledIn=%u handled=%u in %@ ioVecContentLen=%u alreadyRead=%u curLinkInputSlot=%p", v502, v503, v504, v505, v506, v507, StringFromNRTLVType);
LABEL_10:

LABEL_11:
LABEL_12:
}