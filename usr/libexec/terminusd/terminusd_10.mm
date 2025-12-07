id sub_1000EC630(uint64_t a1)
{
  if (a1)
  {
    dispatch_assert_queue_V2(*(a1 + 136));
    objc_opt_self();
    if (qword_1002290C0 != -1)
    {
      dispatch_once(&qword_1002290C0, &stru_1001FB2B0);
    }

    v1 = qword_1002290B8;
    v2 = v1;
    if (v1)
    {
      v3 = *(v1 + 6);
    }

    else
    {
      v3 = 0;
    }

    v4 = v3;
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

void sub_1000EC6D4(uint64_t a1, void *a2)
{
  v10 = a2;
  dispatch_assert_queue_V2(*(a1 + 136));
  if (([*(a1 + 168) isEqual:v10] & 1) == 0)
  {
    v4 = _NRCopyLogObjectForNRUUID();
    IsLevelEnabled = _NRLogIsLevelEnabled();

    if (IsLevelEnabled)
    {
      v6 = *(a1 + 96);
      v7 = _NRCopyLogObjectForNRUUID();
      _NRLogWithArgs(v7, 1, "%s%.30s:%-4d Setting last sent WiFi endpoint: %@ --> %@", "", "[NRDDeviceConductor setLastSentWiFiEndpoint:]", 2369, *(a1 + 168), v10);
    }

    objc_storeStrong((a1 + 168), a2);
    v8 = *(a1 + 96);
    v9 = [v10 addressData];
    sub_1000B7458(v8, @"WiFiEndpointAddressData", v9);
  }
}

void sub_1000EC804(uint64_t a1, void *a2)
{
  v8 = a2;
  dispatch_assert_queue_V2(*(a1 + 136));
  if (([*(a1 + 176) isEqualToData:v8] & 1) == 0)
  {
    v4 = _NRCopyLogObjectForNRUUID();
    IsLevelEnabled = _NRLogIsLevelEnabled();

    if (IsLevelEnabled)
    {
      v6 = *(a1 + 96);
      v7 = _NRCopyLogObjectForNRUUID();
      _NRLogWithArgs(v7, 1, "%s%.30s:%-4d Setting last sent WiFi signature: %@ --> %@", "", "[NRDDeviceConductor setLastSentWiFiSignature:]", 2405, *(a1 + 176), v8);
    }

    objc_storeStrong((a1 + 176), a2);
    sub_1000B7458(*(a1 + 96), @"WiFiSignature", *(a1 + 176));
  }
}

void sub_1000EC910(uint64_t a1, int a2, void *a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  if (a1)
  {
    v11 = a3;
    v12 = [[NSString alloc] initWithFormat:v11 arguments:&a9];

    sub_1000059A8(*(a1 + 96), a2, 0, v12);
  }
}

void sub_1000EC998(uint64_t a1, void *a2)
{
  v28 = a2;
  if (v28)
  {
    dispatch_assert_queue_V2(*(a1 + 136));
    objc_opt_self();
    if (qword_1002290C0 != -1)
    {
      dispatch_once(&qword_1002290C0, &stru_1001FB2B0);
    }

    v3 = qword_1002290B8;
    v4 = v3;
    if (v3)
    {
      v5 = *(v3 + 6);
    }

    else
    {
      v5 = 0;
    }

    v6 = v5;

    if (v6)
    {
      v7 = v6[8];
    }

    else
    {
      v7 = 0;
    }

    v8 = v7;

    LOBYTE(v32) = v8 != 0;
    v9 = [[NSData alloc] initWithBytes:&v32 length:1];
    sub_10002AB38(v28, 10, v9);

    if (!v8)
    {
      goto LABEL_30;
    }

    v10 = [v8 port];
    sub_10002B038(v28, v8, [v10 intValue], 1);

    v11 = v28;
    if (*(a1 + 49) != 1 || *(a1 + 45) != 1)
    {
      goto LABEL_29;
    }

    v12 = v11;
    dispatch_assert_queue_V2(*(a1 + 136));
    objc_opt_self();
    if (qword_1002290C0 != -1)
    {
      dispatch_once(&qword_1002290C0, &stru_1001FB2B0);
    }

    v13 = qword_1002290B8;
    v14 = v13;
    if (v13)
    {
      v15 = *(v13 + 6);
    }

    else
    {
      v15 = 0;
    }

    v16 = v15;

    if (!v16)
    {
      v23 = 0;
      goto LABEL_27;
    }

    v17 = v16[3];
    dispatch_assert_queue_V2(v17);

    v32 = 0;
    v33 = &v32;
    v34 = 0x3032000000;
    v35 = sub_10017AF00;
    v36 = sub_10017AF10;
    v37 = 0;
    v18 = v16[22];
    v29[0] = _NSConcreteStackBlock;
    v29[1] = 3221225472;
    v29[2] = sub_10017FC20;
    v29[3] = &unk_1001FD128;
    v31 = &v32;
    v19 = v18;
    v30 = v19;
    if (sub_10017AE24(NRLinkManagerWiFi, v29))
    {
      v26 = sub_1001762F4();
      IsLevelEnabled = _NRLogIsLevelEnabled();

      if (!IsLevelEnabled)
      {
LABEL_24:
        v23 = v33[5];

        _Block_object_dispose(&v32, 8);
        if (!v23 || ![v23 compare:@"XZ" options:1])
        {
          goto LABEL_28;
        }

        v16 = [v23 dataUsingEncoding:4];
        sub_10002AB38(v12, 15, v16);
LABEL_27:

LABEL_28:
        v11 = v12;
LABEL_29:

LABEL_30:
        goto LABEL_31;
      }

      v22 = sub_1001762F4();
      _NRLogWithArgs(v22, 16, "%s%.30s:%-4d timed out getting country code", "", "[NRLinkManagerWiFi getDeviceCountryCode]", 2021);
    }

    else
    {
      if (qword_1002294A8 != -1)
      {
        dispatch_once(&qword_1002294A8, &stru_1001FD210);
      }

      v20 = qword_1002294A0;
      v21 = _NRLogIsLevelEnabled();

      if ((v21 & 1) == 0)
      {
        goto LABEL_24;
      }

      if (qword_1002294A8 != -1)
      {
        dispatch_once(&qword_1002294A8, &stru_1001FD210);
      }

      v22 = qword_1002294A0;
      _NRLogWithArgs(v22, 1, "%s%.30s:%-4d retrieved country code", "", "[NRLinkManagerWiFi getDeviceCountryCode]", 2019);
    }

    goto LABEL_24;
  }

  v24 = sub_1000E83DC();
  v25 = _NRLogIsLevelEnabled();

  if (v25)
  {
    v8 = sub_1000E83DC();
    _NRLogWithArgs(v8, 17, "%s called with null message", "[NRDDeviceConductor addAWDLEndpointToMessage:]");
    goto LABEL_30;
  }

LABEL_31:
}

void sub_1000ECE14(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, ...)
{
  va_start(va, a18);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1000ECE2C(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  if (WeakRetained)
  {
    v4 = WeakRetained;
    v3 = WeakRetained[6];
    v3[2]();

    *(v4 + 12) = 1;
    sub_1000ECEAC(*(a1 + 32), v4);
    WeakRetained = v4;
  }
}

void sub_1000ECEAC(uint64_t a1, void *a2)
{
  v3 = a2;
  if (a1)
  {
    v7 = v3;
    dispatch_assert_queue_V2(*(a1 + 136));
    v4 = _NRCopyLogObjectForNRUUID();
    IsLevelEnabled = _NRLogIsLevelEnabled();

    if (IsLevelEnabled)
    {
      v6 = _NRCopyLogObjectForNRUUID();
      _NRLogWithArgs(v6, 1, "%s%.30s:%-4d Removing request: %@", "", "[NRDDeviceConductor removeRequest:]", 2986, v7);
    }

    [*(a1 + 152) removeObject:v7];
    v3 = v7;
  }
}

void sub_1000ECF74(uint64_t a1, unsigned int a2, int a3)
{
  if (!a1)
  {
    return;
  }

  if (sub_1000ED8A4(a1))
  {
    if (a3 > 103)
    {
      switch(a3)
      {
        case 'y':
          LOBYTE(v6) = 8;
          goto LABEL_26;
        case 'x':
          LOBYTE(v6) = 1;
          goto LABEL_26;
        case 'h':
          LOBYTE(v6) = 7;
          goto LABEL_26;
      }
    }

    else
    {
      switch(a3)
      {
        case 'e':
          LOBYTE(v6) = 2;
          goto LABEL_26;
        case 'f':
          LOBYTE(v6) = 5;
          goto LABEL_26;
        case 'g':
          LOBYTE(v6) = 6;
          goto LABEL_26;
      }
    }

    if (a2 <= 5)
    {
      v6 = 0x40300020100uLL >> (8 * (a2 & 0x1F));
      if ((v6 & 7) != 0)
      {
LABEL_26:
        v11 = sub_100163A30(NRDLocalDevice, *(a1 + 96));
        v12 = v11;
        if (*(a1 + 70) != 1 || !v11)
        {
          goto LABEL_38;
        }

        v13 = *(v11 + 48);
        if ((v13 & 0x20) != 0)
        {
          LOBYTE(v15) = 1;
          if ((v13 & 0x1000) == 0)
          {
            goto LABEL_38;
          }
        }

        else
        {
          v14 = (v13 & 0x10) != 0 || *(v11 + 16) > 0x12u;
          v15 = (v13 >> 14) & 1 | v14;
          if ((v13 & 0x1000) == 0)
          {
            goto LABEL_38;
          }
        }

        if ((((*(v11 + 48) & 0x2000) != 0) & v15) == 1)
        {
          *(a1 + 70) = 0;
          v16 = *(a1 + 464);
          *(a1 + 464) = 0;

          v17 = *(a1 + 456);
          if (v17)
          {
            sub_10014F1DC(v17);
            v18 = *(a1 + 456);
            *(a1 + 456) = 0;
          }
        }

LABEL_38:
        if (*(a1 + 456))
        {
LABEL_83:

          v68 = *(a1 + 456);

          sub_10014F958(v68, v6);
          return;
        }

        if ((sub_1000ED8A4(a1) & 1) == 0)
        {
          v36 = _NRCopyLogObjectForNRUUID();
          IsLevelEnabled = _NRLogIsLevelEnabled();

          if (IsLevelEnabled)
          {
            v38 = _NRCopyLogObjectForNRUUID();
            _NRLogWithArgs(v38, 1, "%s%.30s:%-4d not eligible to use device discovery", "", "[NRDDeviceConductor startDiscoveryIfNeeded]", 8243);
          }

          goto LABEL_83;
        }

        v19 = [NRDiscoveryClient alloc];
        v20 = *(a1 + 136);
        v21 = *(a1 + 96);
        v22 = v20;
        v23 = sub_10014F018(&v19->super.isa, v22, v21);
        v24 = *(a1 + 456);
        *(a1 + 456) = v23;

        v25 = *(a1 + 456);
        if (v25)
        {
          *(v25 + 15) = 1;
          v26 = *(a1 + 456);
          if (v26)
          {
            *(v26 + 16) = 1;
          }
        }

        if (v12)
        {
          v27 = *(v12 + 144);
        }

        else
        {
          v27 = 0;
        }

        v28 = v27;
        v29 = [v28 allowedPeerDeviceType];

        if (v29 != 255)
        {
          if (v12)
          {
            v30 = *(v12 + 144);
          }

          else
          {
            v30 = 0;
          }

          v31 = v30;
          v32 = [v31 allowedPeerDeviceType];
          v33 = *(a1 + 456);
          if (v33)
          {
            *(v33 + 18) = v32;
          }
        }

        if (*(a1 + 49) == 1)
        {
          if (qword_100229238 == -1)
          {
            if (v12)
            {
LABEL_54:
              if (byte_100229230)
              {
                v34 = *(v12 + 48);
                if ((v34 & 0x20) != 0)
                {
                  LOBYTE(v39) = 1;
                }

                else
                {
                  v35 = (v34 & 0x10) != 0 || *(v12 + 16) > 0x12u;
                  v39 = (v34 >> 14) & 1 | v35;
                }

                if ((v34 & 0x1000) != 0 && (((*(v12 + 48) & 0x2000) != 0) & v39) == 1)
                {
                  v40 = *(a1 + 456);
                  if (v40)
                  {
                    *(v40 + 17) = 1;
                  }
                }
              }
            }
          }

          else
          {
            dispatch_once(&qword_100229238, &stru_1001FC340);
            if (v12)
            {
              goto LABEL_54;
            }
          }
        }

        objc_initWeak(location, a1);
        objc_initWeak(&from, *(a1 + 456));
        v41 = *(a1 + 456);
        v76[0] = _NSConcreteStackBlock;
        v76[1] = 3221225472;
        v76[2] = sub_1000ED978;
        v76[3] = &unk_1001FBB38;
        objc_copyWeak(&v77, location);
        objc_copyWeak(&v78, &from);
        v42 = v76;
        v43 = v42;
        if (v41 && (*(v41 + 19) & 1) == 0)
        {
          v44 = objc_retainBlock(v42);
          v45 = v41[9];
          v41[9] = v44;
        }

        v46 = *(a1 + 456);
        v73[0] = _NSConcreteStackBlock;
        v73[1] = 3221225472;
        v73[2] = sub_1000EDA0C;
        v73[3] = &unk_1001FBB38;
        objc_copyWeak(&v74, location);
        objc_copyWeak(&v75, &from);
        v47 = v73;
        v48 = v47;
        if (v46 && (*(v46 + 19) & 1) == 0)
        {
          v49 = objc_retainBlock(v47);
          v50 = v46[10];
          v46[10] = v49;
        }

        v51 = *(a1 + 456);
        v70[0] = _NSConcreteStackBlock;
        v70[1] = 3221225472;
        v70[2] = sub_1000EDEB4;
        v70[3] = &unk_1001FBB38;
        objc_copyWeak(&v71, location);
        objc_copyWeak(&v72, &from);
        v52 = v70;
        v53 = v52;
        if (v51 && (*(v51 + 19) & 1) == 0)
        {
          v54 = objc_retainBlock(v52);
          v55 = v51[11];
          v51[11] = v54;
        }

        v56 = *(a1 + 96);
        v57 = _NRCopyLogObjectForNRUUID();
        v58 = _NRLogIsLevelEnabled();

        if (v58)
        {
          v59 = *(a1 + 96);
          v60 = _NRCopyLogObjectForNRUUID();
          v61 = *(a1 + 456);
          v62 = v61;
          if (v61)
          {
            v63 = v61[15];
          }

          else
          {
            v63 = 0;
          }

          v64 = *(a1 + 456);
          v65 = v64;
          if (v64)
          {
            v66 = v64[16];
          }

          else
          {
            v66 = 0;
          }

          _NRLogWithArgs(v60, 0, "%s%.30s:%-4d initiating discovery for devices (a:%d/b:%d)", "", "[NRDDeviceConductor startDiscoveryIfNeeded]", 8286, v63, v66);
        }

        v67 = *(a1 + 456);
        sub_100153210(v67);

        objc_destroyWeak(&v72);
        objc_destroyWeak(&v71);
        objc_destroyWeak(&v75);
        objc_destroyWeak(&v74);
        objc_destroyWeak(&v78);
        objc_destroyWeak(&v77);
        objc_destroyWeak(&from);
        objc_destroyWeak(location);
        goto LABEL_83;
      }
    }

    v9 = _NRCopyLogObjectForNRUUID();
    v10 = _NRLogIsLevelEnabled();

    if (!v10)
    {
      return;
    }

    v69 = _NRCopyLogObjectForNRUUID();
    _NRLogWithArgs(v69, 16, "%s%.30s:%-4d invalid link type/subtype %u/%u");
  }

  else
  {
    v7 = _NRCopyLogObjectForNRUUID();
    v8 = _NRLogIsLevelEnabled();

    if (!v8)
    {
      return;
    }

    v69 = _NRCopyLogObjectForNRUUID();
    _NRLogWithArgs(v69, 16, "%s%.30s:%-4d cannot use device discovery %u/%u");
  }
}

void sub_1000ED6C4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, id a32, id a33)
{
  objc_destroyWeak((v34 + 40));
  objc_destroyWeak((v34 + 32));
  objc_destroyWeak((v33 + 40));
  objc_destroyWeak((v33 + 32));
  objc_destroyWeak(&a33);
  objc_destroyWeak(&a32);
  objc_destroyWeak((v35 - 120));
  objc_destroyWeak((v35 - 112));
  _Unwind_Resume(a1);
}

uint64_t sub_1000ED714(uint64_t a1)
{
  v1 = sub_100163A30(NRDLocalDevice, *(a1 + 96));
  if (!v1)
  {
    v9 = sub_1000E83DC();
    IsLevelEnabled = _NRLogIsLevelEnabled();

    if (IsLevelEnabled)
    {
      v11 = sub_1000E83DC();
      _NRLogWithArgs(v11, 16, "%s%.30s:%-4d ABORTING: Assertion Failed: (localDevice) != ((void*)0)", "", "[NRDDeviceConductor getPreferredLinkTypeFromConfiguration]", 580);
    }

    v12 = _os_log_pack_size();
    v13 = __error();
    v14 = _os_log_pack_fill(&v15 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0), v12, *v13, &_mh_execute_header, "%{public}s Assertion Failed: (localDevice) != ((void*)0)");
    *v14 = 136446210;
    *(v14 + 4) = "[NRDDeviceConductor getPreferredLinkTypeFromConfiguration]";
    sub_1000E83DC();
    _NRLogAbortWithPack();
  }

  v2 = v1;
  v3 = *(v1 + 144);

  if (v3)
  {
    v4 = v2[18];
    v5 = [v4 allowedLinkTypes];
    v6 = [v5 firstObject];

    v7 = [v6 unsignedShortValue];
  }

  else
  {
    v7 = 1;
  }

  return v7;
}

id sub_1000ED8A4(uint64_t a1)
{
  if (*(a1 + 14) != 1 || (*(a1 + 43) & 1) != 0)
  {
    return 0;
  }

  objc_opt_self();
  if (qword_1002290C0 != -1)
  {
    dispatch_once(&qword_1002290C0, &stru_1001FB2B0);
  }

  v2 = qword_1002290B8;
  if (v2)
  {
    v3 = v2[8];

    if (v3)
    {
      return 0;
    }
  }

  v5 = sub_100163A30(NRDLocalDevice, *(a1 + 96));
  v6 = v5;
  if (v5)
  {
    v7 = *(v5 + 144);
  }

  else
  {
    v7 = 0;
  }

  v8 = v7;
  v9 = [v8 allowsDeviceDiscovery];

  return v9;
}

void sub_1000ED978(uint64_t a1, void *a2)
{
  v6 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v4 = objc_loadWeakRetained((a1 + 40));
  if (WeakRetained && v4 && *(WeakRetained + 14) == 1 && WeakRetained[57] == v4)
  {
    v5 = v4;
    sub_1000EDF48(WeakRetained, v6);
    v4 = v5;
  }
}

void sub_1000EDA0C(uint64_t a1, void *a2)
{
  v42 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v4 = objc_loadWeakRetained((a1 + 40));
  if (WeakRetained && v4 && *(WeakRetained + 14) == 1 && *(WeakRetained + 57) == v4)
  {
    v5 = v4;
    v6 = v42;
    v7 = v6;
    if (*(WeakRetained + 58))
    {
      if (v6)
      {
        v8 = *(v6 + 2);
      }

      else
      {
        v8 = 0;
      }

      v9 = v8;
      v10 = *(WeakRetained + 58);
      if (v10)
      {
        v10 = v10[2];
      }

      v11 = v10;
      v12 = [v9 isEqualToString:v11];

      v13 = _NRCopyLogObjectForNRUUID();
      IsLevelEnabled = _NRLogIsLevelEnabled();

      if (v12)
      {
        if (IsLevelEnabled)
        {
          v15 = _NRCopyLogObjectForNRUUID();
          _NRLogWithArgs(v15, 1, "%s%.30s:%-4d lost %@", "", "[NRDDeviceConductor lostDevice:]", 8367, v7);
        }

        v16 = *(WeakRetained + 12);
        objc_opt_self();
        v17 = sub_100172CE0(NRDLocalDevice, v16, &off_100209EF0);

        if (!v17)
        {
          objc_opt_self();
          if (qword_1002290C0 != -1)
          {
            dispatch_once(&qword_1002290C0, &stru_1001FB2B0);
          }

          v18 = qword_1002290B8;
          v19 = v18;
          if (v18)
          {
            v20 = *(v18 + 8);
          }

          else
          {
            v20 = 0;
          }

          v21 = v20;
          sub_1000E6CEC(v21, 0, 0, *(WeakRetained + 12));
        }

        v22 = *(WeakRetained + 12);
        objc_opt_self();
        v23 = sub_100172CE0(NRDLocalDevice, v22, &off_100209EA8);

        if (!v23)
        {
          objc_opt_self();
          if (qword_1002290C0 != -1)
          {
            dispatch_once(&qword_1002290C0, &stru_1001FB2B0);
          }

          v24 = qword_1002290B8;
          v25 = v24;
          if (v24)
          {
            v26 = *(v24 + 6);
          }

          else
          {
            v26 = 0;
          }

          v27 = v26;
          sub_10017E570(v27, 0, *(WeakRetained + 12));
        }

        v28 = *(WeakRetained + 12);
        objc_opt_self();
        v29 = sub_100172CE0(NRDLocalDevice, v28, &off_100209ED8);

        if (!v29)
        {
          objc_opt_self();
          if (qword_1002290C0 != -1)
          {
            dispatch_once(&qword_1002290C0, &stru_1001FB2B0);
          }

          v30 = qword_1002290B8;
          v31 = v30;
          if (v30)
          {
            v32 = *(v30 + 6);
          }

          else
          {
            v32 = 0;
          }

          v33 = v32;
          sub_10017EA30(v33, 0, *(WeakRetained + 12));
        }

        v34 = *(WeakRetained + 58);
        if (v34)
        {
          v45 = 0u;
          v46 = 0u;
          v43 = 0u;
          v44 = 0u;
          v35 = [*(WeakRetained + 18) copy];
          v36 = [v35 countByEnumeratingWithState:&v43 objects:v47 count:16];
          if (v36)
          {
            v37 = v36;
            v38 = *v44;
            do
            {
              for (i = 0; i != v37; i = i + 1)
              {
                if (*v44 != v38)
                {
                  objc_enumerationMutation(v35);
                }

                v40 = *(*(&v43 + 1) + 8 * i);
                if ([v40 state] == 8)
                {
                  [v40 checkPeerAvailabilityWithForceAggressive:1];
                }
              }

              v37 = [v35 countByEnumeratingWithState:&v43 objects:v47 count:16];
            }

            while (v37);
          }

          v34 = *(WeakRetained + 58);
        }

        *(WeakRetained + 58) = 0;
      }

      else if (IsLevelEnabled)
      {
        v41 = _NRCopyLogObjectForNRUUID();
        _NRLogWithArgs(v41, 1, "%s%.30s:%-4d ignoring lost stale device %@", "", "[NRDDeviceConductor lostDevice:]", 8363, v7);
      }
    }

    v4 = v5;
  }
}

void sub_1000EDEB4(uint64_t a1, void *a2)
{
  v6 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v4 = objc_loadWeakRetained((a1 + 40));
  if (WeakRetained && v4 && *(WeakRetained + 14) == 1 && WeakRetained[57] == v4)
  {
    v5 = v4;
    sub_1000EDF48(WeakRetained, v6);
    v4 = v5;
  }
}

void sub_1000EDF48(uint64_t a1, void *a2)
{
  v4 = a2;
  v5 = _NRCopyLogObjectForNRUUID();
  IsLevelEnabled = _NRLogIsLevelEnabled();

  if (IsLevelEnabled)
  {
    v7 = *(a1 + 96);
    v8 = _NRCopyLogObjectForNRUUID();
    _NRLogWithArgs(v8, 1, "%s%.30s:%-4d discovered %@", "", "[NRDDeviceConductor discoveredDevice:]", 8292, v4);
  }

  objc_storeStrong((a1 + 464), a2);
  v185 = 0u;
  v186 = 0u;
  v183 = 0u;
  v184 = 0u;
  v9 = *(a1 + 144);
  v10 = [v9 countByEnumeratingWithState:&v183 objects:v191 count:16];
  if (v10)
  {
    v11 = v10;
    v12 = *v184;
    do
    {
      for (i = 0; i != v11; i = i + 1)
      {
        if (*v184 != v12)
        {
          objc_enumerationMutation(v9);
        }

        sub_1000EF110(a1, *(*(&v183 + 1) + 8 * i));
      }

      v11 = [v9 countByEnumeratingWithState:&v183 objects:v191 count:16];
    }

    while (v11);
  }

  if (v4)
  {
    v14 = v4[12];
    v15 = &qword_100229000;
    if (v14)
    {
      v16 = v14;
      v17 = *(a1 + 96);
      v18 = v16;
      v19 = v17;
      objc_opt_self();
      v20 = qword_100229458;
      if (!qword_100229458)
      {
        v21 = objc_alloc_init(NSMutableDictionary);
        v22 = qword_100229458;
        qword_100229458 = v21;

        v20 = qword_100229458;
      }

      [v20 setObject:v18 forKeyedSubscript:v19];

      objc_opt_self();
      if (qword_1002290C0 != -1)
      {
        dispatch_once(&qword_1002290C0, &stru_1001FB2B0);
      }

      v23 = qword_1002290B8;
      v24 = v23;
      if (v23)
      {
        v25 = *(v23 + 5);
      }

      else
      {
        v25 = 0;
      }

      v26 = v25;
      sub_100032B28(v26, v27);
    }

    v28 = sub_10014EBAC(v4, 5u, 0, 0);

    if (v28)
    {
      v29 = sub_10014EDA8(v4);
      if (v29)
      {
        v30 = v4[15];
        if (v30)
        {
          v31 = [NSNumber numberWithUnsignedChar:4];
          v30 = [v30 objectForKeyedSubscript:v31];
        }

        objc_opt_self();
        if (qword_1002290C0 != -1)
        {
          dispatch_once(&qword_1002290C0, &stru_1001FB2B0);
        }

        v32 = qword_1002290B8;
        v33 = v32;
        if (v32)
        {
          v34 = *(v32 + 8);
        }

        else
        {
          v34 = 0;
        }

        v35 = v34;
        sub_1000E6CEC(v35, v30, v29, *(a1 + 96));
      }
    }

    v36 = sub_10014EBAC(v4, 2u, 101, 0);

    if (v36)
    {
      v37 = v4[15];
      if (v37)
      {
        v38 = [NSNumber numberWithUnsignedChar:2];
        v37 = [v37 objectForKeyedSubscript:v38];
      }

      dispatch_assert_queue_V2(*(a1 + 136));
      objc_opt_self();
      if (qword_1002290C0 != -1)
      {
        dispatch_once(&qword_1002290C0, &stru_1001FB2B0);
      }

      v39 = qword_1002290B8;
      v40 = v39;
      if (v39)
      {
        v41 = *(v39 + 6);
      }

      else
      {
        v41 = 0;
      }

      v42 = v41;

      sub_10017E570(v42, v37, *(a1 + 96));
    }

    v43 = sub_10014EBAC(v4, 2u, 102, 0);

    v180 = v4;
    if (!v43)
    {
      goto LABEL_73;
    }

    dispatch_assert_queue_V2(*(a1 + 136));
    objc_opt_self();
    if (qword_1002290C0 != -1)
    {
      dispatch_once(&qword_1002290C0, &stru_1001FB2B0);
    }

    v44 = qword_1002290B8;
    v45 = v44;
    if (v44)
    {
      v46 = *(v44 + 6);
    }

    else
    {
      v46 = 0;
    }

    v47 = v46;

    if (v47)
    {
      v48 = v47[8];
      if (v48)
      {
        dispatch_assert_queue_V2(*(a1 + 136));
        objc_opt_self();
        if (qword_1002290C0 != -1)
        {
          dispatch_once(&qword_1002290C0, &stru_1001FB2B0);
        }

        v49 = qword_1002290B8;
        v50 = v49;
        if (v49)
        {
          v51 = *(v49 + 6);
        }

        else
        {
          v51 = 0;
        }

        v52 = v51;

        if (v52)
        {
          v53 = v52[8];
        }

        else
        {
          v53 = 0;
        }

        v54 = v53;
        v55 = [v54 addressFamily];

        goto LABEL_56;
      }
    }

    else
    {
      v48 = 0;
    }

    v55 = 0;
LABEL_56:

    v56 = sub_10014EBAC(v4, 2u, 102, v55);
    v57 = [v56 hostname];
    objc_opt_self();
    if (qword_100228E88 != -1)
    {
      dispatch_once(&qword_100228E88, &stru_1001FA180);
    }

    v58 = qword_100228E80;
    v59 = @"62743";
    if (!v58)
    {
      v59 = 0;
    }

    v60 = v59;
    v61 = [NWAddressEndpoint endpointWithHostname:v57 port:v60];

    v62 = [v61 hostname];
    dispatch_assert_queue_V2(*(a1 + 136));
    objc_opt_self();
    if (qword_1002290C0 != -1)
    {
      dispatch_once(&qword_1002290C0, &stru_1001FB2B0);
    }

    v63 = qword_1002290B8;
    v64 = v63;
    if (v63)
    {
      v65 = *(v63 + 6);
    }

    else
    {
      v65 = 0;
    }

    v66 = v65;

    if (v66)
    {
      v67 = v66[8];
    }

    else
    {
      v67 = 0;
    }

    v68 = v67;
    v69 = [v68 hostname];
    v70 = [v62 isEqualToString:v69];

    v15 = &qword_100229000;
    if ((v70 & 1) == 0)
    {
      dispatch_assert_queue_V2(*(a1 + 136));
      objc_opt_self();
      if (qword_1002290C0 != -1)
      {
        dispatch_once(&qword_1002290C0, &stru_1001FB2B0);
      }

      v71 = qword_1002290B8;
      v72 = v71;
      if (v71)
      {
        v73 = *(v71 + 6);
      }

      else
      {
        v73 = 0;
      }

      v74 = v73;

      sub_10017EA30(v74, v61, *(a1 + 96));
    }

    v4 = v180;
LABEL_73:
    v75 = sub_10014EBAC(v4, 2u, 103, 0);

    if (v75)
    {
      v76 = sub_10014EBAC(v4, 2u, 103, 0);
      v77 = [v76 hostname];
      objc_opt_self();
      v176 = v76;
      if (qword_100228E88 != -1)
      {
        dispatch_once(&qword_100228E88, &stru_1001FA180);
      }

      v78 = qword_100228E80;
      v79 = @"62743";
      if (!v78)
      {
        v79 = 0;
      }

      v80 = v79;
      v81 = [NWAddressEndpoint endpointWithHostname:v77 port:v80];

      dispatch_assert_queue_V2(*(a1 + 136));
      objc_opt_self();
      if (qword_1002290C0 != -1)
      {
        dispatch_once(&qword_1002290C0, &stru_1001FB2B0);
      }

      v82 = qword_1002290B8;
      v83 = v82;
      if (v82)
      {
        v84 = *(v82 + 6);
      }

      else
      {
        v84 = 0;
      }

      v85 = v84;

      v86 = *(a1 + 96);
      v87 = v81;
      v88 = v86;
      v89 = v87;
      if (v85)
      {
        v90 = v85[3];
        dispatch_assert_queue_V2(v90);

        v181 = sub_10017E4AC(v87);
        v91 = v85[15];
        if (v91)
        {
          v91 = v91[9];
        }

        v92 = v91;
        v93 = [v92 objectForKeyedSubscript:v88];
        v94 = [v93 firstObject];

        v95 = v94;
        v89 = v181;
        if (!v95 || ([v95 isEqual:v181] & 1) == 0)
        {
          v173 = v95;
          v96 = sub_100163A30(NRDLocalDevice, v88);
          v174 = v87;
          if (qword_1002294A8 != -1)
          {
            dispatch_once(&qword_1002294A8, &stru_1001FD210);
          }

          if (_NRLogIsLevelEnabled())
          {
            if (qword_1002294A8 != -1)
            {
              dispatch_once(&qword_1002294A8, &stru_1001FD210);
            }

            v97 = qword_1002294A0;
            v98 = v85[15];
            v99 = v97;
            v100 = v85;
            if (v98)
            {
              v101 = v98[9];
            }

            else
            {
              v101 = 0;
            }

            v102 = v101;
            v103 = [v102 objectForKeyedSubscript:v88];
            v89 = v181;
            _NRLogWithArgs(v99, 1, "%s%.30s:%-4d Setting the peer NAN endpoint as %@ ----> %@ for %@", "", "[NRLinkManagerWiFi setPeerNANEndpoint:nrUUID:]", 1012, v103, v181, v96);

            v85 = v100;
          }

          if (v89)
          {
            *&v197 = v89;
            v104 = [NSArray arrayWithObjects:&v197 count:1];
          }

          else
          {
            v104 = 0;
          }

          v105 = v85[15];
          if (v105)
          {
            v105 = v105[9];
          }

          v172 = v96;
          v106 = v105;
          [v106 setObject:v104 forKeyedSubscript:v88];

          if (v181)
          {
          }

          v178 = v85;
          v107 = [v85[19] copy];
          v192 = 0u;
          v193 = 0u;
          v194 = 0u;
          v195 = 0u;
          v108 = v107;
          v109 = [v108 countByEnumeratingWithState:&v192 objects:v196 count:16];
          if (v109)
          {
            v110 = v109;
            v111 = *v193;
            do
            {
              for (j = 0; j != v110; j = j + 1)
              {
                if (*v193 != v111)
                {
                  objc_enumerationMutation(v108);
                }

                v113 = *(*(&v192 + 1) + 8 * j);
                if ([v113 subtype] == 103)
                {
                  v114 = [v113 nrUUID];
                  v115 = [v114 isEqual:v88];

                  if (v115)
                  {
                    [v113 cancelWithReason:@"Peer NAN endpoint changed"];
                  }
                }
              }

              v110 = [v108 countByEnumeratingWithState:&v192 objects:v196 count:16];
            }

            while (v110);
          }

          v4 = v180;
          v89 = v181;
          v15 = &qword_100229000;
          v87 = v174;
          if (v181)
          {
            v116 = nw_interface_create_with_name();
            v117 = [v181 copyCEndpoint];
            v118 = nw_interface_copy_local_address_for_remote_address();

            if (v118)
            {
              v171 = v116;
              v119 = [NRLinkNAN alloc];
              v120 = v178[3];
              v121 = [NWAddressEndpoint endpointWithCEndpoint:v118];
              objc_opt_self();
              if (qword_100228E88 != -1)
              {
                dispatch_once(&qword_100228E88, &stru_1001FA180);
              }

              v122 = qword_100228E80;
              v123 = @"62743";
              if (!v122)
              {
                v123 = 0;
              }

              v124 = v123;
              v125 = [(NRLinkNAN *)v119 initLinkWithQueue:v120 linkDelegate:v178 nrUUID:v88 wifiInterfaceName:@"nan0" localOuterEndpoint:v121 remoteOuterEndpoint:v181 listenerPortString:v124];
              v126 = v120;
              v127 = v125;

              if (!v127)
              {
                [v178 reportEvent:3201];
              }

              v4 = v180;
              v89 = v181;
              v116 = v171;
              v15 = &qword_100229000;
            }
          }

          v85 = v178;
          v95 = v173;
        }
      }
    }

    v128 = sub_10014EBAC(v4, 2u, 104, 0);

    if (v128)
    {
      v129 = v4[15];
      if (v129)
      {
        v130 = [NSNumber numberWithUnsignedChar:7];
        v131 = [v129 objectForKeyedSubscript:v130];
      }

      else
      {
        v131 = 0;
      }

      dispatch_assert_queue_V2(*(a1 + 136));
      objc_opt_self();
      if (qword_1002290C0 != -1)
      {
        dispatch_once(&qword_1002290C0, &stru_1001FB2B0);
      }

      v132 = v15[23];
      v133 = v132;
      if (v132)
      {
        v134 = *(v132 + 6);
      }

      else
      {
        v134 = 0;
      }

      v135 = v134;

      v136 = *(a1 + 96);
      v137 = v131;
      v182 = v136;
      if (v135)
      {
        v199 = 0u;
        v200 = 0u;
        v197 = 0u;
        v198 = 0u;
        v138 = [v137 countByEnumeratingWithState:&v197 objects:v196 count:16];
        if (v138)
        {
          v139 = v138;
          v140 = 0;
          v141 = *v198;
          do
          {
            for (k = 0; k != v139; k = k + 1)
            {
              if (*v198 != v141)
              {
                objc_enumerationMutation(v137);
              }

              v143 = sub_10017E4AC(*(*(&v197 + 1) + 8 * k));
              if (v143)
              {
                if (!v140)
                {
                  v140 = objc_alloc_init(NSMutableArray);
                }

                [v140 addObject:v143];
              }
            }

            v139 = [v137 countByEnumeratingWithState:&v197 objects:v196 count:16];
          }

          while (v139);
        }

        else
        {
          v140 = 0;
        }

        v144 = v135[16];
        if (v144)
        {
          v144 = v144[9];
        }

        v145 = v144;
        v146 = [v145 objectForKeyedSubscript:v182];

        if (!v146 || (v147 = [[NSSet alloc] initWithArray:v140], v148 = objc_msgSend([NSSet alloc], "initWithArray:", v146), v149 = objc_msgSend(v147, "isEqualToSet:", v148), v148, v147, (v149 & 1) == 0))
        {
          v179 = sub_100163A30(NRDLocalDevice, v182);
          if (qword_1002294A8 != -1)
          {
            dispatch_once(&qword_1002294A8, &stru_1001FD210);
          }

          if (_NRLogIsLevelEnabled())
          {
            if (qword_1002294A8 != -1)
            {
              dispatch_once(&qword_1002294A8, &stru_1001FD210);
            }

            v150 = qword_1002294A0;
            v151 = v135[16];
            v152 = v150;
            if (v151)
            {
              v153 = v151[9];
            }

            else
            {
              v153 = 0;
            }

            v154 = v153;
            v155 = [v154 objectForKeyedSubscript:v182];
            _NRLogWithArgs(v152, 1, "%s%.30s:%-4d Setting the peer IR endpoints as %@ ----> %@ for %@", "", "[NRLinkManagerWiFi setPeerIREndpoints:forNRUUID:]", 1108, v155, v140, v179);
          }

          v156 = v135[16];
          v157 = v156;
          v175 = v146;
          if (v156)
          {
            v158 = *(v156 + 9);
          }

          else
          {
            v158 = 0;
          }

          v159 = v158;
          [v159 setObject:v140 forKeyedSubscript:v182];

          v177 = v135;
          v160 = [v135[19] copy];
          v187 = 0u;
          v188 = 0u;
          v189 = 0u;
          v190 = 0u;
          v161 = v160;
          v162 = [v161 countByEnumeratingWithState:&v187 objects:&v192 count:16];
          if (v162)
          {
            v163 = v162;
            v164 = *v188;
            do
            {
              for (m = 0; m != v163; m = m + 1)
              {
                if (*v188 != v164)
                {
                  objc_enumerationMutation(v161);
                }

                v166 = *(*(&v187 + 1) + 8 * m);
                if ([v166 subtype] == 104)
                {
                  v167 = [v166 remoteOuterEndpoint];
                  v168 = [v140 containsObject:v167];

                  if ((v168 & 1) == 0)
                  {
                    v169 = [v166 nrUUID];
                    v170 = [v169 isEqual:v182];

                    if (v170)
                    {
                      [v166 cancelWithReason:@"Peer Wi-Fi endpoint changed"];
                    }
                  }
                }
              }

              v163 = [v161 countByEnumeratingWithState:&v187 objects:&v192 count:16];
            }

            while (v163);
          }

          v135 = v177;
          if ([v140 count])
          {
            sub_10017D65C(v177);
          }

          else
          {
            sub_10017DC78(v177);
          }

          v4 = v180;
          v146 = v175;
        }
      }
    }
  }
}

void sub_1000EF110(uint64_t a1, void *a2)
{
  v19 = a2;
  if (!a1 || !*(a1 + 464) || [v19 state] == 255)
  {
    goto LABEL_24;
  }

  v3 = *(a1 + 464);
  if (v3)
  {
    v3 = v3[10];
  }

  v4 = v3;
  v5 = [v4 UUIDString];
  [v19 setPeerToken:v5];

  v6 = *(a1 + 464);
  if (v6)
  {
    v6 = v6[11];
  }

  v7 = v6;
  v8 = [v7 UUIDString];
  [v19 setLocalToken:v8];

  if ([v19 type] == 5)
  {
    v9 = v19;
    v10 = v9;
    v11 = *(a1 + 464);
    v13 = 0;
    if (v11)
    {
      v12 = *(v11 + 48);
      if ((v12 & 1) != 0 && ((v12 & 2) != 0 || (*(v11 + 56) & 2) != 0))
      {
        v13 = 1;
      }
    }

    if ([v9 startRequested])
    {
      if (!v10)
      {
        if ((v13 & 1) == 0)
        {
          goto LABEL_21;
        }

        goto LABEL_18;
      }

      if (v13 != v10[248])
      {
LABEL_18:
        [v10 cancelWithReason:@"classD support changed"];
LABEL_21:

        goto LABEL_22;
      }
    }

    else if (!v10)
    {
      goto LABEL_21;
    }

    v10[248] = v13;
    goto LABEL_21;
  }

LABEL_22:
  v14 = _NRCopyLogObjectForNRUUID();
  IsLevelEnabled = _NRLogIsLevelEnabled();

  if (IsLevelEnabled)
  {
    v16 = _NRCopyLogObjectForNRUUID();
    v17 = [v19 peerToken];
    v18 = [v19 localToken];
    _NRLogWithArgs(v16, 1, "%s%.30s:%-4d updated peer token %@ local token %@", "", "[NRDDeviceConductor updateLinkWithDiscoveredEndpoint:]", 8422, v17, v18);
  }

LABEL_24:
}

BOOL sub_1000EF670(uint64_t a1, int a2, BOOL a3, char a4, int a5, void *a6)
{
  v11 = a6;
  if (a1)
  {
    dispatch_assert_queue_V2(*(a1 + 136));
    if (a2)
    {
      v12 = 3;
    }

    else
    {
      v12 = 2;
    }

    sub_1000F08C8(a1, v12);
    v13 = objc_alloc_init(NRLinkDirectorRequest);
    v15 = v13;
    if (v13)
    {
      if (a2)
      {
        v16 = 2;
      }

      else
      {
        v16 = 3;
      }

      v13->_type = v16;
      if (a2)
      {
        v17 = 2;
      }

      else
      {
        v17 = 3;
      }

      v13->_allowsSuspendedLink = byte_100196571[v17];
      *(a1 + 37) = v16;
      if (a5)
      {
        v13->_requiredLinkType = 1;
      }

      objc_setProperty_nonatomic_copy(v13, v14, v11, 48);
      v15->_attemptImmediately = a3;
      sub_1000EAA20(a1, v15);
      if ((a4 & 1) != 0 && !v15->_complete)
      {
        sub_1000ECEAC(a1, v15);
      }

      complete = v15->_complete;
    }

    else
    {
      *(a1 + 37) = 0;
      sub_1000EAA20(a1, 0);
      complete = 0;
      if (a4)
      {
        sub_1000ECEAC(a1, 0);
        complete = 0;
      }
    }
  }

  else
  {
    complete = 0;
  }

  return complete;
}

void sub_1000EF7A0(uint64_t a1, int a2)
{
  if (!a1)
  {
    return;
  }

  dispatch_assert_queue_V2(*(a1 + 136));
  if ((a2 & 1) == 0)
  {
    *(a1 + 16) = 0;
  }

  if (*(a1 + 15) == a2)
  {
    return;
  }

  sub_1000EC910(a1, 1008, @"%d -> %d", v4, v5, v6, v7, v8, *(a1 + 15));
  v9 = _NRCopyLogObjectForNRUUID();
  IsLevelEnabled = _NRLogIsLevelEnabled();

  if (IsLevelEnabled)
  {
    v11 = *(a1 + 96);
    v12 = _NRCopyLogObjectForNRUUID();
    v13 = *(a1 + 15);

    _NRLogWithArgs(v12, 1, "%s%.30s:%-4d Setting prefer Wi-Fi request: %d -> %d", "", "[NRDDeviceConductor setPreferWiFiRequest:]", 2152, v13, a2);
  }

  *(a1 + 15) = a2;
  if (*(a1 + 408))
  {
    if (a2)
    {
      goto LABEL_9;
    }

LABEL_18:
    if (*(a1 + 18) == 1)
    {
      v22 = _NRCopyLogObjectForNRUUID();
      v23 = _NRLogIsLevelEnabled();

      if (v23)
      {
        v24 = _NRCopyLogObjectForNRUUID();
        _NRLogWithArgs(v24, 1, "%s%.30s:%-4d Not cancelling Wi-Fi as we do not have good BT connectivity", "", "[NRDDeviceConductor setPreferWiFiRequest:]", 2215);
      }

      v25 = sub_1000EA2C8(a1, 2, 102);
      if ([v25 startRequested])
      {
        [v25 suspend];
      }
    }

    *(a1 + 20) = 0;
    *(a1 + 26) = 0;
    sub_1000F08C8(a1, 2u);
    sub_1000F08C8(a1, 7u);
    v26 = nr_absolute_time();
    v27 = *(a1 + 408);
    if (v27)
    {
      *(v27 + 24) = v26;
      v28 = *(a1 + 408);
    }

    else
    {
      v28 = 0;
    }

    [v28 submit];
    v29 = *(a1 + 408);
    *(a1 + 408) = 0;

    sub_1000F0B48(a1, 0);
    *(a1 + 54) = 0;
    v30 = *(a1 + 472);
    *(a1 + 472) = 0;

    sub_1000F0BF8(a1);
    v31 = *(a1 + 648);
    if (v31 && (v31[16] & 1) != 0)
    {

      sub_1000F0D40(a1, v31);
    }

    return;
  }

  v20 = objc_alloc_init(NRAnalyticsPreferWiFi);
  v21 = *(a1 + 408);
  *(a1 + 408) = v20;

  if ((*(a1 + 15) & 1) == 0)
  {
    goto LABEL_18;
  }

LABEL_9:
  v14 = *(a1 + 608);
  if (v14)
  {
    if ([*(a1 + 608) cancelled])
    {
      v15 = _NRCopyLogObjectForNRUUID();
      v16 = _NRLogIsLevelEnabled();

      if (v16)
      {
        v17 = _NRCopyLogObjectForNRUUID();
        _NRLogWithArgs(v17, 2, "%s%.30s:%-4d %@: cancelled, ignoring request", "", "[NRAutoLinkUpgradeMonitor reportPreferWiFiRequest]", 440, v14);
      }
    }
  }

  v18 = nr_absolute_time();
  v19 = *(a1 + 408);
  if (v19)
  {
    *(v19 + 16) = v18;
  }

  sub_1000EFC5C(a1);
  if (sub_1000EFD10(a1))
  {
    sub_1000EFE54(a1);
  }

  else
  {
    v32 = _NRCopyLogObjectForNRUUID();
    v33 = _NRLogIsLevelEnabled();

    if (v33)
    {
      v34 = _NRCopyLogObjectForNRUUID();
      _NRLogWithArgs(v34, 1, "%s%.30s:%-4d Suspending BT link as we have prefer Wi-Fi request", "", "[NRDDeviceConductor setPreferWiFiRequest:]", 2175);
    }

    sub_1000EFF24(a1);
  }

  sub_1000F015C(a1);
  sub_1000F03C0(a1);
  v43 = 0u;
  v44 = 0u;
  v41 = 0u;
  v42 = 0u;
  v35 = *(a1 + 472);
  v36 = [v35 countByEnumeratingWithState:&v41 objects:v47 count:16];
  if (v36)
  {
    v37 = v36;
    v38 = *v42;
    while (2)
    {
      for (i = 0; i != v37; i = i + 1)
      {
        if (*v42 != v38)
        {
          objc_enumerationMutation(v35);
        }

        if ([*(*(&v41 + 1) + 8 * i) unsignedCharValue] == 101)
        {
          v40 = (*(a1 + 616) >> 2) & 1;
          v45[0] = _NSConcreteStackBlock;
          v45[1] = 3221225472;
          v45[2] = sub_1000F05D8;
          v45[3] = &unk_1001FBA98;
          v46 = v40;
          v45[4] = a1;
          sub_1000F06F8(a1, 2, v40, v45);
          goto LABEL_44;
        }
      }

      v37 = [v35 countByEnumeratingWithState:&v41 objects:v47 count:16];
      if (v37)
      {
        continue;
      }

      break;
    }
  }

LABEL_44:
}

void sub_1000EFC5C(uint64_t a1)
{
  if (a1 && (*(a1 + 8) & 1) == 0)
  {
    dispatch_assert_queue_V2(*(a1 + 136));
    sub_1000F08C8(a1, 3u);
    v2 = objc_alloc_init(NRLinkDirectorRequest);
    v3 = v2;
    v4 = v2;
    if (v2)
    {
      v2->_type = 9;
      v2->_allowsSuspendedLink = 1;
      objc_setProperty_nonatomic_copy(v2, v2, 0, 48);
      v3 = v4;
      v4->_attemptImmediately = 1;
    }

    sub_1000EAA20(a1, v3);
  }
}

unint64_t sub_1000EFD10(uint64_t a1)
{
  objc_opt_self();
  v2 = sub_100163A30(NRDLocalDevice, *(a1 + 96));
  if (!v2)
  {
    v5 = sub_1000E83DC();
    IsLevelEnabled = _NRLogIsLevelEnabled();

    if (IsLevelEnabled)
    {
      v7 = sub_1000E83DC();
      _NRLogWithArgs(v7, 16, "%s%.30s:%-4d ABORTING: Assertion Failed: (localDevice) != ((void*)0)", "", "[NRDDeviceConductor isAlwaysOnWiFiSupported]", 2630);
    }

    v8 = _os_log_pack_size();
    v9 = __error();
    v10 = _os_log_pack_fill(&v11 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0), v8, *v9, &_mh_execute_header, "%{public}s Assertion Failed: (localDevice) != ((void*)0)");
    *v10 = 136446210;
    *(v10 + 4) = "[NRDDeviceConductor isAlwaysOnWiFiSupported]";
    sub_1000E83DC();
    _NRLogAbortWithPack();
  }

  v3 = v2[6];

  return (v3 >> 8) & 1;
}

void sub_1000EFE54(uint64_t a1)
{
  if (a1 && (sub_1000EC4F0(a1, 5) & 1) == 0)
  {
    v2 = objc_alloc_init(NRLinkDirectorRequest);
    v4 = v2;
    if (v2)
    {
      v2->_type = 5;
      v2->_allowsSuspendedLink = 0;
      v2->_requiredLinkType = 2;
    }

    newValue[0] = _NSConcreteStackBlock;
    newValue[1] = 3221225472;
    newValue[2] = sub_1000F2698;
    newValue[3] = &unk_1001FD3C8;
    newValue[4] = a1;
    if (v2)
    {
      objc_setProperty_nonatomic_copy(v2, v3, newValue, 48);
    }

    sub_1000EAA20(a1, v4);
  }
}

void sub_1000EFF24(uint64_t a1)
{
  if (a1)
  {
    dispatch_assert_queue_V2(*(a1 + 136));
    dispatch_assert_queue_V2(*(a1 + 136));
    v2 = sub_100163A30(NRDLocalDevice, *(a1 + 96));
    v3 = v2;
    if (v2)
    {
      v4 = *(v2 + 144);
    }

    else
    {
      v4 = 0;
    }

    v5 = v4;
    v6 = [v5 getDefaultLinkSubtypeForLinkType:1];

    v17 = sub_1000EA2C8(a1, 1, v6);
    if (v17)
    {
      if ([v17 state] == 1 || objc_msgSend(v17, "state") == 9 || objc_msgSend(v17, "state") == 8)
      {
        v7 = _NRCopyLogObjectForNRUUID();
        IsLevelEnabled = _NRLogIsLevelEnabled();

        if (IsLevelEnabled)
        {
          v9 = _NRCopyLogObjectForNRUUID();
          _NRLogWithArgs(v9, 1, "%s%.30s:%-4d Suspending link: %@", "", "[NRDDeviceConductor suspendLinkOfType:]", 3528, v17);
        }

        [v17 suspend];
      }

      else
      {
        v14 = _NRCopyLogObjectForNRUUID();
        v15 = _NRLogIsLevelEnabled();

        if (v15)
        {
          v16 = _NRCopyLogObjectForNRUUID();
          _NRLogWithArgs(v16, 1, "%s%.30s:%-4d Link will be suspended once it becomes ready: %@", "", "[NRDDeviceConductor suspendLinkOfType:]", 3523, v17);
        }

        [v17 setSuspendWhenReady:1];
      }
    }

    else
    {
      v10 = _NRCopyLogObjectForNRUUID();
      v11 = _NRLogIsLevelEnabled();

      if (v11)
      {
        v12 = _NRCopyLogObjectForNRUUID();
        StringFromNRLinkType = createStringFromNRLinkType();
        _NRLogWithArgs(v12, 1, "%s%.30s:%-4d Cannot suspend link as no link of type '%@' is available", "", "[NRDDeviceConductor suspendLinkOfType:]", 3518, StringFromNRLinkType);
      }
    }
  }
}

void sub_1000F015C(uint64_t a1)
{
  if (a1)
  {
    dispatch_assert_queue_V2(*(a1 + 136));
    if (*(a1 + 20) == 1)
    {
      v2 = _NRCopyLogObjectForNRUUID();
      IsLevelEnabled = _NRLogIsLevelEnabled();

      if (IsLevelEnabled)
      {
        v13 = _NRCopyLogObjectForNRUUID();
        _NRLogWithArgs(v13, 1, "%s%.30s:%-4d prefer Wi-Fi timeout already set", "", "[NRDDeviceConductor setPreferWiFiTimeout]", 2491);
      }
    }

    else
    {
      *(a1 + 20) = 1;
      v4 = objc_alloc_init(NRLinkDirectorRequest);
      v6 = v4;
      if (v4)
      {
        v4->_type = 7;
        v4->_allowsSuspendedLink = 0;
        objc_storeStrong(&v4->_cancelIfLinkTypeReady, &off_10020A078);
      }

      newValue[0] = _NSConcreteStackBlock;
      newValue[1] = 3221225472;
      newValue[2] = sub_1000F21C0;
      newValue[3] = &unk_1001FD3C8;
      newValue[4] = a1;
      if (v6)
      {
        objc_setProperty_nonatomic_copy(v6, v5, newValue, 24);
        v6->_attemptImmediately = 1;
        v6->_timeout = 60;
      }

      sub_1000F0B48(a1, 0);
      v7 = *(a1 + 472);
      v8 = [v7 firstObject];

      if (v8)
      {
        v9 = [v8 unsignedCharValue];
        if (v9 - 105 >= 0xFFFFFFFD && v6)
        {
          v6->_attemptImmediately = 1;
          v6->_timeout = 15;
        }

        sub_1000F0B48(a1, v9 == 102);
        v10 = *(a1 + 53);
      }

      else
      {
        v10 = 0;
      }

      v14[0] = _NSConcreteStackBlock;
      v14[1] = 3221225472;
      v14[2] = sub_1000F21F0;
      v14[3] = &unk_1001FC900;
      v14[4] = a1;
      v15 = v8;
      v16 = v10 & 1;
      v12 = v8;
      if (v6)
      {
        objc_setProperty_nonatomic_copy(v6, v11, v14, 48);
      }

      sub_1000EAA20(a1, v6);
    }
  }
}

void sub_1000F03C0(_BYTE *a1)
{
  if (!a1)
  {
    return;
  }

  sub_1000F1574(a1);
  if (a1[18])
  {
    sub_1000F18B4(a1);
    v2 = a1 + 15;
    if ((a1[15] & 1) == 0)
    {
      goto LABEL_8;
    }
  }

  else
  {
    if (a1[15] != 1)
    {
      return;
    }

    v2 = a1 + 15;
  }

  sub_1000F015C(a1);
LABEL_8:
  v3 = _NRCopyLogObjectForNRUUID();
  IsLevelEnabled = _NRLogIsLevelEnabled();

  if (IsLevelEnabled)
  {
    v5 = _NRCopyLogObjectForNRUUID();
    _NRLogWithArgs(v5, 1, "%s%.30s:%-4d supportsAWDL %d needsAWDL %d preferWiFiRequest %d", "", "[NRDDeviceConductor enableWiFiAutojoin]", 2789, a1[10], a1[53], a1[15]);
  }

  if (a1[10] == 1 && a1[53] == 1 && *v2 == 1)
  {

    sub_1000F1A9C(a1);
  }

  else
  {
    sub_1000F17CC(a1, 1);
    v9 = sub_1000F1BC0(a1, 2);
    if (v9 && [(dispatch_queue_t *)v9 state]!= 255)
    {
      [(dispatch_queue_t *)v9 start];
    }

    if (a1[49] == 1 && a1[18] == 1 && (*v2 & 1) == 0 && (a1[28] & 1) == 0)
    {
      v6 = _NRCopyLogObjectForNRUUID();
      v7 = _NRLogIsLevelEnabled();

      if (v7)
      {
        v8 = _NRCopyLogObjectForNRUUID();
        _NRLogWithArgs(v8, 1, "%s%.30s:%-4d not adding suspend BT request", "", "[NRDDeviceConductor enableWiFiAutojoin]", 2818);
      }
    }

    else
    {
      sub_1000EFE54(a1);
    }
  }
}

void sub_1000F05D8(uint64_t a1)
{
  if (*(a1 + 40) == 1)
  {
    v2 = *(a1 + 32);
    if (v2)
    {
      dispatch_assert_queue_V2(v2[17]);
      objc_opt_self();
      if (qword_1002290C0 != -1)
      {
        dispatch_once(&qword_1002290C0, &stru_1001FB2B0);
      }

      v3 = qword_1002290B8;
      v4 = v3;
      if (v3)
      {
        v5 = *(v3 + 6);
      }

      else
      {
        v5 = 0;
      }

      v6 = v5;

      if (v6)
      {
        v2 = v6[7];
      }

      else
      {
        v2 = 0;
      }
    }

    else
    {
      v6 = 0;
    }

    v7 = v2;

    if (!v7)
    {
      v8 = *(a1 + 32);
      if (v8)
      {
        v9 = *(v8 + 648);
        if (v9)
        {
          v9[4] |= 8u;
        }
      }

      else
      {
        v9 = 0;
      }
    }
  }
}

void sub_1000F06F8(uint64_t a1, int a2, char a3, void *a4)
{
  v7 = a4;
  if (*(a1 + 12) != 1)
  {
    goto LABEL_28;
  }

  v15 = v7;
  v8 = 648;
  if (a2 == 1)
  {
    v8 = 640;
  }

  v9 = *(a1 + v8);
  if (v9)
  {
    if (a2 == 1)
    {
LABEL_6:
      if (v9)
      {
        v9[4] |= 0x800u;
      }

      v10 = 640;
      goto LABEL_18;
    }
  }

  else
  {
    v9 = sub_100079A1C([NRLinkUpgradeReport alloc], a2);
    v11 = [*(a1 + 160) type];
    if (v9)
    {
      *(v9 + 11) = v11;
    }

    v12 = [*(a1 + 160) subtype];
    if (v9)
    {
      *(v9 + 12) = v12;
      if (*(a1 + 30) == 1)
      {
        v9[4] |= 0x100u;
      }

      if (*(a1 + 288))
      {
        v9[4] |= 0x200u;
      }
    }

    if (a2 == 1)
    {
      goto LABEL_6;
    }
  }

  v10 = 648;
LABEL_18:
  objc_storeStrong((a1 + v10), v9);
  if (v9)
  {
    if (!*(v9 + 8))
    {
      *(v9 + 8) = nr_absolute_time();
      *(v9 + 9) = 0;
    }

    v13 = v9[4] | 1;
    v9[4] = v13;
    ++v9[6];
    if (a3)
    {
      *(v9 + 4) = *(a1 + 616);
      v14 = *(v9 + 6);
      *(v9 + 5) |= *(a1 + 624);
      if (!v14)
      {
        *(v9 + 6) = nr_absolute_time();
        *(v9 + 7) = 0;
        v13 = v9[4];
      }

      v9[4] = v13 | 2;
    }

    if ((~*(a1 + 616) & 6) == 0)
    {
      v9[4] |= 0x10u;
    }
  }

  else
  {
    nr_absolute_time();
    if (a3)
    {
      nr_absolute_time();
    }
  }

  v15[2]();

  v7 = v15;
LABEL_28:
}

void sub_1000F08C8(uint64_t a1, unsigned int a2)
{
  if (a1)
  {
    dispatch_assert_queue_V2(*(a1 + 136));
    v20 = 0u;
    v21 = 0u;
    v18 = 0u;
    v19 = 0u;
    v4 = *(a1 + 152);
    v5 = [v4 countByEnumeratingWithState:&v18 objects:v22 count:16];
    if (v5)
    {
      v6 = v5;
      v7 = *v19;
      while (2)
      {
        v8 = 0;
        do
        {
          if (*v19 != v7)
          {
            objc_enumerationMutation(v4);
          }

          v9 = *(*(&v18 + 1) + 8 * v8);
          if (v9)
          {
            if (v9[10] == a2)
            {
              v15 = v9;

              sub_1000ECEAC(a1, v15);
              v16 = _NRCopyLogObjectForNRUUID();
              IsLevelEnabled = _NRLogIsLevelEnabled();

              if (!IsLevelEnabled)
              {
                goto LABEL_26;
              }

              v13 = _NRCopyLogObjectForNRUUID();
              if (a2 > 0xB)
              {
                v14 = @"Unknown";
              }

              else
              {
                v14 = [[NSString alloc] initWithUTF8String:(&off_1001FC2A0)[a2]];
              }

              _NRLogWithArgs(v13, 1, "%s%.30s:%-4d Removed request of type %@", "", "[NRDDeviceConductor removeRequestOfType:]", 3004, v14, v18);
              goto LABEL_25;
            }
          }

          else if (!a2)
          {
            goto LABEL_14;
          }

          v8 = v8 + 1;
        }

        while (v6 != v8);
        v10 = [v4 countByEnumeratingWithState:&v18 objects:v22 count:16];
        v6 = v10;
        if (v10)
        {
          continue;
        }

        break;
      }
    }

LABEL_14:

    v11 = _NRCopyLogObjectForNRUUID();
    v12 = _NRLogIsLevelEnabled();

    if (v12)
    {
      v13 = _NRCopyLogObjectForNRUUID();
      if (a2 > 0xB)
      {
        v14 = @"Unknown";
      }

      else
      {
        v14 = [[NSString alloc] initWithUTF8String:(&off_1001FC2A0)[a2]];
      }

      _NRLogWithArgs(v13, 1, "%s%.30s:%-4d Could not remove request of type %@", "", "[NRDDeviceConductor removeRequestOfType:]", 3006, v14, v18);
      v15 = 0;
LABEL_25:
    }

    else
    {
      v15 = 0;
    }

LABEL_26:
  }
}

void sub_1000F0B48(uint64_t a1, int a2)
{
  if (a1 && *(a1 + 53) != a2)
  {
    v4 = _NRCopyLogObjectForNRUUID();
    IsLevelEnabled = _NRLogIsLevelEnabled();

    if (IsLevelEnabled)
    {
      v6 = _NRCopyLogObjectForNRUUID();
      _NRLogWithArgs(v6, 0, "%s%.30s:%-4d needsAWDL %d -> %d", "", "[NRDDeviceConductor setNeedsAWDL:]", 1710, *(a1 + 53), a2);
    }

    *(a1 + 53) = a2;
  }
}

void sub_1000F0BF8(uint64_t a1)
{
  if (a1)
  {
    sub_1000F1574(a1);
    v2 = sub_1000EA2C8(a1, 2, 102);
    v9 = v2;
    if ((*(a1 + 18) & 1) != 0 || *(a1 + 15) == 1)
    {
      if ([v2 startRequested])
      {
        sub_1000F03C0(a1);
      }
    }

    else
    {
      if ((*(a1 + 45) & 1) == 0)
      {
        dispatch_assert_queue_V2(*(a1 + 136));
        v3 = sub_100163A30(NRDLocalDevice, *(a1 + 96));
        v4 = v3;
        if (v3)
        {
          v5 = *(v3 + 144);
        }

        else
        {
          v5 = 0;
        }

        v6 = v5;
        v7 = [v6 getDefaultLinkSubtypeForLinkType:2];

        v8 = sub_1000EA2C8(a1, 2, v7);
        if (v8 && [v8 startRequested])
        {
          [v8 cancelWithReason:@"Wi-Fi link is not needed anymore"];
        }
      }

      sub_1000F08C8(a1, 5u);
      sub_1000F17CC(a1, 0);
      if ([v9 startRequested])
      {
        [v9 cancelWithReason:@"not needed anymore"];
      }
    }
  }
}

void sub_1000F0D40(uint64_t a1, void *a2)
{
  v3 = a2;
  if (!a1 || !v3)
  {
    goto LABEL_59;
  }

  v4 = *(v3 + 8);
  v68 = v3;
  if (v4 != 2)
  {
    if (v4 != 1)
    {
      v17 = _NRCopyLogObjectForNRUUID();
      IsLevelEnabled = _NRLogIsLevelEnabled();

      v3 = v68;
      if (!IsLevelEnabled)
      {
        goto LABEL_59;
      }

      v19 = _NRCopyLogObjectForNRUUID();
      _NRLogWithArgs(v19, 16, "%s%.30s:%-4d unsupported type", "", "[NRDDeviceConductor submitLinkUpgradeReport:]", 5799);
      goto LABEL_58;
    }

    v5 = *(a1 + 216);
    v6 = v5;
    if (!v5 || *(v5 + 8) != 1)
    {
      v7 = *(a1 + 640);
      if (v7 && v7[8])
      {
        v8 = *(a1 + 640);
        if (v8)
        {
          v9 = *(v8 + 72);

          if (v9)
          {
            goto LABEL_24;
          }
        }

        else
        {
        }

        v10 = nr_absolute_time();
        v11 = *(a1 + 640);
        if (v11)
        {
          *(v11 + 72) = v10;
        }

LABEL_24:
        if ((*(a1 + 616) & 2) == 0)
        {
          v20 = *(a1 + 640);
          if (v20 && v20[7] || (v21 = *(a1 + 640)) == 0)
          {
          }

          else
          {
            v22 = *(v21 + 48);

            if (v22)
            {
              v23 = nr_absolute_time();
              v24 = *(a1 + 640);
              if (v24)
              {
                *(v24 + 56) = v23;
              }
            }
          }
        }

        v25 = *(a1 + 216);
        v3 = v68;
        if (v25 && (*(v25 + 8) & 1) != 0)
        {
          goto LABEL_59;
        }

        v26 = *(a1 + 616);
        if ((v26 & 2) != 0)
        {
          goto LABEL_59;
        }

LABEL_47:
        v3[12] = v26;
        v3[13] |= *(a1 + 624);
        v32 = [NRAnalyticsLinkUpgradeReport alloc];
        v33 = objc_alloc_init(NSMutableDictionary);
        NRDiffMachTimeInSeconds();
        v35 = v34;
        NRDiffMachTimeInSeconds();
        v37 = v36;
        v38 = [NSNumber numberWithUnsignedChar:*(v68 + 8)];
        [v33 setObject:v38 forKeyedSubscript:@"upgradeType"];

        v39 = v68;
        if (v68[4] || v68[12])
        {
          v40 = [NSNumber numberWithUnsignedLongLong:?];
          [v33 setObject:v40 forKeyedSubscript:@"startAdvice"];

          v41 = [NSNumber numberWithUnsignedLongLong:v68[12]];
          [v33 setObject:v41 forKeyedSubscript:@"endAdvice"];

          v42 = sub_100079D30(v68[5]);
          [v33 setObject:v42 forKeyedSubscript:@"startReason"];

          v43 = sub_100079D30(v68[13]);
          [v33 setObject:v43 forKeyedSubscript:@"endReason"];

          v39 = v68;
        }

        v44 = [NSNumber numberWithUnsignedChar:*(v39 + 9)];
        [v33 setObject:v44 forKeyedSubscript:@"thermalState"];

        v45 = [NSNumber numberWithUnsignedChar:*(v68 + 10)];
        [v33 setObject:v45 forKeyedSubscript:@"battery"];

        v46 = [NSNumber numberWithUnsignedLongLong:v35];
        [v33 setObject:v46 forKeyedSubscript:@"adviceDuration"];

        if (v37 > 0.0)
        {
          v47 = [NSNumber numberWithUnsignedLongLong:v37];
          [v33 setObject:v47 forKeyedSubscript:@"clientTriggerDuration"];

          if (v35 > 0.0)
          {
            v48 = [NSNumber numberWithInt:v68[6] <= v68[8]];
            [v33 setObject:v48 forKeyedSubscript:@"adviceStartBeforeClient"];

            v49 = [NSNumber numberWithInt:v68[7] <= v68[9]];
            [v33 setObject:v49 forKeyedSubscript:@"adviceEndBeforeClient"];
          }
        }

        v50 = [NSNumber numberWithUnsignedChar:*(v68 + 11)];
        [v33 setObject:v50 forKeyedSubscript:@"primaryLinkType"];

        v51 = [NSNumber numberWithUnsignedChar:*(v68 + 12)];
        [v33 setObject:v51 forKeyedSubscript:@"primaryLinkSubtype"];

        v52 = [NSNumber numberWithUnsignedInt:*(v68 + 5)];
        [v33 setObject:v52 forKeyedSubscript:@"adviceCount"];

        v53 = [NSNumber numberWithUnsignedInt:*(v68 + 6)];
        [v33 setObject:v53 forKeyedSubscript:@"clientTriggerCount"];

        v54 = [NSNumber numberWithInt:v68[2] & 1];
        [v33 setObject:v54 forKeyedSubscript:@"clientTriggered"];

        v55 = [NSNumber numberWithInt:(*(v68 + 4) >> 1) & 1];
        [v33 setObject:v55 forKeyedSubscript:@"aluTriggered"];

        v56 = [NSNumber numberWithInt:(*(v68 + 4) >> 11) & 1];
        [v33 setObject:v56 forKeyedSubscript:@"upgradeSuccessful"];

        v57 = [NSNumber numberWithInt:(*(v68 + 4) >> 2) & 1];
        [v33 setObject:v57 forKeyedSubscript:@"againstWRM"];

        v58 = [NSNumber numberWithInt:(*(v68 + 4) >> 3) & 1];
        [v33 setObject:v58 forKeyedSubscript:@"advisedWithNoLink"];

        v59 = [NSNumber numberWithInt:(*(v68 + 4) >> 4) & 1];
        [v33 setObject:v59 forKeyedSubscript:@"overlappingAdvice"];

        v60 = [NSNumber numberWithInt:(*(v68 + 4) >> 5) & 1];
        [v33 setObject:v60 forKeyedSubscript:@"pluggedIn"];

        v61 = [NSNumber numberWithInt:(*(v68 + 4) >> 6) & 1];
        [v33 setObject:v61 forKeyedSubscript:@"lowPowerMode"];

        v62 = [NSNumber numberWithInt:(*(v68 + 4) >> 8) & 1];
        [v33 setObject:v62 forKeyedSubscript:@"activePhoneCall"];

        v63 = [NSNumber numberWithInt:(*(v68 + 4) >> 9) & 1];
        [v33 setObject:v63 forKeyedSubscript:@"dtcRequest"];

        v64 = [NSNumber numberWithInt:(*(v68 + 4) >> 10) & 1];
        [v33 setObject:v64 forKeyedSubscript:@"thermalWorsened"];

        v19 = sub_100157134(v32, v33);
        [v19 submit];
        v65 = *(v68 + 8);
        if (v65 == 1)
        {
          v66 = 640;
        }

        else
        {
          if (v65 != 2)
          {
LABEL_58:

            v3 = v68;
            goto LABEL_59;
          }

          v66 = 648;
        }

        v67 = *(a1 + v66);
        *(a1 + v66) = 0;

        goto LABEL_58;
      }
    }

    goto LABEL_24;
  }

  if ((*(a1 + 15) & 1) == 0)
  {
    v12 = *(a1 + 648);
    if (v12 && v12[8])
    {
      v13 = *(a1 + 648);
      if (v13)
      {
        v14 = *(v13 + 72);

        if (v14)
        {
          goto LABEL_37;
        }
      }

      else
      {
      }

      v15 = nr_absolute_time();
      v16 = *(a1 + 648);
      if (v16)
      {
        *(v16 + 72) = v15;
      }
    }

    else
    {
    }
  }

LABEL_37:
  if ((*(a1 + 616) & 4) == 0)
  {
    v27 = *(a1 + 648);
    if (v27 && v27[7] || (v28 = *(a1 + 648)) == 0)
    {
    }

    else
    {
      v29 = *(v28 + 48);

      if (v29)
      {
        v30 = nr_absolute_time();
        v31 = *(a1 + 648);
        if (v31)
        {
          *(v31 + 56) = v30;
        }
      }
    }
  }

  v3 = v68;
  if ((*(a1 + 15) & 1) == 0)
  {
    v26 = *(a1 + 616);
    if ((v26 & 4) == 0)
    {
      goto LABEL_47;
    }
  }

LABEL_59:
}

void sub_1000F1574(uint64_t a1)
{
  if (*(a1 + 18) == 1)
  {
    dispatch_assert_queue_V2(*(a1 + 136));
    v2 = sub_100163A30(NRDLocalDevice, *(a1 + 96));
    v3 = v2;
    if (v2)
    {
      v4 = *(v2 + 144);
    }

    else
    {
      v4 = 0;
    }

    v5 = v4;
    v6 = [v5 getDefaultLinkSubtypeForLinkType:1];

    v7 = sub_1000EA2C8(a1, 1, v6);
    if (*(a1 + 28) == 1 && [v7 state] > 7)
    {
      v8 = 0;
    }

    else
    {
      v8 = 2;
    }
  }

  else
  {
    v8 = 0;
  }

  if (*(a1 + 15))
  {
    v8 |= 4uLL;
  }

  if (!v8)
  {
    v18 = 0;
    goto LABEL_27;
  }

  v18 = objc_alloc_init(NSMutableArray);
  if ((*(a1 + 18) & 1) == 0)
  {
    if (*(a1 + 15) != 1)
    {
      goto LABEL_27;
    }

    if (*(a1 + 8))
    {
      goto LABEL_20;
    }
  }

  [v18 addObject:@"terminusd"];
  if (*(a1 + 15) & 1) != 0 && (*(a1 + 8))
  {
LABEL_20:
    objc_opt_self();
    if (qword_1002290C0 != -1)
    {
      dispatch_once(&qword_1002290C0, &stru_1001FB2B0);
    }

    v9 = qword_1002290B8;
    v10 = v9;
    if (v9)
    {
      v11 = *(v9 + 12);
    }

    else
    {
      v11 = 0;
    }

    v12 = v11;
    v13 = sub_1000729D8(v12);

    if ([v13 count])
    {
      [v18 addObjectsFromArray:v13];
    }
  }

LABEL_27:
  dispatch_assert_queue_V2(*(a1 + 136));
  objc_opt_self();
  if (qword_1002290C0 != -1)
  {
    dispatch_once(&qword_1002290C0, &stru_1001FB2B0);
  }

  v14 = qword_1002290B8;
  v15 = v14;
  if (v14)
  {
    v16 = *(v14 + 6);
  }

  else
  {
    v16 = 0;
  }

  v17 = v16;

  sub_10017F43C(v17, v8, *(a1 + 96), v18);
}

void sub_1000F17CC(uint64_t a1, uint64_t a2)
{
  v2 = a2;
  if ((a2 & 1) != 0 || (*(a1 + 18) & 1) == 0 && (*(a1 + 15) & 1) == 0)
  {
    dispatch_assert_queue_V2(*(a1 + 136));
    objc_opt_self();
    if (qword_1002290C0 != -1)
    {
      dispatch_once(&qword_1002290C0, &stru_1001FB2B0);
    }

    v4 = qword_1002290B8;
    v5 = v4;
    if (v4)
    {
      v6 = *(v4 + 6);
    }

    else
    {
      v6 = 0;
    }

    v7 = v6;

    sub_10017EDB4(v7, v2, *(a1 + 96));
  }
}

void sub_1000F18B4(uint64_t a1)
{
  if (a1)
  {
    dispatch_assert_queue_V2(*(a1 + 136));
    if (*(a1 + 19) == 1)
    {
      v2 = _NRCopyLogObjectForNRUUID();
      IsLevelEnabled = _NRLogIsLevelEnabled();

      if (IsLevelEnabled)
      {
        v7 = _NRCopyLogObjectForNRUUID();
        _NRLogWithArgs(v7, 1, "%s%.30s:%-4d Wi-Fi bring up timeout already set", "", "[NRDDeviceConductor setWiFiLinkBringUpTimeout]", 2580);
      }
    }

    else
    {
      *(a1 + 19) = 1;
      v4 = objc_alloc_init(NRLinkDirectorRequest);
      v6 = v4;
      if (v4)
      {
        v4->_type = 6;
        v4->_allowsSuspendedLink = 0;
        objc_storeStrong(&v4->_timerDescription, @"WiFi-bringup-timeout");
        objc_storeStrong(&v6->_cancelIfLinkTypeReady, &off_10020A090);
      }

      newValue[0] = _NSConcreteStackBlock;
      newValue[1] = 3221225472;
      newValue[2] = sub_1000F1C5C;
      newValue[3] = &unk_1001FD3C8;
      newValue[4] = a1;
      if (v6)
      {
        objc_setProperty_nonatomic_copy(v6, v5, newValue, 24);
        v6->_attemptImmediately = 1;
        v6->_timeout = 60;
        v6->_deferIfRequestExists = 5;
      }

      v8[0] = _NSConcreteStackBlock;
      v8[1] = 3221225472;
      v8[2] = sub_1000F1C6C;
      v8[3] = &unk_1001FD3C8;
      v8[4] = a1;
      if (v6)
      {
        objc_setProperty_nonatomic_copy(v6, v5, v8, 48);
      }

      sub_1000EAA20(a1, v6);
    }
  }
}

void sub_1000F1A9C(_BYTE *a1)
{
  if (a1 && a1[10] == 1)
  {
    v2 = sub_1000EA2C8(a1, 2, 102);
    v6 = v2;
    if (v2)
    {
      if (([v2 startRequested] & 1) == 0)
      {
        if ((a1[53] & 1) != 0 || a1[39] == 2)
        {
          [v6 start];
          if ((a1[58] & 1) == 0)
          {
            sub_1000EFE54(a1);
          }
        }

        else
        {
          sub_1000F08C8(a1, 5u);
        }
      }
    }

    else
    {
      v3 = _NRCopyLogObjectForNRUUID();
      IsLevelEnabled = _NRLogIsLevelEnabled();

      if (IsLevelEnabled)
      {
        v5 = _NRCopyLogObjectForNRUUID();
        _NRLogWithArgs(v5, 1, "%s%.30s:%-4d no awdl link available", "", "[NRDDeviceConductor startAWDLIfNeeded]", 4606);
      }
    }
  }
}

dispatch_queue_t *sub_1000F1BC0(dispatch_queue_t *result, uint64_t a2)
{
  if (result)
  {
    v3 = result;
    dispatch_assert_queue_V2(result[17]);
    v4 = sub_100163A30(NRDLocalDevice, v3[12]);
    v5 = v4;
    if (v4)
    {
      v6 = *(v4 + 144);
    }

    else
    {
      v6 = 0;
    }

    v7 = v6;
    v8 = [v7 getDefaultLinkSubtypeForLinkType:a2];

    v9 = sub_1000EA2C8(v3, a2, v8);
    return v9;
  }

  return result;
}

uint64_t sub_1000F1C5C(uint64_t result)
{
  v1 = *(result + 32);
  if (v1)
  {
    *(v1 + 19) = 0;
  }

  return result;
}

void sub_1000F1C6C(uint64_t a1)
{
  v2 = _NRCopyLogObjectForNRUUID();
  IsLevelEnabled = _NRLogIsLevelEnabled();

  if (IsLevelEnabled)
  {
    v4 = _NRCopyLogObjectForNRUUID();
    _NRLogWithArgs(v4, 1, "%s%.30s:%-4d WiFi link failed to become ready in 60s. Giving up Wi-Fi assertion", "", "[NRDDeviceConductor setWiFiLinkBringUpTimeout]_block_invoke_2", 2599);
  }

  v5 = *(a1 + 32);
  if (v5)
  {
    *(v5 + 19) = 0;
    v6 = *(a1 + 32);
    if (v6)
    {
      if ((*(v6 + 616) & 4) == 0 || (v7 = *(v6 + 608), v8 = *(v6 + 632), v9 = v7, sub_10007A18C(v9, v8), v9, (v6 = *(a1 + 32)) != 0))
      {
        dispatch_assert_queue_V2(*(v6 + 136));

        sub_1000F1D90(v6, 0, 0xAu);
      }
    }
  }
}

void sub_1000F1D90(uint64_t a1, int a2, unsigned int a3)
{
  dispatch_assert_queue_V2(*(a1 + 136));
  if (*(a1 + 18) != a2)
  {
    if (*(a1 + 23) == 1)
    {
      v6 = _NRCopyLogObjectForNRUUID();
      IsLevelEnabled = _NRLogIsLevelEnabled();

      if (IsLevelEnabled)
      {
        v28 = _NRCopyLogObjectForNRUUID();
        _NRLogWithArgs(v28, 1, "%s%.30s:%-4d Range extension disabled. Not bringing up Wi-Fi immediately", "", "[NRDDeviceConductor setBringUpWiFiImmediatelyInner:timeout:addSuspendBTRequest:]", 2283);
      }
    }

    else if ((*(a1 + 49) & 1) != 0 || ((v8 = sub_100163A30(NRDLocalDevice, *(a1 + 96)), (v9 = v8) == 0) ? (v10 = 0) : (v10 = *(v8 + 144)), v11 = v10, [v11 allowedLinkTypes], v12 = objc_claimAutoreleasedReturnValue(), v13 = objc_msgSend(v12, "containsObject:", &off_100209CE0), v12, v11, v9, v13))
    {
      v14 = _NRCopyLogObjectForNRUUID();
      v15 = _NRLogIsLevelEnabled();

      if (v15)
      {
        v16 = *(a1 + 96);
        v17 = _NRCopyLogObjectForNRUUID();
        v18 = *(a1 + 18);

        _NRLogWithArgs(v17, 1, "%s%.30s:%-4d Setting bringUpWiFiImmediately: %d -> %d", "", "[NRDDeviceConductor setBringUpWiFiImmediatelyInner:timeout:addSuspendBTRequest:]", 2294, v18, a2);
      }

      *(a1 + 18) = a2;
      if (a2)
      {
        v32[0] = _NSConcreteStackBlock;
        v32[1] = 3221225472;
        v32[2] = sub_1000F2154;
        v32[3] = &unk_1001FD3C8;
        v32[4] = a1;
        v19 = objc_retainBlock(v32);
        v20 = v19;
        if (a3)
        {
          v21 = objc_alloc_init(NRLinkDirectorRequest);
          v22 = v21;
          if (v21)
          {
            v21->_type = 6;
            v21->_allowsSuspendedLink = 0;
            objc_storeStrong(&v21->_timerDescription, @"WiFi-bringup-hysteresis");
            objc_storeStrong(&v22->_cancelIfLinkTypeReady, &off_10020A060);
            v22->_attemptImmediately = 1;
            v22->_timeout = a3;
            objc_setProperty_nonatomic_copy(v22, v23, v20, 48);
          }

          sub_1000EAA20(a1, v22);
        }

        else
        {
          v24 = *(a1 + 136);
          block[0] = _NSConcreteStackBlock;
          block[1] = 3221225472;
          block[2] = sub_1000F215C;
          block[3] = &unk_1001FD2A0;
          v31 = v19;
          dispatch_async(v24, block);
          v22 = v31;
        }

        v25 = objc_alloc_init(NRLinkDirectorRequest);
        v27 = v25;
        if (v25)
        {
          *&v25->_type = 1284;
          v25->_allowsSuspendedLink = 0;
          v25->_requiredLinkType = 1;
        }

        newValue[0] = _NSConcreteStackBlock;
        newValue[1] = 3221225472;
        newValue[2] = sub_1000F216C;
        newValue[3] = &unk_1001FD3C8;
        newValue[4] = a1;
        if (v25)
        {
          objc_setProperty_nonatomic_copy(v25, v26, newValue, 48);
        }

        sub_1000EAA20(a1, v27);
      }

      else
      {
        sub_1000F08C8(a1, 4u);

        sub_1000F0BF8(a1);
      }
    }
  }
}

void sub_1000F216C(uint64_t a1)
{
  v1 = *(a1 + 32);
  if (v1)
  {
    dispatch_assert_queue_V2(*(v1 + 136));

    sub_1000F1D90(v1, 0, 0xAu);
  }
}

uint64_t sub_1000F21C0(uint64_t result)
{
  v1 = *(result + 32);
  if (v1)
  {
    v2 = *(v1 + 408);
    if (!v2 || (*(v2 + 40) = 1, (v1 = *(result + 32)) != 0))
    {
      *(v1 + 20) = 0;
    }
  }

  return result;
}

void sub_1000F21F0(uint64_t a1)
{
  v2 = *(a1 + 32);
  if (!v2 || *(v2 + 20) != 1)
  {
    return;
  }

  if (*(a1 + 40))
  {
    [*(v2 + 472) removeObject:?];
    v2 = *(a1 + 32);
  }

  sub_1000F0B48(v2, 0);
  v3 = *(a1 + 32);
  if (v3 && (*(v3 + 20) = 0, (v4 = *(a1 + 32)) != 0))
  {
    v5 = *(v4 + 472);
  }

  else
  {
    v5 = 0;
  }

  v6 = [v5 count];
  v7 = *(a1 + 32);
  if (!v6)
  {
    if (v7)
    {
      v16 = *(v7 + 408);
      if (v16)
      {
        *(v16 + 32) = 1;
      }
    }

    v17 = _NRCopyLogObjectForNRUUID();
    IsLevelEnabled = _NRLogIsLevelEnabled();

    if (IsLevelEnabled)
    {
      v25 = _NRCopyLogObjectForNRUUID();
      _NRLogWithArgs(v25, 1, "%s%.30s:%-4d WiFi link failed to become ready in 60s. Could not honor prefer Wi-Fi ", "", "[NRDDeviceConductor setPreferWiFiTimeout]_block_invoke_2", 2564);
    }

    sub_1000F2504(*(a1 + 32), @"WiFi link did not come up", v19, v20, v21, v22, v23, v24, v32);
    v26 = *(a1 + 32);
    if (v26 && ((*(v26 + 616) & 4) == 0 || (v27 = *(v26 + 632), v28 = *(v26 + 608), sub_10007A18C(v28, v27), v28, (v26 = *(a1 + 32)) != 0)))
    {
      dispatch_assert_queue_V2(*(v26 + 136));
      objc_opt_self();
      if (qword_1002290C0 != -1)
      {
        dispatch_once(&qword_1002290C0, &stru_1001FB2B0);
      }

      v29 = qword_1002290B8;
      v30 = v29;
      if (v29)
      {
        v31 = *(v29 + 6);
      }

      else
      {
        v31 = 0;
      }

      v33 = v31;

      sub_10017F69C(v33);
    }

    else
    {
      v33 = 0;
      sub_10017F69C(0);
    }

    goto LABEL_36;
  }

  v8 = _NRCopyLogObjectForNRUUID();
  v9 = _NRLogIsLevelEnabled();

  if (v9)
  {
    v10 = *(a1 + 32);
    if (v10)
    {
      v10 = v10[12];
    }

    v11 = v10;
    v12 = _NRCopyLogObjectForNRUUID();
    [*(a1 + 40) unsignedCharValue];

    StringFromNRLinkSubtype = createStringFromNRLinkSubtype();
    _NRLogWithArgs(v12, 0, "%s%.30s:%-4d Failed to upgrade to %@, trying next link", "", "[NRDDeviceConductor setPreferWiFiTimeout]_block_invoke_2", 2545, StringFromNRLinkSubtype);
  }

  sub_1000F015C(*(a1 + 32));
  v14 = *(a1 + 32);
  if (*(a1 + 48))
  {
    v33 = sub_1000EA2C8(v14, 2, 102);
    if ([v33 startRequested])
    {
      v15 = @"AWDL link is not needed anymore";
LABEL_35:
      [v33 cancelWithReason:v15];
    }
  }

  else
  {
    if (!v14)
    {
      goto LABEL_37;
    }

    if (*(v14 + 45))
    {
      return;
    }

    v14 = sub_1000F1BC0(v14, 2);
    if (!v14)
    {
      goto LABEL_37;
    }

    v33 = v14;
    if ([(dispatch_queue_t *)v14 startRequested])
    {
      v15 = @"Wi-Fi link is not needed anymore";
      goto LABEL_35;
    }
  }

LABEL_36:
  v14 = v33;
LABEL_37:
}

void sub_1000F2504(uint64_t a1, void *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  if (a1)
  {
    v10 = *(a1 + 136);
    v11 = a2;
    dispatch_assert_queue_V2(v10);
    v12 = [[NSString alloc] initWithFormat:v11 arguments:&a9];

    v13 = _NRCopyLogObjectForNRUUID();
    IsLevelEnabled = _NRLogIsLevelEnabled();

    if (IsLevelEnabled)
    {
      v15 = _NRCopyLogObjectForNRUUID();
      _NRLogWithArgs(v15, 1, "%s%.30s:%-4d Rejecting prefer Wi-Fi request: %@", "", "[NRDDeviceConductor rejectPreferWiFiRequest:]", 3469, v12);
    }

    sub_1000059A8(*(a1 + 96), 1009, 0, v12);
    *(a1 + 16) = 0;
    if (*(a1 + 15))
    {
      if (*(a1 + 20) == 1)
      {
        *(a1 + 20) = 0;
      }

      sub_1000EF670(a1, 0, 1, 0, 0, 0);
      sub_1000EF7A0(a1, 0);
      *(a1 + 440) = nr_absolute_time();
    }

    else
    {
      v16 = _NRCopyLogObjectForNRUUID();
      v17 = _NRLogIsLevelEnabled();

      if (v17)
      {
        v18 = _NRCopyLogObjectForNRUUID();
        _NRLogWithArgs(v18, 1, "%s%.30s:%-4d ... we never had a prefer Wi-Fi request", "", "[NRDDeviceConductor rejectPreferWiFiRequest:]", 3474);
      }
    }
  }
}

void sub_1000F2698(uint64_t a1)
{
  v1 = sub_1000F1BC0(*(a1 + 32), 1);
  if (v1)
  {
    v3 = v1;
    v2 = [(dispatch_queue_t *)v1 state]== 255;
    v1 = v3;
    if (!v2)
    {
      if ([(dispatch_queue_t *)v3 state]== 8)
      {
        [(dispatch_queue_t *)v3 suspend];
      }

      else
      {
        v2 = [(dispatch_queue_t *)v3 state]== 9;
        v1 = v3;
        if (v2)
        {
          goto LABEL_8;
        }

        [(dispatch_queue_t *)v3 setSuspendWhenReady:1];
      }

      v1 = v3;
    }
  }

LABEL_8:
}

void sub_1000F2BE0(uint64_t a1, char a2)
{
  if (!a1)
  {
    return;
  }

  dispatch_assert_queue_V2(*(a1 + 136));
  if (*(a1 + 45) != 1)
  {
    return;
  }

  v4 = objc_alloc_init(NRLinkDirectorRequest);
  v6 = v4;
  if (!v4)
  {
    sub_1000EAA20(a1, 0);
    v5 = 0;
    if ((a2 & 1) == 0)
    {
      goto LABEL_7;
    }

    goto LABEL_6;
  }

  v4->_type = 1;
  v4->_requiredLinkType = 1;
  *&v4->_attemptImmediately = 257;
  sub_1000EAA20(a1, v4);
  v5 = v6;
  if ((a2 & 1) != 0 && !v6->_complete)
  {
LABEL_6:
    sub_1000ECEAC(a1, v6);
    v5 = v6;
  }

LABEL_7:
}

void sub_1000F2CB0(uint64_t a1)
{
  v1 = *(a1 + 32);
  if (v1 && (*(v1 + 26) & 1) != 0)
  {
    *(v1 + 26) = 0;
  }

  else
  {
    v2 = _NRCopyLogObjectForNRUUID();
    IsLevelEnabled = _NRLogIsLevelEnabled();

    if (IsLevelEnabled)
    {
      v4 = _NRCopyLogObjectForNRUUID();
      _NRLogWithArgs(v4, 17, "Sent prefer Wi-Fi request when we didn't have a pending request");
    }
  }
}

void sub_1000F31AC(uint64_t a1)
{
  if (*(a1 + 40) == 1)
  {
    v1 = *(a1 + 32);
    if (v1)
    {
      if (*(v1 + 28))
      {
        return;
      }

      v2 = *(v1 + 640);
      if (v2)
      {
        v2[4] |= 8u;
      }
    }

    else
    {
      v2 = 0;
    }
  }
}

void sub_1000F35C8(uint64_t a1)
{
  if (!a1)
  {
    return;
  }

  dispatch_assert_queue_V2(*(a1 + 136));
  objc_opt_self();
  if (qword_1002290C0 != -1)
  {
    dispatch_once(&qword_1002290C0, &stru_1001FB2B0);
  }

  v2 = qword_1002290B8;
  if (v2)
  {
    v3 = v2[8];

    if (v3 == 1)
    {
      v4 = _NRCopyLogObjectForNRUUID();
      IsLevelEnabled = _NRLogIsLevelEnabled();

      if (!IsLevelEnabled)
      {
        return;
      }

      v21 = _NRCopyLogObjectForNRUUID();
      _NRLogWithArgs(v21, 0, "%s%.30s:%-4d Not starting QR link as conductor is operating in fixed interface mode");
LABEL_19:

      return;
    }
  }

  if (*(a1 + 31) != 1)
  {
    v15 = _NRCopyLogObjectForNRUUID();
    v16 = _NRLogIsLevelEnabled();

    if (!v16)
    {
      return;
    }

    v17 = *(a1 + 96);
    v21 = _NRCopyLogObjectForNRUUID();

    _NRLogWithArgs(v21, 0, "%s%.30s:%-4d Not starting quick relay link (hasQuickRelayRequest=%d, apsIsConnected=%d)");
    goto LABEL_19;
  }

  dispatch_assert_queue_V2(*(a1 + 136));
  v6 = sub_100163A30(NRDLocalDevice, *(a1 + 96));
  v7 = v6;
  if (v6)
  {
    v8 = *(v6 + 144);
  }

  else
  {
    v8 = 0;
  }

  v9 = v8;
  v10 = [v9 getDefaultLinkSubtypeForLinkType:4];

  v11 = sub_1000EA2C8(a1, 4, v10);
  if (v11)
  {
    *(a1 + 256) = nr_continuous_time();
    [v11 start];
    v12 = objc_alloc_init(NRLinkDirectorRequest);
    v14 = v12;
    if (v12)
    {
      v12->_type = 8;
      v12->_allowsSuspendedLink = 0;
      v12->_requiredLinkType = 1;
    }

    newValue[0] = _NSConcreteStackBlock;
    newValue[1] = 3221225472;
    newValue[2] = sub_1000F38BC;
    newValue[3] = &unk_1001FD3C8;
    newValue[4] = a1;
    if (v12)
    {
      objc_setProperty_nonatomic_copy(v12, v13, newValue, 48);
    }

    sub_1000EAA20(a1, v14);
  }

  else
  {
    v18 = _NRCopyLogObjectForNRUUID();
    v19 = _NRLogIsLevelEnabled();

    if (v19)
    {
      v20 = _NRCopyLogObjectForNRUUID();
      _NRLogWithArgs(v20, 0, "%s%.30s:%-4d No quick relay link", "", "[NRDDeviceConductor startQuickRelayLinkIfApplicable:]", 1567);
    }
  }
}

void sub_1000F38BC(uint64_t a1)
{
  v1 = sub_1000F1BC0(*(a1 + 32), 4);
  if (([(dispatch_queue_t *)v1 ikeClassDEstablished]& 1) != 0 || [(dispatch_queue_t *)v1 ikeClassCEstablished])
  {
    [(dispatch_queue_t *)v1 suspend];
  }

  else
  {
    [(dispatch_queue_t *)v1 cancelWithReason:@"BT reconnected"];
  }
}

void sub_1000F4104(uint64_t a1)
{
  if (a1)
  {
    dispatch_assert_queue_V2(*(a1 + 136));
    if ([*(a1 + 200) count])
    {
      v2 = xpc_dictionary_create(0, 0, 0);
      if (!v2)
      {
        v9 = sub_1000E83DC();
        IsLevelEnabled = _NRLogIsLevelEnabled();

        if (IsLevelEnabled)
        {
          v11 = sub_1000E83DC();
          _NRLogWithArgs(v11, 16, "%s%.30s:%-4d ABORTING: xpc_dictionary_create(%p, %p, %u) failed", "", "nr_xpc_dictionary_create", 74, 0, 0, 0);
        }

        v12 = _os_log_pack_size();
        v13 = &v16 - ((__chkstk_darwin() + 15) & 0xFFFFFFFFFFFFFFF0);
        v14 = __error();
        v15 = _os_log_pack_fill(v13, v12, *v14, &_mh_execute_header, "%{public}s xpc_dictionary_create(%p, %p, %u) failed");
        sub_1000F4320(v15, "nr_xpc_dictionary_create");
        sub_1000E83DC();
        _NRLogAbortWithPack();
      }

      v3 = v2;
      sub_1000F4354(a1, v2);

      v18 = 0u;
      v19 = 0u;
      v16 = 0u;
      v17 = 0u;
      v4 = *(a1 + 200);
      v5 = [v4 countByEnumeratingWithState:&v16 objects:v20 count:16];
      if (v5)
      {
        v6 = v5;
        v7 = *v17;
        do
        {
          v8 = 0;
          do
          {
            if (*v17 != v7)
            {
              objc_enumerationMutation(v4);
            }

            xpc_connection_send_message(*(*(&v16 + 1) + 8 * v8), v3);
            v8 = v8 + 1;
          }

          while (v6 != v8);
          v6 = [v4 countByEnumeratingWithState:&v16 objects:v20 count:16];
        }

        while (v6);
      }
    }
  }
}

double sub_1000F4320(uint64_t a1, uint64_t a2)
{
  *&result = 136446978;
  *a1 = 136446978;
  *(a1 + 4) = a2;
  *(a1 + 12) = 2048;
  *(a1 + 14) = 0;
  *(a1 + 22) = 2048;
  *(a1 + 24) = 0;
  *(a1 + 32) = 1024;
  *(a1 + 34) = 0;
  return result;
}

void *sub_1000F4354(uint64_t a1, void *a2)
{
  v3 = a2;
  dispatch_assert_queue_V2(*(a1 + 136));
  v4 = *(a1 + 27);
  v5 = *(a1 + 28);
  v6 = *(a1 + 29);
  v7 = *(a1 + 88);
  v108 = *(a1 + 64);
  dispatch_assert_queue_V2(*(a1 + 136));
  v8 = *(a1 + 160);
  v109 = v3;
  v107 = v6;
  if ([v8 state] == 8)
  {
    v9 = [v8 type];
    v10 = [v8 subtype];
    v11 = [v8 ikeClassCEstablished];
    v12 = v11;
    if ((v9 - 1) < 2)
    {
      goto LABEL_90;
    }

    if (v9 == 4)
    {
      v105 = 0;
      v112 = 0;
      v13 = 1;
      goto LABEL_15;
    }

    if (v9 == 5)
    {
LABEL_90:
      if (*(a1 + 488) && *(a1 + 512))
      {
        v105 = NEVirtualInterfaceCopyName();
      }

      else
      {
        v105 = 0;
      }

      v13 = 0;
      v112 = 1;
    }

    else
    {
      v110 = v9;
      v14 = v11;
      v15 = v5;
      v16 = _NRCopyLogObjectForNRUUID();
      IsLevelEnabled = _NRLogIsLevelEnabled();

      if (IsLevelEnabled)
      {
        v18 = *(a1 + 96);
        v19 = _NRCopyLogObjectForNRUUID();
        _NRLogWithArgs(v19, 17, "Link is ready when the link type is unknown/unsupported: %@", v8);
      }

      v105 = 0;
      v112 = 0;
      v13 = 0;
      v5 = v15;
      v12 = v14;
      v9 = v110;
    }
  }

  else
  {
    v9 = 0;
    v10 = 0;
    v105 = 0;
    v12 = 0;
    v112 = 0;
    v13 = 0;
  }

LABEL_15:
  v20 = v5 & v4;
  v21 = sub_1000F1BC0(a1, 4);

  v103 = v21;
  if (v21 && [(dispatch_queue_t *)v21 state]== 8)
  {
    v13 = 1;
  }

  v22 = v10;
  v23 = v112;
  v104 = v13;
  if (!v112)
  {
    v7 = 0;
LABEL_38:
    v102 = v20;
    v28 = v108;
    goto LABEL_39;
  }

  objc_opt_self();
  if (qword_1002290C0 != -1)
  {
    dispatch_once(&qword_1002290C0, &stru_1001FB2B0);
  }

  v24 = qword_1002290B8;
  if (!v24 || v24[8] != 1)
  {
    if (qword_100229238 == -1)
    {
      if (byte_100229230)
      {
        goto LABEL_27;
      }
    }

    else
    {
      v29 = v7;
      v30 = v24;
      dispatch_once(&qword_100229238, &stru_1001FC340);
      v24 = v30;
      v7 = v29;
      v23 = v112;
      if (byte_100229230)
      {
LABEL_27:
        v25 = v7;
        v26 = *(a1 + 49);

        v27 = v26 == 1;
        v7 = v25;
        v23 = v112;
        if (v27)
        {
          goto LABEL_29;
        }

        goto LABEL_37;
      }
    }

LABEL_37:
    v22 = v10;
    goto LABEL_38;
  }

LABEL_29:
  if (qword_100229238 != -1)
  {
    dispatch_once(&qword_100229238, &stru_1001FC340);
  }

  v28 = v108;
  if (byte_100229230 == 1)
  {
    dispatch_assert_queue_V2(*(a1 + 136));
    v12 = [*(a1 + 160) ikeClassCEstablished];
    v22 = 0;
    v102 = 0;
    v9 = 1;
  }

  else
  {
    v102 = 0;
    v12 = 1;
    v22 = 101;
    v9 = 2;
  }

  v5 = 1;
LABEL_39:
  *(a1 + 92) = v7;
  *(a1 + 65) = v28;
  v31 = objc_alloc_init(NRDeviceInfo);
  v32 = [[NRDeviceIdentifier alloc] initWithUUID:*(a1 + 96)];
  [v31 setNrDeviceIdentifier:v32];

  [v31 setConnectedLinkType:v9];
  v113 = v31;
  [v31 setConnectedLinkSubtype:v22];
  v33 = *(a1 + 160);
  v106 = v12;
  v111 = v9;
  if (v33)
  {
    v34 = [v33 hasCompanionDatapath];
    v35 = *(a1 + 160);
    v36 = v109;
    v37 = v7;
    if (v34)
    {
      [v35 virtualInterface];
      v38 = NEVirtualInterfaceCopyName();
    }

    else
    {
      v38 = [v35 localInterfaceName];
    }

    v40 = v38;
    v39 = v113;
    [v113 setConnectedInterfaceName:v38];

    v33 = *(a1 + 160);
  }

  else
  {
    v37 = v7;
    v39 = v31;
    v36 = v109;
  }

  v41 = [v33 localOuterEndpoint];
  [v39 setLocalEndpoint:v41];

  v42 = [*(a1 + 160) remoteOuterEndpoint];
  [v39 setRemoteEndpoint:v42];

  v43 = sub_100163B2C(NRDLocalDevice, *(a1 + 96), 0);
  v44 = v43;
  if (*(a1 + 46) == 1)
  {
    v45 = v43;
    if (v43)
    {
      v45 = *(v43 + 144);
    }

    else
    {
      v44 = 0;
    }

    v46 = v45;
    v47 = [v46 proxyProviderType];

    v27 = v47 == 3;
    v23 = v112;
    v48 = v112 ^ 1;
    if (!v27)
    {
      v48 = 1;
    }

    if ((v48 & 1) == 0)
    {
      v101 = v44;
      objc_opt_self();
      if (qword_1002290C0 != -1)
      {
        dispatch_once(&qword_1002290C0, &stru_1001FB2B0);
      }

      v49 = qword_1002290B8;
      v50 = v49;
      if (!v49 || !v49[20])
      {

LABEL_85:
        v44 = v101;
        goto LABEL_86;
      }

      port = nw_http_proxy_server_get_port();

      if (port)
      {
        v122 = 0;
        v123 = 0;
        v52 = [*(a1 + 160) localInterfaceName];

        if ([v123 count] || objc_msgSend(v122, "count"))
        {
          v53 = objc_alloc_init(NRDeviceProxyInfo);
          [v113 setProxyInfo:v53];

          v54 = v44;
          v100 = a1;
          v99 = v5;
          v98 = v22;
          if (v44)
          {
            v54 = v44[18];
          }

          v55 = v54;
          v56 = [v55 proxyProviderType];
          v57 = [v113 proxyInfo];
          [v57 setProxyProviderType:v56];

          v58 = objc_alloc_init(NSMutableArray);
          v118 = 0u;
          v119 = 0u;
          v120 = 0u;
          v121 = 0u;
          v59 = v123;
          v60 = [v59 countByEnumeratingWithState:&v118 objects:v125 count:16];
          if (v60)
          {
            v61 = v60;
            v62 = *v119;
            do
            {
              for (i = 0; i != v61; i = i + 1)
              {
                if (*v119 != v62)
                {
                  objc_enumerationMutation(v59);
                }

                v64 = [NSString stringWithFormat:@"%@://%@:%u", @"https", *(*(&v118 + 1) + 8 * i), port];
                [v58 addObject:v64];
              }

              v61 = [v59 countByEnumeratingWithState:&v118 objects:v125 count:16];
            }

            while (v61);
          }

          v116 = 0u;
          v117 = 0u;
          v114 = 0u;
          v115 = 0u;
          v65 = v122;
          v66 = [v65 countByEnumeratingWithState:&v114 objects:v124 count:16];
          if (v66)
          {
            v67 = v66;
            v68 = *v115;
            do
            {
              for (j = 0; j != v67; j = j + 1)
              {
                if (*v115 != v68)
                {
                  objc_enumerationMutation(v65);
                }

                v70 = [NSString stringWithFormat:@"%@://[%@]:%u", @"https", *(*(&v114 + 1) + 8 * j), port];
                [v58 addObject:v70];
              }

              v67 = [v65 countByEnumeratingWithState:&v114 objects:v124 count:16];
            }

            while (v67);
          }

          v71 = v113;
          v72 = [v113 proxyInfo];
          [v72 setHttpConnectURLs:v58];

          a1 = v100;
          dispatch_assert_queue_V2(*(v100 + 136));
          v73 = *(v100 + 104);
          LOBYTE(v22) = v98;
          if (!v73)
          {
            v74 = +[NSUUID UUID];
            v75 = [v74 UUIDString];
            v76 = *(v100 + 104);
            *(v100 + 104) = v75;

            SharedWebCredentialPassword = SecCreateSharedWebCredentialPassword();
            v78 = *(v100 + 112);
            *(v100 + 112) = SharedWebCredentialPassword;

            v79 = qword_100229138;
            if (!qword_100229138)
            {
              v80 = objc_alloc_init(NSMutableDictionary);
              v81 = qword_100229138;
              qword_100229138 = v80;

              v79 = qword_100229138;
            }

            [v79 setObject:*(v100 + 112) forKeyedSubscript:*(v100 + 104)];
            v73 = *(v100 + 104);
          }

          v82 = [v113 proxyInfo];
          [v82 setHttpConnectUserName:v73];

          v83 = [qword_100229138 objectForKeyedSubscript:*(v100 + 104)];
          v84 = [v113 proxyInfo];
          [v84 setHttpConnectPassword:v83];

          dispatch_assert_queue_V2(*(v100 + 136));
          v85 = *(v100 + 120);
          if (!v85)
          {
            v86 = +[NSUUID UUID];
            v127[0] = 0;
            v127[1] = 0;
            [v86 getUUIDBytes:v127];
            v87 = [[NSData alloc] initWithBytes:v127 length:16];
            v88 = *(v100 + 120);
            *(v100 + 120) = v87;

            arc4random_buf(__buf, 0x20uLL);
            v89 = [NSData _newZeroingDataWithBytes:__buf length:32];
            v90 = *(v100 + 128);
            *(v100 + 128) = v89;

            cc_clear();
            v91 = qword_100229140;
            if (!qword_100229140)
            {
              v92 = objc_alloc_init(NSMutableDictionary);
              v93 = qword_100229140;
              qword_100229140 = v92;

              v91 = qword_100229140;
            }

            [v91 setObject:*(v100 + 128) forKeyedSubscript:*(v100 + 120)];

            v85 = *(v100 + 120);
            v71 = v113;
          }

          v94 = [v71 proxyInfo];
          [v94 setHttpConnectPSKIdentity:v85];

          v95 = [qword_100229140 objectForKeyedSubscript:*(v100 + 120)];
          v96 = [v71 proxyInfo];
          [v96 setHttpConnectPSK:v95];

          v36 = v109;
          v5 = v99;
          v23 = v112;
          v28 = v108;
        }

        goto LABEL_85;
      }
    }
  }

LABEL_86:
  sub_1000F4D84(NRDDeviceConductor, *(a1 + 96), v5, v23, v104, v102, v106, v107, v111, v22, v105, v37, v28, v113, v36);

  return v36;
}

void *sub_1000F4D84(uint64_t a1, void *a2, BOOL a3, BOOL a4, BOOL a5, BOOL a6, BOOL a7, BOOL a8, unsigned __int8 a9, unsigned __int8 a10, void *a11, unsigned int a12, BOOL a13, void *a14, void *a15)
{
  v19 = a2;
  v60 = a11;
  v20 = a14;
  v21 = a15;
  objc_opt_self();
  v61 = v19;
  v22 = sub_100163B2C(NRDLocalDevice, v19, 0);
  v23 = v21;
  v24 = v23;
  v59 = v20;
  if (v22)
  {
    xpc_dictionary_set_BOOL(v23, nrXPCKeyDeviceMonitorStatusIsRegistered, *(v22 + 48) & 1);
    xpc_dictionary_set_BOOL(v24, nrXPCKeyDeviceMonitorStatusIsEnabled, (*(v22 + 48) & 2) != 0);
    if (*(v22 + 12))
    {
      v25 = 0;
      v26 = 0;
    }

    else
    {
      v62 = 0uLL;
      sub_100167D5C(v22, &v62);
      objc_opt_self();
      if (WORD6(v62))
      {
        v27 = WORD5(v62) == 0;
      }

      else
      {
        v27 = 1;
      }

      v25 = !v27;
      if (*(v22 + 12))
      {
        v26 = 0;
      }

      else
      {
        v62 = 0uLL;
        sub_1001727AC(v22, &v62);
        objc_opt_self();
        if (WORD6(v62))
        {
          v28 = WORD5(v62) == 0;
        }

        else
        {
          v28 = 1;
        }

        v26 = !v28;
      }
    }

    v29 = *(v22 + 48);
    v30 = ((v29 & 8) != 0) | v25;
    v31 = ((v29 & 8) != 0) | v26;
    if ((v29 & 1) != 0 && (((v29 & 2) != 0) & v30 & (((v29 & 8) != 0) | v26)) != 0)
    {
      v32 = a10;
      v33 = a9;
      v34 = v60;
      v35 = a3;
      goto LABEL_27;
    }
  }

  else
  {
    xpc_dictionary_set_BOOL(v23, nrXPCKeyDeviceMonitorStatusIsRegistered, 0);
    xpc_dictionary_set_BOOL(v24, nrXPCKeyDeviceMonitorStatusIsEnabled, 0);
    v30 = 0;
    v31 = 0;
  }

  v36 = _NRCopyLogObjectForNRUUID();
  IsLevelEnabled = _NRLogIsLevelEnabled();

  if (IsLevelEnabled)
  {
    v38 = _NRCopyLogObjectForNRUUID();
    v39 = v38;
    if (v22)
    {
      v40 = *(v22 + 48) & 1;
      v41 = (*(v22 + 48) >> 1) & 1;
    }

    else
    {
      v40 = 0;
      v41 = 0;
    }

    _NRLogWithArgs(v38, 0, "%s%.30s:%-4d Deferring the device monitor update (registered=%d, enabled=%d, hasClassDAddr=%d, hasClassCAddr=%d)", "", "+[NRDDeviceConductor createDeviceMonitorDictWithNRUUID:isNearby:isConnected:isCloudConnected:isAsleep:isClassCConnected:hasUnpairedBluetooth:linkType:linkSubtype:proxySvcIntfName:thermalPressure:pluggedIn:deviceInfo:replyDict:]", 1829, v40, v41, v30 & 1, v31 & 1);
  }

  v33 = 0;
  v32 = 0;
  v34 = 0;
  a7 = 0;
  a6 = 0;
  a5 = 0;
  a4 = 0;
  v35 = 0;
LABEL_27:
  xpc_dictionary_set_BOOL(v24, nrXPCKeyDeviceMonitorStatusIsNearby, v35);
  xpc_dictionary_set_BOOL(v24, nrXPCKeyDeviceMonitorStatusIsConnected, a4);
  xpc_dictionary_set_BOOL(v24, nrXPCKeyDeviceMonitorStatusIsCloudConnected, a5);
  xpc_dictionary_set_BOOL(v24, nrXPCKeyDeviceMonitorStatusIsAsleep, a6);
  xpc_dictionary_set_BOOL(v24, nrXPCKeyDeviceMonitorStatusIsClassCConnected, a7);
  xpc_dictionary_set_BOOL(v24, nrXPCKeyDeviceMonitorStatusHasUnpairedBluetooth, a8);
  xpc_dictionary_set_uint64(v24, nrXPCKeyDeviceMonitorStatusLinkType, v33);
  xpc_dictionary_set_uint64(v24, nrXPCKeyDeviceMonitorStatusLinkSubtype, v32);
  if (v34)
  {
    xpc_dictionary_set_string(v24, nrXPCKeyDeviceMonitorStatusProxySvcIntfName, [v34 UTF8String]);
  }

  xpc_dictionary_set_uint64(v24, nrXPCKeyDeviceMonitorStatusThermalPressureLevel, a12);
  xpc_dictionary_set_BOOL(v24, nrXPCKeyDeviceMonitorStatusPluggedIn, a13);
  if (v59)
  {
    v42 = nrXPCKeyDeviceInfo;
    v43 = v24;
    v44 = v59;
    if (v42)
    {
      *&v62 = 0;
      v45 = [NSKeyedArchiver archivedDataWithRootObject:v44 requiringSecureCoding:1 error:&v62];
      v46 = v62;
      if (!v46 && [v45 length])
      {
        xpc_dictionary_set_data(v43, v42, [v45 bytes], objc_msgSend(v45, "length"));

        goto LABEL_34;
      }

      v51 = sub_1000E83DC();
      v52 = _NRLogIsLevelEnabled();

      if (v52)
      {
        v53 = sub_1000E83DC();
        _NRLogWithArgs(v53, 17, "Failed to archive %@: %@", v44, v46);
      }
    }

    else
    {
      v48 = sub_1000E83DC();
      v49 = _NRLogIsLevelEnabled();

      if (v49)
      {
        v50 = sub_1000E83DC();
        _NRLogWithArgs(v50, 17, "%s called with null key", "nr_xpc_dictionary_set_nsobject");
      }
    }

    v54 = sub_1000E83DC();
    v55 = _NRLogIsLevelEnabled();

    if (v55)
    {
      v56 = sub_1000E83DC();
      _NRLogWithArgs(v56, 17, "Failed to serialize deviceInfo");
    }
  }

LABEL_34:

  return v24;
}

void sub_1000F54EC(uint64_t a1)
{
  v3 = *(a1 + 32);
  if (v3 && *(v3 + 14) == 1 && *(a1 + 40) == *(v3 + 248))
  {
    v4 = a1;
    v5 = sub_1000F1BC0(v3, 1);
    v11 = v5;
    if (v5 && ([(dispatch_queue_t *)v5 ikeClassDEstablished]& 1) != 0)
    {
      v6 = _NRCopyLogObjectForNRUUID();
      IsLevelEnabled = _NRLogIsLevelEnabled();

      if (IsLevelEnabled)
      {
        v8 = _NRCopyLogObjectForNRUUID();
        _NRLogWithArgs(v8, 0, "%s%.30s:%-4d Not activating QR agent", "", "[NRDDeviceConductor pipeDidConnectForNRUUID:nrUUID:]_block_invoke", 7355);
      }
    }

    else
    {
      v9 = *(v4 + 32);
      if (v9)
      {
        v10 = *(v9 + 224);
      }

      else
      {
        v10 = 0;
      }

      sub_10003F8D8(v10);
    }
  }
}

uint64_t sub_1000F5768(uint64_t a1, void *a2)
{
  v4 = a2;
  v5 = v4;
  if (a1)
  {
    v16 = v4;
    v4 = [v4 ikeClassDEstablished];
    v5 = v16;
    if (v4)
    {
      v4 = [v16 type];
      v5 = v16;
      if (v4 != 4)
      {
        if (*(a1 + 28) == 1 && *(a1 + 27) == 1)
        {
          v6 = _NRCopyLogObjectForNRUUID();
          IsLevelEnabled = _NRLogIsLevelEnabled();

          if (IsLevelEnabled)
          {
            v8 = _NRCopyLogObjectForNRUUID();
            _NRLogWithArgs(v8, 1, "%s%.30s:%-4d deferring sending thermal pressure level update", "", "[NRDDeviceConductor sendDeviceThermalPressureLevelOnLink:]", 4536);
          }

          *(a1 + 66) = 1;
          goto LABEL_27;
        }

        *(a1 + 66) = 0;
        v9 = sub_10002A50C([NRLinkDirectorMessage alloc], *(a1 + 96));
        v10 = v9;
        if (v9)
        {
          objc_storeStrong(v9 + 3, a2);
        }

        objc_opt_self();
        if (qword_1002290C0 != -1)
        {
          dispatch_once(&qword_1002290C0, &stru_1001FB2B0);
        }

        v11 = qword_1002290B8;
        v12 = v11;
        if (v11)
        {
          if (!v10)
          {
LABEL_26:

            sub_10002C0E8(v10);
LABEL_27:
            v5 = v16;
            goto LABEL_28;
          }

          v13 = v11[6];
          if (v13)
          {
            if (v13 >= 0xB)
            {
              if (v13 >= 0x15)
              {
                if (v13 >= 0x1F)
                {
                  if (v13 >= 0x29)
                  {
                    LOBYTE(v13) = 50;
                  }

                  else
                  {
                    LOBYTE(v13) = 40;
                  }
                }

                else
                {
                  LOBYTE(v13) = 30;
                }
              }

              else
              {
                LOBYTE(v13) = 20;
              }
            }

            else
            {
              LOBYTE(v13) = 10;
            }
          }
        }

        else
        {
          if (!v10)
          {
            goto LABEL_26;
          }

          LOBYTE(v13) = 0;
        }

        v17 = v13;
        v14 = [[NSData alloc] initWithBytes:&v17 length:1];
        sub_10002AB38(v10, 14, v14);

        goto LABEL_26;
      }
    }
  }

LABEL_28:

  return _objc_release_x1(v4, v5);
}

uint64_t sub_1000F5974(uint64_t a1, void *a2)
{
  v4 = a2;
  v5 = v4;
  if (a1)
  {
    v16 = v4;
    v4 = [v4 ikeClassDEstablished];
    v5 = v16;
    if (v4)
    {
      v4 = [v16 type];
      v5 = v16;
      if (v4 != 4)
      {
        if (*(a1 + 28) == 1 && *(a1 + 27) == 1)
        {
          v6 = _NRCopyLogObjectForNRUUID();
          IsLevelEnabled = _NRLogIsLevelEnabled();

          if (IsLevelEnabled)
          {
            v8 = _NRCopyLogObjectForNRUUID();
            _NRLogWithArgs(v8, 1, "%s%.30s:%-4d deferring sending device state update", "", "[NRDDeviceConductor sendDeviceStateUpdateOnLink:]", 4516);
          }

          *(a1 + 67) = 1;
          goto LABEL_17;
        }

        *(a1 + 67) = 0;
        v9 = sub_10002A50C([NRLinkDirectorMessage alloc], *(a1 + 96));
        v10 = v9;
        if (v9)
        {
          objc_storeStrong(v9 + 3, a2);
        }

        objc_opt_self();
        if (qword_1002290C0 != -1)
        {
          dispatch_once(&qword_1002290C0, &stru_1001FB2B0);
        }

        v11 = qword_1002290B8;
        v12 = v11;
        if (v11)
        {
          v13 = *(v11 + 11);
          if (!v10)
          {
LABEL_16:

            sub_10002C0E8(v10);
LABEL_17:
            v5 = v16;
            goto LABEL_18;
          }
        }

        else
        {
          v13 = 0;
          if (!v10)
          {
            goto LABEL_16;
          }
        }

        v17 = v13 & 1;
        v14 = [[NSData alloc] initWithBytes:&v17 length:1];
        sub_10002AB38(v10, 22, v14);

        goto LABEL_16;
      }
    }
  }

LABEL_18:

  return _objc_release_x1(v4, v5);
}

uint64_t sub_1000F5B40(uint64_t a1, void *a2)
{
  v4 = a2;
  v5 = v4;
  if (a1)
  {
    if (v4)
    {
      if (*(a1 + 536))
      {
        v17 = v4;
        v4 = [v4 ikeClassDEstablished];
        v5 = v17;
        if (v4)
        {
          v4 = [v17 state];
          v5 = v17;
          if (v4 != 255)
          {
            v4 = [v17 type];
            v5 = v17;
            if (v4 != 4)
            {
              if (*(a1 + 27) == 1 && *(a1 + 28) == 1)
              {
                v6 = _NRCopyLogObjectForNRUUID();
                IsLevelEnabled = _NRLogIsLevelEnabled();

                v5 = v17;
                if (!IsLevelEnabled)
                {
                  goto LABEL_20;
                }

                v8 = _NRCopyLogObjectForNRUUID();
                _NRLogWithArgs(v8, 2, "%s%.30s:%-4d deferring net-info update as peer is asleep", "", "[NRDDeviceConductor sendNetInfoOnLink:]", 985);
              }

              else
              {
                v8 = sub_10001EEBC(*(a1 + 536));
                if (v8)
                {
                  v9 = *(a1 + 536);
                  if (v9)
                  {
                    v9 = *(v9 + 32);
                  }

                  *(a1 + 544) = v9;
                  v10 = sub_10002A50C([NRLinkDirectorMessage alloc], *(a1 + 96));
                  v11 = v10;
                  if (v10)
                  {
                    objc_storeStrong(v10 + 3, a2);
                  }

                  sub_10002AB38(v11, 12, v8);
                  sub_10002C0E8(v11);
                  v12 = _NRCopyLogObjectForNRUUID();
                  v13 = _NRLogIsLevelEnabled();

                  if (v13)
                  {
                    v14 = *(a1 + 96);
                    v15 = _NRCopyLogObjectForNRUUID();
                    _NRLogWithArgs(v15, 1, "%s%.30s:%-4d sending net-info update %@ generation %llu on %@", "", "[NRDDeviceConductor sendNetInfoOnLink:]", 999, *(a1 + 536), *(a1 + 544), v17);
                  }
                }
              }

              v5 = v17;
            }
          }
        }
      }
    }
  }

LABEL_20:

  return _objc_release_x1(v4, v5);
}

void sub_1000F91EC(uint64_t a1, void *a2, int a3)
{
  v9 = a2;
  if (a1)
  {
    dispatch_assert_queue_V2(*(a1 + 136));
    if (*(a1 + 21) != 1 || a3 != 0)
    {
      v7 = sub_10002A50C([NRLinkDirectorMessage alloc], *(a1 + 96));
      v8 = v7;
      if (v7)
      {
        objc_storeStrong(v7 + 3, a2);
        sub_10002AB38(v8, 1, 0);
      }

      sub_10002C0E8(v8);
      *(a1 + 21) = 1;
    }
  }
}

void sub_1000F92A8(uint64_t a1)
{
  v2 = *(a1 + 32);
  if (v2)
  {
    dispatch_assert_queue_V2(*(v2 + 136));
    objc_opt_self();
    if (qword_1002290C0 != -1)
    {
      dispatch_once(&qword_1002290C0, &stru_1001FB2B0);
    }

    v3 = qword_1002290B8;
    v4 = v3;
    if (v3)
    {
      v5 = *(v3 + 6);
    }

    else
    {
      v5 = 0;
    }

    v6 = v5;

    if (v6 && (v7 = v6[13]) != 0)
    {
      v8 = *(v7 + 12);
    }

    else
    {
      v8 = 0;
    }
  }

  else
  {
    v6 = 0;
    v8 = 0;
  }

  v9 = *(a1 + 40);
  if (!v9)
  {
    v11 = 0;
    v53 = *(a1 + 32);
    if (!v53)
    {
      goto LABEL_96;
    }

    goto LABEL_58;
  }

  v10 = sub_10002BDA4(v9, v8, 0);
  v11 = v10;
  if (v10 && [v10 count])
  {
    v12 = sub_100029538(*(a1 + 40));
    v13 = *(a1 + 32);
    if (v13)
    {
      if (v12 == *(v13 + 360))
      {
LABEL_14:
        v14 = [v11 firstObject];
        v15 = *(a1 + 32);
        if (v15)
        {
          dispatch_assert_queue_V2(*(v15 + 136));
          objc_opt_self();
          if (qword_1002290C0 != -1)
          {
            dispatch_once(&qword_1002290C0, &stru_1001FB2B0);
          }

          v16 = qword_1002290B8;
          v17 = v16;
          if (v16)
          {
            v18 = *(v16 + 6);
          }

          else
          {
            v18 = 0;
          }

          v19 = v18;
        }

        else
        {
          v19 = 0;
        }

        v226 = v14;
        v20 = [NSArray arrayWithObjects:&v226 count:1];
        v21 = *(a1 + 32);
        if (v21)
        {
          v22 = *(v21 + 96);
        }

        else
        {
          v22 = 0;
        }

        sub_10017E570(v19, v20, v22);

        v23 = [v14 addressData];
        v24 = *(a1 + 32);
        if (v24)
        {
          v25 = *(v24 + 96);
        }

        else
        {
          v25 = 0;
        }

        sub_1000B7458(v25, @"WiFiEndpointAddressData", v23);
        v26 = *(a1 + 32);
        if (v26)
        {
          dispatch_assert_queue_V2(*(v26 + 136));
          objc_opt_self();
          if (qword_1002290C0 != -1)
          {
            dispatch_once(&qword_1002290C0, &stru_1001FB2B0);
          }

          v27 = qword_1002290B8;
          v28 = v27;
          if (v27)
          {
            v29 = *(v27 + 6);
          }

          else
          {
            v29 = 0;
          }

          v30 = v29;

          v31 = *(a1 + 32);
          if (v31)
          {
            v31 = v31[12];
          }
        }

        else
        {
          v30 = 0;
          v31 = 0;
        }

        v32 = v31;
        v33 = sub_10017E984(v30, v32);
        sub_1000EC910(v26, 1010, @"received Wi-Fi address update: %@", v34, v35, v36, v37, v38, v33);

        v39 = *(a1 + 40);
        if (v39)
        {
          v40 = sub_10002B210(v39, 4);
          v41 = [v40 firstObject];

          if (v41)
          {
            v42 = [v41 length];
            v43 = *(a1 + 32);
            if (v42)
            {
              if (v43)
              {
                dispatch_assert_queue_V2(*(v43 + 136));
                objc_opt_self();
                if (qword_1002290C0 != -1)
                {
                  dispatch_once(&qword_1002290C0, &stru_1001FB2B0);
                }

                v44 = qword_1002290B8;
                v45 = v44;
                if (v44)
                {
                  v46 = *(v44 + 6);
                }

                else
                {
                  v46 = 0;
                }

                v47 = v46;
              }

              else
              {
                v47 = 0;
              }

              sub_10017E36C(v47, v41);
            }

            else
            {
              if (v43)
              {
                dispatch_assert_queue_V2(*(v43 + 136));
                objc_opt_self();
                if (qword_1002290C0 != -1)
                {
                  dispatch_once(&qword_1002290C0, &stru_1001FB2B0);
                }

                v54 = qword_1002290B8;
                v55 = v54;
                if (v54)
                {
                  v56 = *(v54 + 6);
                }

                else
                {
                  v56 = 0;
                }

                v47 = v56;
              }

              else
              {
                v47 = 0;
              }

              sub_10017E36C(v47, 0);
            }

            v57 = *(a1 + 32);
            if (v57)
            {
              v58 = *(v57 + 96);
            }

            else
            {
              v58 = 0;
            }

            sub_1000B7458(v58, @"WiFiSignature", v41);
          }
        }

        else
        {
          v41 = 0;
        }

        goto LABEL_57;
      }
    }

    else if (!v12)
    {
      goto LABEL_14;
    }

    v48 = _NRCopyLogObjectForNRUUID();
    IsLevelEnabled = _NRLogIsLevelEnabled();

    if (IsLevelEnabled)
    {
      v50 = *(a1 + 32);
      if (v50)
      {
        v50 = v50[12];
      }

      v51 = v50;
      v52 = _NRCopyLogObjectForNRUUID();
      _NRLogWithArgs(v52, 1, "%s%.30s:%-4d Skipping WiFi address update message %@", "", "[NRDDeviceConductor linkDidReceiveData:data:]_block_invoke", 6712, *(a1 + 40));

      v53 = *(a1 + 32);
      if (!v53)
      {
        goto LABEL_96;
      }

      goto LABEL_58;
    }
  }

LABEL_57:
  v53 = *(a1 + 32);
  if (!v53)
  {
    goto LABEL_96;
  }

LABEL_58:
  if (*(v53 + 10) != 1)
  {
    goto LABEL_96;
  }

  v59 = sub_100029538(*(a1 + 40));
  v60 = *(a1 + 32);
  if (v60)
  {
    if (v59 != *(v60 + 384))
    {
      goto LABEL_96;
    }

    dispatch_assert_queue_V2(*(v60 + 136));
    objc_opt_self();
    if (qword_1002290C0 != -1)
    {
      dispatch_once(&qword_1002290C0, &stru_1001FB2B0);
    }

    v61 = qword_1002290B8;
    v62 = v61;
    if (v61)
    {
      v63 = *(v61 + 6);
    }

    else
    {
      v63 = 0;
    }

    v64 = v63;

    if (v64 && (v65 = v64[14]) != 0)
    {
      v66 = *(v65 + 12);
    }

    else
    {
      v66 = 0;
    }
  }

  else
  {
    if (v59)
    {
      goto LABEL_96;
    }

    v64 = 0;
    v66 = 0;
  }

  v67 = *(a1 + 40);
  if (v67)
  {
    v68 = sub_10002B210(v67, 10);
    v69 = [v68 firstObject];

    if (v69 && [v69 length])
    {
      LOBYTE(v203) = 0;
      [v69 getBytes:&v203 length:1];
      if (v203)
      {
        v70 = &__kCFBooleanTrue;
      }

      else
      {
        v70 = &__kCFBooleanFalse;
      }

      if ([v70 BOOLValue])
      {
        v71 = *(a1 + 40);
        if (v71)
        {
          v69 = sub_10002BDA4(v71, v66, 1);
        }

        else
        {
          v69 = 0;
        }

        v72 = [v69 firstObject];
        v73 = *(a1 + 32);
        if (v73)
        {
          dispatch_assert_queue_V2(*(v73 + 136));
          objc_opt_self();
          if (qword_1002290C0 != -1)
          {
            dispatch_once(&qword_1002290C0, &stru_1001FB2B0);
          }

          v74 = qword_1002290B8;
          v75 = v74;
          if (v74)
          {
            v76 = *(v74 + 6);
          }

          else
          {
            v76 = 0;
          }

          v77 = v76;

          v78 = *(a1 + 32);
          if (v78)
          {
            v79 = *(v78 + 96);
          }

          else
          {
            v79 = 0;
          }
        }

        else
        {
          v77 = 0;
          v79 = 0;
        }

        sub_10017EA30(v77, v72, v79);

        sub_1000EC910(*(a1 + 32), 1040, @"%@ received AWDL address update: %@", v80, v81, v82, v83, v84, *(a1 + 32));
      }

      else
      {
        v85 = *(a1 + 32);
        if (v85)
        {
          dispatch_assert_queue_V2(*(v85 + 136));
          objc_opt_self();
          if (qword_1002290C0 != -1)
          {
            dispatch_once(&qword_1002290C0, &stru_1001FB2B0);
          }

          v86 = qword_1002290B8;
          v87 = v86;
          if (v86)
          {
            v88 = *(v86 + 6);
          }

          else
          {
            v88 = 0;
          }

          v69 = v88;

          v89 = *(a1 + 32);
          if (v89)
          {
            v90 = *(v89 + 96);
          }

          else
          {
            v90 = 0;
          }
        }

        else
        {
          v69 = 0;
          v90 = 0;
        }

        sub_10017EA30(v69, 0, v90);
      }
    }

    else
    {
      v70 = 0;
    }
  }

  else
  {
    v70 = 0;
  }

LABEL_96:
  v91 = sub_100029538(*(a1 + 40));
  v92 = *(a1 + 32);
  if (v92)
  {
    if (v91 != *(v92 + 392))
    {
      goto LABEL_136;
    }

LABEL_98:
    v93 = *(a1 + 40);
    if (!v93)
    {
      v95 = 0;
      goto LABEL_135;
    }

    v94 = sub_10002B210(v93, 15);
    v95 = [v94 firstObject];

    if (!v95)
    {
LABEL_135:

      v92 = *(a1 + 32);
      goto LABEL_136;
    }

    v96 = [[NSString alloc] initWithData:v95 encoding:4];
    if (!v96)
    {
LABEL_134:

      goto LABEL_135;
    }

    v97 = *(a1 + 32);
    _NRIsAppleInternal();
    sub_1000EC910(v97, 1051, @"%@ received country code update: %@", v98, v99, v100, v101, v102, v97);
    if (!*(a1 + 32))
    {
      v201 = v96;
      v106 = 0;
      goto LABEL_133;
    }

    dispatch_assert_queue_V2(*(*(a1 + 32) + 136));
    objc_opt_self();
    if (qword_1002290C0 != -1)
    {
      dispatch_once(&qword_1002290C0, &stru_1001FB2B0);
    }

    v103 = qword_1002290B8;
    v104 = v103;
    if (v103)
    {
      v105 = *(v103 + 6);
    }

    else
    {
      v105 = 0;
    }

    v106 = v105;

    v107 = v96;
    if (!v106)
    {
      goto LABEL_133;
    }

    v108 = v107;
    v109 = v106[3];
    dispatch_assert_queue_V2(v109);

    if (![v108 compare:@"XZ" options:1])
    {
      if (qword_1002294A8 != -1)
      {
        dispatch_once(&qword_1002294A8, &stru_1001FD210);
      }

      if (_NRLogIsLevelEnabled())
      {
        if (qword_1002294A8 != -1)
        {
          dispatch_once(&qword_1002294A8, &stru_1001FD210);
        }

        _NRLogWithArgs(qword_1002294A0, 17, "received invalid country code");
      }

      goto LABEL_133;
    }

    v110 = v106[22];
    v222 = 0;
    v223 = &v222;
    v224 = 0x2020000000;
    v225 = 0;
    v218 = 0;
    v219 = &v218;
    v220 = 0x2020000000;
    v221 = 0;
    v212 = 0;
    v213 = &v212;
    v214 = 0x3032000000;
    v215 = sub_10017AF00;
    v216 = sub_10017AF10;
    v217 = 0;
    v203 = _NSConcreteStackBlock;
    v204 = 3221225472;
    v205 = sub_10017FB74;
    v206 = &unk_1001FD178;
    v202 = v110;
    v207 = v202;
    v209 = &v222;
    v208 = v108;
    v210 = &v212;
    v211 = &v218;
    if (sub_10017AE24(NRLinkManagerWiFi, &v203) || (v223[3] & 1) == 0 && *(v219 + 24) != 1 || v213[5])
    {
      v199 = sub_1001762F4();
      v200 = _NRLogIsLevelEnabled();

      if (!v200)
      {
        goto LABEL_132;
      }

      v113 = sub_1001762F4();
      _NRLogWithArgs(v113, 16, "%s%.30s:%-4d failed to set peer country code %@", "", "[NRLinkManagerWiFi setPeerCountryCodeIfApplicable:]", 2006, v213[5]);
    }

    else if (*(v219 + 24) == 1)
    {
      if (qword_1002294A8 != -1)
      {
        dispatch_once(&qword_1002294A8, &stru_1001FD210);
      }

      v111 = qword_1002294A0;
      v112 = _NRLogIsLevelEnabled();

      if ((v112 & 1) == 0)
      {
        goto LABEL_132;
      }

      if (qword_1002294A8 != -1)
      {
        dispatch_once(&qword_1002294A8, &stru_1001FD210);
      }

      v113 = qword_1002294A0;
      _NRLogWithArgs(v113, 1, "%s%.30s:%-4d not setting companion country code as local country code is available", "", "[NRLinkManagerWiFi setPeerCountryCodeIfApplicable:]", 2001);
    }

    else
    {
      if (qword_1002294A8 != -1)
      {
        dispatch_once(&qword_1002294A8, &stru_1001FD210);
      }

      v114 = qword_1002294A0;
      v115 = _NRLogIsLevelEnabled();

      if (!v115)
      {
        goto LABEL_132;
      }

      if (qword_1002294A8 != -1)
      {
        dispatch_once(&qword_1002294A8, &stru_1001FD210);
      }

      v113 = qword_1002294A0;
      _NRLogWithArgs(v113, 1, "%s%.30s:%-4d successfully set peer country code", "", "[NRLinkManagerWiFi setPeerCountryCodeIfApplicable:]", 2003);
    }

LABEL_132:
    _Block_object_dispose(&v212, 8);

    _Block_object_dispose(&v218, 8);
    _Block_object_dispose(&v222, 8);

LABEL_133:
    goto LABEL_134;
  }

  if (!v91)
  {
    goto LABEL_98;
  }

LABEL_136:
  if (v92 && *(v92 + 8) == 1)
  {
    LOBYTE(v204) = 0;
    v203 = 0;
    v116 = *(a1 + 40);
    if (v116)
    {
      v117 = sub_10002B210(v116, 13);
      v118 = [v117 firstObject];

      if (v118)
      {
        [v118 getBytes:&v203 length:9];
        if ((v204 & 1) == 0)
        {
          v119 = 0;
          goto LABEL_217;
        }

        v119 = [NSNumber numberWithUnsignedChar:v203];
        v129 = v118;
        if (!v119)
        {
LABEL_214:
          v118 = v129;
          goto LABEL_217;
        }

LABEL_182:
        v152 = sub_100029538(*(a1 + 40));
        v153 = *(a1 + 32);
        if (v153)
        {
          if (v152 == *(v153 + 376))
          {
            goto LABEL_184;
          }
        }

        else if (!v152)
        {
LABEL_184:
          v159 = [v119 BOOLValue];
          v160 = a1 + 32;
          v161 = "disable";
          if (v159)
          {
            v161 = "enable";
          }

          sub_1000EC910(*(a1 + 32), 1021, @"%s", v154, v155, v156, v157, v158, v161);
          if (*v160)
          {
            *(*v160 + 16) = 0;
            v162 = *(a1 + 32);
            if ((v159 & 1) == 0)
            {
              if (v162)
              {
                dispatch_assert_queue_V2(*(v162 + 136));
                objc_opt_self();
                if (qword_1002290C0 != -1)
                {
                  dispatch_once(&qword_1002290C0, &stru_1001FB2B0);
                }

                v163 = qword_1002290B8;
                v164 = v163;
                if (v163)
                {
                  v165 = *(v163 + 6);
                }

                else
                {
                  v165 = 0;
                }

                v166 = v165;

                if (v166)
                {
                  v167 = v166[3];
                  dispatch_assert_queue_V2(v167);

                  v168 = *(v166 + 10) > 0;
                  v169 = *(a1 + 32);
                  if (!v169)
                  {
                    goto LABEL_196;
                  }

                  goto LABEL_195;
                }

                v168 = 0;
                v169 = *(a1 + 32);
                if (v169)
                {
LABEL_195:
                  *(v169 + 26) = v168;
                }
              }

              else
              {
                v166 = 0;
              }

LABEL_196:

              v170 = _NRCopyLogObjectForNRUUID();
              v171 = _NRLogIsLevelEnabled();

              v162 = *(a1 + 32);
              if (v171)
              {
                if (v162)
                {
                  v172 = *(v162 + 96);
                }

                else
                {
                  v172 = 0;
                }

                v173 = v172;
                v174 = _NRCopyLogObjectForNRUUID();
                v175 = v174;
                v176 = *(a1 + 32);
                if (v176)
                {
                  LODWORD(v176) = *(v176 + 26);
                }

                _NRLogWithArgs(v174, 0, "%s%.30s:%-4d Pending prefer Wi-Fi set to: %d", "", "[NRDDeviceConductor linkDidReceiveData:data:]_block_invoke", 6773, v176);

                v162 = *(a1 + 32);
              }
            }
          }

          else
          {
            v166 = 0;
            v162 = 0;
            if ((v159 & 1) == 0)
            {
              goto LABEL_196;
            }
          }

          if (v118)
          {
            sub_1000FEA10(v162, v129);
          }

          else
          {
            sub_1000EF7A0(v162, v159);
          }

          goto LABEL_214;
        }

        v177 = _NRCopyLogObjectForNRUUID();
        v178 = _NRLogIsLevelEnabled();

        if (v178)
        {
          v179 = *(a1 + 32);
          if (v179)
          {
            v179 = v179[12];
          }

          v180 = v179;
          v181 = _NRCopyLogObjectForNRUUID();
          _NRLogWithArgs(v181, 1, "%s%.30s:%-4d Skipping Prefer Wi-Fi ACK message %@", "", "[NRDDeviceConductor linkDidReceiveData:data:]_block_invoke", 6782, *(a1 + 40));
        }

        goto LABEL_214;
      }

      v126 = *(a1 + 40);
      if (v126)
      {
        v127 = sub_10002B210(v126, 7);
        v128 = [v127 firstObject];

        if (v128 && [v128 length])
        {
          LOBYTE(v212) = 0;
          [v128 getBytes:&v212 length:1];
          if (v212)
          {
            v119 = &__kCFBooleanTrue;
          }

          else
          {
            v119 = &__kCFBooleanFalse;
          }
        }

        else
        {
          v119 = 0;
        }

        v129 = 0;
        if (!v119)
        {
          goto LABEL_214;
        }

        goto LABEL_182;
      }
    }

    v118 = 0;
    v119 = 0;
    goto LABEL_217;
  }

  LOBYTE(v204) = 0;
  v203 = 0;
  v120 = *(a1 + 40);
  if (!v120)
  {
    goto LABEL_238;
  }

  v121 = sub_10002B210(v120, 13);
  v122 = [v121 firstObject];

  if (v122)
  {
    [v122 getBytes:&v203 length:9];
    v119 = [NSNumber numberWithUnsignedChar:v203];
    v118 = v122;
    if (!v119)
    {
      goto LABEL_217;
    }

    goto LABEL_162;
  }

  v123 = *(a1 + 40);
  if (!v123)
  {
LABEL_238:
    v119 = 0;
    v118 = 0;
    goto LABEL_217;
  }

  v124 = sub_10002B210(v123, 5);
  v125 = [v124 firstObject];

  if (v125 && [v125 length])
  {
    LOBYTE(v212) = 0;
    [v125 getBytes:&v212 length:1];
    if (v212)
    {
      v119 = &__kCFBooleanTrue;
    }

    else
    {
      v119 = &__kCFBooleanFalse;
    }
  }

  else
  {
    v119 = 0;
  }

  v118 = 0;
  if (!v119)
  {
    goto LABEL_217;
  }

LABEL_162:
  v130 = sub_100029538(*(a1 + 40));
  v131 = *(a1 + 32);
  if (!v131)
  {
    if (!v130)
    {
      goto LABEL_164;
    }

LABEL_176:
    v147 = _NRCopyLogObjectForNRUUID();
    v148 = _NRLogIsLevelEnabled();

    if (v148)
    {
      v149 = *(a1 + 32);
      if (v149)
      {
        v149 = v149[12];
      }

      v150 = v149;
      v151 = _NRCopyLogObjectForNRUUID();
      _NRLogWithArgs(v151, 1, "%s%.30s:%-4d Skipping Prefer Wi-Fi message %@", "", "[NRDDeviceConductor linkDidReceiveData:data:]_block_invoke", 6849, *(a1 + 40));
    }

    goto LABEL_217;
  }

  if (v130 != *(v131 + 368))
  {
    goto LABEL_176;
  }

LABEL_164:
  v137 = [v119 BOOLValue];
  v138 = "dis";
  if (v137)
  {
    v138 = "en";
  }

  sub_1000EC910(*(a1 + 32), 1008, @"received prefer Wi-Fi request: %sable", v132, v133, v134, v135, v136, v138);
  v139 = *(a1 + 32);
  if (!v137)
  {
    v182 = _NRCopyLogObjectForNRUUID();
    v183 = _NRLogIsLevelEnabled();

    if (v183)
    {
      v184 = _NRCopyLogObjectForNRUUID();
      _NRLogWithArgs(v184, 0, "%s%.30s:%-4d Disable prefer Wi-Fi request", "", "[NRDDeviceConductor linkDidReceiveData:data:]_block_invoke", 6821);
    }

    v185 = *(a1 + 32);
    if (v185)
    {
      *(v185 + 26) = 0;
      v139 = *(a1 + 32);
      if (v122)
      {
        goto LABEL_216;
      }
    }

    else
    {
      v139 = 0;
      if (v122)
      {
        goto LABEL_216;
      }
    }

LABEL_212:
    sub_1000EF7A0(v139, v137);
    goto LABEL_217;
  }

  if (v139)
  {
    if (*(v139 + 15) == 1)
    {
      v140 = _NRCopyLogObjectForNRUUID();
      v141 = _NRLogIsLevelEnabled();

      if (v141)
      {
        v142 = *(a1 + 32);
        if (v142)
        {
          v142 = v142[12];
        }

        v143 = v142;
        v144 = _NRCopyLogObjectForNRUUID();
        v145 = v144;
        v146 = *(a1 + 32);
        if (v146)
        {
          LODWORD(v146) = *(v146 + 15);
        }

        _NRLogWithArgs(v144, 1, "%s%.30s:%-4d We already know about this prefer Wi-Fi request (%d). Ignoring this request", "", "[NRDDeviceConductor linkDidReceiveData:data:]_block_invoke", 6804, v146);
      }

      sub_1000EFC5C(*(a1 + 32));
      goto LABEL_217;
    }

    if (v122)
    {
LABEL_216:
      sub_1000FEA10(v139, v118);
      goto LABEL_217;
    }

    v186 = sub_1000FEEB4(v139);
    v187 = *(a1 + 32);
    if ((v186 & 1) == 0)
    {
      if (v187)
      {
        *(v187 + 26) = 1;
      }

      goto LABEL_217;
    }
  }

  else
  {
    v187 = 0;
    if (v122)
    {
      goto LABEL_216;
    }
  }

  v188 = sub_1000EC630(v187);
  v189 = v188;
  v190 = *(a1 + 32);
  if (v190)
  {
    v191 = *(v190 + 96);
  }

  else
  {
    v191 = 0;
  }

  v192 = sub_10017E984(v188, v191);

  if (v192)
  {
    v193 = _NRCopyLogObjectForNRUUID();
    v194 = _NRLogIsLevelEnabled();

    if (v194)
    {
      v195 = _NRCopyLogObjectForNRUUID();
      _NRLogWithArgs(v195, 1, "%s%.30s:%-4d Honoring prefer Wi-Fi request", "", "[NRDDeviceConductor linkDidReceiveData:data:]_block_invoke", 6837);
    }

    v139 = *(a1 + 32);
    goto LABEL_212;
  }

  v196 = _NRCopyLogObjectForNRUUID();
  v197 = _NRLogIsLevelEnabled();

  if (v197)
  {
    v198 = _NRCopyLogObjectForNRUUID();
    _NRLogWithArgs(v198, 17, "Could not enable prefer Wi-Fi request as no peer address found");
  }

LABEL_217:
}

void sub_1000FA7C4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, ...)
{
  va_start(va, a29);
  _Block_object_dispose(&a24, 8);
  _Block_object_dispose(va, 8);
  _Block_object_dispose((v29 - 136), 8);
  _Unwind_Resume(a1);
}

void sub_1000FA7F8(uint64_t a1)
{
  if (!a1 || !sub_1000FE89C(a1))
  {
    return;
  }

  v2 = *(a1 + 600);
  if (!v2 || *(v2 + 9) != 1)
  {
    *(a1 + 74) = 1;
    objc_initWeak(&location, a1);
    v5 = *(a1 + 80);
    if (v5 >= 0xC)
    {
      LOBYTE(v5) = 12;
      *(a1 + 80) = 12;
    }

    else if (!v5)
    {
      v6 = 0;
LABEL_14:
      v7 = dispatch_time(0, v6);
      v8 = *(a1 + 136);
      block[0] = _NSConcreteStackBlock;
      block[1] = 3221225472;
      block[2] = sub_1000FE9B0;
      block[3] = &unk_1001FC730;
      v9 = v8;
      objc_copyWeak(&v12, &location);
      dispatch_after(v7, v9, block);

      objc_destroyWeak(&v12);
      objc_destroyWeak(&location);
      return;
    }

    v6 = 1000000000 << (v5 + 1);
    goto LABEL_14;
  }

  v3 = _NRCopyLogObjectForNRUUID();
  IsLevelEnabled = _NRLogIsLevelEnabled();

  if (IsLevelEnabled)
  {
    v10 = _NRCopyLogObjectForNRUUID();
    _NRLogWithArgs(v10, 2, "%s%.30s:%-4d discovery proxy already running", "", "[NRDDeviceConductor startDiscoveryProxyClientIfNeeded]", 5355);
  }
}

void sub_1000FA994(uint64_t a1)
{
  if (a1 && *(a1 + 63) == 1)
  {
    if (*(a1 + 600))
    {
      sub_1000FE760(a1, 0);
      [*(a1 + 600) cancel];
      v2 = *(a1 + 600);
      *(a1 + 600) = 0;
    }

    v3 = *(a1 + 592);
    if (v3)
    {
      [v3 cancel];
      v4 = *(a1 + 592);
      *(a1 + 592) = 0;
    }

    *(a1 + 80) = 0;
    *(a1 + 74) = 0;
  }
}

void sub_1000FAA10(uint64_t a1, int a2)
{
  if (a1 && *(a1 + 57) == 1)
  {
    v4 = *(a1 + 704);
    *(a1 + 704) = 0;

    v5 = *(a1 + 552);
    *(a1 + 552) = 0;

    objc_opt_self();
    if (qword_100229410 != -1)
    {
      dispatch_once(&qword_100229410, &stru_1001FCD98);
    }

    v6 = qword_100229408;
    sub_10015A238(v6, *(a1 + 312));

    if (a2)
    {
      objc_opt_self();
      if (qword_100229410 != -1)
      {
        dispatch_once(&qword_100229410, &stru_1001FCD98);
      }

      v7 = qword_100229408;
      sub_10015A52C(v7);
    }
  }
}

void sub_1000FAB30(uint64_t a1, void *a2)
{
  if (a1)
  {
    objc_storeStrong((a1 + 704), a2);
  }
}

void sub_1000FAB40(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = v3;
  if (a1)
  {
    v5 = v3[5];
    v6 = v5;
    if (v5)
    {
      CC_SHA256([v5 bytes], objc_msgSend(v5, "length"), md);
      v7 = [[NSData alloc] initWithBytes:md length:32];
    }

    else
    {
      v7 = 0;
    }

    if (([*(a1 + 720) isEqualToData:v7] & 1) == 0)
    {
      if (!*(a1 + 712))
      {
        v8 = *(a1 + 136);
        v9 = nw_agent_create();
        v10 = *(a1 + 712);
        *(a1 + 712) = v9;
      }

      v11 = v4[5];

      if (v11)
      {
        v12 = v4[5];
        v11 = dispatch_data_create([v12 bytes], objc_msgSend(v12, "length"), *(a1 + 136), 0);
      }

      objc_opt_self();
      if (qword_100229410 != -1)
      {
        dispatch_once(&qword_100229410, &stru_1001FCD98);
      }

      v13 = qword_100229408;
      sub_10015A238(v13, *(a1 + 320));

      v26 = v11;
      nw_agent_change_state();
      objc_storeStrong((a1 + 720), v7);
      *md = 0;
      v29 = 0;
      nw_agent_get_uuid();
      v14 = [[NSUUID alloc] initWithUUIDBytes:md];
      objc_opt_self();
      v15 = [NEPolicyCondition clientFlags:0x80000000];
      [v15 setNegative:1];
      v16 = [NEPolicy alloc];
      v25 = v14;
      v17 = [NEPolicyResult netAgentUUID:v14];
      v18 = +[NEPolicyCondition allInterfaces];
      v27[0] = v18;
      v19 = +[NEPolicyCondition platformBinary];
      v27[1] = v19;
      v27[2] = v15;
      v20 = [NEPolicyCondition customEntitlement:@"com.apple.networkrelay.companionNetworkDescription"];
      v27[3] = v20;
      v21 = [NSArray arrayWithObjects:v27 count:4];
      v22 = [v16 initWithOrder:10 result:v17 conditions:v21];

      objc_opt_self();
      if (qword_100229410 != -1)
      {
        dispatch_once(&qword_100229410, &stru_1001FCD98);
      }

      v23 = qword_100229408;
      v24 = sub_100159E00(v23, *(a1 + 320), v22);
    }
  }
}

void sub_1000FAEC0(uint64_t a1)
{
  if (a1)
  {
    if ([*(a1 + 160) state] == 8)
    {
      *(a1 + 69) = 0;
      v2 = sub_100163A30(NRDLocalDevice, *(a1 + 96));
      v8 = v2;
      if (v2)
      {
        v3 = 4;
        v4 = 2;
        if (!*(a1 + 68))
        {
          v4 = 4;
          v3 = 8;
        }

        if (*(v2 + 16) <= 0x15u)
        {
          v5 = v4;
        }

        else
        {
          v5 = v3;
        }
      }

      else
      {
        v5 = 4;
        if (*(a1 + 68))
        {
          v5 = 2;
        }
      }

      v9 = v5;
      v6 = sub_10002A50C([NRLinkDirectorMessage alloc], *(a1 + 96));
      v7 = [[NSData alloc] initWithBytes:&v9 length:8];
      sub_10002AB38(v6, 11, v7);
      if (v6)
      {
        objc_storeStrong(v6 + 3, *(a1 + 160));
      }

      sub_10002C0E8(v6);
    }

    else
    {
      *(a1 + 69) = 1;
    }
  }
}

void sub_1000FAFFC(uint64_t a1)
{
  if (a1 && *(a1 + 57) == 1)
  {
    v2 = *(a1 + 712);
    *(a1 + 712) = 0;

    v3 = *(a1 + 720);
    *(a1 + 720) = 0;

    objc_opt_self();
    if (qword_100229410 != -1)
    {
      dispatch_once(&qword_100229410, &stru_1001FCD98);
    }

    v4 = qword_100229408;
    sub_10015A238(v4, *(a1 + 320));

    objc_opt_self();
    if (qword_100229410 != -1)
    {
      dispatch_once(&qword_100229410, &stru_1001FCD98);
    }

    v5 = qword_100229408;
    sub_10015A52C(v5);
  }
}

void sub_1000FB114(uint64_t a1, char a2)
{
  if (a1)
  {
    v2 = a1;
    if (*(a1 + 656))
    {
      objc_opt_self();
      if (qword_100229410 != -1)
      {
        dispatch_once(&qword_100229410, &stru_1001FCD98);
      }

      v4 = qword_100229408;
      sub_10015A238(v4, *(v2 + 344));

      v49 = sub_1000FE460(v2);
      if ([v49 count])
      {
        v46 = a2;
        v5 = [NEPolicyCondition requiredAgentDomain:@"com.apple.networkrelay" agentType:@"ASResolver"];
        v44 = [NEPolicyCondition requiredAgentDomain:@"com.apple.networkrelay" agentType:@"ASListener"];
        v45 = v5;
        v72[0] = v5;
        v72[1] = v44;
        [NSArray arrayWithObjects:v72 count:2];
        v62 = 0u;
        v63 = 0u;
        v64 = 0u;
        obj = v65 = 0u;
        v50 = [obj countByEnumeratingWithState:&v62 objects:v71 count:16];
        if (v50)
        {
          v48 = *v63;
          v6 = v2;
          do
          {
            v7 = 0;
            do
            {
              if (*v63 != v48)
              {
                objc_enumerationMutation(obj);
              }

              v51 = v7;
              v10 = *(*(&v62 + 1) + 8 * v7);
              v58 = 0u;
              v59 = 0u;
              v60 = 0u;
              v61 = 0u;
              v11 = v49;
              v12 = [v11 countByEnumeratingWithState:&v58 objects:v70 count:16];
              if (v12)
              {
                v13 = v12;
                v14 = *v59;
                do
                {
                  for (i = 0; i != v13; i = i + 1)
                  {
                    if (*v59 != v14)
                    {
                      objc_enumerationMutation(v11);
                    }

                    v16 = [NEPolicyResult removeNetworkAgentUUID:*(*(&v58 + 1) + 8 * i)];
                    v17 = [NEPolicy alloc];
                    v18 = +[NEPolicyCondition allInterfaces];
                    v69[0] = v18;
                    v69[1] = v10;
                    v19 = [NSArray arrayWithObjects:v69 count:2];
                    v20 = [v17 initWithOrder:10 result:v16 conditions:v19];

                    objc_opt_self();
                    if (qword_100229410 != -1)
                    {
                      dispatch_once(&qword_100229410, &stru_1001FCD98);
                    }

                    v2 = v6;
                    v21 = qword_100229408;
                    v22 = sub_100159E00(v21, *(v6 + 344), v20);
                  }

                  v13 = [v11 countByEnumeratingWithState:&v58 objects:v70 count:16];
                }

                while (v13);
              }

              if (*(v2 + 704))
              {
                v68[0] = 0;
                v68[1] = 0;
                nw_agent_get_uuid();
                v23 = [[NSUUID alloc] initWithUUIDBytes:v68];
                v24 = [NEPolicyResult removeNetworkAgentUUID:v23];
                v25 = [NEPolicy alloc];
                v26 = +[NEPolicyCondition allInterfaces];
                v67[0] = v26;
                v67[1] = v10;
                v27 = [NSArray arrayWithObjects:v67 count:2];
                v28 = [v25 initWithOrder:10 result:v24 conditions:v27];

                objc_opt_self();
                if (qword_100229410 != -1)
                {
                  dispatch_once(&qword_100229410, &stru_1001FCD98);
                }

                v2 = v6;
                v8 = qword_100229408;
                v9 = sub_100159E00(v8, *(v6 + 344), v28);
              }

              v7 = v51 + 1;
            }

            while ((v51 + 1) != v50);
            v50 = [obj countByEnumeratingWithState:&v62 objects:v71 count:16];
          }

          while (v50);
        }

        a2 = v46;
      }

      objc_opt_self();
      if (qword_100229410 != -1)
      {
        dispatch_once(&qword_100229410, &stru_1001FCD98);
      }

      v29 = qword_100229408;
      sub_10015A52C(v29);

      if ((a2 & 1) == 0)
      {
        if (*(v2 + 488))
        {
          v30 = NEVirtualInterfaceCopyName();
          if (v30)
          {
            sub_10011ED4C(*(v2 + 656), v30);
          }
        }

        else
        {
          v30 = 0;
        }

        v56 = 0u;
        v57 = 0u;
        v54 = 0u;
        v55 = 0u;
        v31 = *(v2 + 144);
        v32 = [v31 countByEnumeratingWithState:&v54 objects:v66 count:16];
        if (v32)
        {
          v33 = v32;
          v34 = *v55;
          do
          {
            for (j = 0; j != v33; j = j + 1)
            {
              if (*v55 != v34)
              {
                objc_enumerationMutation(v31);
              }

              v36 = *(*(&v54 + 1) + 8 * j);
              if ([v36 hasCompanionDatapath])
              {
                if (![v36 virtualInterface])
                {
                  continue;
                }

                [v36 virtualInterface];
                v37 = NEVirtualInterfaceCopyName();
              }

              else
              {
                v37 = [v36 localInterfaceName];
              }

              v38 = v37;
              v39 = [v36 isPrimary];
              v40 = *(v2 + 656);
              if (v39)
              {
                sub_10011EC08(v40, v38);
              }

              else
              {
                sub_10011ED4C(v40, v38);
              }
            }

            v33 = [v31 countByEnumeratingWithState:&v54 objects:v66 count:16];
          }

          while (v33);
        }

        if (!*(v2 + 160))
        {
          v41 = objc_alloc_init(NRLinkDirectorRequest);
          p_isa = &v41->super.isa;
          if (v41)
          {
            v41->_type = 6;
            *&v41->_attemptImmediately = 1;
            v41->_timeout = 10;
            objc_storeStrong(&v41->_timerDescription, @"Hysteresis for AS registrations");
            objc_storeStrong(p_isa + 2, &off_10020A0D8);
          }

          newValue[0] = _NSConcreteStackBlock;
          newValue[1] = 3221225472;
          newValue[2] = sub_1000FE73C;
          newValue[3] = &unk_1001FD060;
          newValue[4] = v2;
          v53 = v30;
          if (p_isa)
          {
            objc_setProperty_nonatomic_copy(p_isa, v43, newValue, 48);
          }

          sub_1000EAA20(v2, p_isa);
        }
      }
    }
  }
}

void sub_1000FB7E8(uint64_t a1)
{
  if (!a1)
  {
    return;
  }

  dispatch_assert_queue_V2(*(a1 + 136));
  dispatch_assert_queue_V2(*(a1 + 136));
  v2 = sub_100163A30(NRDLocalDevice, *(a1 + 96));
  v3 = v2;
  if (v2)
  {
    v4 = *(v2 + 144);
  }

  else
  {
    v4 = 0;
  }

  v5 = v4;
  v6 = [v5 getDefaultLinkSubtypeForLinkType:1];

  v19 = sub_1000EA2C8(a1, 1, v6);
  if (v19)
  {
    if ([v19 state] == 1)
    {
      v7 = _NRCopyLogObjectForNRUUID();
      IsLevelEnabled = _NRLogIsLevelEnabled();

      if (IsLevelEnabled)
      {
        v9 = _NRCopyLogObjectForNRUUID();
        _NRLogWithArgs(v9, 1, "%s%.30s:%-4d Starting link: %@", "", "[NRDDeviceConductor resumeLinkOfType:]", 3543, v19);
      }

      [v19 start];
      goto LABEL_19;
    }

    if ([v19 state] != 8)
    {
      if ([v19 state] == 9)
      {
        v14 = _NRCopyLogObjectForNRUUID();
        v15 = _NRLogIsLevelEnabled();

        if (v15)
        {
          v16 = _NRCopyLogObjectForNRUUID();
          _NRLogWithArgs(v16, 1, "%s%.30s:%-4d Resuming link: %@", "", "[NRDDeviceConductor resumeLinkOfType:]", 3560, v19);
        }

        [v19 resume];
        goto LABEL_19;
      }

      [v19 setSuspendWhenReady:0];
      v17 = _NRCopyLogObjectForNRUUID();
      v18 = _NRLogIsLevelEnabled();

      if (v18)
      {
        v12 = _NRCopyLogObjectForNRUUID();
        _NRLogWithArgs(v12, 1, "%s%.30s:%-4d Cannot resume link as it is not suspended: %@", "", "[NRDDeviceConductor resumeLinkOfType:]", 3556, v19);
        goto LABEL_11;
      }
    }
  }

  else
  {
    v10 = _NRCopyLogObjectForNRUUID();
    v11 = _NRLogIsLevelEnabled();

    if (v11)
    {
      v12 = _NRCopyLogObjectForNRUUID();
      StringFromNRLinkType = createStringFromNRLinkType();
      _NRLogWithArgs(v12, 1, "%s%.30s:%-4d Cannot resume link as no link of type '%@' is available", "", "[NRDDeviceConductor resumeLinkOfType:]", 3538, StringFromNRLinkType);

LABEL_11:
    }
  }

LABEL_19:
}

void sub_1000FBA90(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = *(a1 + 40);
  v3 = v2;
  if (!v1)
  {
    goto LABEL_108;
  }

  if (*(v1 + 14) != 1 || v2 == 0)
  {
    goto LABEL_108;
  }

  v5 = sub_10002B210(v2, 16);
  v6 = [v5 firstObject];

  if (v6)
  {
    v7 = sub_10002B210(v3, 16);
    v8 = [v7 firstObject];

    if (v8 && [v8 length])
    {
      v124[0] = 0;
      [v8 getBytes:v124 length:1];
      if (v124[0])
      {
        v9 = &__kCFBooleanTrue;
      }

      else
      {
        v9 = &__kCFBooleanFalse;
      }
    }

    else
    {
      v9 = 0;
    }

    if ([v9 BOOLValue])
    {
      v10 = *(v1 + 46);
      *(v1 + 62) = v10;
      if (v10 == 1)
      {
        v11 = _NRCopyLogObjectForNRUUID();
        IsLevelEnabled = _NRLogIsLevelEnabled();

        if (IsLevelEnabled)
        {
          v13 = _NRCopyLogObjectForNRUUID();
          _NRLogWithArgs(v13, 1, "%s%.30s:%-4d received dns proxy enable request", "", "[NRDDeviceConductor handleDNSProxyMessage:]", 5511);
        }

        if (*(v1 + 46) != 1 || ![*(v1 + 160) ikeClassDEstablished])
        {
          goto LABEL_27;
        }

        v14 = *(v1 + 584);
        if (v14)
        {
          v15 = *(v14 + 8);
          if (v15 == 1)
          {
LABEL_27:

            goto LABEL_28;
          }

          if (v15 == 2)
          {
            [v1 didUpdateDNSProxyState:? state:?];
            goto LABEL_27;
          }
        }

        sub_1000FDB08(v1);
        goto LABEL_27;
      }
    }

    else
    {
      *(v1 + 62) = 0;
    }

    v16 = _NRCopyLogObjectForNRUUID();
    v17 = _NRLogIsLevelEnabled();

    if (v17)
    {
      v18 = _NRCopyLogObjectForNRUUID();
      _NRLogWithArgs(v18, 1, "%s%.30s:%-4d received dns proxy disable request", "", "[NRDDeviceConductor handleDNSProxyMessage:]", 5524);
    }

    [*(v1 + 584) cancel];
    v19 = *(v1 + 584);
    *(v1 + 584) = 0;

    goto LABEL_27;
  }

LABEL_28:
  v20 = sub_10002B210(v3, 18);
  v21 = [v20 firstObject];

  if (v21)
  {
    v22 = sub_10002B210(v3, 18);
    v23 = [v22 firstObject];

    if (v23 && [v23 length])
    {
      v124[0] = 0;
      [v23 getBytes:v124 length:1];
      if (v124[0])
      {
        v24 = &__kCFBooleanTrue;
      }

      else
      {
        v24 = &__kCFBooleanFalse;
      }
    }

    else
    {
      v24 = 0;
    }

    v25 = [v24 BOOLValue];
    v26 = _NRCopyLogObjectForNRUUID();
    v27 = _NRLogIsLevelEnabled();

    if (!v25)
    {
      if (v27)
      {
        v33 = _NRCopyLogObjectForNRUUID();
        _NRLogWithArgs(v33, 1, "%s%.30s:%-4d received dns proxy disable request", "", "[NRDDeviceConductor handleDNSProxyMessage:]", 5567);
      }

      [*(v1 + 592) cancel];
      v34 = *(v1 + 592);
      *(v1 + 592) = 0;

      goto LABEL_65;
    }

    if (v27)
    {
      v28 = _NRCopyLogObjectForNRUUID();
      _NRLogWithArgs(v28, 1, "%s%.30s:%-4d received discovery proxy enable request", "", "[NRDDeviceConductor handleDNSProxyMessage:]", 5533);
    }

    if (*(v1 + 46) == 1)
    {
      v29 = *(v1 + 160);
      if (([v29 ikeClassDEstablished] & 1) == 0)
      {
LABEL_64:

        goto LABEL_65;
      }

      v30 = *(v1 + 63);

      if (v30 == 1)
      {
        v31 = *(v1 + 592);
        if (!v31)
        {
LABEL_49:
          [*(v1 + 592) cancel];
          v29 = objc_alloc_init(NSMutableSet);
          v119 = 0u;
          v120 = 0u;
          v121 = 0u;
          v122 = 0u;
          v35 = *(v1 + 144);
          v36 = [v35 countByEnumeratingWithState:&v119 objects:v124 count:16];
          if (v36)
          {
            v37 = v36;
            v38 = *v120;
            do
            {
              for (i = 0; i != v37; i = i + 1)
              {
                if (*v120 != v38)
                {
                  objc_enumerationMutation(v35);
                }

                if (*(v1 + 49) == 1)
                {
                  v40 = *(*(&v119 + 1) + 8 * i);
                  if ([v40 ikeClassDEstablished])
                  {
                    if ([v40 hasCompanionDatapath] && objc_msgSend(v40, "virtualInterface") && objc_msgSend(v40, "type") == 1)
                    {
                      [v40 virtualInterface];
                      v41 = NEVirtualInterfaceCopyName();
                      [v29 addObject:v41];
                    }
                  }
                }
              }

              v37 = [v35 countByEnumeratingWithState:&v119 objects:v124 count:16];
            }

            while (v37);
          }

          if ([v29 count])
          {
            v42 = [NRDiscoveryProxyServer alloc];
            v43 = *(v1 + 136);
            v44 = *(v1 + 96);
            v45 = v43;
            v46 = sub_100026098(v42, v29, v45, v44, v1);
            v47 = *(v1 + 592);
            *(v1 + 592) = v46;

            [*(v1 + 592) start];
          }

          goto LABEL_64;
        }

        v32 = *(v31 + 8);
        if (v32 != 1)
        {
          if (v32 == 2)
          {
            [v1 didUpdateDNSProxyState:? state:?];
            goto LABEL_65;
          }

          goto LABEL_49;
        }
      }
    }

LABEL_65:
  }

  v48 = sub_10002B210(v3, 17);
  v49 = [v48 firstObject];

  if (v49 || (v50 = sub_10002B210(v3, 19), [v50 firstObject], v51 = objc_claimAutoreleasedReturnValue(), v50, v51, v51))
  {
    v52 = sub_10002B210(v3, 17);
    v53 = [v52 firstObject];

    v54 = sub_10002B210(v3, 19);
    v55 = [v54 firstObject];

    v118 = 0;
    v117 = 0;
    v115 = 0;
    v116 = 0;
    if (v53)
    {
      v56 = sub_10002B210(v3, 17);
      v57 = [v56 firstObject];

      sub_1000FDD68(v1, v57, &v118 + 1, &v118, &v117, &v116, &v115);
      if ((v118 & 0x100) != 0)
      {
        if (v118 == 1)
        {
          v58 = v116;
          v59 = *(v1 + 576);
          v60 = v59;
          v61 = v59 ? *(v59 + 3) : 0;
          v62 = v61;
          v63 = [v58 isEqual:v62];

          if ((v63 & 1) == 0)
          {
            [*(v1 + 576) cancel];
            v64 = [NRDNSProxyClient alloc];
            v66 = v115;
            v65 = v116;
            v67 = *(v1 + 136);
            v68 = v117;
            v69 = *(v1 + 96);
            v70 = v67;
            v71 = sub_100025F54(&v64->super.super.isa, v65, v70, v69, v1, v66, v68, 0);
            v72 = *(v1 + 576);
            *(v1 + 576) = v71;

            [*(v1 + 576) start];
            *(v1 + 76) = 0;
          }
        }
      }

      else
      {
        v73 = _NRCopyLogObjectForNRUUID();
        v74 = _NRLogIsLevelEnabled();

        if (v74)
        {
          v75 = _NRCopyLogObjectForNRUUID();
          _NRLogWithArgs(v75, 1, "%s%.30s:%-4d peer failed to setup dns proxy", "", "[NRDDeviceConductor handleDNSProxyMessage:]", 5593);
        }

        v113 = 0u;
        v114 = 0u;
        v111 = 0u;
        v112 = 0u;
        v76 = *(v1 + 144);
        v77 = [v76 countByEnumeratingWithState:&v111 objects:v123 count:16];
        if (v77)
        {
          v78 = v77;
          v79 = *v112;
          do
          {
            for (j = 0; j != v78; j = j + 1)
            {
              if (*v112 != v79)
              {
                objc_enumerationMutation(v76);
              }

              v81 = *(*(&v111 + 1) + 8 * j);
              if ([v81 ikeClassDEstablished])
              {
                [v81 publishDNSConfig:0];
              }
            }

            v78 = [v76 countByEnumeratingWithState:&v111 objects:v123 count:16];
          }

          while (v78);
        }

        [*(v1 + 576) cancel];
        v82 = *(v1 + 576);
        *(v1 + 576) = 0;

        ++*(v1 + 76);
        sub_1000FDFE4(v1);
      }
    }

    if (!v55)
    {
      goto LABEL_107;
    }

    v83 = sub_10002B210(v3, 19);
    v84 = [v83 firstObject];

    sub_1000FDD68(v1, v84, &v118 + 1, &v118, &v117, &v116, &v115);
    if ((v118 & 0x100) == 0)
    {
      v96 = _NRCopyLogObjectForNRUUID();
      v97 = _NRLogIsLevelEnabled();

      if (v97)
      {
        v98 = _NRCopyLogObjectForNRUUID();
        _NRLogWithArgs(v98, 1, "%s%.30s:%-4d peer failed to setup discovery proxy", "", "[NRDDeviceConductor handleDNSProxyMessage:]", 5626);
      }

      [*(v1 + 600) cancel];
      v99 = *(v1 + 600);
      *(v1 + 600) = 0;

      ++*(v1 + 80);
      sub_1000FA7F8(v1);
      goto LABEL_106;
    }

    if (v118 == 1)
    {
      v85 = v116;
      v86 = *(v1 + 600);
      v87 = v86;
      if (v86)
      {
        v88 = *(v86 + 3);
      }

      else
      {
        v88 = 0;
      }

      v89 = v88;
      if ([v85 isEqual:v89])
      {
        v90 = v115;
        v91 = *(v1 + 600);
        v92 = v91;
        if (v91)
        {
          v93 = *(v91 + 4);
        }

        else
        {
          v93 = 0;
        }

        v94 = v93;
        v95 = [v90 isEqualToData:v94];

        if (v95)
        {
          goto LABEL_106;
        }
      }

      else
      {
      }

      [*(v1 + 600) cancel];
      v100 = [NRDNSProxyClient alloc];
      v102 = v115;
      v101 = v116;
      v103 = *(v1 + 136);
      v104 = v117;
      v105 = *(v1 + 96);
      v106 = v103;
      v107 = sub_100025F54(&v100->super.super.isa, v101, v106, v105, v1, v102, v104, 1);
      v108 = *(v1 + 600);
      *(v1 + 600) = v107;

      if ([*(v1 + 160) virtualInterface])
      {
        [*(v1 + 160) virtualInterface];
        Index = NEVirtualInterfaceGetIndex();
        v110 = *(v1 + 600);
        if (v110)
        {
          *(v110 + 72) = Index;
        }
      }

      [*(v1 + 600) start];
      *(v1 + 80) = 0;
    }

LABEL_106:

LABEL_107:
  }

LABEL_108:
}

id sub_1000FC558(void *a1)
{
  v1 = a1;
  v4 = 0;
  v5 = &v4;
  v6 = 0x3032000000;
  v7 = sub_1000FD2F4;
  v8 = sub_1000FD304;
  v9 = objc_alloc_init(NSMutableDictionary);
  NRTLVParse();
  v2 = v5[5];
  _Block_object_dispose(&v4, 8);

  return v2;
}

void sub_1000FC650(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

NRASMRequestMetadata *sub_1000FC668(void *a1, void *a2)
{
  v3 = a2;
  v4 = a1;
  v5 = objc_alloc_init(NRASMRequestMetadata);
  v8 = v3;
  v9 = v5;
  NRTLVParse();

  v6 = v9;
  return v6;
}

uint64_t sub_1000FC74C(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = *(a1 + 32);
  v5 = a3;
  sub_1000E9DD8(v4, v5);
  v6 = [NWAddressEndpoint endpointWithCEndpoint:v5];

  if (sub_100172C3C(NRDLocalDevice, v6))
  {
    [*(a1 + 40) addObject:v6];
  }

  return 1;
}

void sub_1000FC7D0(uint64_t a1, int a2)
{
  if (*(a1 + 656))
  {
    dispatch_assert_queue_V2(*(a1 + 136));
    v3 = sub_100163A30(NRDLocalDevice, *(a1 + 96));
    v4 = v3;
    if (v3)
    {
      v5 = *(v3 + 144);
    }

    else
    {
      v5 = 0;
    }

    v6 = v5;
    v7 = [v6 getDefaultLinkSubtypeForLinkType:4];

    v8 = sub_1000EA2C8(a1, 4, v7);
    if (v8 && [v8 state] == 8)
    {
      v69 = a1;
      v96 = 0u;
      v97 = 0u;
      v94 = 0u;
      v95 = 0u;
      v81 = v8;
      v9 = [v8 appSvcPolicyIDs];
      v10 = [v9 countByEnumeratingWithState:&v94 objects:v107 count:16];
      if (v10)
      {
        v11 = v10;
        v12 = *v95;
        do
        {
          for (i = 0; i != v11; i = i + 1)
          {
            if (*v95 != v12)
            {
              objc_enumerationMutation(v9);
            }

            v17 = *(*(&v94 + 1) + 8 * i);
            v18 = [v81 policyIDs];
            v19 = [v18 containsObject:v17];

            if (v19)
            {
              objc_opt_self();
              if (qword_100229410 != -1)
              {
                dispatch_once(&qword_100229410, &stru_1001FCD98);
              }

              v14 = qword_100229408;
              v15 = [v81 policyIdentifierString];
              sub_100159FB0(v14, v15, v17);

              v16 = [v81 policyIDs];
              [v16 removeObject:v17];
            }
          }

          v11 = [v9 countByEnumeratingWithState:&v94 objects:v107 count:16];
        }

        while (v11);
      }

      v20 = objc_alloc_init(NSMutableArray);
      [v81 setAppSvcPolicyIDs:v20];

      [v81 virtualInterface];
      v80 = NEVirtualInterfaceCopyName();
      v75 = sub_100163A30(NRDLocalDevice, *(v69 + 96));
      v21 = *(v69 + 656);
      if (!v21 || (*(v21 + 9) & 1) != 0)
      {
        goto LABEL_20;
      }

      objc_opt_self();
      if (qword_1002291A0 != -1)
      {
        dispatch_once(&qword_1002291A0, &stru_1001FBD88);
      }

      v23 = qword_100229198;
      if (qword_100229198)
      {
        v100 = 0u;
        v101 = 0u;
        v98 = 0u;
        v99 = 0u;
        v24 = *(qword_100229198 + 32);
        v25 = [v24 countByEnumeratingWithState:&v98 objects:v108 count:16];
        if (v25)
        {
          v26 = v25;
          v22 = 0;
          v27 = *v99;
          do
          {
            for (j = 0; j != v26; j = j + 1)
            {
              if (*v99 != v27)
              {
                objc_enumerationMutation(v24);
              }

              v29 = *(*(&v98 + 1) + 8 * j);
              if (!v22)
              {
                v22 = objc_alloc_init(NSMutableArray);
              }

              v30 = sub_10011E8EC(v23, v29);
              if (v30)
              {
                [v22 addObject:v30];
              }
            }

            v26 = [v24 countByEnumeratingWithState:&v98 objects:v108 count:16];
          }

          while (v26);
        }

        else
        {
          v22 = 0;
        }
      }

      else
      {
LABEL_20:
        v22 = 0;
      }

      v92 = 0u;
      v93 = 0u;
      v90 = 0u;
      v91 = 0u;
      obj = v22;
      v76 = [obj countByEnumeratingWithState:&v90 objects:v106 count:16];
      if (v76)
      {
        v73 = *v91;
        do
        {
          for (k = 0; k != v76; k = k + 1)
          {
            if (*v91 != v73)
            {
              objc_enumerationMutation(obj);
            }

            v78 = [NWAddressEndpoint endpointWithCEndpoint:*(*(&v90 + 1) + 8 * k)];
            v32 = [v78 port];
            v33 = sub_1001672A0(v75, v32);

            v34 = [NEPolicyCondition localAddress:v33 prefix:64];
            v105[0] = v34;
            v35 = +[NEPolicyCondition allInterfaces];
            v105[1] = v35;
            v36 = [NSArray arrayWithObjects:v105 count:2];

            v37 = [NEPolicyResult tunnelIPToInterfaceName:v80 secondaryResultType:0];
            v38 = [[NEPolicy alloc] initWithOrder:1200 result:v37 conditions:v36];
            objc_opt_self();
            if (qword_100229410 != -1)
            {
              dispatch_once(&qword_100229410, &stru_1001FCD98);
            }

            v39 = qword_100229408;
            v40 = [v81 policyIdentifierString];
            v41 = sub_100159E00(v39, v40, v38);

            v42 = [v81 appSvcPolicyIDs];
            [v42 addObject:v41];
          }

          v76 = [obj countByEnumeratingWithState:&v90 objects:v106 count:16];
        }

        while (v76);
      }

      v88 = 0u;
      v89 = 0u;
      v86 = 0u;
      v87 = 0u;
      v43 = v69;
      v71 = *(v69 + 672);
      v44 = [v71 countByEnumeratingWithState:&v86 objects:v104 count:16];
      v8 = v81;
      if (v44)
      {
        v45 = v44;
        v46 = *v87;
        v68 = *v87;
        do
        {
          v47 = 0;
          v70 = v45;
          do
          {
            if (*v87 != v46)
            {
              objc_enumerationMutation(v71);
            }

            v48 = *(*(&v86 + 1) + 8 * v47);
            if ((sub_10011F034(*(v43 + 656), v48) & 1) == 0)
            {
              v74 = v47;
              v49 = [*(v43 + 672) objectForKeyedSubscript:v48];
              v82 = 0u;
              v83 = 0u;
              v84 = 0u;
              v85 = 0u;
              v77 = v49;
              v50 = [v77 countByEnumeratingWithState:&v82 objects:v103 count:16];
              if (v50)
              {
                v51 = v50;
                v79 = *v83;
                do
                {
                  for (m = 0; m != v51; m = m + 1)
                  {
                    if (*v83 != v79)
                    {
                      objc_enumerationMutation(v77);
                    }

                    v53 = [NEPolicyCondition remoteAddress:*(*(&v82 + 1) + 8 * m) prefix:128];
                    v102[0] = v53;
                    v54 = +[NEPolicyCondition allInterfaces];
                    v102[1] = v54;
                    v55 = [NSArray arrayWithObjects:v102 count:2];

                    v56 = [NEPolicyResult tunnelIPToInterfaceName:v80 secondaryResultType:0];
                    v57 = [[NEPolicy alloc] initWithOrder:1200 result:v56 conditions:v55];
                    objc_opt_self();
                    if (qword_100229410 != -1)
                    {
                      dispatch_once(&qword_100229410, &stru_1001FCD98);
                    }

                    v58 = qword_100229408;
                    v59 = [v81 policyIdentifierString];
                    v60 = sub_100159E00(v58, v59, v57);

                    v61 = [v81 appSvcPolicyIDs];
                    [v61 addObject:v60];
                  }

                  v51 = [v77 countByEnumeratingWithState:&v82 objects:v103 count:16];
                }

                while (v51);
              }

              v8 = v81;
              v46 = v68;
              v43 = v69;
              v45 = v70;
              v47 = v74;
            }

            v47 = v47 + 1;
          }

          while (v47 != v45);
          v45 = [v71 countByEnumeratingWithState:&v86 objects:v104 count:16];
        }

        while (v45);
      }

      v62 = [v8 appSvcPolicyIDs];
      v63 = [v62 count];

      if (v63)
      {
        v64 = [v8 policyIDs];
        v65 = [v8 appSvcPolicyIDs];
        [v64 addObjectsFromArray:v65];

        if (a2)
        {
          objc_opt_self();
          if (qword_100229410 != -1)
          {
            dispatch_once(&qword_100229410, &stru_1001FCD98);
          }

          v66 = qword_100229408;
          sub_10015A52C(v66);
        }
      }
    }
  }
}

uint64_t sub_1000FD104(uint64_t a1, uint64_t a2)
{
  if (*a2 == 6)
  {
    v3 = [[NSData alloc] initWithBytes:a2 + 3 length:bswap32(*(a2 + 1)) >> 16];
    v17 = 0;
    v18 = &v17;
    v19 = 0x3032000000;
    v20 = sub_1000FD2F4;
    v21 = sub_1000FD304;
    v22 = 0;
    v13 = 0;
    v14 = &v13;
    v15 = 0x2020000000;
    v16 = 0;
    v7 = 0;
    v8 = &v7;
    v9 = 0x3032000000;
    v10 = sub_1000FD2F4;
    v11 = sub_1000FD304;
    v12 = 0;
    NRTLVParse();
    if ([*(a1 + 32) isEqualToString:v18[5]])
    {
      v4 = *(a1 + 40);
      if (v4)
      {
        objc_storeStrong((v4 + 24), v8[5]);
        v5 = *(a1 + 40);
        if (v5)
        {
          *(v5 + 16) = v14[3];
        }
      }
    }

    _Block_object_dispose(&v7, 8);

    _Block_object_dispose(&v13, 8);
    _Block_object_dispose(&v17, 8);
  }

  return 1;
}

void sub_1000FD2C4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, ...)
{
  va_start(va1, a16);
  va_start(va, a16);
  v18 = va_arg(va1, void);
  v20 = va_arg(va1, void);
  v21 = va_arg(va1, void);
  v22 = va_arg(va1, void);
  v23 = va_arg(va1, void);
  v24 = va_arg(va1, void);
  _Block_object_dispose(va, 8);
  _Block_object_dispose(va1, 8);
  _Block_object_dispose((v16 - 80), 8);
  _Unwind_Resume(a1);
}

uint64_t sub_1000FD2F4(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

uint64_t sub_1000FD30C(void *a1, unsigned __int8 *a2)
{
  v3 = *(a2 + 1);
  v4 = *a2;
  switch(v4)
  {
    case 10:
      if (v3 == 2048)
      {
        *(*(a1[6] + 8) + 24) = bswap64(*(a2 + 3));
      }

      break;
    case 9:
      if (v3 == 4096)
      {
        v9 = [[NSUUID alloc] initWithUUIDBytes:a2 + 3];
        v10 = *(a1[5] + 8);
        v11 = *(v10 + 40);
        *(v10 + 40) = v9;
      }

      break;
    case 5:
      v5 = [[NSData alloc] initWithBytes:a2 + 3 length:__rev16(v3)];
      v6 = [[NSString alloc] initWithData:v5 encoding:4];
      v7 = *(a1[4] + 8);
      v8 = *(v7 + 40);
      *(v7 + 40) = v6;

      break;
  }

  return 1;
}

uint64_t sub_1000FD400(uint64_t a1, uint64_t a2)
{
  if (*a2 == 6)
  {
    v3 = [[NSData alloc] initWithBytes:a2 + 3 length:bswap32(*(a2 + 1)) >> 16];
    v22 = 0;
    v23 = &v22;
    v24 = 0x3032000000;
    v25 = sub_1000FD2F4;
    v26 = sub_1000FD304;
    v27 = 0;
    v16 = 0;
    v17 = &v16;
    v18 = 0x3032000000;
    v19 = sub_1000FD2F4;
    v20 = sub_1000FD304;
    v21 = 0;
    v10 = 0;
    v11 = &v10;
    v12 = 0x3032000000;
    v13 = sub_1000FD2F4;
    v14 = sub_1000FD304;
    v15 = 0;
    NRTLVParse();
    if (v23[5] && [v11[5] count])
    {
      v4 = v17[5];
      if (v4)
      {
        application_service = [v4 copyCEndpoint];
      }

      else
      {
        v28[0] = 0;
        v28[1] = 0;
        v6 = +[NSUUID UUID];
        [v6 getUUIDBytes:v28];

        [v23[5] UTF8String];
        application_service = nw_endpoint_create_application_service();
      }

      v7 = application_service;
      nw_endpoint_set_public_keys();
      v8 = [*(*(*(a1 + 32) + 8) + 40) objectForKeyedSubscript:v23[5]];
      if (!v8)
      {
        v8 = nw_array_create();
      }

      nw_array_append();
      [*(*(*(a1 + 32) + 8) + 40) setObject:v8 forKeyedSubscript:v23[5]];
    }

    _Block_object_dispose(&v10, 8);

    _Block_object_dispose(&v16, 8);
    _Block_object_dispose(&v22, 8);
  }

  return 1;
}

void sub_1000FD6AC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, ...)
{
  va_start(va1, a15);
  va_start(va, a15);
  v17 = va_arg(va1, void);
  v19 = va_arg(va1, void);
  v20 = va_arg(va1, void);
  v21 = va_arg(va1, void);
  v22 = va_arg(va1, void);
  v23 = va_arg(va1, void);
  _Block_object_dispose(va, 8);
  _Block_object_dispose(va1, 8);
  _Block_object_dispose((v15 - 120), 8);
  _Unwind_Resume(a1);
}

uint64_t sub_1000FD6EC(void *a1, unsigned __int8 *a2)
{
  v3 = bswap32(*(a2 + 1)) >> 16;
  v4 = *a2;
  switch(v4)
  {
    case 2:
      v5 = [[NSData alloc] initWithBytes:a2 + 3 length:v3];
      v6 = sub_10013D760(v5, 1, 0, 0);
      v7 = a1[5];
      goto LABEL_9;
    case 7:
      v5 = [[NSData alloc] initWithBytes:a2 + 3 length:v3];
      v8 = *(*(a1[6] + 8) + 40);
      if (!v8)
      {
        v9 = objc_alloc_init(NSMutableArray);
        v10 = *(a1[6] + 8);
        v11 = *(v10 + 40);
        *(v10 + 40) = v9;

        v8 = *(*(a1[6] + 8) + 40);
      }

      [v8 addObject:v5];
      goto LABEL_10;
    case 5:
      v5 = [[NSData alloc] initWithBytes:a2 + 3 length:v3];
      v6 = [[NSString alloc] initWithData:v5 encoding:4];
      v7 = a1[4];
LABEL_9:
      v12 = *(v7 + 8);
      v13 = *(v12 + 40);
      *(v12 + 40) = v6;

LABEL_10:
      break;
  }

  return 1;
}

uint64_t sub_1000FD82C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = nw_endpoint_copy_public_keys();
  if ([v4 count])
  {
    [*(a1 + 32) addObjectsFromArray:v4];
  }

  return 1;
}

uint64_t sub_1000FD874(uint64_t a1, uint64_t a2)
{
  if (*a2 == 11)
  {
    v3 = [[NSData alloc] initWithBytes:a2 + 3 length:bswap32(*(a2 + 1)) >> 16];
    v13 = 0;
    v14 = &v13;
    v15 = 0x3032000000;
    v16 = sub_1000FD2F4;
    v17 = sub_1000FD304;
    v18 = 0;
    v7 = 0;
    v8 = &v7;
    v9 = 0x3032000000;
    v10 = sub_1000FD2F4;
    v11 = sub_1000FD304;
    v12 = 0;
    NRTLVParse();
    if (v14[5])
    {
      v4 = v8[5];
      if (v4)
      {
        v5 = [v4 copyCEndpoint];
        [*(*(*(a1 + 32) + 8) + 40) setObject:v5 forKeyedSubscript:v14[5]];
      }
    }

    _Block_object_dispose(&v7, 8);

    _Block_object_dispose(&v13, 8);
  }

  return 1;
}

void sub_1000FDA0C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Block_object_dispose((v13 - 80), 8);
  _Unwind_Resume(a1);
}

uint64_t sub_1000FDA30(uint64_t a1, unsigned __int8 *a2)
{
  v3 = bswap32(*(a2 + 1)) >> 16;
  v4 = *a2;
  if (v4 == 2)
  {
    v5 = [[NSData alloc] initWithBytes:a2 + 3 length:v3];
    v6 = sub_10013D760(v5, 1, 0, 0);
    v7 = 40;
    goto LABEL_5;
  }

  if (v4 == 5)
  {
    v5 = [[NSData alloc] initWithBytes:a2 + 3 length:v3];
    v6 = [[NSString alloc] initWithData:v5 encoding:4];
    v7 = 32;
LABEL_5:
    v8 = *(*(a1 + v7) + 8);
    v9 = *(v8 + 40);
    *(v8 + 40) = v6;
  }

  return 1;
}

void sub_1000FDB08(uint64_t a1)
{
  if (a1 && *(a1 + 62) == 1)
  {
    v2 = objc_alloc_init(NSMutableSet);
    v22 = 0u;
    v23 = 0u;
    v24 = 0u;
    v25 = 0u;
    v3 = *(a1 + 144);
    v4 = [v3 countByEnumeratingWithState:&v22 objects:v27 count:16];
    if (v4)
    {
      v5 = v4;
      v6 = *v23;
      do
      {
        for (i = 0; i != v5; i = i + 1)
        {
          if (*v23 != v6)
          {
            objc_enumerationMutation(v3);
          }

          v8 = *(*(&v22 + 1) + 8 * i);
          if ([v8 ikeClassDEstablished])
          {
            [v8 virtualInterface];
            v9 = [NSNumber numberWithUnsignedInt:NEVirtualInterfaceGetIndex()];
            [v2 addObject:v9];
          }
        }

        v5 = [v3 countByEnumeratingWithState:&v22 objects:v27 count:16];
      }

      while (v5);
    }

    v10 = *(a1 + 584);
    if (v10)
    {
      v10 = v10[9];
    }

    v11 = v10;
    v12 = [v11 isEqualToSet:v2];

    if ((v12 & 1) == 0)
    {
      v13 = *(a1 + 584);
      v14 = *(a1 + 584);
      *(a1 + 584) = 0;

      [v13 cancel];
      if ([v2 count])
      {
        v15 = [NRDNSProxyServer alloc];
        v16 = *(a1 + 136);
        v17 = *(a1 + 96);
        v18 = v16;
        v19 = v2;
        if (v15)
        {
          v26.receiver = v15;
          v26.super_class = NRDNSProxyServer;
          v20 = objc_msgSendSuper2(&v26, "initWithQueue:nrUUID:delegate:", v18, v17, a1);
          v15 = v20;
          if (v20)
          {
            objc_storeStrong(&v20->_localIfIndices, v2);
          }
        }

        v21 = *(a1 + 584);
        *(a1 + 584) = v15;

        [*(a1 + 584) start];
      }
    }
  }
}

void sub_1000FDD68(uint64_t a1, void *a2, _BYTE *a3, _BYTE *a4, _DWORD *a5, void **a6, void **a7)
{
  v13 = a2;
  if (v13)
  {
    if (a3)
    {
      if (a4)
      {
        if (a5)
        {
          if (a6)
          {
            if (a7)
            {
              *a3 = 1;
              *a4 = 0;
              *a5 = 0;
              v14 = *a6;
              *a6 = 0;

              v15 = *a7;
              *a7 = 0;

              v29[0] = _NSConcreteStackBlock;
              v29[1] = 3221225472;
              v29[2] = sub_1000FE294;
              v29[3] = &unk_1001FBA70;
              v29[4] = a1;
              v29[5] = a3;
              v29[6] = a6;
              v29[7] = a4;
              v29[8] = a5;
              v29[9] = a7;
              v16 = objc_retainBlock(v29);
              NRTLVParse();
            }

            else
            {
              v27 = sub_1000E83DC();
              IsLevelEnabled = _NRLogIsLevelEnabled();

              if (!IsLevelEnabled)
              {
                goto LABEL_9;
              }

              v16 = sub_1000E83DC();
              _NRLogWithArgs(v16, 17, "%s called with null serverCertificateDataPtr");
            }
          }

          else
          {
            v25 = sub_1000E83DC();
            v26 = _NRLogIsLevelEnabled();

            if (!v26)
            {
              goto LABEL_9;
            }

            v16 = sub_1000E83DC();
            _NRLogWithArgs(v16, 17, "%s called with null serverEndpointPtr");
          }
        }

        else
        {
          v23 = sub_1000E83DC();
          v24 = _NRLogIsLevelEnabled();

          if (!v24)
          {
            goto LABEL_9;
          }

          v16 = sub_1000E83DC();
          _NRLogWithArgs(v16, 17, "%s called with null resolverProtocolPtr");
        }
      }

      else
      {
        v21 = sub_1000E83DC();
        v22 = _NRLogIsLevelEnabled();

        if (!v22)
        {
          goto LABEL_9;
        }

        v16 = sub_1000E83DC();
        _NRLogWithArgs(v16, 17, "%s called with null shouldStartPtr");
      }
    }

    else
    {
      v19 = sub_1000E83DC();
      v20 = _NRLogIsLevelEnabled();

      if (!v20)
      {
        goto LABEL_9;
      }

      v16 = sub_1000E83DC();
      _NRLogWithArgs(v16, 17, "%s called with null resultPtr");
    }
  }

  else
  {
    v17 = sub_1000E83DC();
    v18 = _NRLogIsLevelEnabled();

    if (!v18)
    {
      goto LABEL_9;
    }

    v16 = sub_1000E83DC();
    _NRLogWithArgs(v16, 17, "%s called with null tlvData");
  }

LABEL_9:
}

void sub_1000FDFE4(unsigned int *val)
{
  if (val && *(val + 61) == 1)
  {
    v2 = *(val + 72);
    if (v2)
    {
      v7 = v2;
      [val didUpdateDNSProxyState:v7 state:v7[8]];
    }

    else
    {
      objc_initWeak(&location, val);
      v3 = val[19];
      if (v3 >= 0xC)
      {
        v3 = 12;
      }

      val[19] = v3;
      v4 = dispatch_time(0, 1000000000 << (v3 + 1));
      v5 = *(val + 17);
      block[0] = _NSConcreteStackBlock;
      block[1] = 3221225472;
      block[2] = sub_1000FE138;
      block[3] = &unk_1001FD0D8;
      v6 = v5;
      objc_copyWeak(&v9, &location);
      block[4] = val;
      dispatch_after(v4, v6, block);

      objc_destroyWeak(&v9);
      objc_destroyWeak(&location);
    }
  }
}

void sub_1000FE138(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  if (WeakRetained && WeakRetained[14] == 1 && WeakRetained[61] == 1)
  {
    v12 = WeakRetained;
    v3 = _NRCopyLogObjectForNRUUID();
    IsLevelEnabled = _NRLogIsLevelEnabled();

    if (IsLevelEnabled)
    {
      v5 = _NRCopyLogObjectForNRUUID();
      _NRLogWithArgs(v5, 1, "%s%.30s:%-4d requesting to start DNS proxy service", "", "[NRDDeviceConductor startDNSProxyClientIfNeeded]_block_invoke", 5391);
    }

    v6 = [NRLinkDirectorMessage alloc];
    v7 = *(a1 + 32);
    if (v7)
    {
      v8 = *(v7 + 96);
    }

    else
    {
      v8 = 0;
    }

    v9 = sub_10002A5C4(&v6->super.isa, v8);
    v10 = v9;
    if (v9)
    {
      *(v9 + 9) = 1;
      v13 = 1;
      v11 = [[NSData alloc] initWithBytes:&v13 length:1];
      sub_10002AB38(v10, 16, v11);
    }

    sub_10002C0E8(v10);

    WeakRetained = v12;
  }
}

uint64_t sub_1000FE294(uint64_t a1, unsigned __int8 *a2)
{
  v4 = bswap32(*(a2 + 1)) >> 16;
  v5 = _NRCopyLogObjectForNRUUID();
  IsLevelEnabled = _NRLogIsLevelEnabled();

  if (IsLevelEnabled)
  {
    v7 = _NRCopyLogObjectForNRUUID();
    _NRLogWithArgs(v7, 2, "%s%.30s:%-4d processing tlv %u (len %u)", "", "[NRDDeviceConductor fillInDNSUpdateStateFromTLVData:resultPtr:shouldStartPtr:resolverProtocolPtr:serverEndpointPtr:serverCertificateDataPtr:]_block_invoke", 5456, *a2, v4);
  }

  v8 = *a2;
  result = 1;
  if (v8 > 2)
  {
    if (v8 == 3)
    {
      v17 = bswap64(*(a2 + 3));
      if (v17)
      {
        **(a1 + 64) = 0;
      }

      else if ((v17 & 2) != 0)
      {
        **(a1 + 64) = 1;
      }
    }

    else if (v8 == 4)
    {
      v14 = [[NSData alloc] initWithBytes:a2 + 3 length:v4];
      v15 = *(a1 + 72);
      v16 = *v15;
      *v15 = v14;

      return 1;
    }
  }

  else if (v8 == 1)
  {
    if (!a2[3])
    {
      result = 0;
      **(a1 + 40) = 0;
    }
  }

  else if (v8 == 2)
  {
    v10 = [[NSData alloc] initWithBytes:a2 + 3 length:v4];
    v11 = sub_10013D760(v10, 1, 0, 0);
    v12 = *(a1 + 48);
    v13 = *v12;
    *v12 = v11;

    if (**(a1 + 48))
    {
      **(a1 + 56) = 1;
    }

    return 1;
  }

  return result;
}

void *sub_1000FE460(uint64_t a1)
{
  if (!a1 || *(a1 + 47) != 1)
  {
    return 0;
  }

  v2 = objc_alloc_init(NSMutableArray);
  v3 = v2;
  if (*(a1 + 520))
  {
    [v2 addObject:?];
  }

  if ([*(a1 + 696) count])
  {
    v31 = 0u;
    v32 = 0u;
    v29 = 0u;
    v30 = 0u;
    v4 = [*(a1 + 696) allValues];
    v5 = [v4 countByEnumeratingWithState:&v29 objects:v35 count:16];
    if (v5)
    {
      v6 = v5;
      v7 = *v30;
      do
      {
        for (i = 0; i != v6; ++i)
        {
          if (*v30 != v7)
          {
            objc_enumerationMutation(v4);
          }

          v34[0] = 0;
          v34[1] = 0;
          nw_agent_get_uuid();
          v9 = [[NSUUID alloc] initWithUUIDBytes:v34];
          [v3 addObject:v9];
        }

        v6 = [v4 countByEnumeratingWithState:&v29 objects:v35 count:16];
      }

      while (v6);
    }
  }

  v27 = 0u;
  v28 = 0u;
  v25 = 0u;
  v26 = 0u;
  v10 = *(a1 + 144);
  v11 = [v10 countByEnumeratingWithState:&v25 objects:v33 count:16];
  if (v11)
  {
    v12 = v11;
    v13 = *v26;
    do
    {
      for (j = 0; j != v12; j = j + 1)
      {
        if (*v26 != v13)
        {
          objc_enumerationMutation(v10);
        }

        v16 = *(*(&v25 + 1) + 8 * j);
        v17 = [v16 proxyAgentUUID];

        if (v17)
        {
          v18 = [v16 proxyAgentUUID];
          [v3 addObject:v18];
        }

        v19 = [v16 companionProxyAgent];

        if (v19)
        {
          v20 = [v16 companionProxyAgent];
          v21 = [v20 agentUUID];
          [v3 addObject:v21];

          v22 = [v16 companionProxyAgent];
          if (v22)
          {
            v23 = v22;
            v15 = [*(v22 + 72) agentUUID];

            if (v15)
            {
              [v3 addObject:v15];
            }
          }

          else
          {
            v15 = 0;
          }
        }
      }

      v12 = [v10 countByEnumeratingWithState:&v25 objects:v33 count:16];
    }

    while (v12);
  }

  return v3;
}

void sub_1000FE73C(uint64_t result)
{
  v1 = *(result + 32);
  if (v1)
  {
    if (*(v1 + 160))
    {
      return;
    }

    v1 = *(v1 + 656);
  }

  sub_10011EC08(v1, *(result + 40));
}

void sub_1000FE760(uint64_t a1, int a2)
{
  if (sub_1000FE89C(a1))
  {
    v4 = _NRCopyLogObjectForNRUUID();
    IsLevelEnabled = _NRLogIsLevelEnabled();

    if (IsLevelEnabled)
    {
      v6 = _NRCopyLogObjectForNRUUID();
      v7 = v6;
      v8 = "stop";
      if (a2)
      {
        v8 = "start";
      }

      _NRLogWithArgs(v6, 1, "%s%.30s:%-4d requesting to %s discovery proxy service", "", "[NRDDeviceConductor sendDiscoveryProxyClientMessageWithEnabled:]", 5341, v8);
    }

    v10 = sub_10002A5C4([NRLinkDirectorMessage alloc], *(a1 + 96));
    if (v10)
    {
      *(v10 + 9) = 1;
      v11 = a2;
      v9 = [[NSData alloc] initWithBytes:&v11 length:1];
      sub_10002AB38(v10, 18, v9);
    }

    sub_10002C0E8(v10);
  }
}

id sub_1000FE89C(uint64_t a1)
{
  if ((*(a1 + 63) & 1) == 0)
  {
    v6 = _NRCopyLogObjectForNRUUID();
    IsLevelEnabled = _NRLogIsLevelEnabled();

    if (IsLevelEnabled)
    {
      v5 = _NRCopyLogObjectForNRUUID();
      _NRLogWithArgs(v5, 2, "%s%.30s:%-4d not eligible to use discovery proxy service");
      goto LABEL_9;
    }

    return 0;
  }

  if (*(a1 + 47) != 1)
  {
    return 0;
  }

  result = [*(a1 + 160) ikeClassDEstablished];
  if (result)
  {
    result = [*(a1 + 160) type];
    if (result != 1)
    {
      v3 = _NRCopyLogObjectForNRUUID();
      v4 = _NRLogIsLevelEnabled();

      if (v4)
      {
        v5 = _NRCopyLogObjectForNRUUID();
        _NRLogWithArgs(v5, 2, "%s%.30s:%-4d not requesting discovery proxy service for non-BT primary link");
LABEL_9:

        return 0;
      }

      return 0;
    }
  }

  return result;
}

void sub_1000FE9B0(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  if (WeakRetained && WeakRetained[14] == 1 && WeakRetained[74] == 1)
  {
    v2 = WeakRetained;
    sub_1000FE760(WeakRetained, 1);
    WeakRetained = v2;
  }
}

void sub_1000FEA10(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = v3;
  if (a1)
  {
    memset(v59, 0, 9);
    if ([v3 length] > 8)
    {
      [v4 getBytes:v59 length:9];
      v13 = *(v59 + 5);
      if (LOBYTE(v59[0]))
      {
        if ((*(a1 + 10) & 1) != 0 || *(a1 + 51) == 1)
        {
          dispatch_assert_queue_V2(*(a1 + 136));
          objc_opt_self();
          if (qword_1002290C0 != -1)
          {
            dispatch_once(&qword_1002290C0, &stru_1001FB2B0);
          }

          v14 = qword_1002290B8;
          v15 = v14;
          if (v14)
          {
            v16 = *(v14 + 6);
          }

          else
          {
            v16 = 0;
          }

          v17 = v16;

          v18 = v17 != 0;
          if (v17)
          {
            v19 = v17[3];
            dispatch_assert_queue_V2(v19);
          }
        }

        else
        {
          v18 = 0;
        }

        dispatch_assert_queue_V2(*(a1 + 136));
        v21 = sub_100163A30(NRDLocalDevice, *(a1 + 96));
        v22 = v21;
        if (v21)
        {
          v23 = *(v21 + 144);
        }

        else
        {
          v23 = 0;
        }

        v24 = v23;
        v25 = [v24 getDefaultLinkSubtypeForLinkType:2];

        v26 = sub_1000EA2C8(a1, 2, v25);
        if ((*(a1 + 45) & 1) == 0)
        {
          [v26 startRequested];
        }

        v27 = objc_alloc_init(NSMutableArray);
        if ([v4 length] >= 0xA)
        {
          v28 = [v4 subdataWithRange:{9, objc_msgSend(v4, "length") - 9}];
          v52 = _NSConcreteStackBlock;
          v53 = 3221225472;
          v54 = sub_1000FEFC0;
          v55 = &unk_1001FBAC0;
          v56 = a1;
          v58 = v18;
          v57 = v27;
          NRTLVParse();
        }

        if ([v27 count])
        {
          v45 = v27;
          v46 = v26;
          v47 = v13;
          objc_storeStrong((a1 + 472), v27);
          v29 = objc_alloc_init(NSMutableString);
          v48 = 0u;
          v49 = 0u;
          v50 = 0u;
          v51 = 0u;
          v30 = *(a1 + 472);
          v31 = [v30 countByEnumeratingWithState:&v48 objects:v60 count:16];
          if (v31)
          {
            v32 = v31;
            v33 = *v49;
            do
            {
              for (i = 0; i != v32; i = i + 1)
              {
                if (*v49 != v33)
                {
                  objc_enumerationMutation(v30);
                }

                v35 = *(*(&v48 + 1) + 8 * i);
                v36 = [v29 length];
                [v35 unsignedCharValue];
                ShortStringFromNRLinkSubtype = createShortStringFromNRLinkSubtype();
                v38 = ShortStringFromNRLinkSubtype;
                if (v36)
                {
                  [v29 appendFormat:@"/%@", ShortStringFromNRLinkSubtype];
                }

                else
                {
                  [v29 appendString:ShortStringFromNRLinkSubtype];
                }
              }

              v32 = [v30 countByEnumeratingWithState:&v48 objects:v60 count:16];
            }

            while (v32);
          }

          v44 = "ack";
          if ((v47 & 0x1000000) == 0)
          {
            v44 = "req";
          }

          sub_1000EC910(a1, 1050, @"recv %s %d %@", v39, v40, v41, v42, v43, v44);
          if (sub_1000FEEB4(a1))
          {
            sub_1000EF7A0(a1, 1);
          }

          else
          {
            *(a1 + 26) = 1;
          }

          v27 = v45;
          v26 = v46;
        }
      }

      else
      {
        v20 = "ack ";
        if ((*(v59 + 5) & 0x1000000) == 0)
        {
          v20 = "req";
        }

        sub_1000EC910(a1, 1050, @"recv %s %d", v8, v9, v10, v11, v12, v20);
        *(a1 + 54) = 0;
        sub_1000EF7A0(a1, 0);
      }
    }

    else
    {
      v5 = _NRCopyLogObjectForNRUUID();
      IsLevelEnabled = _NRLogIsLevelEnabled();

      if (IsLevelEnabled)
      {
        v7 = _NRCopyLogObjectForNRUUID();
        _NRLogWithArgs(v7, 16, "%s%.30s:%-4d invalid request size %lu", "", "-[NRDDeviceConductor processLinkUpgradeRequest:]", 7174, [v4 length]);
      }
    }
  }
}

uint64_t sub_1000FEEB4(uint64_t a1)
{
  dispatch_assert_queue_V2(*(a1 + 136));
  objc_opt_self();
  if (qword_1002290C0 != -1)
  {
    dispatch_once(&qword_1002290C0, &stru_1001FB2B0);
  }

  v1 = qword_1002290B8;
  v2 = v1;
  if (v1)
  {
    v3 = *(v1 + 6);
  }

  else
  {
    v3 = 0;
  }

  v4 = v3;

  v5 = sub_10017F7C8(v4);
  if ((v5 & 1) == 0)
  {
    v6 = _NRCopyLogObjectForNRUUID();
    IsLevelEnabled = _NRLogIsLevelEnabled();

    if (IsLevelEnabled)
    {
      v8 = _NRCopyLogObjectForNRUUID();
      _NRLogWithArgs(v8, 0, "%s%.30s:%-4d Deferring prefer Wi-Fi request as Wi-Fi is powered off", "", "[NRDDeviceConductor canProcessPreferWiFiRequest]", 7295);
    }
  }

  return v5;
}

uint64_t sub_1000FEFC0(uint64_t a1, uint64_t a2)
{
  if (*a2 != 1)
  {
    return 1;
  }

  if (*(a2 + 1) != 256)
  {
    v16 = _NRCopyLogObjectForNRUUID();
    IsLevelEnabled = _NRLogIsLevelEnabled();

    if (!IsLevelEnabled)
    {
      return 1;
    }

    v12 = _NRCopyLogObjectForNRUUID();
    _NRLogWithArgs(v12, 16, "%s%.30s:%-4d invalid size %u");
LABEL_20:

    return 1;
  }

  v2 = *(a2 + 3);
  if (v2 > 8)
  {
    return 1;
  }

  v3 = byte_100196508[v2];
  if (v3 > 0x65)
  {
    if (v3 == 102)
    {
      v24 = *(a1 + 32);
      if (!v24 || *(v24 + 10) != 1 || *(a1 + 48) != 1)
      {
        return 1;
      }

      v20 = *(a1 + 40);
      v21 = 102;
    }

    else
    {
      if (v3 != 103)
      {
        return 1;
      }

      v19 = *(a1 + 32);
      if (!v19 || *(v19 + 51) != 1 || *(a1 + 48) != 1)
      {
        return 1;
      }

      v20 = *(a1 + 40);
      v21 = 103;
    }

    goto LABEL_35;
  }

  if (!byte_100196508[v2])
  {
    v22 = v2 - 1;
    if (v22 > 7u)
    {
      return 1;
    }

    v23 = 0x102020205040201uLL >> (8 * v22);
    if (!v23)
    {
      return 1;
    }

    v20 = *(a1 + 40);
    v21 = v23;
LABEL_35:
    v12 = [NSNumber numberWithUnsignedChar:v21];
    [v20 addObject:v12];
    goto LABEL_20;
  }

  if (v3 == 101)
  {
    v5 = *(a1 + 32);
    if (v5)
    {
      dispatch_assert_queue_V2(*(v5 + 136));
      objc_opt_self();
      if (qword_1002290C0 != -1)
      {
        dispatch_once(&qword_1002290C0, &stru_1001FB2B0);
      }

      v6 = qword_1002290B8;
      v7 = v6;
      if (v6)
      {
        v8 = *(v6 + 6);
      }

      else
      {
        v8 = 0;
      }

      v9 = v8;

      v10 = *(a1 + 32);
      if (v10)
      {
        v11 = *(v10 + 96);
      }

      else
      {
        v11 = 0;
      }
    }

    else
    {
      v9 = 0;
      v11 = 0;
    }

    v12 = sub_10017E984(v9, v11);

    if (v12 || (v13 = *(a1 + 32)) != 0 && (*(v13 + 45) & 1) != 0)
    {
      v14 = *(a1 + 40);
      v15 = [NSNumber numberWithUnsignedChar:101];
      [v14 addObject:v15];
    }

    else
    {
      v25 = _NRCopyLogObjectForNRUUID();
      v26 = _NRLogIsLevelEnabled();

      if (!v26)
      {
        return 1;
      }

      v12 = _NRCopyLogObjectForNRUUID();
      _NRLogWithArgs(v12, 16, "%s%.30s:%-4d Could not enable prefer Wi-Fi request as no peer address found");
    }

    goto LABEL_20;
  }

  return 1;
}

void sub_1000FFA7C(uint64_t a1)
{
  if (a1)
  {
    v10 = 0u;
    v11 = 0u;
    v8 = 0u;
    v9 = 0u;
    v2 = *(a1 + 184);
    v3 = [v2 countByEnumeratingWithState:&v8 objects:v12 count:16];
    if (v3)
    {
      v4 = v3;
      v5 = *v9;
      do
      {
        v6 = 0;
        do
        {
          if (*v9 != v5)
          {
            objc_enumerationMutation(v2);
          }

          xpc_connection_cancel(*(*(&v8 + 1) + 8 * v6));
          v6 = v6 + 1;
        }

        while (v4 != v6);
        v4 = [v2 countByEnumeratingWithState:&v8 objects:v12 count:16];
      }

      while (v4);
    }

    [*(a1 + 184) removeAllObjects];
    v7 = *(a1 + 192);
    *(a1 + 192) = 0;
  }
}

void sub_1000FFB90(uint64_t a1)
{
  v2 = sub_1000F1BC0(*(a1 + 32), 1);
  v3 = v2;
  if (!v2 || [(dispatch_queue_t *)v2 state]!= 8)
  {
    v4 = _NRCopyLogObjectForNRUUID();
    IsLevelEnabled = _NRLogIsLevelEnabled();

    if (IsLevelEnabled)
    {
      v6 = _NRCopyLogObjectForNRUUID();
      _NRLogWithArgs(v6, 0, "%s%.30s:%-4d BT unavailable and ClassC is unlocked, starting Wi-Fi immediately", "", "[NRDDeviceConductor linkIsUnavailable:]_block_invoke", 6468);
    }

    v7 = *(a1 + 32);
    if (v7)
    {
      dispatch_assert_queue_V2(*(v7 + 136));
      sub_1000F1D90(v7, 1, 0xAu);
      v8 = *(a1 + 32);
      if (v8)
      {
        if (*(v8 + 56) == 1)
        {
          v9 = objc_alloc_init(NRLinkDirectorRequest);
          v11 = v9;
          if (v9)
          {
            v9->_type = 6;
            v9->_allowsSuspendedLink = 0;
            objc_storeStrong(&v9->_timerDescription, @"QR-activation-hysteresis");
            objc_storeStrong(&v11->_cancelIfLinkTypeReady, &off_10020A0C0);
            v11->_attemptImmediately = 1;
            v11->_timeout = 10;
          }

          newValue[0] = _NSConcreteStackBlock;
          newValue[1] = 3221225472;
          newValue[2] = sub_100102068;
          newValue[3] = &unk_1001FD3C8;
          v12 = *(a1 + 32);
          newValue[4] = v12;
          if (v11)
          {
            objc_setProperty_nonatomic_copy(v11, v10, newValue, 48);
            v12 = *(a1 + 32);
          }

          sub_1000EAA20(v12, v11);
        }
      }
    }
  }
}

void sub_1000FFD58(uint64_t a1)
{
  if (a1)
  {
    dispatch_assert_queue_V2(*(a1 + 136));

    sub_1000F1D90(a1, 1, 0xAu);
  }
}

void sub_1000FFDA8(uint64_t a1)
{
  if (a1)
  {
    dispatch_assert_queue_V2(*(a1 + 136));
    if ([*(a1 + 144) count])
    {
      if ((*(a1 + 58) & 1) == 0)
      {
        v2 = *(a1 + 39);
        dispatch_assert_queue_V2(*(a1 + 136));
        v3 = sub_100163A30(NRDLocalDevice, *(a1 + 96));
        v4 = v3;
        if (v3)
        {
          v5 = *(v3 + 144);
        }

        else
        {
          v5 = 0;
        }

        v6 = v5;
        v7 = [v6 getDefaultLinkSubtypeForLinkType:v2];

        v8 = sub_1000EA2C8(a1, v2, v7);
        if (v8 && [v8 state] == 8)
        {
          goto LABEL_28;
        }
      }

      v23 = 0u;
      v24 = 0u;
      v21 = 0u;
      v22 = 0u;
      v9 = *(a1 + 144);
      v10 = [v9 countByEnumeratingWithState:&v21 objects:v25 count:16];
      if (v10)
      {
        v11 = v10;
        v8 = 0;
        v12 = *v22;
        v13 = -1;
        do
        {
          for (i = 0; i != v11; i = i + 1)
          {
            if (*v22 != v12)
            {
              objc_enumerationMutation(v9);
            }

            v15 = *(*(&v21 + 1) + 8 * i);
            if ([v15 state] == 8 && objc_msgSend(v15, "metric") < v13)
            {
              v16 = v15;

              v13 = [v16 metric];
              v8 = v16;
            }
          }

          v11 = [v9 countByEnumeratingWithState:&v21 objects:v25 count:16];
        }

        while (v11);

        if (!v8 || [v8 state] == 8)
        {
          goto LABEL_28;
        }

        v17 = _NRCopyLogObjectForNRUUID();
        IsLevelEnabled = _NRLogIsLevelEnabled();

        if (IsLevelEnabled)
        {
          v19 = *(a1 + 96);
          v20 = _NRCopyLogObjectForNRUUID();
          _NRLogWithArgs(v20, 17, "Attempting to set a non-ready link %@ as primary link", v8);
        }
      }

      else
      {
        v8 = v9;
      }

      v8 = 0;
LABEL_28:
      sub_10010073C(a1, v8);

      return;
    }

    sub_10010073C(a1, 0);
  }
}

void sub_100100060(uint64_t a1, void *a2)
{
  v28 = a2;
  if (a1 && [*(a1 + 160) state] == 8)
  {
    v4 = sub_10002A50C([NRLinkDirectorMessage alloc], *(a1 + 96));
    v5 = v4;
    if (!v4)
    {
      v7 = *(a1 + 144);
LABEL_59:

      sub_10002C0E8(v5);
      goto LABEL_60;
    }

    objc_storeStrong(v4 + 3, a2);
    if ((*(a1 + 58) & 1) == 0)
    {
      *(v5 + 8) = 1;
    }

    v6 = *(a1 + 144);
    v34 = 0u;
    v35 = 0u;
    v36 = 0u;
    v37 = 0u;
    v7 = v6;
    v8 = [v7 countByEnumeratingWithState:&v34 objects:v39 count:16];
    if (!v8)
    {
LABEL_32:

      v27 = [v7 allObjects];
      v17 = [v27 sortedArrayUsingComparator:&stru_1001FA760];
      v29 = 0u;
      v30 = 0u;
      v31 = 0u;
      v32 = 0u;
      v18 = [v17 countByEnumeratingWithState:&v29 objects:v38 count:16];
      if (v18)
      {
        v19 = v18;
        v20 = *v30;
        do
        {
          for (i = 0; i != v19; i = i + 1)
          {
            if (*v30 != v20)
            {
              objc_enumerationMutation(v17);
            }

            v24 = *(*(&v29 + 1) + 8 * i);
            if ([v24 state] == 8 && (objc_msgSend(v24, "isPrimary") & 1) == 0)
            {
              v33 = 0;
              v25 = [v24 type];
              v26 = [v24 subtype];
              if (v26 > 103)
              {
                switch(v26)
                {
                  case 'y':
                    LOBYTE(v22) = 8;
LABEL_37:
                    v33 = v22;
                    v23 = [[NSData alloc] initWithBytes:&v33 length:1];
                    sub_10002AB38(v5, 6, v23);

                    continue;
                  case 'x':
                    LOBYTE(v22) = 1;
                    goto LABEL_37;
                  case 'h':
                    LOBYTE(v22) = 7;
                    goto LABEL_37;
                }
              }

              else
              {
                switch(v26)
                {
                  case 'e':
                    LOBYTE(v22) = 2;
                    goto LABEL_37;
                  case 'f':
                    LOBYTE(v22) = 5;
                    goto LABEL_37;
                  case 'g':
                    LOBYTE(v22) = 6;
                    goto LABEL_37;
                }
              }

              v22 = 0x40300020100uLL >> (8 * (v25 & 0x1F));
              if (v25 > 5)
              {
                LOBYTE(v22) = 0;
              }

              goto LABEL_37;
            }
          }

          v19 = [v17 countByEnumeratingWithState:&v29 objects:v38 count:16];
        }

        while (v19);
      }

      goto LABEL_59;
    }

    v9 = v8;
    v10 = *v35;
LABEL_9:
    v11 = 0;
    while (1)
    {
      if (*v35 != v10)
      {
        objc_enumerationMutation(v7);
      }

      v12 = *(*(&v34 + 1) + 8 * v11);
      if ([v12 state] != 255)
      {
        if ([v12 isPrimary])
        {
          break;
        }
      }

      if (v9 == ++v11)
      {
        v9 = [v7 countByEnumeratingWithState:&v34 objects:v39 count:16];
        if (!v9)
        {
          goto LABEL_32;
        }

        goto LABEL_9;
      }
    }

    v13 = [v12 type];
    v14 = [v12 subtype];
    if (v14 > 103)
    {
      switch(v14)
      {
        case 'y':
          LOBYTE(v15) = 8;
          goto LABEL_31;
        case 'x':
          LOBYTE(v15) = 1;
          goto LABEL_31;
        case 'h':
          LOBYTE(v15) = 7;
          goto LABEL_31;
      }
    }

    else
    {
      switch(v14)
      {
        case 'e':
          LOBYTE(v15) = 2;
          goto LABEL_31;
        case 'f':
          LOBYTE(v15) = 5;
          goto LABEL_31;
        case 'g':
          LOBYTE(v15) = 6;
LABEL_31:
          v33 = v15;
          v16 = [[NSData alloc] initWithBytes:&v33 length:1];
          sub_10002AB38(v5, 6, v16);

          goto LABEL_32;
      }
    }

    if (v13 > 5)
    {
      LOBYTE(v15) = 0;
    }

    else
    {
      v15 = 0x40300020100uLL >> (8 * (v13 & 0x1F));
    }

    goto LABEL_31;
  }

LABEL_60:
}

void sub_10010047C(uint64_t a1)
{
  if (a1 && sub_1000ED8A4(a1))
  {
    if (qword_100229238 != -1)
    {
      dispatch_once(&qword_100229238, &stru_1001FC340);
    }

    if (byte_100229230 == 1)
    {

      sub_1000ECF74(a1, 5u, 0);
    }

    else
    {
      v2 = sub_100163A30(NRDLocalDevice, *(a1 + 96));
      v3 = v2;
      v23 = 0u;
      v24 = 0u;
      v25 = 0u;
      v26 = 0u;
      if (v2)
      {
        v4 = *(v2 + 144);
      }

      else
      {
        v4 = 0;
      }

      v5 = v4;
      v6 = [v5 allowedLinkSubtypes];

      v7 = [v6 countByEnumeratingWithState:&v23 objects:v28 count:16];
      if (v7)
      {
        v8 = v7;
        v9 = *v24;
        do
        {
          for (i = 0; i != v8; i = i + 1)
          {
            if (*v24 != v9)
            {
              objc_enumerationMutation(v6);
            }

            sub_1000ECF74(a1, 0, [*(*(&v23 + 1) + 8 * i) unsignedShortValue]);
          }

          v8 = [v6 countByEnumeratingWithState:&v23 objects:v28 count:16];
        }

        while (v8);
      }

      v21 = 0u;
      v22 = 0u;
      v19 = 0u;
      v20 = 0u;
      if (v3)
      {
        v11 = v3[18];
      }

      else
      {
        v11 = 0;
      }

      v12 = v11;
      v13 = [v12 allowedLinkTypes];

      v14 = [v13 countByEnumeratingWithState:&v19 objects:v27 count:16];
      if (v14)
      {
        v15 = v14;
        v16 = *v20;
        do
        {
          for (j = 0; j != v15; j = j + 1)
          {
            if (*v20 != v16)
            {
              objc_enumerationMutation(v13);
            }

            v18 = *(*(&v19 + 1) + 8 * j);
            if ([v18 unsignedShortValue] != 2)
            {
              sub_1000ECF74(a1, [v18 unsignedShortValue], 0);
            }
          }

          v15 = [v13 countByEnumeratingWithState:&v19 objects:v27 count:16];
        }

        while (v15);
      }
    }
  }
}

void sub_10010073C(uint64_t a1, void *a2)
{
  v153 = a2;
  dispatch_assert_queue_V2(*(a1 + 136));
  v9 = (a1 + 160);
  if (*(a1 + 160) != v153)
  {
    sub_1000EC910(a1, 1012, @"%@ -> (%@)", v4, v5, v6, v7, v8, *(a1 + 160));
    v10 = *(a1 + 160);
    *(a1 + 41) = [v10 type];
    v11 = _NRCopyLogObjectForNRUUID();
    IsLevelEnabled = _NRLogIsLevelEnabled();

    if (IsLevelEnabled)
    {
      v13 = *(a1 + 96);
      v14 = _NRCopyLogObjectForNRUUID();
      _NRLogWithArgs(v14, 1, "%s%.30s:%-4d Changing primary link %@ ----> %@", "", "[NRDDeviceConductor setPrimaryLink:]", 1726, v10, v153);
    }

    objc_storeStrong((a1 + 160), a2);
    sub_100101814(a1);
    v15 = sub_100163A30(NRDLocalDevice, *(a1 + 96));
    v16 = v15;
    if (*(a1 + 49))
    {
      goto LABEL_44;
    }

    v17 = v15 ? *(v15 + 144) : 0;
    v18 = v17;
    v19 = [v18 hasPoliciesForProxyCriteria];

    if (!v19)
    {
      goto LABEL_44;
    }

    v20 = v16 ? v16[18] : 0;
    v21 = v20;
    v22 = [v21 proxyCapability];

    if (v22 != 2)
    {
      goto LABEL_44;
    }

    if (v16)
    {
      v23 = v16[18];
    }

    else
    {
      v23 = 0;
    }

    v24 = v23;
    v25 = [v24 proxyProviderCriteria];
    if ([v25 excludeLegacyClients])
    {

      goto LABEL_44;
    }

    v26 = v16 ? v16[18] : 0;
    v27 = v26;
    v28 = [v27 proxyProviderCriteria];
    v29 = [v28 excludeNonMatchingLegacyClients];

    if (v29)
    {
LABEL_44:

      v97 = *(a1 + 408);
      if (v97)
      {
        ++v97[6];
      }

      if (*v9)
      {
        if (*(a1 + 448))
        {
          if ([v10 state] != 255)
          {
            sub_10013CC88(*(a1 + 448));
          }
        }

        else
        {
          sub_100101D0C(a1);
        }
      }

      if (*(a1 + 46) == 1)
      {
        if (*v9)
        {
          if (*(a1 + 42) == 1 && sub_10013CA2C())
          {
            *(a1 + 42) = 0;
            v98 = 1036;
LABEL_58:
            sub_1000059A8(*(a1 + 96), v98, 0, 0);
          }
        }

        else
        {
          LODWORD(v161[0]) = 0x10000;
          if ((sysctlbyname("net.link.generic.system.companion_sndbuf_limit", 0, 0, v161, 4uLL) & 0x80000000) == 0)
          {
            *(a1 + 42) = 1;
            v98 = 1035;
            goto LABEL_58;
          }

          v139 = *__error();
          if (strerror_r(v139, __strerrbuf, 0x80uLL))
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

            _NRLogWithArgs(qword_1002292D0, 16, "%s%.30s:%-4d sysctl net.link.generic.system.companion_sndbuf_limit -> %d failed: [%d] %s", "", "NRLimitCompanionLinkFlows", 921, LODWORD(v161[0]), v139, __strerrbuf);
          }
        }
      }

      if (v10)
      {
        [v10 setIsPrimary:0];
      }

      v99 = *v9;
      if (*v9)
      {
        [v99 setIsPrimary:1];
        sub_100100060(a1, *(a1 + 160));
        [*(a1 + 160) virtualInterface];
        v99 = NEVirtualInterfaceCopyName();
      }

      v100 = *(a1 + 448);
      *(a1 + 448) = v99;

      v101 = [v10 type];
      if (v153 && v101 == 1)
      {
        v102 = _NRCopyLogObjectForNRUUID();
        v103 = _NRLogIsLevelEnabled();

        if (v103)
        {
          v104 = _NRCopyLogObjectForNRUUID();
          _NRLogWithArgs(v104, 1, "%s%.30s:%-4d Suspending bluetooth link", "", "[NRDDeviceConductor setPrimaryLink:]", 1776);
        }

        [v10 suspend];
      }

      else if ([*v9 type] == 1 && objc_msgSend(*v9, "state") != 8)
      {
        v105 = _NRCopyLogObjectForNRUUID();
        v106 = _NRLogIsLevelEnabled();

        if (v106)
        {
          v107 = _NRCopyLogObjectForNRUUID();
          _NRLogWithArgs(v107, 1, "%s%.30s:%-4d Resuming bluetooth link", "", "[NRDDeviceConductor setPrimaryLink:]", 1779);
        }

        [v10 resume];
      }

      if ([*v9 type] != 1)
      {
        sub_1000FA994(a1);
      }

      sub_1000FB114(a1, 0);
      [*(a1 + 680) removeAllObjects];
      sub_1000E8C70(a1, 1, 1);
      if (*(a1 + 728))
      {
        if (!*(a1 + 744))
        {
LABEL_77:
          v108 = [NSString alloc];
          v109 = [*(a1 + 96) UUIDString];
          v110 = [v108 initWithFormat:@"NRDDC-%@-%@", v109, @"Availability"];

          v111 = *(a1 + 744);
          *(a1 + 744) = v110;
        }
      }

      else
      {
        v125 = sub_100163A30(NRDLocalDevice, *(a1 + 96));
        if (sub_100169428(v125))
        {
          v126 = "CmpLnkAvailability";
        }

        else
        {
          if (v125)
          {
            v127 = v125[18];
          }

          else
          {
            v127 = 0;
          }

          v128 = v127;
          v129 = [v128 activeOperationalScope];

          if ((v129 & 1) == 0)
          {

LABEL_87:
            goto LABEL_88;
          }

          if (v125)
          {
            v130 = v125[18];
          }

          else
          {
            v130 = 0;
          }

          v131 = v130;
          v132 = [v131 allowedLinkSubtypes];
          v133 = [v132 containsObject:&off_100209CC8];

          if (v133)
          {
            v126 = "LowLatencyTetheringAvailability";
          }

          else
          {
            v126 = "TetheringAvailability";
          }
        }

        v134 = *(a1 + 136);
        v135 = nw_agent_create();
        v136 = *(a1 + 728);
        *(a1 + 728) = v135;

        nw_agent_change_state();
        v137 = [NSString stringWithUTF8String:v126];
        v138 = *(a1 + 736);
        *(a1 + 736) = v137;

        if (!*(a1 + 744))
        {
          goto LABEL_77;
        }
      }

      objc_opt_self();
      if (qword_100229410 != -1)
      {
        dispatch_once(&qword_100229410, &stru_1001FCD98);
      }

      v112 = qword_100229408;
      sub_10015A238(v112, *(a1 + 744));

      if ([*(a1 + 160) state] == 8)
      {
        *__strerrbuf = 0;
        v163 = 0;
        nw_agent_get_uuid();
        v113 = [[NSUUID alloc] initWithUUIDBytes:__strerrbuf];
        v114 = objc_alloc_init(NSMutableArray);
        v115 = +[NEPolicyCondition allInterfaces];
        [v114 addObject:v115];

        v116 = [NSString stringWithUTF8String:nrXPCEntitlementDeviceMonitor];
        v117 = [NEPolicyCondition customEntitlement:v116];
        [v114 addObject:v117];

        v118 = [NEPolicyCondition requiredAgentDomain:@"com.apple.networkrelay" agentType:*(a1 + 736)];
        [v114 addObject:v118];

        v119 = [NEPolicy alloc];
        v120 = [NEPolicyResult netAgentUUID:v113];
        v121 = [v119 initWithOrder:10 result:v120 conditions:v114];

        objc_opt_self();
        if (qword_100229410 != -1)
        {
          dispatch_once(&qword_100229410, &stru_1001FCD98);
        }

        v122 = qword_100229408;
        v123 = sub_100159E00(v122, *(a1 + 744), v121);
      }

      objc_opt_self();
      if (qword_100229410 != -1)
      {
        dispatch_once(&qword_100229410, &stru_1001FCD98);
      }

      v124 = qword_100229408;
      sub_10015A52C(v124);

      goto LABEL_87;
    }

    objc_opt_self();
    if (qword_100229410 != -1)
    {
      dispatch_once(&qword_100229410, &stru_1001FCD98);
    }

    v30 = qword_100229408;
    sub_10015A238(v30, *(a1 + 328));

    v31 = [*(a1 + 160) state];
    if (v16)
    {
      v32 = v16[18];
    }

    else
    {
      v32 = 0;
    }

    v33 = v32;
    v34 = [v33 hasCompanionDatapath];

    v35 = *v9;
    if (v34)
    {
      [v35 virtualInterface];
      v36 = NEVirtualInterfaceCopyName();
    }

    else
    {
      v36 = [v35 localInterfaceName];
    }

    v37 = v36;
    if (v31 != 8)
    {
LABEL_41:
      objc_opt_self();
      if (qword_100229410 != -1)
      {
        dispatch_once(&qword_100229410, &stru_1001FCD98);
      }

      v96 = qword_100229408;
      sub_10015A52C(v96);

      goto LABEL_44;
    }

    v151 = v36;
    v38 = +[NEPolicyCondition allInterfaces];
    v39 = +[NEPolicyCondition usesModernNetworkAPI];
    v40 = +[NEPolicyCondition allowsUnsafeSocketAccess];
    [v40 setNegative:1];
    v41 = [NEPolicyResult skipWithOrder:620];
    v42 = [NEPolicy alloc];
    *__strerrbuf = v38;
    v163 = v39;
    v145 = v40;
    v146 = v39;
    v164 = v40;
    v43 = [NSArray arrayWithObjects:__strerrbuf count:3];
    v44 = [v42 initWithOrder:600 result:v41 conditions:v43];

    v45 = sub_1001599CC(NRDPolicySessionManager);
    v46 = sub_100159E00(v45, *(a1 + 328), v44);

    v47 = [NEPolicyCondition effectivePID:getpid()];
    v48 = [NEPolicy alloc];
    v150 = v38;
    v161[0] = v38;
    v161[1] = v47;
    v144 = v47;
    v49 = [NSArray arrayWithObjects:v161 count:2];
    v149 = v41;
    v50 = [v48 initWithOrder:600 result:v41 conditions:v49];

    v51 = sub_1001599CC(NRDPolicySessionManager);
    v152 = v50;
    v52 = sub_100159E00(v51, *(a1 + 328), v50);

    if (v16)
    {
      v53 = v16[18];
    }

    else
    {
      v53 = 0;
    }

    v54 = v151;
    v55 = v53;
    v56 = [v55 usesTLS];

    if (v56)
    {
      v57 = [*(a1 + 160) remoteOuterEndpoint];
      v58 = [v57 addressFamily];

      v59 = [*(a1 + 160) remoteOuterEndpoint];
      v60 = [v59 hostname];
      v61 = [NWAddressEndpoint endpointWithHostname:v60 port:@"0"];

      if (v58 == 30)
      {
        v62 = 128;
      }

      else
      {
        v62 = 32;
      }

      v147 = v61;
      v63 = [NEPolicyCondition flowRemoteAddress:v61 prefix:v62];
      v159 = v63;
      v64 = +[NEPolicyCondition allInterfaces];
      v160 = v64;
      v65 = [NSArray arrayWithObjects:&v159 count:2];

      v66 = [[NEPolicy alloc] initWithOrder:600 result:v149 conditions:v65];
      v67 = sub_1001599CC(NRDPolicySessionManager);
      v68 = sub_100159E00(v67, *(a1 + 328), v66);
    }

    else
    {
      v69 = sub_1001689F8(v16);
      v147 = v69;
      if (v69)
      {
        v70 = [NEPolicyCondition flowRemoteAddress:v69 prefix:128];
        v159 = v70;
        v71 = +[NEPolicyCondition allInterfaces];
        v160 = v71;
        v72 = [NSArray arrayWithObjects:&v159 count:2];

        v73 = [[NEPolicy alloc] initWithOrder:600 result:v149 conditions:v72];
        v74 = sub_1001599CC(NRDPolicySessionManager);
        v75 = sub_100159E00(v74, *(a1 + 328), v73);

        v54 = v151;
        v152 = v73;
      }

      v63 = sub_100168A4C(v16);
      if (!v63)
      {
        goto LABEL_38;
      }

      v65 = [NEPolicyCondition flowRemoteAddress:v63 prefix:128];
      v158[0] = v65;
      v76 = +[NEPolicyCondition allInterfaces];
      v158[1] = v76;
      v67 = [NSArray arrayWithObjects:v158 count:2];

      v66 = [[NEPolicy alloc] initWithOrder:600 result:v149 conditions:v67];
      v77 = sub_1001599CC(NRDPolicySessionManager);
      v78 = sub_100159E00(v77, *(a1 + 328), v66);
    }

    v152 = v66;

    v54 = v151;
LABEL_38:

    v148 = [NEPolicyRouteRule routeRuleWithAction:7 forInterfaceName:v54];
    [v148 setControlUnit:0xFFFFFFFLL];
    v79 = [NEPolicyCondition flowIPProtocol:17];
    v141 = [NEPolicy alloc];
    v157 = v148;
    v80 = [NSArray arrayWithObjects:&v157 count:1];
    v81 = [NEPolicyResult routeRules:v80];
    v156[0] = v150;
    v156[1] = v79;
    v143 = v79;
    v82 = [NSArray arrayWithObjects:v156 count:2];
    v140 = [v141 initWithOrder:610 result:v81 conditions:v82];

    v83 = sub_1001599CC(NRDPolicySessionManager);
    v84 = sub_100159E00(v83, *(a1 + 328), v140);

    v85 = [NEPolicyCondition flowIPProtocol:6];
    v86 = [NEPolicy alloc];
    v155 = v148;
    v87 = [NSArray arrayWithObjects:&v155 count:1];
    v88 = [NEPolicyResult routeRules:v87];
    v154[0] = v150;
    v154[1] = v85;
    v142 = v85;
    v89 = [NSArray arrayWithObjects:v154 count:2];
    v90 = [v86 initWithOrder:610 result:v88 conditions:v89];

    v91 = sub_1001599CC(NRDPolicySessionManager);
    v92 = sub_100159E00(v91, *(a1 + 328), v90);

    v93 = _NRCopyLogObjectForNRUUID();
    v94 = _NRLogIsLevelEnabled();

    if (v94)
    {
      v95 = _NRCopyLogObjectForNRUUID();
      _NRLogWithArgs(v95, 0, "%s%.30s:%-4d %@: installed flow divert policies", "", "[NRDDeviceConductor updateFlowDivertPoliciesIfNeeded]", 5188, a1);
    }

    v37 = v151;
    goto LABEL_41;
  }

LABEL_88:
}