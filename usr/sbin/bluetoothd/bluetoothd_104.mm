uint64_t sub_10077BCE0(uint64_t a1)
{
  v76 = 0;
  v74 = 0u;
  v75 = 0u;
  v72 = 0u;
  v73 = 0u;
  v70 = 0u;
  v71 = 0u;
  v68 = 0u;
  v69 = 0u;
  v67 = 0u;
  v65 = 0u;
  v66 = 0u;
  *v64 = 0u;
  memset(v63, 0, sizeof(v63));
  v62 = 0u;
  sub_100008760(&v62);
  *(&v63[-1] + *(v62 - 24) + 8) |= 4u;
  if (*(a1 + 64))
  {
    v2 = sub_100007774(&v62, ", FindMyBeaconID: ", 18);
    v3 = [*(a1 + 64) beaconIdentifier];
    v4 = [v3 UUIDString];
    v5 = [v4 UTF8String];
    v6 = v5;
    v7 = strlen(v5);
    v8 = sub_100007774(v2, v6, v7);
    v9 = sub_100007774(v8, " updated:", 9);
    sub_100773740((a1 + 40));
    if ((v61 & 0x80u) == 0)
    {
      p_p = &__p;
    }

    else
    {
      LODWORD(p_p) = __p;
    }

    if ((v61 & 0x80u) == 0)
    {
      v11 = v61;
    }

    else
    {
      v11 = v60;
    }

    sub_100007774(v9, p_p, v11);
    if (v61 < 0)
    {
      operator delete(__p);
    }

    v12 = sub_100007774(&v62, ", FindMyUserID: ", 16);
    v13 = [*(a1 + 64) userIdentifier];
    v14 = [v13 UUIDString];
    v15 = [v14 UTF8String];
    v16 = v15;
    v17 = strlen(v15);
    v18 = sub_100007774(v12, v16, v17);
    v19 = sub_100007774(v18, " updated:", 9);
    v20 = &__p;
    sub_100773740((a1 + 40));
    if ((v61 & 0x80u) == 0)
    {
      v21 = &__p;
    }

    else
    {
      LODWORD(v21) = __p;
    }

    if ((v61 & 0x80u) == 0)
    {
      v22 = v61;
    }

    else
    {
      v22 = v60;
    }

    sub_100007774(v19, v21, v22);
    if (v61 < 0)
    {
      operator delete(__p);
    }

    v23 = sub_100007774(&v62, " FindMyGroupID:", 15);
    v24 = [*(a1 + 64) groupIdentifier];
    if (v24)
    {
      v14 = [*(a1 + 64) groupIdentifier];
      v20 = [v14 UUIDString];
      v25 = [v20 UTF8String];
    }

    else
    {
      v25 = "NONE";
    }

    v26 = strlen(v25);
    sub_100007774(v23, v25, v26);
    if (v24)
    {
    }

    sub_100007774(&v62, " fFindMyPartID:", 15);
    [*(a1 + 64) partIdentifier];
    std::ostream::operator<<();
    v27 = sub_100007774(&v62, " fFindMySerialNumber:", 21);
    v28 = [*(a1 + 64) serialNumber];
    v29 = [NSString stringWithFormat:@"%@", v28];
    v30 = [v29 UTF8String];
    v31 = v30;
    v32 = strlen(v30);
    sub_100007774(v27, v31, v32);

    v33 = sub_100007774(&v62, " keys:", 6);
    v34 = [*(a1 + 64) longTermKeyMap];
    v35 = [NSString stringWithFormat:@"%@", v34];
    v36 = [v35 UTF8String];
    v37 = v36;
    v38 = strlen(v36);
    sub_100007774(v33, v37, v38);

    v39 = sub_100007774(&v62, " sessions:", 10);
    v40 = [*(a1 + 64) allowedSessions];
    v41 = [NSString stringWithFormat:@"%@", v40];
    v42 = [v41 UTF8String];
    v43 = v42;
    v44 = strlen(v42);
    sub_100007774(v39, v43, v44);

    v45 = sub_100007774(&v62, " Valid LTKs:", 12);
    v46 = [NSString stringWithFormat:@"%@", *(a1 + 72)];
    v47 = [v46 UTF8String];
    LODWORD(v41) = v47;
    v48 = strlen(v47);
    sub_100007774(v45, v41, v48);

    v49 = sub_100007774(&v62, " Last used Address/LTK:", 23);
    v50 = [NSString stringWithFormat:@"%@", *(a1 + 80)];
    v51 = [v50 UTF8String];
    LODWORD(v41) = v51;
    v52 = strlen(v51);
    v53 = sub_100007774(v49, v41, v52);
    v54 = sub_100007774(v53, "/", 1);
    v55 = [NSString stringWithFormat:@"%@", *(a1 + 88)];
    v56 = [v55 UTF8String];
    LODWORD(v41) = v56;
    v57 = strlen(v56);
    sub_100007774(v54, v41, v57);
  }

  std::stringbuf::str();
  if (SHIBYTE(v65) < 0)
  {
    operator delete(v64[1]);
  }

  std::locale::~locale(v63);
  std::ostream::~ostream();
  return std::ios::~ios();
}

id sub_10077C3B8(uint64_t a1, void *a2)
{
  v3 = a2;
  if (v3)
  {
    v4 = *(a1 + 512);
    if (v4)
    {
      v5 = [v4 objectForKey:v3];
      goto LABEL_7;
    }
  }

  else if (os_log_type_enabled(qword_100BCE900, OS_LOG_TYPE_ERROR))
  {
    sub_1008725E0();
  }

  v5 = 0;
LABEL_7:

  return v5;
}

uint64_t sub_10077C454(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  if (!v5 || [v5 length] >= 0x401)
  {
    if (os_log_type_enabled(qword_100BCE900, OS_LOG_TYPE_ERROR))
    {
      sub_1008725E0();
    }

LABEL_5:
    v7 = 0;
    goto LABEL_6;
  }

  if ([v6 length] >= 0x401)
  {
    if (os_log_type_enabled(qword_100BCE900, OS_LOG_TYPE_ERROR))
    {
      sub_1008726CC();
    }

    goto LABEL_5;
  }

  if (!*(a1 + 512))
  {
    v9 = objc_opt_new();
    v10 = *(a1 + 512);
    *(a1 + 512) = v9;
  }

  if (_os_feature_enabled_impl() && [v5 isEqualToString:@"ASK_DISPLAY_NAME"])
  {
    sub_100007E30(__p, "DA_ASK_RETAIN_DEVICE");
    v11 = sub_1000463C8(a1 + 176, __p);
    if (v36 < 0)
    {
      operator delete(__p[0]);
    }

    v12 = *(a1 + 160);
    sub_100007E30(v33, "_CTKD_");
    v13 = a1 + 184;
    v14 = a1 + 184 != sub_1000463C8(a1 + 176, v33);
    if (v34 < 0)
    {
      operator delete(v33[0]);
    }

    v15 = v6;
    v16 = sub_10077C3B8(a1, @"ASK_LINKED_RADIO_ADDRESS");
    v17 = v14 & v12;
    v18 = qword_100BCE900;
    v19 = os_log_type_enabled(qword_100BCE900, OS_LOG_TYPE_DEFAULT);
    if (v19)
    {
      *buf = 138413570;
      v38 = v5;
      v39 = 1024;
      v40 = v17;
      v41 = 1024;
      v42 = v13 != v11;
      v43 = 1024;
      v44 = v12;
      v45 = 1024;
      v46 = v16 != 0;
      v47 = 2112;
      v48 = v15;
      _os_log_impl(&_mh_execute_header, v18, OS_LOG_TYPE_DEFAULT, "setCustomProperty %@ ctkd:%d ASK:%d isPaired:%d isTransportLinked:%d askName:%@", buf, 0x2Eu);
    }

    if (v16)
    {
      v21 = 1;
    }

    else
    {
      v21 = v17;
    }

    if (v21 != 1 || v13 == v11)
    {
      goto LABEL_35;
    }

    if (v17)
    {
      v22 = *(a1 + 24);
    }

    else
    {
      if (!v16)
      {
        if (os_log_type_enabled(qword_100BCE900, OS_LOG_TYPE_FAULT))
        {
          sub_10087261C();
        }

        goto LABEL_33;
      }

      v19 = sub_100777FF4(v16);
      v22 = v19;
    }

    if (v22)
    {
      v23 = sub_100017F4C(v19, v20);
      v27 = _NSConcreteStackBlock;
      v28 = 3221225472;
      v29 = sub_10077C8A4;
      v30 = &unk_100AE1200;
      v32 = v22;
      v31 = v15;
      sub_10000CA94(v23, &v27);

LABEL_35:
      goto LABEL_36;
    }

LABEL_33:
    if (os_log_type_enabled(qword_100BCE900, OS_LOG_TYPE_ERROR))
    {
      sub_10087265C();
    }

    goto LABEL_35;
  }

LABEL_36:
  v24 = [*(a1 + 512) objectForKey:{v5, v27, v28, v29, v30}];
  v25 = [v24 isEqualToString:v6];
  if ((v25 & 1) == 0)
  {
    v26 = *(a1 + 512);
    if (v6)
    {
      [v26 setObject:v6 forKey:v5];
    }

    else
    {
      [v26 removeObjectForKey:v5];
    }
  }

  v7 = v25 ^ 1;
LABEL_6:

  return v7;
}

void sub_10077C8A4(uint64_t a1)
{
  if (qword_100B508F0 != -1)
  {
    sub_100872750();
  }

  v2 = sub_1000504C8(off_100B508E8, *(a1 + 40), 1);
  if (v2)
  {
    v3 = v2;
    __p[0] = 0;
    __p[1] = 0;
    v8 = 0;
    v4 = *(a1 + 32);
    if (v4 && [v4 length])
    {
      v5 = [*(a1 + 32) UTF8String];
    }

    else
    {
      v5 = "";
    }

    sub_100007E30(__p, v5);
    sub_100538D30(v3, __p, 0);
    if (SHIBYTE(v8) < 0)
    {
      operator delete(__p[0]);
    }
  }

  else
  {
    v6 = qword_100BCE900;
    if (os_log_type_enabled(qword_100BCE900, OS_LOG_TYPE_ERROR))
    {
      sub_100872764((a1 + 40), v6);
    }
  }
}

void sub_10077C998(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void *sub_10077C9B4(uint64_t **a1, const void **a2, uint64_t a3)
{
  v4 = 0;
  result = *sub_1000867EC(a1, &v4, a2);
  if (!result)
  {
    sub_1000629E8();
  }

  return result;
}

id sub_10077CBE0(void *a1)
{
  v1 = [a1 pathComponents];
  if ([v1 count] < 2)
  {
    v2 = 0;
  }

  else
  {
    v2 = [v1 objectAtIndexedSubscript:{objc_msgSend(v1, "count") - 2}];
  }

  return v2;
}

BOOL sub_10077CC60(uint64_t a1, void *a2)
{
  v2 = a2;
  v10 = 0;
  v11 = &v10;
  v12 = 0x2050000000;
  v3 = qword_100BC7B38;
  v13 = qword_100BC7B38;
  if (!qword_100BC7B38)
  {
    *buf = _NSConcreteStackBlock;
    *&buf[8] = 3221225472;
    *&buf[16] = sub_10077D038;
    v15 = &unk_100AE1120;
    v16 = &v10;
    sub_10077D038(buf);
    v3 = v11[3];
  }

  v4 = v3;
  _Block_object_dispose(&v10, 8);
  v5 = [v3 alloc];
  v6 = [v5 initWithRestoreVersion:{v2, v10}];
  v7 = qword_100BCE968;
  if (os_log_type_enabled(qword_100BCE968, OS_LOG_TYPE_DEFAULT))
  {
    v8 = @"NO";
    *buf = 138412802;
    *&buf[4] = v6;
    *&buf[12] = 2112;
    if (v6)
    {
      v8 = @"YES";
    }

    *&buf[14] = v2;
    *&buf[22] = 2112;
    v15 = v8;
    _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "MAFetch: RestoreVersion %@ AssetVersion: %@ valid: %@", buf, 0x20u);
  }

  return v6 != 0;
}

void sub_10077CDF4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  _Block_object_dispose(&a9, 8);

  _Unwind_Resume(a1);
}

uint64_t sub_10077CE20(uint64_t a1, void *a2, void *a3, void *a4, void *a5, void *a6)
{
  v11 = a2;
  v12 = a3;
  v13 = a4;
  v14 = a5;
  v15 = a6;
  if (v15)
  {
    v16 = [v11 copy];
    v17 = *(a1 + 48);
    *(a1 + 48) = v16;

    v18 = [v14 copy];
    v19 = *a1;
    *a1 = v18;

    v20 = sub_10077CBE0(v14);
    v21 = *(a1 + 24);
    *(a1 + 24) = v20;

    v22 = [v12 copy];
    v23 = *(a1 + 40);
    *(a1 + 40) = v22;

    v24 = [v15 copy];
    v25 = *(a1 + 56);
    *(a1 + 56) = v24;

    if (sub_10077CC60(v26, v13))
    {
      v27 = [v13 copy];
      v28 = *(a1 + 32);
      *(a1 + 32) = v27;

      v29 = qword_100BCE968;
      v30 = 0;
      if (os_log_type_enabled(qword_100BCE968, OS_LOG_TYPE_DEFAULT))
      {
        v31 = *(a1 + 32);
        v32 = *(a1 + 48);
        v35 = 138412546;
        v36 = v31;
        v37 = 2112;
        v38 = v32;
        _os_log_impl(&_mh_execute_header, v29, OS_LOG_TYPE_DEFAULT, "MAFetch: Valid assetversion %@ available for assetType %@", &v35, 0x16u);
        v30 = 0;
      }
    }

    else
    {
      v33 = qword_100BCE968;
      if (os_log_type_enabled(qword_100BCE968, OS_LOG_TYPE_ERROR))
      {
        sub_100872820(v33);
      }

      v30 = 1;
    }
  }

  else
  {
    sub_100872864(&v35);
    v30 = v35;
  }

  return v30;
}

Class sub_10077D038(uint64_t a1)
{
  if (!qword_100BC7B40)
  {
    qword_100BC7B40 = _sl_dlopen();
  }

  result = objc_getClass("SUCoreRestoreVersion");
  *(*(*(a1 + 32) + 8) + 24) = result;
  qword_100BC7B38 = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

uint64_t sub_10077D138(uint64_t a1)
{
  result = _sl_dlopen();
  qword_100BC7B40 = result;
  return result;
}

uint64_t sub_10077D1AC(uint64_t a1)
{
  v2 = MGCopyAnswer();
  v3 = [*(a1 + 56) objectForKey:@"BTPowerTableAssetSKU"];
  v4 = v3;
  if (!v3 || ![v3 count])
  {
    v24 = qword_100BCE968;
    if (os_log_type_enabled(qword_100BCE968, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      v25 = "MAFetch: SKU Optimization not defined in Asset Metadata, Skip local SKU check";
LABEL_30:
      _os_log_impl(&_mh_execute_header, v24, OS_LOG_TYPE_DEFAULT, v25, buf, 2u);
    }

LABEL_31:
    v5 = 0;
LABEL_32:
    v23 = 1;
    goto LABEL_33;
  }

  if (!v2 || [v2 length] != 16)
  {
    v24 = qword_100BCE968;
    if (os_log_type_enabled(qword_100BCE968, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      v25 = "MAFetch: SKU not configured or failure to read for Local Device";
      goto LABEL_30;
    }

    goto LABEL_31;
  }

  v5 = [v2 subdataWithRange:{8, 8}];
  v6 = qword_100BCE968;
  if (os_log_type_enabled(qword_100BCE968, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412546;
    v36 = v2;
    v37 = 2112;
    v38 = v5;
    _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "MAFetch: QueriedSkuData %@ deviceSkuData %@", buf, 0x16u);
  }

  if (!v5 || ![v5 length])
  {
    v27 = qword_100BCE968;
    if (os_log_type_enabled(qword_100BCE968, OS_LOG_TYPE_ERROR))
    {
      sub_100872914(v2, buf, [v2 length], v27);
    }

    goto LABEL_32;
  }

  v28 = MGCopyAnswer();
  v29 = [v4 objectForKey:?];
  v7 = [[NSString alloc] initWithData:v5 encoding:4];
  if (v7 && v29 && [v29 count])
  {
    v8 = v7;
    v9 = [v7 UTF8String];
    v32 = 0u;
    v33 = 0u;
    v30 = 0u;
    v31 = 0u;
    v10 = v29;
    v11 = [v10 countByEnumeratingWithState:&v30 objects:v34 count:16];
    if (v11)
    {
      v12 = *v31;
      while (2)
      {
        for (i = 0; i != v11; i = i + 1)
        {
          if (*v31 != v12)
          {
            objc_enumerationMutation(v10);
          }

          v14 = [*(*(&v30 + 1) + 8 * i) UTF8String];
          if (v9 && v14 && !strcmp(v14, v9))
          {

            goto LABEL_32;
          }
        }

        v11 = [v10 countByEnumeratingWithState:&v30 objects:v34 count:16];
        if (v11)
        {
          continue;
        }

        break;
      }
    }
  }

  v15 = qword_100BCE968;
  if (os_log_type_enabled(qword_100BCE968, OS_LOG_TYPE_ERROR))
  {
    sub_1008728DC(v15, v16, v17, v18, v19, v20, v21, v22);
  }

  v23 = 0;
LABEL_33:

  return v23;
}

BOOL sub_10077D5B0(uint64_t a1)
{
  v2 = +[NSFileManager defaultManager];
  v3 = [NSURL fileURLWithPath:@"/private/var/db/ConnectivityPowerTableUpdates/BT/"];
  v4 = *(a1 + 40);
  if (!v4 || ([v4 containsString:@"PowerTable"] & 1) == 0)
  {
    v10 = qword_100BCE968;
    if (os_log_type_enabled(qword_100BCE968, OS_LOG_TYPE_ERROR))
    {
      v40 = *(a1 + 40);
      v41 = *(a1 + 48);
      *buf = 138412802;
      v64 = v40;
      v65 = 2112;
      v66 = v41;
      v67 = 1024;
      LODWORD(v68) = [v40 isEqualToString:@"PowerTable"];
      _os_log_error_impl(&_mh_execute_header, v10, OS_LOG_TYPE_ERROR, "MAFetch: PTB Asset %@ not there in AssetType %@ %d", buf, 0x1Cu);
    }

    goto LABEL_14;
  }

  if ((sub_10077D1AC(a1) & 1) == 0)
  {
    v14 = qword_100BCE968;
    if (os_log_type_enabled(qword_100BCE968, OS_LOG_TYPE_ERROR))
    {
      sub_10087296C(v14, v15, v16, v17, v18, v19, v20, v21);
    }

LABEL_14:
    v11 = 0;
    v12 = 0;
    goto LABEL_15;
  }

  v52 = MGCopyAnswer();
  v56 = [*(a1 + 56) objectForKey:@"_OSRestoreVersionCompatibilities"];
  v54 = [*(a1 + 56) objectForKey:@"_OSVersionCompatibilities"];
  v50 = [v56 objectForKey:v52];
  v51 = [v54 objectForKey:v52];
  if (!v56 || ![v56 count] || !v54 || !objc_msgSend(v54, "count"))
  {
    v22 = qword_100BCE968;
    if (os_log_type_enabled(qword_100BCE968, OS_LOG_TYPE_ERROR))
    {
      sub_100872AE8(v56 == 0, v22);
    }

    v9 = 0;
    v55 = 0;
    v53 = 0;
    v57 = 0;
    v8 = 0;
    v7 = 0;
    goto LABEL_21;
  }

  v53 = [v51 objectForKey:@"_MinOSVersion"];
  v55 = [v51 objectForKey:@"_MaxOSVersion"];
  v5 = [v50 objectForKey:@"_MinOSRestoreVersion"];
  v57 = [v50 objectForKey:@"_MaxOSRestoreVersion"];
  v6 = sub_10077E014();
  v7 = v6;
  if (!v6 || ([v6 isEqual:*(a1 + 32)] & 1) == 0)
  {
    v24 = qword_100BCE968;
    if (os_log_type_enabled(qword_100BCE968, OS_LOG_TYPE_DEFAULT))
    {
      v25 = *(a1 + 32);
      *buf = 138412546;
      v64 = v7;
      v65 = 2112;
      v66 = v25;
      _os_log_impl(&_mh_execute_header, v24, OS_LOG_TYPE_DEFAULT, "MAFetch: Newer PTB Asset version currentPtbAssetVersion %@ > Assetversion %@ ", buf, 0x16u);
    }

    v60 = 0;
    v26 = [v2 createDirectoryAtURL:v3 withIntermediateDirectories:1 attributes:0 error:&v60];
    v27 = v60;
    v28 = qword_100BCE968;
    if (v26)
    {
      if (os_log_type_enabled(qword_100BCE968, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 138412290;
        v64 = v3;
        _os_log_impl(&_mh_execute_header, v28, OS_LOG_TYPE_DEFAULT, "MAFetch: Successfully created PTB asset download folder %@", buf, 0xCu);
      }

      v29 = *(a1 + 24);
      v69[0] = @"/private/var/db/ConnectivityPowerTableUpdates/BT/";
      v69[1] = v29;
      v30 = [NSArray arrayWithObjects:v69 count:2];
      v23 = [NSURL fileURLWithPathComponents:v30];

      v8 = v5;
      if (*a1 && v23)
      {
        v59[1] = v27;
        v31 = [v2 copyItemAtURL:? toURL:? error:?];
        v11 = v27;

        v8 = v5;
        if (v31)
        {
          v32 = qword_100BCE968;
          if (os_log_type_enabled(qword_100BCE968, OS_LOG_TYPE_DEFAULT))
          {
            v33 = *a1;
            *buf = 138412546;
            v64 = v33;
            v65 = 2112;
            v66 = v23;
            _os_log_impl(&_mh_execute_header, v32, OS_LOG_TYPE_DEFAULT, "MAFetch: Successfully Copied Asset files from src %@ to Local sandboxed Path %@", buf, 0x16u);
          }

          v34 = objc_alloc_init(NSMutableDictionary);
          v35 = v34;
          v49 = v34;
          if (v53 && v55)
          {
            [v34 setObject:v5 forKey:@"_MinOSRestoreVersion"];
            [v35 setObject:v57 forKey:@"_MaxOSRestoreVersion"];
          }

          [v35 setObject:v53 forKey:@"_MinOSVersion"];
          [v35 setObject:v55 forKey:@"_MaxOSVersion"];
          [v35 setObject:*(a1 + 32) forKey:@"assetVersion"];
          [v23 URLByAppendingPathComponent:@"Info.plist"];
          v48 = v59[0] = v11;
          v36 = [v35 writeToURL:v48 error:v59];
          v37 = v59[0];

          v11 = v37;
          v38 = qword_100BCE968;
          if (v36)
          {
            if (os_log_type_enabled(qword_100BCE968, OS_LOG_TYPE_DEFAULT))
            {
              *buf = 0;
              _os_log_impl(&_mh_execute_header, v38, OS_LOG_TYPE_DEFAULT, "MAFetch: Success to create Info.plist for newly downloaded Asset", buf, 2u);
            }

            v58 = 0;
            v39 = sub_10077E164(a1, &v58);
            v9 = v58;

            v11 = v39;
            sub_10077E380(a1, v9);
          }

          else
          {
            if (os_log_type_enabled(qword_100BCE968, OS_LOG_TYPE_ERROR))
            {
              v45 = [v11 localizedDescription];
              sub_100872A94(v45, buf);
            }

            v9 = 0;
          }

          goto LABEL_52;
        }
      }

      else
      {
        v11 = v27;
      }

      v43 = qword_100BCE968;
      if (os_log_type_enabled(qword_100BCE968, OS_LOG_TYPE_DEFAULT))
      {
        v44 = *a1;
        *buf = 138412802;
        v64 = v44;
        v65 = 2112;
        v66 = v23;
        v67 = 2112;
        v68 = v11;
        _os_log_impl(&_mh_execute_header, v43, OS_LOG_TYPE_DEFAULT, "MAFetch: Failed to Copy Asset files from src %@ to Local sandboxed Path %@ with error %@", buf, 0x20u);
      }

      v9 = 0;
      goto LABEL_52;
    }

    if (os_log_type_enabled(qword_100BCE968, OS_LOG_TYPE_ERROR))
    {
      v8 = v5;
      v42 = [v27 localizedDescription];
      sub_100872A2C(v3, v42, buf, v28);
      v9 = 0;
      v23 = 0;
      v11 = v27;
      goto LABEL_52;
    }

    v9 = 0;
    v23 = 0;
    v11 = v27;
LABEL_47:
    v8 = v5;
    goto LABEL_52;
  }

  if (!os_log_type_enabled(qword_100BCE968, OS_LOG_TYPE_ERROR))
  {
    v9 = 0;
    v23 = 0;
    v11 = 0;
    goto LABEL_47;
  }

  sub_1008729A4();
  v8 = v5;
  v9 = 0;
LABEL_21:
  v23 = 0;
  v11 = 0;
LABEL_52:
  v46 = qword_100BCE968;
  if (os_log_type_enabled(qword_100BCE968, OS_LOG_TYPE_DEFAULT))
  {
    if (v11)
    {
      v47 = [v11 localizedDescription];
    }

    else
    {
      v47 = @"No Error";
    }

    *v61 = 138412290;
    v62 = v47;
    _os_log_impl(&_mh_execute_header, v46, OS_LOG_TYPE_DEFAULT, "MAFetch: Initialized PTB Asset return with error %@", v61, 0xCu);
    if (v11)
    {
    }
  }

  v12 = v11 == 0;

LABEL_15:
  return v12;
}

id sub_10077E014()
{
  v13[0] = @"/private/var/db/ConnectivityPowerTableUpdates/BT/";
  v13[1] = @"Latest.plist";
  v0 = [NSArray arrayWithObjects:v13 count:2];
  v1 = [NSURL fileURLWithPathComponents:v0];

  if (v1)
  {
    v2 = [[NSMutableDictionary alloc] initWithContentsOfURL:v1];
    v3 = [v2 objectForKey:@"assetVersion"];
  }

  else
  {
    v4 = qword_100BCE968;
    if (os_log_type_enabled(qword_100BCE968, OS_LOG_TYPE_ERROR))
    {
      sub_100872B78(v4, v5, v6, v7, v8, v9, v10, v11);
    }

    v3 = 0;
  }

  return v3;
}

id sub_10077E164(uint64_t a1, void *a2)
{
  v14[0] = @"/private/var/db/ConnectivityPowerTableUpdates/BT/";
  v14[1] = @"Latest.plist";
  v4 = [NSArray arrayWithObjects:v14 count:2];
  v5 = [NSURL fileURLWithPathComponents:v4];

  v6 = [[NSMutableDictionary alloc] initWithContentsOfURL:v5];
  if (!v6)
  {
    v6 = objc_alloc_init(NSMutableDictionary);
  }

  *a2 = [v6 objectForKey:@"latestAssetSubDir"];
  v7 = [v6 objectForKey:@"assetVersion"];
  [v6 setObject:*(a1 + 24) forKey:@"latestAssetSubDir"];
  [v6 setObject:*(a1 + 32) forKey:@"assetVersion"];
  v12 = 0;
  v8 = [v6 writeToURL:v5 error:&v12];
  v9 = v12;
  if ((v8 & 1) == 0 && os_log_type_enabled(qword_100BCE968, OS_LOG_TYPE_ERROR))
  {
    v10 = [v9 localizedDescription];
    sub_100872BB0(v10, v13);
  }

  return v9;
}

void sub_10077E380(uint64_t a1, void *a2)
{
  v20 = a2;
  v22 = [NSURL fileURLWithPath:@"/private/var/db/ConnectivityPowerTableUpdates/BT/"];
  v3 = +[NSFileManager defaultManager];
  v28 = 0;
  v21 = [v3 contentsOfDirectoryAtURL:v22 includingPropertiesForKeys:0 options:5 error:&v28];
  v4 = v28;

  if (v4)
  {
    if (os_log_type_enabled(qword_100BCE968, OS_LOG_TYPE_ERROR))
    {
      sub_100872C04();
    }
  }

  else
  {
    v5 = [NSMutableArray alloc];
    v6 = *(a1 + 24);
    v34[0] = @"Latest.plist";
    v34[1] = v6;
    v7 = [NSArray arrayWithObjects:v34 count:2];
    v8 = [v5 initWithArray:v7];

    if (v20)
    {
      [v8 addObject:?];
    }

    v26 = 0u;
    v27 = 0u;
    v24 = 0u;
    v25 = 0u;
    v9 = v21;
    v4 = 0;
    v10 = [v9 countByEnumeratingWithState:&v24 objects:v33 count:16];
    if (v10)
    {
      v11 = *v25;
      do
      {
        for (i = 0; i != v10; i = i + 1)
        {
          if (*v25 != v11)
          {
            objc_enumerationMutation(v9);
          }

          v13 = *(*(&v24 + 1) + 8 * i);
          v14 = [v13 lastPathComponent];
          v15 = [v8 containsObject:v14];

          if ((v15 & 1) == 0)
          {
            v16 = +[NSFileManager defaultManager];
            v23 = v4;
            v17 = [v16 removeItemAtURL:v13 error:&v23];
            v18 = v23;

            if ((v17 & 1) == 0)
            {
              v19 = qword_100BCE968;
              if (os_log_type_enabled(qword_100BCE968, OS_LOG_TYPE_ERROR))
              {
                *buf = 138412546;
                v30 = v13;
                v31 = 2112;
                v32 = v18;
                _os_log_error_impl(&_mh_execute_header, v19, OS_LOG_TYPE_ERROR, "MAFetch: Failed to remove sub-dir %@ with error: %@", buf, 0x16u);
              }
            }

            v4 = v18;
          }
        }

        v10 = [v9 countByEnumeratingWithState:&v24 objects:v33 count:16];
      }

      while (v10);
    }
  }
}

_OWORD *sub_10077E718(_OWORD *a1)
{
  a1[2] = 0u;
  a1[3] = 0u;
  *a1 = 0u;
  a1[1] = 0u;
  v2 = qword_100BCE968;
  if (os_log_type_enabled(qword_100BCE968, OS_LOG_TYPE_DEFAULT))
  {
    *v4 = 0;
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEFAULT, "MAFetch: Initialize BTPtbAsset: ", v4, 2u);
  }

  return a1;
}

uint64_t sub_10077E798(uint64_t a1, void *a2, uint64_t a3)
{
  v5 = a2;
  sub_1003A1C64(a1, 1818583905);
  *a1 = &off_100B0C0E0;
  *(a1 + 400) = a3;
  v6 = v5;
  *(a1 + 408) = v6;
  *(a1 + 416) = 0;
  *(a1 + 488) = 0;
  *(a1 + 496) = 0;
  *(a1 + 480) = 0;
  sub_10077E860(a1, (a1 + 480));

  return a1;
}

void sub_10077E828(_Unwind_Exception *a1)
{
  v4 = *(v2 + 480);
  if (v4)
  {
    *(v2 + 488) = v4;
    operator delete(v4);
  }

  sub_1003A1D74(v2);
  _Unwind_Resume(a1);
}

void sub_10077E860(uint64_t a1, char **a2)
{
  if (*(a1 + 480) == *(a1 + 488))
  {
    v3 = (a1 + 480);
    if ((a1 + 480) != a2)
    {
      sub_1003A5C5C(v3, *a2, a2[1], (a2[1] - *a2) >> 2);
    }
  }

  else
  {
    __p = 0;
    v9 = 0;
    v10 = 0;
    sub_1003A5D88(&__p, a2);
    if (__p)
    {
      v9 = __p;
      operator delete(__p);
    }
  }

  Mutable = CFArrayCreateMutable(kCFAllocatorDefault, (*(a1 + 488) - *(a1 + 480)) >> 2, &kCFTypeArrayCallBacks);
  v5 = *(a1 + 480);
  while (v5 != *(a1 + 488))
  {
    v6 = *v5++;
    LODWORD(__p) = v6;
    v7 = CFNumberCreate(kCFAllocatorDefault, kCFNumberSInt64Type, &__p);
    CFArrayAppendValue(Mutable, v7);
    CFRelease(v7);
  }

  sub_1003A3724(a1, "kBTAudioMsgPropertySupportedCodecs", Mutable);
  CFRelease(Mutable);
}

uint64_t sub_10077E978(uint64_t a1)
{
  *a1 = &off_100B0C0E0;
  v2 = *(a1 + 480);
  if (v2)
  {
    *(a1 + 488) = v2;
    operator delete(v2);
  }

  return sub_1003A1D74(a1);
}

void sub_10077E9E4(uint64_t a1)
{
  sub_10077E978(a1);

  operator delete();
}

void sub_10077EA30(uint64_t a1, uint64_t a2, CFNumberRef number)
{
  if (a2 == 10)
  {
    v4 = 0;
    if (CFNumberGetValue(number, kCFNumberIntType, &v4))
    {
      (*(**(a1 + 400) + 48))(*(a1 + 400), a1, v4);
    }
  }

  else if (a2 == 9)
  {
    valuePtr = 0;
    if (CFNumberGetValue(number, kCFNumberIntType, &valuePtr))
    {
      (*(**(a1 + 400) + 40))(*(a1 + 400), a1, valuePtr);
    }
  }

  else
  {

    sub_1003A48A8(a1, a2);
  }
}

uint64_t sub_10077EB2C(uint64_t a1)
{
  result = (***(a1 + 400))(*(a1 + 400), a1);
  *(a1 + 416) = 1;
  return result;
}

void sub_10077ED90(id a1)
{
  v1 = objc_alloc_init(ContactTracingDaemonBridge);
  v2 = qword_100BC7B48;
  qword_100BC7B48 = v1;
}

void sub_10077F0D4(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, atomic_uint *a10)
{
  if (a10)
  {
    sub_10000C808(a10);
  }

  _Unwind_Resume(exception_object);
}

void sub_10077F4DC(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_10077F6C8(uint64_t a1, void *a2)
{
  v5 = a2;
  pthread_mutex_lock(&stru_100B54F48);
  v3 = [v5 copy];
  v4 = *(a1 + 16);
  *(a1 + 16) = v3;

  if (qword_100B512C8 != -1)
  {
    sub_100872CEC();
  }

  sub_10036EF4C(off_100B512C0 + 80, a1);
  pthread_mutex_unlock(&stru_100B54F48);
}

uint64_t sub_10077F7A0(uint64_t a1)
{
  pthread_mutex_lock(&stru_100B54F48);
  v2 = *(a1 + 16);
  *(a1 + 16) = 0;

  if (qword_100B512C8 != -1)
  {
    sub_100872CEC();
  }

  sub_10007A3F0(off_100B512C0 + 80, a1);

  return pthread_mutex_unlock(&stru_100B54F48);
}

void sub_10077FA44(uint64_t a1, void *a2)
{
  v4 = a2;
  pthread_mutex_lock(&stru_100B54F48);
  objc_storeStrong((a1 + 8), a2);
  pthread_mutex_unlock(&stru_100B54F48);
}

uint64_t sub_10077FB08(uint64_t a1)
{
  pthread_mutex_lock(&stru_100B54F48);
  v2 = *(a1 + 8);
  if (v2)
  {
    v3 = objc_retainBlock(*(a1 + 16));
    if (v3)
    {
      dispatch_async(v2, v3);
    }
  }

  return pthread_mutex_unlock(&stru_100B54F48);
}

void sub_10077FC24(_Unwind_Exception *a1)
{
  v4 = *v3;
  if (*v3)
  {
    *(v1 + 48) = v4;
    operator delete(v4);
  }

  sub_1003C95E8(v2, *(v1 + 16));

  operator delete();
}

uint64_t sub_10077FE04(uint64_t a1)
{
  v2 = sub_100589578(a1, "GATTService", 0x100000);
  *v2 = &off_100B0C2D8;
  v2[41] = 0;
  if (qword_100B54790 != -1)
  {
    sub_100872D00();
  }

  v3 = qword_100B54788;
  *(a1 + 328) = qword_100B54788;
  sub_100589880(a1, v3);
  return a1;
}

void sub_10077FEA0(uint64_t a1)
{
  sub_100589670(a1);

  operator delete();
}

uint64_t sub_10077FED8(uint64_t a1)
{
  v2 = qword_100BCE910;
  if (os_log_type_enabled(qword_100BCE910, OS_LOG_TYPE_DEFAULT))
  {
    *v4 = 0;
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEFAULT, "GATTService start", v4, 2u);
  }

  return sub_100589A28(a1);
}

uint64_t sub_10077FF4C(uint64_t a1)
{
  v2 = qword_100BCE910;
  if (os_log_type_enabled(qword_100BCE910, OS_LOG_TYPE_DEFAULT))
  {
    *v4 = 0;
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEFAULT, "GATTService stop", v4, 2u);
  }

  return sub_100589D2C(a1);
}

BOOL sub_10077FFC0(uint64_t a1, unsigned __int8 *a2)
{
  if (qword_100B50F78 != -1)
  {
    sub_100872D14();
  }

  if (sub_100580844(qword_100B50F70, a2))
  {
    v4 = qword_100BCE910;
    if (os_log_type_enabled(qword_100BCE910, OS_LOG_TYPE_DEFAULT))
    {
      sub_1000E5A58(a2, __p);
      if (v8 >= 0)
      {
        v5 = __p;
      }

      else
      {
        v5 = __p[0];
      }

      *buf = 136446210;
      v10 = v5;
      _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "Rejecting GATT connection because device %{public}s is already connected over GATT", buf, 0xCu);
      if (v8 < 0)
      {
        operator delete(__p[0]);
      }
    }

    return 0;
  }

  else
  {

    return sub_10058AD94(a1, a2);
  }
}

uint64_t sub_10078011C(uint64_t a1, uint64_t a2)
{
  v12 = xmmword_1008A9EA0;
  memset(v14, 0, sizeof(v14));
  v11 = 0;
  v10 = 0;
  if (sub_10053C3E8(a2))
  {
    if (sub_10053A020(a2, &v12, 4u))
    {
      v4 = 4;
    }

    else
    {
      v4 = 0;
    }
  }

  else
  {
    v5 = sub_10054BE34(a2, v14, &v11);
    if (v11)
    {
      v6 = v5;
    }

    else
    {
      v6 = 0;
    }

    if (v6)
    {
      v4 = 4 * (sub_10024A9C0(v14, 6145, &v10) == 0);
    }

    else
    {
      v4 = 0;
    }
  }

  if (sub_10053C3E8(a2) && sub_1000E2140(a2, 0x17u))
  {
    v4 = 4;
  }

  v7 = *(a1 + 32);
  v13 = 0;
  sub_100016250(&v13);
  *&v9 = v13;
  *(&v9 + 1) = SWORD2(v13);
  return sub_100539554(a2, v7, v4, &v9, 0);
}

BOOL sub_10078028C(uint64_t a1, uint64_t a2, _BYTE *a3)
{
  v8 = xmmword_1008A9EA0;
  memset(v9, 0, sizeof(v9));
  v7 = 0;
  v6 = 0;
  *a3 = 0;
  if (sub_10053C3E8(a2))
  {
    result = sub_10053A020(a2, &v8, 4u);
    if (!result)
    {
      return result;
    }

LABEL_10:
    *a3 = 1;
    return result;
  }

  if (sub_10054BE34(a2, v9, &v7) && v7 && !sub_10024A9C0(v9, 6145, &v6))
  {
    *a3 = 1;
  }

  result = sub_10053C3E8(a2);
  if (result)
  {
    result = sub_1000E2140(a2, 0x17u);
    if (result)
    {
      goto LABEL_10;
    }
  }

  return result;
}

void sub_100780530(uint64_t a1)
{
  *a1 = off_100B0C480;
  *(a1 + 8) = off_100B0C530;
  *(a1 + 16) = off_100B0C550;
  *(a1 + 24) = off_100B0C578;
  *(a1 + 32) = &off_100B0C5A8;
  *(a1 + 40) = &off_100B0C5C0;
  *(a1 + 48) = &off_100B0C5D8;
  *(a1 + 56) = &off_100B0C5F0;
  *(a1 + 64) = off_100B0C608;
  *(a1 + 72) = &off_100B0C668;
  *(a1 + 80) = 0;
  sub_100044BBC((a1 + 96));
  *(a1 + 192) = 0;
  *(a1 + 184) = a1 + 192;
  *(a1 + 160) = 500;
  *(a1 + 176) = 0;
  *(a1 + 164) = 0;
  *(a1 + 172) = 0;
  *(a1 + 200) = 0;
  *(a1 + 208) = a1 + 208;
  *(a1 + 216) = a1 + 208;
  *(a1 + 224) = 0;
  *(a1 + 240) = 0;
  *(a1 + 232) = a1 + 240;
  *(a1 + 248) = 0;
  *(a1 + 264) = a1 + 264;
  *(a1 + 272) = a1 + 264;
  *(a1 + 336) = 0;
  *(a1 + 368) = 0;
  *(a1 + 296) = 0;
  *(a1 + 280) = 0;
  *(a1 + 288) = 0;
  *(a1 + 304) = 0;
  *(a1 + 312) = 0;
  *(a1 + 328) = 0;
  *(a1 + 320) = 0;
  operator new();
}

void sub_100780ECC(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14)
{
  __cxa_guard_abort(&qword_100BC7C88);

  v20 = *(v14 + 304);
  if (v20)
  {
    *(v14 + 312) = v20;
    operator delete(v20);
  }

  sub_100798814(v18);
  sub_10000CEDC(v17, *(v14 + 240));
  sub_100028EB4(v16);
  sub_10000CEDC(v15, *(v14 + 192));

  sub_10007A068(v14 + 96);
  _Unwind_Resume(a1);
}

uint64_t sub_100781058(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v10[0] = 0;
  v10[1] = 0;
  sub_100007F88(v10, a1 + 96);
  v7 = sub_10004B1D8(a1, v5);
  if (v7)
  {
    [*(a1 + 288) addObject:v5];
    v8 = sub_100778BAC(v7, v6);
    if (!v8)
    {
      sub_100781130(v7);
      v8 = 0;
    }
  }

  else
  {
    v8 = 3;
  }

  sub_1000088CC(v10);

  return v8;
}

void sub_100781108(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  sub_1000088CC(&a9);

  _Unwind_Resume(a1);
}

void sub_100781130(uint64_t a1)
{
  v2 = [*(a1 + 64) longTermKeyMap];
  v3 = [v2 mutableCopy];
  v4 = *(a1 + 72);
  *(a1 + 72) = v3;

  v5 = *(a1 + 88);
  *(a1 + 88) = 0;

  v6 = *(a1 + 80);
  *(a1 + 80) = 0;
}

id sub_1007811A8(uint64_t a1)
{
  v13[0] = 0;
  v13[1] = 0;
  sub_100007F88(v13, a1 + 96);
  v2 = +[NSMutableArray array];
  v11 = 0u;
  v12 = 0u;
  v9 = 0u;
  v10 = 0u;
  v3 = *(a1 + 288);
  v4 = [v3 countByEnumeratingWithState:&v9 objects:v14 count:16];
  if (v4)
  {
    v5 = *v10;
    do
    {
      for (i = 0; i != v4; i = i + 1)
      {
        if (*v10 != v5)
        {
          objc_enumerationMutation(v3);
        }

        v7 = *(*(&v9 + 1) + 8 * i);
        if (*([*(a1 + 176) objectForKey:{v7, v9}] + 8))
        {
          [v2 addObject:v7];
        }
      }

      v4 = [v3 countByEnumeratingWithState:&v9 objects:v14 count:16];
    }

    while (v4);
  }

  sub_1000088CC(v13);

  return v2;
}

void sub_1007812FC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, ...)
{
  va_start(va, a17);

  sub_1000088CC(va);
  _Unwind_Resume(a1);
}

void sub_100781334(uint64_t a1, void *a2)
{
  v3 = a2;
  v5[0] = 0;
  v5[1] = 0;
  sub_100007F88(v5, a1 + 96);
  v4 = [*(a1 + 176) objectForKey:v3];
  if (v4)
  {
    sub_1007813B4(v4);
  }

  sub_1000088CC(v5);
}

void sub_1007813B4(uint64_t a1)
{
  if (*(a1 + 88) && *(a1 + 80))
  {
    v2 = [*(a1 + 72) objectForKeyedSubscript:?];
    v7 = [v2 mutableCopy];

    [v7 removeObject:*(a1 + 88)];
    v3 = [v7 count];
    v4 = *(a1 + 72);
    if (v3)
    {
      [v4 setObject:v7 forKeyedSubscript:*(a1 + 80)];
    }

    else
    {
      [v4 removeObjectForKey:*(a1 + 80)];
    }

    v5 = *(a1 + 88);
    *(a1 + 88) = 0;

    v6 = *(a1 + 80);
    *(a1 + 80) = 0;
  }
}

void sub_10078149C(uint64_t a1, void *a2)
{
  v3 = a2;
  v5[0] = 0;
  v5[1] = 0;
  sub_100007F88(v5, a1 + 96);
  v4 = [*(a1 + 176) objectForKey:v3];
  if (v4)
  {
    sub_100781130(v4);
  }

  sub_1000088CC(v5);
}

id sub_10078151C(uint64_t a1, void *a2)
{
  v3 = a2;
  if (qword_100BC7C98 != -1)
  {
    sub_100872F60();
  }

  v19[0] = 0;
  v19[1] = 0;
  sub_100007F88(v19, a1 + 96);
  v4 = sub_10004B1D8(a1, v3);
  v5 = v4;
  if (v4)
  {
    v6 = v4[8];
    if (v6)
    {
      if (*(v5 + 164) == 1)
      {
        v7 = *(v5 + 56);
      }

      else
      {
        v7 = 0;
      }

      v9 = sub_100778224(v7);
      v10 = *(v5 + 72);
      v11 = qword_100BCE900;
      if (os_log_type_enabled(qword_100BCE900, OS_LOG_TYPE_INFO))
      {
        v12 = CUPrintNSObjectOneLine();
        *buf = 141558275;
        v21 = 1752392040;
        v22 = 2113;
        v23 = v12;
        _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_INFO, "getFindMyDeviceLTK findMyEncryptionDictionary:%{private, mask.hash}@", buf, 0x16u);
      }

      v13 = [v10 objectForKeyedSubscript:v9];
      if ([v13 count])
      {
        v14 = [v13 objectAtIndexedSubscript:0];
        v15 = [v14 subdataWithRange:{0, 16}];
        v8 = [v15 mutableCopy];

        if (byte_100BC7C90 == 1)
        {
          v29 = 0;
          v28 = 0;
          [v8 replaceBytesInRange:1 withBytes:{10, &v28}];
          v16 = qword_100BCE900;
          if (os_log_type_enabled(qword_100BCE900, OS_LOG_TYPE_INFO))
          {
            *buf = 141558275;
            v21 = 1752392040;
            v22 = 2113;
            v23 = v8;
            _os_log_impl(&_mh_execute_header, v16, OS_LOG_TYPE_INFO, "BAD LTK:%{private, mask.hash}@", buf, 0x16u);
          }
        }

        v17 = qword_100BCE900;
        if (os_log_type_enabled(qword_100BCE900, OS_LOG_TYPE_INFO))
        {
          *buf = 141558787;
          v21 = 1752392040;
          v22 = 2113;
          v23 = v9;
          v24 = 2160;
          v25 = 1752392040;
          v26 = 2113;
          v27 = v8;
          _os_log_impl(&_mh_execute_header, v17, OS_LOG_TYPE_INFO, "getFindMyDeviceLTK sessionKey:%{private, mask.hash}@ --> %{private, mask.hash}@", buf, 0x2Au);
        }

        sub_100781984(v5, v9, v8);
      }

      else
      {
        v8 = 0;
      }
    }

    else
    {
      v8 = 0;
    }
  }

  else
  {
    v8 = 0;
  }

  sub_1000088CC(v19);

  return v8;
}

void sub_100781830(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  sub_1000088CC(&a9);

  _Unwind_Resume(a1);
}

void sub_1007818AC(id a1)
{
  v1 = sub_10000E92C();
  sub_100007E30(v4, "FindMy");
  sub_100007E30(__p, "ForceCorruptLTK");
  (*(*v1 + 72))(v1, v4, __p, &byte_100BC7C90);
  if (v3 < 0)
  {
    operator delete(__p[0]);
  }

  if (v5 < 0)
  {
    operator delete(v4[0]);
  }
}

void sub_100781950(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, void *a15, uint64_t a16, int a17, __int16 a18, char a19, char a20)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  if (a20 < 0)
  {
    operator delete(a15);
  }

  _Unwind_Resume(exception_object);
}

void sub_100781984(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  objc_storeStrong((a1 + 88), a3);
  v7 = a3;
  v6 = *(a1 + 80);
  *(a1 + 80) = v5;
}

void sub_1007819F4(uint64_t a1, void *a2)
{
  v3 = a2;
  v5 = sub_100007EE8(v3, v4);
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_100781AC0;
  v7[3] = &unk_100AE1200;
  v9 = a1;
  v6 = v3;
  v8 = v6;
  sub_10000CA94(v5, v7);
}

void sub_100781AC0(uint64_t a1)
{
  v88 = *(a1 + 40);
  v2 = sub_1007811A8(v88);
  v79 = [v2 mutableCopy];

  v119 = 0;
  v118 = 0;
  v117 = &v118;
  v113 = 0u;
  v114 = 0u;
  v115 = 0u;
  v116 = 0u;
  obj = *(a1 + 32);
  v82 = [obj countByEnumeratingWithState:&v113 objects:v134 count:16];
  if (v82)
  {
    v4 = (v88 + 192);
    v81 = *v114;
    *&v3 = 141558531;
    v78 = v3;
    do
    {
      for (i = 0; i != v82; i = i + 1)
      {
        if (*v114 != v81)
        {
          objc_enumerationMutation(obj);
        }

        v5 = *(*(&v113 + 1) + 8 * i);
        v6 = qword_100BCE900;
        if (os_log_type_enabled(qword_100BCE900, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 141558275;
          *&buf[4] = 1752392040;
          *&buf[12] = 2113;
          *&buf[14] = v5;
          _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "SPOwner peripheral updated %{private, mask.hash}@", buf, 0x16u);
        }

        v85 = v5;
        v7 = [v5 longTermKeyMap];
        v8 = [v7 count] == 0;

        if (v8)
        {
          if (os_log_type_enabled(qword_100BCE900, OS_LOG_TYPE_ERROR))
          {
            sub_100872FD8(&v111, v112);
          }
        }

        else
        {
          v83 = objc_opt_new();
          v9 = [v85 lastConnectedLEMAC];
          v10 = v9 == 0;

          if (!v10)
          {
            v11 = [v85 lastConnectedLEMAC];
            [v83 addObject:v11];
          }

          v12 = [v85 longTermKeyMap];
          v13 = [v12 count] == 0;

          if (!v13)
          {
            v14 = [v85 longTermKeyMap];
            v15 = [v14 allKeys];
            [v83 addObjectsFromArray:v15];
          }

          if ([v83 count])
          {
            *uu = 0;
            v133 = 0;
            v16 = [v85 beaconIdentifier];
            v17 = sub_100782A90(v88, v16);
            sub_10004DFB4(uu, v17);

            if (!uuid_is_null(uu))
            {
              goto LABEL_46;
            }

            v18 = [v85 lastConnectedLEMAC];
            v19 = sub_1000AF61C(v18);

            if (v19)
            {
              sub_1000498D4(v88, v19, 0, 1u, 0, 0, buf);
              uuid_copy(uu, buf);
            }

            if (uuid_is_null(uu))
            {
              v107 = 0u;
              v108 = 0u;
              v105 = 0u;
              v106 = 0u;
              v20 = [v85 longTermKeyMap];
              v21 = [v20 countByEnumeratingWithState:&v105 objects:v131 count:16];
              if (v21)
              {
                v22 = *v106;
                while (2)
                {
                  for (j = 0; j != v21; j = j + 1)
                  {
                    if (*v106 != v22)
                    {
                      objc_enumerationMutation(v20);
                    }

                    v24 = sub_1000AF61C(*(*(&v105 + 1) + 8 * j));
                    *&buf[8] = 0;
                    *buf = 0;
                    sub_1000498D4(v88, v24, 0, 1u, 0, 0, buf);
                    if (!uuid_is_null(buf))
                    {
                      uuid_copy(uu, buf);
                      goto LABEL_32;
                    }
                  }

                  v21 = [v20 countByEnumeratingWithState:&v105 objects:v131 count:16];
                  if (v21)
                  {
                    continue;
                  }

                  break;
                }
              }

LABEL_32:
            }

            if (uuid_is_null(uu))
            {
              memset(v104, 0, sizeof(v104));
              v25 = [v85 longTermKeyMap];
              if ([v25 countByEnumeratingWithState:v104 objects:v130 count:16])
              {
                v26 = sub_1000AF61C(**(&v104[0] + 1));
                sub_1000498D4(v88, v26, 1u, 1u, 0, 0, buf);
                uuid_copy(uu, buf);
              }

              else
              {
                v26 = 0;
              }
            }

            else
            {
              v26 = 0;
            }

            if (uuid_is_null(uu))
            {
              v27 = qword_100BCE900;
              if (os_log_type_enabled(qword_100BCE900, OS_LOG_TYPE_ERROR))
              {
                v28 = [v85 beaconIdentifier];
                sub_100777574(v26);
                v29 = __p;
                if (v126 < 0)
                {
                  v29 = *__p;
                }

                *buf = v78;
                *&buf[4] = 1752392040;
                *&buf[12] = 2113;
                *&buf[14] = v28;
                v128 = 2082;
                v129 = v29;
                _os_log_error_impl(&_mh_execute_header, v27, OS_LOG_TYPE_ERROR, "Failed to retrieve/create FindMy peripheral %{private, mask.hash}@ with address %{public}s, ignoring this device", buf, 0x20u);
                if (v126 < 0)
                {
                  operator delete(*__p);
                }
              }
            }

            else
            {
LABEL_46:
              v86 = objc_opt_new();
              v102 = 0u;
              v103 = 0u;
              v100 = 0u;
              v101 = 0u;
              v87 = v83;
              v30 = [v87 countByEnumeratingWithState:&v100 objects:v122 count:16];
              if (v30)
              {
                v31 = *v101;
                do
                {
                  for (k = 0; k != v30; k = k + 1)
                  {
                    if (*v101 != v31)
                    {
                      objc_enumerationMutation(v87);
                    }

                    v33 = sub_1000AF61C(*(*(&v100 + 1) + 8 * k));
                    v34 = v33;
                    v35 = *v4;
                    v36 = v88 + 192;
                    if (*v4)
                    {
                      v37 = v88 + 192;
                      do
                      {
                        v38 = *(v35 + 32);
                        v39 = v38 >= v33;
                        v40 = v38 < v33;
                        if (v39)
                        {
                          v37 = v35;
                        }

                        v35 = *(v35 + 8 * v40);
                      }

                      while (v35);
                      v36 = v88 + 192;
                      if (v37 != v4)
                      {
                        v36 = v88 + 192;
                        if (v33 >= *(v37 + 32))
                        {
                          v41 = sub_10004DF60(uu);
                          v42 = sub_10004DF60((v37 + 40));
                          v43 = [v41 isEqual:v42];

                          if ((v43 & 1) == 0)
                          {
                            v44 = qword_100BCE900;
                            if (os_log_type_enabled(qword_100BCE900, OS_LOG_TYPE_DEFAULT))
                            {
                              v45 = sub_10004DF60((v37 + 40));
                              sub_10004D9B0(v34);
                              v46 = buf;
                              if (v128 < 0)
                              {
                                v46 = *buf;
                              }

                              *__p = 138543618;
                              *&__p[4] = v45;
                              v124 = 2082;
                              v125 = v46;
                              _os_log_impl(&_mh_execute_header, v44, OS_LOG_TYPE_DEFAULT, "Previous device %{public}@ with address %{public}s pending removal", __p, 0x16u);
                              if (SHIBYTE(v128) < 0)
                              {
                                operator delete(*buf);
                              }
                            }

                            v47 = sub_10004DF60((v37 + 40));
                            [v86 addObject:v47];
                          }

                          v36 = v37;
                        }
                      }
                    }

                    if (*(v88 + 172) == 1)
                    {
                      v48 = sub_10009A544(*(v88 + 256), v34);
                      if (v48)
                      {
                        v49 = sub_10004DF60(uu);
                        v50 = *v48;
                        v51 = [v49 isEqual:v50];

                        if ((v51 & 1) == 0)
                        {
                          v52 = qword_100BCE900;
                          if (os_log_type_enabled(qword_100BCE900, OS_LOG_TYPE_DEFAULT))
                          {
                            v53 = sub_10004DF60((v36 + 40));
                            sub_10004D9B0(v34);
                            v54 = buf;
                            if (v128 < 0)
                            {
                              v54 = *buf;
                            }

                            *__p = 138543618;
                            *&__p[4] = v53;
                            v124 = 2082;
                            v125 = v54;
                            _os_log_impl(&_mh_execute_header, v52, OS_LOG_TYPE_DEFAULT, "Previous device %{public}@ with address %{public}s pending removal", __p, 0x16u);
                            if (SHIBYTE(v128) < 0)
                            {
                              operator delete(*buf);
                            }
                          }

                          v55 = *v48;
                          [v86 addObject:v55];
                        }
                      }
                    }
                  }

                  v30 = [v87 countByEnumeratingWithState:&v100 objects:v122 count:16];
                }

                while (v30);
              }

              v98 = 0u;
              v99 = 0u;
              v96 = 0u;
              v97 = 0u;
              v56 = v86;
              v57 = [v56 countByEnumeratingWithState:&v96 objects:v121 count:16];
              if (v57)
              {
                v58 = *v97;
                do
                {
                  v59 = 0;
                  do
                  {
                    if (*v97 != v58)
                    {
                      objc_enumerationMutation(v56);
                    }

                    v60 = *(*(&v96 + 1) + 8 * v59);
                    v61 = qword_100BCE900;
                    if (os_log_type_enabled(qword_100BCE900, OS_LOG_TYPE_DEFAULT))
                    {
                      *buf = 138543362;
                      *&buf[4] = v60;
                      _os_log_impl(&_mh_execute_header, v61, OS_LOG_TYPE_DEFAULT, "Removing previous device %{public}@ with same address, disconnecting if already connecting/connected", buf, 0xCu);
                    }

                    if (qword_100B512F8 != -1)
                    {
                      sub_100872F74();
                    }

                    sub_1003B2250(off_100B512F0, v60, 8);
                    sub_100782C70(v88, v60);
                    v59 = v59 + 1;
                  }

                  while (v57 != v59);
                  v57 = [v56 countByEnumeratingWithState:&v96 objects:v121 count:16];
                }

                while (v57);
              }

              v62 = sub_10004DF60(uu);
              v63 = sub_100781058(v88, v62, v85);

              if (v63)
              {
                v64 = qword_100BCE900;
                if (os_log_type_enabled(qword_100BCE900, OS_LOG_TYPE_ERROR))
                {
                  v70 = sub_10004DF60(uu);
                  *buf = 138543618;
                  *&buf[4] = v70;
                  *&buf[12] = 1024;
                  *&buf[14] = v63;
                  _os_log_error_impl(&_mh_execute_header, v64, OS_LOG_TYPE_ERROR, "Failed to set FindMy info for device %{public}@ with result %d, skipping", buf, 0x12u);
                }

                v65 = sub_10004DF60(uu);
                sub_100782C70(v88, v65);
              }

              else
              {
                v66 = [v85 name];
                v67 = v66;
                sub_100007E30(v94, [v66 UTF8String]);
                sub_100783194(v88, uu, v94, 4);
                if (v95 < 0)
                {
                  operator delete(v94[0]);
                }

                v68 = qword_100BCE900;
                if (os_log_type_enabled(qword_100BCE900, OS_LOG_TYPE_DEFAULT))
                {
                  v69 = sub_10004DF60(uu);
                  *buf = 138543362;
                  *&buf[4] = v69;
                  _os_log_impl(&_mh_execute_header, v68, OS_LOG_TYPE_DEFAULT, "new addresses for device %{public}@ changed", buf, 0xCu);
                }

                sub_1000C73A4(&v117, uu, uu);
                v65 = sub_10004DF60(uu);
                [v79 removeObject:v65];
              }
            }
          }

          else if (os_log_type_enabled(qword_100BCE900, OS_LOG_TYPE_ERROR))
          {
            sub_100872F9C(&v109, v110);
          }
        }
      }

      v82 = [obj countByEnumeratingWithState:&v113 objects:v134 count:16];
    }

    while (v82);
  }

  if (v119)
  {
    if (qword_100B508B0 != -1)
    {
      sub_100873014();
    }

    v71 = off_100B508A8;
    sub_100506B30(v93, &v117);
    sub_10074713C(v71, v93);
    sub_10000CEDC(v93, v93[1]);
    if (qword_100B512F8 != -1)
    {
      sub_100872F74();
    }

    sub_1003BF8D8(off_100B512F0);
  }

  v91 = 0u;
  v92 = 0u;
  v89 = 0u;
  v90 = 0u;
  v72 = v79;
  v73 = [v72 countByEnumeratingWithState:&v89 objects:v120 count:16];
  if (v73)
  {
    v74 = *v90;
    do
    {
      v75 = 0;
      do
      {
        if (*v90 != v74)
        {
          objc_enumerationMutation(v72);
        }

        v76 = *(*(&v89 + 1) + 8 * v75);
        v77 = qword_100BCE900;
        if (os_log_type_enabled(qword_100BCE900, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 138543362;
          *&buf[4] = v76;
          _os_log_impl(&_mh_execute_header, v77, OS_LOG_TYPE_DEFAULT, "removing FindMy %{public}@, disconnecting if already connecting/connected", buf, 0xCu);
        }

        if (qword_100B512F8 != -1)
        {
          sub_100872F74();
        }

        sub_1003B2250(off_100B512F0, v76, 8);
        if (qword_100B508D0 != -1)
        {
          sub_10087303C();
        }

        sub_100782C70(off_100B508C8, v76);
        v75 = v75 + 1;
      }

      while (v73 != v75);
      v73 = [v72 countByEnumeratingWithState:&v89 objects:v120 count:16];
    }

    while (v73);
  }

  sub_10000CEDC(&v117, v118);
}

void sub_100782848(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, void *a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, void *a40)
{
  sub_10000CEDC(&a39, a40);
  sub_10000CEDC(&STACK[0x288], STACK[0x290]);

  _Unwind_Resume(a1);
}

id sub_100782A90(uint64_t a1, void *a2)
{
  v3 = a2;
  v20[0] = 0;
  v20[1] = 0;
  sub_100007F88(v20, a1 + 96);
  v18 = 0u;
  v19 = 0u;
  v16 = 0u;
  v17 = 0u;
  v4 = *(a1 + 288);
  v5 = [v4 countByEnumeratingWithState:&v16 objects:v21 count:16];
  if (v5)
  {
    v6 = *v17;
    while (2)
    {
      for (i = 0; i != v5; i = i + 1)
      {
        if (*v17 != v6)
        {
          objc_enumerationMutation(v4);
        }

        v8 = *(*(&v16 + 1) + 8 * i);
        v9 = [*(a1 + 176) objectForKey:{v8, v16}];
        if (v9)
        {
          v10 = v9[8];
          v11 = v10;
          if (v10)
          {
            v12 = [v10 beaconIdentifier];
            v13 = [v12 isEqual:v3];

            if (v13)
            {
              v14 = v8;

              goto LABEL_14;
            }
          }
        }
      }

      v5 = [v4 countByEnumeratingWithState:&v16 objects:v21 count:16];
      if (v5)
      {
        continue;
      }

      break;
    }
  }

  v14 = 0;
LABEL_14:

  sub_1000088CC(v20);

  return v14;
}

void sub_100782C20(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, ...)
{
  va_start(va, a16);

  sub_1000088CC(va);
  _Unwind_Resume(a1);
}

void sub_100782C70(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = qword_100BCE900;
  if (os_log_type_enabled(qword_100BCE900, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138543362;
    *&buf[4] = v3;
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "Clearing all records of device %{public}@", buf, 0xCu);
  }

  v20[0] = 0;
  v20[1] = 0;
  sub_100007F88(v20, a1 + 96);
  v5 = [*(a1 + 176) objectForKey:v3];
  v6 = v5;
  if (v5)
  {
    if (v5[164] == 1)
    {
      v7 = qword_100BCE900;
      if (os_log_type_enabled(qword_100BCE900, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 138412290;
        *&buf[4] = v3;
        _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "Device %@ is pending delete but still connected, wait for a complete disconnection", buf, 0xCu);
      }

      *(v6 + 488) = 1;
      goto LABEL_27;
    }

    if (_os_feature_enabled_impl())
    {
      sub_100007E30(__p, "DA_ASK_RETAIN_DEVICE");
      v8 = sub_10004EB40(a1, v3, __p);
      v9 = v8;
      if ((v19 & 0x80000000) == 0)
      {
        if (!v8)
        {
          goto LABEL_20;
        }

LABEL_13:
        v10 = sub_10078928C(a1, v3, @"ASK_LINKED_RADIO_ADDRESS");
        v11 = v10;
        if (v10)
        {
          v12 = sub_100777FF4(v10);
          v13 = qword_100BCE900;
          if (os_log_type_enabled(qword_100BCE900, OS_LOG_TYPE_INFO))
          {
            *buf = 138478083;
            *&buf[4] = v11;
            buf_12 = 2112;
            buf_14 = v3;
            _os_log_impl(&_mh_execute_header, v13, OS_LOG_TYPE_INFO, "removing classic paired device with address %{private}@ linked with %@", buf, 0x16u);
          }

          if (qword_100B50F88 != -1)
          {
            sub_1008732CC();
          }

          sub_1006E0CF4(off_100B50F80, v12);
          sub_1007893AC(a1, v3, @"ASK_LINKED_RADIO_ADDRESS", 0);
        }

        goto LABEL_20;
      }

      operator delete(__p[0]);
      if (v9)
      {
        goto LABEL_13;
      }
    }

LABEL_20:
    [*(a1 + 176) removeObjectForKey:v3];
    *uu2 = 0;
    v25 = 0;
    sub_10004DFB4(uu2, v3);
    v14 = (a1 + 208);
    for (i = *(a1 + 216); ; i = *(i + 1))
    {
      if (i == v14)
      {
        goto LABEL_26;
      }

      if (!uuid_compare(i + 16, uu2))
      {
        break;
      }
    }

    if (i != v14)
    {
      v17 = *i;
      v16 = *(i + 1);
      *(v17 + 8) = v16;
      *v16 = v17;
      --*(a1 + 224);
      operator delete(i);
    }

LABEL_26:
    [*(a1 + 288) removeObject:v3];
    *buf = *(v6 + 24);
    sub_100075DC4((a1 + 184), buf);
    *buf = *(v6 + 16);
    sub_100075DC4((a1 + 184), buf);
    sub_100420224(*(a1 + 256), v6);
    sub_100779F0C(v6, 0, 0, 0);
    sub_1000D3940(v6, (a1 + 264));
    sub_1000D3BB8(v6);
    operator delete();
  }

LABEL_27:
  sub_1000088CC(v20);
}

void sub_1007830F8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, void *a15, uint64_t a16, uint64_t a17, void *__p, uint64_t a19, int a20, __int16 a21, char a22, char a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28)
{
  sub_1000088CC(&a24);

  _Unwind_Resume(a1);
}

uint64_t sub_100783194(uint64_t a1, unsigned __int8 *a2, uint64_t a3, int a4)
{
  v19[0] = 0;
  v19[1] = 0;
  sub_100007F88(v19, a1 + 96);
  v8 = objc_autoreleasePoolPush();
  v9 = sub_10004DF60(a2);
  v10 = sub_10004B1D8(a1, v9);

  if (!v10)
  {
    v11 = 0;
    goto LABEL_17;
  }

  if (*(a3 + 23) < 0)
  {
    sub_100008904(__p, *a3, *(a3 + 8));
  }

  else
  {
    *__p = *a3;
    v18 = *(a3 + 16);
  }

  v12 = sub_1007784E8(v10, __p, a4, 0);
  v11 = v12;
  if ((SHIBYTE(v18) & 0x80000000) == 0)
  {
    if (!v12)
    {
      goto LABEL_11;
    }

    goto LABEL_10;
  }

  operator delete(__p[0]);
  if (v11)
  {
LABEL_10:
    sub_1000C7A50(a1, a2);
  }

LABEL_11:
  v13 = sub_10004DF60(a2);
  if (*(a3 + 23) < 0)
  {
    sub_100008904(v15, *a3, *(a3 + 8));
  }

  else
  {
    *v15 = *a3;
    v16 = *(a3 + 16);
  }

  sub_1000E335C(a1, v13, v15);
  if (SHIBYTE(v16) < 0)
  {
    operator delete(v15[0]);
  }

LABEL_17:
  objc_autoreleasePoolPop(v8);
  sub_1000088CC(v19);
  return v11;
}

void sub_100783364(uint64_t a1)
{
  if (qword_100B50B88 != -1)
  {
    sub_1008732F4();
  }

  sub_10051ABE0(qword_100B50B80 + 8, a1 + 8);
  if (qword_100B508C0 != -1)
  {
    sub_100873308();
  }

  sub_1007BF384(off_100B508B8, a1 + 16);
  if (qword_100B50AA0 != -1)
  {
    sub_10087331C();
  }

  sub_100312650(off_100B50A98 + 64, a1 + 24);
  v2 = sub_10041FD30(*(a1 + 256), a1 + 32);
  if ((v2 & 1) == 0)
  {
    v2 = os_log_type_enabled(qword_100BCE900, OS_LOG_TYPE_ERROR);
    if (v2)
    {
      sub_100873330();
    }
  }

  sub_100432610(v2, v3);
  v28 = 0;
  v4 = sub_10000E92C();
  sub_100007E30(buf, "Device");
  sub_100007E30(__p, "wipeIDCache");
  (*(*v4 + 72))(v4, buf, __p, &v28);
  if (v25 < 0)
  {
    operator delete(__p[0]);
  }

  if (v27 < 0)
  {
    operator delete(*buf);
  }

  if (qword_100B50910 != -1)
  {
    sub_10087336C();
  }

  if ((sub_1005BBA08(off_100B50908) & 1) != 0 || v28 == 1)
  {
    v22 = 0u;
    v23 = 0u;
    v20 = 0u;
    v21 = 0u;
    v5 = *(a1 + 176);
    v6 = [v5 countByEnumeratingWithState:&v20 objects:v29 count:16];
    if (v6)
    {
      v7 = *v21;
      do
      {
        for (i = 0; i != v6; i = i + 1)
        {
          if (*v21 != v7)
          {
            objc_enumerationMutation(v5);
          }

          sub_10078380C(a1, *(*(&v20 + 1) + 8 * i), @"LeIdentificationHashExist");
        }

        v6 = [v5 countByEnumeratingWithState:&v20 objects:v29 count:16];
      }

      while (v6);
    }
  }

  v9 = sub_100432950();
  v10 = v9;
  if (v9)
  {
    [v9 setPeripheralsUpdatedCallback:&stru_100B0C6B0];
  }

  if (qword_100B50AA0 != -1)
  {
    sub_100873394();
  }

  *(a1 + 329) = *(off_100B50A98 + 60);
  if (qword_100B51078 != -1)
  {
    sub_1008733BC();
  }

  sub_1000DB5D8(off_100B51070 + 1896, a1 + 64);
  v11 = sub_100017E6C();
  sub_1007988BC(v11 + 1224, a1 + 56);
  v12 = sub_100017E6C();
  sub_100798B5C(v12 + 1184, a1 + 48);
  v13 = sub_100017E6C();
  sub_100532818(v13 + 744, a1 + 40);
  v14 = sub_100017E6C();
  (*(*v14 + 160))(v14, a1 + 383);
  v15 = sub_100017E6C();
  *(a1 + 385) = (*(*v15 + 192))(v15);
  v16 = sub_100017E6C();
  *(a1 + 384) = (*(*v16 + 200))(v16);
  *(a1 + 386) = 0;
  if (_os_feature_enabled_impl())
  {
    v17 = sub_100017E6C();
    (*(*v17 + 120))(v17, a1 + 386);
    if (*(a1 + 386) == 1)
    {
      v18 = qword_100BCE900;
      if (os_log_type_enabled(qword_100BCE900, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        _os_log_impl(&_mh_execute_header, v18, OS_LOG_TYPE_DEFAULT, "In buddy setup. Registering for buddy state change notifications.", buf, 2u);
      }

      v19 = sub_100017E6C();
      sub_1003C3B3C(v19 + 504, a1 + 72);
    }
  }

  *(a1 + 380) = 0;
}

BOOL sub_10078380C(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v48[0] = 0;
  v48[1] = 0;
  sub_100007F88(v48, a1 + 96);
  v7 = sub_10004B1D8(a1, v5);
  v8 = v7;
  if (!v7)
  {
    v12 = 0;
    goto LABEL_48;
  }

  if (_os_feature_enabled_impl() && [v6 isEqualToString:@"DA_ASK_RETAIN_DEVICE"])
  {
    v9 = *(v8 + 160);
    if (v9)
    {
      v10 = qword_100BCE900;
      if (os_log_type_enabled(qword_100BCE900, OS_LOG_TYPE_INFO))
      {
        *buf = 0;
        _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_INFO, "Ignoring unsetting DA_ASK_RETAIN_DEVICE for LE Paired devices", buf, 2u);
      }
    }

    else
    {
      v13 = sub_10077C3B8(v8, @"ASK_LINKED_RADIO_ADDRESS");
      if (v13)
      {
        v14 = v6;
        sub_100007E30(__p, [v6 UTF8String]);
        v15 = sub_1000463C8(v8 + 176, __p);
        if (v47 < 0)
        {
          operator delete(__p[0]);
        }

        if (v8 + 184 == v15)
        {
          v19 = qword_100BCE900;
          if (os_log_type_enabled(qword_100BCE900, OS_LOG_TYPE_DEFAULT))
          {
            v20 = *v8;
            *buf = 138412290;
            *&buf[4] = v20;
            _os_log_impl(&_mh_execute_header, v19, OS_LOG_TYPE_DEFAULT, "Device %@ does not have DA_ASK_RETAIN_DEVICE tag", buf, 0xCu);
          }
        }

        else
        {
          v16 = sub_100777FF4(v13);
          v17 = qword_100BCE900;
          if (os_log_type_enabled(qword_100BCE900, OS_LOG_TYPE_INFO))
          {
            v18 = *v8;
            *buf = 138478083;
            *&buf[4] = v13;
            *&buf[12] = 2112;
            *&buf[14] = v18;
            _os_log_impl(&_mh_execute_header, v17, OS_LOG_TYPE_INFO, "Removing classic paired device with address %{private}@ linked with %@", buf, 0x16u);
          }

          if (qword_100B50F88 != -1)
          {
            sub_1008732CC();
          }

          sub_1006E0CF4(off_100B50F80, v16);
          sub_10077C454(v8, @"ASK_LINKED_RADIO_ADDRESS", 0);
          sub_10077C454(v8, @"ASK_RELATED_RADIO_ADDRESS", 0);
        }
      }
    }

    sub_100784264(a1);
    v11 = v9 ^ 1;
  }

  else
  {
    v11 = 0;
  }

  v21 = qword_100BCE900;
  if (os_log_type_enabled(qword_100BCE900, OS_LOG_TYPE_DEFAULT))
  {
    v22 = v6;
    sub_100007E30(v44, [v6 UTF8String]);
    v23 = sub_1000463C8(v8 + 176, v44);
    *buf = 138543874;
    *&buf[4] = v6;
    *&buf[12] = 2114;
    *&buf[14] = v5;
    *&buf[22] = 1024;
    *&buf[24] = v8 + 184 != v23;
    _os_log_impl(&_mh_execute_header, v21, OS_LOG_TYPE_DEFAULT, "Removing %{public}@ tag from device %{public}@ hasTag:%d", buf, 0x1Cu);
    if (v45 < 0)
    {
      operator delete(v44[0]);
    }
  }

  v24 = v6;
  sub_100007E30(v42, [v6 UTF8String]);
  v25 = sub_100776C38((v8 + 176), v42);
  v26 = v25;
  v12 = v25 != 0;
  if (v43 < 0)
  {
    operator delete(v42[0]);
    if (!v26)
    {
      goto LABEL_30;
    }

    goto LABEL_29;
  }

  if (v25)
  {
LABEL_29:
    sub_10004DFB4(buf, v5);
    sub_1000C7A50(a1, buf);
  }

LABEL_30:
  sub_10000801C(v48);
  if (([v6 isEqualToString:@"HasBuiltinServices"] & 1) != 0 || objc_msgSend(v6, "isEqualToString:", @"DoNotAutoConnect"))
  {
    sub_100785D40(a1, 1);
  }

  if ([v6 isEqualToString:@"IsAppleWatch"])
  {
    if (qword_100B508C0 != -1)
    {
      sub_1008733E4();
    }

    sub_1007C3BF4(off_100B508B8, v5);
  }

  if ([v6 isEqualToString:@"BluetoothTVRemote"])
  {
    sub_100007E30(v40, "DoNotStopAutoConnecting");
    sub_100776C38((v8 + 176), v40);
    if (v41 < 0)
    {
      operator delete(v40[0]);
    }
  }

  memset(buf, 0, 32);
  *buf = *(a1 + 296);
  sub_100007F20(&buf[8], (a1 + 304));
  v36._os_unfair_lock_opaque = *buf;
  __dst = 0;
  v39 = 0;
  v37 = 0;
  if (*&buf[16] != *&buf[8])
  {
    sub_1000080CC(&v37, (*&buf[16] - *&buf[8]) >> 3);
  }

  v34[0] = _NSConcreteStackBlock;
  v34[1] = 3221225472;
  v34[2] = sub_100788F6C;
  v34[3] = &unk_100B0C738;
  v35 = v5;
  sub_1000D3CD8(&v36, v34);
  if (v37)
  {
    __dst = v37;
    operator delete(v37);
  }

  if (v11)
  {
    sub_100782C70(a1, *v8);
  }

  v7 = *&buf[8];
  if (*&buf[8])
  {
    *&buf[16] = *&buf[8];
    operator delete(*&buf[8]);
  }

LABEL_48:
  v27 = sub_10005063C(v7, v5);
  v29 = v27;
  if (v27)
  {
    v30 = sub_1000BE4B4(v27, v28);
    v31 = v6;
    sub_100007E30(buf, [v6 UTF8String]);
    v32 = (*(*v30 + 800))(v30, v29, buf);
    if (buf[23] < 0)
    {
      operator delete(*buf);
    }

    if (v32)
    {
      if (os_log_type_enabled(qword_100BCE900, OS_LOG_TYPE_ERROR))
      {
        sub_1000E5A58(v29, buf);
        sub_10087340C();
      }
    }

    else
    {
      if (os_log_type_enabled(qword_100BCE900, OS_LOG_TYPE_DEBUG))
      {
        sub_1000E5A58(v29, buf);
        sub_10087345C();
      }

      v12 = 1;
    }
  }

  sub_1000088CC(v48);

  return v12;
}

void sub_100783EA4(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, void *a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, int a21, __int16 a22, char a23, char a24, uint64_t a25, uint64_t a26, int a27, __int16 a28, char a29, char a30, uint64_t a31, uint64_t a32, int a33, __int16 a34, char a35, char a36, void *__p, uint64_t a38, int a39, __int16 a40, char a41, char a42, char a43)
{
  if (a42 < 0)
  {
    operator delete(__p);
  }

  sub_1000088CC(&a43);
  _Unwind_Resume(a1);
}

void sub_100783FB4(id a1, NSArray *a2)
{
  v2 = a2;
  v3 = qword_100BCE900;
  if (os_log_type_enabled(qword_100BCE900, OS_LOG_TYPE_DEFAULT))
  {
    v4 = 141558275;
    v5 = 1752392040;
    v6 = 2113;
    v7 = v2;
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "FindMy update %{private, mask.hash}@", &v4, 0x16u);
  }

  if (qword_100B508D0 != -1)
  {
    sub_10087303C();
  }

  sub_1007819F4(off_100B508C8, v2);
}

void sub_1007840B4(uint64_t a1)
{
  if (qword_100B50AA0 != -1)
  {
    sub_10087331C();
  }

  sub_10007A3F0(off_100B50A98 + 64, a1 + 24);
  if (qword_100B508C0 != -1)
  {
    sub_100873308();
  }

  sub_1007BF4C0(off_100B508B8, a1 + 16);
  if (qword_100B50B88 != -1)
  {
    sub_1008732F4();
  }

  sub_10007A3F0(qword_100B50B80 + 8, a1 + 8);
  v2 = *(a1 + 344);
  if (v2)
  {
    CFRelease(v2);
  }

  v3 = *(a1 + 352);
  if (v3)
  {
    CFRelease(v3);
  }

  sub_100784180(a1);
}

void sub_100784180(uint64_t a1)
{
  v2 = _os_feature_enabled_impl();
  if (v2 && *(a1 + 80))
  {
    v4 = sub_100007EE8(v2, v3);
    v5 = sub_10057127C(v4);
    if (v5)
    {
      [*(a1 + 80) setEventHandler:0];
      [*(a1 + 80) invalidate];
      v7 = *(a1 + 80);
      *(a1 + 80) = 0;
    }

    else
    {
      v8 = sub_100007EE8(v5, v6);
      v9[0] = _NSConcreteStackBlock;
      v9[1] = 3221225472;
      v9[2] = sub_10078494C;
      v9[3] = &unk_100ADF8F8;
      v9[4] = a1;
      sub_10000CA94(v8, v9);
    }
  }
}

void sub_100784264(uint64_t a1)
{
  if (_os_feature_enabled_impl())
  {
    sub_100007E30(__p, "DA_ASK_RETAIN_DEVICE");
    v2 = sub_100784318(a1, __p);
    v3 = v2;
    if (v5 < 0)
    {
      operator delete(__p[0]);
      if (v3)
      {
LABEL_4:
        if (*(a1 + 329) == 1)
        {
          sub_1007844E4(a1);
        }

        return;
      }
    }

    else if (v2)
    {
      goto LABEL_4;
    }

    sub_100784180(a1);
  }
}

void sub_1007842FC(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_100784318(uint64_t a1, uint64_t a2)
{
  v18[0] = 0;
  v18[1] = 0;
  sub_100007F88(v18, a1 + 96);
  v16 = 0u;
  v17 = 0u;
  v14 = 0u;
  v15 = 0u;
  v4 = *(a1 + 176);
  v5 = [v4 countByEnumeratingWithState:&v14 objects:v19 count:16];
  if (v5)
  {
    v6 = *v15;
    while (2)
    {
      v7 = 0;
      do
      {
        if (*v15 != v6)
        {
          objc_enumerationMutation(v4);
        }

        v8 = [*(a1 + 176) objectForKey:{*(*(&v14 + 1) + 8 * v7), __p[0], __p[1], v13}];
        if (*(a2 + 23) < 0)
        {
          sub_100008904(__p, *a2, *(a2 + 8));
        }

        else
        {
          *__p = *a2;
          v13 = *(a2 + 16);
        }

        v9 = sub_1000463C8((v8 + 176), __p);
        if (SHIBYTE(v13) < 0)
        {
          operator delete(__p[0]);
        }

        if (v8 + 184 != v9)
        {
          v10 = 1;
          goto LABEL_16;
        }

        v7 = v7 + 1;
      }

      while (v5 != v7);
      v5 = [v4 countByEnumeratingWithState:&v14 objects:v19 count:16];
      if (v5)
      {
        continue;
      }

      break;
    }
  }

  v10 = 0;
LABEL_16:

  sub_1000088CC(v18);
  return v10;
}

void sub_1007844E4(uint64_t a1)
{
  if (_os_feature_enabled_impl())
  {
    if (*(a1 + 80))
    {
      v2 = qword_100BCE900;
      if (os_log_type_enabled(qword_100BCE900, OS_LOG_TYPE_INFO))
      {
        *buf = 0;
        _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_INFO, "LeDeviceManager::registerForDAEvents Already registered", buf, 2u);
      }
    }

    else
    {
      v3 = objc_alloc_init(DASession);
      v4 = *(a1 + 80);
      *(a1 + 80) = v3;

      [*(a1 + 80) setDispatchQueue:{*(sub_100007EE8(v5, v6) + 8)}];
      [*(a1 + 80) setDeviceFlags:8];
      v8[0] = _NSConcreteStackBlock;
      v8[1] = 3221225472;
      v8[2] = sub_100784648;
      v8[3] = &unk_100AFAA88;
      v8[4] = a1;
      [*(a1 + 80) setEventHandler:v8];
      v7 = qword_100BCE900;
      if (os_log_type_enabled(qword_100BCE900, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "LeDeviceManager::registerForDAEvents registering for deviceAccess events", buf, 2u);
      }

      [*(a1 + 80) activate];
    }
  }
}

void sub_100784648(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = *(a1 + 32);
  v5 = qword_100BCE900;
  if (os_log_type_enabled(qword_100BCE900, OS_LOG_TYPE_DEFAULT))
  {
    [v3 eventType];
    v6 = DAEventTypeToString();
    v7 = [v3 error];
    *buf = 138412802;
    v16 = v6;
    v17 = 2112;
    v18 = v7;
    v19 = 2112;
    v20 = v3;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "LeDeviceManager ASK eventHandler %@ error %@ event %@", buf, 0x20u);
  }

  v8 = [v3 error];
  v9 = v8 == 0;

  if (v9)
  {
    v10 = [v3 eventType];
    if (v10 == 10)
    {
      sub_100784864(v4, 0);
    }

    else if (v10 == 42)
    {
      objc_opt_class();
      if (objc_opt_isKindOfClass() & 1) != 0 || (objc_opt_class(), (objc_opt_isKindOfClass()))
      {
        v11 = v3;
        v12 = [v11 device];
        v14 = v12;
        v13 = [NSArray arrayWithObjects:&v14 count:1];
        sub_100784864(v4, v13);
      }
    }
  }
}

void sub_100784864(uint64_t a1, void *a2)
{
  v3 = a2;
  if (_os_feature_enabled_impl())
  {
    v4 = *(a1 + 80);
    if (v4)
    {
      if (v3)
      {
        v5 = v3;
      }

      else
      {
        v5 = [v4 availableDevices];
      }

      v6 = v5;
      v7[0] = _NSConcreteStackBlock;
      v7[1] = 3221225472;
      v7[2] = sub_100784998;
      v7[3] = &unk_100B0C6D0;
      v7[4] = a1;
      [v5 enumerateObjectsUsingBlock:v7];
    }
  }
}

void sub_10078494C(uint64_t a1)
{
  v1 = *(a1 + 32);
  [*(v1 + 80) setEventHandler:0];
  [*(v1 + 80) invalidate];
  v2 = *(v1 + 80);
  *(v1 + 80) = 0;
}

void sub_100784998(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = *(a1 + 32);
  if (([v3 flags] & 8) != 0)
  {
    v5 = [v3 bluetoothIdentifier];

    if (v5)
    {
      v6 = [v3 bluetoothIdentifier];
      v7 = [*(v4 + 176) objectForKey:v6];
      if (v7)
      {
        v8 = [v3 name];
        if (v8)
        {
          v9 = sub_10077C454(v7, @"ASK_DISPLAY_NAME", v8);
          v10 = qword_100BCE900;
          if (os_log_type_enabled(qword_100BCE900, OS_LOG_TYPE_INFO))
          {
            sub_1000D4514(v7);
            if (v13 >= 0)
            {
              p_p = &__p;
            }

            else
            {
              p_p = __p;
            }

            *buf = 67109890;
            v15 = v9;
            v16 = 2112;
            v17 = v3;
            v18 = 2080;
            v19 = p_p;
            v20 = 2112;
            v21 = v8;
            _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_INFO, "LeDeviceManager::refreshDANames setCustomProperty returned %d for %@ %s %@", buf, 0x26u);
            if (v13 < 0)
            {
              operator delete(__p);
            }
          }
        }
      }
    }
  }
}

void sub_100784B68(uint64_t a1, uint64_t a2)
{
  v3 = sub_100007EE8(a1, a2);
  v4[0] = _NSConcreteStackBlock;
  v4[1] = 3221225472;
  v4[2] = sub_100784BE4;
  v4[3] = &unk_100ADF8F8;
  v4[4] = a1;
  sub_10000CA94(v3, v4);
}

void sub_100784BE4(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = sub_100432950();
  if (v2)
  {
    v3 = [[NSUUID alloc] initWithUUIDString:@"FFFFEEEE-DDDD-CCCC-BBBB-AAAA00000000"];
    v4 = objc_alloc_init(NSArray);
    [v2 startSessionForUserIdentifier:v3 bundleId:@"com.apple.bluetoothd" vendorIdentifierList:v4 completion:&stru_100B0C6F0];

    v5 = qword_100BCE900;
    if (os_log_type_enabled(qword_100BCE900, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "FindMy registration completed", buf, 2u);
    }
  }

  *(v1 + 329) = 1;
  if (_os_feature_enabled_impl())
  {
    v6 = qword_100BCE900;
    v7 = os_log_type_enabled(qword_100BCE900, OS_LOG_TYPE_DEFAULT);
    if (v7)
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "[BTGlobalTCCNames] LeDeviceManager::stackDidStart", buf, 2u);
    }

    v9 = sub_100007EE8(v7, v8);
    v10[0] = _NSConcreteStackBlock;
    v10[1] = 3221225472;
    v10[2] = sub_100784E50;
    v10[3] = &unk_100ADF8F8;
    v10[4] = v1;
    sub_10008E008(v9, 5000, v10);
    sub_100784264(v1);
  }
}

void sub_100784DAC(id a1, NSError *a2)
{
  v3 = qword_100BCE900;
  if (os_log_type_enabled(qword_100BCE900, OS_LOG_TYPE_DEFAULT))
  {
    v4 = 138412290;
    v5 = a2;
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "startSessionForUserIdentifier returned %@", &v4, 0xCu);
  }
}

uint64_t sub_100784E60(uint64_t a1)
{
  v2 = qword_100BCE900;
  if (os_log_type_enabled(qword_100BCE900, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEFAULT, "LeDeviceManager::stackWillStop enter", buf, 2u);
  }

  *buf = 0;
  v23 = 0;
  v3 = sub_100007F88(buf, a1 + 96);
  v5 = sub_100007EE8(v3, v4);
  v21[0] = _NSConcreteStackBlock;
  v21[1] = 3221225472;
  v21[2] = sub_100785180;
  v21[3] = &unk_100ADF8F8;
  v21[4] = a1;
  sub_10000CA94(v5, v21);
  v6 = sub_100432950();
  if (v6)
  {
    if (qword_100B508D0 != -1)
    {
      sub_10087303C();
    }

    sub_1007811A8(off_100B508C8);
    v19 = 0u;
    v20 = 0u;
    v17 = 0u;
    v7 = v18 = 0u;
    v8 = [v7 countByEnumeratingWithState:&v17 objects:v24 count:16];
    if (v8)
    {
      v9 = *v18;
      do
      {
        v10 = 0;
        do
        {
          if (*v18 != v9)
          {
            objc_enumerationMutation(v7);
          }

          v11 = *(*(&v17 + 1) + 8 * v10);
          if (qword_100B508D0 != -1)
          {
            sub_10087303C();
          }

          sub_100782C70(off_100B508C8, v11);
          v10 = v10 + 1;
        }

        while (v8 != v10);
        v8 = [v7 countByEnumeratingWithState:&v17 objects:v24 count:16];
      }

      while (v8);
    }

    [*(a1 + 288) removeAllObjects];
    v12 = [[NSUUID alloc] initWithUUIDString:@"FFFFEEEE-DDDD-CCCC-BBBB-AAAA00000000"];
    [v6 stopSessionForUserIdentifier:v12 bundleId:@"com.apple.bluetoothd" completion:&stru_100B0C710];

    v13 = qword_100BCE900;
    if (os_log_type_enabled(qword_100BCE900, OS_LOG_TYPE_DEFAULT))
    {
      *v16 = 0;
      _os_log_impl(&_mh_execute_header, v13, OS_LOG_TYPE_DEFAULT, "FindMy unregistration completed", v16, 2u);
    }
  }

  v14 = qword_100BCE900;
  if (os_log_type_enabled(qword_100BCE900, OS_LOG_TYPE_DEFAULT))
  {
    *v16 = 0;
    _os_log_impl(&_mh_execute_header, v14, OS_LOG_TYPE_DEFAULT, "LeDeviceManager::stackWillStop exit", v16, 2u);
  }

  return sub_1000088CC(buf);
}

void sub_100785128(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, ...)
{
  va_start(va, a24);

  sub_1000088CC(va);
  _Unwind_Resume(a1);
}

void sub_10078518C(id a1, NSError *a2)
{
  v3 = qword_100BCE900;
  if (os_log_type_enabled(qword_100BCE900, OS_LOG_TYPE_DEFAULT))
  {
    v4 = 138412290;
    v5 = a2;
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "stopSessionForUserIdentifier returned %@", &v4, 0xCu);
  }
}

void sub_100785238(uint64_t a1)
{
  v6 = 0u;
  v7 = 0u;
  v8 = 0u;
  v9 = 0u;
  v2 = *(a1 + 176);
  v3 = [v2 countByEnumeratingWithState:&v6 objects:v10 count:16];
  if (v3)
  {
    v4 = *v7;
    do
    {
      v5 = 0;
      do
      {
        if (*v7 != v4)
        {
          objc_enumerationMutation(v2);
        }

        sub_10077B6F8([*(a1 + 176) objectForKey:{*(*(&v6 + 1) + 8 * v5), v6}]);
        v5 = v5 + 1;
      }

      while (v3 != v5);
      v3 = [v2 countByEnumeratingWithState:&v6 objects:v10 count:16];
    }

    while (v3);
  }
}

void sub_10078535C(uint64_t a1, uint64_t a2)
{
  v3 = sub_100007EE8(a1, a2);
  v4[0] = _NSConcreteStackBlock;
  v4[1] = 3221225472;
  v4[2] = sub_1007853D8;
  v4[3] = &unk_100ADF8F8;
  v4[4] = a1;
  sub_10000CA94(v3, v4);
}

uint64_t sub_1007853D8(uint64_t a1)
{
  v1 = *(a1 + 32);
  *(v1 + 384) = 1;
  v2 = qword_100BCE900;
  if (os_log_type_enabled(qword_100BCE900, OS_LOG_TYPE_DEFAULT))
  {
    *v4 = 0;
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEFAULT, "LeDeviceManager::deviceFirstUnlocked", v4, 2u);
  }

  result = _os_feature_enabled_impl();
  if (result)
  {
    return sub_10009D6F0(v1);
  }

  return result;
}

void sub_100785474(uint64_t a1, int a2)
{
  if (_os_feature_enabled_impl())
  {
    v4 = qword_100BCE900;
    v5 = os_log_type_enabled(qword_100BCE900, OS_LOG_TYPE_DEFAULT);
    if (v5)
    {
      v7 = "Completed";
      if (a2)
      {
        v7 = "Needs to run.";
      }

      *buf = 136446210;
      v12 = v7;
      _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "Current SetupBuddy state: %{public}s.", buf, 0xCu);
    }

    v8 = sub_100007EE8(v5, v6);
    v9[0] = _NSConcreteStackBlock;
    v9[1] = 3221225472;
    v9[2] = sub_1007855AC;
    v9[3] = &unk_100AE15D8;
    v9[4] = a1;
    v10 = a2;
    sub_10000CA94(v8, v9);
  }
}

uint64_t sub_1007855AC(uint64_t result)
{
  v1 = *(result + 32);
  v2 = *(result + 40);
  *(v1 + 386) = v2;
  if ((v2 & 1) == 0)
  {
    result = _os_feature_enabled_impl();
    if (result)
    {

      return sub_10009D6F0(v1);
    }
  }

  return result;
}

void sub_100785618(uint64_t a1, void *a2, int a3)
{
  v5 = a2;
  v53[0] = 0;
  v53[1] = 0;
  sub_100007F88(v53, a1 + 96);
  v6 = sub_10004B1D8(a1, v5);
  if (v6)
  {
    sub_100007E30(__p, "HasBuiltinServices");
    v7 = sub_1000463C8((v6 + 22), __p);
    if (v52 < 0)
    {
      operator delete(__p[0]);
    }

    if (a3)
    {
      if (qword_100B508C0 != -1)
      {
        sub_1008733E4();
      }

      if (!sub_10004EE74(off_100B508B8, v5))
      {
        sub_10077B704(v6, 0);
      }
    }

    else
    {
      sub_10077B704(v6, 1);
      v10 = sub_10000C798(v8, v9);
      if (*(*v10 + 416))(v10) && *(v6 + 196) - 961 < 9 && ((0x10Fu >> (*(v6 + 196) + 63)))
      {
        v11 = [*(&off_100B0C998 + (*(v6 + 196) - 961)) uppercaseString];
        v70 = 0;
        v68 = 0u;
        v69 = 0u;
        v66 = 0u;
        v67 = 0u;
        v64 = 0u;
        v65 = 0u;
        v62 = 0u;
        v63 = 0u;
        v60 = 0u;
        v61 = 0u;
        v58 = 0u;
        v59 = 0u;
        v56 = 0u;
        memset(v57, 0, sizeof(v57));
        sub_100008760(&v56);
        v12 = sub_100007774(&v56, "APPEARANCE_", 11);
        v13 = v11;
        sub_100007E30(buf, [v11 UTF8String]);
        if ((v55 & 0x80u) == 0)
        {
          v14 = buf;
        }

        else
        {
          LODWORD(v14) = *buf;
        }

        if ((v55 & 0x80u) == 0)
        {
          v15 = v55;
        }

        else
        {
          v15 = *&buf[8];
        }

        sub_100007774(v12, v14, v15);
        if (v55 < 0)
        {
          operator delete(*buf);
        }

        std::stringbuf::str();
        sub_1007782B8(v6, &v49);
        if (v50 < 0)
        {
          operator delete(v49);
        }

        if (SHIBYTE(v59) < 0)
        {
          operator delete(*(&v58 + 1));
        }

        std::locale::~locale(v57);
        std::ostream::~ostream();
        std::ios::~ios();
      }
    }

    sub_10004DFB4(&v56, v5);
    sub_1000C7A50(a1, &v56);
    sub_10000801C(v53);
    v16 = v6 + 23;
    if (v6 + 23 != v7)
    {
      sub_100785D40(a1, 1);
      if (sub_1000E3BD0(v6))
      {
        goto LABEL_30;
      }

      sub_100007E30(v47, "_GHS_DEVICE_");
      v17 = sub_1000463C8((v6 + 22), v47);
      if (v48 < 0)
      {
        operator delete(v47[0]);
      }

      if (v16 != v17)
      {
LABEL_30:
        sub_100785F60(a1, v5, 2);
      }
    }

    v56 = 0uLL;
    v57[0].__locale_ = 0;
    v18 = sub_1005797AC(&v56, v5, a3, v16 != v7);
    v20 = sub_10000F034(v18, v19);
    if (v20)
    {
      v22 = sub_10000F034(v20, v21);
      (*(*v22 + 40))(v22, &v56);
    }

    if (*(v6 + 160) == 1)
    {
      v23 = sub_10004B1D8(a1, v5);
      sub_100007E30(v45, "needsMFiAuthenticationCertClass2.0c");
      v24 = sub_1000463C8((v23 + 22), v45);
      v25 = v23 + 23;
      if (v46 < 0)
      {
        operator delete(v45[0]);
      }

      if (v25 != v24)
      {
        v26 = qword_100BCE900;
        v27 = os_log_type_enabled(qword_100BCE900, OS_LOG_TYPE_DEFAULT);
        if (v27)
        {
          *buf = 138543362;
          *&buf[4] = v5;
          _os_log_impl(&_mh_execute_header, v26, OS_LOG_TYPE_DEFAULT, "Starting MFI Auth 2.0c with device %{public}@", buf, 0xCu);
        }

        v29 = sub_100432610(v27, v28);
        v30 = (*(*v29 + 24))(v29, v5);
        v32 = sub_100432610(v30, v31);
        (*(*v32 + 192))(v32, v5);
      }

      v33 = sub_10004B1D8(a1, v5);
      sub_100007E30(v43, "needsMFiAuthentication4.0");
      v34 = sub_1000463C8((v33 + 22), v43);
      v35 = v33 + 23;
      if (v44 < 0)
      {
        operator delete(v43[0]);
      }

      if (v35 != v34)
      {
        v36 = qword_100BCE900;
        v37 = os_log_type_enabled(qword_100BCE900, OS_LOG_TYPE_DEFAULT);
        if (v37)
        {
          *buf = 138543362;
          *&buf[4] = v5;
          _os_log_impl(&_mh_execute_header, v36, OS_LOG_TYPE_DEFAULT, "Starting MFI Auth 4.0 with device %{public}@", buf, 0xCu);
        }

        v39 = sub_100432610(v37, v38);
        v40 = (*(*v39 + 24))(v39, v5);
        v42 = sub_100432610(v40, v41);
        (*(*v42 + 192))(v42, v5);
      }
    }
  }

  sub_1000088CC(v53);
}

void sub_100785C4C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *a10, uint64_t a11, int a12, __int16 a13, char a14, char a15, uint64_t a16, uint64_t a17, int a18, __int16 a19, char a20, char a21, void *a22, uint64_t a23, int a24, __int16 a25, char a26, char a27, void *__p, uint64_t a29, int a30, __int16 a31, char a32, char a33, uint64_t a34, uint64_t a35, int a36, __int16 a37, char a38, char a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, int a44, __int16 a45, char a46, char a47, uint64_t a48, uint64_t a49, uint64_t a50)
{
  if (a33 < 0)
  {
    operator delete(__p);
  }

  sub_1003B8618(&a49);

  sub_1000088CC(&a40);
  _Unwind_Resume(a1);
}

void sub_100785D40(uint64_t a1, char a2)
{
  v16 = sub_10078D05C(a1);
  v4 = +[NSMutableArray array];
  v15 = a2;
  v21 = 0u;
  v22 = 0u;
  v19 = 0u;
  v20 = 0u;
  v5 = v16;
  v6 = [v5 countByEnumeratingWithState:&v19 objects:v23 count:16];
  if (v6)
  {
    v7 = *v20;
    do
    {
      for (i = 0; i != v6; i = i + 1)
      {
        if (*v20 != v7)
        {
          objc_enumerationMutation(v5);
        }

        v9 = *(*(&v19 + 1) + 8 * i);
        v10 = [*(a1 + 176) objectForKey:v9];
        sub_100007E30(__p, "DoNotAutoConnect");
        v11 = sub_1000463C8((v10 + 176), __p);
        if (v18 < 0)
        {
          operator delete(__p[0]);
        }

        if (v10 + 184 == v11)
        {
          [v4 addObject:v9];
        }
      }

      v6 = [v5 countByEnumeratingWithState:&v19 objects:v23 count:16];
    }

    while (v6);
  }

  if ((v15 & 1) != 0 || (v12 = [v4 count]) != 0)
  {
    v14 = sub_100432610(v12, v13);
    (*(*v14 + 32))(v14, v4);
  }
}

void sub_100785F60(uint64_t a1, void *a2, int a3)
{
  v5 = a2;
  if (v5)
  {
    if (qword_100B508D0 != -1)
    {
      sub_100873544();
    }

    v6 = sub_10004B1D8(off_100B508C8, v5);
    v7 = v6;
    if (v6 && *(v6 + 160) == 1)
    {
      if (a3 == 1)
      {
        *(v6 + 359) = 1;
      }

      if (qword_100B508D0 != -1)
      {
        sub_100873544();
      }

      v8 = off_100B508C8;
      sub_100007E30(__p, "LeIdentificationHashExist");
      v9 = sub_10004EB40(v8, v5, __p);
      v11 = v9;
      if (v32 < 0)
      {
        operator delete(__p[0]);
        if (v11)
        {
LABEL_12:
          v12 = sub_10000C798(v9, v10);
          if ((*(*v12 + 392))(v12))
          {
            sub_100007E30(v29, "IsLEMouse");
            v13 = v7 + 184;
            if (v7 + 184 == sub_1000463C8(v7 + 176, v29))
            {
              if (v30 < 0)
              {
                operator delete(v29[0]);
              }
            }

            else
            {
              sub_100007E30(v27, "HIDDeviceUnknownBehavior");
              if (v13 == sub_1000463C8(v7 + 176, v27))
              {
                sub_100007E30(v25, "HIDDeviceKnownPoorBehavior");
                if (v13 == sub_1000463C8(v7 + 176, v25))
                {
                  sub_100007E30(v23, "HIDDeviceKnownGoodBehavior");
                  v14 = v13 == sub_1000463C8(v7 + 176, v23);
                  if (v24 < 0)
                  {
                    operator delete(v23[0]);
                  }
                }

                else
                {
                  v14 = 0;
                }

                if (v26 < 0)
                {
                  operator delete(v25[0]);
                }
              }

              else
              {
                v14 = 0;
              }

              if (v28 < 0)
              {
                operator delete(v27[0]);
              }

              if (v30 < 0)
              {
                operator delete(v29[0]);
                if (v14)
                {
                  goto LABEL_42;
                }
              }

              else if (v14)
              {
LABEL_42:
                v22 = qword_100BCE900;
                if (!os_log_type_enabled(qword_100BCE900, OS_LOG_TYPE_DEFAULT))
                {
                  goto LABEL_19;
                }

                *buf = 138543362;
                v34 = v5;
                v16 = "Identification - no hids tags for device %{public}@, not regenerating metric";
                goto LABEL_47;
              }
            }
          }

          v22 = qword_100BCE900;
          if (!os_log_type_enabled(qword_100BCE900, OS_LOG_TYPE_DEFAULT))
          {
            goto LABEL_19;
          }

          *buf = 138543362;
          v34 = v5;
          v16 = "Identification - le identification tag exist for device %{public}@ - not generating";
LABEL_47:
          v17 = v22;
          v18 = 12;
          goto LABEL_18;
        }
      }

      else if (v9)
      {
        goto LABEL_12;
      }

      v19 = qword_100BCE900;
      if (os_log_type_enabled(qword_100BCE900, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        _os_log_impl(&_mh_execute_header, v19, OS_LOG_TYPE_DEFAULT, "Identification - Identification hash does not exist - generating", buf, 2u);
      }

      if (qword_100B508D0 != -1)
      {
        sub_10087303C();
      }

      v20 = sub_1007964A4(off_100B508C8, v5);
      v21 = qword_100BCE900;
      if (os_log_type_enabled(qword_100BCE900, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 138543874;
        v34 = v5;
        v35 = 1024;
        v36 = a3;
        v37 = 1024;
        v38 = v20;
        _os_log_impl(&_mh_execute_header, v21, OS_LOG_TYPE_DEFAULT, "Identification - generating for device %{public}@, stimulus %d, sent %d", buf, 0x18u);
      }

      if ((v20 & 5) == 0 && sub_1000E3BD0(v7))
      {
        sub_1007885E0(a1, v5);
      }
    }

    else
    {
      v15 = qword_100BCE900;
      if (os_log_type_enabled(qword_100BCE900, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 67109120;
        LODWORD(v34) = a3;
        v16 = "Identification - device not yet le-paired, stimulus %d";
        v17 = v15;
        v18 = 8;
LABEL_18:
        _os_log_impl(&_mh_execute_header, v17, OS_LOG_TYPE_DEFAULT, v16, buf, v18);
      }
    }
  }

LABEL_19:
}

void sub_100786380(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15, void *a16, uint64_t a17, int a18, __int16 a19, char a20, char a21, void *a22, uint64_t a23, int a24, __int16 a25, char a26, char a27, void *a28, uint64_t a29, int a30, __int16 a31, char a32, char a33, uint64_t a34, uint64_t a35, int a36, __int16 a37, char a38, char a39)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  if (a21 < 0)
  {
    operator delete(a16);
  }

  if (a27 < 0)
  {
    operator delete(a22);
  }

  if (a33 < 0)
  {
    operator delete(a28);
  }

  _Unwind_Resume(a1);
}

void sub_10078641C(uint64_t a1, void *a2)
{
  v3 = a2;
  v25[0] = 0;
  v25[1] = 0;
  sub_100007F88(v25, a1 + 96);
  v4 = sub_10004B1D8(a1, v3);
  if (v4)
  {
    v23 = 0;
    v24 = 0;
    v5 = sub_1005797F8(&v23, v3);
    v7 = sub_10000F034(v5, v6);
    if (v7)
    {
      v9 = sub_10000F034(v7, v8);
      (*(*v9 + 40))(v9, &v23);
    }

    sub_100007E30(__p, "HasBuiltinServices");
    v10 = sub_1000463C8((v4 + 22), __p);
    if (v22 < 0)
    {
      operator delete(__p[0]);
    }

    v11 = *(v4 + 231);
    if (v11 < 0)
    {
      v11 = v4[27];
    }

    *(v4 + 357) = 0;
    *(v4 + 359) = 0;
    *(v4 + 368) = 1;
    sub_10077B704(v4, 0);
    sub_100007E30(&__str, "");
    std::string::operator=((v4 + 26), &__str);
    v12 = v4 + 23;
    if (SHIBYTE(__str.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(__str.__r_.__value_.__l.__data_);
    }

    sub_10004B61C((v4 + 22), v4[23]);
    v4[23] = 0;
    v4[24] = 0;
    v4[22] = v12;
    v4[60] = 0;
    if (v11)
    {
      sub_100779F0C(v4, 0, 0, 0);
    }

    v13 = v4[3];
    if (v13)
    {
      v14 = qword_100BCE900;
      if (os_log_type_enabled(qword_100BCE900, OS_LOG_TYPE_INFO))
      {
        LODWORD(__str.__r_.__value_.__l.__data_) = 138543362;
        *(__str.__r_.__value_.__r.__words + 4) = v3;
        _os_log_impl(&_mh_execute_header, v14, OS_LOG_TYPE_INFO, "Clearing resolved address for device %{public}@", &__str, 0xCu);
      }

      v4[3] = 0;
      v15 = v4[2];
      if ((v15 & 0xFF000000000000) == 0 || (v15 & 0xFFC00000000000) == 0x1C00000000000)
      {
        sub_10004DFB4(&__str, v3);
        sub_1000C7A50(a1, &__str);
      }

      else
      {
        sub_100420224(*(a1 + 256), v4);
      }

      if (v13 != v4[2])
      {
        v16 = *(a1 + 192);
        if (v16)
        {
          v17 = (a1 + 192);
          do
          {
            v18 = v16[4];
            v19 = v18 >= v13;
            v20 = v18 < v13;
            if (v19)
            {
              v17 = v16;
            }

            v16 = v16[v20];
          }

          while (v16);
          if (v17 != (a1 + 192) && v13 >= v17[4])
          {
            sub_10002717C((a1 + 184), v17);
            operator delete(v17);
          }
        }
      }
    }

    if (v12 != v10)
    {
      sub_100785D40(a1, 1);
    }
  }

  sub_1000088CC(v25);
}

void sub_1007866D4(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, int a12, __int16 a13, char a14, char a15, uint64_t a16, void *a17, uint64_t a18, uint64_t a19, void *__p, uint64_t a21, int a22, __int16 a23, char a24, char a25)
{
  sub_1000088CC(&a18);

  _Unwind_Resume(a1);
}

uint64_t sub_100786758(uint64_t a1, int a2, int a3)
{
  v18[0] = 0;
  v18[1] = 0;
  sub_100007F88(v18, a1 + 96);
  *(a1 + 172) = 1;
  *(a1 + 164) = a3;
  *(a1 + 168) = a2;
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v6 = *(a1 + 176);
  v7 = [v6 countByEnumeratingWithState:&v14 objects:v19 count:16];
  if (v7)
  {
    v8 = *v15;
    do
    {
      for (i = 0; i != v7; i = i + 1)
      {
        if (*v15 != v8)
        {
          objc_enumerationMutation(v6);
        }

        v10 = [*(a1 + 176) objectForKey:{*(*(&v14 + 1) + 8 * i), v14}];
        v11 = v10[33];
        if (v11)
        {
          v10[33] = *(a1 + 168) + v11;
        }

        v12 = v10[34];
        if (v12)
        {
          v10[34] = *(a1 + 164) + v12;
        }
      }

      v7 = [v6 countByEnumeratingWithState:&v14 objects:v19 count:16];
    }

    while (v7);
  }

  return sub_1000088CC(v18);
}

void sub_1007868A0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, ...)
{
  va_start(va, a17);

  sub_1000088CC(va);
  _Unwind_Resume(a1);
}

BOOL sub_1007868F4(uint64_t a1, void *a2)
{
  v3 = a2;
  v7[0] = 0;
  v7[1] = 0;
  sub_100007F88(v7, a1 + 96);
  v4 = sub_10004B1D8(a1, v3);
  if (v4)
  {
    v5 = v4[3] != 0;
  }

  else
  {
    v5 = 0;
  }

  sub_1000088CC(v7);

  return v5;
}

void sub_100786968(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  sub_1000088CC(&a9);

  _Unwind_Resume(a1);
}

uint64_t sub_100786988(uint64_t a1, void *a2)
{
  v3 = a2;
  v7[0] = 0;
  v7[1] = 0;
  sub_100007F88(v7, a1 + 96);
  v4 = sub_10004B1D8(a1, v3);
  if (v4)
  {
    v5 = *(v4 + 35);
  }

  else
  {
    v5 = 0;
  }

  sub_1000088CC(v7);

  return v5;
}

void sub_1007869F4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  sub_1000088CC(&a9);

  _Unwind_Resume(a1);
}

uint64_t sub_100786A14(uint64_t a1, void *a2)
{
  v3 = a2;
  v7[0] = 0;
  v7[1] = 0;
  sub_100007F88(v7, a1 + 96);
  v4 = sub_10004B1D8(a1, v3);
  if (v4)
  {
    v5 = *(v4 + 36);
  }

  else
  {
    v5 = 0;
  }

  sub_1000088CC(v7);

  return v5;
}

void sub_100786A80(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  sub_1000088CC(&a9);

  _Unwind_Resume(a1);
}

uint64_t sub_100786AA0(uint64_t a1, void *a2)
{
  v3 = a2;
  v7[0] = 0;
  v7[1] = 0;
  sub_100007F88(v7, a1 + 96);
  v4 = sub_10004B1D8(a1, v3);
  if (v4)
  {
    v5 = v4[19];
  }

  else
  {
    v5 = 0;
  }

  sub_1000088CC(v7);

  return v5;
}

void sub_100786B0C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  sub_1000088CC(&a9);

  _Unwind_Resume(a1);
}

uint64_t sub_100786B2C(uint64_t a1, void *a2)
{
  v3 = a2;
  v7[0] = 0;
  v7[1] = 0;
  sub_100007F88(v7, a1 + 96);
  v4 = sub_10004B1D8(a1, v3);
  if (v4)
  {
    v5 = *(v4 + 33);
  }

  else
  {
    v5 = 0;
  }

  sub_1000088CC(v7);

  return v5;
}

void sub_100786B98(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  sub_1000088CC(&a9);

  _Unwind_Resume(a1);
}

uint64_t sub_100786BB8(uint64_t a1, void *a2)
{
  v3 = a2;
  v7[0] = 0;
  v7[1] = 0;
  sub_100007F88(v7, a1 + 96);
  v4 = sub_10004B1D8(a1, v3);
  if (v4)
  {
    v5 = *(v4 + 65);
  }

  else
  {
    v5 = 1;
  }

  sub_1000088CC(v7);

  return v5;
}

void sub_100786C24(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  sub_1000088CC(&a9);

  _Unwind_Resume(a1);
}

double sub_100786C44(uint64_t a1, void *a2)
{
  v3 = a2;
  v7[0] = 0;
  v7[1] = 0;
  sub_100007F88(v7, a1 + 96);
  v4 = sub_10004B1D8(a1, v3);
  if (v4)
  {
    v5 = v4[51];
  }

  else
  {
    v5 = 0.0;
  }

  sub_1000088CC(v7);

  return v5;
}

void sub_100786CB8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  sub_1000088CC(&a9);

  _Unwind_Resume(a1);
}

void sub_100786CD8(uint64_t a1, void *a2, double a3)
{
  v5 = a2;
  v7[0] = 0;
  v7[1] = 0;
  sub_100007F88(v7, a1 + 96);
  v6 = sub_10004B1D8(a1, v5);
  if (v6)
  {
    v6[51] = a3;
  }

  sub_1000088CC(v7);
}

void sub_100786D44(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  sub_1000088CC(&a9);

  _Unwind_Resume(a1);
}

double sub_100786D64(uint64_t a1, void *a2)
{
  v3 = a2;
  v7[0] = 0;
  v7[1] = 0;
  sub_100007F88(v7, a1 + 96);
  v4 = sub_10004B1D8(a1, v3);
  if (v4)
  {
    v5 = v4[52];
  }

  else
  {
    v5 = 0.0;
  }

  sub_1000088CC(v7);

  return v5;
}

void sub_100786DD8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  sub_1000088CC(&a9);

  _Unwind_Resume(a1);
}

double sub_100786DF8(uint64_t a1, void *a2)
{
  v3 = a2;
  v7[0] = 0;
  v7[1] = 0;
  sub_100007F88(v7, a1 + 96);
  v4 = sub_10004B1D8(a1, v3);
  if (v4)
  {
    v5 = v4[53];
  }

  else
  {
    v5 = 0.0;
  }

  sub_1000088CC(v7);

  return v5;
}

void sub_100786E6C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  sub_1000088CC(&a9);

  _Unwind_Resume(a1);
}

void sub_100786E8C(uint64_t a1, void *a2, double a3)
{
  v5 = a2;
  v7[0] = 0;
  v7[1] = 0;
  sub_100007F88(v7, a1 + 96);
  v6 = sub_10004B1D8(a1, v5);
  if (v6)
  {
    v6[53] = a3;
  }

  sub_1000088CC(v7);
}

void sub_100786EF8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  sub_1000088CC(&a9);

  _Unwind_Resume(a1);
}

double sub_100786F18(uint64_t a1, void *a2)
{
  v3 = a2;
  v7[0] = 0;
  v7[1] = 0;
  sub_100007F88(v7, a1 + 96);
  v4 = sub_10004B1D8(a1, v3);
  if (v4)
  {
    v5 = v4[54];
  }

  else
  {
    v5 = 0.0;
  }

  sub_1000088CC(v7);

  return v5;
}

void sub_100786F8C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  sub_1000088CC(&a9);

  _Unwind_Resume(a1);
}

void sub_100786FAC(uint64_t a1, void *a2, double a3)
{
  v5 = a2;
  v7[0] = 0;
  v7[1] = 0;
  sub_100007F88(v7, a1 + 96);
  v6 = sub_10004B1D8(a1, v5);
  if (v6)
  {
    v6[54] = a3;
  }

  sub_1000088CC(v7);
}

void sub_100787018(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  sub_1000088CC(&a9);

  _Unwind_Resume(a1);
}

double sub_100787038(uint64_t a1, void *a2)
{
  v3 = a2;
  v7[0] = 0;
  v7[1] = 0;
  sub_100007F88(v7, a1 + 96);
  v4 = sub_10004B1D8(a1, v3);
  if (v4)
  {
    v5 = v4[55];
  }

  else
  {
    v5 = 0.0;
  }

  sub_1000088CC(v7);

  return v5;
}

void sub_1007870AC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  sub_1000088CC(&a9);

  _Unwind_Resume(a1);
}

void sub_1007870CC(uint64_t a1, void *a2, double a3)
{
  v5 = a2;
  v7[0] = 0;
  v7[1] = 0;
  sub_100007F88(v7, a1 + 96);
  v6 = sub_10004B1D8(a1, v5);
  if (v6)
  {
    v6[55] = a3;
  }

  sub_1000088CC(v7);
}

void sub_100787138(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  sub_1000088CC(&a9);

  _Unwind_Resume(a1);
}

uint64_t sub_100787158(uint64_t a1, void *a2)
{
  v3 = a2;
  v7[0] = 0;
  v7[1] = 0;
  sub_100007F88(v7, a1 + 96);
  v4 = sub_10004B1D8(a1, v3);
  if (v4)
  {
    v5 = *(v4 + 112);
  }

  else
  {
    v5 = 0;
  }

  sub_1000088CC(v7);

  return v5;
}

void sub_1007871C4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  sub_1000088CC(&a9);

  _Unwind_Resume(a1);
}

void sub_1007871E4(uint64_t a1, void *a2, int a3)
{
  v5 = a2;
  v7[0] = 0;
  v7[1] = 0;
  sub_100007F88(v7, a1 + 96);
  v6 = sub_10004B1D8(a1, v5);
  if (v6)
  {
    *(v6 + 112) = a3;
  }

  sub_1000088CC(v7);
}

void sub_100787250(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  sub_1000088CC(&a9);

  _Unwind_Resume(a1);
}

void sub_100787270(uint64_t a1, void *a2, int a3)
{
  v5 = a2;
  v7[0] = 0;
  v7[1] = 0;
  sub_100007F88(v7, a1 + 96);
  v6 = sub_10004B1D8(a1, v5);
  if (v6)
  {
    *(v6 + 112) += a3;
  }

  sub_1000088CC(v7);
}

void sub_1007872E4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  sub_1000088CC(&a9);

  _Unwind_Resume(a1);
}

uint64_t sub_100787304(uint64_t a1, void *a2)
{
  v3 = a2;
  v7[0] = 0;
  v7[1] = 0;
  sub_100007F88(v7, a1 + 96);
  v4 = sub_10004B1D8(a1, v3);
  if (v4)
  {
    v5 = *(v4 + 162);
  }

  else
  {
    v5 = 0;
  }

  sub_1000088CC(v7);

  return v5 & 1;
}

void sub_100787370(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  sub_1000088CC(&a9);

  _Unwind_Resume(a1);
}

void sub_100787390(uint64_t a1, void *a2, int a3)
{
  v5 = a2;
  v16[0] = 0;
  v16[1] = 0;
  sub_100007F88(v16, a1 + 96);
  v6 = sub_10004B1D8(a1, v5);
  if (v6 && *(v6 + 196) != a3)
  {
    *(v6 + 196) = a3;
    v7 = 1;
  }

  else
  {
    v7 = 0;
  }

  sub_10000801C(v16);
  if (v7)
  {
    *v14 = 0u;
    v15 = 0u;
    LODWORD(v14[0]) = *(a1 + 296);
    sub_100007F20(&v14[1], (a1 + 304));
    v10._os_unfair_lock_opaque = v14[0];
    __dst = 0;
    v13 = 0;
    __p = 0;
    if (v15 != v14[1])
    {
      sub_1000080CC(&__p, (v15 - v14[1]) >> 3);
    }

    v8[0] = _NSConcreteStackBlock;
    v8[1] = 3221225472;
    v8[2] = sub_100787568;
    v8[3] = &unk_100B0C738;
    v9 = v5;
    sub_1000D3CD8(&v10, v8);
    if (__p)
    {
      __dst = __p;
      operator delete(__p);
    }

    if (v14[1])
    {
      *&v15 = v14[1];
      operator delete(v14[1]);
    }
  }

  sub_1000088CC(v16);
}

void sub_100787508(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, void *a16, uint64_t a17, uint64_t a18, uint64_t a19, void *__p, uint64_t a21)
{
  if (__p)
  {
    operator delete(__p);
  }

  sub_1000088CC(v22 - 48);

  _Unwind_Resume(a1);
}

uint64_t sub_10078759C(uint64_t a1, uint64_t a2)
{
  v3 = sub_10000C798(a1, a2);
  if ((*(*v3 + 416))(v3))
  {
    v13[0] = 0;
    v13[1] = 0;
    sub_100007F88(v13, a1 + 96);
    v4 = qword_100BCE900;
    if (os_log_type_enabled(qword_100BCE900, OS_LOG_TYPE_DEBUG))
    {
      sub_100873614(a1, v4, v5, v6, v7, v8, v9, v10);
    }

    v11 = *(a1 + 328);
    sub_1000088CC(v13);
  }

  else
  {
    v11 = 0;
  }

  return v11 & 1;
}

void sub_10078764C(uint64_t a1, void *a2, char a3)
{
  v5 = a2;
  v7[0] = 0;
  v7[1] = 0;
  sub_100007F88(v7, a1 + 96);
  v6 = sub_10004B1D8(a1, v5);
  if (v6)
  {
    *(v6 + 612) = a3;
  }

  sub_1000088CC(v7);
}

void sub_1007876B8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  sub_1000088CC(&a9);

  _Unwind_Resume(a1);
}

uint64_t sub_1007876D8(uint64_t a1, void *a2)
{
  v3 = a2;
  v7[0] = 0;
  v7[1] = 0;
  sub_100007F88(v7, a1 + 96);
  v4 = sub_10004B1D8(a1, v3);
  if (v4)
  {
    v5 = *(v4 + 612);
  }

  else
  {
    v5 = 0;
  }

  sub_1000088CC(v7);

  return v5;
}

void sub_100787744(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  sub_1000088CC(&a9);

  _Unwind_Resume(a1);
}

void sub_100787764(uint64_t a1, void *a2, char a3)
{
  v5 = a2;
  v7[0] = 0;
  v7[1] = 0;
  sub_100007F88(v7, a1 + 96);
  v6 = sub_10004B1D8(a1, v5);
  if (v6)
  {
    *(v6 + 613) = a3;
  }

  sub_1000088CC(v7);
}

void sub_1007877D0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  sub_1000088CC(&a9);

  _Unwind_Resume(a1);
}

uint64_t sub_1007877F0(uint64_t a1, void *a2)
{
  v3 = a2;
  v7[0] = 0;
  v7[1] = 0;
  sub_100007F88(v7, a1 + 96);
  v4 = sub_10004B1D8(a1, v3);
  if (v4)
  {
    v5 = *(v4 + 613);
  }

  else
  {
    v5 = 0;
  }

  sub_1000088CC(v7);

  return v5 & 1;
}

void sub_10078785C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  sub_1000088CC(&a9);

  _Unwind_Resume(a1);
}

uint64_t sub_10078787C(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v94[0] = 0;
  v94[1] = 0;
  sub_100007F88(v94, a1 + 96);
  v6 = sub_10004B1D8(a1, v5);
  v7 = v6;
  if (!v6)
  {
    v10 = 0;
    goto LABEL_180;
  }

  if (*(a3 + 23) < 0)
  {
    if (a3[1] == 24)
    {
      if (**a3 == 0x4144494C41564E49 && *(*a3 + 8) == 0x454B5241435F4554 && *(*a3 + 16) == 0x4543495645445F59)
      {
        sub_100007E30(v92, "PAIRED_FOR_ALISHA");
        v34 = sub_1000463C8((v7 + 22), v92);
        if (v93 < 0)
        {
          operator delete(v92[0]);
        }

        if (v7 + 23 != v34)
        {
          sub_10000801C(v94);
          if (qword_100B508C0 != -1)
          {
            sub_1008733E4();
          }

          if (sub_10004EE74(off_100B508B8, v5))
          {
            if (os_log_type_enabled(qword_100BCE900, OS_LOG_TYPE_ERROR))
            {
              sub_1008736E8();
            }
          }

          else
          {
            sub_100782C70(a1, v5);
            v74 = qword_100BCE900;
            if (os_log_type_enabled(qword_100BCE900, OS_LOG_TYPE_DEFAULT))
            {
              *buf = 0;
              _os_log_impl(&_mh_execute_header, v74, OS_LOG_TYPE_DEFAULT, "Sucessfully deleted INVALIDATE_CARKEY_DEVICE", buf, 2u);
            }
          }
        }

        goto LABEL_186;
      }

      v8 = qword_100BCE900;
      if (!os_log_type_enabled(qword_100BCE900, OS_LOG_TYPE_DEFAULT))
      {
        goto LABEL_20;
      }
    }

    else
    {
      v8 = qword_100BCE900;
      if (!os_log_type_enabled(qword_100BCE900, OS_LOG_TYPE_DEFAULT))
      {
        goto LABEL_20;
      }
    }

    v9 = *a3;
  }

  else
  {
    v8 = qword_100BCE900;
    if (!os_log_type_enabled(qword_100BCE900, OS_LOG_TYPE_DEFAULT))
    {
LABEL_19:
      v90 = *a3;
      v91 = a3[2];
      goto LABEL_21;
    }

    v9 = a3;
  }

  *buf = 136446466;
  *&buf[4] = v9;
  *&buf[12] = 2114;
  *&buf[14] = v5;
  _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "Adding %{public}s tag to device %{public}@", buf, 0x16u);
  if ((*(a3 + 23) & 0x80000000) == 0)
  {
    goto LABEL_19;
  }

LABEL_20:
  sub_100008904(&v90, *a3, a3[1]);
LABEL_21:
  v13 = sub_1007782B8(v7, &v90);
  v10 = v13;
  if (SHIBYTE(v91) < 0)
  {
    operator delete(v90);
    if (!v10)
    {
      goto LABEL_26;
    }

    goto LABEL_25;
  }

  if (v13)
  {
LABEL_25:
    sub_10004DFB4(buf, v5);
    sub_1000C7A50(a1, buf);
  }

LABEL_26:
  sub_10000801C(v94);
  v16 = *(a3 + 23);
  if (*(a3 + 23) < 0)
  {
    if (a3[1] == 18)
    {
      v20 = **a3 == 0x746C697542736148 && *(*a3 + 8) == 0x6369767265536E69;
      if (v20 && *(*a3 + 16) == 29541)
      {
        goto LABEL_52;
      }
    }

    if (a3[1] != 16)
    {
      goto LABEL_56;
    }

    v17 = *a3;
  }

  else
  {
    v17 = a3;
    if (v16 != 16)
    {
      if (v16 != 18)
      {
LABEL_54:
        if (v16 != 12)
        {
          goto LABEL_94;
        }

        v25 = a3;
        goto LABEL_58;
      }

      if (*a3 != 0x746C697542736148 || a3[1] != 0x6369767265536E69 || *(a3 + 8) != 29541)
      {
        v16 = 18;
        goto LABEL_94;
      }

      goto LABEL_52;
    }
  }

  v23 = *v17;
  v22 = v17[1];
  if (v23 == 0x747541746F4E6F44 && v22 == 0x7463656E6E6F436FLL)
  {
LABEL_52:
    sub_100785D40(a1, 1);
    v16 = *(a3 + 23);
  }

  if ((v16 & 0x80) == 0)
  {
    goto LABEL_54;
  }

LABEL_56:
  if (a3[1] == 12)
  {
    v25 = *a3;
LABEL_58:
    v26 = *v25;
    v27 = *(v25 + 2);
    if (v26 == 0x57656C7070417349 && v27 == 1751348321)
    {
      if (qword_100B508C0 != -1)
      {
        sub_1008733E4();
      }

      sub_1007C36A8(off_100B508B8, v5);
      v16 = *(a3 + 23);
      if ((v16 & 0x80) == 0)
      {
        goto LABEL_94;
      }
    }

    else if ((v16 & 0x80) == 0)
    {
      goto LABEL_94;
    }
  }

  if (a3[1] != 35 || (v14 = memcmp(*a3, "needsMFiAuthenticationCertClass2.0c", 0x23uLL), v14) || (v35 = sub_100432610(v14, v15), v14 = (*(*v35 + 184))(v35), v16 = *(a3 + 23), *(a3 + 23) < 0))
  {
    if (a3[1] != 25 || (**a3 == 0x69464D736465656ELL ? (v29 = *(*a3 + 8) == 0x69746E6568747541) : (v29 = 0), v29 ? (v30 = *(*a3 + 16) == 0x2E346E6F69746163) : (v30 = 0), v30 ? (v31 = *(*a3 + 24) == 48) : (v31 = 0), !v31 || (v36 = sub_100432610(v14, v15), v14 = (*(*v36 + 184))(v36), v16 = *(a3 + 23), *(a3 + 23) < 0)))
    {
      if (a3[1] != 14)
      {
        v33 = 1;
        goto LABEL_100;
      }

      v32 = *a3;
      v33 = 1;
      goto LABEL_96;
    }
  }

LABEL_94:
  v33 = 0;
  if (v16 != 14)
  {
    goto LABEL_100;
  }

  v32 = a3;
LABEL_96:
  v37 = *v32;
  v38 = *(v32 + 6);
  if (v37 == 0x6874754153434E41 && v38 == 0x64657A69726F6874)
  {
LABEL_109:
    v44 = sub_100007EE8(v14, v15);
    v86[0] = _NSConcreteStackBlock;
    v86[1] = 3321888768;
    v86[2] = sub_10078851C;
    v86[3] = &unk_100B0C760;
    v87 = v5;
    if (*(a3 + 23) < 0)
    {
      sub_100008904(&__p, *a3, a3[1]);
    }

    else
    {
      __p = *a3;
      v89 = a3[2];
    }

    sub_10000CA94(v44, v86);
    if (SHIBYTE(v89) < 0)
    {
      operator delete(__p);
    }

    v16 = *(a3 + 23);
    goto LABEL_115;
  }

LABEL_100:
  if (v33)
  {
    if (a3[1] != 16)
    {
      goto LABEL_115;
    }

    v40 = *a3;
  }

  else
  {
    v40 = a3;
    if (v16 != 16)
    {
      goto LABEL_115;
    }
  }

  v42 = *v40;
  v41 = v40[1];
  if (v42 == 0x75616E5553434E41 && v41 == 0x64657A69726F6874)
  {
    goto LABEL_109;
  }

LABEL_115:
  if ((v16 & 0x80) != 0)
  {
    if (a3[1] != 9)
    {
      goto LABEL_128;
    }

    v45 = *a3;
  }

  else
  {
    v45 = a3;
    if (v16 != 9)
    {
LABEL_125:
      v49 = a3;
      if (v16 != 17)
      {
        goto LABEL_140;
      }

      goto LABEL_130;
    }
  }

  v46 = *v45;
  v47 = *(v45 + 8);
  if (v46 == 0x73756F4D454C7349 && v47 == 101)
  {
    v50 = sub_100007EE8(v14, v15);
    v83[0] = _NSConcreteStackBlock;
    v83[1] = 3221225472;
    v83[2] = sub_1007885D4;
    v83[3] = &unk_100AE1200;
    v85 = a1;
    v84 = v5;
    sub_10000CA94(v50, v83);

    v16 = *(a3 + 23);
    if ((v16 & 0x80) == 0)
    {
      goto LABEL_125;
    }
  }

  else if ((v16 & 0x80) == 0)
  {
    goto LABEL_125;
  }

LABEL_128:
  if (a3[1] != 17)
  {
    goto LABEL_140;
  }

  v49 = *a3;
LABEL_130:
  v51 = *v49;
  v52 = v49[1];
  v53 = *(v49 + 16);
  if (v51 == 0x746F6F7465756C42 && v52 == 0x746F6D6552565468 && v53 == 101)
  {
    sub_100007E30(v81, "DoNotStopAutoConnecting");
    sub_1007782B8(v7, v81);
    if (v82 < 0)
    {
      operator delete(v81[0]);
    }
  }

LABEL_140:
  v56 = *(a3 + 23);
  if (v56 < 0)
  {
    if (a3[1] != 5)
    {
      goto LABEL_159;
    }

    v57 = *a3;
  }

  else
  {
    v57 = a3;
    if (v56 != 5)
    {
      goto LABEL_159;
    }
  }

  v58 = *v57;
  v59 = *(v57 + 4);
  v60 = v58 == 1416847688 && v59 == 83;
  if (v60 && sub_100788D8C(a1, v5) == 16)
  {
    if (qword_100B53FE8 != -1)
    {
      sub_100873684();
    }

    v61 = qword_100B53FE0;
    sub_100007E30(buf, "HasTS");
    sub_100007E30(v96, "External Lock Tagged HasTS setTag");
    sub_1005780BC(v61, buf, v96, 60.0);
    if (v97 < 0)
    {
      operator delete(v96[0]);
    }

    if (buf[23] < 0)
    {
      operator delete(*buf);
    }

    if (os_log_type_enabled(qword_100BCE900, OS_LOG_TYPE_ERROR))
    {
      sub_1008736AC();
    }
  }

LABEL_159:
  if (_os_feature_enabled_impl())
  {
    v62 = *(a3 + 23);
    if ((v62 & 0x80000000) == 0)
    {
      v63 = a3;
      if (v62 != 20)
      {
        goto LABEL_174;
      }

LABEL_165:
      v64 = *v63;
      v65 = v63[1];
      v66 = *(v63 + 4);
      if (v64 == 0x525F4B53415F4144 && v65 == 0x45445F4E49415445 && v66 == 1162037590)
      {
        sub_1000C7C78(*(a1 + 256), v7);
        sub_100784264(a1);
      }

      goto LABEL_174;
    }

    if (a3[1] == 20)
    {
      v63 = *a3;
      goto LABEL_165;
    }
  }

LABEL_174:
  memset(buf, 0, sizeof(buf));
  *buf = *(a1 + 296);
  sub_100007F20(&buf[8], (a1 + 304));
  v77._os_unfair_lock_opaque = *buf;
  __dst = 0;
  v80 = 0;
  v78 = 0;
  if (*&buf[16] != *&buf[8])
  {
    sub_1000080CC(&v78, (*&buf[16] - *&buf[8]) >> 3);
  }

  v75[0] = _NSConcreteStackBlock;
  v75[1] = 3221225472;
  v75[2] = sub_100788E18;
  v75[3] = &unk_100B0C738;
  v76 = v5;
  sub_1000D3CD8(&v77, v75);
  if (v78)
  {
    __dst = v78;
    operator delete(v78);
  }

  v6 = *&buf[8];
  if (*&buf[8])
  {
    *&buf[16] = *&buf[8];
    operator delete(*&buf[8]);
  }

LABEL_180:
  v69 = sub_10005063C(v6, v5);
  v71 = v69;
  if (!v69)
  {
    goto LABEL_187;
  }

  v72 = sub_1000BE4B4(v69, v70);
  if (!(*(*v72 + 792))(v72, v71, a3))
  {
    if (os_log_type_enabled(qword_100BCE900, OS_LOG_TYPE_DEBUG))
    {
      sub_1000E5A58(v71, buf);
      sub_100873774();
    }

LABEL_186:
    v10 = 1;
    goto LABEL_187;
  }

  if (os_log_type_enabled(qword_100BCE900, OS_LOG_TYPE_ERROR))
  {
    sub_1000E5A58(v71, buf);
    sub_100873724();
  }

LABEL_187:
  sub_1000088CC(v94);

  return v10;
}

void sub_100788404(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, void *a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, int a20, __int16 a21, char a22, char a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, void *__p, uint64_t a36, int a37, __int16 a38, char a39, char a40)
{
  if (*(v41 - 145) < 0)
  {
    operator delete(*(v41 - 168));
  }

  sub_1000088CC(v41 - 144);

  _Unwind_Resume(a1);
}

void sub_10078851C(uint64_t a1)
{
  if (qword_100B512F8 != -1)
  {
    sub_1008737C4();
  }

  v2 = off_100B512F0;
  v3 = *(a1 + 32);
  v4 = (a1 + 40);
  v5 = *(a1 + 63);
  if ((v5 & 0x80000000) == 0)
  {
    if (v5 != 14)
    {
      goto LABEL_14;
    }

LABEL_8:
    v6 = *v4;
    v7 = *(v4 + 6);
    v9 = v6 == 0x6874754153434E41 && v7 == 0x64657A69726F6874;
    goto LABEL_15;
  }

  if (*(a1 + 48) == 14)
  {
    v4 = *v4;
    goto LABEL_8;
  }

LABEL_14:
  v9 = 0;
LABEL_15:

  sub_1003BF2C4(v2, v3, v9);
}

void sub_1007885E0(uint64_t a1, void *a2)
{
  v3 = a2;
  v5 = sub_10000C798(v3, v4);
  if (((*(*v5 + 392))(v5) & 1) == 0)
  {
    goto LABEL_66;
  }

  v6 = sub_10004B1D8(a1, v3);
  sub_100007E30(v48, "IsLEMouse");
  v7 = sub_1000463C8((v6 + 22), v48);
  v8 = v6 + 23;
  if (v49 < 0)
  {
    operator delete(v48[0]);
  }

  v9 = qword_100BCE900;
  v10 = os_log_type_enabled(qword_100BCE900, OS_LOG_TYPE_DEFAULT);
  if (v8 != v7)
  {
    if (v10)
    {
      LODWORD(buf) = 138543362;
      *(&buf + 4) = v3;
      _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEFAULT, "HIDIdentification - The device %{public}@ supports HID. SetLEHIDDeviceBehavior", &buf, 0xCu);
    }

    v12 = sub_10000C798(v10, v11);
    if ((*(*v12 + 296))(v12))
    {
      v13 = qword_100BCE900;
      if (os_log_type_enabled(qword_100BCE900, OS_LOG_TYPE_DEFAULT))
      {
        LOWORD(buf) = 0;
        _os_log_impl(&_mh_execute_header, v13, OS_LOG_TYPE_DEFAULT, "HIDIdentification - limitedSupportForHID - Known Poor", &buf, 2u);
      }

      sub_100007E30(__p, "HIDDeviceKnownPoorBehavior");
      sub_1007782B8(v6, __p);
      if (v47 < 0)
      {
        operator delete(__p[0]);
      }

      goto LABEL_57;
    }

    if (*(v6 + 127) < 0)
    {
      sub_100008904(&buf, v6[13], v6[14]);
    }

    else
    {
      buf = *(v6 + 13);
      v53 = v6[15];
    }

    v14 = SHIBYTE(v53);
    v15 = buf;
    v16 = +[NSString defaultCStringEncoding];
    if (v14 >= 0)
    {
      p_buf = &buf;
    }

    else
    {
      p_buf = v15;
    }

    v18 = [NSString stringWithCString:p_buf encoding:v16];
    if (SHIBYTE(v53) < 0)
    {
      operator delete(buf);
    }

    if ([qword_100BCED38 containsObject:v18])
    {
      v19 = qword_100BCE900;
      if (os_log_type_enabled(qword_100BCE900, OS_LOG_TYPE_DEFAULT))
      {
        LODWORD(buf) = 138412290;
        *(&buf + 4) = v18;
        _os_log_impl(&_mh_execute_header, v19, OS_LOG_TYPE_DEFAULT, "HIDIdentification - WAR for known good LE HID %@", &buf, 0xCu);
      }

      sub_100007E30(v44, "HIDDeviceKnownGoodBehavior");
      sub_1007782B8(v6, v44);
      if (v45 < 0)
      {
        operator delete(v44[0]);
      }

      goto LABEL_56;
    }

    v20 = v6[45];
    v21 = [qword_100BCED28 objectForKey:v18];
    v22 = [qword_100BCED30 objectForKey:v18];
    sub_100007E30(v42, "HIDDeviceKnownGoodBehavior");
    if (v8 == sub_1000463C8((v6 + 22), v42))
    {
      sub_100007E30(v40, "HIDDeviceKnownPoorBehavior");
      v23 = v8 != sub_1000463C8((v6 + 22), v40);
      if (v41 < 0)
      {
        operator delete(v40[0]);
      }
    }

    else
    {
      v23 = 1;
    }

    if (v43 < 0)
    {
      operator delete(v42[0]);
    }

    if (v23)
    {
      v24 = qword_100BCE900;
      if (os_log_type_enabled(qword_100BCE900, OS_LOG_TYPE_DEFAULT))
      {
        LOWORD(buf) = 0;
        v25 = "HIDIdentification - Device already identified as Good/Poor";
LABEL_36:
        _os_log_impl(&_mh_execute_header, v24, OS_LOG_TYPE_DEFAULT, v25, &buf, 2u);
      }
    }

    else
    {
      if ([v20 length] || *(v6 + 368) != 1)
      {
        if ([v21 isEqualToData:v20])
        {
          sub_100007E30(v38, "HIDDeviceKnownPoorBehavior");
          sub_1007782B8(v6, v38);
          if ((v39 & 0x80000000) == 0)
          {
            goto LABEL_55;
          }

          v26 = v38[0];
        }

        else if ([v22 isEqualToData:v20])
        {
          sub_100007E30(v36, "HIDDeviceKnownGoodBehavior");
          sub_1007782B8(v6, v36);
          if ((v37 & 0x80000000) == 0)
          {
            goto LABEL_55;
          }

          v26 = v36[0];
        }

        else
        {
          v27 = qword_100BCE900;
          if (os_log_type_enabled(qword_100BCE900, OS_LOG_TYPE_DEFAULT))
          {
            LOWORD(buf) = 0;
            _os_log_impl(&_mh_execute_header, v27, OS_LOG_TYPE_DEFAULT, "HIDIdentification - Device not found in known good/poor device lists", &buf, 2u);
          }

          if (_os_feature_enabled_impl())
          {
            sub_100007E30(v34, "HIDDeviceUnknownBehavior");
            sub_100776C38(v6 + 22, v34);
            if ((v35 & 0x80000000) == 0)
            {
              goto LABEL_55;
            }

            v26 = v34[0];
          }

          else
          {
            sub_100007E30(v32, "HIDDeviceUnknownBehavior");
            sub_1007782B8(v6, v32);
            if ((v33 & 0x80000000) == 0)
            {
              goto LABEL_55;
            }

            v26 = v32[0];
          }
        }

        operator delete(v26);
        goto LABEL_55;
      }

      v24 = qword_100BCE900;
      if (os_log_type_enabled(qword_100BCE900, OS_LOG_TYPE_DEFAULT))
      {
        LOWORD(buf) = 0;
        v25 = "HIDIdentification - No currently available identification data.";
        goto LABEL_36;
      }
    }

LABEL_55:

LABEL_56:
LABEL_57:
    v28 = qword_100BCE900;
    if (os_log_type_enabled(qword_100BCE900, OS_LOG_TYPE_DEFAULT))
    {
      if (*(v6 + 127) < 0)
      {
        sub_100008904(&buf, v6[13], v6[14]);
      }

      else
      {
        buf = *(v6 + 13);
        v53 = v6[15];
      }

      v29 = &buf;
      if (v53 < 0)
      {
        v29 = buf;
      }

      *v50 = 136315138;
      v51 = v29;
      _os_log_impl(&_mh_execute_header, v28, OS_LOG_TYPE_DEFAULT, "Post leHIDBehaviorKnown for %s", v50, 0xCu);
      if (SHIBYTE(v53) < 0)
      {
        operator delete(buf);
      }
    }

    v30 = +[NSDistributedNotificationCenter defaultCenter];
    v31 = [NSNotification notificationWithName:@"com.apple.bluetooth.leHIDBehaviorKnown" object:0];
    [v30 postNotification:v31];

    goto LABEL_66;
  }

  if (v10)
  {
    LOWORD(buf) = 0;
    _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEFAULT, "Not a mouse - no need to setLEHIDDeviceBehavior", &buf, 2u);
  }

LABEL_66:
}

void sub_100788C48(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15, uint64_t a16, uint64_t a17, int a18, __int16 a19, char a20, char a21, uint64_t a22, uint64_t a23, int a24, __int16 a25, char a26, char a27, uint64_t a28, uint64_t a29, int a30, __int16 a31, char a32, char a33, void *a34, uint64_t a35, int a36, __int16 a37, char a38, char a39, uint64_t a40, uint64_t a41, int a42, __int16 a43, char a44, char a45, void *a46, uint64_t a47, int a48, __int16 a49, char a50, char a51, void *a52, uint64_t a53, int a54, __int16 a55, char a56, char a57)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

uint64_t sub_100788D8C(uint64_t a1, void *a2)
{
  v3 = a2;
  v7[0] = 0;
  v7[1] = 0;
  sub_100007F88(v7, a1 + 96);
  v4 = sub_10004B1D8(a1, v3);
  if (v4)
  {
    v5 = *(v4 + 93);
  }

  else
  {
    v5 = 0;
  }

  sub_1000088CC(v7);

  return v5;
}

void sub_100788DF8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  sub_1000088CC(&a9);

  _Unwind_Resume(a1);
}

void sub_100788E4C(uint64_t a1, void *a2)
{
  v3 = a2;
  sub_100007E30(__p, "HasTS");
  sub_10078787C(a1, v3, __p);
  if (v5 < 0)
  {
    operator delete(__p[0]);
  }
}

void sub_100788EB0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

unint64_t sub_100788ED8(uint64_t a1, void *a2)
{
  v3 = a2;
  sub_100007E30(__p, "HasTS");
  v4 = sub_10004EB40(a1, v3, __p);
  if (v7 < 0)
  {
    operator delete(__p[0]);
  }

  return v4;
}

void sub_100788F44(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

void sub_100788FA0(uint64_t a1@<X0>, void *a2@<X1>, uint64_t a3@<X8>)
{
  v5 = a2;
  *(a3 + 16) = 0;
  *(a3 + 8) = 0;
  *a3 = a3 + 8;
  v6 = sub_10005063C(v5, v5);
  v22[0] = 0;
  v22[1] = 0;
  sub_100007F88(v22, a1 + 96);
  v7 = sub_10004B1D8(a1, v5);
  if (v7)
  {
    v7 = sub_1000860FC(a3, v7[22], v7 + 23);
  }

  if (v6)
  {
    v9 = sub_1000BE4B4(v7, v8);
    v10 = (*(*v9 + 824))(v9, v6);
    v11 = v10;
    if (v10)
    {
      v20 = 0u;
      v21 = 0u;
      v18 = 0u;
      v19 = 0u;
      v12 = v10;
      v13 = [v12 countByEnumeratingWithState:&v18 objects:v23 count:16];
      if (v13)
      {
        v14 = *v19;
        do
        {
          v15 = 0;
          do
          {
            if (*v19 != v14)
            {
              objc_enumerationMutation(v12);
            }

            sub_100007E30(__p, [*(*(&v18 + 1) + 8 * v15) UTF8String]);
            sub_100071970(a3, __p, __p);
            if (v17 < 0)
            {
              operator delete(__p[0]);
            }

            v15 = v15 + 1;
          }

          while (v13 != v15);
          v13 = [v12 countByEnumeratingWithState:&v18 objects:v23 count:16];
        }

        while (v13);
      }
    }
  }

  sub_1000088CC(v22);
}

void sub_100789170(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, char a25)
{
  sub_1000088CC(&a25);
  sub_10004B61C(v26, *(v26 + 8));

  _Unwind_Resume(a1);
}

id sub_1007891E0(uint64_t a1, void *a2)
{
  v3 = a2;
  v7[0] = 0;
  v7[1] = 0;
  sub_100007F88(v7, a1 + 96);
  v4 = sub_10004B1D8(a1, v3);
  if (v4)
  {
    v5 = sub_1000C7A04(v4);
  }

  else
  {
    v5 = &__NSArray0__struct;
  }

  sub_1000088CC(v7);

  return v5;
}

void sub_100789268(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  sub_1000088CC(&a9);

  _Unwind_Resume(a1);
}

id sub_10078928C(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v10[0] = 0;
  v10[1] = 0;
  sub_100007F88(v10, a1 + 96);
  if (v5)
  {
    if (v6)
    {
      v7 = sub_10004B1D8(a1, v5);
      if (v7)
      {
        v8 = sub_10077C3B8(v7, v6);
        goto LABEL_10;
      }
    }

    else if (os_log_type_enabled(qword_100BCE900, OS_LOG_TYPE_ERROR))
    {
      sub_100873848();
    }
  }

  else if (os_log_type_enabled(qword_100BCE900, OS_LOG_TYPE_ERROR))
  {
    sub_10085A73C();
  }

  v8 = 0;
LABEL_10:
  sub_1000088CC(v10);

  return v8;
}

void sub_100789384(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  sub_1000088CC(&a9);

  _Unwind_Resume(a1);
}

uint64_t sub_1007893AC(uint64_t a1, void *a2, void *a3, void *a4)
{
  v7 = a2;
  v8 = a3;
  v9 = a4;
  if (v7)
  {
    if (v8 && [v8 length] < 0x401)
    {
      if ([v9 length] <= 0x400)
      {
        v11 = sub_10004B1D8(a1, v7);
        if (v11)
        {
          v13[0] = 0;
          v13[1] = 0;
          sub_100007F88(v13, a1 + 96);
          if (sub_10077C454(v11, v8, v9))
          {
            sub_10000801C(v13);
            sub_10004DFB4(v14, v7);
            sub_1000C7A50(a1, v14);
          }

          sub_1000088CC(v13);
          v10 = 0;
        }

        else
        {
          if (os_log_type_enabled(qword_100BCE900, OS_LOG_TYPE_ERROR))
          {
            sub_100873884();
          }

          v10 = 2;
        }
      }

      else
      {
        v10 = 11;
      }
    }

    else
    {
      if (os_log_type_enabled(qword_100BCE900, OS_LOG_TYPE_ERROR))
      {
        sub_100873848();
      }

      v10 = 10;
    }
  }

  else
  {
    if (os_log_type_enabled(qword_100BCE900, OS_LOG_TYPE_ERROR))
    {
      sub_10085A73C();
    }

    v10 = 1;
  }

  return v10;
}

void sub_100789558(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  sub_1000088CC(va);

  _Unwind_Resume(a1);
}

void sub_100789594(uint64_t a1, void *a2, const std::string *a3)
{
  v5 = a2;
  v7[0] = 0;
  v7[1] = 0;
  sub_100007F88(v7, a1 + 96);
  v6 = sub_10004B1D8(a1, v5);
  if (v6)
  {
    std::string::operator=((v6 + 26), a3);
    sub_10004DFB4(v8, v5);
    sub_1000C7A50(a1, v8);
  }

  sub_1000088CC(v7);
}

BOOL sub_100789678(uint64_t a1, void *a2)
{
  v3 = a2;
  v8[0] = 0;
  v8[1] = 0;
  sub_100007F88(v8, a1 + 96);
  v4 = sub_10004B1D8(a1, v3);
  if (v4)
  {
    v5 = *(v4 + 231);
    if (v5 < 0)
    {
      v5 = v4[27];
    }

    v6 = v5 != 0;
  }

  else
  {
    v6 = 0;
  }

  sub_1000088CC(v8);

  return v6;
}

void sub_1007896F4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  sub_1000088CC(&a9);

  _Unwind_Resume(a1);
}

id sub_100789714(uint64_t a1, const void **a2)
{
  v26[0] = 0;
  v26[1] = 0;
  sub_100007F88(v26, a1 + 96);
  v24 = 0u;
  v25 = 0u;
  v22 = 0u;
  v23 = 0u;
  v5 = *(a1 + 176);
  v6 = [v5 countByEnumeratingWithState:&v22 objects:v27 count:16];
  if (!v6)
  {
    goto LABEL_31;
  }

  v7 = *v23;
  do
  {
    v8 = 0;
    do
    {
      if (*v23 != v7)
      {
        objc_enumerationMutation(v5);
      }

      v9 = *(*(&v22 + 1) + 8 * v8);
      v10 = [*(a1 + 176) objectForKey:{v9, __p[0]}];
      __p[0] = 0;
      __p[1] = 0;
      v21 = 0;
      if (v10[231] < 0)
      {
        sub_100008904(__p, *(v10 + 26), *(v10 + 27));
      }

      else
      {
        *__p = *(v10 + 13);
        v21 = *(v10 + 28);
      }

      v11 = HIBYTE(v21);
      if (v21 >= 0)
      {
        v12 = HIBYTE(v21);
      }

      else
      {
        v12 = __p[1];
      }

      if (!v12)
      {
        goto LABEL_23;
      }

      v13 = *(a2 + 23);
      v14 = v13;
      if (v13 < 0)
      {
        v13 = a2[1];
      }

      if (v13 != v12 || (v14 >= 0 ? (v15 = a2) : (v15 = *a2), v21 >= 0 ? (v16 = __p) : (v16 = __p[0]), memcmp(v15, v16, v12)))
      {
LABEL_23:
        v17 = 1;
        if ((v11 & 0x80) == 0)
        {
          goto LABEL_25;
        }

LABEL_24:
        operator delete(__p[0]);
        goto LABEL_25;
      }

      v2 = v9;
      v17 = 0;
      if (v21 < 0)
      {
        goto LABEL_24;
      }

LABEL_25:
      if (!v17)
      {
        goto LABEL_32;
      }

      v8 = v8 + 1;
    }

    while (v6 != v8);
    v18 = [v5 countByEnumeratingWithState:&v22 objects:v27 count:16];
    v6 = v18;
  }

  while (v18);
LABEL_31:
  v2 = 0;
LABEL_32:

  sub_1000088CC(v26);

  return v2;
}

void sub_100789908(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, ...)
{
  va_start(va, a20);

  sub_1000088CC(va);
  _Unwind_Resume(a1);
}

uint64_t sub_100789938(uint64_t a1, void *a2)
{
  v3 = a2;
  v7[0] = 0;
  v7[1] = 0;
  sub_100007F88(v7, a1 + 96);
  v4 = sub_10004B1D8(a1, v3);
  if (v4)
  {
    v5 = *(v4 + 128);
  }

  else
  {
    v5 = 0;
  }

  sub_1000088CC(v7);

  return v5;
}

void sub_1007899A4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  sub_1000088CC(&a9);

  _Unwind_Resume(a1);
}

void sub_1007899C4(uint64_t a1, void *a2, __int16 a3)
{
  v5 = a2;
  v7[0] = 0;
  v7[1] = 0;
  sub_100007F88(v7, a1 + 96);
  v6 = sub_10004B1D8(a1, v5);
  if (v6)
  {
    *(v6 + 128) = a3;
  }

  sub_1000088CC(v7);
}

void sub_100789A30(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  sub_1000088CC(&a9);

  _Unwind_Resume(a1);
}

void sub_100789A50(uint64_t a1, char a2)
{
  if ((a2 & 1) == 0)
  {
    sub_100785D40(a1, 1);
  }
}

uint64_t sub_100789A60(uint64_t a1, void *a2)
{
  v3 = a2;
  v7[0] = 0;
  v7[1] = 0;
  sub_100007F88(v7, a1 + 96);
  v4 = sub_10004B1D8(a1, v3);
  if (v4)
  {
    v5 = *(v4 + 258);
  }

  else
  {
    v5 = 0;
  }

  sub_1000088CC(v7);

  return v5;
}

void sub_100789ACC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  sub_1000088CC(&a9);

  _Unwind_Resume(a1);
}

void sub_100789AEC(uint64_t a1, void *a2, uint64_t a3)
{
  v3 = a3;
  v5 = a2;
  v7[0] = 0;
  v7[1] = 0;
  sub_100007F88(v7, a1 + 96);
  if ((v3 - 1) >= 7 && os_log_type_enabled(qword_100BCE900, OS_LOG_TYPE_FAULT))
  {
    sub_1008738C0();
  }

  v6 = sub_10004B1D8(a1, v5);
  if (v6)
  {
    *(v6 + 258) = v3;
  }

  sub_1000088CC(v7);
}

void sub_100789B90(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  sub_1000088CC(&a9);

  _Unwind_Resume(a1);
}

uint64_t sub_100789BB0(uint64_t a1, void *a2)
{
  v3 = a2;
  v7[0] = 0;
  v7[1] = 0;
  sub_100007F88(v7, a1 + 96);
  v4 = sub_10004B1D8(a1, v3);
  if (v4)
  {
    v5 = *(v4 + 259);
  }

  else
  {
    v5 = 0;
  }

  sub_1000088CC(v7);

  return v5;
}

void sub_100789C1C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  sub_1000088CC(&a9);

  _Unwind_Resume(a1);
}

void sub_100789C3C(uint64_t a1, void *a2, uint64_t a3)
{
  v3 = a3;
  v5 = a2;
  v7[0] = 0;
  v7[1] = 0;
  sub_100007F88(v7, a1 + 96);
  if (v3 >= 4 && os_log_type_enabled(qword_100BCE900, OS_LOG_TYPE_FAULT))
  {
    sub_100873930();
  }

  v6 = sub_10004B1D8(a1, v5);
  if (v6)
  {
    *(v6 + 259) = v3;
  }

  sub_1000088CC(v7);
}

void sub_100789CDC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  sub_1000088CC(&a9);

  _Unwind_Resume(a1);
}

uint64_t sub_100789CFC(uint64_t a1, void *a2)
{
  v3 = a2;
  v7[0] = 0;
  v7[1] = 0;
  sub_100007F88(v7, a1 + 96);
  v4 = sub_10004B1D8(a1, v3);
  if (v4)
  {
    v5 = *(v4 + 264);
  }

  else
  {
    v5 = 0;
  }

  sub_1000088CC(v7);

  return v5 & 1;
}

void sub_100789D68(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  sub_1000088CC(&a9);

  _Unwind_Resume(a1);
}

void sub_100789D88(uint64_t a1, void *a2, uint64_t a3)
{
  v5 = a2;
  v14[0] = 0;
  v14[1] = 0;
  sub_100007F88(v14, a1 + 96);
  v6 = qword_100BCE900;
  if (os_log_type_enabled(qword_100BCE900, OS_LOG_TYPE_DEBUG))
  {
    sub_1008739A0(a3, v6, v7, v8, v9, v10, v11, v12);
  }

  v13 = sub_10004B1D8(a1, v5);
  if (v13)
  {
    *(v13 + 264) = a3;
  }

  sub_1000088CC(v14);
}

void sub_100789E20(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  sub_1000088CC(&a9);

  _Unwind_Resume(a1);
}

uint64_t sub_100789E40(uint64_t a1, void *a2)
{
  v3 = a2;
  v7[0] = 0;
  v7[1] = 0;
  sub_100007F88(v7, a1 + 96);
  v4 = sub_10004B1D8(a1, v3);
  if (v4)
  {
    v5 = *(v4 + 265);
  }

  else
  {
    v5 = 0;
  }

  sub_1000088CC(v7);

  return v5 & 1;
}

void sub_100789EAC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  sub_1000088CC(&a9);

  _Unwind_Resume(a1);
}

void sub_100789ECC(uint64_t a1, void *a2, uint64_t a3)
{
  v5 = a2;
  v16[0] = 0;
  v16[1] = 0;
  sub_100007F88(v16, a1 + 96);
  v6 = qword_100BCE900;
  if (os_log_type_enabled(qword_100BCE900, OS_LOG_TYPE_DEBUG))
  {
    sub_100873A10(a3, v6, v7, v8, v9, v10, v11, v12);
  }

  v13 = sub_10004B1D8(a1, v5);
  if (v13)
  {
    *(v13 + 265) = a3;
    if (*(v13 + 164) == 1 && a3 != 0)
    {
      if (os_log_type_enabled(qword_100BCE900, OS_LOG_TYPE_DEBUG))
      {
        sub_100873A80();
      }

      if (qword_100B508B0 != -1)
      {
        sub_100873014();
      }

      v15 = off_100B508A8;
      sub_10004DFB4(v17, v5);
      sub_10076684C(v15, v17);
    }
  }

  sub_1000088CC(v16);
}

void sub_100789FF8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  sub_1000088CC(va);

  _Unwind_Resume(a1);
}

uint64_t sub_10078A024(uint64_t a1, void *a2)
{
  v3 = a2;
  v7[0] = 0;
  v7[1] = 0;
  sub_100007F88(v7, a1 + 96);
  v4 = sub_10004B1D8(a1, v3);
  if (v4)
  {
    v5 = *(v4 + 266);
  }

  else
  {
    v5 = 0;
  }

  sub_1000088CC(v7);

  return v5 & 1;
}

void sub_10078A090(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  sub_1000088CC(&a9);

  _Unwind_Resume(a1);
}

void sub_10078A0B0(uint64_t a1, void *a2, char a3)
{
  v5 = a2;
  v7[0] = 0;
  v7[1] = 0;
  sub_100007F88(v7, a1 + 96);
  v6 = sub_10004B1D8(a1, v5);
  if (v6)
  {
    *(v6 + 266) = a3;
  }

  sub_1000088CC(v7);
}

void sub_10078A11C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  sub_1000088CC(&a9);

  _Unwind_Resume(a1);
}

uint64_t sub_10078A13C(uint64_t a1, void *a2)
{
  v3 = a2;
  v7[0] = 0;
  v7[1] = 0;
  sub_100007F88(v7, a1 + 96);
  v4 = sub_10004B1D8(a1, v3);
  if (v4)
  {
    v5 = *(v4 + 385);
  }

  else
  {
    v5 = 0;
  }

  sub_1000088CC(v7);

  return v5;
}

void sub_10078A1A8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  sub_1000088CC(&a9);

  _Unwind_Resume(a1);
}

void sub_10078A1C8(uint64_t a1, void *a2, char a3)
{
  v5 = a2;
  v7[0] = 0;
  v7[1] = 0;
  sub_100007F88(v7, a1 + 96);
  v6 = sub_10004B1D8(a1, v5);
  if (v6)
  {
    *(v6 + 385) = a3;
  }

  sub_1000088CC(v7);
}

void sub_10078A234(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  sub_1000088CC(&a9);

  _Unwind_Resume(a1);
}

void sub_10078A254(uint64_t a1, void *a2, char a3)
{
  v5 = a2;
  v7[0] = 0;
  v7[1] = 0;
  sub_100007F88(v7, a1 + 96);
  v6 = sub_10004B1D8(a1, v5);
  if (v6)
  {
    *(v6 + 384) = a3;
  }

  sub_1000088CC(v7);
}

void sub_10078A2C0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  sub_1000088CC(&a9);

  _Unwind_Resume(a1);
}

uint64_t sub_10078A2E0(uint64_t a1, void *a2)
{
  v3 = a2;
  v7[0] = 0;
  v7[1] = 0;
  sub_100007F88(v7, a1 + 96);
  v4 = sub_10004B1D8(a1, v3);
  if (v4)
  {
    v5 = *(v4 + 197);
  }

  else
  {
    v5 = 0;
  }

  sub_1000088CC(v7);

  return v5;
}

void sub_10078A34C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  sub_1000088CC(&a9);

  _Unwind_Resume(a1);
}

void sub_10078A36C(uint64_t a1, void *a2, __int16 a3)
{
  v5 = a2;
  v7[0] = 0;
  v7[1] = 0;
  sub_100007F88(v7, a1 + 96);
  v6 = sub_10004B1D8(a1, v5);
  if (v6)
  {
    *(v6 + 197) = a3;
  }

  sub_1000088CC(v7);
}

void sub_10078A3D8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  sub_1000088CC(&a9);

  _Unwind_Resume(a1);
}

uint64_t sub_10078A3F8(uint64_t a1, void *a2)
{
  v3 = a2;
  v7[0] = 0;
  v7[1] = 0;
  sub_100007F88(v7, a1 + 96);
  v4 = sub_10004B1D8(a1, v3);
  if (v4)
  {
    v5 = *(v4 + 396);
  }

  else
  {
    v5 = 0;
  }

  sub_1000088CC(v7);

  return v5 & 1;
}

void sub_10078A464(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  sub_1000088CC(&a9);

  _Unwind_Resume(a1);
}

void sub_10078A484(uint64_t a1, void *a2, char a3)
{
  v5 = a2;
  v7[0] = 0;
  v7[1] = 0;
  sub_100007F88(v7, a1 + 96);
  v6 = sub_10004B1D8(a1, v5);
  if (v6)
  {
    *(v6 + 396) = a3;
  }

  sub_1000088CC(v7);
}

void sub_10078A4F0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  sub_1000088CC(&a9);

  _Unwind_Resume(a1);
}

void sub_10078A510(uint64_t a1, void *a2, char a3)
{
  v23[0] = 0;
  v23[1] = 0;
  v16 = a2;
  sub_100007F88(v23, a1 + 96);
  v21 = 0u;
  v22 = 0u;
  v19 = 0u;
  v20 = 0u;
  v4 = v16;
  v5 = [v4 countByEnumeratingWithState:&v19 objects:v28 count:16];
  if (v5)
  {
    v17 = *v20;
    do
    {
      for (i = 0; i != v5; i = i + 1)
      {
        if (*v20 != v17)
        {
          objc_enumerationMutation(v4);
        }

        v7 = *(*(&v19 + 1) + 8 * i);
        v8 = objc_autoreleasePoolPush();
        v9 = [v4 objectForKeyedSubscript:v7];
        v10 = [v9 unsignedLongLongValue];

        v11 = qword_100BCE900;
        if (os_log_type_enabled(qword_100BCE900, OS_LOG_TYPE_INFO))
        {
          v12 = sub_100063D0C(v10);
          *buf = 138543618;
          v25 = v7;
          v26 = 2114;
          v27 = v12;
          _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_INFO, "Attempting to load paired device %{public}@ (%{public}@) from the device cache", buf, 0x16u);
        }

        v13 = sub_10041FE60(*(a1 + 256), v7, v10, a3);
        if (v13)
        {
          sub_100099554(a1, v13);
        }

        v14 = qword_100BCE900;
        if (os_log_type_enabled(qword_100BCE900, OS_LOG_TYPE_DEFAULT))
        {
          v15 = sub_100063D0C(v10);
          *buf = 138543362;
          v25 = v15;
          _os_log_impl(&_mh_execute_header, v14, OS_LOG_TYPE_DEFAULT, "could not find (%{public}@) in the paired devices database", buf, 0xCu);
        }

        objc_autoreleasePoolPop(v8);
      }

      v5 = [v4 countByEnumeratingWithState:&v19 objects:v28 count:16];
    }

    while (v5);
  }

  sub_1000088CC(v23);
}

void sub_10078A7DC(_Unwind_Exception *a1, uint64_t a2, void *a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, void *a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, ...)
{
  va_start(va, a24);

  sub_1000088CC(va);
  _Unwind_Resume(a1);
}

BOOL sub_10078A840(uint64_t a1, const unsigned __int8 *a2, uint64_t a3)
{
  v4 = *(a1 + 256);
  v5 = sub_10004DF60(a2);
  v6 = sub_1004200D8(v4, v5, a3) != 0;

  return v6;
}

void sub_10078A8AC(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v9[0] = 0;
  v9[1] = 0;
  sub_100007F88(v9, a1 + 96);
  v7 = sub_10004B1D8(a1, v5);
  v8 = v7[1];
  v7[1] = v6;

  sub_1000088CC(v9);
}

void sub_10078A924(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  sub_1000088CC(&a9);

  _Unwind_Resume(a1);
}

id sub_10078A948(uint64_t a1, void *a2)
{
  v3 = a2;
  v6[0] = 0;
  v6[1] = 0;
  sub_100007F88(v6, a1 + 96);
  v4 = sub_10004B1D8(a1, v3)[1];
  sub_1000088CC(v6);

  return v4;
}

void sub_10078A9C0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  sub_1000088CC(&a9);

  _Unwind_Resume(a1);
}

void sub_10078A9E0(uint64_t a1@<X0>, void *a2@<X1>, unsigned __int8 *a3@<X8>)
{
  v5 = a2;
  v19[0] = 0;
  v19[1] = 0;
  sub_100007F88(v19, a1 + 96);
  v24[0] = 0;
  v24[1] = 0;
  sub_10004DFB4(v24, v5);
  v6 = sub_10078AD6C(v24);
  v7 = v6;
  if (!v6)
  {
    if (os_log_type_enabled(qword_100BCE900, OS_LOG_TYPE_ERROR))
    {
      sub_100873D3C();
    }

    goto LABEL_27;
  }

  v8 = *(a1 + 192);
  if (v8)
  {
    v9 = a1 + 192;
    do
    {
      v10 = *(v8 + 32);
      v11 = v10 >= v6;
      v12 = v10 < v6;
      if (v11)
      {
        v9 = v8;
      }

      v8 = *(v8 + 8 * v12);
    }

    while (v8);
    if (v9 != a1 + 192 && v6 >= *(v9 + 32))
    {
      v16 = sub_10004DF60((v9 + 40));
      v17 = [v5 isEqual:v16];

      if (v17)
      {
        sub_10004ADAC(a1, (v9 + 40));
      }

      if (os_log_type_enabled(qword_100BCE900, OS_LOG_TYPE_ERROR))
      {
        v18 = sub_100063D0C(v7);
        sub_1000D67B4((v9 + 40), buf);
        sub_1008730A0();
      }

LABEL_27:
      uuid_clear(a3);
      goto LABEL_28;
    }
  }

  v13 = sub_10009A778(*(a1 + 256), v5);
  v14 = qword_100BCE900;
  if (!v13)
  {
    if (os_log_type_enabled(qword_100BCE900, OS_LOG_TYPE_DEBUG))
    {
      sub_100063D0C(v7);
      objc_claimAutoreleasedReturnValue();
      sub_100873CF4();
    }

    operator new();
  }

  if (os_log_type_enabled(qword_100BCE900, OS_LOG_TYPE_DEFAULT))
  {
    v15 = sub_100063D0C(v7);
    *buf = 138543618;
    v21 = v15;
    v22 = 2114;
    v23 = v5;
    _os_log_impl(&_mh_execute_header, v14, OS_LOG_TYPE_DEFAULT, "Address %{public}@ is already associated with device %{public}@", buf, 0x16u);
  }

  if ([*(a1 + 176) objectForKey:v5] && os_log_type_enabled(qword_100BCE900, OS_LOG_TYPE_FAULT))
  {
    sub_100063D0C(v7);
    objc_claimAutoreleasedReturnValue();
    sub_100873140();
  }

  sub_10004DFB4(a3, *v13);
LABEL_28:
  sub_1000088CC(v19);
}

void sub_10078ACE0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  sub_1000088CC(&a9);

  _Unwind_Resume(a1);
}

unint64_t sub_10078AD6C(const void *a1)
{
  *&v2[3] = 0;
  *v2 = 0;
  if (sub_1001BBFC4(a1, 16, v2, 7))
  {
    return 0;
  }

  else
  {
    return (v2[1] << 40) | (v2[2] << 32) | (v2[3] << 24) | (v2[4] << 16) | (v2[5] << 8) | v2[6] | (v2[0] << 48);
  }
}

void sub_10078ADE4(uint64_t a1, const unsigned __int8 *a2, uint64_t a3)
{
  if ((a3 & 0xFF000000000000) != 0)
  {
    v6 = qword_100BCE900;
    if (os_log_type_enabled(qword_100BCE900, OS_LOG_TYPE_FAULT))
    {
      memset(out, 0, 37);
      uuid_unparse_upper(a2, out);
      sub_100007E30(__p, out);
      if (v11 >= 0)
      {
        v9 = __p;
      }

      else
      {
        v9 = __p[0];
      }

      *out = 136446210;
      *&out[4] = v9;
      _os_log_fault_impl(&_mh_execute_header, v6, OS_LOG_TYPE_FAULT, "Trying to remove duplicates of an address that is not public for device %{public}s", out, 0xCu);
      if (v11 < 0)
      {
        operator delete(__p[0]);
      }
    }
  }

  v7 = *(a1 + 256);
  v8 = sub_10004DF60(a2);
  sub_10041FFC8(v7, a3, v8);
}

uint64_t sub_10078AF34(uint64_t a1, const unsigned __int8 *a2)
{
  v8[0] = 0;
  v8[1] = 0;
  sub_100007F88(v8, a1 + 96);
  v4 = sub_10004DF60(a2);
  v5 = sub_10004B1D8(a1, v4);

  if (v5)
  {
    v6 = v5[3];
  }

  else
  {
    v6 = 0;
  }

  sub_1000088CC(v8);
  return v6;
}

uint64_t sub_10078AFD0(uint64_t a1, unsigned __int8 *a2, unint64_t a3, int a4)
{
  v26[1] = 0;
  v27 = a3;
  v26[0] = 0;
  sub_100007F88(v26, a1 + 96);
  v8 = sub_10004DF60(a2);
  v9 = sub_10004B1D8(a1, v8);

  if (v9)
  {
    if (BYTE6(a3) && (BYTE6(a3) != 1 || (~a3 & 0xC00000000000) != 0) && os_log_type_enabled(qword_100BCE900, OS_LOG_TYPE_FAULT))
    {
      sub_1000D67B4(a2, v25);
      sub_100873DAC();
    }

    v10 = v9[3];
    if (v10)
    {
      if (v10 != v9[2])
      {
        v11 = *(a1 + 192);
        if (v11)
        {
          v12 = (a1 + 192);
          do
          {
            v13 = *(v11 + 32);
            v14 = v13 >= a3;
            v15 = v13 < a3;
            if (v14)
            {
              v12 = v11;
            }

            v11 = *(v11 + 8 * v15);
          }

          while (v11);
          if (v12 != (a1 + 192) && v12[4] <= a3)
          {
            sub_10002717C((a1 + 184), v12);
            operator delete(v12);
          }
        }
      }
    }

    v16 = qword_100BCE900;
    if (os_log_type_enabled(qword_100BCE900, OS_LOG_TYPE_INFO))
    {
      v17 = sub_100063D0C(a3);
      memset(out, 0, 37);
      uuid_unparse_upper(a2, out);
      sub_100007E30(__p, out);
      if (v24 >= 0)
      {
        v18 = __p;
      }

      else
      {
        v18 = __p[0];
      }

      *buf = 138543618;
      v29 = v17;
      v30 = 2082;
      v31 = v18;
      _os_log_impl(&_mh_execute_header, v16, OS_LOG_TYPE_INFO, "Now using resolved address %{public}@ for resolvable device %{public}s", buf, 0x16u);
      if (v24 < 0)
      {
        operator delete(__p[0]);
      }
    }

    v9[3] = a3;
    if (a4)
    {
      sub_1000C7A50(a1, a2);
    }

    else
    {
      v19 = qword_100BCE900;
      if (os_log_type_enabled(qword_100BCE900, OS_LOG_TYPE_DEFAULT))
      {
        memset(out, 0, 37);
        uuid_unparse_upper(a2, out);
        sub_100007E30(__p, out);
        if (v24 >= 0)
        {
          v20 = __p;
        }

        else
        {
          v20 = __p[0];
        }

        *buf = 136446210;
        v29 = v20;
        _os_log_impl(&_mh_execute_header, v19, OS_LOG_TYPE_DEFAULT, "Warning: Not persisting device %{public}s to database", buf, 0xCu);
        if (v24 < 0)
        {
          operator delete(__p[0]);
        }
      }
    }

    *out = &v27;
    v21 = sub_100774770(a1 + 184, &v27, &unk_1008A9BD0, out, __p);
    uuid_copy(v21 + 40, a2);
  }

  return sub_1000088CC(v26);
}

void sub_10078B2E8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, ...)
{
  va_start(va, a15);
  sub_1000088CC(va);
  _Unwind_Resume(a1);
}

BOOL sub_10078B32C(uint64_t a1, void *a2, _DWORD *a3)
{
  v5 = a2;
  v9[0] = 0;
  v9[1] = 0;
  sub_100007F88(v9, a1 + 96);
  v6 = sub_10004B1D8(a1, v5);
  if (v6)
  {
    *a3 = *(v6 + 32);
  }

  v7 = v6 != 0;
  sub_1000088CC(v9);

  return v7;
}

void sub_10078B3A8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  sub_1000088CC(&a9);

  _Unwind_Resume(a1);
}

uint64_t sub_10078B3C8(uint64_t a1, void *a2)
{
  v3 = a2;
  v7[0] = 0;
  v7[1] = 0;
  sub_100007F88(v7, a1 + 96);
  v4 = sub_10004B1D8(a1, v3);
  if (v4)
  {
    v5 = *(v4 + 476);
  }

  else
  {
    v5 = 0;
  }

  sub_1000088CC(v7);

  return v5;
}

void sub_10078B434(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  sub_1000088CC(&a9);

  _Unwind_Resume(a1);
}

void sub_10078B454(uint64_t a1, void *a2, char a3)
{
  v5 = a2;
  v7[0] = 0;
  v7[1] = 0;
  sub_100007F88(v7, a1 + 96);
  v6 = sub_10004B1D8(a1, v5);
  if (v6)
  {
    *(v6 + 476) = a3;
    sub_10004B5C4(v6, a3);
  }

  sub_1000088CC(v7);
}

void sub_10078B4E8(uint64_t a1, void *a2, char a3)
{
  v5 = a2;
  v7[0] = 0;
  v7[1] = 0;
  sub_100007F88(v7, a1 + 96);
  v6 = sub_10004B1D8(a1, v5);
  if (v6)
  {
    *(v6 + 163) = a3;
  }

  sub_1000088CC(v7);
}

void sub_10078B554(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  sub_1000088CC(&a9);

  _Unwind_Resume(a1);
}

void sub_10078B574(uint64_t a1, void *a2, int a3, uint64_t a4)
{
  v7 = a2;
  v20[0] = 0;
  v20[1] = 0;
  sub_100007F88(v20, a1 + 96);
  v8 = sub_10004B1D8(a1, v7);
  v9 = v8;
  if (v8)
  {
    sub_10077BBC0(v8, a3, a4);
    if (a3)
    {
      sub_100007E30(__p, "DoNotAutoConnect");
      v12 = sub_1000463C8((v9 + 22), __p);
      v13 = v9 + 23;
      if (v19 < 0)
      {
        operator delete(__p[0]);
      }

      if (v13 != v12)
      {
        sub_10078380C(a1, v7, @"DoNotAutoConnect");
      }
    }

    else if (*(v9 + 488) == 1)
    {
      v14 = sub_100007EE8(v10, v11);
      v15[0] = _NSConcreteStackBlock;
      v15[1] = 3221225472;
      v15[2] = sub_10078B718;
      v15[3] = &unk_100AE1200;
      v17 = a1;
      v16 = v7;
      sub_10008E008(v14, 1000, v15);
    }
  }

  sub_1000088CC(v20);
}

void sub_10078B6D0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, void *a14, uint64_t a15, void *__p, uint64_t a17, int a18, __int16 a19, char a20, char a21)
{
  sub_1000088CC(v22 - 64);

  _Unwind_Resume(a1);
}

void sub_10078B718(uint64_t a1)
{
  v2 = *(a1 + 40);
  v3 = qword_100BCE900;
  if (os_log_type_enabled(qword_100BCE900, OS_LOG_TYPE_DEFAULT))
  {
    v4 = *(a1 + 32);
    v5 = 138543362;
    v6 = v4;
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "deleting pending device %{public}@", &v5, 0xCu);
  }

  sub_100782C70(v2, *(a1 + 32));
}

void sub_10078B7E0(uint64_t a1, void *a2, char a3)
{
  v5 = a2;
  v7[0] = 0;
  v7[1] = 0;
  sub_100007F88(v7, a1 + 96);
  v6 = sub_10004B1D8(a1, v5);
  if (v6)
  {
    *(v6 + 165) = a3;
  }

  sub_1000088CC(v7);
}

void sub_10078B84C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  sub_1000088CC(&a9);

  _Unwind_Resume(a1);
}

void sub_10078B86C(uint64_t a1, void *a2, _BYTE *a3, _BYTE *a4, char *a5)
{
  v9 = a2;
  v13[0] = 0;
  v13[1] = 0;
  sub_100007F88(v13, a1 + 96);
  v10 = sub_10004B1D8(a1, v9);
  if (v10)
  {
    *a3 = *(v10 + 165);
    *a4 = *(v10 + 529);
    if (*(v10 + 528))
    {
      v11 = v10[65] == 0;
    }

    else
    {
      v11 = 1;
    }

    v12 = !v11;
    *a5 = v12;
  }

  sub_1000088CC(v13);
}

void sub_10078B90C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  sub_1000088CC(&a9);

  _Unwind_Resume(a1);
}

uint64_t sub_10078B92C(uint64_t a1)
{
  v16[0] = 0;
  v16[1] = 0;
  sub_100007F88(v16, a1 + 96);
  v14 = 0u;
  v15 = 0u;
  v12 = 0u;
  v13 = 0u;
  v2 = *(a1 + 176);
  v3 = [v2 countByEnumeratingWithState:&v12 objects:v17 count:16];
  if (v3)
  {
    v4 = *v13;
    do
    {
      v5 = 0;
      do
      {
        if (*v13 != v4)
        {
          objc_enumerationMutation(v2);
        }

        v6 = [*(a1 + 176) objectForKey:{*(*(&v12 + 1) + 8 * v5), v12}];
        v7 = *(v6 + 528);
        v8 = v6[65];
        v9 = v8;
        if (v7)
        {
          v10 = v8 == 0;
        }

        else
        {
          v10 = 1;
        }

        if (!v10)
        {
          sub_10077A220(v6, 1);
        }

        v5 = v5 + 1;
      }

      while (v3 != v5);
      v3 = [v2 countByEnumeratingWithState:&v12 objects:v17 count:16];
    }

    while (v3);
  }

  return sub_1000088CC(v16);
}

void sub_10078BA78(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, ...)
{
  va_start(va, a17);

  sub_1000088CC(va);
  _Unwind_Resume(a1);
}

void sub_10078BAB0(uint64_t a1, void *a2, int a3)
{
  v5 = a2;
  v7[0] = 0;
  v7[1] = 0;
  sub_100007F88(v7, a1 + 96);
  v6 = sub_10004B1D8(a1, v5);
  if (v6)
  {
    sub_10077BC08(v6, a3);
  }

  sub_1000088CC(v7);
}

uint64_t sub_10078BB40(uint64_t a1, void *a2)
{
  v3 = a2;
  v7[0] = 0;
  v7[1] = 0;
  sub_100007F88(v7, a1 + 96);
  v4 = sub_10004B1D8(a1, v3);
  if (v4)
  {
    v5 = *(v4 + 42);
  }

  else
  {
    v5 = 0;
  }

  sub_1000088CC(v7);

  return v5;
}

void sub_10078BBAC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  sub_1000088CC(&a9);

  _Unwind_Resume(a1);
}

void sub_10078BBCC(uint64_t a1, void *a2, __int16 a3)
{
  v5 = a2;
  v7[0] = 0;
  v7[1] = 0;
  sub_100007F88(v7, a1 + 96);
  v6 = sub_10004B1D8(a1, v5);
  if (v6)
  {
    *(v6 + 86) = a3;
  }

  sub_1000088CC(v7);
}

void sub_10078BC38(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  sub_1000088CC(&a9);

  _Unwind_Resume(a1);
}

uint64_t sub_10078BC58(uint64_t a1, void *a2)
{
  v3 = a2;
  v7[0] = 0;
  v7[1] = 0;
  sub_100007F88(v7, a1 + 96);
  v4 = sub_10004B1D8(a1, v3);
  if (v4)
  {
    v5 = *(v4 + 86);
  }

  else
  {
    v5 = 0;
  }

  sub_1000088CC(v7);

  return v5;
}

void sub_10078BCC4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  sub_1000088CC(&a9);

  _Unwind_Resume(a1);
}

void sub_10078BCE4(uint64_t a1, void *a2, char a3)
{
  v5 = a2;
  v7[0] = 0;
  v7[1] = 0;
  sub_100007F88(v7, a1 + 96);
  v6 = sub_10004B1D8(a1, v5);
  if (v6)
  {
    *(v6 + 232) = a3;
  }

  sub_1000088CC(v7);
}

void sub_10078BD50(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  sub_1000088CC(&a9);

  _Unwind_Resume(a1);
}

void sub_10078BD70(uint64_t a1, void *a2, char a3)
{
  v5 = a2;
  v7[0] = 0;
  v7[1] = 0;
  sub_100007F88(v7, a1 + 96);
  v6 = sub_10004B1D8(a1, v5);
  if (v6)
  {
    *(v6 + 233) = a3;
  }

  sub_1000088CC(v7);
}

void sub_10078BDDC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  sub_1000088CC(&a9);

  _Unwind_Resume(a1);
}

uint64_t sub_10078BDFC(uint64_t a1, void *a2)
{
  v3 = a2;
  v7[0] = 0;
  v7[1] = 0;
  sub_100007F88(v7, a1 + 96);
  v4 = sub_10004B1D8(a1, v3);
  if (v4)
  {
    v5 = *(v4 + 233);
  }

  else
  {
    v5 = 0;
  }

  sub_1000088CC(v7);

  return v5 & 1;
}

void sub_10078BE68(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  sub_1000088CC(&a9);

  _Unwind_Resume(a1);
}

void sub_10078BE88(uint64_t a1, void *a2, __int16 a3)
{
  v5 = a2;
  v7[0] = 0;
  v7[1] = 0;
  sub_100007F88(v7, a1 + 96);
  v6 = sub_10004B1D8(a1, v5);
  if (v6)
  {
    *(v6 + 176) = a3;
  }

  sub_1000088CC(v7);
}

void sub_10078BEF4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  sub_1000088CC(&a9);

  _Unwind_Resume(a1);
}

uint64_t sub_10078BF14(uint64_t a1, void *a2)
{
  v3 = a2;
  v7[0] = 0;
  v7[1] = 0;
  sub_100007F88(v7, a1 + 96);
  v4 = sub_10004B1D8(a1, v3);
  if (v4)
  {
    v5 = *(v4 + 176);
  }

  else
  {
    v5 = 0;
  }

  sub_1000088CC(v7);

  return v5;
}

void sub_10078BF80(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  sub_1000088CC(&a9);

  _Unwind_Resume(a1);
}

void sub_10078BFA0(uint64_t a1, void *a2, int a3)
{
  v5 = a2;
  v7[0] = 0;
  v7[1] = 0;
  sub_100007F88(v7, a1 + 96);
  v6 = sub_10004B1D8(a1, v5);
  if (v6)
  {
    *(v6 + 93) = a3;
  }

  sub_1000088CC(v7);
}

void sub_10078C00C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  sub_1000088CC(&a9);

  _Unwind_Resume(a1);
}

void sub_10078C02C(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v8[0] = 0;
  v8[1] = 0;
  sub_100007F88(v8, a1 + 96);
  v7 = sub_10004B1D8(a1, v5);
  if (v7)
  {
    objc_storeStrong(v7 + 47, a3);
  }

  sub_1000088CC(v8);
}

void sub_10078C0AC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  sub_1000088CC(&a9);

  _Unwind_Resume(a1);
}

id sub_10078C0D0(uint64_t a1, void *a2)
{
  v3 = a2;
  v7[0] = 0;
  v7[1] = 0;
  sub_100007F88(v7, a1 + 96);
  v4 = sub_10004B1D8(a1, v3);
  if (v4)
  {
    v5 = v4[47];
  }

  else
  {
    v5 = 0;
  }

  sub_1000088CC(v7);

  return v5;
}

void sub_10078C154(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  sub_1000088CC(&a9);

  _Unwind_Resume(a1);
}

id sub_10078C174(uint64_t a1, void *a2)
{
  v3 = a2;
  v10[0] = 0;
  v10[1] = 0;
  sub_100007F88(v10, a1 + 96);
  v4 = sub_10004B1D8(a1, v3)[47];
  v5 = v4;
  if (v4 && [v4 count])
  {
    v6 = [v5 componentsJoinedByString:{@", "}];
  }

  else
  {
    v7 = sub_100788D8C(a1, v3);
    v6 = [NSString stringWithUTF8String:sub_10002E6D4(v7)];
  }

  v8 = v6;

  sub_1000088CC(v10);

  return v8;
}

void sub_10078C24C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  sub_1000088CC(&a9);

  _Unwind_Resume(a1);
}

void sub_10078C27C(uint64_t a1, void *a2, void *a3, void *a4)
{
  v7 = a2;
  v8 = a3;
  v9 = a4;
  v11[0] = 0;
  v11[1] = 0;
  sub_100007F88(v11, a1 + 96);
  v10 = sub_10004B1D8(a1, v7);
  if (v10)
  {
    sub_1007796C8(v10, v8, v9);
  }

  sub_1000088CC(v11);
}

void sub_10078C334(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v8[0] = 0;
  v8[1] = 0;
  sub_100007F88(v8, a1 + 96);
  v7 = sub_10004B1D8(a1, v5);
  if (v7)
  {
    sub_100779798(v7, v6);
  }

  sub_1000088CC(v8);
}

id sub_10078C3D4(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v10[0] = 0;
  v10[1] = 0;
  sub_100007F88(v10, a1 + 96);
  v7 = sub_10004B1D8(a1, v5);
  if (v7)
  {
    v8 = sub_1007799F4(v7, v6);
  }

  else
  {
    v8 = 0;
  }

  sub_1000088CC(v10);

  return v8;
}

void sub_10078C484(uint64_t a1, void *a2, void *a3, void *a4)
{
  v7 = a2;
  v8 = a3;
  v9 = a4;
  v11[0] = 0;
  v11[1] = 0;
  sub_100007F88(v11, a1 + 96);
  v10 = sub_10004B1D8(a1, v7);
  if (v10)
  {
    sub_100779AA0(v10, v8, v9);
  }

  sub_1000088CC(v11);
}

void sub_10078C53C(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v8[0] = 0;
  v8[1] = 0;
  sub_100007F88(v8, a1 + 96);
  v7 = sub_10004B1D8(a1, v5);
  if (v7)
  {
    sub_100779B70(v7, v6);
  }

  sub_1000088CC(v8);
}

id sub_10078C5DC(uint64_t a1, void *a2)
{
  v3 = a2;
  v7[0] = 0;
  v7[1] = 0;
  sub_100007F88(v7, a1 + 96);
  v4 = sub_10004B1D8(a1, v3);
  if (v4)
  {
    v5 = sub_100779C04(v4);
  }

  else
  {
    v5 = 0;
  }

  sub_1000088CC(v7);

  return v5;
}

id sub_10078C680(uint64_t a1, void *a2, uint64_t a3)
{
  v5 = a2;
  v9[0] = 0;
  v9[1] = 0;
  sub_100007F88(v9, a1 + 96);
  v6 = sub_10004B1D8(a1, v5);
  if (v6)
  {
    v7 = sub_100779E70(v6, a3);
  }

  else
  {
    v7 = 0;
  }

  sub_1000088CC(v9);

  return v7;
}

void sub_10078C720(uint64_t a1, void *a2, char a3, int a4, unsigned int a5)
{
  v9 = a2;
  v16[0] = 0;
  v16[1] = 0;
  sub_100007F88(v16, a1 + 96);
  v10 = sub_10004B1D8(a1, v9);
  if (v10)
  {
    v15 = 0;
    sub_1000D42DC(&v15 + 1, &v15);
    v11 = qword_100BCE900;
    if (os_log_type_enabled(qword_100BCE900, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138543874;
      v18 = v9;
      v19 = 1024;
      v20 = HIDWORD(v15);
      v21 = 1024;
      v22 = a5;
      _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_DEFAULT, "Device %{public}@ set last connected time to %d s offset %d ms", buf, 0x18u);
    }

    if (a4 == 1)
    {
      *(v10 + 36) = HIDWORD(v15);
    }

    else if (a4 == 2)
    {
      v12 = *(a1 + 164) + 1;
      *(a1 + 164) = v12;
      v13 = HIDWORD(v15);
      v14 = HIDWORD(v15) - a5 / 0x3E8;
      *(v10 + 34) = v12;
      *(v10 + 35) = v14;
      if ((a3 & 1) == 0)
      {
        v10[19] = 1000 * v13 - a5 + v15 / 1000;
      }
    }

    sub_10004DFB4(buf, v9);
    sub_1000C7A50(a1, buf);
  }

  sub_1000088CC(v16);
}

void sub_10078C8D8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, ...)
{
  va_start(va, a5);
  sub_1000088CC(va);

  _Unwind_Resume(a1);
}

void sub_10078C908(uint64_t a1, void *a2, int a3)
{
  v5 = a2;
  v7[0] = 0;
  v7[1] = 0;
  sub_100007F88(v7, a1 + 96);
  v6 = sub_10004B1D8(a1, v5);
  if (v6)
  {
    *(v6 + 65) = a3;
  }

  sub_1000088CC(v7);
}

void sub_10078C974(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  sub_1000088CC(&a9);

  _Unwind_Resume(a1);
}

void sub_10078C994(uint64_t a1, void *a2)
{
  v3 = a2;
  v11[0] = 0;
  v11[1] = 0;
  sub_100007F88(v11, a1 + 96);
  v4 = sub_10004B1D8(a1, v3);
  if (v4)
  {
    *__str = 0;
    sub_100016250(__str);
    v5 = *__str;
    v6 = *&__str[4];
    v4[30] = *__str;
    v4[31] = v6;
    v7 = qword_100BCE900;
    if (os_log_type_enabled(qword_100BCE900, OS_LOG_TYPE_DEBUG))
    {
      v18 = 0u;
      v19 = 0u;
      *__str = 0u;
      v17 = 0u;
      snprintf(__str, 0x3FuLL, "%0llu.%0llu", v5, v6);
      sub_100007E30(__p, __str);
      if (v10 >= 0)
      {
        v8 = __p;
      }

      else
      {
        v8 = __p[0];
      }

      *buf = 138543618;
      v13 = v3;
      v14 = 2080;
      v15 = v8;
      _os_log_debug_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEBUG, "device %{public}@ added to filter accept list at %s", buf, 0x16u);
      if (v10 < 0)
      {
        operator delete(__p[0]);
      }
    }
  }

  sub_1000088CC(v11);
}

void sub_10078CAF4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  sub_1000088CC(va);

  _Unwind_Resume(a1);
}

void sub_10078CB20(uint64_t a1, void *a2)
{
  v3 = a2;
  v11[0] = 0;
  v11[1] = 0;
  sub_100007F88(v11, a1 + 96);
  v4 = sub_10004B1D8(a1, v3);
  if (v4)
  {
    v4[30] = 0;
    v4[31] = 0;
    v5 = qword_100BCE900;
    if (os_log_type_enabled(qword_100BCE900, OS_LOG_TYPE_DEBUG))
    {
      *__str = 0;
      sub_100016250(__str);
      v6 = *__str;
      v7 = *&__str[4];
      v18 = 0u;
      v19 = 0u;
      *__str = 0u;
      v17 = 0u;
      snprintf(__str, 0x3FuLL, "%0llu.%0llu", v6, v7);
      sub_100007E30(__p, __str);
      if (v10 >= 0)
      {
        v8 = __p;
      }

      else
      {
        v8 = __p[0];
      }

      *buf = 138543618;
      v13 = v3;
      v14 = 2080;
      v15 = v8;
      _os_log_debug_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEBUG, "resetDeviceAddedToFilterAcceptListTime for device %{public}@ at %s", buf, 0x16u);
      if (v10 < 0)
      {
        operator delete(__p[0]);
      }
    }
  }

  sub_1000088CC(v11);
}

void sub_10078CC7C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  sub_1000088CC(va);

  _Unwind_Resume(a1);
}

void sub_10078CCAC(uint64_t a1@<X0>, void *a2@<X1>, uint64_t a3@<X8>)
{
  v5 = a2;
  v7[0] = 0;
  v7[1] = 0;
  sub_100007F88(v7, a1 + 96);
  v6 = sub_10004B1D8(a1, v5);
  if (v6)
  {
    *a3 = *(v6 + 15);
  }

  else
  {
    *a3 = 0;
    *(a3 + 8) = 0;
  }

  sub_1000088CC(v7);
}

void sub_10078CD24(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  sub_1000088CC(&a9);

  _Unwind_Resume(a1);
}

void sub_10078CD44(uint64_t a1, void *a2, char a3)
{
  v5 = a2;
  v7[0] = 0;
  v7[1] = 0;
  sub_100007F88(v7, a1 + 96);
  v6 = sub_10004B1D8(a1, v5);
  if (v6)
  {
    *(v6 + 162) = a3;
    sub_10004DFB4(v8, v5);
    sub_1000C7A50(a1, v8);
  }

  sub_1000088CC(v7);
}

void sub_10078CDF4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  sub_1000088CC(va);

  _Unwind_Resume(a1);
}

void sub_10078CE20(uint64_t a1, uint64_t a2)
{
  v4 = *(a2 + 520);
  v5 = *(a2 + 528);
  v6 = *(a2 + 544);
  v9 = v4;
  if (v4)
  {
    v7 = v5 == 0;
  }

  else
  {
    v7 = 1;
  }

  if (!v7)
  {
    v8 = *(a2 + 532);
    sub_100779F0C(a2, 0, 0, 0);
    sub_100779F0C(a1, v5, v9, v8);
  }

  *(a1 + 544) = v6;
}

void sub_10078CED4(uint64_t a1, void *a2, char a3)
{
  v4 = a2;
  v7 = v4;
  if (qword_100B508D0 == -1)
  {
    v5 = v4;
  }

  else
  {
    sub_100873544();
    v5 = v7;
  }

  v6 = sub_10004B1D8(off_100B508C8, v5);
  if (v6)
  {
    *(v6 + 237) = a3;
  }
}

uint64_t sub_10078CF60(uint64_t a1, void *a2)
{
  v2 = a2;
  if (qword_100B508D0 != -1)
  {
    sub_100873544();
  }

  v3 = sub_10004B1D8(off_100B508C8, v2);
  if (v3)
  {
    v4 = *(v3 + 237);
  }

  else
  {
    v4 = 0;
  }

  return v4 & 1;
}

void sub_10078CFD4(uint64_t a1, void *a2)
{
  v2 = a2;
  v5 = v2;
  if (qword_100B508D0 == -1)
  {
    v3 = v2;
  }

  else
  {
    sub_100873544();
    v3 = v5;
  }

  v4 = sub_10004B1D8(off_100B508C8, v3);
  if (v4)
  {
    sub_10077894C(v4);
  }
}

id sub_10078D05C(uint64_t a1)
{
  v2 = +[NSMutableArray array];
  v18[0] = 0;
  v18[1] = 0;
  sub_100007F88(v18, a1 + 96);
  v16 = 0u;
  v17 = 0u;
  v14 = 0u;
  v15 = 0u;
  v3 = *(a1 + 176);
  v4 = [v3 countByEnumeratingWithState:&v14 objects:v19 count:16];
  if (v4)
  {
    v5 = *v15;
    do
    {
      for (i = 0; i != v4; i = i + 1)
      {
        if (*v15 != v5)
        {
          objc_enumerationMutation(v3);
        }

        v7 = *(*(&v14 + 1) + 8 * i);
        v8 = [*(a1 + 176) objectForKey:v7];
        sub_100007E30(__p, "HasBuiltinServices");
        v9 = sub_1000463C8((v8 + 176), __p);
        if (v13 < 0)
        {
          operator delete(__p[0]);
        }

        if (v8 + 184 != v9)
        {
          [v2 addObject:v7];
        }
      }

      v4 = [v3 countByEnumeratingWithState:&v14 objects:v19 count:16];
    }

    while (v4);
  }

  sub_10000801C(v18);
  v10 = [v2 indexesOfObjectsPassingTest:&stru_100B0C7B0];
  [v2 removeObjectsAtIndexes:v10];

  sub_1000088CC(v18);

  return v2;
}

void sub_10078D224(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, char a24)
{
  sub_1000088CC(&a24);

  _Unwind_Resume(a1);
}

BOOL sub_10078D28C(id a1, NSUUID *a2, unint64_t a3, BOOL *a4)
{
  v4 = a2;
  if (qword_100B508C0 != -1)
  {
    sub_100873308();
  }

  v5 = sub_10004EE74(off_100B508B8, v4);

  return !v5;
}

void sub_10078D2F4(uint64_t a1, void *a2, __int32 a3)
{
  v4 = a2;
  if (qword_100B508D0 != -1)
  {
    sub_100873544();
  }

  v5 = sub_10004B1D8(off_100B508C8, v4);
  if (v5)
  {
    sub_100778910(v5, a3);
  }

  else
  {
    v6 = qword_100BCE900;
    if (os_log_type_enabled(qword_100BCE900, OS_LOG_TYPE_DEFAULT))
    {
      v7 = 138543362;
      v8 = v4;
      _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "updateRSSIStatForDevice - device not available %{public}@", &v7, 0xCu);
    }
  }
}

void sub_10078D3F4(uint64_t a1, void *a2, __int32 a3)
{
  v4 = a2;
  if (qword_100B508D0 != -1)
  {
    sub_100873544();
  }

  v5 = sub_10004B1D8(off_100B508C8, v4);
  if (v5)
  {
    sub_10077892C(v5, a3);
  }

  else
  {
    v6 = qword_100BCE900;
    if (os_log_type_enabled(qword_100BCE900, OS_LOG_TYPE_DEFAULT))
    {
      v7 = 138543362;
      v8 = v4;
      _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "updatePERStatForDevice - device not available %{public}@", &v7, 0xCu);
    }
  }
}

void sub_10078D4F4(uint64_t a1, void *a2, char a3)
{
  v5 = a2;
  v7[0] = 0;
  v7[1] = 0;
  sub_100007F88(v7, a1 + 96);
  v6 = sub_10004B1D8(a1, v5);
  if (v6)
  {
    *(v6 + 611) = a3;
  }

  sub_1000088CC(v7);
}

void sub_10078D560(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  sub_1000088CC(&a9);

  _Unwind_Resume(a1);
}

uint64_t sub_10078D580(uint64_t a1, void *a2)
{
  v3 = a2;
  v7[0] = 0;
  v7[1] = 0;
  sub_100007F88(v7, a1 + 96);
  v4 = sub_10004B1D8(a1, v3);
  if (v4)
  {
    v5 = *(v4 + 611);
  }

  else
  {
    v5 = 0;
  }

  sub_1000088CC(v7);

  return v5 & 1;
}

void sub_10078D5EC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  sub_1000088CC(&a9);

  _Unwind_Resume(a1);
}

void sub_10078D60C(uint64_t a1, void *a2, __int16 a3)
{
  v4 = a2;
  if (qword_100B508D0 != -1)
  {
    sub_100873544();
  }

  v5 = sub_10004B1D8(off_100B508C8, v4);
  *(v5 + 16) = a3;
  v7 = sub_100017F4C(v5, v6);
  v9[0] = _NSConcreteStackBlock;
  v9[1] = 3221225472;
  v9[2] = sub_10078D704;
  v9[3] = &unk_100AEF498;
  v8 = v4;
  v10 = v8;
  v11 = a3;
  sub_10000CA94(v7, v9);
}

uint64_t sub_10078D704(uint64_t a1, uint64_t a2)
{
  v2 = *(*sub_1000154A8(a1, a2) + 88);

  return v2();
}

void sub_10078D764(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = sub_10078D05C(a1);
  if ([v4 indexOfObject:v3] != 0x7FFFFFFFFFFFFFFFLL)
  {
    v5 = [*(a1 + 176) objectForKey:v3];
    sub_100007E30(__p, "HasBuiltinServices");
    v6 = sub_1000463C8((v5 + 176), __p);
    v7 = v5 + 184;
    if (v11 < 0)
    {
      operator delete(__p[0]);
    }

    if (v7 != v6)
    {
      sub_100007E30(v8, "DoNotAutoConnect");
      sub_10078787C(a1, v3, v8);
      if (v9 < 0)
      {
        operator delete(v8[0]);
      }
    }
  }
}

void sub_10078D84C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, uint64_t a15, uint64_t a16, int a17, __int16 a18, char a19, char a20)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

void sub_10078D898(uint64_t a1, void *a2, char a3)
{
  v5 = a2;
  v7[0] = 0;
  v7[1] = 0;
  sub_100007F88(v7, a1 + 96);
  v6 = sub_10004B1D8(a1, v5);
  if (v6)
  {
    *(v6 + 234) = a3;
  }

  sub_1000088CC(v7);
}

void sub_10078D904(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  sub_1000088CC(&a9);

  _Unwind_Resume(a1);
}

uint64_t sub_10078D924(uint64_t a1, void *a2)
{
  v3 = a2;
  v7[0] = 0;
  v7[1] = 0;
  sub_100007F88(v7, a1 + 96);
  v4 = sub_10004B1D8(a1, v3);
  if (v4)
  {
    v5 = *(v4 + 234);
  }

  else
  {
    v5 = 0;
  }

  sub_1000088CC(v7);

  return v5 & 1;
}

void sub_10078D990(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  sub_1000088CC(&a9);

  _Unwind_Resume(a1);
}

void sub_10078D9B0(uint64_t a1, void *a2, char a3)
{
  v5 = a2;
  v7[0] = 0;
  v7[1] = 0;
  sub_100007F88(v7, a1 + 96);
  v6 = sub_10004B1D8(a1, v5);
  if (v6)
  {
    *(v6 + 235) = a3;
  }

  sub_1000088CC(v7);
}

void sub_10078DA1C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  sub_1000088CC(&a9);

  _Unwind_Resume(a1);
}

uint64_t sub_10078DA3C(uint64_t a1, void *a2)
{
  v3 = a2;
  v7[0] = 0;
  v7[1] = 0;
  sub_100007F88(v7, a1 + 96);
  v4 = sub_10004B1D8(a1, v3);
  if (v4)
  {
    v5 = *(v4 + 235);
  }

  else
  {
    v5 = 0;
  }

  sub_1000088CC(v7);

  return v5 & 1;
}

void sub_10078DAA8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  sub_1000088CC(&a9);

  _Unwind_Resume(a1);
}

void sub_10078DAC8(uint64_t a1, void *a2, int a3)
{
  v5 = a2;
  v9[0] = 0;
  v9[1] = 0;
  sub_100007F88(v9, a1 + 96);
  v6 = sub_10004B1D8(a1, v5);
  if (v6)
  {
    v7 = *(v6 + 236);
    if (v7 != a3)
    {
      *(v6 + 236) = a3;
      v8 = qword_100BCE900;
      if (os_log_type_enabled(qword_100BCE900, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 138543874;
        v11 = v5;
        v12 = 1024;
        v13 = v7;
        v14 = 1024;
        v15 = a3;
        _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "AutoReconnectEnabled changed - device %{public}@ enabled updated from %d to %d", buf, 0x18u);
      }
    }
  }

  sub_1000088CC(v9);
}

void sub_10078DBD0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  sub_1000088CC(&a9);

  _Unwind_Resume(a1);
}

uint64_t sub_10078DBF8(uint64_t a1, void *a2)
{
  v3 = a2;
  v7[0] = 0;
  v7[1] = 0;
  sub_100007F88(v7, a1 + 96);
  v4 = sub_10004B1D8(a1, v3);
  if (v4)
  {
    v5 = *(v4 + 236);
  }

  else
  {
    v5 = 0;
  }

  sub_1000088CC(v7);

  return v5 & 1;
}

void sub_10078DC64(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  sub_1000088CC(&a9);

  _Unwind_Resume(a1);
}

void sub_10078DC84(uint64_t a1, void *a2, char a3)
{
  v5 = a2;
  v15[0] = 0;
  v15[1] = 0;
  sub_100007F88(v15, a1 + 96);
  v6 = sub_10004B1D8(a1, v5);
  if (v6)
  {
    if (!v6[8])
    {
      *(v6 + 238) = a3;
    }

    *v13 = 0u;
    v14 = 0u;
    LODWORD(v13[0]) = *(a1 + 296);
    sub_100007F20(&v13[1], (a1 + 304));
    sub_10000801C(v15);
    v9._os_unfair_lock_opaque = v13[0];
    __dst = 0;
    v12 = 0;
    __p = 0;
    if (v14 != v13[1])
    {
      sub_1000080CC(&__p, (v14 - v13[1]) >> 3);
    }

    v7[0] = _NSConcreteStackBlock;
    v7[1] = 3221225472;
    v7[2] = sub_10078DE44;
    v7[3] = &unk_100B0C738;
    v8 = v5;
    sub_1000D3CD8(&v9, v7);
    if (__p)
    {
      __dst = __p;
      operator delete(__p);
    }

    if (v13[1])
    {
      *&v14 = v13[1];
      operator delete(v13[1]);
    }
  }

  sub_1000088CC(v15);
}

void sub_10078DDE8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, void *a14, uint64_t a15, void *__p, uint64_t a17, uint64_t a18, uint64_t a19, void *a20, uint64_t a21)
{
  if (__p)
  {
    operator delete(__p);
  }

  if (a20)
  {
    operator delete(a20);
  }

  sub_1000088CC(v22 - 48);

  _Unwind_Resume(a1);
}

void sub_10078DE78(uint64_t a1, void *a2)
{
  v3 = a2;
  v5[0] = 0;
  v5[1] = 0;
  sub_100007F88(v5, a1 + 96);
  v4 = sub_10004B1D8(a1, v3);
  if (v4)
  {
    sub_100779458(v4, 1);
  }

  sub_1000088CC(v5);
}

BOOL sub_10078DEFC(uint64_t a1, void *a2)
{
  v3 = a2;
  v7[0] = 0;
  v7[1] = 0;
  sub_100007F88(v7, a1 + 96);
  v4 = sub_10004B1D8(a1, v3);
  if (v4)
  {
    v5 = sub_1000E3BD0(v4);
  }

  else
  {
    v5 = 0;
  }

  sub_1000088CC(v7);

  return v5;
}

void sub_10078DF8C(uint64_t a1, void *a2)
{
  v3 = a2;
  v5[0] = 0;
  v5[1] = 0;
  sub_100007F88(v5, a1 + 96);
  v4 = sub_10004B1D8(a1, v3);
  if (v4)
  {
    sub_1007794F4(v4, 1);
  }

  sub_1000088CC(v5);
}

void sub_10078E010(uint64_t a1, void *a2)
{
  v3 = a2;
  v5[0] = 0;
  v5[1] = 0;
  sub_100007F88(v5, a1 + 96);
  v4 = sub_10004B1D8(a1, v3);
  if (v4)
  {
    sub_100779590(v4, 1);
  }

  sub_1000088CC(v5);
}

void sub_10078E094(uint64_t a1, void *a2)
{
  v3 = a2;
  v5[0] = 0;
  v5[1] = 0;
  sub_100007F88(v5, a1 + 96);
  v4 = sub_10004B1D8(a1, v3);
  if (v4)
  {
    sub_10077962C(v4, 1);
  }

  sub_1000088CC(v5);
}

uint64_t sub_10078E118(uint64_t a1)
{
  v8 = 0u;
  v9 = 0u;
  v10 = 0u;
  v11 = 0u;
  v2 = *(a1 + 176);
  v3 = 0;
  v4 = [v2 countByEnumeratingWithState:&v8 objects:v12 count:16];
  if (v4)
  {
    v5 = *v9;
    do
    {
      for (i = 0; i != v4; i = i + 1)
      {
        if (*v9 != v5)
        {
          objc_enumerationMutation(v2);
        }

        v3 += *([*(a1 + 176) objectForKey:{*(*(&v8 + 1) + 8 * i), v8}] + 237);
      }

      v4 = [v2 countByEnumeratingWithState:&v8 objects:v12 count:16];
    }

    while (v4);
  }

  return v3;
}

uint64_t sub_10078E278(uint64_t a1)
{
  v2 = qword_100BCE900;
  if (os_log_type_enabled(qword_100BCE900, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEFAULT, "Clearing all records of all devices", buf, 2u);
  }

  *buf = 0;
  v16 = 0;
  sub_100007F88(buf, a1 + 96);
  v13 = 0u;
  v14 = 0u;
  v11 = 0u;
  v12 = 0u;
  v3 = *(a1 + 176);
  v4 = [v3 countByEnumeratingWithState:&v11 objects:v17 count:16];
  if (v4)
  {
    v5 = *v12;
    do
    {
      v6 = 0;
      do
      {
        if (*v12 != v5)
        {
          objc_enumerationMutation(v3);
        }

        v7 = [*(a1 + 176) objectForKey:{*(*(&v11 + 1) + 8 * v6), v11}];
        if (v7)
        {
          sub_1000D3BB8(v7);
          operator delete();
        }

        v6 = v6 + 1;
      }

      while (v4 != v6);
      v4 = [v3 countByEnumeratingWithState:&v11 objects:v17 count:16];
    }

    while (v4);
  }

  [*(a1 + 176) removeAllObjects];
  sub_100028EB4((a1 + 208));
  [*(a1 + 288) removeAllObjects];
  v9 = *(a1 + 192);
  v8 = (a1 + 192);
  sub_10000CEDC((v8 - 1), v9);
  *v8 = 0;
  v8[1] = 0;
  *(v8 - 1) = v8;
  sub_100420304(v8[8]);
  return sub_1000088CC(buf);
}

void sub_10078E424(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, ...)
{
  va_start(va, a16);

  sub_1000088CC(va);
  _Unwind_Resume(a1);
}

uint64_t sub_10078E458(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v18 = a3;
  v25[0] = 0;
  v25[1] = 0;
  sub_100007F88(v25, a1 + 96);
  v23 = 0u;
  v24 = 0u;
  v21 = 0u;
  v22 = 0u;
  v6 = *(a1 + 176);
  v7 = [v6 countByEnumeratingWithState:&v21 objects:v26 count:16];
  if (v7)
  {
    v8 = *v22;
LABEL_3:
    v9 = 0;
    while (1)
    {
      if (*v22 != v8)
      {
        objc_enumerationMutation(v6);
      }

      v10 = [*(a1 + 176) objectForKey:*(*(&v21 + 1) + 8 * v9)];
      v11 = v10;
      if (v10[231] < 0)
      {
        sub_100008904(__p, *(v10 + 26), *(v10 + 27));
      }

      else
      {
        *__p = *(v10 + 13);
        v20 = *(v10 + 28);
      }

      if (SHIBYTE(v20) < 0)
      {
        v12 = __p[1];
        operator delete(__p[0]);
        if (v12)
        {
LABEL_13:
          if (v11[231] < 0)
          {
            sub_100008904(__p, *(v11 + 26), *(v11 + 27));
          }

          else
          {
            *__p = *(v11 + 13);
            v20 = *(v11 + 28);
          }

          if (v20 >= 0)
          {
            v13 = __p;
          }

          else
          {
            v13 = __p[0];
          }

          v14 = [NSString stringWithUTF8String:v13];
          v15 = [v5 isEqualToString:v14];

          if (SHIBYTE(v20) < 0)
          {
            operator delete(__p[0]);
          }

          if (v15)
          {
            (v18)[2](v18, v11);
            v16 = 1;
            goto LABEL_26;
          }
        }
      }

      else if (HIBYTE(v20))
      {
        goto LABEL_13;
      }

      if (v7 == ++v9)
      {
        v7 = [v6 countByEnumeratingWithState:&v21 objects:v26 count:16];
        if (v7)
        {
          goto LABEL_3;
        }

        break;
      }
    }
  }

  v16 = 0;
LABEL_26:

  sub_1000088CC(v25);
  return v16;
}

void sub_10078E67C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *a10, void *__p, uint64_t a12, int a13, __int16 a14, char a15, char a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, char a26)
{
  sub_1000088CC(&a26);

  _Unwind_Resume(a1);
}

void sub_10078E6EC(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v7 = qword_100BCE900;
  if (os_log_type_enabled(qword_100BCE900, OS_LOG_TYPE_DEFAULT))
  {
    *v9 = 138543618;
    *&v9[4] = v5;
    *&v9[12] = 2114;
    *&v9[14] = v6;
    _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "DIS for device %{public}@ DIS Manufacturer: %{public}@", v9, 0x16u);
  }

  *v9 = 0;
  *&v9[8] = 0;
  sub_100007F88(v9, a1 + 96);
  v8 = sub_10004B1D8(a1, v5);
  if (v8)
  {
    objc_storeStrong(v8 + 34, a3);
  }

  sub_1000088CC(v9);
}

void sub_10078E7FC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  sub_1000088CC(&a9);

  _Unwind_Resume(a1);
}

id sub_10078E828(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = qword_100BCE900;
  if (os_log_type_enabled(qword_100BCE900, OS_LOG_TYPE_DEFAULT))
  {
    LODWORD(v8) = 138543362;
    *(&v8 + 4) = v3;
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "DIS manufacturer name for device %{public}@", &v8, 0xCu);
  }

  v8 = 0uLL;
  sub_100007F88(&v8, a1 + 96);
  v5 = sub_10004B1D8(a1, v3);
  if (v5)
  {
    v6 = v5[34];
  }

  else
  {
    v6 = 0;
  }

  sub_1000088CC(&v8);

  return v6;
}

void sub_10078E930(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  sub_1000088CC(&a9);

  _Unwind_Resume(a1);
}

void sub_10078E958(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v7 = qword_100BCE900;
  if (os_log_type_enabled(qword_100BCE900, OS_LOG_TYPE_DEFAULT))
  {
    *v9 = 138543618;
    *&v9[4] = v5;
    *&v9[12] = 2114;
    *&v9[14] = v6;
    _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "DIS for device %{public}@ DIS Model number: %{public}@", v9, 0x16u);
  }

  *v9 = 0;
  *&v9[8] = 0;
  sub_100007F88(v9, a1 + 96);
  v8 = sub_10004B1D8(a1, v5);
  if (v8)
  {
    objc_storeStrong(v8 + 35, a3);
  }

  sub_1000088CC(v9);
}

void sub_10078EA68(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  sub_1000088CC(&a9);

  _Unwind_Resume(a1);
}

void sub_10078EA94(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v7 = qword_100BCE900;
  if (os_log_type_enabled(qword_100BCE900, OS_LOG_TYPE_DEFAULT))
  {
    *v9 = 138543618;
    *&v9[4] = v5;
    *&v9[12] = 2112;
    *&v9[14] = v6;
    _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "DIS for device %{public}@ DIS serial number: %@", v9, 0x16u);
  }

  *v9 = 0;
  *&v9[8] = 0;
  sub_100007F88(v9, a1 + 96);
  v8 = sub_10004B1D8(a1, v5);
  if (v8)
  {
    objc_storeStrong(v8 + 36, a3);
  }

  sub_1000088CC(v9);
}

void sub_10078EBA4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  sub_1000088CC(&a9);

  _Unwind_Resume(a1);
}

void sub_10078EBD0(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v7 = qword_100BCE900;
  if (os_log_type_enabled(qword_100BCE900, OS_LOG_TYPE_DEFAULT))
  {
    *v9 = 138543618;
    *&v9[4] = v5;
    *&v9[12] = 2114;
    *&v9[14] = v6;
    _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "DIS for device %{public}@ DIS HW Revision: %{public}@", v9, 0x16u);
  }

  *v9 = 0;
  *&v9[8] = 0;
  sub_100007F88(v9, a1 + 96);
  v8 = sub_10004B1D8(a1, v5);
  if (v8)
  {
    objc_storeStrong(v8 + 37, a3);
  }

  sub_1000088CC(v9);
}

void sub_10078ECE0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  sub_1000088CC(&a9);

  _Unwind_Resume(a1);
}

void sub_10078ED0C(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v7 = qword_100BCE900;
  if (os_log_type_enabled(qword_100BCE900, OS_LOG_TYPE_DEFAULT))
  {
    *v9 = 138543618;
    *&v9[4] = v5;
    *&v9[12] = 2114;
    *&v9[14] = v6;
    _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "DIS for device %{public}@ DIS FW Revision: %{public}@", v9, 0x16u);
  }

  *v9 = 0;
  *&v9[8] = 0;
  sub_100007F88(v9, a1 + 96);
  v8 = sub_10004B1D8(a1, v5);
  if (v8)
  {
    objc_storeStrong(v8 + 38, a3);
  }

  sub_1000088CC(v9);
}

void sub_10078EE1C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  sub_1000088CC(&a9);

  _Unwind_Resume(a1);
}

void sub_10078EE48(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v7 = qword_100BCE900;
  if (os_log_type_enabled(qword_100BCE900, OS_LOG_TYPE_DEFAULT))
  {
    *v9 = 138543618;
    *&v9[4] = v5;
    *&v9[12] = 2114;
    *&v9[14] = v6;
    _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "DIS for device %{public}@ DIS SW Revision: %{public}@", v9, 0x16u);
  }

  *v9 = 0;
  *&v9[8] = 0;
  sub_100007F88(v9, a1 + 96);
  v8 = sub_10004B1D8(a1, v5);
  if (v8)
  {
    objc_storeStrong(v8 + 39, a3);
  }

  sub_1000088CC(v9);
}

void sub_10078EF58(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  sub_1000088CC(&a9);

  _Unwind_Resume(a1);
}

void sub_10078EF84(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v7 = qword_100BCE900;
  if (os_log_type_enabled(qword_100BCE900, OS_LOG_TYPE_DEFAULT))
  {
    *v9 = 138543618;
    *&v9[4] = v5;
    *&v9[12] = 2114;
    *&v9[14] = v6;
    _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "DIS for device %{public}@ DIS systemID: %{public}@", v9, 0x16u);
  }

  *v9 = 0;
  *&v9[8] = 0;
  sub_100007F88(v9, a1 + 96);
  v8 = sub_10004B1D8(a1, v5);
  if (v8)
  {
    objc_storeStrong(v8 + 40, a3);
  }

  sub_1000088CC(v9);
}

void sub_10078F094(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  sub_1000088CC(&a9);

  _Unwind_Resume(a1);
}

void sub_10078F0C0(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v7 = qword_100BCE900;
  if (os_log_type_enabled(qword_100BCE900, OS_LOG_TYPE_DEFAULT))
  {
    *v9 = 138543618;
    *&v9[4] = v5;
    *&v9[12] = 2112;
    *&v9[14] = v6;
    _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "DIS for device %{public}@ DIS regulatory data: %@", v9, 0x16u);
  }

  *v9 = 0;
  *&v9[8] = 0;
  sub_100007F88(v9, a1 + 96);
  v8 = sub_10004B1D8(a1, v5);
  if (v8)
  {
    objc_storeStrong(v8 + 41, a3);
  }

  sub_1000088CC(v9);
}

void sub_10078F1D0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  sub_1000088CC(&a9);

  _Unwind_Resume(a1);
}

void sub_10078F1FC(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v7 = qword_100BCE900;
  if (os_log_type_enabled(qword_100BCE900, OS_LOG_TYPE_DEFAULT))
  {
    *v16 = 138543618;
    *&v16[4] = v5;
    *&v16[12] = 2114;
    *&v16[14] = v6;
    _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "DIS for device %{public}@ DIS PNP ID: %{public}@", v16, 0x16u);
  }

  *v16 = 0;
  *&v16[8] = 0;
  sub_100007F88(v16, a1 + 96);
  v8 = sub_10004B1D8(a1, v5);
  v9 = v8;
  if (v8)
  {
    v10 = sub_1000E3BD0(v8);
    if (v10)
    {
      v12 = *(v9 + 196);
      v13 = sub_10000F034(v10, v11);
      if (v13)
      {
        v15 = sub_10000F034(v13, v14);
        (*(*v15 + 608))(v15, *(v9 + 128), v6, v12);
      }
    }

    objc_storeStrong(v9 + 42, a3);
    sub_10078F3A0(a1, v5);
  }

  sub_1000088CC(v16);
}

void sub_10078F370(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  sub_1000088CC(&a9);

  _Unwind_Resume(a1);
}

void sub_10078F3A0(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = sub_10004B1D8(a1, v3);
  v5 = v4;
  if (v4)
  {
    v6 = v4[42];
    v7 = v6;
    if (!v6)
    {
LABEL_32:

      goto LABEL_33;
    }

    v8 = [v6 bytes];
    v9 = *(v8 + 1);
    v10 = *(v8 + 3);
    if (v9 == 13706)
    {
      sub_100007E30(v23, "IsBLEGameController");
      sub_1007782B8(v5, v23);
      if (v24 < 0)
      {
        operator delete(v23[0]);
      }

      goto LABEL_31;
    }

    if (v9 != 1118)
    {
      goto LABEL_31;
    }

    if ((v10 - 2835) > 0xF || ((1 << (v10 - 19)) & 0xE001) == 0)
    {
      goto LABEL_31;
    }

    sub_100007E30(__p, "IsXboxBLEController");
    sub_1007782B8(v5, __p);
    if (v28 < 0)
    {
      operator delete(__p[0]);
    }

    sub_100007E30(v25, "IsBLEGameController");
    sub_1007782B8(v5, v25);
    if (v26 < 0)
    {
      operator delete(v25[0]);
    }

    if (v10 != 2835)
    {
LABEL_31:
      sub_10078FA14(a1, v3, v9, v10);
      goto LABEL_32;
    }

    v12 = *(v5 + 304);
    if (!v12)
    {
      if (os_log_type_enabled(qword_100BCE900, OS_LOG_TYPE_ERROR))
      {
        sub_100873E3C();
      }

      goto LABEL_30;
    }

    v13 = [@"5.5.2641" compare:v12 options:64];
    v14 = qword_100BCE900;
    v15 = os_log_type_enabled(qword_100BCE900, OS_LOG_TYPE_DEFAULT);
    if (v13 == 1)
    {
      if (v15)
      {
        *buf = 138543874;
        v30 = v12;
        v31 = 2114;
        v32 = @"5.5.2641";
        v33 = 2114;
        v34 = v3;
        _os_log_impl(&_mh_execute_header, v14, OS_LOG_TYPE_DEFAULT, "Firmware version: %{public}@ < minumum firmware version: %{public}@ for device %{public}@", buf, 0x20u);
      }

      sub_100007E30(v21, "XboxControllerRequiresFWUpdate");
      sub_1007782B8(v5, v21);
      if ((v22 & 0x80000000) == 0)
      {
        goto LABEL_29;
      }

      v16 = v21;
    }

    else
    {
      if (v15)
      {
        *buf = 138543874;
        v30 = v12;
        v31 = 2114;
        v32 = @"5.5.2641";
        v33 = 2114;
        v34 = v3;
        _os_log_impl(&_mh_execute_header, v14, OS_LOG_TYPE_DEFAULT, "Firmware version: %{public}@ >= minumum firmware version: %{public}@ for device %{public}@", buf, 0x20u);
      }

      sub_100007E30(v19, "XboxControllerRequiresFWUpdate");
      sub_100776C38((v5 + 176), v19);
      if ((v20 & 0x80000000) == 0)
      {
        goto LABEL_29;
      }

      v16 = v19;
    }

    operator delete(*v16);
LABEL_29:
    v17 = +[NSDistributedNotificationCenter defaultCenter];
    v18 = [NSNotification notificationWithName:@"com.apple.bluetooth.leDeviceFirmwareUpdateWarning" object:0];
    [v17 postNotification:v18];

LABEL_30:
    goto LABEL_31;
  }

LABEL_33:
}