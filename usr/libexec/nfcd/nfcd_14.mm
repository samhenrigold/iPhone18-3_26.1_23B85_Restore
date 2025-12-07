void sub_10019C158(void *a1)
{
  if (a1)
  {
    if (byte_10035DA90 == 1)
    {
      v1 = [a1 driverWrapper];
      sub_10021CC94(v1, @"LPEM features");

      byte_10035DA90 = 0;
    }
  }
}

void sub_10019C2E4(uint64_t a1)
{
  if (sub_100003384(*(a1 + 32)) != 2)
  {
    v18 = *(a1 + 40);
    v28 = [NSError alloc];
    v20 = [NSString stringWithUTF8String:"nfcd"];
    v113[0] = NSLocalizedDescriptionKey;
    v21 = [NSString stringWithUTF8String:"Unresponsive hardware"];
    v114[0] = v21;
    v114[1] = &off_1003331C8;
    v113[1] = @"Line";
    v113[2] = @"Method";
    v22 = [[NSString alloc] initWithFormat:@"%s", sel_getName(*(a1 + 56))];
    v114[2] = v22;
    v113[3] = NSDebugDescriptionErrorKey;
    v23 = [[NSString alloc] initWithFormat:@"%s:%d", sel_getName(*(a1 + 56)), 64];
    v114[3] = v23;
    v24 = [NSDictionary dictionaryWithObjects:v114 forKeys:v113 count:4];
    v25 = v28;
    v26 = v20;
    v27 = 58;
LABEL_19:
    v30 = [v25 initWithDomain:v26 code:v27 userInfo:v24];
    (*(v18 + 16))(v18, v30);

    goto LABEL_20;
  }

  v2 = [*(a1 + 32) controllerInfo];
  if (([v2 hasLPEMSupport] & 1) == 0)
  {

    goto LABEL_18;
  }

  v3 = [*(a1 + 32) driverWrapper];
  v4 = sub_1001A9FAC(v3, *(a1 + 64));

  if ((v4 & 1) == 0)
  {
LABEL_18:
    v18 = *(a1 + 40);
    v29 = [NSError alloc];
    v20 = [NSString stringWithUTF8String:"nfcd"];
    v111[0] = NSLocalizedDescriptionKey;
    v21 = [NSString stringWithUTF8String:"Feature Not Supported"];
    v112[0] = v21;
    v112[1] = &off_1003331E0;
    v111[1] = @"Line";
    v111[2] = @"Method";
    v22 = [[NSString alloc] initWithFormat:@"%s", sel_getName(*(a1 + 56))];
    v112[2] = v22;
    v111[3] = NSDebugDescriptionErrorKey;
    v23 = [[NSString alloc] initWithFormat:@"%s:%d", sel_getName(*(a1 + 56)), 69];
    v112[3] = v23;
    v24 = [NSDictionary dictionaryWithObjects:v112 forKeys:v111 count:4];
    v25 = v29;
    v26 = v20;
    v27 = 14;
    goto LABEL_19;
  }

  v5 = [*(a1 + 32) expressModeManager];
  if (v5)
  {
    v6 = v5[181];

    if (v6 == 1)
    {
      dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
      Logger = NFLogGetLogger();
      if (Logger)
      {
        v8 = Logger;
        Class = object_getClass(*(a1 + 32));
        isMetaClass = class_isMetaClass(Class);
        ClassName = object_getClassName(*(a1 + 32));
        Name = sel_getName(*(a1 + 56));
        v12 = 45;
        if (isMetaClass)
        {
          v12 = 43;
        }

        v8(5, "%c[%{public}s %{public}s]:%i Cannot disable LPEM feature when express mode is active", v12, ClassName, Name, 74);
      }

      dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
      v13 = NFSharedLogGetLogger();
      if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
      {
        v14 = object_getClass(*(a1 + 32));
        if (class_isMetaClass(v14))
        {
          v15 = 43;
        }

        else
        {
          v15 = 45;
        }

        v16 = object_getClassName(*(a1 + 32));
        v17 = sel_getName(*(a1 + 56));
        *buf = 67109890;
        v95 = v15;
        v96 = 2082;
        v97 = v16;
        v98 = 2082;
        v99 = v17;
        v100 = 1024;
        v101 = 74;
        _os_log_impl(&_mh_execute_header, v13, OS_LOG_TYPE_DEFAULT, "%c[%{public}s %{public}s]:%i Cannot disable LPEM feature when express mode is active", buf, 0x22u);
      }

      v18 = *(a1 + 40);
      v19 = [NSError alloc];
      v20 = [NSString stringWithUTF8String:"nfcd"];
      v109[0] = NSLocalizedDescriptionKey;
      v21 = [NSString stringWithUTF8String:"Busy"];
      v110[0] = v21;
      v110[1] = &off_1003331F8;
      v109[1] = @"Line";
      v109[2] = @"Method";
      v22 = [[NSString alloc] initWithFormat:@"%s", sel_getName(*(a1 + 56))];
      v110[2] = v22;
      v109[3] = NSDebugDescriptionErrorKey;
      v23 = [[NSString alloc] initWithFormat:@"%s:%d", sel_getName(*(a1 + 56)), 75];
      v110[3] = v23;
      v24 = [NSDictionary dictionaryWithObjects:v110 forKeys:v109 count:4];
      v25 = v19;
      v26 = v20;
      v27 = 2;
      goto LABEL_19;
    }
  }

  v31 = [*(a1 + 32) driverWrapper];
  v20 = sub_10021A4A0(v31, @"LPEM feature change", 1uLL);

  dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
  v32 = NFLogGetLogger();
  v33 = v32;
  if (v20)
  {
    if (v32)
    {
      v34 = object_getClass(*(a1 + 32));
      v35 = class_isMetaClass(v34);
      v87 = object_getClassName(*(a1 + 32));
      v89 = sel_getName(*(a1 + 56));
      v36 = 45;
      if (v35)
      {
        v36 = 43;
      }

      v33(3, "%c[%{public}s %{public}s]:%i Failed to open session : %@", v36, v87, v89, 81, v20);
    }

    dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
    v37 = NFSharedLogGetLogger();
    if (os_log_type_enabled(v37, OS_LOG_TYPE_ERROR))
    {
      v38 = object_getClass(*(a1 + 32));
      if (class_isMetaClass(v38))
      {
        v39 = 43;
      }

      else
      {
        v39 = 45;
      }

      v40 = object_getClassName(*(a1 + 32));
      v41 = sel_getName(*(a1 + 56));
      *buf = 67110146;
      v95 = v39;
      v96 = 2082;
      v97 = v40;
      v98 = 2082;
      v99 = v41;
      v100 = 1024;
      v101 = 81;
      v102 = 2112;
      *v103 = v20;
      _os_log_impl(&_mh_execute_header, v37, OS_LOG_TYPE_ERROR, "%c[%{public}s %{public}s]:%i Failed to open session : %@", buf, 0x2Cu);
    }

    v42 = *(a1 + 40);
    v43 = [NSError alloc];
    v44 = [NSString stringWithUTF8String:"nfcd"];
    v45 = [v20 code];
    v107[0] = NSLocalizedDescriptionKey;
    if ([v20 code] > 75)
    {
      v46 = 76;
    }

    else
    {
      v46 = [v20 code];
    }

    v78 = [NSString stringWithUTF8String:off_10031AE10[v46]];
    v108[0] = v78;
    v108[1] = v20;
    v107[1] = NSUnderlyingErrorKey;
    v107[2] = @"Line";
    v108[2] = &off_100333210;
    v107[3] = @"Method";
    v79 = [[NSString alloc] initWithFormat:@"%s", sel_getName(*(a1 + 56))];
    v108[3] = v79;
    v107[4] = NSDebugDescriptionErrorKey;
    v80 = [[NSString alloc] initWithFormat:@"%s:%d", sel_getName(*(a1 + 56)), 82];
    v108[4] = v80;
    v81 = [NSDictionary dictionaryWithObjects:v108 forKeys:v107 count:5];
    v82 = [v43 initWithDomain:v44 code:v45 userInfo:v81];
    (*(v42 + 16))(v42, v82);
  }

  else
  {
    if (v32)
    {
      v47 = object_getClass(*(a1 + 32));
      v48 = class_isMetaClass(v47);
      v49 = object_getClassName(*(a1 + 32));
      v50 = sel_getName(*(a1 + 56));
      v91 = [*(*(*(a1 + 48) + 8) + 40) processIdentifier];
      v51 = 45;
      if (v48)
      {
        v51 = 43;
      }

      v33(6, "%c[%{public}s %{public}s]:%i PID %d disabling feature %d", v51, v49, v50, 86, v91, *(a1 + 64));
    }

    dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
    v52 = NFSharedLogGetLogger();
    if (os_log_type_enabled(v52, OS_LOG_TYPE_DEFAULT))
    {
      v53 = object_getClass(*(a1 + 32));
      if (class_isMetaClass(v53))
      {
        v54 = 43;
      }

      else
      {
        v54 = 45;
      }

      v55 = object_getClassName(*(a1 + 32));
      v56 = sel_getName(*(a1 + 56));
      v57 = [*(*(*(a1 + 48) + 8) + 40) processIdentifier];
      v58 = *(a1 + 64);
      *buf = 67110402;
      v95 = v54;
      v96 = 2082;
      v97 = v55;
      v98 = 2082;
      v99 = v56;
      v100 = 1024;
      v101 = 86;
      v102 = 1024;
      *v103 = v57;
      *&v103[4] = 1024;
      *&v103[6] = v58;
      _os_log_impl(&_mh_execute_header, v52, OS_LOG_TYPE_DEFAULT, "%c[%{public}s %{public}s]:%i PID %d disabling feature %d", buf, 0x2Eu);
    }

    v59 = [*(a1 + 32) driverWrapper];
    v60 = sub_1001AA6BC(v59, *(a1 + 64));

    v61 = *(a1 + 40);
    if (v60)
    {
      (*(v61 + 16))(*(a1 + 40), 0);
      sub_10019C0A0(*(a1 + 32));
      v62 = [*(a1 + 32) driverWrapper];
      v63 = sub_1001A9F5C(v62);

      dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
      v64 = NFLogGetLogger();
      if (v64)
      {
        v65 = v64;
        v66 = object_getClass(*(a1 + 32));
        v67 = class_isMetaClass(v66);
        v68 = object_getClassName(*(a1 + 32));
        v90 = sel_getName(*(a1 + 56));
        v69 = 45;
        if (v67)
        {
          v69 = 43;
        }

        v65(6, "%c[%{public}s %{public}s]:%i posting %{public}@ to SESD - current state %lx", v69, v68, v90, 93, @"com.apple.stockholm.lpem.changed", v63);
      }

      dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
      v70 = NFSharedLogGetLogger();
      if (os_log_type_enabled(v70, OS_LOG_TYPE_DEFAULT))
      {
        v71 = object_getClass(*(a1 + 32));
        if (class_isMetaClass(v71))
        {
          v72 = 43;
        }

        else
        {
          v72 = 45;
        }

        v73 = object_getClassName(*(a1 + 32));
        v74 = sel_getName(*(a1 + 56));
        *buf = 67110402;
        v95 = v72;
        v96 = 2082;
        v97 = v73;
        v98 = 2082;
        v99 = v74;
        v100 = 1024;
        v101 = 93;
        v102 = 2114;
        *v103 = @"com.apple.stockholm.lpem.changed";
        *&v103[8] = 2048;
        v104 = v63;
        _os_log_impl(&_mh_execute_header, v70, OS_LOG_TYPE_DEFAULT, "%c[%{public}s %{public}s]:%i posting %{public}@ to SESD - current state %lx", buf, 0x36u);
      }

      v75 = [*(a1 + 32) sesdEventPublisher];
      v92[0] = @"Payload";
      v92[1] = @"lpemFeatures";
      v93[0] = @"com.apple.stockholm.lpem.changed";
      v76 = [NSNumber numberWithUnsignedInteger:v63];
      v93[1] = v76;
      v77 = [NSDictionary dictionaryWithObjects:v93 forKeys:v92 count:2];
      [v75 sendXpcNotificationEventWithDictionary:v77];
    }

    else
    {
      v83 = [NSError alloc];
      v75 = [NSString stringWithUTF8String:"nfcd"];
      v105[0] = NSLocalizedDescriptionKey;
      v76 = [NSString stringWithUTF8String:"Stack Error"];
      v106[0] = v76;
      v106[1] = &off_100333228;
      v105[1] = @"Line";
      v105[2] = @"Method";
      v77 = [[NSString alloc] initWithFormat:@"%s", sel_getName(*(a1 + 56))];
      v106[2] = v77;
      v105[3] = NSDebugDescriptionErrorKey;
      v84 = [[NSString alloc] initWithFormat:@"%s:%d", sel_getName(*(a1 + 56)), 88];
      v106[3] = v84;
      v85 = [NSDictionary dictionaryWithObjects:v106 forKeys:v105 count:4];
      v86 = [v83 initWithDomain:v75 code:15 userInfo:v85];
      (*(v61 + 16))(v61, v86);
    }

    v20 = [*(a1 + 32) driverWrapper];
    sub_10021CC94(v20, @"LPEM feature change");
  }

LABEL_20:
}

void sub_10019D014(uint64_t a1, uint64_t a2, char a3, void *a4)
{
  v7 = a4;
  if (a1)
  {
    v15[0] = 0;
    v15[1] = v15;
    v15[2] = 0x3032000000;
    v15[3] = sub_100006AFC;
    v15[4] = sub_10019C2DC;
    v16 = +[NSXPCConnection currentConnection];
    v8 = *(a1 + 240);
    v9[0] = _NSConcreteStackBlock;
    v9[1] = 3221225472;
    v9[2] = sub_10019D154;
    v9[3] = &unk_10031B0A8;
    v9[4] = a1;
    v12 = "enableLPEMFeature:rebootIfNeeded:completion:";
    v13 = a2;
    v14 = a3;
    v10 = v7;
    v11 = v15;
    dispatch_async(v8, v9);

    _Block_object_dispose(v15, 8);
  }
}

void sub_10019D154(uint64_t a1)
{
  if (sub_100003384(*(a1 + 32)) != 2)
  {
    v18 = *(a1 + 40);
    v28 = [NSError alloc];
    v20 = [NSString stringWithUTF8String:"nfcd"];
    v128[0] = NSLocalizedDescriptionKey;
    v21 = [NSString stringWithUTF8String:"Unresponsive hardware"];
    v129[0] = v21;
    v129[1] = &off_100333240;
    v128[1] = @"Line";
    v128[2] = @"Method";
    v22 = [[NSString alloc] initWithFormat:@"%s", sel_getName(*(a1 + 56))];
    v129[2] = v22;
    v128[3] = NSDebugDescriptionErrorKey;
    v23 = [[NSString alloc] initWithFormat:@"%s:%d", sel_getName(*(a1 + 56)), 114];
    v129[3] = v23;
    v24 = [NSDictionary dictionaryWithObjects:v129 forKeys:v128 count:4];
    v25 = v28;
    v26 = v20;
    v27 = 58;
LABEL_19:
    v30 = [v25 initWithDomain:v26 code:v27 userInfo:v24];
    (*(v18 + 16))(v18, v30);

    goto LABEL_20;
  }

  v2 = [*(a1 + 32) controllerInfo];
  if (([v2 hasLPEMSupport] & 1) == 0)
  {

    goto LABEL_18;
  }

  v3 = [*(a1 + 32) driverWrapper];
  v4 = sub_1001A9FAC(v3, *(a1 + 64));

  if ((v4 & 1) == 0)
  {
LABEL_18:
    v18 = *(a1 + 40);
    v29 = [NSError alloc];
    v20 = [NSString stringWithUTF8String:"nfcd"];
    v126[0] = NSLocalizedDescriptionKey;
    v21 = [NSString stringWithUTF8String:"Feature Not Supported"];
    v127[0] = v21;
    v127[1] = &off_100333258;
    v126[1] = @"Line";
    v126[2] = @"Method";
    v22 = [[NSString alloc] initWithFormat:@"%s", sel_getName(*(a1 + 56))];
    v127[2] = v22;
    v126[3] = NSDebugDescriptionErrorKey;
    v23 = [[NSString alloc] initWithFormat:@"%s:%d", sel_getName(*(a1 + 56)), 119];
    v127[3] = v23;
    v24 = [NSDictionary dictionaryWithObjects:v127 forKeys:v126 count:4];
    v25 = v29;
    v26 = v20;
    v27 = 14;
    goto LABEL_19;
  }

  v5 = [*(a1 + 32) expressModeManager];
  if (v5)
  {
    v6 = v5[181];

    if (v6 == 1)
    {
      dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
      Logger = NFLogGetLogger();
      if (Logger)
      {
        v8 = Logger;
        Class = object_getClass(*(a1 + 32));
        isMetaClass = class_isMetaClass(Class);
        ClassName = object_getClassName(*(a1 + 32));
        Name = sel_getName(*(a1 + 56));
        v12 = 45;
        if (isMetaClass)
        {
          v12 = 43;
        }

        v8(5, "%c[%{public}s %{public}s]:%i Cannot enable LPEM feature when express mode is active", v12, ClassName, Name, 124);
      }

      dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
      v13 = NFSharedLogGetLogger();
      if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
      {
        v14 = object_getClass(*(a1 + 32));
        if (class_isMetaClass(v14))
        {
          v15 = 43;
        }

        else
        {
          v15 = 45;
        }

        v16 = object_getClassName(*(a1 + 32));
        v17 = sel_getName(*(a1 + 56));
        *buf = 67109890;
        v108 = v15;
        v109 = 2082;
        v110 = v16;
        v111 = 2082;
        v112 = v17;
        v113 = 1024;
        v114 = 124;
        _os_log_impl(&_mh_execute_header, v13, OS_LOG_TYPE_DEFAULT, "%c[%{public}s %{public}s]:%i Cannot enable LPEM feature when express mode is active", buf, 0x22u);
      }

      v18 = *(a1 + 40);
      v19 = [NSError alloc];
      v20 = [NSString stringWithUTF8String:"nfcd"];
      v124[0] = NSLocalizedDescriptionKey;
      v21 = [NSString stringWithUTF8String:"Busy"];
      v125[0] = v21;
      v125[1] = &off_100333270;
      v124[1] = @"Line";
      v124[2] = @"Method";
      v22 = [[NSString alloc] initWithFormat:@"%s", sel_getName(*(a1 + 56))];
      v125[2] = v22;
      v124[3] = NSDebugDescriptionErrorKey;
      v23 = [[NSString alloc] initWithFormat:@"%s:%d", sel_getName(*(a1 + 56)), 125];
      v125[3] = v23;
      v24 = [NSDictionary dictionaryWithObjects:v125 forKeys:v124 count:4];
      v25 = v19;
      v26 = v20;
      v27 = 2;
      goto LABEL_19;
    }
  }

  v31 = [*(a1 + 32) driverWrapper];
  v20 = sub_10021A4A0(v31, @"LPEM feature change", 1uLL);

  if (v20)
  {
    dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
    v32 = NFLogGetLogger();
    if (v32)
    {
      v33 = v32;
      v34 = object_getClass(*(a1 + 32));
      v35 = class_isMetaClass(v34);
      v99 = object_getClassName(*(a1 + 32));
      v101 = sel_getName(*(a1 + 56));
      v36 = 45;
      if (v35)
      {
        v36 = 43;
      }

      v33(3, "%c[%{public}s %{public}s]:%i Failed to open session : %@", v36, v99, v101, 131, v20);
    }

    dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
    v37 = NFSharedLogGetLogger();
    if (os_log_type_enabled(v37, OS_LOG_TYPE_ERROR))
    {
      v38 = object_getClass(*(a1 + 32));
      if (class_isMetaClass(v38))
      {
        v39 = 43;
      }

      else
      {
        v39 = 45;
      }

      v40 = object_getClassName(*(a1 + 32));
      v41 = sel_getName(*(a1 + 56));
      *buf = 67110146;
      v108 = v39;
      v109 = 2082;
      v110 = v40;
      v111 = 2082;
      v112 = v41;
      v113 = 1024;
      v114 = 131;
      v115 = 2112;
      *v116 = v20;
      _os_log_impl(&_mh_execute_header, v37, OS_LOG_TYPE_ERROR, "%c[%{public}s %{public}s]:%i Failed to open session : %@", buf, 0x2Cu);
    }

    v42 = *(a1 + 40);
    v43 = [NSError alloc];
    v44 = [NSString stringWithUTF8String:"nfcd"];
    v45 = [v20 code];
    v122[0] = NSLocalizedDescriptionKey;
    if ([v20 code] > 75)
    {
      v46 = 76;
    }

    else
    {
      v46 = [v20 code];
    }

    v53 = [NSString stringWithUTF8String:off_10031AE10[v46]];
    v123[0] = v53;
    v123[1] = v20;
    v122[1] = NSUnderlyingErrorKey;
    v122[2] = @"Line";
    v123[2] = &off_100333288;
    v122[3] = @"Method";
    v54 = [[NSString alloc] initWithFormat:@"%s", sel_getName(*(a1 + 56))];
    v123[3] = v54;
    v122[4] = NSDebugDescriptionErrorKey;
    v55 = [[NSString alloc] initWithFormat:@"%s:%d", sel_getName(*(a1 + 56)), 132];
    v123[4] = v55;
    v56 = v123;
    v57 = v122;
    goto LABEL_40;
  }

  v47 = [*(a1 + 32) controllerInfo];
  v48 = [v47 siliconName];

  if (v48 == 18 || *(a1 + 72) != 1)
  {
    v60 = 0;
  }

  else
  {
    v49 = [*(a1 + 32) driverWrapper];
    v104 = 0;
    v50 = sub_1001AB574(v49, &v104);
    v20 = v104;

    if (v20)
    {
      v51 = [*(a1 + 32) driverWrapper];
      sub_10021CC94(v51, @"LPEM feature change");

      v42 = *(a1 + 40);
      v43 = [NSError alloc];
      v44 = [NSString stringWithUTF8String:"nfcd"];
      v45 = [v20 code];
      v120[0] = NSLocalizedDescriptionKey;
      if ([v20 code] > 75)
      {
        v52 = 76;
      }

      else
      {
        v52 = [v20 code];
      }

      v53 = [NSString stringWithUTF8String:off_10031AE10[v52]];
      v121[0] = v53;
      v121[1] = v20;
      v120[1] = NSUnderlyingErrorKey;
      v120[2] = @"Line";
      v121[2] = &off_1003332A0;
      v120[3] = @"Method";
      v54 = [[NSString alloc] initWithFormat:@"%s", sel_getName(*(a1 + 56))];
      v121[3] = v54;
      v120[4] = NSDebugDescriptionErrorKey;
      v55 = [[NSString alloc] initWithFormat:@"%s:%d", sel_getName(*(a1 + 56)), 143];
      v121[4] = v55;
      v56 = v121;
      v57 = v120;
LABEL_40:
      v58 = [NSDictionary dictionaryWithObjects:v56 forKeys:v57 count:5];
      v59 = [v43 initWithDomain:v44 code:v45 userInfo:v58];
      (*(v42 + 16))(v42, v59);

      goto LABEL_20;
    }

    v60 = (v50 & 1) == 0;
  }

  dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
  v61 = NFLogGetLogger();
  if (v61)
  {
    v62 = v61;
    v63 = object_getClass(*(a1 + 32));
    v64 = class_isMetaClass(v63);
    v65 = object_getClassName(*(a1 + 32));
    v66 = sel_getName(*(a1 + 56));
    v103 = [*(*(*(a1 + 48) + 8) + 40) processIdentifier];
    v67 = 45;
    if (v64)
    {
      v67 = 43;
    }

    v62(6, "%c[%{public}s %{public}s]:%i PID %d enabling feature %d", v67, v65, v66, 152, v103, *(a1 + 64));
  }

  dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
  v68 = NFSharedLogGetLogger();
  if (os_log_type_enabled(v68, OS_LOG_TYPE_DEFAULT))
  {
    v69 = object_getClass(*(a1 + 32));
    if (class_isMetaClass(v69))
    {
      v70 = 43;
    }

    else
    {
      v70 = 45;
    }

    v71 = object_getClassName(*(a1 + 32));
    v72 = sel_getName(*(a1 + 56));
    v73 = [*(*(*(a1 + 48) + 8) + 40) processIdentifier];
    v74 = *(a1 + 64);
    *buf = 67110402;
    v108 = v70;
    v109 = 2082;
    v110 = v71;
    v111 = 2082;
    v112 = v72;
    v113 = 1024;
    v114 = 152;
    v115 = 1024;
    *v116 = v73;
    *&v116[4] = 1024;
    *&v116[6] = v74;
    _os_log_impl(&_mh_execute_header, v68, OS_LOG_TYPE_DEFAULT, "%c[%{public}s %{public}s]:%i PID %d enabling feature %d", buf, 0x2Eu);
  }

  v75 = [*(a1 + 32) driverWrapper];
  v76 = sub_1001AA264(v75, *(a1 + 64));

  v77 = *(a1 + 40);
  if (v76)
  {
    (*(v77 + 16))(*(a1 + 40), 0);
    sub_10019C0A0(*(a1 + 32));
    if (v60)
    {
      v78 = [*(a1 + 32) driverWrapper];
      sub_10021D9F4(v78);
    }

    v79 = [*(a1 + 32) driverWrapper];
    v80 = sub_1001A9F5C(v79);

    dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
    v81 = NFLogGetLogger();
    if (v81)
    {
      v82 = v81;
      v83 = object_getClass(*(a1 + 32));
      v84 = class_isMetaClass(v83);
      v85 = object_getClassName(*(a1 + 32));
      v102 = sel_getName(*(a1 + 56));
      v86 = 45;
      if (v84)
      {
        v86 = 43;
      }

      v82(6, "%c[%{public}s %{public}s]:%i posting %{public}@ to SESD - current state %lx", v86, v85, v102, 162, @"com.apple.stockholm.lpem.changed", v80);
    }

    dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
    v87 = NFSharedLogGetLogger();
    if (os_log_type_enabled(v87, OS_LOG_TYPE_DEFAULT))
    {
      v88 = object_getClass(*(a1 + 32));
      if (class_isMetaClass(v88))
      {
        v89 = 43;
      }

      else
      {
        v89 = 45;
      }

      v90 = object_getClassName(*(a1 + 32));
      v91 = sel_getName(*(a1 + 56));
      *buf = 67110402;
      v108 = v89;
      v109 = 2082;
      v110 = v90;
      v111 = 2082;
      v112 = v91;
      v113 = 1024;
      v114 = 162;
      v115 = 2114;
      *v116 = @"com.apple.stockholm.lpem.changed";
      *&v116[8] = 2048;
      v117 = v80;
      _os_log_impl(&_mh_execute_header, v87, OS_LOG_TYPE_DEFAULT, "%c[%{public}s %{public}s]:%i posting %{public}@ to SESD - current state %lx", buf, 0x36u);
    }

    v92 = [*(a1 + 32) sesdEventPublisher];
    v105[0] = @"Payload";
    v105[1] = @"lpemFeatures";
    v106[0] = @"com.apple.stockholm.lpem.changed";
    v93 = [NSNumber numberWithUnsignedInteger:v80];
    v106[1] = v93;
    v94 = [NSDictionary dictionaryWithObjects:v106 forKeys:v105 count:2];
    [v92 sendXpcNotificationEventWithDictionary:v94];
  }

  else
  {
    v95 = [NSError alloc];
    v92 = [NSString stringWithUTF8String:"nfcd"];
    v118[0] = NSLocalizedDescriptionKey;
    v93 = [NSString stringWithUTF8String:"Stack Error"];
    v119[0] = v93;
    v119[1] = &off_1003332B8;
    v118[1] = @"Line";
    v118[2] = @"Method";
    v94 = [[NSString alloc] initWithFormat:@"%s", sel_getName(*(a1 + 56))];
    v119[2] = v94;
    v118[3] = NSDebugDescriptionErrorKey;
    v96 = [[NSString alloc] initWithFormat:@"%s:%d", sel_getName(*(a1 + 56)), 154];
    v119[3] = v96;
    v97 = [NSDictionary dictionaryWithObjects:v119 forKeys:v118 count:4];
    v98 = [v95 initWithDomain:v92 code:15 userInfo:v97];
    (*(v77 + 16))(v77, v98);
  }

  v20 = [*(a1 + 32) driverWrapper];
  sub_10021CC94(v20, @"LPEM feature change");
LABEL_20:
}

void sub_10019E0A4(uint64_t a1, void *a2)
{
  v3 = a2;
  if (a1)
  {
    v9[0] = 0;
    v9[1] = v9;
    v9[2] = 0x3032000000;
    v9[3] = sub_100006AFC;
    v9[4] = sub_10019C2DC;
    v10 = +[NSXPCConnection currentConnection];
    v4 = *(a1 + 240);
    v5[0] = _NSConcreteStackBlock;
    v5[1] = 3221225472;
    v5[2] = sub_10019E1D0;
    v5[3] = &unk_10031B0D0;
    v5[4] = a1;
    v7 = v9;
    v8 = "getLPEMFeaturesWithCompletion:";
    v6 = v3;
    dispatch_async(v4, v5);

    _Block_object_dispose(v9, 8);
  }
}

void sub_10019E1D0(uint64_t a1)
{
  if (sub_100003384(*(a1 + 32)) != 2)
  {
    v20 = *(a1 + 40);
    v21 = [NSError alloc];
    v18 = [NSString stringWithUTF8String:"nfcd"];
    v44[0] = NSLocalizedDescriptionKey;
    v22 = [NSString stringWithUTF8String:"Unresponsive hardware"];
    v45[0] = v22;
    v45[1] = &off_1003332D0;
    v44[1] = @"Line";
    v44[2] = @"Method";
    v23 = [[NSString alloc] initWithFormat:@"%s", sel_getName(*(a1 + 56))];
    v45[2] = v23;
    v44[3] = NSDebugDescriptionErrorKey;
    v24 = [[NSString alloc] initWithFormat:@"%s:%d", sel_getName(*(a1 + 56)), 185];
    v45[3] = v24;
    v25 = [NSDictionary dictionaryWithObjects:v45 forKeys:v44 count:4];
    v26 = v21;
    v27 = v18;
    v28 = 58;
LABEL_15:
    v30 = [v26 initWithDomain:v27 code:v28 userInfo:v25];
    (*(v20 + 16))(v20, v30, 0);

    goto LABEL_16;
  }

  v2 = [*(a1 + 32) controllerInfo];
  v3 = [v2 hasLPEMSupport];

  if ((v3 & 1) == 0)
  {
    v20 = *(a1 + 40);
    v29 = [NSError alloc];
    v18 = [NSString stringWithUTF8String:"nfcd"];
    v42[0] = NSLocalizedDescriptionKey;
    v22 = [NSString stringWithUTF8String:"Feature Not Supported"];
    v43[0] = v22;
    v43[1] = &off_1003332E8;
    v42[1] = @"Line";
    v42[2] = @"Method";
    v23 = [[NSString alloc] initWithFormat:@"%s", sel_getName(*(a1 + 56))];
    v43[2] = v23;
    v42[3] = NSDebugDescriptionErrorKey;
    v24 = [[NSString alloc] initWithFormat:@"%s:%d", sel_getName(*(a1 + 56)), 190];
    v43[3] = v24;
    v25 = [NSDictionary dictionaryWithObjects:v43 forKeys:v42 count:4];
    v26 = v29;
    v27 = v18;
    v28 = 14;
    goto LABEL_15;
  }

  dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
  Logger = NFLogGetLogger();
  if (Logger)
  {
    v5 = Logger;
    Class = object_getClass(*(a1 + 32));
    isMetaClass = class_isMetaClass(Class);
    ClassName = object_getClassName(*(a1 + 32));
    Name = sel_getName(*(a1 + 56));
    v31 = [*(*(*(a1 + 48) + 8) + 40) processIdentifier];
    v10 = 45;
    if (isMetaClass)
    {
      v10 = 43;
    }

    v5(6, "%c[%{public}s %{public}s]:%i PID %d getting LPEM features", v10, ClassName, Name, 194, v31);
  }

  dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
  v11 = NFSharedLogGetLogger();
  if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
  {
    v12 = object_getClass(*(a1 + 32));
    if (class_isMetaClass(v12))
    {
      v13 = 43;
    }

    else
    {
      v13 = 45;
    }

    v14 = object_getClassName(*(a1 + 32));
    v15 = sel_getName(*(a1 + 56));
    v16 = [*(*(*(a1 + 48) + 8) + 40) processIdentifier];
    *buf = 67110146;
    v33 = v13;
    v34 = 2082;
    v35 = v14;
    v36 = 2082;
    v37 = v15;
    v38 = 1024;
    v39 = 194;
    v40 = 1024;
    v41 = v16;
    _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_DEFAULT, "%c[%{public}s %{public}s]:%i PID %d getting LPEM features", buf, 0x28u);
  }

  v17 = *(a1 + 40);
  v18 = [*(a1 + 32) driverWrapper];
  v19 = sub_1001A9F5C(v18);
  (*(v17 + 16))(v17, 0, v19);
LABEL_16:
}

void sub_10019E714(uint64_t a1)
{
  v1 = *(a1 + 48);
  v2 = *(a1 + 32);
  v3 = *(a1 + 40);
  if (!v2)
  {
    goto LABEL_20;
  }

  if (sub_100003384(v2) != 2)
  {
    v20 = [NSError alloc];
    v7 = [NSString stringWithUTF8String:"nfcd"];
    v47 = NSLocalizedDescriptionKey;
    v17 = [NSString stringWithUTF8String:"Unresponsive hardware"];
    *buf = v17;
    *v53 = &off_100333300;
    v48 = @"Line";
    v49 = @"Method";
    v21 = [[NSString alloc] initWithFormat:@"%s", sel_getName("_sync_enableHeadlessTestMode:completion:")];
    *&v53[8] = v21;
    v50 = NSDebugDescriptionErrorKey;
    v22 = [[NSString alloc] initWithFormat:@"%s:%d", sel_getName("_sync_enableHeadlessTestMode:completion:"), 219];
    *&v53[16] = v22;
    v23 = [NSDictionary dictionaryWithObjects:buf forKeys:&v47 count:4];
    v24 = v20;
    v25 = v7;
    v26 = 58;
LABEL_18:
    v28 = [v24 initWithDomain:v25 code:v26 userInfo:v23];
    v3[2](v3, v28);

LABEL_19:
    goto LABEL_20;
  }

  v4 = [v2 controllerInfo];
  v5 = [v4 hasLPEMSupport];

  if ((v5 & 1) == 0)
  {
    v27 = [NSError alloc];
    v7 = [NSString stringWithUTF8String:"nfcd"];
    v47 = NSLocalizedDescriptionKey;
    v17 = [NSString stringWithUTF8String:"Feature Not Supported"];
    *buf = v17;
    *v53 = &off_100333318;
    v48 = @"Line";
    v49 = @"Method";
    v21 = [[NSString alloc] initWithFormat:@"%s", sel_getName("_sync_enableHeadlessTestMode:completion:")];
    *&v53[8] = v21;
    v50 = NSDebugDescriptionErrorKey;
    v22 = [[NSString alloc] initWithFormat:@"%s:%d", sel_getName("_sync_enableHeadlessTestMode:completion:"), 224];
    *&v53[16] = v22;
    v23 = [NSDictionary dictionaryWithObjects:buf forKeys:&v47 count:4];
    v24 = v27;
    v25 = v7;
    v26 = 14;
    goto LABEL_18;
  }

  v6 = [v2 driverWrapper];
  v7 = sub_10021A4A0(v6, @"Headless Test Mode", 1uLL);

  if (v7)
  {
    dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
    Logger = NFLogGetLogger();
    if (Logger)
    {
      v9 = Logger;
      Class = object_getClass(v2);
      isMetaClass = class_isMetaClass(Class);
      ClassName = object_getClassName(v2);
      Name = sel_getName("_sync_enableHeadlessTestMode:completion:");
      v12 = 45;
      if (isMetaClass)
      {
        v12 = 43;
      }

      v9(3, "%c[%{public}s %{public}s]:%i Failed to open session : %@", v12, ClassName, Name, 230, v7);
    }

    dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
    v13 = NFSharedLogGetLogger();
    if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
    {
      v14 = object_getClass(v2);
      if (class_isMetaClass(v14))
      {
        v15 = 43;
      }

      else
      {
        v15 = 45;
      }

      *buf = 67110146;
      *&buf[4] = v15;
      *v53 = 2082;
      *&v53[2] = object_getClassName(v2);
      *&v53[10] = 2082;
      *&v53[12] = sel_getName("_sync_enableHeadlessTestMode:completion:");
      *&v53[20] = 1024;
      *&v53[22] = 230;
      *&v53[26] = 2112;
      *&v53[28] = v7;
      _os_log_impl(&_mh_execute_header, v13, OS_LOG_TYPE_ERROR, "%c[%{public}s %{public}s]:%i Failed to open session : %@", buf, 0x2Cu);
    }

    v16 = [NSError alloc];
    v17 = [NSString stringWithUTF8String:"nfcd"];
    v18 = [v7 code];
    v47 = NSLocalizedDescriptionKey;
    if ([v7 code] > 75)
    {
      v19 = 76;
    }

    else
    {
      v19 = [v7 code];
    }

    v32 = [NSString stringWithUTF8String:off_10031AE10[v19]];
    *buf = v32;
    *v53 = v7;
    v48 = NSUnderlyingErrorKey;
    v49 = @"Line";
    *&v53[8] = &off_100333330;
    v50 = @"Method";
    v33 = [[NSString alloc] initWithFormat:@"%s", sel_getName("_sync_enableHeadlessTestMode:completion:")];
    *&v53[16] = v33;
    v51 = NSDebugDescriptionErrorKey;
    v34 = [[NSString alloc] initWithFormat:@"%s:%d", sel_getName("_sync_enableHeadlessTestMode:completion:"), 231];
    *&v53[24] = v34;
    v35 = [NSDictionary dictionaryWithObjects:buf forKeys:&v47 count:5];
    v36 = [v16 initWithDomain:v17 code:v18 userInfo:v35];
    v3[2](v3, v36);

    goto LABEL_19;
  }

  v29 = [v2 driverWrapper];
  v30 = sub_1001AB834(v29, v1);

  if (v30)
  {
    v31 = [v2 driverWrapper];
    sub_10021CC94(v31, @"Headless Test Mode");

    v3[2](v3, 0);
  }

  else
  {
    v37 = [NSError alloc];
    v38 = [NSString stringWithUTF8String:"nfcd"];
    v47 = NSLocalizedDescriptionKey;
    v39 = [NSString stringWithUTF8String:"Stack Error"];
    *buf = v39;
    *v53 = &off_100333348;
    v48 = @"Line";
    v49 = @"Method";
    v40 = [[NSString alloc] initWithFormat:@"%s", sel_getName("_sync_enableHeadlessTestMode:completion:")];
    *&v53[8] = v40;
    v50 = NSDebugDescriptionErrorKey;
    v41 = [[NSString alloc] initWithFormat:@"%s:%d", sel_getName("_sync_enableHeadlessTestMode:completion:"), 237];
    *&v53[16] = v41;
    v42 = [NSDictionary dictionaryWithObjects:buf forKeys:&v47 count:4];
    v43 = [v37 initWithDomain:v38 code:15 userInfo:v42];
    v3[2](v3, v43);

    v44 = [v2 driverWrapper];
    sub_10021CC94(v44, @"Headless Test Mode");
  }

LABEL_20:
}

void sub_10019F01C(uint64_t a1)
{
  v1 = *(a1 + 56);
  v2 = *(a1 + 40);
  v3 = *(a1 + 32);
  v4 = *(*(*(a1 + 48) + 8) + 40);
  v5 = v2;
  if (v3)
  {
    v6 = [v4 NF_whitelistChecker];
    if (sub_100003384(v3) != 2)
    {
      v24 = [NSError alloc];
      v25 = [NSString stringWithUTF8String:"nfcd"];
      v89 = NSLocalizedDescriptionKey;
      v26 = [NSString stringWithUTF8String:"Unresponsive hardware"];
      *buf = v26;
      *v95 = &off_100333360;
      v90 = @"Line";
      v91 = @"Method";
      v27 = [[NSString alloc] initWithFormat:@"%s", sel_getName("_sync_configureHeadlessFactoryMode:connection:completion:")];
      *&v95[8] = v27;
      v92 = NSDebugDescriptionErrorKey;
      v28 = [[NSString alloc] initWithFormat:@"%s:%d", sel_getName("_sync_configureHeadlessFactoryMode:connection:completion:"), 267];
      *&v95[16] = v28;
      v29 = [NSDictionary dictionaryWithObjects:buf forKeys:&v89 count:4];
      v30 = [v24 initWithDomain:v25 code:58 userInfo:v29];
      v5[2](v5, v30);

LABEL_34:
      goto LABEL_35;
    }

    v88 = v6;
    if (([v6 lpmFactoryTest] & 1) == 0)
    {
      dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
      Logger = NFLogGetLogger();
      if (Logger)
      {
        v32 = Logger;
        Class = object_getClass(v3);
        isMetaClass = class_isMetaClass(Class);
        ClassName = object_getClassName(v3);
        Name = sel_getName("_sync_configureHeadlessFactoryMode:connection:completion:");
        v37 = v5;
        v38 = v4;
        v39 = [v4 processIdentifier];
        v40 = [v6 clientName];
        v86 = v39;
        v4 = v38;
        v5 = v37;
        v41 = 43;
        if (!isMetaClass)
        {
          v41 = 45;
        }

        v32(3, "%c[%{public}s %{public}s]:%i PID %d (%{public}@) missing entitlement: %s", v41, ClassName, Name, 272, v86, v40, "com.apple.nfcd.lpm.factorytest");
      }

      dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
      v42 = NFSharedLogGetLogger();
      if (os_log_type_enabled(v42, OS_LOG_TYPE_ERROR))
      {
        v43 = object_getClass(v3);
        if (class_isMetaClass(v43))
        {
          v44 = 43;
        }

        else
        {
          v44 = 45;
        }

        v45 = object_getClassName(v3);
        v46 = sel_getName("_sync_configureHeadlessFactoryMode:connection:completion:");
        v47 = [v4 processIdentifier];
        v48 = [v88 clientName];
        *buf = 67110658;
        *&buf[4] = v44;
        *v95 = 2082;
        *&v95[2] = v45;
        *&v95[10] = 2082;
        *&v95[12] = v46;
        *&v95[20] = 1024;
        *&v95[22] = 272;
        *&v95[26] = 1024;
        *&v95[28] = v47;
        *&v95[32] = 2114;
        *&v95[34] = v48;
        v96 = 2080;
        v97 = "com.apple.nfcd.lpm.factorytest";
        _os_log_impl(&_mh_execute_header, v42, OS_LOG_TYPE_ERROR, "%c[%{public}s %{public}s]:%i PID %d (%{public}@) missing entitlement: %s", buf, 0x3Cu);
      }

      v49 = [NSError alloc];
      v50 = [NSString stringWithUTF8String:"nfcd"];
      v89 = NSLocalizedDescriptionKey;
      v51 = [NSString stringWithUTF8String:"Not entitled"];
      *buf = v51;
      *v95 = &off_100333378;
      v90 = @"Line";
      v91 = @"Method";
      v52 = [[NSString alloc] initWithFormat:@"%s", sel_getName("_sync_configureHeadlessFactoryMode:connection:completion:")];
      *&v95[8] = v52;
      v92 = NSDebugDescriptionErrorKey;
      v53 = [[NSString alloc] initWithFormat:@"%s:%d", sel_getName("_sync_configureHeadlessFactoryMode:connection:completion:"), 273];
      *&v95[16] = v53;
      v54 = [NSDictionary dictionaryWithObjects:buf forKeys:&v89 count:4];
      v55 = v49;
      v56 = v50;
      v57 = 32;
      goto LABEL_31;
    }

    v7 = [v3 controllerInfo];
    if ([v7 hasLPEMSupport])
    {
      v8 = [v3 driverWrapper];
      v9 = sub_1001A9FAC(v8, 1);

      if (v9)
      {
        v10 = [v3 driverWrapper];
        v11 = sub_10021A4A0(v10, @"Set Headless Factory", 1uLL);

        if (v11)
        {
          dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
          v12 = NFLogGetLogger();
          if (v12)
          {
            v13 = v12;
            v14 = object_getClass(v3);
            v15 = class_isMetaClass(v14);
            v84 = object_getClassName(v3);
            v85 = sel_getName("_sync_configureHeadlessFactoryMode:connection:completion:");
            v16 = 45;
            if (v15)
            {
              v16 = 43;
            }

            v13(3, "%c[%{public}s %{public}s]:%i Failed to open session : %@", v16, v84, v85, 284, v11);
          }

          dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
          v17 = NFSharedLogGetLogger();
          if (os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
          {
            v18 = object_getClass(v3);
            if (class_isMetaClass(v18))
            {
              v19 = 43;
            }

            else
            {
              v19 = 45;
            }

            *buf = 67110146;
            *&buf[4] = v19;
            *v95 = 2082;
            *&v95[2] = object_getClassName(v3);
            *&v95[10] = 2082;
            *&v95[12] = sel_getName("_sync_configureHeadlessFactoryMode:connection:completion:");
            *&v95[20] = 1024;
            *&v95[22] = 284;
            *&v95[26] = 2112;
            *&v95[28] = v11;
            _os_log_impl(&_mh_execute_header, v17, OS_LOG_TYPE_ERROR, "%c[%{public}s %{public}s]:%i Failed to open session : %@", buf, 0x2Cu);
          }

          v87 = [NSError alloc];
          v20 = [NSString stringWithUTF8String:"nfcd"];
          v21 = [v11 code];
          v89 = NSLocalizedDescriptionKey;
          v22 = v4;
          if ([v11 code] > 75)
          {
            v23 = 76;
          }

          else
          {
            v23 = [v11 code];
          }

          v64 = [NSString stringWithUTF8String:off_10031AE10[v23]];
          *buf = v64;
          *v95 = v11;
          v90 = NSUnderlyingErrorKey;
          v91 = @"Line";
          *&v95[8] = &off_1003333A8;
          v92 = @"Method";
          v65 = [[NSString alloc] initWithFormat:@"%s", sel_getName("_sync_configureHeadlessFactoryMode:connection:completion:")];
          *&v95[16] = v65;
          v93 = NSDebugDescriptionErrorKey;
          v66 = [NSString alloc];
          v67 = sel_getName("_sync_configureHeadlessFactoryMode:connection:completion:");
          v68 = 285;
          goto LABEL_46;
        }

        v60 = [v3 expressModeManager];
        v11 = sub_10003BC08(v60, v1);

        v61 = [v3 driverWrapper];
        v62 = v61;
        if (v11)
        {
          sub_10021CC94(v61, @"Set Headless Factory");

          v87 = [NSError alloc];
          v20 = [NSString stringWithUTF8String:"nfcd"];
          v21 = [v11 code];
          v89 = NSLocalizedDescriptionKey;
          v22 = v4;
          if ([v11 code] > 75)
          {
            v63 = 76;
          }

          else
          {
            v63 = [v11 code];
          }

          v64 = [NSString stringWithUTF8String:off_10031AE10[v63]];
          *buf = v64;
          *v95 = v11;
          v90 = NSUnderlyingErrorKey;
          v91 = @"Line";
          *&v95[8] = &off_1003333C0;
          v92 = @"Method";
          v65 = [[NSString alloc] initWithFormat:@"%s", sel_getName("_sync_configureHeadlessFactoryMode:connection:completion:")];
          *&v95[16] = v65;
          v93 = NSDebugDescriptionErrorKey;
          v66 = [NSString alloc];
          v67 = sel_getName("_sync_configureHeadlessFactoryMode:connection:completion:");
          v68 = 293;
LABEL_46:
          v75 = [v66 initWithFormat:@"%s:%d", v67, v68];
          *&v95[24] = v75;
          v76 = [NSDictionary dictionaryWithObjects:buf forKeys:&v89 count:5];
          v77 = [v87 initWithDomain:v20 code:v21 userInfo:v76];
          v5[2](v5, v77);

          v4 = v22;
          goto LABEL_33;
        }

        if (v1)
        {
          v69 = sub_1001AA264(v61, 1);

          if ((v69 & 1) == 0)
          {
            v70 = [v3 driverWrapper];
            sub_10021CC94(v70, @"Set Headless Factory");

            v71 = [NSError alloc];
            v50 = [NSString stringWithUTF8String:"nfcd"];
            v89 = NSLocalizedDescriptionKey;
            v51 = [NSString stringWithUTF8String:"Stack Error"];
            *buf = v51;
            *v95 = &off_1003333D8;
            v90 = @"Line";
            v91 = @"Method";
            v52 = [[NSString alloc] initWithFormat:@"%s", sel_getName("_sync_configureHeadlessFactoryMode:connection:completion:")];
            *&v95[8] = v52;
            v92 = NSDebugDescriptionErrorKey;
            v72 = [NSString alloc];
            v73 = sel_getName("_sync_configureHeadlessFactoryMode:connection:completion:");
            v74 = 301;
LABEL_51:
            v53 = [v72 initWithFormat:@"%s:%d", v73, v74];
            *&v95[16] = v53;
            v54 = [NSDictionary dictionaryWithObjects:buf forKeys:&v89 count:4];
            v55 = v71;
            v56 = v50;
            v57 = 15;
            goto LABEL_31;
          }
        }

        else
        {
          v78 = sub_1001AA6BC(v61, 31);

          if ((v78 & 1) == 0)
          {
            v83 = [v3 driverWrapper];
            sub_10021CC94(v83, @"Set Headless Factory");

            v71 = [NSError alloc];
            v50 = [NSString stringWithUTF8String:"nfcd"];
            v89 = NSLocalizedDescriptionKey;
            v51 = [NSString stringWithUTF8String:"Stack Error"];
            *buf = v51;
            *v95 = &off_1003333F0;
            v90 = @"Line";
            v91 = @"Method";
            v52 = [[NSString alloc] initWithFormat:@"%s", sel_getName("_sync_configureHeadlessFactoryMode:connection:completion:")];
            *&v95[8] = v52;
            v92 = NSDebugDescriptionErrorKey;
            v72 = [NSString alloc];
            v73 = sel_getName("_sync_configureHeadlessFactoryMode:connection:completion:");
            v74 = 309;
            goto LABEL_51;
          }
        }

        v79 = sub_100003068(v3);
        v80 = sub_100093D80(v3, v79);

        v81 = [v3 driverWrapper];
        sub_10021CC94(v81, @"Set Headless Factory");

        if (!v80)
        {
          v5[2](v5, 0);
          goto LABEL_33;
        }

        v82 = [NSError alloc];
        v50 = [NSString stringWithUTF8String:"nfcd"];
        v89 = NSLocalizedDescriptionKey;
        v51 = [NSString stringWithUTF8String:"Stack Error"];
        *buf = v51;
        *v95 = &off_100333408;
        v90 = @"Line";
        v91 = @"Method";
        v52 = [[NSString alloc] initWithFormat:@"%s", sel_getName("_sync_configureHeadlessFactoryMode:connection:completion:")];
        *&v95[8] = v52;
        v92 = NSDebugDescriptionErrorKey;
        v53 = [[NSString alloc] initWithFormat:@"%s:%d", sel_getName("_sync_configureHeadlessFactoryMode:connection:completion:"), 317];
        *&v95[16] = v53;
        v54 = [NSDictionary dictionaryWithObjects:buf forKeys:&v89 count:4];
        v59 = [v82 initWithDomain:v50 code:15 userInfo:v54];
        v5[2](v5, v59);
        goto LABEL_32;
      }
    }

    else
    {
    }

    v58 = [NSError alloc];
    v50 = [NSString stringWithUTF8String:"nfcd"];
    v89 = NSLocalizedDescriptionKey;
    v51 = [NSString stringWithUTF8String:"Feature Not Supported"];
    *buf = v51;
    *v95 = &off_100333390;
    v90 = @"Line";
    v91 = @"Method";
    v52 = [[NSString alloc] initWithFormat:@"%s", sel_getName("_sync_configureHeadlessFactoryMode:connection:completion:")];
    *&v95[8] = v52;
    v92 = NSDebugDescriptionErrorKey;
    v53 = [[NSString alloc] initWithFormat:@"%s:%d", sel_getName("_sync_configureHeadlessFactoryMode:connection:completion:"), 278];
    *&v95[16] = v53;
    v54 = [NSDictionary dictionaryWithObjects:buf forKeys:&v89 count:4];
    v55 = v58;
    v56 = v50;
    v57 = 14;
LABEL_31:
    v59 = [v55 initWithDomain:v56 code:v57 userInfo:v54];
    v5[2](v5, v59);
LABEL_32:

LABEL_33:
    v6 = v88;
    goto LABEL_34;
  }

LABEL_35:
}

void sub_1001A002C(void *a1)
{
  v1 = a1[5];
  v2 = a1[4];
  v3 = *(*(a1[6] + 8) + 40);
  v4 = v1;
  if (v2)
  {
    v5 = [v3 NF_whitelistChecker];
    if (sub_100003384(v2) != 2)
    {
      v22 = [NSError alloc];
      v9 = [NSString stringWithUTF8String:"nfcd"];
      v81 = NSLocalizedDescriptionKey;
      v23 = [NSString stringWithUTF8String:"Unresponsive hardware"];
      *buf = v23;
      *v87 = &off_100333420;
      v82 = @"Line";
      v83 = @"Method";
      v24 = [[NSString alloc] initWithFormat:@"%s", sel_getName("_sync_headlessFactoryModeFromConnection:completion:")];
      *&v87[8] = v24;
      v84 = NSDebugDescriptionErrorKey;
      v25 = [[NSString alloc] initWithFormat:@"%s:%d", sel_getName("_sync_headlessFactoryModeFromConnection:completion:"), 345];
      *&v87[16] = v25;
      v26 = [NSDictionary dictionaryWithObjects:buf forKeys:&v81 count:4];
      v27 = [v22 initWithDomain:v9 code:58 userInfo:v26];
      v4[2](v4, v27, 0);

LABEL_31:
      goto LABEL_32;
    }

    v79 = v5;
    if ([v5 lpmFactoryTest])
    {
      v6 = [v2 controllerInfo];
      v7 = [v6 hasLPEMSupport];

      if (v7)
      {
        v8 = [v2 driverWrapper];
        v9 = sub_10021A4A0(v8, @"Get Headless Factory", 1uLL);

        if (v9)
        {
          dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
          Logger = NFLogGetLogger();
          if (Logger)
          {
            v11 = Logger;
            Class = object_getClass(v2);
            isMetaClass = class_isMetaClass(Class);
            ClassName = object_getClassName(v2);
            Name = sel_getName("_sync_headlessFactoryModeFromConnection:completion:");
            v14 = 45;
            if (isMetaClass)
            {
              v14 = 43;
            }

            v11(3, "%c[%{public}s %{public}s]:%i Failed to open session : %@", v14, ClassName, Name, 362, v9);
          }

          dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
          v15 = NFSharedLogGetLogger();
          if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
          {
            v16 = object_getClass(v2);
            if (class_isMetaClass(v16))
            {
              v17 = 43;
            }

            else
            {
              v17 = 45;
            }

            *buf = 67110146;
            *&buf[4] = v17;
            *v87 = 2082;
            *&v87[2] = object_getClassName(v2);
            *&v87[10] = 2082;
            *&v87[12] = sel_getName("_sync_headlessFactoryModeFromConnection:completion:");
            *&v87[20] = 1024;
            *&v87[22] = 362;
            *&v87[26] = 2112;
            *&v87[28] = v9;
            _os_log_impl(&_mh_execute_header, v15, OS_LOG_TYPE_ERROR, "%c[%{public}s %{public}s]:%i Failed to open session : %@", buf, 0x2Cu);
          }

          v76 = [NSError alloc];
          v18 = [NSString stringWithUTF8String:"nfcd"];
          v19 = [v9 code];
          v81 = NSLocalizedDescriptionKey;
          v20 = v3;
          if ([v9 code] > 75)
          {
            v21 = 76;
          }

          else
          {
            v21 = [v9 code];
          }

          v62 = [NSString stringWithUTF8String:off_10031AE10[v21]];
          *buf = v62;
          *v87 = v9;
          v82 = NSUnderlyingErrorKey;
          v83 = @"Line";
          *&v87[8] = &off_100333468;
          v84 = @"Method";
          v63 = [[NSString alloc] initWithFormat:@"%s", sel_getName("_sync_headlessFactoryModeFromConnection:completion:")];
          *&v87[16] = v63;
          v85 = NSDebugDescriptionErrorKey;
          v64 = [[NSString alloc] initWithFormat:@"%s:%d", sel_getName("_sync_headlessFactoryModeFromConnection:completion:"), 363];
          *&v87[24] = v64;
          v65 = [NSDictionary dictionaryWithObjects:buf forKeys:&v81 count:5];
          v66 = [v76 initWithDomain:v18 code:v19 userInfo:v65];
          v4[2](v4, v66, 0);

          v3 = v20;
        }

        else
        {
          v56 = [v2 driverWrapper];
          v80 = 0;
          v57 = sub_1001AB574(v56, &v80);
          v58 = v80;

          if (v58)
          {
            v78 = v57;
            v77 = [NSError alloc];
            v59 = [NSString stringWithUTF8String:"nfcd"];
            v75 = [v58 code];
            v81 = NSLocalizedDescriptionKey;
            v60 = v3;
            if ([v58 code] > 75)
            {
              v61 = 76;
            }

            else
            {
              v61 = [v58 code];
            }

            v67 = [NSString stringWithUTF8String:off_10031AE10[v61]];
            *buf = v67;
            *v87 = v58;
            v82 = NSUnderlyingErrorKey;
            v83 = @"Line";
            *&v87[8] = &off_100333480;
            v84 = @"Method";
            v68 = [[NSString alloc] initWithFormat:@"%s", sel_getName("_sync_headlessFactoryModeFromConnection:completion:")];
            *&v87[16] = v68;
            v85 = NSDebugDescriptionErrorKey;
            v69 = [[NSString alloc] initWithFormat:@"%s:%d", sel_getName("_sync_headlessFactoryModeFromConnection:completion:"), 369];
            *&v87[24] = v69;
            v70 = [NSDictionary dictionaryWithObjects:buf forKeys:&v81 count:5];
            v9 = [v77 initWithDomain:v59 code:v75 userInfo:v70];

            v3 = v60;
            v57 = v78;
          }

          else
          {
            v9 = 0;
          }

          v71 = [v2 driverWrapper];
          sub_10021CC94(v71, @"Get Headless Factory");

          v4[2](v4, v9, v57);
        }

        goto LABEL_30;
      }

      v54 = [NSError alloc];
      v9 = [NSString stringWithUTF8String:"nfcd"];
      v81 = NSLocalizedDescriptionKey;
      v47 = [NSString stringWithUTF8String:"Feature Not Supported"];
      *buf = v47;
      *v87 = &off_100333450;
      v82 = @"Line";
      v83 = @"Method";
      v48 = [[NSString alloc] initWithFormat:@"%s", sel_getName("_sync_headlessFactoryModeFromConnection:completion:")];
      *&v87[8] = v48;
      v84 = NSDebugDescriptionErrorKey;
      v49 = [[NSString alloc] initWithFormat:@"%s:%d", sel_getName("_sync_headlessFactoryModeFromConnection:completion:"), 356];
      *&v87[16] = v49;
      v50 = [NSDictionary dictionaryWithObjects:buf forKeys:&v81 count:4];
      v51 = v54;
      v52 = v9;
      v53 = 14;
    }

    else
    {
      dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
      v28 = NFLogGetLogger();
      if (v28)
      {
        v29 = v28;
        v30 = object_getClass(v2);
        v31 = class_isMetaClass(v30);
        v32 = object_getClassName(v2);
        v33 = sel_getName("_sync_headlessFactoryModeFromConnection:completion:");
        v34 = v4;
        v35 = v3;
        v36 = [v3 processIdentifier];
        v37 = [v5 clientName];
        v74 = v36;
        v3 = v35;
        v4 = v34;
        v38 = 43;
        if (!v31)
        {
          v38 = 45;
        }

        v29(3, "%c[%{public}s %{public}s]:%i PID %d (%{public}@) missing entitlement: %s", v38, v32, v33, 350, v74, v37, "com.apple.nfcd.lpm.factorytest");
      }

      dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
      v39 = NFSharedLogGetLogger();
      if (os_log_type_enabled(v39, OS_LOG_TYPE_ERROR))
      {
        v40 = object_getClass(v2);
        if (class_isMetaClass(v40))
        {
          v41 = 43;
        }

        else
        {
          v41 = 45;
        }

        v42 = object_getClassName(v2);
        v43 = sel_getName("_sync_headlessFactoryModeFromConnection:completion:");
        v44 = [v3 processIdentifier];
        v45 = [v79 clientName];
        *buf = 67110658;
        *&buf[4] = v41;
        *v87 = 2082;
        *&v87[2] = v42;
        *&v87[10] = 2082;
        *&v87[12] = v43;
        *&v87[20] = 1024;
        *&v87[22] = 350;
        *&v87[26] = 1024;
        *&v87[28] = v44;
        *&v87[32] = 2114;
        *&v87[34] = v45;
        v88 = 2080;
        v89 = "com.apple.nfcd.lpm.factorytest";
        _os_log_impl(&_mh_execute_header, v39, OS_LOG_TYPE_ERROR, "%c[%{public}s %{public}s]:%i PID %d (%{public}@) missing entitlement: %s", buf, 0x3Cu);
      }

      v46 = [NSError alloc];
      v9 = [NSString stringWithUTF8String:"nfcd"];
      v81 = NSLocalizedDescriptionKey;
      v47 = [NSString stringWithUTF8String:"Not entitled"];
      *buf = v47;
      *v87 = &off_100333438;
      v82 = @"Line";
      v83 = @"Method";
      v48 = [[NSString alloc] initWithFormat:@"%s", sel_getName("_sync_headlessFactoryModeFromConnection:completion:")];
      *&v87[8] = v48;
      v84 = NSDebugDescriptionErrorKey;
      v49 = [[NSString alloc] initWithFormat:@"%s:%d", sel_getName("_sync_headlessFactoryModeFromConnection:completion:"), 351];
      *&v87[16] = v49;
      v50 = [NSDictionary dictionaryWithObjects:buf forKeys:&v81 count:4];
      v51 = v46;
      v52 = v9;
      v53 = 32;
    }

    v55 = [v51 initWithDomain:v52 code:v53 userInfo:v50];
    v4[2](v4, v55, 0);

LABEL_30:
    v5 = v79;
    goto LABEL_31;
  }

LABEL_32:
}

void sub_1001A0CBC(void *a1)
{
  v1 = a1[5];
  v2 = a1[4];
  v3 = *(*(a1[6] + 8) + 40);
  v4 = v1;
  if (v2)
  {
    v5 = [v3 NF_whitelistChecker];
    if (sub_100003384(v2) != 2)
    {
      v22 = [NSError alloc];
      v9 = [NSString stringWithUTF8String:"nfcd"];
      v78 = NSLocalizedDescriptionKey;
      v23 = [NSString stringWithUTF8String:"Unresponsive hardware"];
      *buf = v23;
      *v84 = &off_100333498;
      v79 = @"Line";
      v80 = @"Method";
      v24 = [[NSString alloc] initWithFormat:@"%s", sel_getName("_sync_disableHeadlessMiniNVForConnection:completion:")];
      *&v84[8] = v24;
      v81 = NSDebugDescriptionErrorKey;
      v25 = [[NSString alloc] initWithFormat:@"%s:%d", sel_getName("_sync_disableHeadlessMiniNVForConnection:completion:"), 396];
      *&v84[16] = v25;
      v26 = [NSDictionary dictionaryWithObjects:buf forKeys:&v78 count:4];
      v27 = [v22 initWithDomain:v9 code:58 userInfo:v26];
      v4[2](v4, v27);

LABEL_31:
      goto LABEL_32;
    }

    v77 = v5;
    if ([v5 miniNVWriteAccess])
    {
      v6 = [v2 controllerInfo];
      v7 = [v6 hasLPEMSupport];

      if (v7)
      {
        v8 = [v2 driverWrapper];
        v9 = sub_10021A4A0(v8, @"Disable Headless", 1uLL);

        if (v9)
        {
          dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
          Logger = NFLogGetLogger();
          if (Logger)
          {
            v11 = Logger;
            Class = object_getClass(v2);
            isMetaClass = class_isMetaClass(Class);
            ClassName = object_getClassName(v2);
            Name = sel_getName("_sync_disableHeadlessMiniNVForConnection:completion:");
            v14 = 45;
            if (isMetaClass)
            {
              v14 = 43;
            }

            v11(3, "%c[%{public}s %{public}s]:%i Failed to open session : %@error", v14, ClassName, Name, 413, v9);
          }

          dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
          v15 = NFSharedLogGetLogger();
          if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
          {
            v16 = object_getClass(v2);
            if (class_isMetaClass(v16))
            {
              v17 = 43;
            }

            else
            {
              v17 = 45;
            }

            *buf = 67110146;
            *&buf[4] = v17;
            *v84 = 2082;
            *&v84[2] = object_getClassName(v2);
            *&v84[10] = 2082;
            *&v84[12] = sel_getName("_sync_disableHeadlessMiniNVForConnection:completion:");
            *&v84[20] = 1024;
            *&v84[22] = 413;
            *&v84[26] = 2112;
            *&v84[28] = v9;
            _os_log_impl(&_mh_execute_header, v15, OS_LOG_TYPE_ERROR, "%c[%{public}s %{public}s]:%i Failed to open session : %@error", buf, 0x2Cu);
          }

          v74 = [NSError alloc];
          v18 = [NSString stringWithUTF8String:"nfcd"];
          v19 = [v9 code];
          v78 = NSLocalizedDescriptionKey;
          v20 = v3;
          if ([v9 code] > 75)
          {
            v21 = 76;
          }

          else
          {
            v21 = [v9 code];
          }

          v61 = [NSString stringWithUTF8String:off_10031AE10[v21]];
          *buf = v61;
          *v84 = v9;
          v79 = NSUnderlyingErrorKey;
          v80 = @"Line";
          *&v84[8] = &off_1003334E0;
          v81 = @"Method";
          v62 = [[NSString alloc] initWithFormat:@"%s", sel_getName("_sync_disableHeadlessMiniNVForConnection:completion:")];
          *&v84[16] = v62;
          v82 = NSDebugDescriptionErrorKey;
          v63 = [[NSString alloc] initWithFormat:@"%s:%d", sel_getName("_sync_disableHeadlessMiniNVForConnection:completion:"), 414];
          *&v84[24] = v63;
          v64 = [NSDictionary dictionaryWithObjects:buf forKeys:&v78 count:5];
          v65 = [v74 initWithDomain:v18 code:v19 userInfo:v64];
          v4[2](v4, v65);

          v3 = v20;
        }

        else
        {
          v56 = [v2 driverWrapper];
          v57 = sub_1001AAEF8(v56);

          if (v57)
          {
            v76 = [NSError alloc];
            v58 = [NSString stringWithUTF8String:"nfcd"];
            v75 = [v57 code];
            v78 = NSLocalizedDescriptionKey;
            v59 = v3;
            if ([v57 code] > 75)
            {
              v60 = 76;
            }

            else
            {
              v60 = [v57 code];
            }

            v66 = [NSString stringWithUTF8String:off_10031AE10[v60]];
            *buf = v66;
            *v84 = v57;
            v79 = NSUnderlyingErrorKey;
            v80 = @"Line";
            *&v84[8] = &off_1003334F8;
            v81 = @"Method";
            v67 = [[NSString alloc] initWithFormat:@"%s", sel_getName("_sync_disableHeadlessMiniNVForConnection:completion:")];
            *&v84[16] = v67;
            v82 = NSDebugDescriptionErrorKey;
            v68 = [[NSString alloc] initWithFormat:@"%s:%d", sel_getName("_sync_disableHeadlessMiniNVForConnection:completion:"), 420];
            *&v84[24] = v68;
            v69 = [NSDictionary dictionaryWithObjects:buf forKeys:&v78 count:5];
            v9 = [v76 initWithDomain:v58 code:v75 userInfo:v69];

            v3 = v59;
          }

          else
          {
            v9 = 0;
          }

          v70 = [v2 driverWrapper];
          sub_10021CC94(v70, @"Disable Headless");

          v4[2](v4, v9);
        }

        goto LABEL_30;
      }

      v54 = [NSError alloc];
      v9 = [NSString stringWithUTF8String:"nfcd"];
      v78 = NSLocalizedDescriptionKey;
      v47 = [NSString stringWithUTF8String:"Feature Not Supported"];
      *buf = v47;
      *v84 = &off_1003334C8;
      v79 = @"Line";
      v80 = @"Method";
      v48 = [[NSString alloc] initWithFormat:@"%s", sel_getName("_sync_disableHeadlessMiniNVForConnection:completion:")];
      *&v84[8] = v48;
      v81 = NSDebugDescriptionErrorKey;
      v49 = [[NSString alloc] initWithFormat:@"%s:%d", sel_getName("_sync_disableHeadlessMiniNVForConnection:completion:"), 407];
      *&v84[16] = v49;
      v50 = [NSDictionary dictionaryWithObjects:buf forKeys:&v78 count:4];
      v51 = v54;
      v52 = v9;
      v53 = 14;
    }

    else
    {
      dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
      v28 = NFLogGetLogger();
      if (v28)
      {
        v29 = v28;
        v30 = object_getClass(v2);
        v31 = class_isMetaClass(v30);
        v32 = object_getClassName(v2);
        v33 = sel_getName("_sync_disableHeadlessMiniNVForConnection:completion:");
        v34 = v4;
        v35 = v3;
        v36 = [v3 processIdentifier];
        v37 = [v5 clientName];
        v73 = v36;
        v3 = v35;
        v4 = v34;
        v38 = 43;
        if (!v31)
        {
          v38 = 45;
        }

        v29(3, "%c[%{public}s %{public}s]:%i PID %d (%{public}@) missing entitlement: %s", v38, v32, v33, 401, v73, v37, "com.apple.nfcd.mininv.write");
      }

      dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
      v39 = NFSharedLogGetLogger();
      if (os_log_type_enabled(v39, OS_LOG_TYPE_ERROR))
      {
        v40 = object_getClass(v2);
        if (class_isMetaClass(v40))
        {
          v41 = 43;
        }

        else
        {
          v41 = 45;
        }

        v42 = object_getClassName(v2);
        v43 = sel_getName("_sync_disableHeadlessMiniNVForConnection:completion:");
        v44 = [v3 processIdentifier];
        v45 = [v77 clientName];
        *buf = 67110658;
        *&buf[4] = v41;
        *v84 = 2082;
        *&v84[2] = v42;
        *&v84[10] = 2082;
        *&v84[12] = v43;
        *&v84[20] = 1024;
        *&v84[22] = 401;
        *&v84[26] = 1024;
        *&v84[28] = v44;
        *&v84[32] = 2114;
        *&v84[34] = v45;
        v85 = 2080;
        v86 = "com.apple.nfcd.mininv.write";
        _os_log_impl(&_mh_execute_header, v39, OS_LOG_TYPE_ERROR, "%c[%{public}s %{public}s]:%i PID %d (%{public}@) missing entitlement: %s", buf, 0x3Cu);
      }

      v46 = [NSError alloc];
      v9 = [NSString stringWithUTF8String:"nfcd"];
      v78 = NSLocalizedDescriptionKey;
      v47 = [NSString stringWithUTF8String:"Not entitled"];
      *buf = v47;
      *v84 = &off_1003334B0;
      v79 = @"Line";
      v80 = @"Method";
      v48 = [[NSString alloc] initWithFormat:@"%s", sel_getName("_sync_disableHeadlessMiniNVForConnection:completion:")];
      *&v84[8] = v48;
      v81 = NSDebugDescriptionErrorKey;
      v49 = [[NSString alloc] initWithFormat:@"%s:%d", sel_getName("_sync_disableHeadlessMiniNVForConnection:completion:"), 402];
      *&v84[16] = v49;
      v50 = [NSDictionary dictionaryWithObjects:buf forKeys:&v78 count:4];
      v51 = v46;
      v52 = v9;
      v53 = 32;
    }

    v55 = [v51 initWithDomain:v52 code:v53 userInfo:v50];
    v4[2](v4, v55);

LABEL_30:
    v5 = v77;
    goto LABEL_31;
  }

LABEL_32:
}

void sub_1001A1808(uint64_t a1, void *a2)
{
  v3 = a2;
  if (a1)
  {
    v4 = *(a1 + 240);
    block[0] = _NSConcreteStackBlock;
    block[1] = 3221225472;
    block[2] = sub_1001A18C4;
    block[3] = &unk_100316050;
    block[4] = a1;
    v6 = v3;
    v7 = "configureMiniNVWithCompletion:";
    dispatch_async(v4, block);
  }
}

void sub_1001A18C4(uint64_t a1)
{
  v2 = [*(a1 + 32) controllerInfo];
  v3 = [v2 hasLPEMSupport];

  if ((v3 & 1) == 0)
  {
    v17 = *(a1 + 40);
    v18 = [NSError alloc];
    v19 = [NSString stringWithUTF8String:"nfcd"];
    v106[0] = NSLocalizedDescriptionKey;
    v20 = [NSString stringWithUTF8String:"Feature Not Supported"];
    v107[0] = v20;
    v107[1] = &off_100333510;
    v106[1] = @"Line";
    v106[2] = @"Method";
    v21 = [[NSString alloc] initWithFormat:@"%s", sel_getName(*(a1 + 48))];
    v107[2] = v21;
    v106[3] = NSDebugDescriptionErrorKey;
    v22 = [[NSString alloc] initWithFormat:@"%s:%d", sel_getName(*(a1 + 48)), 436];
    v107[3] = v22;
    v23 = [NSDictionary dictionaryWithObjects:v107 forKeys:v106 count:4];
    v24 = [v18 initWithDomain:v19 code:14 userInfo:v23];
    (*(v17 + 16))(v17, v24);

LABEL_48:
    return;
  }

  v4 = [*(a1 + 32) controllerInfo];
  v5 = [v4 siliconName];

  if (v5 != 18)
  {
    v25 = [*(a1 + 32) driverWrapper];
    v19 = sub_10021A4A0(v25, @"LPEM MiniNV config", 1uLL);

    if (v19)
    {
      dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
      Logger = NFLogGetLogger();
      if (Logger)
      {
        v27 = Logger;
        Class = object_getClass(*(a1 + 32));
        isMetaClass = class_isMetaClass(Class);
        ClassName = object_getClassName(*(a1 + 32));
        Name = sel_getName(*(a1 + 48));
        v30 = 45;
        if (isMetaClass)
        {
          v30 = 43;
        }

        v27(3, "%c[%{public}s %{public}s]:%i Failed to open session : %@", v30, ClassName, Name, 448, v19);
      }

      dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
      v31 = NFSharedLogGetLogger();
      if (os_log_type_enabled(v31, OS_LOG_TYPE_ERROR))
      {
        v32 = object_getClass(*(a1 + 32));
        if (class_isMetaClass(v32))
        {
          v33 = 43;
        }

        else
        {
          v33 = 45;
        }

        v34 = object_getClassName(*(a1 + 32));
        v35 = sel_getName(*(a1 + 48));
        *buf = 67110146;
        v97 = v33;
        v98 = 2082;
        v99 = v34;
        v100 = 2082;
        v101 = v35;
        v102 = 1024;
        v103 = 448;
        v104 = 2112;
        v105 = v19;
        _os_log_impl(&_mh_execute_header, v31, OS_LOG_TYPE_ERROR, "%c[%{public}s %{public}s]:%i Failed to open session : %@", buf, 0x2Cu);
      }

      v36 = *(a1 + 40);
      v37 = [NSError alloc];
      v38 = [NSString stringWithUTF8String:"nfcd"];
      v39 = [v19 code];
      v94[0] = NSLocalizedDescriptionKey;
      if ([v19 code] > 75)
      {
        v40 = 76;
      }

      else
      {
        v40 = [v19 code];
      }

      v45 = [NSString stringWithUTF8String:off_10031AE10[v40]];
      v95[0] = v45;
      v95[1] = v19;
      v94[1] = NSUnderlyingErrorKey;
      v94[2] = @"Line";
      v95[2] = &off_100333528;
      v94[3] = @"Method";
      v46 = [[NSString alloc] initWithFormat:@"%s", sel_getName(*(a1 + 48))];
      v95[3] = v46;
      v94[4] = NSDebugDescriptionErrorKey;
      v47 = [[NSString alloc] initWithFormat:@"%s:%d", sel_getName(*(a1 + 48)), 449];
      v95[4] = v47;
      v48 = v95;
      v49 = v94;
      goto LABEL_47;
    }

    v41 = [*(a1 + 32) driverWrapper];
    v87 = 0;
    v42 = sub_1001AB574(v41, &v87);
    v19 = v87;

    if (v19)
    {
      v43 = [*(a1 + 32) driverWrapper];
      sub_10021CC94(v43, @"LPEM MiniNV config");

      v36 = *(a1 + 40);
      v37 = [NSError alloc];
      v38 = [NSString stringWithUTF8String:"nfcd"];
      v39 = [v19 code];
      v92[0] = NSLocalizedDescriptionKey;
      if ([v19 code] > 75)
      {
        v44 = 76;
      }

      else
      {
        v44 = [v19 code];
      }

      v45 = [NSString stringWithUTF8String:off_10031AE10[v44]];
      v93[0] = v45;
      v93[1] = v19;
      v92[1] = NSUnderlyingErrorKey;
      v92[2] = @"Line";
      v93[2] = &off_100333540;
      v92[3] = @"Method";
      v46 = [[NSString alloc] initWithFormat:@"%s", sel_getName(*(a1 + 48))];
      v93[3] = v46;
      v92[4] = NSDebugDescriptionErrorKey;
      v47 = [[NSString alloc] initWithFormat:@"%s:%d", sel_getName(*(a1 + 48)), 456];
      v93[4] = v47;
      v48 = v93;
      v49 = v92;
LABEL_47:
      v68 = [NSDictionary dictionaryWithObjects:v48 forKeys:v49 count:5];
      v69 = [v37 initWithDomain:v38 code:v39 userInfo:v68];
      (*(v36 + 16))(v36, v69);

      goto LABEL_48;
    }

    if (v42)
    {
      goto LABEL_50;
    }

    dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
    v50 = NFLogGetLogger();
    if (v50)
    {
      v51 = v50;
      v52 = object_getClass(*(a1 + 32));
      v53 = class_isMetaClass(v52);
      v54 = object_getClassName(*(a1 + 32));
      v85 = sel_getName(*(a1 + 48));
      v55 = 45;
      if (v53)
      {
        v55 = 43;
      }

      v51(6, "%c[%{public}s %{public}s]:%i enabling MiniNV", v55, v54, v85, 461);
    }

    dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
    v56 = NFSharedLogGetLogger();
    if (os_log_type_enabled(v56, OS_LOG_TYPE_DEFAULT))
    {
      v57 = object_getClass(*(a1 + 32));
      if (class_isMetaClass(v57))
      {
        v58 = 43;
      }

      else
      {
        v58 = 45;
      }

      v59 = object_getClassName(*(a1 + 32));
      v60 = sel_getName(*(a1 + 48));
      *buf = 67109890;
      v97 = v58;
      v98 = 2082;
      v99 = v59;
      v100 = 2082;
      v101 = v60;
      v102 = 1024;
      v103 = 461;
      _os_log_impl(&_mh_execute_header, v56, OS_LOG_TYPE_DEFAULT, "%c[%{public}s %{public}s]:%i enabling MiniNV", buf, 0x22u);
    }

    v61 = [*(a1 + 32) driverWrapper];
    v19 = sub_1001AB260(v61);

    if (v19)
    {
      v62 = *(a1 + 40);
      v63 = (v62 + 16);
      v64 = NSLocalizedDescriptionKey;
LABEL_43:
      v86 = [NSError alloc];
      v65 = [NSString stringWithUTF8String:"nfcd"];
      v66 = [v19 code];
      v88[0] = v64;
      if ([v19 code] > 75)
      {
        v67 = 76;
      }

      else
      {
        v67 = [v19 code];
      }

      v72 = [NSString stringWithUTF8String:off_10031AE10[v67]];
      v89[0] = v72;
      v89[1] = v19;
      v88[1] = NSUnderlyingErrorKey;
      v88[2] = @"Line";
      v89[2] = &off_100333558;
      v88[3] = @"Method";
      v73 = [[NSString alloc] initWithFormat:@"%s", sel_getName(*(a1 + 48))];
      v89[3] = v73;
      v88[4] = NSDebugDescriptionErrorKey;
      v74 = [[NSString alloc] initWithFormat:@"%s:%d", sel_getName(*(a1 + 48)), 469];
      v89[4] = v74;
      v75 = [NSDictionary dictionaryWithObjects:v89 forKeys:v88 count:5];
      v76 = [v86 initWithDomain:v65 code:v66 userInfo:v75];
      (*v63)(v62, v76);

      goto LABEL_54;
    }

    v70 = [*(a1 + 32) driverWrapper];
    v71 = sub_10021D9F4(v70);

    if (v71)
    {
LABEL_50:
      v62 = *(a1 + 40);
    }

    else
    {
      v78 = [NSError alloc];
      v79 = [NSString stringWithUTF8String:"nfcd"];
      v64 = NSLocalizedDescriptionKey;
      v90 = NSLocalizedDescriptionKey;
      v80 = [NSString stringWithUTF8String:"Stack Error"];
      v91 = v80;
      v81 = [NSDictionary dictionaryWithObjects:&v91 forKeys:&v90 count:1];
      v19 = [v78 initWithDomain:v79 code:15 userInfo:v81];

      v62 = *(a1 + 40);
      v63 = (v62 + 16);
      if (v19)
      {
        goto LABEL_43;
      }
    }

    (*(v62 + 16))(v62, 0);
    v19 = 0;
LABEL_54:
    v77 = [*(a1 + 32) driverWrapper];
    sub_10021CC94(v77, @"LPEM MiniNV config");

    goto LABEL_48;
  }

  dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
  v6 = NFLogGetLogger();
  if (v6)
  {
    v7 = v6;
    v8 = object_getClass(*(a1 + 32));
    v9 = class_isMetaClass(v8);
    v10 = object_getClassName(*(a1 + 32));
    v83 = sel_getName(*(a1 + 48));
    v11 = 45;
    if (v9)
    {
      v11 = 43;
    }

    v7(6, "%c[%{public}s %{public}s]:%i No MiniNV config on this platform.", v11, v10, v83, 441);
  }

  dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
  v12 = NFSharedLogGetLogger();
  if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
  {
    v13 = object_getClass(*(a1 + 32));
    if (class_isMetaClass(v13))
    {
      v14 = 43;
    }

    else
    {
      v14 = 45;
    }

    v15 = object_getClassName(*(a1 + 32));
    v16 = sel_getName(*(a1 + 48));
    *buf = 67109890;
    v97 = v14;
    v98 = 2082;
    v99 = v15;
    v100 = 2082;
    v101 = v16;
    v102 = 1024;
    v103 = 441;
    _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_DEFAULT, "%c[%{public}s %{public}s]:%i No MiniNV config on this platform.", buf, 0x22u);
  }

  (*(*(a1 + 40) + 16))();
}

void sub_1001A2B88(uint64_t a1)
{
  if ([*(a1 + 32) didStart] && (objc_msgSend(*(a1 + 32), "isSuspended") & 1) == 0 && !objc_msgSend(*(a1 + 32), "didEnd"))
  {
    v16 = NFIsInternalBuild();
    dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
    Logger = NFLogGetLogger();
    v18 = Logger;
    if (v16)
    {
      if (Logger)
      {
        Class = object_getClass(*(a1 + 32));
        isMetaClass = class_isMetaClass(Class);
        ClassName = object_getClassName(*(a1 + 32));
        Name = sel_getName(*(a1 + 48));
        v23 = 45;
        if (isMetaClass)
        {
          v23 = 43;
        }

        v18(10, "%c[%{public}s %{public}s]:%i %@", v23, ClassName, Name, 87, *(a1 + 40));
      }

      dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
      v24 = NFSharedLogGetLogger();
      if (!os_log_type_enabled(v24, OS_LOG_TYPE_DEFAULT))
      {
        goto LABEL_34;
      }

      v25 = object_getClass(*(a1 + 32));
      if (class_isMetaClass(v25))
      {
        v26 = 43;
      }

      else
      {
        v26 = 45;
      }

      v27 = object_getClassName(*(a1 + 32));
      v28 = sel_getName(*(a1 + 48));
      v29 = *(a1 + 40);
      *buf = 67110146;
      v45 = v26;
      v46 = 2082;
      v47 = v27;
      v48 = 2082;
      v49 = v28;
      v50 = 1024;
      v51 = 87;
      v52 = 2112;
      v53 = v29;
      v30 = "%c[%{public}s %{public}s]:%i %@";
      v31 = v24;
      v32 = 44;
    }

    else
    {
      if (Logger)
      {
        v33 = object_getClass(*(a1 + 32));
        v34 = class_isMetaClass(v33);
        v35 = object_getClassName(*(a1 + 32));
        v36 = sel_getName(*(a1 + 48));
        v43 = [*(a1 + 40) count];
        v37 = 45;
        if (v34)
        {
          v37 = 43;
        }

        v18(6, "%c[%{public}s %{public}s]:%i Setting %d host cards", v37, v35, v36, 90, v43);
      }

      dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
      v24 = NFSharedLogGetLogger();
      if (!os_log_type_enabled(v24, OS_LOG_TYPE_DEFAULT))
      {
        goto LABEL_34;
      }

      v38 = object_getClass(*(a1 + 32));
      if (class_isMetaClass(v38))
      {
        v39 = 43;
      }

      else
      {
        v39 = 45;
      }

      v40 = object_getClassName(*(a1 + 32));
      v41 = sel_getName(*(a1 + 48));
      v42 = [*(a1 + 40) count];
      *buf = 67110146;
      v45 = v39;
      v46 = 2082;
      v47 = v40;
      v48 = 2082;
      v49 = v41;
      v50 = 1024;
      v51 = 90;
      v52 = 1024;
      LODWORD(v53) = v42;
      v30 = "%c[%{public}s %{public}s]:%i Setting %d host cards";
      v31 = v24;
      v32 = 40;
    }

    _os_log_impl(&_mh_execute_header, v31, OS_LOG_TYPE_DEFAULT, v30, buf, v32);
LABEL_34:

    [*(*(a1 + 32) + 396) setHostCards:*(a1 + 40)];
    return;
  }

  dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
  v2 = NFLogGetLogger();
  if (v2)
  {
    v3 = v2;
    v4 = object_getClass(*(a1 + 32));
    v5 = class_isMetaClass(v4);
    v6 = object_getClassName(*(a1 + 32));
    v7 = sel_getName(*(a1 + 48));
    v8 = [*(a1 + 32) sessionUID];
    v9 = 45;
    if (v5)
    {
      v9 = 43;
    }

    v3(3, "%c[%{public}s %{public}s]:%i Session %{public}@ is not active", v9, v6, v7, 84, v8);
  }

  dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
  v10 = NFSharedLogGetLogger();
  if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
  {
    v11 = object_getClass(*(a1 + 32));
    if (class_isMetaClass(v11))
    {
      v12 = 43;
    }

    else
    {
      v12 = 45;
    }

    v13 = object_getClassName(*(a1 + 32));
    v14 = sel_getName(*(a1 + 48));
    v15 = [*(a1 + 32) sessionUID];
    *buf = 67110146;
    v45 = v12;
    v46 = 2082;
    v47 = v13;
    v48 = 2082;
    v49 = v14;
    v50 = 1024;
    v51 = 84;
    v52 = 2114;
    v53 = v15;
    _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_ERROR, "%c[%{public}s %{public}s]:%i Session %{public}@ is not active", buf, 0x2Cu);
  }
}

void sub_1001A38F4(void *result, void *a2)
{
  if (result)
  {
    v3 = result;
    v4 = a2;
    objc_sync_enter(v3);
    objc_storeWeak(v3 + 1, v4);

    objc_sync_exit(v3);
    sub_1001A3B2C(v3);
    if ((*(v3 + 17) & 1) == 0)
    {
      if (&_TelephonyBasebandRegisterForReset)
      {
        CFRunLoopGetMain();
        v5 = TelephonyBasebandRegisterForReset();
      }

      else
      {
        v5 = 0;
      }

      dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
      Logger = NFLogGetLogger();
      if (Logger)
      {
        v7 = Logger;
        Class = object_getClass(v3);
        isMetaClass = class_isMetaClass(Class);
        ClassName = object_getClassName(v3);
        Name = sel_getName("setDelegate:");
        v10 = 45;
        if (isMetaClass)
        {
          v10 = 43;
        }

        v7(6, "%c[%{public}s %{public}s]:%i didRegister = %d", v10, ClassName, Name, 69, v5);
      }

      dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
      v11 = NFSharedLogGetLogger();
      if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
      {
        v12 = object_getClass(v3);
        if (class_isMetaClass(v12))
        {
          v13 = 43;
        }

        else
        {
          v13 = 45;
        }

        *buf = 67110146;
        v18 = v13;
        v19 = 2082;
        v20 = object_getClassName(v3);
        v21 = 2082;
        v22 = sel_getName("setDelegate:");
        v23 = 1024;
        v24 = 69;
        v25 = 1024;
        v26 = v5;
        _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_DEFAULT, "%c[%{public}s %{public}s]:%i didRegister = %d", buf, 0x28u);
      }

      *(v3 + 17) = v5;
    }

    v14 = sub_10000976C(v3);
    sub_1001A3B94(v3, v14);
  }
}

void sub_1001A3B2C(void *a1)
{
  if (&_TelephonyBasebandGetReset)
  {
    TelephonyBasebandGetReset();
  }

  v2 = a1;
  objc_sync_enter(v2);
  *(v2 + 16) = 1;
  objc_sync_exit(v2);
}

void sub_1001A3B94(void *a1, uint64_t a2)
{
  obj = a1;
  objc_sync_enter(obj);
  WeakRetained = objc_loadWeakRetained(obj + 1);
  [WeakRetained basebandStateChanged:a2];

  objc_sync_exit(obj);
}

void sub_1001A40D8(uint64_t a1, void *a2, char a3)
{
  v5 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v7 = WeakRetained;
  if (WeakRetained)
  {
    v8 = [WeakRetained workQueue];
    v10[0] = _NSConcreteStackBlock;
    v10[1] = 3221225472;
    v10[2] = sub_1001A41B8;
    v10[3] = &unk_100318D38;
    v9 = *(a1 + 40);
    v10[4] = v7;
    v12 = v9;
    v11 = v5;
    v13 = a3;
    dispatch_async(v8, v10);
  }
}

id sub_1001A41B8(uint64_t a1)
{
  dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
  Logger = NFLogGetLogger();
  if (Logger)
  {
    v3 = Logger;
    Class = object_getClass(*(a1 + 32));
    isMetaClass = class_isMetaClass(Class);
    ClassName = object_getClassName(*(a1 + 32));
    Name = sel_getName(*(a1 + 48));
    v8 = [*(a1 + 40) debugDescription];
    v23 = [v8 UTF8String];
    v9 = 45;
    if (isMetaClass)
    {
      v9 = 43;
    }

    v3(6, "%c[%{public}s %{public}s]:%i UI is dismissed, error = %s", v9, ClassName, Name, 108, v23);
  }

  dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
  v10 = NFSharedLogGetLogger();
  if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
  {
    v11 = object_getClass(*(a1 + 32));
    if (class_isMetaClass(v11))
    {
      v12 = 43;
    }

    else
    {
      v12 = 45;
    }

    v13 = object_getClassName(*(a1 + 32));
    v14 = sel_getName(*(a1 + 48));
    v15 = [*(a1 + 40) debugDescription];
    *buf = 67110146;
    v27 = v12;
    v28 = 2082;
    v29 = v13;
    v30 = 2082;
    v31 = v14;
    v32 = 1024;
    v33 = 108;
    v34 = 2080;
    v35 = [v15 UTF8String];
    _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEFAULT, "%c[%{public}s %{public}s]:%i UI is dismissed, error = %s", buf, 0x2Cu);
  }

  if (*(a1 + 56) == 1)
  {
    v16 = [NSError alloc];
    v17 = [NSString stringWithUTF8String:"nfcd"];
    v24 = NSLocalizedDescriptionKey;
    v18 = [NSString stringWithUTF8String:"User cancelled"];
    v25 = v18;
    v19 = [NSDictionary dictionaryWithObjects:&v25 forKeys:&v24 count:1];
    v20 = [v16 initWithDomain:v17 code:48 userInfo:v19];

    if (v20)
    {
      v21 = [*(a1 + 32) remoteObject];
      [v21 didTerminate:v20];
    }
  }

  [*(a1 + 32) stopEmulationWithCompletion:0];
  return [*(a1 + 32) _deassertPresentationAssertion];
}

void sub_1001A446C(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [*(a1 + 32) workQueue];
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_1001A4530;
  v7[3] = &unk_10031B170;
  v5 = *(a1 + 40);
  v8 = v3;
  v9 = v5;
  v6 = v3;
  dispatch_async(v4, v7);
}

void sub_1001A4BB0(uint64_t a1)
{
  if (![*(a1 + 32) didStart] || (objc_msgSend(*(a1 + 32), "isSuspended") & 1) != 0 || objc_msgSend(*(a1 + 32), "didEnd"))
  {
    dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
    Logger = NFLogGetLogger();
    if (Logger)
    {
      v3 = Logger;
      Class = object_getClass(*(a1 + 32));
      isMetaClass = class_isMetaClass(Class);
      ClassName = object_getClassName(*(a1 + 32));
      Name = sel_getName(*(a1 + 56));
      v8 = [*(a1 + 32) sessionUID];
      v9 = 45;
      if (isMetaClass)
      {
        v9 = 43;
      }

      v3(3, "%c[%{public}s %{public}s]:%i Session %{public}@ is not active", v9, ClassName, Name, 193, v8);
    }

    dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
    v10 = NFSharedLogGetLogger();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
    {
      v11 = object_getClass(*(a1 + 32));
      if (class_isMetaClass(v11))
      {
        v12 = 43;
      }

      else
      {
        v12 = 45;
      }

      v13 = object_getClassName(*(a1 + 32));
      v14 = sel_getName(*(a1 + 56));
      v15 = [*(a1 + 32) sessionUID];
      *buf = 67110146;
      v31 = v12;
      v32 = 2082;
      v33 = v13;
      v34 = 2082;
      v35 = v14;
      v36 = 1024;
      v37 = 193;
      v38 = 2114;
      v39 = v15;
      _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_ERROR, "%c[%{public}s %{public}s]:%i Session %{public}@ is not active", buf, 0x2Cu);
    }

    v16 = *(a1 + 48);
    v17 = [NSError alloc];
    v18 = [NSString stringWithUTF8String:"nfcd"];
    v28 = NSLocalizedDescriptionKey;
    v19 = [NSString stringWithUTF8String:"Session not active"];
    v29 = v19;
    v20 = [NSDictionary dictionaryWithObjects:&v29 forKeys:&v28 count:1];
    v21 = [v17 initWithDomain:v18 code:54 userInfo:v20];
    (*(v16 + 16))(v16, v21);
  }

  else
  {
    if ([*(a1 + 32) cardState] == 2)
    {
      v22 = [NFResponseAPDU responseWithData:*(a1 + 40)];
      if (!v22)
      {
        [*(a1 + 32) setCardState:1];
      }

      if ([v22 status] == 36864)
      {
        v23 = 3;
      }

      else
      {
        v23 = 1;
      }

      [*(a1 + 32) setCardState:v23];
    }

    v24 = *(a1 + 32);
    v25 = *(a1 + 40);
    v26[0] = _NSConcreteStackBlock;
    v26[1] = 3221225472;
    v26[2] = sub_1001A4F24;
    v26[3] = &unk_10031B198;
    v26[4] = v24;
    v27 = *(a1 + 48);
    [v24 sendAPDU:v25 startReadOnCompletion:1 completion:v26];
  }
}

void sub_1001A4F24(uint64_t a1, void *a2)
{
  v3 = a2;
  if (v3)
  {
    [*(a1 + 32) setCardState:1];
  }

  (*(*(a1 + 40) + 16))();
}

void sub_1001A509C(uint64_t a1)
{
  if (![*(a1 + 32) didStart] || (objc_msgSend(*(a1 + 32), "isSuspended") & 1) != 0 || objc_msgSend(*(a1 + 32), "didEnd"))
  {
    dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
    Logger = NFLogGetLogger();
    if (Logger)
    {
      v3 = Logger;
      Class = object_getClass(*(a1 + 32));
      isMetaClass = class_isMetaClass(Class);
      ClassName = object_getClassName(*(a1 + 32));
      Name = sel_getName(*(a1 + 48));
      v8 = [*(a1 + 32) sessionUID];
      v9 = 45;
      if (isMetaClass)
      {
        v9 = 43;
      }

      v3(3, "%c[%{public}s %{public}s]:%i Session %{public}@ is not active", v9, ClassName, Name, 222, v8);
    }

    dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
    v10 = NFSharedLogGetLogger();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
    {
      v11 = object_getClass(*(a1 + 32));
      if (class_isMetaClass(v11))
      {
        v12 = 43;
      }

      else
      {
        v12 = 45;
      }

      v13 = object_getClassName(*(a1 + 32));
      v14 = sel_getName(*(a1 + 48));
      v15 = [*(a1 + 32) sessionUID];
      *buf = 67110146;
      v30 = v12;
      v31 = 2082;
      v32 = v13;
      v33 = 2082;
      v34 = v14;
      v35 = 1024;
      v36 = 222;
      v37 = 2114;
      v38 = v15;
      _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_ERROR, "%c[%{public}s %{public}s]:%i Session %{public}@ is not active", buf, 0x2Cu);
    }

    v16 = *(a1 + 40);
    v17 = [NSError alloc];
    v18 = [NSString stringWithUTF8String:"nfcd"];
    v27 = NSLocalizedDescriptionKey;
    v19 = [NSString stringWithUTF8String:"Session not active"];
    v28 = v19;
    v20 = [NSDictionary dictionaryWithObjects:&v28 forKeys:&v27 count:1];
    v21 = [v17 initWithDomain:v18 code:54 userInfo:v20];
    (*(v16 + 16))(v16, v21);
  }

  else
  {
    v22 = *(a1 + 32);
    v25[0] = _NSConcreteStackBlock;
    v25[1] = 3221225472;
    v25[2] = sub_1001A53B8;
    v25[3] = &unk_100316598;
    v25[4] = v22;
    v24 = *(a1 + 40);
    v23 = v24;
    v26 = v24;
    [v22 _activateUIControllerWithCompletion:v25];
  }
}

void sub_1001A53B8(uint64_t a1, void *a2)
{
  v3 = a2;
  if (v3)
  {
    dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
    Logger = NFLogGetLogger();
    if (Logger)
    {
      v5 = Logger;
      Class = object_getClass(*(a1 + 32));
      isMetaClass = class_isMetaClass(Class);
      ClassName = object_getClassName(*(a1 + 32));
      Name = sel_getName(*(a1 + 48));
      v8 = 45;
      if (isMetaClass)
      {
        v8 = 43;
      }

      v5(5, "%c[%{public}s %{public}s]:%i %{public}@", v8, ClassName, Name, 226, v3);
    }

    dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
    v9 = NFSharedLogGetLogger();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
    {
      v10 = object_getClass(*(a1 + 32));
      if (class_isMetaClass(v10))
      {
        v11 = 43;
      }

      else
      {
        v11 = 45;
      }

      v12 = object_getClassName(*(a1 + 32));
      v13 = sel_getName(*(a1 + 48));
      *buf = 67110146;
      v29 = v11;
      v30 = 2082;
      v31 = v12;
      v32 = 2082;
      v33 = v13;
      v34 = 1024;
      v35 = 226;
      v36 = 2114;
      v37 = v3;
      _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEFAULT, "%c[%{public}s %{public}s]:%i %{public}@", buf, 0x2Cu);
    }

    [*(*(a1 + 32) + 240) coreNFCUIInvalidate];
    v14 = *(a1 + 40);
    v15 = [NSError alloc];
    v16 = [NSString stringWithUTF8String:"nfcd"];
    v26[0] = NSLocalizedDescriptionKey;
    v17 = [NSString stringWithUTF8String:"Invalid State"];
    v27[0] = v17;
    v27[1] = &off_100333588;
    v26[1] = @"Line";
    v26[2] = @"Method";
    v18 = [[NSString alloc] initWithFormat:@"%s", sel_getName(*(a1 + 48))];
    v27[2] = v18;
    v26[3] = NSDebugDescriptionErrorKey;
    v19 = [[NSString alloc] initWithFormat:@"%s:%d", sel_getName(*(a1 + 48)), 228];
    v27[3] = v19;
    v20 = [NSDictionary dictionaryWithObjects:v27 forKeys:v26 count:4];
    v21 = [v15 initWithDomain:v16 code:12 userInfo:v20];
    (*(v14 + 16))(v14, v21);
  }

  else
  {
    [*(a1 + 32) setCardState:1];
    v22 = *(a1 + 40);
    v25.receiver = *(a1 + 32);
    v25.super_class = _NFCardSession;
    objc_msgSendSuper2(&v25, "_syncStartEmulationWithCompletion:", v22);
  }
}

uint64_t sub_1001A585C(uint64_t a1)
{
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
    Logger = NFLogGetLogger();
    if (Logger)
    {
      v17 = Logger;
      Class = object_getClass(*(a1 + 40));
      isMetaClass = class_isMetaClass(Class);
      ClassName = object_getClassName(*(a1 + 40));
      Name = sel_getName(*(a1 + 56));
      v21 = 45;
      if (isMetaClass)
      {
        v21 = 43;
      }

      v17(4, "%c[%{public}s %{public}s]:%i Invalid string; dropping request", v21, ClassName, Name, 249);
    }

    dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
    v10 = NFSharedLogGetLogger();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
    {
      v22 = object_getClass(*(a1 + 40));
      if (class_isMetaClass(v22))
      {
        v23 = 43;
      }

      else
      {
        v23 = 45;
      }

      v24 = object_getClassName(*(a1 + 40));
      v25 = sel_getName(*(a1 + 56));
      *buf = 67109890;
      v42 = v23;
      v43 = 2082;
      v44 = v24;
      v45 = 2082;
      v46 = v25;
      v47 = 1024;
      v48 = 249;
      _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_ERROR, "%c[%{public}s %{public}s]:%i Invalid string; dropping request", buf, 0x22u);
    }

    goto LABEL_23;
  }

  if (![*(a1 + 40) didStart] || (objc_msgSend(*(a1 + 40), "isSuspended") & 1) != 0 || objc_msgSend(*(a1 + 40), "didEnd"))
  {
    dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
    v2 = NFLogGetLogger();
    if (v2)
    {
      v3 = v2;
      v4 = object_getClass(*(a1 + 40));
      v5 = class_isMetaClass(v4);
      v6 = object_getClassName(*(a1 + 40));
      v7 = sel_getName(*(a1 + 56));
      v8 = [*(a1 + 40) sessionUID];
      v9 = 45;
      if (v5)
      {
        v9 = 43;
      }

      v3(3, "%c[%{public}s %{public}s]:%i Session %{public}@ is not active", v9, v6, v7, 254, v8);
    }

    dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
    v10 = NFSharedLogGetLogger();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
    {
      v11 = object_getClass(*(a1 + 40));
      if (class_isMetaClass(v11))
      {
        v12 = 43;
      }

      else
      {
        v12 = 45;
      }

      v13 = object_getClassName(*(a1 + 40));
      v14 = sel_getName(*(a1 + 56));
      v15 = [*(a1 + 40) sessionUID];
      *buf = 67110146;
      v42 = v12;
      v43 = 2082;
      v44 = v13;
      v45 = 2082;
      v46 = v14;
      v47 = 1024;
      v48 = 254;
      v49 = 2114;
      v50 = v15;
      _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_ERROR, "%c[%{public}s %{public}s]:%i Session %{public}@ is not active", buf, 0x2Cu);
    }

LABEL_23:

    return (*(*(a1 + 48) + 16))();
  }

  dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
  v27 = NFLogGetLogger();
  if (v27)
  {
    v28 = v27;
    v29 = object_getClass(*(a1 + 40));
    v30 = class_isMetaClass(v29);
    v31 = object_getClassName(*(a1 + 40));
    v32 = sel_getName(*(a1 + 56));
    v33 = 45;
    if (v30)
    {
      v33 = 43;
    }

    v28(5, "%c[%{public}s %{public}s]:%i String updated=%{public}@", v33, v31, v32, 256, *(a1 + 32));
  }

  dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
  v34 = NFSharedLogGetLogger();
  if (os_log_type_enabled(v34, OS_LOG_TYPE_DEFAULT))
  {
    v35 = object_getClass(*(a1 + 40));
    if (class_isMetaClass(v35))
    {
      v36 = 43;
    }

    else
    {
      v36 = 45;
    }

    v37 = object_getClassName(*(a1 + 40));
    v38 = sel_getName(*(a1 + 56));
    v39 = *(a1 + 32);
    *buf = 67110146;
    v42 = v36;
    v43 = 2082;
    v44 = v37;
    v45 = 2082;
    v46 = v38;
    v47 = 1024;
    v48 = 256;
    v49 = 2114;
    v50 = v39;
    _os_log_impl(&_mh_execute_header, v34, OS_LOG_TYPE_DEFAULT, "%c[%{public}s %{public}s]:%i String updated=%{public}@", buf, 0x2Cu);
  }

  [*(*(a1 + 40) + 240) coreNFCUISetScanText:*(a1 + 32)];
  return (*(*(a1 + 48) + 16))();
}

void sub_1001A7DC0(uint64_t a1, void *a2)
{
  v3 = a2;
  if (v3)
  {
    dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
    Logger = NFLogGetLogger();
    if (Logger)
    {
      v5 = Logger;
      Class = object_getClass(*(a1 + 32));
      isMetaClass = class_isMetaClass(Class);
      ClassName = object_getClassName(*(a1 + 32));
      Name = sel_getName(*(a1 + 40));
      v8 = 45;
      if (isMetaClass)
      {
        v8 = 43;
      }

      v5(5, "%c[%{public}s %{public}s]:%i %{public}@", v8, ClassName, Name, 436, v3);
    }

    dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
    v9 = NFSharedLogGetLogger();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
    {
      v10 = object_getClass(*(a1 + 32));
      if (class_isMetaClass(v10))
      {
        v11 = 43;
      }

      else
      {
        v11 = 45;
      }

      v12 = object_getClassName(*(a1 + 32));
      v13 = sel_getName(*(a1 + 40));
      *buf = 67110146;
      v17 = v11;
      v18 = 2082;
      v19 = v12;
      v20 = 2082;
      v21 = v13;
      v22 = 1024;
      v23 = 436;
      v24 = 2114;
      v25 = v3;
      _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEFAULT, "%c[%{public}s %{public}s]:%i %{public}@", buf, 0x2Cu);
    }

    [*(*(a1 + 32) + 240) coreNFCUIInvalidate];
  }

  else
  {
    [*(a1 + 32) setCardState:1];
  }
}

void sub_1001A8038(uint64_t a1, void *a2)
{
  v3 = a2;
  if (v3)
  {
    dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
    Logger = NFLogGetLogger();
    if (Logger)
    {
      v5 = Logger;
      Class = object_getClass(*(a1 + 32));
      isMetaClass = class_isMetaClass(Class);
      ClassName = object_getClassName(*(a1 + 32));
      Name = sel_getName(*(a1 + 40));
      v8 = 45;
      if (isMetaClass)
      {
        v8 = 43;
      }

      v5(5, "%c[%{public}s %{public}s]:%i %{public}@", v8, ClassName, Name, 453, v3);
    }

    dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
    v9 = NFSharedLogGetLogger();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
    {
      v10 = object_getClass(*(a1 + 32));
      if (class_isMetaClass(v10))
      {
        v11 = 43;
      }

      else
      {
        v11 = 45;
      }

      v12 = object_getClassName(*(a1 + 32));
      v13 = sel_getName(*(a1 + 40));
      *buf = 67110146;
      v17 = v11;
      v18 = 2082;
      v19 = v12;
      v20 = 2082;
      v21 = v13;
      v22 = 1024;
      v23 = 453;
      v24 = 2114;
      v25 = v3;
      _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEFAULT, "%c[%{public}s %{public}s]:%i %{public}@", buf, 0x2Cu);
    }

    [*(*(a1 + 32) + 240) coreNFCUIInvalidate];
  }

  else
  {
    [*(a1 + 32) setCardState:1];
  }
}

void sub_1001A8708(uint64_t a1, uint64_t a2, double a3)
{
  sub_10027E8F8(a3);
  if (objc_opt_class())
  {
    if (a2)
    {
      v6 = 13;
    }

    else
    {
      v6 = 12;
    }

    v7 = *(a1 + 96);
    v8 = objc_alloc(*(v3 + 224));
    if (v7 == 1)
    {
      v84 = 0;
      v9 = [v8 initWithDomain:v6 error:&v84];
      v10 = v84;
    }

    else
    {
      v83 = 0;
      v22 = *(a1 + 80);
      *buf = *(a1 + 64);
      *&buf[16] = v22;
      v9 = [v8 initWithDomain:v6 auditToken:buf error:&v83];
      v10 = v83;
    }

    v23 = v10;
    v24 = v23;
    if (v9)
    {
      v25 = v23 == 0;
    }

    else
    {
      v25 = 0;
    }

    if (!v25)
    {
      dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
      Logger = NFLogGetLogger();
      if (Logger)
      {
        v27 = Logger;
        Class = object_getClass(*(a1 + 48));
        isMetaClass = class_isMetaClass(Class);
        ClassName = object_getClassName(*(a1 + 48));
        Name = sel_getName(*(a1 + 56));
        v30 = 45;
        if (isMetaClass)
        {
          v30 = 43;
        }

        v27(3, "%c[%{public}s %{public}s]:%i error=%{public}@", v30, ClassName, Name, 505, v24);
      }

      dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
      v31 = NFSharedLogGetLogger();
      if (!os_log_type_enabled(v31, OS_LOG_TYPE_ERROR))
      {
        goto LABEL_70;
      }

      v32 = object_getClass(*(a1 + 48));
      if (class_isMetaClass(v32))
      {
        v33 = 43;
      }

      else
      {
        v33 = 45;
      }

      v34 = object_getClassName(*(a1 + 48));
      v35 = sel_getName(*(a1 + 56));
      *buf = 67110146;
      *&buf[4] = v33;
      *&buf[8] = 2082;
      *&buf[10] = v34;
      *&buf[18] = 2082;
      *&buf[20] = v35;
      *&buf[28] = 1024;
      *&buf[30] = 505;
      v86 = 2114;
      v87 = v24;
      v36 = "%c[%{public}s %{public}s]:%i error=%{public}@";
      v37 = v31;
      v38 = OS_LOG_TYPE_ERROR;
      v39 = 44;
LABEL_69:
      _os_log_impl(&_mh_execute_header, v37, v38, v36, buf, v39);
LABEL_70:

      goto LABEL_71;
    }

    v40 = [v9 answer];
    if (v40 > 1)
    {
      if (v40 == 2)
      {
LABEL_71:
        v61 = *(*(a1 + 40) + 16);
        goto LABEL_72;
      }

      if (v40 != 3)
      {
        goto LABEL_54;
      }

      dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
      v51 = NFLogGetLogger();
      if (v51)
      {
        v52 = v51;
        v53 = object_getClass(*(a1 + 48));
        v54 = class_isMetaClass(v53);
        v55 = object_getClassName(*(a1 + 48));
        v78 = sel_getName(*(a1 + 56));
        v56 = 45;
        if (v54)
        {
          v56 = 43;
        }

        v52(4, "%c[%{public}s %{public}s]:%i Forcing uncertainity to ineligible", v56, v55, v78, 519);
      }

      dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
      v31 = NFSharedLogGetLogger();
      if (!os_log_type_enabled(v31, OS_LOG_TYPE_ERROR))
      {
        goto LABEL_70;
      }

      v57 = object_getClass(*(a1 + 48));
      if (class_isMetaClass(v57))
      {
        v58 = 43;
      }

      else
      {
        v58 = 45;
      }

      v59 = object_getClassName(*(a1 + 48));
      v60 = sel_getName(*(a1 + 56));
      *buf = 67109890;
      *&buf[4] = v58;
      *&buf[8] = 2082;
      *&buf[10] = v59;
      *&buf[18] = 2082;
      *&buf[20] = v60;
      *&buf[28] = 1024;
      *&buf[30] = 519;
      v36 = "%c[%{public}s %{public}s]:%i Forcing uncertainity to ineligible";
    }

    else
    {
      if (v40)
      {
        if (v40 == 1)
        {
          dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
          v41 = NFLogGetLogger();
          if (v41)
          {
            v42 = v41;
            v43 = object_getClass(*(a1 + 48));
            v44 = class_isMetaClass(v43);
            v45 = object_getClassName(*(a1 + 48));
            v77 = sel_getName(*(a1 + 56));
            v46 = 45;
            if (v44)
            {
              v46 = 43;
            }

            v42(6, "%c[%{public}s %{public}s]:%i Unknown answer", v46, v45, v77, 524);
          }

          dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
          v31 = NFSharedLogGetLogger();
          if (!os_log_type_enabled(v31, OS_LOG_TYPE_DEFAULT))
          {
            goto LABEL_70;
          }

          v47 = object_getClass(*(a1 + 48));
          if (class_isMetaClass(v47))
          {
            v48 = 43;
          }

          else
          {
            v48 = 45;
          }

          v49 = object_getClassName(*(a1 + 48));
          v50 = sel_getName(*(a1 + 56));
          *buf = 67109890;
          *&buf[4] = v48;
          *&buf[8] = 2082;
          *&buf[10] = v49;
          *&buf[18] = 2082;
          *&buf[20] = v50;
          *&buf[28] = 1024;
          *&buf[30] = 524;
          v36 = "%c[%{public}s %{public}s]:%i Unknown answer";
          v37 = v31;
          v38 = OS_LOG_TYPE_DEFAULT;
          goto LABEL_68;
        }

LABEL_54:
        if (a2)
        {
          if (a2 == 2)
          {
            v61 = *(*(a1 + 40) + 16);
            goto LABEL_72;
          }

          if (a2 == 1)
          {
            v61 = *(*(a1 + 40) + 16);
LABEL_72:
            v61();
LABEL_73:

            return;
          }
        }

        else if ((*(a1 + 97) & 1) == 0)
        {
          v61 = *(*(a1 + 40) + 16);
          goto LABEL_72;
        }

        v80[0] = _NSConcreteStackBlock;
        v80[1] = 3221225472;
        v80[2] = sub_1001A8EA4;
        v80[3] = &unk_10031B1E0;
        v82 = vextq_s8(*(a1 + 48), *(a1 + 48), 8uLL);
        v72 = *(a1 + 32);
        v81 = *(a1 + 40);
        v73 = *(a1 + 80);
        *buf = *(a1 + 64);
        *&buf[16] = v73;
        sub_1000A87F8(v72, 0, 1, buf, v80);

        goto LABEL_73;
      }

      dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
      v62 = NFLogGetLogger();
      if (v62)
      {
        v63 = v62;
        v64 = object_getClass(*(a1 + 48));
        v65 = class_isMetaClass(v64);
        v66 = object_getClassName(*(a1 + 48));
        v79 = sel_getName(*(a1 + 56));
        v67 = 45;
        if (v65)
        {
          v67 = 43;
        }

        v63(3, "%c[%{public}s %{public}s]:%i Invalid", v67, v66, v79, 514);
      }

      dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
      v31 = NFSharedLogGetLogger();
      if (!os_log_type_enabled(v31, OS_LOG_TYPE_ERROR))
      {
        goto LABEL_70;
      }

      v68 = object_getClass(*(a1 + 48));
      if (class_isMetaClass(v68))
      {
        v69 = 43;
      }

      else
      {
        v69 = 45;
      }

      v70 = object_getClassName(*(a1 + 48));
      v71 = sel_getName(*(a1 + 56));
      *buf = 67109890;
      *&buf[4] = v69;
      *&buf[8] = 2082;
      *&buf[10] = v70;
      *&buf[18] = 2082;
      *&buf[20] = v71;
      *&buf[28] = 1024;
      *&buf[30] = 514;
      v36 = "%c[%{public}s %{public}s]:%i Invalid";
    }

    v37 = v31;
    v38 = OS_LOG_TYPE_ERROR;
LABEL_68:
    v39 = 34;
    goto LABEL_69;
  }

  dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
  v11 = NFLogGetLogger();
  if (v11)
  {
    v12 = v11;
    v13 = object_getClass(*(a1 + 48));
    v14 = class_isMetaClass(v13);
    v15 = object_getClassName(*(a1 + 48));
    v75 = sel_getName(*(a1 + 56));
    v16 = 45;
    if (v14)
    {
      v16 = 43;
    }

    v12(3, "%c[%{public}s %{public}s]:%i eligibility framework unavailable", v16, v15, v75, 487);
  }

  dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
  v17 = NFSharedLogGetLogger();
  if (os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
  {
    v18 = object_getClass(*(a1 + 48));
    if (class_isMetaClass(v18))
    {
      v19 = 43;
    }

    else
    {
      v19 = 45;
    }

    v20 = object_getClassName(*(a1 + 48));
    v21 = sel_getName(*(a1 + 56));
    *buf = 67109890;
    *&buf[4] = v19;
    *&buf[8] = 2082;
    *&buf[10] = v20;
    *&buf[18] = 2082;
    *&buf[20] = v21;
    *&buf[28] = 1024;
    *&buf[30] = 487;
    _os_log_impl(&_mh_execute_header, v17, OS_LOG_TYPE_ERROR, "%c[%{public}s %{public}s]:%i eligibility framework unavailable", buf, 0x22u);
  }

  (*(*(a1 + 40) + 16))();
}

uint64_t sub_1001A8EA4(void *a1, uint64_t a2)
{
  if (!a2)
  {
    v3 = +[NSAssertionHandler currentHandler];
    [v3 handleFailureInMethod:a1[5] object:a1[6] file:@"_NFCardSession.m" lineNumber:557 description:@"Invalid state"];
  }

  v4 = *(a1[4] + 16);

  return v4();
}

void sub_1001A9400(uint64_t a1)
{
  if (![*(a1 + 32) didStart] || (objc_msgSend(*(a1 + 32), "isSuspended") & 1) != 0 || objc_msgSend(*(a1 + 32), "didEnd"))
  {
    dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
    Logger = NFLogGetLogger();
    if (Logger)
    {
      v3 = Logger;
      Class = object_getClass(*(a1 + 32));
      isMetaClass = class_isMetaClass(Class);
      ClassName = object_getClassName(*(a1 + 32));
      Name = sel_getName(*(a1 + 48));
      v8 = [*(a1 + 32) sessionUID];
      v9 = 45;
      if (isMetaClass)
      {
        v9 = 43;
      }

      v3(3, "%c[%{public}s %{public}s]:%i Session %{public}@ is not active", v9, ClassName, Name, 54, v8);
    }

    dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
    v10 = NFSharedLogGetLogger();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
    {
      v11 = object_getClass(*(a1 + 32));
      if (class_isMetaClass(v11))
      {
        v12 = 43;
      }

      else
      {
        v12 = 45;
      }

      v13 = object_getClassName(*(a1 + 32));
      v14 = sel_getName(*(a1 + 48));
      v15 = [*(a1 + 32) sessionUID];
      *buf = 67110146;
      v27 = v12;
      v28 = 2082;
      v29 = v13;
      v30 = 2082;
      v31 = v14;
      v32 = 1024;
      v33 = 54;
      v34 = 2114;
      v35 = v15;
      _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_ERROR, "%c[%{public}s %{public}s]:%i Session %{public}@ is not active", buf, 0x2Cu);
    }

    v16 = *(a1 + 40);
    if (v16)
    {
      v17 = [NSError alloc];
      v18 = [NSString stringWithUTF8String:"nfcd"];
      v24 = NSLocalizedDescriptionKey;
      v19 = [NSString stringWithUTF8String:"Session not active"];
      v25 = v19;
      v20 = [NSDictionary dictionaryWithObjects:&v25 forKeys:&v24 count:1];
      v21 = [v17 initWithDomain:v18 code:54 userInfo:v20];
      (*(v16 + 16))(v16, v21);
    }
  }

  else
  {
    v22 = *(a1 + 40);
    v23 = sub_100091D2C(*(*(a1 + 32) + 176));
    (*(v22 + 16))(v22);
  }
}

void sub_1001A9838(uint64_t a1)
{
  v2 = NFSharedSignpostLog();
  if (os_signpost_enabled(v2))
  {
    *buf = 0;
    _os_signpost_emit_with_name_impl(&_mh_execute_header, v2, OS_SIGNPOST_EVENT, 0xEEEEB0B5B2B2EEEELL, "SURF_PAYMENT", "in", buf, 2u);
  }

  if ([*(a1 + 32) didStart] && (objc_msgSend(*(a1 + 32), "isSuspended") & 1) == 0 && !objc_msgSend(*(a1 + 32), "didEnd"))
  {
    v23 = *(a1 + 32);
    v24 = *(a1 + 40);
    v25 = v23[22];
    v26 = [v23 uid];
    v27 = *(a1 + 48);
    v29 = 0;
    v20 = sub_1000903E0(v25, v24, v26, v27, &v29);
    v19 = v29;
    if (v20)
    {
      [NFGeneralStatisticsCALogger updateAnalyticsGeneralTransactionStatistics:&off_100339B98];
    }

    [NFGeneralStatisticsCALogger updateAnalyticsGeneralTransactionStatistics:&off_100339BC0];
    v28 = NFSharedSignpostLog();
    if (os_signpost_enabled(v28))
    {
      *buf = 0;
      _os_signpost_emit_with_name_impl(&_mh_execute_header, v28, OS_SIGNPOST_EVENT, 0xEEEEB0B5B2B2EEEELL, "SURF_PAYMENT", "callback", buf, 2u);
    }

    (*(*(a1 + 56) + 16))();
    v21 = NFSharedSignpostLog();
    if (os_signpost_enabled(v21))
    {
      *buf = 0;
      _os_signpost_emit_with_name_impl(&_mh_execute_header, v21, OS_SIGNPOST_EVENT, 0xEEEEB0B5B2B2EEEELL, "SURF_PAYMENT", "out", buf, 2u);
    }

    goto LABEL_17;
  }

  dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
  Logger = NFLogGetLogger();
  if (Logger)
  {
    v4 = Logger;
    Class = object_getClass(*(a1 + 32));
    isMetaClass = class_isMetaClass(Class);
    ClassName = object_getClassName(*(a1 + 32));
    Name = sel_getName(*(a1 + 64));
    v9 = [*(a1 + 32) sessionUID];
    v10 = 45;
    if (isMetaClass)
    {
      v10 = 43;
    }

    v4(3, "%c[%{public}s %{public}s]:%i Session %{public}@ is not active", v10, ClassName, Name, 68, v9);
  }

  dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
  v11 = NFSharedLogGetLogger();
  if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
  {
    v12 = object_getClass(*(a1 + 32));
    if (class_isMetaClass(v12))
    {
      v13 = 43;
    }

    else
    {
      v13 = 45;
    }

    v14 = object_getClassName(*(a1 + 32));
    v15 = sel_getName(*(a1 + 64));
    v16 = [*(a1 + 32) sessionUID];
    *buf = 67110146;
    v33 = v13;
    v34 = 2082;
    v35 = v14;
    v36 = 2082;
    v37 = v15;
    v38 = 1024;
    v39 = 68;
    v40 = 2114;
    v41 = v16;
    _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_ERROR, "%c[%{public}s %{public}s]:%i Session %{public}@ is not active", buf, 0x2Cu);
  }

  v17 = *(a1 + 56);
  if (v17)
  {
    v18 = [NSError alloc];
    v19 = [NSString stringWithUTF8String:"nfcd"];
    v30 = NSLocalizedDescriptionKey;
    v20 = [NSString stringWithUTF8String:"Session not active"];
    v31 = v20;
    v21 = [NSDictionary dictionaryWithObjects:&v31 forKeys:&v30 count:1];
    v22 = [v18 initWithDomain:v19 code:54 userInfo:v21];
    (*(v17 + 16))(v17, 0, v22);

LABEL_17:
  }
}

uint64_t sub_1001A9C94(uint64_t result)
{
  if (result)
  {
    if (HIBYTE(word_10035DA92) == 1)
    {
      return word_10035DA92;
    }

    else
    {
      v1 = result;
      v20 = 0u;
      memset(v21, 0, sizeof(v21));
      if (NFDriverGetControllerInfo())
      {
        if (DWORD1(v20) > 7)
        {
          if (v1[173])
          {
            word_10035DA92 = 257;
            return 1;
          }

          else
          {
            if (NFIsNonRFDeviceWithLPMSupport())
            {
              result = 1;
              LOBYTE(word_10035DA92) = 1;
            }

            else
            {
              result = word_10035DA92;
            }

            HIBYTE(word_10035DA92) = 1;
          }
        }

        else
        {
          HIBYTE(word_10035DA92) = 1;
          return word_10035DA92;
        }
      }

      else
      {
        dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
        Logger = NFLogGetLogger();
        if (Logger)
        {
          v3 = Logger;
          Class = object_getClass(v1);
          isMetaClass = class_isMetaClass(Class);
          ClassName = object_getClassName(v1);
          Name = sel_getName("supportsLPEM");
          v7 = 45;
          if (isMetaClass)
          {
            v7 = 43;
          }

          v3(3, "%c[%{public}s %{public}s]:%i Failed to get info", v7, ClassName, Name, 27);
        }

        dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
        v8 = NFSharedLogGetLogger();
        if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
        {
          v9 = object_getClass(v1);
          if (class_isMetaClass(v9))
          {
            v10 = 43;
          }

          else
          {
            v10 = 45;
          }

          *buf = 67109890;
          v13 = v10;
          v14 = 2082;
          v15 = object_getClassName(v1);
          v16 = 2082;
          v17 = sel_getName("supportsLPEM");
          v18 = 1024;
          v19 = 27;
          _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_ERROR, "%c[%{public}s %{public}s]:%i Failed to get info", buf, 0x22u);
        }

        return 0;
      }
    }
  }

  return result;
}

uint64_t sub_1001A9EC4(uint64_t a1)
{
  if (!sub_1001A9C94(a1))
  {
    return 0;
  }

  v1 = (NFProductIsPhone() & 1) != 0 || NFProductIsWatch();
  if ((NFProductIsPhone() & 1) != 0 || NFProductIsWatch())
  {
    v1 |= 2uLL;
  }

  if ((NFProductIsPhone() & 1) != 0 || (NFProductIsWatch() & 1) != 0 || NFIsNonRFDeviceWithLPMSupport())
  {
    v1 |= 4uLL;
  }

  if (NFIsSeashipSupported())
  {
    v1 |= 8uLL;
  }

  if (NFIsSEinOFFSupported())
  {
    return v1 | 0x10;
  }

  else
  {
    return v1;
  }
}

uint64_t sub_1001A9F5C(uint64_t a1)
{
  if (!a1)
  {
    return 0;
  }

  v1 = sub_1002261A0(NFHeadlessModeController);
  if (v1)
  {
    v2 = v1[4];
  }

  else
  {
    v2 = 0;
  }

  return v2;
}

uint64_t sub_1001A9FAC(uint64_t result, uint64_t a2)
{
  if (result)
  {
    v2 = a2;
    if (!a2)
    {
      return 1;
    }

    v3 = result;
    if (sub_1001A9C94(result))
    {
      if (v2 & 3) == 0 || (v3[173])
      {
        return 1;
      }

      dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
      Logger = NFLogGetLogger();
      if (Logger)
      {
        v15 = Logger;
        Class = object_getClass(v3);
        isMetaClass = class_isMetaClass(Class);
        ClassName = object_getClassName(v3);
        Name = sel_getName("isHeadlessModeFeatureSupported:");
        v19 = 45;
        if (isMetaClass)
        {
          v19 = 43;
        }

        v15(3, "%c[%{public}s %{public}s]:%i no antenna - this type is not supported!", v19, ClassName, Name, 147);
      }

      dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
      v10 = NFSharedLogGetLogger();
      if (!os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
      {
        goto LABEL_26;
      }

      v20 = object_getClass(v3);
      if (class_isMetaClass(v20))
      {
        v21 = 43;
      }

      else
      {
        v21 = 45;
      }

      *buf = 67109890;
      v25 = v21;
      v26 = 2082;
      v27 = object_getClassName(v3);
      v28 = 2082;
      v29 = sel_getName("isHeadlessModeFeatureSupported:");
      v30 = 1024;
      v31 = 147;
      v13 = "%c[%{public}s %{public}s]:%i no antenna - this type is not supported!";
    }

    else
    {
      dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
      v4 = NFLogGetLogger();
      if (v4)
      {
        v5 = v4;
        v6 = object_getClass(v3);
        v7 = class_isMetaClass(v6);
        v8 = object_getClassName(v3);
        v22 = sel_getName("isHeadlessModeFeatureSupported:");
        v9 = 45;
        if (v7)
        {
          v9 = 43;
        }

        v5(3, "%c[%{public}s %{public}s]:%i LPEM not supported!", v9, v8, v22, 140);
      }

      dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
      v10 = NFSharedLogGetLogger();
      if (!os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
      {
        goto LABEL_26;
      }

      v11 = object_getClass(v3);
      if (class_isMetaClass(v11))
      {
        v12 = 43;
      }

      else
      {
        v12 = 45;
      }

      *buf = 67109890;
      v25 = v12;
      v26 = 2082;
      v27 = object_getClassName(v3);
      v28 = 2082;
      v29 = sel_getName("isHeadlessModeFeatureSupported:");
      v30 = 1024;
      v31 = 140;
      v13 = "%c[%{public}s %{public}s]:%i LPEM not supported!";
    }

    _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_ERROR, v13, buf, 0x22u);
LABEL_26:

    return 0;
  }

  return result;
}

uint64_t sub_1001AA264(void *a1, uint64_t a2)
{
  if (!a1)
  {
    return 0;
  }

  v2 = a2;
  if (a2 == 31)
  {
    v2 = sub_1001A9EC4(a1);
  }

  if ((sub_1001A9FAC(a1, v2) & 1) == 0)
  {
    dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
    Logger = NFLogGetLogger();
    if (Logger)
    {
      v29 = Logger;
      Class = object_getClass(a1);
      isMetaClass = class_isMetaClass(Class);
      ClassName = object_getClassName(a1);
      Name = sel_getName("addHeadlessModeFeature:");
      v32 = 45;
      if (isMetaClass)
      {
        v32 = 43;
      }

      v29(6, "%c[%{public}s %{public}s]:%i type %x not supported!", v32, ClassName, Name, 184, v2);
    }

    dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
    v27 = NFSharedLogGetLogger();
    if (os_log_type_enabled(v27, OS_LOG_TYPE_DEFAULT))
    {
      v33 = object_getClass(a1);
      if (class_isMetaClass(v33))
      {
        v34 = 43;
      }

      else
      {
        v34 = 45;
      }

      *buf = 67110146;
      v41 = v34;
      v42 = 2082;
      v43 = object_getClassName(a1);
      v44 = 2082;
      v45 = sel_getName("addHeadlessModeFeature:");
      v46 = 1024;
      v47 = 184;
      v48 = 1024;
      v49 = v2;
      _os_log_impl(&_mh_execute_header, v27, OS_LOG_TYPE_DEFAULT, "%c[%{public}s %{public}s]:%i type %x not supported!", buf, 0x28u);
    }

    goto LABEL_35;
  }

  v4 = sub_1002261A0(NFHeadlessModeController);
  v5 = sub_100228E60(v4, v2);

  if (!v5)
  {
    return 1;
  }

  dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
  v6 = NFLogGetLogger();
  if (v6)
  {
    v7 = v6;
    v8 = object_getClass(a1);
    v9 = class_isMetaClass(v8);
    v10 = object_getClassName(a1);
    v37 = sel_getName("addHeadlessModeFeature:");
    v11 = 45;
    if (v9)
    {
      v11 = 43;
    }

    v7(6, "%c[%{public}s %{public}s]:%i LPEM features changed, enabling", v11, v10, v37, 189);
  }

  dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
  v12 = NFSharedLogGetLogger();
  if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
  {
    v13 = object_getClass(a1);
    if (class_isMetaClass(v13))
    {
      v14 = 43;
    }

    else
    {
      v14 = 45;
    }

    *buf = 67109890;
    v41 = v14;
    v42 = 2082;
    v43 = object_getClassName(a1);
    v44 = 2082;
    v45 = sel_getName("addHeadlessModeFeature:");
    v46 = 1024;
    v47 = 189;
    _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_DEFAULT, "%c[%{public}s %{public}s]:%i LPEM features changed, enabling", buf, 0x22u);
  }

  v15 = 1;
  if (([a1 enableHeadlessMode:1 shutdown:0] & 1) == 0)
  {
    dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
    v16 = NFLogGetLogger();
    if (v16)
    {
      v17 = v16;
      v18 = object_getClass(a1);
      v19 = class_isMetaClass(v18);
      v20 = object_getClassName(a1);
      v38 = sel_getName("addHeadlessModeFeature:");
      v21 = 45;
      if (v19)
      {
        v21 = 43;
      }

      v17(3, "%c[%{public}s %{public}s]:%i Failed to enable LPEM, reverting", v21, v20, v38, 191);
    }

    dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
    v22 = NFSharedLogGetLogger();
    if (os_log_type_enabled(v22, OS_LOG_TYPE_ERROR))
    {
      v23 = object_getClass(a1);
      if (class_isMetaClass(v23))
      {
        v24 = 43;
      }

      else
      {
        v24 = 45;
      }

      v25 = object_getClassName(a1);
      v26 = sel_getName("addHeadlessModeFeature:");
      *buf = 67109890;
      v41 = v24;
      v42 = 2082;
      v43 = v25;
      v44 = 2082;
      v45 = v26;
      v46 = 1024;
      v47 = 191;
      _os_log_impl(&_mh_execute_header, v22, OS_LOG_TYPE_ERROR, "%c[%{public}s %{public}s]:%i Failed to enable LPEM, reverting", buf, 0x22u);
    }

    v27 = sub_1002261A0(NFHeadlessModeController);
    sub_100229170(v27, v2);
LABEL_35:

    return 0;
  }

  return v15;
}

uint64_t sub_1001AA6BC(uint64_t result, uint64_t a2)
{
  if (result)
  {
    v2 = a2;
    v3 = result;
    if (a2 == 31)
    {
      v2 = sub_1001A9EC4(result);
    }

    if (sub_1001A9FAC(v3, v2) && (sub_1002261A0(NFHeadlessModeController), v4 = objc_claimAutoreleasedReturnValue(), v5 = sub_100229170(v4, v2), v4, v5) && ([v3 enableHeadlessMode:sub_1001A9F5C(v3) != 0 shutdown:0] & 1) == 0)
    {
      dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
      Logger = NFLogGetLogger();
      if (Logger)
      {
        v7 = Logger;
        Class = object_getClass(v3);
        isMetaClass = class_isMetaClass(Class);
        ClassName = object_getClassName(v3);
        Name = sel_getName("removeHeadlessModeFeature:");
        v11 = 45;
        if (isMetaClass)
        {
          v11 = 43;
        }

        v7(3, "%c[%{public}s %{public}s]:%i Failed to change LPEM, reverting", v11, ClassName, Name, 212);
      }

      dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
      v12 = NFSharedLogGetLogger();
      if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
      {
        v13 = object_getClass(v3);
        if (class_isMetaClass(v13))
        {
          v14 = 43;
        }

        else
        {
          v14 = 45;
        }

        *buf = 67109890;
        v18 = v14;
        v19 = 2082;
        v20 = object_getClassName(v3);
        v21 = 2082;
        v22 = sel_getName("removeHeadlessModeFeature:");
        v23 = 1024;
        v24 = 212;
        _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_ERROR, "%c[%{public}s %{public}s]:%i Failed to change LPEM, reverting", buf, 0x22u);
      }

      v15 = sub_1002261A0(NFHeadlessModeController);
      sub_100228E60(v15, v2);

      return 0;
    }

    else
    {
      return 1;
    }
  }

  return result;
}

id sub_1001AA8E4(id result)
{
  if (result)
  {
    v1 = result;
    v2 = sub_1002261A0(NFHeadlessModeController);
    sub_100228DE4(v2, 0);

    return [v1 enableHeadlessMode:0 shutdown:1];
  }

  return result;
}

id sub_1001AAEF8(void *a1)
{
  if (a1)
  {
    v1 = a1;
    objc_sync_enter(v1);
    if (v1[169] == 1)
    {
      v2 = [NSError alloc];
      v3 = [NSString stringWithUTF8String:"nfcd"];
      v21[0] = NSLocalizedDescriptionKey;
      v4 = [NSString stringWithUTF8String:"Aborted"];
      v22[0] = v4;
      v22[1] = &off_100333678;
      v21[1] = @"Line";
      v21[2] = @"Method";
      v5 = [[NSString alloc] initWithFormat:@"%s", sel_getName("disableHeadlessMiniNV")];
      v22[2] = v5;
      v21[3] = NSDebugDescriptionErrorKey;
      v6 = [[NSString alloc] initWithFormat:@"%s:%d", sel_getName("disableHeadlessMiniNV"), 274];
      v22[3] = v6;
      v7 = [NSDictionary dictionaryWithObjects:v22 forKeys:v21 count:4];
      v8 = v2;
      v9 = v3;
      v10 = 3;
    }

    else
    {
      v11 = NFDriverSetHeadlessMode();
      v12 = NFDriverDisableHeadlessModeMiniNV();
      v13 = sub_1002261A0(NFHeadlessModeController);
      sub_100229630(v13);

      v14 = sub_1002261A0(NFHeadlessModeController);
      v15 = sub_100226978(v14);

      if (v11 && (v12 & 1) != 0)
      {
        v16 = 0;
LABEL_9:
        objc_sync_exit(v1);

        goto LABEL_10;
      }

      v17 = [NSError alloc];
      v3 = [NSString stringWithUTF8String:"nfcd"];
      v19[0] = NSLocalizedDescriptionKey;
      v4 = [NSString stringWithUTF8String:"Unknown Error"];
      v20[0] = v4;
      v20[1] = &off_100333690;
      v19[1] = @"Line";
      v19[2] = @"Method";
      v5 = [[NSString alloc] initWithFormat:@"%s", sel_getName("disableHeadlessMiniNV")];
      v20[2] = v5;
      v19[3] = NSDebugDescriptionErrorKey;
      v6 = [[NSString alloc] initWithFormat:@"%s:%d", sel_getName("disableHeadlessMiniNV"), 283];
      v20[3] = v6;
      v7 = [NSDictionary dictionaryWithObjects:v20 forKeys:v19 count:4];
      v8 = v17;
      v9 = v3;
      v10 = 6;
    }

    v16 = [v8 initWithDomain:v9 code:v10 userInfo:v7];

    goto LABEL_9;
  }

  v16 = 0;
LABEL_10:

  return v16;
}

id sub_1001AB260(void *a1)
{
  if (a1)
  {
    v1 = a1;
    objc_sync_enter(v1);
    if (v1[169] == 1)
    {
      v2 = [NSError alloc];
      v3 = [NSString stringWithUTF8String:"nfcd"];
      v16[0] = NSLocalizedDescriptionKey;
      v4 = [NSString stringWithUTF8String:"Aborted"];
      v17[0] = v4;
      v17[1] = &off_1003336A8;
      v16[1] = @"Line";
      v16[2] = @"Method";
      v5 = [[NSString alloc] initWithFormat:@"%s", sel_getName("enableHeadlessMiniNV")];
      v17[2] = v5;
      v16[3] = NSDebugDescriptionErrorKey;
      v6 = [[NSString alloc] initWithFormat:@"%s:%d", sel_getName("enableHeadlessMiniNV"), 295];
      v17[3] = v6;
      v7 = [NSDictionary dictionaryWithObjects:v17 forKeys:v16 count:4];
      v8 = v2;
      v9 = v3;
      v10 = 3;
    }

    else
    {
      if (NFDriverEnableHeadlessModeMiniNV())
      {
        v11 = 0;
LABEL_8:
        objc_sync_exit(v1);

        goto LABEL_9;
      }

      v12 = [NSError alloc];
      v3 = [NSString stringWithUTF8String:"nfcd"];
      v14[0] = NSLocalizedDescriptionKey;
      v4 = [NSString stringWithUTF8String:"Unknown Error"];
      v15[0] = v4;
      v15[1] = &off_1003336C0;
      v14[1] = @"Line";
      v14[2] = @"Method";
      v5 = [[NSString alloc] initWithFormat:@"%s", sel_getName("enableHeadlessMiniNV")];
      v15[2] = v5;
      v14[3] = NSDebugDescriptionErrorKey;
      v6 = [[NSString alloc] initWithFormat:@"%s:%d", sel_getName("enableHeadlessMiniNV"), 298];
      v15[3] = v6;
      v7 = [NSDictionary dictionaryWithObjects:v15 forKeys:v14 count:4];
      v8 = v12;
      v9 = v3;
      v10 = 6;
    }

    v11 = [v8 initWithDomain:v9 code:v10 userInfo:v7];

    goto LABEL_8;
  }

  v11 = 0;
LABEL_9:

  return v11;
}

uint64_t sub_1001AB574(void *a1, void *a2)
{
  if (!a1)
  {
    return 0;
  }

  v3 = a1;
  objc_sync_enter(v3);
  if (v3[169] == 1)
  {
    if (a2)
    {
      v4 = [NSError alloc];
      v5 = [NSString stringWithUTF8String:"nfcd"];
      v12[0] = NSLocalizedDescriptionKey;
      v6 = [NSString stringWithUTF8String:"Aborted"];
      v13[0] = v6;
      v13[1] = &off_1003336D8;
      v12[1] = @"Line";
      v12[2] = @"Method";
      v7 = [[NSString alloc] initWithFormat:@"%s", sel_getName("getHeadlessFlags:")];
      v13[2] = v7;
      v12[3] = NSDebugDescriptionErrorKey;
      v8 = [[NSString alloc] initWithFormat:@"%s:%d", sel_getName("getHeadlessFlags:"), 312];
      v13[3] = v8;
      v9 = [NSDictionary dictionaryWithObjects:v13 forKeys:v12 count:4];
      *a2 = [v4 initWithDomain:v5 code:3 userInfo:v9];

      HeadlessModeFlags = 0;
    }

    else
    {
      HeadlessModeFlags = 0;
    }
  }

  else
  {
    HeadlessModeFlags = NFDriverGetHeadlessModeFlags();
  }

  objc_sync_exit(v3);

  return HeadlessModeFlags;
}

uint64_t sub_1001AB834(void *a1, uint64_t a2)
{
  if (!a1)
  {
    return 0;
  }

  v2 = a1;
  objc_sync_enter(v2);
  if (v2[169])
  {
    v3 = 0;
  }

  else
  {
    v3 = NFDriverEnableHeadlessTestMode();
  }

  objc_sync_exit(v2);

  return v3;
}

void sub_1001AB8A4(void *a1)
{
  if (a1)
  {
    obj = a1;
    objc_sync_enter(obj);
    if ((obj[169] & 1) == 0)
    {
      NFDriverDumpLPMDebugLog();
    }

    objc_sync_exit(obj);
  }
}

NFPowerTrackingConsumer *sub_1001AB908(uint64_t a1, unint64_t a2)
{
  objc_opt_self();
  v3 = objc_opt_new();
  if (v3)
  {
    v3[1] = a2;
  }

  return v3;
}

id sub_1001AB950(void *a1, double a2)
{
  if (a1)
  {
    v2 = sub_10027EC10(a2);
    v3 = sub_10027EBA4(v2);
    v5 = **(v4 + 48);
    v12[0] = v6;
    v12[1] = v5;
    v7 = sub_10027EBEC(v3);
    v9 = *(v8 + 56);
    v13[0] = v10;
    v13[1] = v10;
    v12[2] = *v9;
    v13[2] = v10;
    a1 = [NSDictionary dictionaryWithObjects:v13 forKeys:v12 count:3, v7];
  }

  return a1;
}

void *sub_1001ABA04(void *a1, double a2)
{
  if (a1)
  {
    v2 = a1;
    v3 = a1[1];
    if (v3 > 0x16)
    {
      goto LABEL_18;
    }

    if (((1 << v3) & 0x63C000) != 0)
    {
      v4 = sub_10027EC10(a2);
      v5 = sub_10027EBA4(v4);
      v7 = **(v6 + 48);
      v48[0] = v8;
      v48[1] = v7;
      v9 = sub_10027EBEC(v5);
      v11 = *(v10 + 56);
      v49[0] = v12;
      v49[1] = v12;
      v48[2] = *v11;
      v49[2] = v12;
      v13 = v49;
      v14 = v48;
LABEL_20:
      a1 = [NSDictionary dictionaryWithObjects:v13 forKeys:v14 count:3, v9];
      goto LABEL_21;
    }

    if (((1 << v3) & 0x101C00) != 0)
    {
      v15 = sub_10027EC10(a2);
      v16 = sub_10027EBA4(v15);
      v18 = **(v17 + 48);
      v50[0] = v19;
      v50[1] = v18;
      v51[0] = v20;
      v51[1] = &off_100333720;
      v9 = sub_10027EBEC(v16);
      v50[2] = **(v21 + 56);
      v51[2] = &off_100333738;
      v13 = v51;
      v14 = v50;
      goto LABEL_20;
    }

    if (v3 == 18)
    {
      dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
      Logger = NFLogGetLogger();
      if (Logger)
      {
        v23 = Logger;
        Class = object_getClass(v2);
        isMetaClass = class_isMetaClass(Class);
        ClassName = object_getClassName(v2);
        Name = sel_getName("powerLevelReader");
        v27 = 45;
        if (isMetaClass)
        {
          v27 = 43;
        }

        v23(3, "%c[%{public}s %{public}s]:%i This hardware does not support reader", v27, ClassName, Name, 166);
      }

      dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
      v28 = NFSharedLogGetLogger();
      if (os_log_type_enabled(v28, OS_LOG_TYPE_ERROR))
      {
        v29 = object_getClass(v2);
        if (class_isMetaClass(v29))
        {
          v30 = 43;
        }

        else
        {
          v30 = 45;
        }

        *buf = 67109890;
        v41 = v30;
        v42 = 2082;
        v43 = object_getClassName(v2);
        v44 = 2082;
        v45 = sel_getName("powerLevelReader");
        v46 = 1024;
        v47 = 166;
        _os_log_impl(&_mh_execute_header, v28, OS_LOG_TYPE_ERROR, "%c[%{public}s %{public}s]:%i This hardware does not support reader", buf, 0x22u);
      }
    }

    else
    {
LABEL_18:
      if (v3 - 7 < 2)
      {
        v31 = sub_10027EC10(a2);
        v32 = sub_10027EBA4(v31);
        v34 = **(v33 + 48);
        v52[0] = v35;
        v52[1] = v34;
        v53[0] = v36;
        v53[1] = &off_100333720;
        v9 = sub_10027EBEC(v32);
        v52[2] = **(v37 + 56);
        v53[2] = &off_100333738;
        v13 = v53;
        v14 = v52;
        goto LABEL_20;
      }
    }

    a1 = 0;
  }

LABEL_21:

  return a1;
}

void *sub_1001ABD18(void *a1, double a2)
{
  if (a1)
  {
    v2 = a1;
    v3 = a1[1];
    if (v3 > 0x16)
    {
      goto LABEL_18;
    }

    if (((1 << v3) & 0x63C000) != 0)
    {
      v4 = sub_10027EC10(a2);
      v5 = sub_10027EBA4(v4);
      v7 = **(v6 + 48);
      v39[0] = v8;
      v39[1] = v7;
      v40[0] = v9;
      v40[1] = &off_100333810;
      v10 = sub_10027EBEC(v5);
      v39[2] = **(v11 + 56);
      v40[2] = &off_100333828;
      v12 = v40;
      v13 = v39;
LABEL_20:
      a1 = [NSDictionary dictionaryWithObjects:v12 forKeys:v13 count:3, v10];
      goto LABEL_21;
    }

    if (((1 << v3) & 0x101C00) != 0)
    {
      v14 = sub_10027EC10(a2);
      v15 = sub_10027EBA4(v14);
      v17 = **(v16 + 48);
      v49[0] = v18;
      v49[1] = v17;
      v50[0] = v19;
      v50[1] = &off_1003337C8;
      v10 = sub_10027EBEC(v15);
      v49[2] = **(v20 + 56);
      v50[2] = &off_1003337E0;
      v12 = v50;
      v13 = v49;
      goto LABEL_20;
    }

    if (v3 == 18)
    {
      dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
      Logger = NFLogGetLogger();
      if (Logger)
      {
        v22 = Logger;
        Class = object_getClass(v2);
        isMetaClass = class_isMetaClass(Class);
        ClassName = object_getClassName(v2);
        Name = sel_getName("powerLevelSECardEmulation");
        v26 = 45;
        if (isMetaClass)
        {
          v26 = 43;
        }

        v22(3, "%c[%{public}s %{public}s]:%i This hardware does not support CE", v26, ClassName, Name, 201);
      }

      dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
      v27 = NFSharedLogGetLogger();
      if (os_log_type_enabled(v27, OS_LOG_TYPE_ERROR))
      {
        v28 = object_getClass(v2);
        if (class_isMetaClass(v28))
        {
          v29 = 43;
        }

        else
        {
          v29 = 45;
        }

        *buf = 67109890;
        v42 = v29;
        v43 = 2082;
        v44 = object_getClassName(v2);
        v45 = 2082;
        v46 = sel_getName("powerLevelSECardEmulation");
        v47 = 1024;
        v48 = 201;
        _os_log_impl(&_mh_execute_header, v27, OS_LOG_TYPE_ERROR, "%c[%{public}s %{public}s]:%i This hardware does not support CE", buf, 0x22u);
      }
    }

    else
    {
LABEL_18:
      if (v3 - 7 < 2)
      {
        v30 = sub_10027EC10(a2);
        v31 = sub_10027EBA4(v30);
        v33 = **(v32 + 48);
        v51[0] = v34;
        v51[1] = v33;
        v52[0] = v35;
        v52[1] = &off_100333780;
        v10 = sub_10027EBEC(v31);
        v51[2] = **(v36 + 56);
        v52[2] = &off_100333798;
        v12 = v52;
        v13 = v51;
        goto LABEL_20;
      }
    }

    a1 = 0;
  }

LABEL_21:

  return a1;
}

void *sub_1001AC03C(void *a1, double a2)
{
  if (a1)
  {
    v2 = a1;
    v3 = a1[1];
    if (v3 > 0x16)
    {
      goto LABEL_18;
    }

    if (((1 << v3) & 0x63C000) != 0)
    {
      v4 = sub_10027EC10(a2);
      v5 = sub_10027EBA4(v4);
      v7 = **(v6 + 48);
      v39[0] = v8;
      v39[1] = v7;
      v40[0] = v9;
      v40[1] = &off_1003338E8;
      v10 = sub_10027EBEC(v5);
      v39[2] = **(v11 + 56);
      v40[2] = &off_100333900;
      v12 = v40;
      v13 = v39;
LABEL_20:
      a1 = [NSDictionary dictionaryWithObjects:v12 forKeys:v13 count:3, v10];
      goto LABEL_21;
    }

    if (((1 << v3) & 0x101C00) != 0)
    {
      v14 = sub_10027EC10(a2);
      v15 = sub_10027EBA4(v14);
      v17 = **(v16 + 48);
      v49[0] = v18;
      v49[1] = v17;
      v50[0] = v19;
      v50[1] = &off_1003338A0;
      v10 = sub_10027EBEC(v15);
      v49[2] = **(v20 + 56);
      v50[2] = &off_1003338B8;
      v12 = v50;
      v13 = v49;
      goto LABEL_20;
    }

    if (v3 == 18)
    {
      dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
      Logger = NFLogGetLogger();
      if (Logger)
      {
        v22 = Logger;
        Class = object_getClass(v2);
        isMetaClass = class_isMetaClass(Class);
        ClassName = object_getClassName(v2);
        Name = sel_getName("powerLevelCombined");
        v26 = 45;
        if (isMetaClass)
        {
          v26 = 43;
        }

        v22(3, "%c[%{public}s %{public}s]:%i This hardware does not support CE", v26, ClassName, Name, 252);
      }

      dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
      v27 = NFSharedLogGetLogger();
      if (os_log_type_enabled(v27, OS_LOG_TYPE_ERROR))
      {
        v28 = object_getClass(v2);
        if (class_isMetaClass(v28))
        {
          v29 = 43;
        }

        else
        {
          v29 = 45;
        }

        *buf = 67109890;
        v42 = v29;
        v43 = 2082;
        v44 = object_getClassName(v2);
        v45 = 2082;
        v46 = sel_getName("powerLevelCombined");
        v47 = 1024;
        v48 = 252;
        _os_log_impl(&_mh_execute_header, v27, OS_LOG_TYPE_ERROR, "%c[%{public}s %{public}s]:%i This hardware does not support CE", buf, 0x22u);
      }
    }

    else
    {
LABEL_18:
      if (v3 - 7 < 2)
      {
        v30 = sub_10027EC10(a2);
        v31 = sub_10027EBA4(v30);
        v33 = **(v32 + 48);
        v51[0] = v34;
        v51[1] = v33;
        v52[0] = v35;
        v52[1] = &off_100333858;
        v10 = sub_10027EBEC(v31);
        v51[2] = **(v36 + 56);
        v52[2] = &off_100333870;
        v12 = v52;
        v13 = v51;
        goto LABEL_20;
      }
    }

    a1 = 0;
  }

LABEL_21:

  return a1;
}

void sub_1001AC360(id *a1, void *a2, void *a3)
{
  obj = a2;
  v5 = a3;
  if (a1)
  {
    objc_storeWeak(a1 + 8, obj);
    objc_storeStrong(a1 + 9, a3);
    if (obj)
    {
      v6 = [a1[6] intValue];
      if (v6 >= 1)
      {
        v7 = v6 < 850;
      }

      else
      {
        v7 = 2;
      }

      [obj thermalStateChanged:v7];
    }
  }
}

void sub_1001AC404(uint64_t a1, void *a2)
{
  if (a2)
  {
    v3 = [a2 objectForKey:@"com.apple.duet.ppm-bgt.stck"];
    if (v3)
    {
      v36 = v3;
      WeakRetained = objc_loadWeakRetained((a1 + 32));
      v5 = v36;
      if (WeakRetained)
      {
        dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
        Logger = NFLogGetLogger();
        if (Logger)
        {
          v7 = Logger;
          Class = object_getClass(WeakRetained);
          isMetaClass = class_isMetaClass(Class);
          ClassName = object_getClassName(WeakRetained);
          Name = sel_getName("_handleUpdatedBudgetValue:");
          v10 = 45;
          if (isMetaClass)
          {
            v10 = 43;
          }

          v7(5, "%c[%{public}s %{public}s]:%i %{public}@", v10, ClassName, Name, 982, v5);
        }

        dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
        v11 = NFSharedLogGetLogger();
        if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
        {
          v12 = object_getClass(WeakRetained);
          if (class_isMetaClass(v12))
          {
            v13 = 43;
          }

          else
          {
            v13 = 45;
          }

          *buf = 67110146;
          *&buf[4] = v13;
          *v51 = 2082;
          *&v51[2] = object_getClassName(WeakRetained);
          v52 = 2082;
          v53 = sel_getName("_handleUpdatedBudgetValue:");
          v54 = 1024;
          v55 = 982;
          v56 = 2114;
          v57 = v5;
          _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_DEFAULT, "%c[%{public}s %{public}s]:%i %{public}@", buf, 0x2Cu);
        }

        if (![v5 integerValue])
        {
          v35 = v5;
          v14 = _os_activity_create(&_mh_execute_header, "coreduet revoked", &_os_activity_current, OS_ACTIVITY_FLAG_IF_NONE_PRESENT);
          *buf = 0;
          *v51 = 0;
          os_activity_scope_enter(v14, buf);
          os_activity_scope_leave(buf);

          v34 = WeakRetained[4];
          objc_sync_enter(v34);
          v40 = 0u;
          v41 = 0u;
          v38 = 0u;
          v39 = 0u;
          obj = WeakRetained[4];
          v15 = [obj countByEnumeratingWithState:&v38 objects:buf count:16];
          if (v15)
          {
            v16 = v15;
            v17 = *v39;
            do
            {
              for (i = 0; i != v16; i = i + 1)
              {
                if (*v39 != v17)
                {
                  objc_enumerationMutation(obj);
                }

                v19 = *(*(&v38 + 1) + 8 * i);
                dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
                v20 = NFLogGetLogger();
                if (v20)
                {
                  v21 = v20;
                  v22 = object_getClass(WeakRetained);
                  v23 = class_isMetaClass(v22);
                  v24 = object_getClassName(WeakRetained);
                  v33 = sel_getName("_handleUpdatedBudgetValue:");
                  v25 = 45;
                  if (v23)
                  {
                    v25 = 43;
                  }

                  v21(5, "%c[%{public}s %{public}s]:%i Revoking core duet activity", v25, v24, v33, 989);
                }

                dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
                v26 = NFSharedLogGetLogger();
                if (os_log_type_enabled(v26, OS_LOG_TYPE_DEFAULT))
                {
                  v27 = object_getClass(WeakRetained);
                  if (class_isMetaClass(v27))
                  {
                    v28 = 43;
                  }

                  else
                  {
                    v28 = 45;
                  }

                  v29 = object_getClassName(WeakRetained);
                  v30 = sel_getName("_handleUpdatedBudgetValue:");
                  *v42 = 67109890;
                  v43 = v28;
                  v44 = 2082;
                  v45 = v29;
                  v46 = 2082;
                  v47 = v30;
                  v48 = 1024;
                  v49 = 989;
                  _os_log_impl(&_mh_execute_header, v26, OS_LOG_TYPE_DEFAULT, "%c[%{public}s %{public}s]:%i Revoking core duet activity", v42, 0x22u);
                }

                [v19 coreDuetActivityRevoked];
              }

              v16 = [obj countByEnumeratingWithState:&v38 objects:buf count:16];
            }

            while (v16);
          }

          objc_sync_exit(v34);
          v5 = v35;
        }
      }

      v3 = v36;
    }
  }
}

id sub_1001AC86C(void *a1, double a2)
{
  if (!a1)
  {
    return 0;
  }

  sub_10027E790(a2);
  if (!objc_opt_class())
  {
    return 0;
  }

  sub_10027E820(v4);
  if (!objc_opt_class())
  {
    return 0;
  }

  v6 = sub_10027EC34(v5);
  if (!*(v7 + 72) || (v8 = sub_10027EBEC(v6), !*(v9 + 56)) || (v10 = sub_10027EC10(v8), !*(v11 + 64)) || (v12 = sub_10027EBC8(v10), !*(v13 + 48)))
  {
    dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
    Logger = NFLogGetLogger();
    if (Logger)
    {
      v16 = Logger;
      Class = object_getClass(a1);
      isMetaClass = class_isMetaClass(Class);
      ClassName = object_getClassName(a1);
      Name = sel_getName("supportsCPMS");
      v20 = 45;
      if (isMetaClass)
      {
        v20 = 43;
      }

      v16(3, "%c[%{public}s %{public}s]:%i Error !!! missing timescale", v20, ClassName, Name, 435);
    }

    dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
    v21 = NFSharedLogGetLogger();
    if (os_log_type_enabled(v21, OS_LOG_TYPE_ERROR))
    {
      v22 = object_getClass(a1);
      if (class_isMetaClass(v22))
      {
        v23 = 43;
      }

      else
      {
        v23 = 45;
      }

      *buf = 67109890;
      v27 = v23;
      v28 = 2082;
      v29 = object_getClassName(a1);
      v30 = 2082;
      v31 = sel_getName("supportsCPMS");
      v32 = 1024;
      v33 = 435;
      _os_log_impl(&_mh_execute_header, v21, OS_LOG_TYPE_ERROR, "%c[%{public}s %{public}s]:%i Error !!! missing timescale", buf, 0x22u);
    }

    return 0;
  }

  v14 = *(v2 + 32);

  return [v14 isCPMSSupported];
}

void sub_1001ACD28(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((*(a1 + 32) + 64));
  v2 = *(a1 + 32);
  if (v2)
  {
    v3 = [*(v2 + 48) intValue];
    if (v3 >= 1)
    {
      v4 = v3 < 850;
    }

    else
    {
      v4 = 2;
    }
  }

  else
  {
    v4 = 0;
  }

  [WeakRetained thermalStateChanged:v4];
}

id sub_1001ACDA8(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v3 = WeakRetained;
  if (WeakRetained)
  {
    v4 = WeakRetained[41];
    v5 = WeakRetained[40];
    v6 = *(WeakRetained + 3);
    if (v4 == 1)
    {
      if (v5)
      {
        sub_1001AC03C(v6, v2);
      }

      else
      {
        sub_1001ABD18(v6, v2);
      }
    }

    else if (v5)
    {
      sub_1001ABA04(v6, v2);
    }

    else
    {
      sub_1001AB950(v6, v2);
    }
    v7 = ;
    v8 = v7;
    v9 = NFSharedSignpostLog();
    if (os_signpost_enabled(v9))
    {
      v11 = 138412290;
      v12 = v8;
      _os_signpost_emit_with_name_impl(&_mh_execute_header, v9, OS_SIGNPOST_EVENT, 0xEEEEB0B5B2B2EEEELL, "CPMS_GET_CURRENT", "%@", &v11, 0xCu);
    }
  }

  else
  {
    v8 = 0;
  }

  return v8;
}

void sub_1001ACEDC(uint64_t a1, void *a2)
{
  v3 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  v5 = [v3 mutableCopy];
  v6 = NFSharedSignpostLog();
  if (os_signpost_enabled(v6))
  {
    *buf = 0;
    _os_signpost_emit_with_name_impl(&_mh_execute_header, v6, OS_SIGNPOST_EVENT, 0xEEEEB0B5B2B2EEEELL, "CPMS_SET_CALLBACK", &unk_1002E8B7A, buf, 2u);
  }

  dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
  Logger = NFLogGetLogger();
  if (Logger)
  {
    v8 = Logger;
    Class = object_getClass(WeakRetained);
    isMetaClass = class_isMetaClass(Class);
    ClassName = object_getClassName(WeakRetained);
    Name = sel_getName(*(a1 + 48));
    v11 = 45;
    if (isMetaClass)
    {
      v11 = 43;
    }

    v8(6, "%c[%{public}s %{public}s]:%i Got power request : %@", v11, ClassName, Name, 549, v3);
  }

  dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
  v12 = NFSharedLogGetLogger();
  if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
  {
    v13 = object_getClass(WeakRetained);
    if (class_isMetaClass(v13))
    {
      v14 = 43;
    }

    else
    {
      v14 = 45;
    }

    v15 = object_getClassName(WeakRetained);
    v16 = sel_getName(*(a1 + 48));
    *buf = 67110146;
    *&buf[4] = v14;
    *v61 = 2082;
    *&v61[2] = v15;
    *&v61[10] = 2082;
    *&v61[12] = v16;
    *&v61[20] = 1024;
    *&v61[22] = 549;
    *&v61[26] = 2112;
    *&v61[28] = v3;
    _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_DEFAULT, "%c[%{public}s %{public}s]:%i Got power request : %@", buf, 0x2Cu);
  }

  if (NFThermalMonitorProvidedBySMC() && *(a1 + 32) == *(WeakRetained + 2) && (v33 = sub_10027EC34(v17), v35 = **(v34 + 72), [v3 valueForKey:{v35, v33}], (v36 = objc_claimAutoreleasedReturnValue()) != 0))
  {
    v37 = v36;
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v18 = v37;
      if (([*(WeakRetained + 6) isEqualToNumber:v18] & 1) == 0)
      {
        dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
        v38 = NFLogGetLogger();
        if (v38)
        {
          log = v38;
          v39 = object_getClass(WeakRetained);
          v54 = class_isMetaClass(v39);
          v56 = object_getClassName(WeakRetained);
          v40 = sel_getName("processNewThermalBudget:");
          v41 = 45;
          if (v54)
          {
            v41 = 43;
          }

          (log)(6, "%c[%{public}s %{public}s]:%i New thermal budget: %{public}@ -> %{public}@", v41, v56, v40, 483, *(WeakRetained + 6), v18);
        }

        dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
        loga = NFSharedLogGetLogger();
        if (os_log_type_enabled(loga, OS_LOG_TYPE_DEFAULT))
        {
          v42 = object_getClass(WeakRetained);
          if (class_isMetaClass(v42))
          {
            v43 = 43;
          }

          else
          {
            v43 = 45;
          }

          v57 = v43;
          v55 = object_getClassName(WeakRetained);
          v44 = sel_getName("processNewThermalBudget:");
          v45 = *(WeakRetained + 6);
          *buf = 67110402;
          *&buf[4] = v57;
          *v61 = 2082;
          *&v61[2] = v55;
          *&v61[10] = 2082;
          *&v61[12] = v44;
          *&v61[20] = 1024;
          *&v61[22] = 483;
          *&v61[26] = 2114;
          *&v61[28] = v45;
          v62 = 2114;
          v63 = v18;
          _os_log_impl(&_mh_execute_header, loga, OS_LOG_TYPE_DEFAULT, "%c[%{public}s %{public}s]:%i New thermal budget: %{public}@ -> %{public}@", buf, 0x36u);
        }

        objc_storeStrong(WeakRetained + 6, v37);
        v46 = objc_loadWeakRetained(WeakRetained + 8);
        if (v46)
        {
          v47 = *(WeakRetained + 9);

          if (v47)
          {
            v48 = *(WeakRetained + 9);
            *buf = _NSConcreteStackBlock;
            *v61 = 3221225472;
            *&v61[8] = sub_1001ACD28;
            *&v61[16] = &unk_100315F30;
            *&v61[24] = WeakRetained;
            dispatch_async(v48, buf);
          }
        }
      }

      v49 = *(WeakRetained + 6);

      if (v49)
      {
        [v5 setValue:v49 forKey:v35];
      }
    }

    else
    {
      v18 = v37;
    }
  }

  else
  {
    v18 = 0;
  }

  dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
  v19 = NFLogGetLogger();
  if (v19)
  {
    v20 = v19;
    v21 = object_getClass(WeakRetained);
    v22 = class_isMetaClass(v21);
    v51 = object_getClassName(WeakRetained);
    v53 = sel_getName(*(a1 + 48));
    v23 = 45;
    if (v22)
    {
      v23 = 43;
    }

    v20(6, "%c[%{public}s %{public}s]:%i Got power request : %@", v23, v51, v53, 561, v5);
  }

  dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
  v24 = NFSharedLogGetLogger();
  if (os_log_type_enabled(v24, OS_LOG_TYPE_DEFAULT))
  {
    v25 = object_getClass(WeakRetained);
    if (class_isMetaClass(v25))
    {
      v26 = 43;
    }

    else
    {
      v26 = 45;
    }

    v27 = object_getClassName(WeakRetained);
    v28 = sel_getName(*(a1 + 48));
    *buf = 67110146;
    *&buf[4] = v26;
    *v61 = 2082;
    *&v61[2] = v27;
    *&v61[10] = 2082;
    *&v61[12] = v28;
    *&v61[20] = 1024;
    *&v61[22] = 561;
    *&v61[26] = 2112;
    *&v61[28] = v5;
    _os_log_impl(&_mh_execute_header, v24, OS_LOG_TYPE_DEFAULT, "%c[%{public}s %{public}s]:%i Got power request : %@", buf, 0x2Cu);
  }

  v30 = sub_10027E76C(v29);
  v32 = [*(v31 + 32) sharedCPMSAgent];
  [v32 acknowledgePowerBudget:v5 forClientId:*(a1 + 56) error:0];
}

uint64_t sub_1001AD4BC(uint64_t val)
{
  if (!val)
  {
    return val;
  }

  v1 = val;
  v2 = *(val + 24);
  if (v2)
  {
    if (*(v2 + 16))
    {
      v3 = 3;
    }

    else
    {
      v3 = 9;
    }
  }

  else
  {
    v3 = 9;
  }

  objc_initWeak(&location, val);
  dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
  Logger = NFLogGetLogger();
  if (Logger)
  {
    v5 = Logger;
    Class = object_getClass(v1);
    isMetaClass = class_isMetaClass(Class);
    ClassName = object_getClassName(v1);
    Name = sel_getName("createCPMSDescription:");
    v9 = 45;
    if (isMetaClass)
    {
      v9 = 43;
    }

    v5(6, "%c[%{public}s %{public}s]:%i Using CPMS for client ID 0x%lx (%@)", v9, ClassName, Name, 504, v3, v1);
  }

  dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
  v10 = NFSharedLogGetLogger();
  if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
  {
    v11 = object_getClass(v1);
    if (class_isMetaClass(v11))
    {
      v12 = 43;
    }

    else
    {
      v12 = 45;
    }

    v13 = object_getClassName(v1);
    v14 = sel_getName("createCPMSDescription:");
    *buf = 67110402;
    *&buf[4] = v12;
    *v163 = 2082;
    *&v163[2] = v13;
    *&v163[10] = 2082;
    *&v163[12] = v14;
    *&v163[20] = 1024;
    *&v163[22] = 504;
    *&v163[26] = 2048;
    *&v163[28] = v3;
    v164 = 2112;
    *v165 = v1;
    _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEFAULT, "%c[%{public}s %{public}s]:%i Using CPMS for client ID 0x%lx (%@)", buf, 0x36u);
  }

  v15 = *(v1 + 48);
  *(v1 + 48) = &off_100333990;

  sub_10027E820(v16);
  v18 = objc_alloc_init(*(v17 + 40));
  v19 = v18;
  if (!v18)
  {
    dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
    v32 = NFLogGetLogger();
    if (v32)
    {
      v33 = v32;
      v34 = object_getClass(v1);
      v35 = class_isMetaClass(v34);
      v36 = object_getClassName(v1);
      v144 = sel_getName("createCPMSDescription:");
      v37 = 45;
      if (v35)
      {
        v37 = 43;
      }

      v33(3, "%c[%{public}s %{public}s]:%i Failed to create description", v37, v36, v144, 511);
    }

    dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
    v38 = NFSharedLogGetLogger();
    if (os_log_type_enabled(v38, OS_LOG_TYPE_ERROR))
    {
      v39 = object_getClass(v1);
      if (class_isMetaClass(v39))
      {
        v40 = 43;
      }

      else
      {
        v40 = 45;
      }

      v41 = object_getClassName(v1);
      v42 = sel_getName("createCPMSDescription:");
      *buf = 67109890;
      *&buf[4] = v40;
      *v163 = 2082;
      *&v163[2] = v41;
      *&v163[10] = 2082;
      *&v163[12] = v42;
      *&v163[20] = 1024;
      *&v163[22] = 511;
      _os_log_impl(&_mh_execute_header, v38, OS_LOG_TYPE_ERROR, "%c[%{public}s %{public}s]:%i Failed to create description", buf, 0x22u);
    }

    v43 = 0;
    goto LABEL_81;
  }

  [v18 setClientId:v3];
  [v19 setIsContinuous:0];
  [v19 setPowerBudgetUpdateMinimumPeriod:1000];
  v21 = *(v1 + 24);
  if (v21)
  {
    v22 = *(v21 + 8);
    if (v22 <= 0x16)
    {
      if (((1 << v22) & 0x63C000) != 0)
      {
        v23 = sub_10027EC10(v20);
        v24 = sub_10027EBA4(v23);
        v26 = **(v25 + 48);
        *v156 = v27;
        *v157 = v26;
        *buf = v28;
        *v163 = &off_100339120;
        v29 = sub_10027EBEC(v24);
        *&v157[8] = **(v30 + 56);
        v31 = &off_100339138;
LABEL_36:
        *&v163[8] = v31;
        v65 = [NSDictionary dictionaryWithObjects:buf forKeys:v156 count:3, v29];
        goto LABEL_37;
      }

      if (((1 << v22) & 0x101C00) != 0)
      {
        v44 = sub_10027EC10(v20);
        v45 = sub_10027EBA4(v44);
        v47 = **(v46 + 48);
        *v156 = v48;
        *v157 = v47;
        *buf = v49;
        *v163 = &off_1003390D8;
        v29 = sub_10027EBEC(v45);
        *&v157[8] = **(v50 + 56);
        v31 = &off_1003390F0;
        goto LABEL_36;
      }

      if (v22 == 18)
      {
        v51 = sub_10027EC10(v20);
        v52 = sub_10027EBA4(v51);
        v54 = **(v53 + 48);
        *v156 = v55;
        *v157 = v54;
        *buf = v56;
        *v163 = &off_100339168;
        v29 = sub_10027EBEC(v52);
        *&v157[8] = **(v57 + 56);
        v31 = &off_100339180;
        goto LABEL_36;
      }
    }

    if (v22 - 7 < 2)
    {
      v58 = sub_10027EC10(v20);
      v59 = sub_10027EBA4(v58);
      v61 = **(v60 + 48);
      *v156 = v62;
      *v157 = v61;
      *buf = v63;
      *v163 = &off_100339090;
      v29 = sub_10027EBEC(v59);
      *&v157[8] = **(v64 + 56);
      v31 = &off_1003390A8;
      goto LABEL_36;
    }
  }

  v65 = 0;
LABEL_37:
  [v19 setPowerLevels:v65];

  v153[0] = _NSConcreteStackBlock;
  v153[1] = 3221225472;
  v153[2] = sub_1001ACDA8;
  v153[3] = &unk_10031B258;
  objc_copyWeak(&v154, &location);
  [v19 setGetCurrentPower:v153];
  *buf = _NSConcreteStackBlock;
  *v163 = 3221225472;
  *&v163[8] = sub_1001ACEDC;
  *&v163[16] = &unk_10031B280;
  objc_copyWeak(&v163[32], &location);
  *&v165[2] = "createCPMSDescription:";
  v66 = v19;
  *&v163[24] = v66;
  v166 = v3;
  [v66 setNotificationCallback:buf];
  sub_10027E7B4(v67);
  v68 = [*"eAtPath:contents:attributes:" sharedCPMSAgent];
  v152 = 0;
  v149 = v66;
  v69 = [v68 registerClientWithDescription:v66 error:&v152];
  v38 = v152;

  if ((v69 & 1) == 0)
  {
    dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
    v95 = NFLogGetLogger();
    if (v95)
    {
      v96 = v95;
      v97 = object_getClass(v1);
      v98 = class_isMetaClass(v97);
      v140 = object_getClassName(v1);
      v145 = sel_getName("createCPMSDescription:");
      v99 = 45;
      if (v98)
      {
        v99 = 43;
      }

      v96(3, "%c[%{public}s %{public}s]:%i Failed to register CPMS : %{public}@", v99, v140, v145, 567, v38);
    }

    dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
    v100 = NFSharedLogGetLogger();
    if (os_log_type_enabled(v100, OS_LOG_TYPE_ERROR))
    {
      v101 = object_getClass(v1);
      if (class_isMetaClass(v101))
      {
        v102 = 43;
      }

      else
      {
        v102 = 45;
      }

      v103 = object_getClassName(v1);
      v104 = sel_getName("createCPMSDescription:");
      *v156 = 67110146;
      *&v156[4] = v102;
      *v157 = 2082;
      *&v157[2] = v103;
      *&v157[10] = 2082;
      *&v157[12] = v104;
      v158 = 1024;
      v159 = 567;
      v160 = 2114;
      v161 = v38;
      _os_log_impl(&_mh_execute_header, v100, OS_LOG_TYPE_ERROR, "%c[%{public}s %{public}s]:%i Failed to register CPMS : %{public}@", v156, 0x2Cu);
    }

    v43 = 0;
    goto LABEL_80;
  }

  v70 = [*"eAtPath:contents:attributes:" sharedCPMSAgent];
  v72 = sub_1001AC03C(*(v1 + 24), v71);
  v151 = v38;
  v73 = [v70 copyPowerBudgetForRequest:v72 forClient:v3 error:&v151];
  v74 = v151;

  v75 = *(v1 + 56);
  *(v1 + 56) = v73;

  v76 = *(v1 + 56);
  dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
  v77 = NFLogGetLogger();
  v78 = v77;
  if (v76)
  {
    if (v77)
    {
      v79 = object_getClass(v1);
      v80 = class_isMetaClass(v79);
      v81 = object_getClassName(v1);
      v82 = sel_getName("createCPMSDescription:");
      v83 = 45;
      if (v80)
      {
        v83 = 43;
      }

      v78(6, "%c[%{public}s %{public}s]:%i Max Power budget is %{public}@", v83, v81, v82, 576, *(v1 + 56));
    }

    dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
    v84 = NFSharedLogGetLogger();
    os_log_type_enabled(v84, OS_LOG_TYPE_DEFAULT);
    sub_10027E7D8(v85);
    if (!v86)
    {
      goto LABEL_68;
    }

    v87 = object_getClass(v1);
    if (class_isMetaClass(v87))
    {
      v88 = 43;
    }

    else
    {
      v88 = 45;
    }

    v89 = object_getClassName(v1);
    v90 = sel_getName("createCPMSDescription:");
    v91 = *(v1 + 56);
    *v156 = 67110146;
    *&v156[4] = v88;
    *v157 = 2082;
    *&v157[2] = v89;
    *&v157[10] = 2082;
    *&v157[12] = v90;
    v158 = 1024;
    v159 = 576;
    v160 = 2114;
    v161 = v91;
    v92 = "%c[%{public}s %{public}s]:%i Max Power budget is %{public}@";
    v93 = v84;
    v94 = OS_LOG_TYPE_DEFAULT;
  }

  else
  {
    if (v77)
    {
      v105 = object_getClass(v1);
      v106 = class_isMetaClass(v105);
      v141 = object_getClassName(v1);
      v146 = sel_getName("createCPMSDescription:");
      v107 = 45;
      if (v106)
      {
        v107 = 43;
      }

      v78(3, "%c[%{public}s %{public}s]:%i Error query power budget CPMS : %{public}@", v107, v141, v146, 574, v74);
    }

    dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
    v84 = NFSharedLogGetLogger();
    os_log_type_enabled(v84, OS_LOG_TYPE_ERROR);
    sub_10027E7D8(v108);
    if (!v109)
    {
      goto LABEL_68;
    }

    v110 = object_getClass(v1);
    if (class_isMetaClass(v110))
    {
      v111 = 43;
    }

    else
    {
      v111 = 45;
    }

    v112 = object_getClassName(v1);
    v113 = sel_getName("createCPMSDescription:");
    *v156 = 67110146;
    *&v156[4] = v111;
    *v157 = 2082;
    *&v157[2] = v112;
    *&v157[10] = 2082;
    *&v157[12] = v113;
    v158 = 1024;
    v159 = 574;
    v160 = 2114;
    v161 = v74;
    v92 = "%c[%{public}s %{public}s]:%i Error query power budget CPMS : %{public}@";
    v93 = v84;
    v94 = OS_LOG_TYPE_ERROR;
  }

  _os_log_impl(&_mh_execute_header, v93, v94, v92, v156, 0x2Cu);
LABEL_68:

  v114 = [*(&kNFLOG_DISPATCH_SPECIFIC_KEY + 4) sharedCPMSAgent];
  v116 = sub_1001AB950(*(v1 + 24), v115);
  v150 = v74;
  v117 = [v114 copyPowerBudgetForRequest:v116 forClient:v3 error:&v150];
  v38 = v150;

  if (!v117)
  {
    dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
    v118 = NFLogGetLogger();
    if (v118)
    {
      v119 = v118;
      v120 = object_getClass(v1);
      v121 = class_isMetaClass(v120);
      v142 = object_getClassName(v1);
      v147 = sel_getName("createCPMSDescription:");
      v122 = 45;
      if (v121)
      {
        v122 = 43;
      }

      v119(3, "%c[%{public}s %{public}s]:%i Error resetting power budget CPMS : %{public}@", v122, v142, v147, 581, v38);
    }

    dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
    v123 = NFSharedLogGetLogger();
    if (os_log_type_enabled(v123, OS_LOG_TYPE_ERROR))
    {
      v124 = object_getClass(v1);
      if (class_isMetaClass(v124))
      {
        v125 = 43;
      }

      else
      {
        v125 = 45;
      }

      v126 = object_getClassName(v1);
      v127 = sel_getName("createCPMSDescription:");
      *v156 = 67110146;
      *&v156[4] = v125;
      *v157 = 2082;
      *&v157[2] = v126;
      *&v157[10] = 2082;
      *&v157[12] = v127;
      v158 = 1024;
      v159 = 581;
      v160 = 2114;
      v161 = v38;
      _os_log_impl(&_mh_execute_header, v123, OS_LOG_TYPE_ERROR, "%c[%{public}s %{public}s]:%i Error resetting power budget CPMS : %{public}@", v156, 0x2Cu);
    }
  }

  v43 = v149;
LABEL_80:

  objc_destroyWeak(&v163[32]);
  objc_destroyWeak(&v154);
LABEL_81:

  objc_destroyWeak(&location);
  v128 = *(v1 + 16);
  *(v1 + 16) = v43;

  if (*(v1 + 16))
  {
    return 1;
  }

  dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
  v129 = NFLogGetLogger();
  if (v129)
  {
    v130 = v129;
    v131 = object_getClass(v1);
    v132 = class_isMetaClass(v131);
    v133 = object_getClassName(v1);
    v148 = sel_getName("setupCPMS");
    v134 = 45;
    if (v132)
    {
      v134 = 43;
    }

    v130(3, "%c[%{public}s %{public}s]:%i Failed to create description", v134, v133, v148, 593);
  }

  dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
  v135 = NFSharedLogGetLogger();
  if (os_log_type_enabled(v135, OS_LOG_TYPE_ERROR))
  {
    v136 = object_getClass(v1);
    if (class_isMetaClass(v136))
    {
      v137 = 43;
    }

    else
    {
      v137 = 45;
    }

    v138 = object_getClassName(v1);
    v139 = sel_getName("setupCPMS");
    *buf = 67109890;
    *&buf[4] = v137;
    *v163 = 2082;
    *&v163[2] = v138;
    *&v163[10] = 2082;
    *&v163[12] = v139;
    *&v163[20] = 1024;
    *&v163[22] = 593;
    _os_log_impl(&_mh_execute_header, v135, OS_LOG_TYPE_ERROR, "%c[%{public}s %{public}s]:%i Failed to create description", buf, 0x22u);
  }

  return 0;
}

void sub_1001AE198(uint64_t a1, void *a2)
{
  v5 = a2;
  if (a1)
  {
    objc_storeStrong((a1 + 24), a2);
    if (!*(a1 + 16))
    {
      if (sub_1001AC86C(a1, v4))
      {
        sub_1001AD4BC(a1);
      }
    }
  }
}

id sub_1001AE20C(uint64_t a1)
{
  v3[0] = _NSConcreteStackBlock;
  v3[1] = 3221225472;
  v3[2] = sub_1001AE2B8;
  v3[3] = &unk_10031B2A0;
  v3[4] = objc_opt_self();
  v3[5] = "stockholmSystemPowerConsumptionMonitor";
  if (qword_10035DAA0 != -1)
  {
    dispatch_once(&qword_10035DAA0, v3);
  }

  v1 = qword_10035DA98;

  return v1;
}

void sub_1001AE2B8(uint64_t a1)
{
  v2 = objc_alloc_init(NFSystemPowerConsumptionMonitor);
  v3 = qword_10035DA98;
  qword_10035DA98 = v2;

  dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
  Logger = NFLogGetLogger();
  if (Logger)
  {
    v5 = Logger;
    Class = object_getClass(*(a1 + 32));
    isMetaClass = class_isMetaClass(Class);
    ClassName = object_getClassName(*(a1 + 32));
    Name = sel_getName(*(a1 + 40));
    v10 = 45;
    if (isMetaClass)
    {
      v10 = 43;
    }

    v5(6, "%c[%{public}s %{public}s]:%i Stockholm CPMS : %@", v10, ClassName, Name, 623, qword_10035DA98);
  }

  dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
  v11 = NFSharedLogGetLogger();
  if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
  {
    v12 = object_getClass(*(a1 + 32));
    if (class_isMetaClass(v12))
    {
      v13 = 43;
    }

    else
    {
      v13 = 45;
    }

    v14 = object_getClassName(*(a1 + 32));
    v15 = sel_getName(*(a1 + 40));
    *buf = 67110146;
    v17 = v13;
    v18 = 2082;
    v19 = v14;
    v20 = 2082;
    v21 = v15;
    v22 = 1024;
    v23 = 623;
    v24 = 2112;
    v25 = qword_10035DA98;
    _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_DEFAULT, "%c[%{public}s %{public}s]:%i Stockholm CPMS : %@", buf, 0x2Cu);
  }
}

id sub_1001AE468(uint64_t a1)
{
  v3[0] = _NSConcreteStackBlock;
  v3[1] = 3221225472;
  v3[2] = sub_1001AE514;
  v3[3] = &unk_10031B2A0;
  v3[4] = objc_opt_self();
  v3[5] = "furySystemPowerConsumptionMonitor";
  if (qword_10035DAB0 != -1)
  {
    dispatch_once(&qword_10035DAB0, v3);
  }

  v1 = qword_10035DAA8;

  return v1;
}

void sub_1001AE514(uint64_t a1)
{
  v2 = objc_alloc_init(NFSystemPowerConsumptionMonitor);
  v3 = qword_10035DAA8;
  qword_10035DAA8 = v2;

  dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
  Logger = NFLogGetLogger();
  if (Logger)
  {
    v5 = Logger;
    Class = object_getClass(*(a1 + 32));
    isMetaClass = class_isMetaClass(Class);
    ClassName = object_getClassName(*(a1 + 32));
    Name = sel_getName(*(a1 + 40));
    v10 = 45;
    if (isMetaClass)
    {
      v10 = 43;
    }

    v5(6, "%c[%{public}s %{public}s]:%i Fury CPMS : %@", v10, ClassName, Name, 636, qword_10035DAA8);
  }

  dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
  v11 = NFSharedLogGetLogger();
  if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
  {
    v12 = object_getClass(*(a1 + 32));
    if (class_isMetaClass(v12))
    {
      v13 = 43;
    }

    else
    {
      v13 = 45;
    }

    v14 = object_getClassName(*(a1 + 32));
    v15 = sel_getName(*(a1 + 40));
    *buf = 67110146;
    v17 = v13;
    v18 = 2082;
    v19 = v14;
    v20 = 2082;
    v21 = v15;
    v22 = 1024;
    v23 = 636;
    v24 = 2112;
    v25 = qword_10035DAA8;
    _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_DEFAULT, "%c[%{public}s %{public}s]:%i Fury CPMS : %@", buf, 0x2Cu);
  }
}

uint64_t sub_1001AE6C4(void *a1)
{
  if (!a1)
  {
    return 0;
  }

  v2 = a1[1];
  if (!v2)
  {
    return 0;
  }

  v18 = 0;
  LODWORD(v3) = [v2 activityStoppedWithLevel:&off_1003339A8 options:0 error:&v18];
  v4 = v18;
  if (v4)
  {
    v3 = 0;
  }

  else
  {
    v3 = v3;
  }

  if ((v3 & 1) == 0)
  {
    dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
    Logger = NFLogGetLogger();
    if (Logger)
    {
      v6 = Logger;
      Class = object_getClass(a1);
      isMetaClass = class_isMetaClass(Class);
      ClassName = object_getClassName(a1);
      Name = sel_getName("didEndPaymentActivityForCoreDuet");
      v9 = 45;
      if (isMetaClass)
      {
        v9 = 43;
      }

      v6(3, "%c[%{public}s %{public}s]:%i Error stopping PPM activity: %{public}@", v9, ClassName, Name, 657, v4);
    }

    dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
    v10 = NFSharedLogGetLogger();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
    {
      v11 = object_getClass(a1);
      if (class_isMetaClass(v11))
      {
        v12 = 43;
      }

      else
      {
        v12 = 45;
      }

      v13 = object_getClassName(a1);
      v14 = sel_getName("didEndPaymentActivityForCoreDuet");
      *buf = 67110146;
      v20 = v12;
      v21 = 2082;
      v22 = v13;
      v23 = 2082;
      v24 = v14;
      v25 = 1024;
      v26 = 657;
      v27 = 2114;
      v28 = v4;
      _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_ERROR, "%c[%{public}s %{public}s]:%i Error stopping PPM activity: %{public}@", buf, 0x2Cu);
    }
  }

  return v3;
}

BOOL sub_1001AE8B0(uint64_t a1, double a2)
{
  if (!a1)
  {
    return 0;
  }

  if (!*(a1 + 16))
  {
    dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
    Logger = NFLogGetLogger();
    if (Logger)
    {
      v7 = Logger;
      Class = object_getClass(a1);
      isMetaClass = class_isMetaClass(Class);
      ClassName = object_getClassName(a1);
      Name = sel_getName("didEndPaymentActivityForCPMS");
      v11 = 45;
      if (isMetaClass)
      {
        v11 = 43;
      }

      v7(3, "%c[%{public}s %{public}s]:%i Error : no CPMS description", v11, ClassName, Name, 672);
    }

    dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
    v12 = NFSharedLogGetLogger();
    if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
    {
      v13 = object_getClass(a1);
      if (class_isMetaClass(v13))
      {
        v14 = 43;
      }

      else
      {
        v14 = 45;
      }

      *buf = 67109890;
      *v51 = v14;
      *&v51[4] = 2082;
      *&v51[6] = object_getClassName(a1);
      v52 = 2082;
      v53 = sel_getName("didEndPaymentActivityForCPMS");
      v54 = 1024;
      v55 = 672;
      _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_ERROR, "%c[%{public}s %{public}s]:%i Error : no CPMS description", buf, 0x22u);
    }

    v15 = 0;
    goto LABEL_42;
  }

  v4 = *(a1 + 40);
  v5 = *(a1 + 24);
  if (v4)
  {
    sub_1001ABA04(v5, a2);
  }

  else
  {
    sub_1001AB950(v5, a2);
  }
  v16 = ;
  v17 = NFSharedSignpostLog();
  if (os_signpost_enabled(v17))
  {
    *buf = 138412290;
    *v51 = v16;
    _os_signpost_emit_with_name_impl(&_mh_execute_header, v17, OS_SIGNPOST_EVENT, 0xEEEEB0B5B2B2EEEELL, "CPMS_REQUEST", "%@", buf, 0xCu);
  }

  sub_10027E7D8(v18);
  v19 = [*(v2 + 32) sharedCPMSAgent];
  v49 = 0;
  v20 = [v19 copyPowerBudgetForRequest:v16 forClient:3 error:&v49];
  v12 = v49;

  if (!v20 || v12)
  {
    dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
    v33 = NFLogGetLogger();
    if (v33)
    {
      v34 = v33;
      v35 = object_getClass(a1);
      v36 = class_isMetaClass(v35);
      v44 = object_getClassName(a1);
      v47 = sel_getName("didEndPaymentActivityForCPMS");
      v37 = 45;
      if (v36)
      {
        v37 = 43;
      }

      v34(3, "%c[%{public}s %{public}s]:%i Failed to get power budget: error: %{public}@", v37, v44, v47, 687, v12);
    }

    dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
    v27 = NFSharedLogGetLogger();
    if (!os_log_type_enabled(v27, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_40;
    }

    v38 = object_getClass(a1);
    if (class_isMetaClass(v38))
    {
      v39 = 43;
    }

    else
    {
      v39 = 45;
    }

    v40 = object_getClassName(a1);
    v41 = sel_getName("didEndPaymentActivityForCPMS");
    *buf = 67110146;
    *v51 = v39;
    *&v51[4] = 2082;
    *&v51[6] = v40;
    v52 = 2082;
    v53 = v41;
    v54 = 1024;
    v55 = 687;
    v56 = 2114;
    v57 = v12;
    v32 = "%c[%{public}s %{public}s]:%i Failed to get power budget: error: %{public}@";
    goto LABEL_39;
  }

  v21 = [*(v2 + 32) sharedCPMSAgent];
  v48 = 0;
  [v21 acknowledgePowerBudget:v20 forClientId:3 error:&v48];
  v12 = v48;

  if (v12)
  {
    dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
    v22 = NFLogGetLogger();
    if (v22)
    {
      v23 = v22;
      v24 = object_getClass(a1);
      v25 = class_isMetaClass(v24);
      v43 = object_getClassName(a1);
      v46 = sel_getName("didEndPaymentActivityForCPMS");
      v26 = 45;
      if (v25)
      {
        v26 = 43;
      }

      v23(3, "%c[%{public}s %{public}s]:%i Failed to acknowledge budget: error: %{public}@", v26, v43, v46, 683, v12);
    }

    dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
    v27 = NFSharedLogGetLogger();
    if (!os_log_type_enabled(v27, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_40;
    }

    v28 = object_getClass(a1);
    if (class_isMetaClass(v28))
    {
      v29 = 43;
    }

    else
    {
      v29 = 45;
    }

    v30 = object_getClassName(a1);
    v31 = sel_getName("didEndPaymentActivityForCPMS");
    *buf = 67110146;
    *v51 = v29;
    *&v51[4] = 2082;
    *&v51[6] = v30;
    v52 = 2082;
    v53 = v31;
    v54 = 1024;
    v55 = 683;
    v56 = 2114;
    v57 = v12;
    v32 = "%c[%{public}s %{public}s]:%i Failed to acknowledge budget: error: %{public}@";
LABEL_39:
    _os_log_impl(&_mh_execute_header, v27, OS_LOG_TYPE_ERROR, v32, buf, 0x2Cu);
LABEL_40:
  }

  v15 = v12 == 0;

LABEL_42:
  return v15;
}

uint64_t sub_1001AEDB0(uint64_t result, double a2)
{
  if (result)
  {
    v2 = result;
    if (*(result + 41) == 1)
    {
      *(result + 41) = 0;
      if (sub_1001AC86C(result, a2))
      {

        return sub_1001AE8B0(v2, v3);
      }

      else
      {

        return sub_1001AE6C4(v2);
      }
    }

    else
    {
      return 1;
    }
  }

  return result;
}

uint64_t sub_1001AEE34(void *a1)
{
  if (!a1 || !a1[1])
  {
    return 0;
  }

  v20[0] = _NSConcreteStackBlock;
  v20[1] = 3221225472;
  v20[2] = sub_1001AF088;
  v20[3] = &unk_10031B2C8;
  v20[4] = a1;
  v20[5] = "willStartPaymentActivityForCoreDuet";
  v2 = objc_retainBlock(v20);
  v3 = a1[1];
  v19 = 0;
  LODWORD(v4) = [v3 admissionCheckWithLevel:&off_1003339A8 options:0 error:&v19 handler:v2];
  v5 = v19;
  if (v5)
  {
    v4 = 0;
  }

  else
  {
    v4 = v4;
  }

  if ((v4 & 1) == 0)
  {
    dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
    Logger = NFLogGetLogger();
    if (Logger)
    {
      v7 = Logger;
      Class = object_getClass(a1);
      isMetaClass = class_isMetaClass(Class);
      ClassName = object_getClassName(a1);
      Name = sel_getName("willStartPaymentActivityForCoreDuet");
      v10 = 45;
      if (isMetaClass)
      {
        v10 = 43;
      }

      v7(3, "%c[%{public}s %{public}s]:%i Error starting PPM activity: %{public}@", v10, ClassName, Name, 736, v5);
    }

    dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
    v11 = NFSharedLogGetLogger();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
    {
      v12 = object_getClass(a1);
      if (class_isMetaClass(v12))
      {
        v13 = 43;
      }

      else
      {
        v13 = 45;
      }

      v14 = object_getClassName(a1);
      v15 = sel_getName("willStartPaymentActivityForCoreDuet");
      *buf = 67110146;
      v22 = v13;
      v23 = 2082;
      v24 = v14;
      v25 = 2082;
      v26 = v15;
      v27 = 1024;
      v28 = 736;
      v29 = 2114;
      v30 = v5;
      _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_ERROR, "%c[%{public}s %{public}s]:%i Error starting PPM activity: %{public}@", buf, 0x2Cu);
    }
  }

  return v4;
}

void sub_1001AF088(uint64_t a1, uint64_t a2, void *a3)
{
  v5 = a3;
  dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
  Logger = NFLogGetLogger();
  v7 = Logger;
  if (a2 == 1)
  {
    if (Logger)
    {
      Class = object_getClass(*(a1 + 32));
      isMetaClass = class_isMetaClass(Class);
      ClassName = object_getClassName(*(a1 + 32));
      Name = sel_getName(*(a1 + 40));
      v11 = 45;
      if (isMetaClass)
      {
        v11 = 43;
      }

      v7(6, "%c[%{public}s %{public}s]:%i started", v11, ClassName, Name, 723);
    }

    dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
    v12 = NFSharedLogGetLogger();
    if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
    {
      v13 = object_getClass(*(a1 + 32));
      if (class_isMetaClass(v13))
      {
        v14 = 43;
      }

      else
      {
        v14 = 45;
      }

      v15 = object_getClassName(*(a1 + 32));
      v16 = sel_getName(*(a1 + 40));
      *buf = 67109890;
      v32 = v14;
      v33 = 2082;
      v34 = v15;
      v35 = 2082;
      v36 = v16;
      v37 = 1024;
      v38 = 723;
      v17 = "%c[%{public}s %{public}s]:%i started";
      v18 = v12;
      v19 = OS_LOG_TYPE_DEFAULT;
      v20 = 34;
LABEL_20:
      _os_log_impl(&_mh_execute_header, v18, v19, v17, buf, v20);
    }
  }

  else
  {
    if (Logger)
    {
      v21 = object_getClass(*(a1 + 32));
      v22 = class_isMetaClass(v21);
      v28 = object_getClassName(*(a1 + 32));
      v30 = sel_getName(*(a1 + 40));
      v23 = 45;
      if (v22)
      {
        v23 = 43;
      }

      v7(3, "%c[%{public}s %{public}s]:%i PPM refuses to start activity: %{public}@", v23, v28, v30, 721, v5);
    }

    dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
    v12 = NFSharedLogGetLogger();
    if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
    {
      v24 = object_getClass(*(a1 + 32));
      if (class_isMetaClass(v24))
      {
        v25 = 43;
      }

      else
      {
        v25 = 45;
      }

      v26 = object_getClassName(*(a1 + 32));
      v27 = sel_getName(*(a1 + 40));
      *buf = 67110146;
      v32 = v25;
      v33 = 2082;
      v34 = v26;
      v35 = 2082;
      v36 = v27;
      v37 = 1024;
      v38 = 721;
      v39 = 2114;
      v40 = v5;
      v17 = "%c[%{public}s %{public}s]:%i PPM refuses to start activity: %{public}@";
      v18 = v12;
      v19 = OS_LOG_TYPE_ERROR;
      v20 = 44;
      goto LABEL_20;
    }
  }
}

BOOL sub_1001AF328(uint64_t a1, double a2)
{
  if (!a1)
  {
    return 0;
  }

  if (!*(a1 + 16))
  {
    dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
    Logger = NFLogGetLogger();
    if (Logger)
    {
      v7 = Logger;
      Class = object_getClass(a1);
      isMetaClass = class_isMetaClass(Class);
      ClassName = object_getClassName(a1);
      Name = sel_getName("willStartPaymentActivityForCPMS");
      v11 = 45;
      if (isMetaClass)
      {
        v11 = 43;
      }

      v7(3, "%c[%{public}s %{public}s]:%i Error : no CPMS description", v11, ClassName, Name, 752);
    }

    dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
    v12 = NFSharedLogGetLogger();
    if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
    {
      v13 = object_getClass(a1);
      if (class_isMetaClass(v13))
      {
        v14 = 43;
      }

      else
      {
        v14 = 45;
      }

      *buf = 67109890;
      *v51 = v14;
      *&v51[4] = 2082;
      *&v51[6] = object_getClassName(a1);
      v52 = 2082;
      v53 = sel_getName("willStartPaymentActivityForCPMS");
      v54 = 1024;
      v55 = 752;
      _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_ERROR, "%c[%{public}s %{public}s]:%i Error : no CPMS description", buf, 0x22u);
    }

    v15 = 0;
    goto LABEL_42;
  }

  v4 = *(a1 + 40);
  v5 = *(a1 + 24);
  if (v4)
  {
    sub_1001AC03C(v5, a2);
  }

  else
  {
    sub_1001ABD18(v5, a2);
  }
  v16 = ;
  v17 = NFSharedSignpostLog();
  if (os_signpost_enabled(v17))
  {
    *buf = 138412290;
    *v51 = v16;
    _os_signpost_emit_with_name_impl(&_mh_execute_header, v17, OS_SIGNPOST_EVENT, 0xEEEEB0B5B2B2EEEELL, "CPMS_REQUEST", "%@", buf, 0xCu);
  }

  sub_10027E7D8(v18);
  v19 = [*(v2 + 32) sharedCPMSAgent];
  v49 = 0;
  v20 = [v19 copyPowerBudgetForRequest:v16 forClient:3 error:&v49];
  v12 = v49;

  if (!v20 || v12)
  {
    dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
    v33 = NFLogGetLogger();
    if (v33)
    {
      v34 = v33;
      v35 = object_getClass(a1);
      v36 = class_isMetaClass(v35);
      v44 = object_getClassName(a1);
      v47 = sel_getName("willStartPaymentActivityForCPMS");
      v37 = 45;
      if (v36)
      {
        v37 = 43;
      }

      v34(3, "%c[%{public}s %{public}s]:%i Failed to get power budget: error: %{public}@", v37, v44, v47, 767, v12);
    }

    dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
    v27 = NFSharedLogGetLogger();
    if (!os_log_type_enabled(v27, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_40;
    }

    v38 = object_getClass(a1);
    if (class_isMetaClass(v38))
    {
      v39 = 43;
    }

    else
    {
      v39 = 45;
    }

    v40 = object_getClassName(a1);
    v41 = sel_getName("willStartPaymentActivityForCPMS");
    *buf = 67110146;
    *v51 = v39;
    *&v51[4] = 2082;
    *&v51[6] = v40;
    v52 = 2082;
    v53 = v41;
    v54 = 1024;
    v55 = 767;
    v56 = 2114;
    v57 = v12;
    v32 = "%c[%{public}s %{public}s]:%i Failed to get power budget: error: %{public}@";
    goto LABEL_39;
  }

  v21 = [*(v2 + 32) sharedCPMSAgent];
  v48 = 0;
  [v21 acknowledgePowerBudget:v20 forClientId:3 error:&v48];
  v12 = v48;

  if (v12)
  {
    dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
    v22 = NFLogGetLogger();
    if (v22)
    {
      v23 = v22;
      v24 = object_getClass(a1);
      v25 = class_isMetaClass(v24);
      v43 = object_getClassName(a1);
      v46 = sel_getName("willStartPaymentActivityForCPMS");
      v26 = 45;
      if (v25)
      {
        v26 = 43;
      }

      v23(3, "%c[%{public}s %{public}s]:%i Failed to acknowledge budget: error: %{public}@", v26, v43, v46, 763, v12);
    }

    dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
    v27 = NFSharedLogGetLogger();
    if (!os_log_type_enabled(v27, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_40;
    }

    v28 = object_getClass(a1);
    if (class_isMetaClass(v28))
    {
      v29 = 43;
    }

    else
    {
      v29 = 45;
    }

    v30 = object_getClassName(a1);
    v31 = sel_getName("willStartPaymentActivityForCPMS");
    *buf = 67110146;
    *v51 = v29;
    *&v51[4] = 2082;
    *&v51[6] = v30;
    v52 = 2082;
    v53 = v31;
    v54 = 1024;
    v55 = 763;
    v56 = 2114;
    v57 = v12;
    v32 = "%c[%{public}s %{public}s]:%i Failed to acknowledge budget: error: %{public}@";
LABEL_39:
    _os_log_impl(&_mh_execute_header, v27, OS_LOG_TYPE_ERROR, v32, buf, 0x2Cu);
LABEL_40:
  }

  v15 = v12 == 0;

LABEL_42:
  return v15;
}

uint64_t sub_1001AF828(uint64_t result, double a2)
{
  if (result)
  {
    v2 = result;
    if (*(result + 41))
    {
      return 1;
    }

    if (sub_1001AC86C(result, a2))
    {
      if (!sub_1001AF328(v2, v3))
      {
        return 0;
      }
    }

    else
    {
      result = sub_1001AEE34(v2);
      if (!result)
      {
        return result;
      }
    }

    result = 1;
    *(v2 + 41) = 1;
  }

  return result;
}

uint64_t sub_1001AF894(uint64_t a1, void *a2)
{
  v4 = a2;
  v6 = v4;
  if (a1)
  {
    if (*(a1 + 40))
    {
      if (v4)
      {
        v7 = *(a1 + 32);
        objc_sync_enter(v7);
        [*(a1 + 32) removeObject:v6];
        objc_sync_exit(v7);
      }

      if (!sub_1001AC86C(a1, v5))
      {
        v20 = *(a1 + 8);
        if (v20)
        {
          v77 = 0;
          LODWORD(v19) = [v20 activityStoppedWithLevel:&off_1003339C0 options:0 error:&v77];
          v21 = v77;
          if (v21)
          {
            v19 = 0;
          }

          else
          {
            v19 = v19;
          }

          if ((v19 & 1) == 0)
          {
            dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
            Logger = NFLogGetLogger();
            if (Logger)
            {
              v23 = Logger;
              Class = object_getClass(a1);
              isMetaClass = class_isMetaClass(Class);
              ClassName = object_getClassName(a1);
              Name = sel_getName("didEndReaderActivityForCoreDuet");
              v26 = 45;
              if (isMetaClass)
              {
                v26 = 43;
              }

              v23(3, "%c[%{public}s %{public}s]:%i Error stopping PPM activity: %{public}@", v26, ClassName, Name, 814, v21);
            }

            dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
            v27 = NFSharedLogGetLogger();
            if (os_log_type_enabled(v27, OS_LOG_TYPE_ERROR))
            {
              v28 = object_getClass(a1);
              if (class_isMetaClass(v28))
              {
                v29 = 43;
              }

              else
              {
                v29 = 45;
              }

              v30 = object_getClassName(a1);
              v31 = sel_getName("didEndReaderActivityForCoreDuet");
              *buf = 67110146;
              *v79 = v29;
              *&v79[4] = 2082;
              *&v79[6] = v30;
              v80 = 2082;
              v81 = v31;
              v82 = 1024;
              v83 = 814;
              v84 = 2114;
              v85 = v21;
              _os_log_impl(&_mh_execute_header, v27, OS_LOG_TYPE_ERROR, "%c[%{public}s %{public}s]:%i Error stopping PPM activity: %{public}@", buf, 0x2Cu);
            }
          }
        }

        else
        {
          v19 = 0;
        }

        goto LABEL_75;
      }

      if (!*(a1 + 16))
      {
        dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
        v32 = NFLogGetLogger();
        if (v32)
        {
          v33 = v32;
          v34 = object_getClass(a1);
          v35 = class_isMetaClass(v34);
          v36 = object_getClassName(a1);
          v73 = sel_getName("didEndReaderActivityForCPMS");
          v37 = 45;
          if (v35)
          {
            v37 = 43;
          }

          v33(3, "%c[%{public}s %{public}s]:%i Error : no CPMS description", v37, v36, v73, 830);
        }

        dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
        v38 = NFSharedLogGetLogger();
        if (os_log_type_enabled(v38, OS_LOG_TYPE_ERROR))
        {
          v39 = object_getClass(a1);
          if (class_isMetaClass(v39))
          {
            v40 = 43;
          }

          else
          {
            v40 = 45;
          }

          *buf = 67109890;
          *v79 = v40;
          *&v79[4] = 2082;
          *&v79[6] = object_getClassName(a1);
          v80 = 2082;
          v81 = sel_getName("didEndReaderActivityForCPMS");
          v82 = 1024;
          v83 = 830;
          _os_log_impl(&_mh_execute_header, v38, OS_LOG_TYPE_ERROR, "%c[%{public}s %{public}s]:%i Error : no CPMS description", buf, 0x22u);
        }

        v19 = 0;
        goto LABEL_74;
      }

      v9 = *(a1 + 24);
      if (*(a1 + 41))
      {
        sub_1001ABD18(v9, v8);
      }

      else
      {
        sub_1001AB950(v9, v8);
      }
      v41 = ;
      v42 = NFSharedSignpostLog();
      if (os_signpost_enabled(v42))
      {
        *buf = 138412290;
        *v79 = v41;
        _os_signpost_emit_with_name_impl(&_mh_execute_header, v42, OS_SIGNPOST_EVENT, 0xEEEEB0B5B2B2EEEELL, "CPMS_REQUEST", "%@", buf, 0xCu);
      }

      sub_10027E7FC(v43);
      v44 = [*(v2 + 32) sharedCPMSAgent];
      v77 = 0;
      v45 = [v44 copyPowerBudgetForRequest:v41 forClient:3 error:&v77];
      v38 = v77;

      if (!v45 || v38)
      {
        dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
        v58 = NFLogGetLogger();
        if (v58)
        {
          v59 = v58;
          v60 = object_getClass(a1);
          v61 = class_isMetaClass(v60);
          v70 = object_getClassName(a1);
          v75 = sel_getName("didEndReaderActivityForCPMS");
          v62 = 45;
          if (v61)
          {
            v62 = 43;
          }

          v59(3, "%c[%{public}s %{public}s]:%i Failed to get power budget: error: %{public}@", v62, v70, v75, 845, v38);
        }

        dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
        v52 = NFSharedLogGetLogger();
        if (!os_log_type_enabled(v52, OS_LOG_TYPE_ERROR))
        {
          goto LABEL_72;
        }

        v63 = object_getClass(a1);
        if (class_isMetaClass(v63))
        {
          v64 = 43;
        }

        else
        {
          v64 = 45;
        }

        v65 = object_getClassName(a1);
        v66 = sel_getName("didEndReaderActivityForCPMS");
        *buf = 67110146;
        *v79 = v64;
        *&v79[4] = 2082;
        *&v79[6] = v65;
        v80 = 2082;
        v81 = v66;
        v82 = 1024;
        v83 = 845;
        v84 = 2114;
        v85 = v38;
        v57 = "%c[%{public}s %{public}s]:%i Failed to get power budget: error: %{public}@";
      }

      else
      {
        v46 = [*(v2 + 32) sharedCPMSAgent];
        v76 = 0;
        [v46 acknowledgePowerBudget:v45 forClientId:3 error:&v76];
        v38 = v76;

        if (!v38)
        {
LABEL_73:
          v19 = v38 == 0;

LABEL_74:
LABEL_75:
          *(a1 + 40) = 0;
          goto LABEL_76;
        }

        dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
        v47 = NFLogGetLogger();
        if (v47)
        {
          v48 = v47;
          v49 = object_getClass(a1);
          v50 = class_isMetaClass(v49);
          v69 = object_getClassName(a1);
          v74 = sel_getName("didEndReaderActivityForCPMS");
          v51 = 45;
          if (v50)
          {
            v51 = 43;
          }

          v48(3, "%c[%{public}s %{public}s]:%i Failed to acknowledge budget: error: %{public}@", v51, v69, v74, 841, v38);
        }

        dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
        v52 = NFSharedLogGetLogger();
        if (!os_log_type_enabled(v52, OS_LOG_TYPE_ERROR))
        {
LABEL_72:

          goto LABEL_73;
        }

        v53 = object_getClass(a1);
        if (class_isMetaClass(v53))
        {
          v54 = 43;
        }

        else
        {
          v54 = 45;
        }

        v55 = object_getClassName(a1);
        v56 = sel_getName("didEndReaderActivityForCPMS");
        *buf = 67110146;
        *v79 = v54;
        *&v79[4] = 2082;
        *&v79[6] = v55;
        v80 = 2082;
        v81 = v56;
        v82 = 1024;
        v83 = 841;
        v84 = 2114;
        v85 = v38;
        v57 = "%c[%{public}s %{public}s]:%i Failed to acknowledge budget: error: %{public}@";
      }

      _os_log_impl(&_mh_execute_header, v52, OS_LOG_TYPE_ERROR, v57, buf, 0x2Cu);
      goto LABEL_72;
    }

    dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
    v10 = NFLogGetLogger();
    if (v10)
    {
      v11 = v10;
      v12 = object_getClass(a1);
      v13 = class_isMetaClass(v12);
      v14 = object_getClassName(a1);
      v71 = sel_getName("didEndReaderActivityWithDelegate:");
      v15 = 45;
      if (v13)
      {
        v15 = 43;
      }

      v11(6, "%c[%{public}s %{public}s]:%i Reader activity not started", v15, v14, v71, 859);
    }

    dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
    v16 = NFSharedLogGetLogger();
    if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
    {
      v17 = object_getClass(a1);
      if (class_isMetaClass(v17))
      {
        v18 = 43;
      }

      else
      {
        v18 = 45;
      }

      *buf = 67109890;
      *v79 = v18;
      *&v79[4] = 2082;
      *&v79[6] = object_getClassName(a1);
      v80 = 2082;
      v81 = sel_getName("didEndReaderActivityWithDelegate:");
      v82 = 1024;
      v83 = 859;
      _os_log_impl(&_mh_execute_header, v16, OS_LOG_TYPE_DEFAULT, "%c[%{public}s %{public}s]:%i Reader activity not started", buf, 0x22u);
    }
  }

  v19 = 0;
LABEL_76:

  return v19;
}

void sub_1001B0080(uint64_t a1, uint64_t a2, void *a3)
{
  v5 = a3;
  dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
  Logger = NFLogGetLogger();
  v7 = Logger;
  if (a2 == 1)
  {
    if (Logger)
    {
      Class = object_getClass(*(a1 + 32));
      isMetaClass = class_isMetaClass(Class);
      ClassName = object_getClassName(*(a1 + 32));
      Name = sel_getName(*(a1 + 40));
      v11 = 45;
      if (isMetaClass)
      {
        v11 = 43;
      }

      v7(6, "%c[%{public}s %{public}s]:%i acitvity started", v11, ClassName, Name, 893);
    }

    dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
    v12 = NFSharedLogGetLogger();
    if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
    {
      v13 = object_getClass(*(a1 + 32));
      if (class_isMetaClass(v13))
      {
        v14 = 43;
      }

      else
      {
        v14 = 45;
      }

      v15 = object_getClassName(*(a1 + 32));
      v16 = sel_getName(*(a1 + 40));
      *buf = 67109890;
      v32 = v14;
      v33 = 2082;
      v34 = v15;
      v35 = 2082;
      v36 = v16;
      v37 = 1024;
      v38 = 893;
      v17 = "%c[%{public}s %{public}s]:%i acitvity started";
      v18 = v12;
      v19 = OS_LOG_TYPE_DEFAULT;
      v20 = 34;
LABEL_20:
      _os_log_impl(&_mh_execute_header, v18, v19, v17, buf, v20);
    }
  }

  else
  {
    if (Logger)
    {
      v21 = object_getClass(*(a1 + 32));
      v22 = class_isMetaClass(v21);
      v28 = object_getClassName(*(a1 + 32));
      v30 = sel_getName(*(a1 + 40));
      v23 = 45;
      if (v22)
      {
        v23 = 43;
      }

      v7(3, "%c[%{public}s %{public}s]:%i PPM refuses to start activity: %{public}@", v23, v28, v30, 890, v5);
    }

    dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
    v12 = NFSharedLogGetLogger();
    if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
    {
      v24 = object_getClass(*(a1 + 32));
      if (class_isMetaClass(v24))
      {
        v25 = 43;
      }

      else
      {
        v25 = 45;
      }

      v26 = object_getClassName(*(a1 + 32));
      v27 = sel_getName(*(a1 + 40));
      *buf = 67110146;
      v32 = v25;
      v33 = 2082;
      v34 = v26;
      v35 = 2082;
      v36 = v27;
      v37 = 1024;
      v38 = 890;
      v39 = 2114;
      v40 = v5;
      v17 = "%c[%{public}s %{public}s]:%i PPM refuses to start activity: %{public}@";
      v18 = v12;
      v19 = OS_LOG_TYPE_ERROR;
      v20 = 44;
      goto LABEL_20;
    }
  }
}

uint64_t sub_1001B0320(uint64_t a1, void *a2)
{
  v4 = a2;
  if (!a1)
  {
    v14 = 0;
    goto LABEL_72;
  }

  if (*(a1 + 40) == 1)
  {
    dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
    Logger = NFLogGetLogger();
    if (Logger)
    {
      v6 = Logger;
      Class = object_getClass(a1);
      isMetaClass = class_isMetaClass(Class);
      ClassName = object_getClassName(a1);
      Name = sel_getName("willStartReaderActivityWithDelegate:");
      v10 = 45;
      if (isMetaClass)
      {
        v10 = 43;
      }

      v6(6, "%c[%{public}s %{public}s]:%i Reader activity already started", v10, ClassName, Name, 952);
    }

    dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
    v11 = NFSharedLogGetLogger();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
    {
      v12 = object_getClass(a1);
      if (class_isMetaClass(v12))
      {
        v13 = 43;
      }

      else
      {
        v13 = 45;
      }

      *buf = 67109890;
      *&buf[4] = v13;
      *&buf[8] = 2082;
      *&buf[10] = object_getClassName(a1);
      *&buf[18] = 2082;
      *&buf[20] = sel_getName("willStartReaderActivityWithDelegate:");
      *&buf[28] = 1024;
      *&buf[30] = 952;
      _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_DEFAULT, "%c[%{public}s %{public}s]:%i Reader activity already started", buf, 0x22u);
    }

    goto LABEL_13;
  }

  *(a1 + 40) = 1;
  v15 = *(a1 + 32);
  objc_sync_enter(v15);
  [*(a1 + 32) addObject:v4];
  objc_sync_exit(v15);

  if (sub_1001AC86C(a1, v16))
  {
    if (!*(a1 + 16))
    {
      dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
      v24 = NFLogGetLogger();
      if (v24)
      {
        v25 = v24;
        v26 = object_getClass(a1);
        v27 = class_isMetaClass(v26);
        v28 = object_getClassName(a1);
        v76 = sel_getName("willStartReaderActivityForCPMS");
        v29 = 45;
        if (v27)
        {
          v29 = 43;
        }

        v25(3, "%c[%{public}s %{public}s]:%i Error : no CPMS description", v29, v28, v76, 922);
      }

      dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
      v30 = NFSharedLogGetLogger();
      if (os_log_type_enabled(v30, OS_LOG_TYPE_ERROR))
      {
        v31 = object_getClass(a1);
        if (class_isMetaClass(v31))
        {
          v32 = 43;
        }

        else
        {
          v32 = 45;
        }

        *buf = 67109890;
        *&buf[4] = v32;
        *&buf[8] = 2082;
        *&buf[10] = object_getClassName(a1);
        *&buf[18] = 2082;
        *&buf[20] = sel_getName("willStartReaderActivityForCPMS");
        *&buf[28] = 1024;
        *&buf[30] = 922;
        _os_log_impl(&_mh_execute_header, v30, OS_LOG_TYPE_ERROR, "%c[%{public}s %{public}s]:%i Error : no CPMS description", buf, 0x22u);
      }

      goto LABEL_69;
    }

    v18 = *(a1 + 24);
    if (*(a1 + 41))
    {
      sub_1001AC03C(v18, v17);
    }

    else
    {
      sub_1001ABA04(v18, v17);
    }
    v43 = ;
    v44 = NFSharedSignpostLog();
    if (os_signpost_enabled(v44))
    {
      *buf = 138412290;
      *&buf[4] = v43;
      _os_signpost_emit_with_name_impl(&_mh_execute_header, v44, OS_SIGNPOST_EVENT, 0xEEEEB0B5B2B2EEEELL, "CPMS_REQUEST", "%@", buf, 0xCu);
    }

    sub_10027E7FC(v45);
    v46 = [*(v2 + 32) sharedCPMSAgent];
    *v81 = 0;
    v47 = [v46 copyPowerBudgetForRequest:v43 forClient:3 error:v81];
    v48 = *v81;

    if (!v47 || v48)
    {
      dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
      v61 = NFLogGetLogger();
      if (v61)
      {
        v62 = v61;
        v63 = object_getClass(a1);
        v64 = class_isMetaClass(v63);
        v74 = object_getClassName(a1);
        v79 = sel_getName("willStartReaderActivityForCPMS");
        v65 = 45;
        if (v64)
        {
          v65 = 43;
        }

        v62(3, "%c[%{public}s %{public}s]:%i Failed to get power budget: error: %{public}@", v65, v74, v79, 937, v48);
      }

      dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
      v55 = NFSharedLogGetLogger();
      if (!os_log_type_enabled(v55, OS_LOG_TYPE_ERROR))
      {
        goto LABEL_67;
      }

      v66 = object_getClass(a1);
      if (class_isMetaClass(v66))
      {
        v67 = 43;
      }

      else
      {
        v67 = 45;
      }

      v68 = object_getClassName(a1);
      v69 = sel_getName("willStartReaderActivityForCPMS");
      *buf = 67110146;
      *&buf[4] = v67;
      *&buf[8] = 2082;
      *&buf[10] = v68;
      *&buf[18] = 2082;
      *&buf[20] = v69;
      *&buf[28] = 1024;
      *&buf[30] = 937;
      *&buf[34] = 2114;
      *&buf[36] = v48;
      v60 = "%c[%{public}s %{public}s]:%i Failed to get power budget: error: %{public}@";
    }

    else
    {
      v49 = [*(v2 + 32) sharedCPMSAgent];
      v80 = 0;
      [v49 acknowledgePowerBudget:v47 forClientId:3 error:&v80];
      v48 = v80;

      if (!v48)
      {
        goto LABEL_68;
      }

      dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
      v50 = NFLogGetLogger();
      if (v50)
      {
        v51 = v50;
        v52 = object_getClass(a1);
        v53 = class_isMetaClass(v52);
        v73 = object_getClassName(a1);
        v78 = sel_getName("willStartReaderActivityForCPMS");
        v54 = 45;
        if (v53)
        {
          v54 = 43;
        }

        v51(3, "%c[%{public}s %{public}s]:%i Failed to acknowledge budget: error: %{public}@", v54, v73, v78, 933, v48);
      }

      dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
      v55 = NFSharedLogGetLogger();
      if (!os_log_type_enabled(v55, OS_LOG_TYPE_ERROR))
      {
LABEL_67:

LABEL_68:
        if (v48)
        {
          goto LABEL_69;
        }

LABEL_13:
        v14 = 1;
        goto LABEL_72;
      }

      v56 = object_getClass(a1);
      if (class_isMetaClass(v56))
      {
        v57 = 43;
      }

      else
      {
        v57 = 45;
      }

      v58 = object_getClassName(a1);
      v59 = sel_getName("willStartReaderActivityForCPMS");
      *buf = 67110146;
      *&buf[4] = v57;
      *&buf[8] = 2082;
      *&buf[10] = v58;
      *&buf[18] = 2082;
      *&buf[20] = v59;
      *&buf[28] = 1024;
      *&buf[30] = 933;
      *&buf[34] = 2114;
      *&buf[36] = v48;
      v60 = "%c[%{public}s %{public}s]:%i Failed to acknowledge budget: error: %{public}@";
    }

    _os_log_impl(&_mh_execute_header, v55, OS_LOG_TYPE_ERROR, v60, buf, 0x2Cu);
    goto LABEL_67;
  }

  if (*(a1 + 8))
  {
    *buf = _NSConcreteStackBlock;
    *&buf[8] = 3221225472;
    *&buf[16] = sub_1001B0080;
    *&buf[24] = &unk_10031B2C8;
    *&buf[32] = a1;
    *&buf[40] = "willStartReaderActivityForCoreDuet";
    v19 = objc_retainBlock(buf);
    v20 = *(a1 + 8);
    v80 = 0;
    v21 = [v20 admissionCheckWithLevel:&off_1003339C0 options:0 error:&v80 handler:v19];
    v22 = v80;
    v23 = v22;
    if (!v21 || v22)
    {
      dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
      v33 = NFLogGetLogger();
      if (v33)
      {
        v34 = v33;
        v35 = object_getClass(a1);
        v36 = class_isMetaClass(v35);
        v72 = object_getClassName(a1);
        v77 = sel_getName("willStartReaderActivityForCoreDuet");
        v37 = 45;
        if (v36)
        {
          v37 = 43;
        }

        v34(3, "%c[%{public}s %{public}s]:%i Error starting PPM activity: %{public}@", v37, v72, v77, 906, v23);
      }

      dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
      v38 = NFSharedLogGetLogger();
      if (os_log_type_enabled(v38, OS_LOG_TYPE_ERROR))
      {
        v39 = object_getClass(a1);
        if (class_isMetaClass(v39))
        {
          v40 = 43;
        }

        else
        {
          v40 = 45;
        }

        v41 = object_getClassName(a1);
        v42 = sel_getName("willStartReaderActivityForCoreDuet");
        *v81 = 67110146;
        *&v81[4] = v40;
        v82 = 2082;
        v83 = v41;
        v84 = 2082;
        v85 = v42;
        v86 = 1024;
        v87 = 906;
        v88 = 2114;
        v89 = v23;
        _os_log_impl(&_mh_execute_header, v38, OS_LOG_TYPE_ERROR, "%c[%{public}s %{public}s]:%i Error starting PPM activity: %{public}@", v81, 0x2Cu);
      }

      goto LABEL_69;
    }

    goto LABEL_13;
  }

LABEL_69:
  if (v4)
  {
    v70 = *(a1 + 32);
    objc_sync_enter(v70);
    [*(a1 + 32) removeObject:v4];
    objc_sync_exit(v70);
  }

  v14 = 0;
  *(a1 + 40) = 0;
LABEL_72:

  return v14;
}

void sub_1001B14C8(uint64_t a1, void *a2, int a3)
{
  v5 = a2;
  v6 = *(a1 + 32);
  if ((*(v6 + 257) & 1) == 0)
  {
    *(v6 + 257) = 1;
    dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
    Logger = NFLogGetLogger();
    if (Logger)
    {
      v8 = Logger;
      Class = object_getClass(*(a1 + 32));
      isMetaClass = class_isMetaClass(Class);
      ClassName = object_getClassName(*(a1 + 32));
      Name = sel_getName(*(a1 + 56));
      [v5 debugDescription];
      v13 = v5;
      v15 = v14 = a3;
      v16 = [v15 UTF8String];
      v17 = [*(a1 + 40) sessionUID];
      v18 = 45;
      if (isMetaClass)
      {
        v18 = 43;
      }

      v8(6, "%c[%{public}s %{public}s]:%i UI is dismissed, error = %s for session %@", v18, ClassName, Name, 220, v16, v17);

      a3 = v14;
      v5 = v13;
    }

    dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
    v19 = NFSharedLogGetLogger();
    if (os_log_type_enabled(v19, OS_LOG_TYPE_DEFAULT))
    {
      v20 = object_getClass(*(a1 + 32));
      if (class_isMetaClass(v20))
      {
        v21 = 43;
      }

      else
      {
        v21 = 45;
      }

      v47 = v21;
      v22 = object_getClassName(*(a1 + 32));
      v23 = sel_getName(*(a1 + 56));
      v24 = [v5 debugDescription];
      v25 = a3;
      v26 = [v24 UTF8String];
      v27 = [*(a1 + 40) sessionUID];
      *buf = 67110402;
      v63 = v47;
      v64 = 2082;
      v65 = v22;
      v66 = 2082;
      v67 = v23;
      v68 = 1024;
      v69 = 220;
      v70 = 2080;
      v71 = v26;
      a3 = v25;
      v72 = 2112;
      v73 = v27;
      _os_log_impl(&_mh_execute_header, v19, OS_LOG_TYPE_DEFAULT, "%c[%{public}s %{public}s]:%i UI is dismissed, error = %s for session %@", buf, 0x36u);
    }

    v28 = [NSError alloc];
    v29 = [NSString stringWithUTF8String:"nfcd"];
    if (a3)
    {
      v60 = NSLocalizedDescriptionKey;
      v30 = [NSString stringWithUTF8String:"User cancelled"];
      v61 = v30;
      v31 = [NSDictionary dictionaryWithObjects:&v61 forKeys:&v60 count:1];
      v32 = v28;
      v33 = v29;
      v34 = 48;
    }

    else
    {
      v58 = NSLocalizedDescriptionKey;
      v30 = [NSString stringWithUTF8String:"Aborted"];
      v59 = v30;
      v31 = [NSDictionary dictionaryWithObjects:&v59 forKeys:&v58 count:1];
      v32 = v28;
      v33 = v29;
      v34 = 3;
    }

    v35 = [v32 initWithDomain:v33 code:v34 userInfo:v31];

    v36 = *(a1 + 32);
    if (v36[31])
    {
      if (a3)
      {
        v37 = 500000000;
      }

      else
      {
        v37 = 2500000000;
      }

      v38 = dispatch_time(0, v37);
      v39 = [*(a1 + 32) workQueue];
      block[0] = _NSConcreteStackBlock;
      block[1] = 3221225472;
      block[2] = sub_1001B19AC;
      block[3] = &unk_100315FD0;
      v40 = &v55;
      v41 = &v56;
      v55 = *(a1 + 32);
      v56 = v35;
      v42 = &v57;
      v48 = *(a1 + 48);
      v43 = v48;
      v57 = v48;
      v44 = v35;
      dispatch_after(v38, v39, block);
    }

    else
    {
      v39 = [v36 workQueue];
      v50[0] = _NSConcreteStackBlock;
      v50[1] = 3221225472;
      v50[2] = sub_1001B1BC8;
      v50[3] = &unk_100315FD0;
      v40 = &v51;
      v41 = &v52;
      v51 = *(a1 + 32);
      v52 = v35;
      v42 = &v53;
      v49 = *(a1 + 48);
      v45 = v49;
      v53 = v49;
      v46 = v35;
      dispatch_async(v39, v50);
    }
  }
}

id sub_1001B19AC(uint64_t a1)
{
  dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
  Logger = NFLogGetLogger();
  if (Logger)
  {
    v3 = Logger;
    Class = object_getClass(*(a1 + 32));
    isMetaClass = class_isMetaClass(Class);
    ClassName = object_getClassName(*(a1 + 32));
    Name = sel_getName(*(a1 + 56));
    v8 = [*(a1 + 40) code];
    v9 = [*(a1 + 32) sessionUID];
    v10 = 45;
    if (isMetaClass)
    {
      v10 = 43;
    }

    v3(6, "%c[%{public}s %{public}s]:%i Activating invalidation handler: error=0x%lx for session %@", v10, ClassName, Name, 245, v8, v9);
  }

  dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
  v11 = NFSharedLogGetLogger();
  if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
  {
    v12 = object_getClass(*(a1 + 32));
    if (class_isMetaClass(v12))
    {
      v13 = 43;
    }

    else
    {
      v13 = 45;
    }

    v14 = object_getClassName(*(a1 + 32));
    v15 = sel_getName(*(a1 + 56));
    v16 = [*(a1 + 40) code];
    v17 = [*(a1 + 32) sessionUID];
    *buf = 67110402;
    v21 = v13;
    v22 = 2082;
    v23 = v14;
    v24 = 2082;
    v25 = v15;
    v26 = 1024;
    v27 = 245;
    v28 = 2048;
    v29 = v16;
    v30 = 2112;
    v31 = v17;
    _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_DEFAULT, "%c[%{public}s %{public}s]:%i Activating invalidation handler: error=0x%lx for session %@", buf, 0x36u);
  }

  v18 = *(*(a1 + 32) + 248);
  if (v18)
  {
    (*(v18 + 16))();
  }

  [*(a1 + 48) didUIControllerInvalidate:*(a1 + 40)];
  return [*(a1 + 32) clearUIControllerInvalidationHandler];
}

id sub_1001B1BC8(uint64_t a1)
{
  dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
  Logger = NFLogGetLogger();
  if (Logger)
  {
    v3 = Logger;
    Class = object_getClass(*(a1 + 32));
    isMetaClass = class_isMetaClass(Class);
    ClassName = object_getClassName(*(a1 + 32));
    Name = sel_getName(*(a1 + 56));
    v8 = [*(a1 + 40) code];
    v9 = [*(a1 + 32) sessionUID];
    v10 = 45;
    if (isMetaClass)
    {
      v10 = 43;
    }

    v3(6, "%c[%{public}s %{public}s]:%i Activating invalidation handler: error=0x%lx for session %@", v10, ClassName, Name, 254, v8, v9);
  }

  dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
  v11 = NFSharedLogGetLogger();
  if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
  {
    v12 = object_getClass(*(a1 + 32));
    if (class_isMetaClass(v12))
    {
      v13 = 43;
    }

    else
    {
      v13 = 45;
    }

    v14 = object_getClassName(*(a1 + 32));
    v15 = sel_getName(*(a1 + 56));
    v16 = [*(a1 + 40) code];
    v17 = [*(a1 + 32) sessionUID];
    *buf = 67110402;
    v20 = v13;
    v21 = 2082;
    v22 = v14;
    v23 = 2082;
    v24 = v15;
    v25 = 1024;
    v26 = 254;
    v27 = 2048;
    v28 = v16;
    v29 = 2112;
    v30 = v17;
    _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_DEFAULT, "%c[%{public}s %{public}s]:%i Activating invalidation handler: error=0x%lx for session %@", buf, 0x36u);
  }

  [*(a1 + 48) didUIControllerInvalidate:*(a1 + 40)];
  return [*(a1 + 32) clearUIControllerInvalidationHandler];
}

void sub_1001B1DC0(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [*(a1 + 32) workQueue];
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_1001B1EAC;
  block[3] = &unk_10031B580;
  v11 = v3;
  v5 = *(a1 + 32);
  v6 = *(a1 + 40);
  v12 = v5;
  v13 = v6;
  v9 = *(a1 + 48);
  v7 = v9;
  v14 = v9;
  v8 = v3;
  dispatch_async(v4, block);
}

void sub_1001B1EAC(uint64_t a1)
{
  if (*(a1 + 32))
  {
    dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
    Logger = NFLogGetLogger();
    if (Logger)
    {
      v3 = Logger;
      Class = object_getClass(*(a1 + 40));
      isMetaClass = class_isMetaClass(Class);
      ClassName = object_getClassName(*(a1 + 40));
      Name = sel_getName(*(a1 + 64));
      v8 = *(a1 + 32);
      v9 = [*(a1 + 40) sessionUID];
      v10 = 45;
      if (isMetaClass)
      {
        v10 = 43;
      }

      v3(3, "%c[%{public}s %{public}s]:%i Error activating UI : %@ for session %@", v10, ClassName, Name, 265, v8, v9);
    }

    dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
    v11 = NFSharedLogGetLogger();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
    {
      v12 = object_getClass(*(a1 + 40));
      if (class_isMetaClass(v12))
      {
        v13 = 43;
      }

      else
      {
        v13 = 45;
      }

      v14 = object_getClassName(*(a1 + 40));
      v15 = sel_getName(*(a1 + 64));
      v16 = *(a1 + 32);
      v17 = [*(a1 + 40) sessionUID];
      *buf = 67110402;
      v38 = v13;
      v39 = 2082;
      v40 = v14;
      v41 = 2082;
      v42 = v15;
      v43 = 1024;
      v44 = 265;
      v45 = 2112;
      v46 = v16;
      v47 = 2112;
      v48 = v17;
      _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_ERROR, "%c[%{public}s %{public}s]:%i Error activating UI : %@ for session %@", buf, 0x36u);
    }

    [*(a1 + 40) clearUIControllerInvalidationHandler];
    v18 = *(a1 + 32);
  }

  else if (([*(a1 + 40) didEnd] & 1) != 0 || objc_msgSend(*(a1 + 48), "isSuspended"))
  {
    dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
    v19 = NFLogGetLogger();
    if (v19)
    {
      v20 = v19;
      v21 = object_getClass(*(a1 + 40));
      v22 = class_isMetaClass(v21);
      v23 = object_getClassName(*(a1 + 40));
      v34 = sel_getName(*(a1 + 64));
      v24 = 45;
      if (v22)
      {
        v24 = 43;
      }

      v20(6, "%c[%{public}s %{public}s]:%i Session has been terminated / suspended", v24, v23, v34, 269);
    }

    dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
    v25 = NFSharedLogGetLogger();
    if (os_log_type_enabled(v25, OS_LOG_TYPE_DEFAULT))
    {
      v26 = object_getClass(*(a1 + 40));
      if (class_isMetaClass(v26))
      {
        v27 = 43;
      }

      else
      {
        v27 = 45;
      }

      v28 = object_getClassName(*(a1 + 40));
      v29 = sel_getName(*(a1 + 64));
      *buf = 67109890;
      v38 = v27;
      v39 = 2082;
      v40 = v28;
      v41 = 2082;
      v42 = v29;
      v43 = 1024;
      v44 = 269;
      _os_log_impl(&_mh_execute_header, v25, OS_LOG_TYPE_DEFAULT, "%c[%{public}s %{public}s]:%i Session has been terminated / suspended", buf, 0x22u);
    }

    v30 = [NSError alloc];
    v31 = [NSString stringWithUTF8String:"nfcd"];
    v35 = NSLocalizedDescriptionKey;
    v32 = [NSString stringWithUTF8String:"Invalid State"];
    v36 = v32;
    v33 = [NSDictionary dictionaryWithObjects:&v36 forKeys:&v35 count:1];
    v18 = [v30 initWithDomain:v31 code:12 userInfo:v33];

    [*(*(a1 + 40) + 232) coreNFCUIInvalidate];
  }

  else
  {
    v18 = 0;
    *(*(a1 + 40) + 256) = 1;
  }

  (*(*(a1 + 56) + 16))();
}

void sub_1001B2A80(uint64_t a1)
{
  v2 = _os_activity_create(&_mh_execute_header, "com.apple.nfcd.reader.sessionTimer", &_os_activity_current, OS_ACTIVITY_FLAG_DEFAULT);
  *state = 0;
  *&state[8] = 0;
  os_activity_scope_enter(v2, state);
  os_activity_scope_leave(state);

  WeakRetained = objc_loadWeakRetained((a1 + 32));
  if (WeakRetained)
  {
    dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
    Logger = NFLogGetLogger();
    if (Logger)
    {
      v5 = Logger;
      Class = object_getClass(WeakRetained);
      isMetaClass = class_isMetaClass(Class);
      ClassName = object_getClassName(WeakRetained);
      Name = sel_getName(*(a1 + 40));
      v10 = [WeakRetained clientName];
      v11 = [WeakRetained connection];
      v12 = [v11 processIdentifier];
      v13 = [WeakRetained sessionUID];
      v14 = 43;
      if (!isMetaClass)
      {
        v14 = 45;
      }

      v5(5, "%c[%{public}s %{public}s]:%i Reader session expired: %@ (%d) %@", v14, ClassName, Name, 345, v10, v12, v13);
    }

    dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
    v15 = NFSharedLogGetLogger();
    if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
    {
      v16 = object_getClass(WeakRetained);
      if (class_isMetaClass(v16))
      {
        v17 = 43;
      }

      else
      {
        v17 = 45;
      }

      v18 = object_getClassName(WeakRetained);
      v19 = sel_getName(*(a1 + 40));
      v20 = [WeakRetained clientName];
      v21 = [WeakRetained connection];
      v22 = [v21 processIdentifier];
      v23 = [WeakRetained sessionUID];
      *state = 67110658;
      *&state[4] = v17;
      *&state[8] = 2082;
      *&state[10] = v18;
      v35 = 2082;
      v36 = v19;
      v37 = 1024;
      v38 = 345;
      v39 = 2112;
      v40 = v20;
      v41 = 1024;
      v42 = v22;
      v43 = 2112;
      v44 = v23;
      _os_log_impl(&_mh_execute_header, v15, OS_LOG_TYPE_DEFAULT, "%c[%{public}s %{public}s]:%i Reader session expired: %@ (%d) %@", state, 0x3Cu);
    }

    *(WeakRetained + 54) = 1;
    v24 = *(WeakRetained + 47);
    *(WeakRetained + 47) = 0;

    *(WeakRetained + 30) = 0;
    [WeakRetained endSession:0];
    v25 = NFSharedSignpostLog();
    if (os_signpost_enabled(v25))
    {
      *state = 0;
      _os_signpost_emit_with_name_impl(&_mh_execute_header, v25, OS_SIGNPOST_EVENT, 0xEEEEB0B5B2B2EEEELL, "sessionTimerExpired", &unk_1002E8B7A, state, 2u);
    }

    v26 = [WeakRetained remoteObject];
    v27 = [NSError alloc];
    v28 = [NSString stringWithUTF8String:"nfcd"];
    v32 = NSLocalizedDescriptionKey;
    v29 = [NSString stringWithUTF8String:"Timeout"];
    v33 = v29;
    v30 = [NSDictionary dictionaryWithObjects:&v33 forKeys:&v32 count:1];
    v31 = [v27 initWithDomain:v28 code:5 userInfo:v30];
    [v26 didTerminate:v31];
  }
}

void sub_1001B3788(uint64_t a1)
{
  dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
  Logger = NFLogGetLogger();
  if (Logger)
  {
    v3 = Logger;
    Class = object_getClass(*(a1 + 32));
    isMetaClass = class_isMetaClass(Class);
    ClassName = object_getClassName(*(a1 + 32));
    Name = sel_getName(*(a1 + 40));
    v7 = 45;
    if (isMetaClass)
    {
      v7 = 43;
    }

    v3(4, "%c[%{public}s %{public}s]:%i Stopping reader session due to revocation of PPM", v7, ClassName, Name, 475);
  }

  dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
  v8 = NFSharedLogGetLogger();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
  {
    v9 = object_getClass(*(a1 + 32));
    if (class_isMetaClass(v9))
    {
      v10 = 43;
    }

    else
    {
      v10 = 45;
    }

    v11 = object_getClassName(*(a1 + 32));
    v12 = sel_getName(*(a1 + 40));
    *buf = 67109890;
    v21 = v10;
    v22 = 2082;
    v23 = v11;
    v24 = 2082;
    v25 = v12;
    v26 = 1024;
    v27 = 475;
    _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_ERROR, "%c[%{public}s %{public}s]:%i Stopping reader session due to revocation of PPM", buf, 0x22u);
  }

  if (([*(a1 + 32) didEnd] & 1) == 0)
  {
    v13 = +[_NFHardwareManager sharedHardwareManager];
    v14 = sub_1001262B4(v13);
    v15 = [v13 defaultRoutingConfig:3];
    v16 = [v13 setRoutingConfig:v15];

    WeakRetained = objc_loadWeakRetained((*(a1 + 32) + 352));
    sub_1001AF894(WeakRetained, *(a1 + 32));

    [v13 notifyReaderModeActivityEnd];
    if (v14)
    {
      v18 = NFSharedSignpostLog();
      if (os_signpost_enabled(v18))
      {
        *buf = 0;
        _os_signpost_emit_with_name_impl(&_mh_execute_header, v18, OS_SIGNPOST_INTERVAL_END, 0xEEEEB0B5B2B2EEEELL, "Polling", &unk_1002E8B7A, buf, 2u);
      }
    }
  }
}

id sub_1001B4810(id result, uint64_t a2)
{
  if (a2 == 1)
  {
    v3 = *(result + 4);
    if (*(v3 + 256) == 1)
    {
      v4 = *(v3 + 232);
      v5 = [*(result + 5) count];

      return [v4 coreNFCUITagScannedCount:v5];
    }
  }

  return result;
}

void sub_1001B6F54(uint64_t a1)
{
  if (![*(a1 + 32) didStart] || (objc_msgSend(*(a1 + 32), "isSuspended") & 1) != 0 || objc_msgSend(*(a1 + 32), "didEnd"))
  {
    dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
    Logger = NFLogGetLogger();
    if (Logger)
    {
      v3 = Logger;
      Class = object_getClass(*(a1 + 32));
      isMetaClass = class_isMetaClass(Class);
      ClassName = object_getClassName(*(a1 + 32));
      Name = sel_getName(*(a1 + 56));
      v8 = [*(a1 + 32) sessionUID];
      v9 = 45;
      if (isMetaClass)
      {
        v9 = 43;
      }

      v3(3, "%c[%{public}s %{public}s]:%i Session %{public}@ is not active", v9, ClassName, Name, 875, v8);
    }

    dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
    v10 = NFSharedLogGetLogger();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
    {
      v11 = object_getClass(*(a1 + 32));
      if (class_isMetaClass(v11))
      {
        v12 = 43;
      }

      else
      {
        v12 = 45;
      }

      v13 = object_getClassName(*(a1 + 32));
      v14 = sel_getName(*(a1 + 56));
      v15 = [*(a1 + 32) sessionUID];
      *buf = 67110146;
      v28 = v12;
      v29 = 2082;
      v30 = v13;
      v31 = 2082;
      v32 = v14;
      v33 = 1024;
      v34 = 875;
      v35 = 2114;
      v36 = v15;
      _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_ERROR, "%c[%{public}s %{public}s]:%i Session %{public}@ is not active", buf, 0x2Cu);
    }

    v16 = *(a1 + 48);
    if (v16)
    {
      v17 = [NSError alloc];
      v18 = [NSString stringWithUTF8String:"nfcd"];
      v25 = NSLocalizedDescriptionKey;
      v19 = [NSString stringWithUTF8String:"Session not active"];
      v26 = v19;
      v20 = [NSDictionary dictionaryWithObjects:&v26 forKeys:&v25 count:1];
      v21 = [v17 initWithDomain:v18 code:54 userInfo:v20];
      (*(v16 + 16))(v16, 0, v21);
    }
  }

  else
  {
    v22 = *(a1 + 32);
    v23 = *(a1 + 40);
    v24 = *(a1 + 48);

    [v22 _sync_connect:v23 completion:v24];
  }
}

void sub_1001B76B4(uint64_t a1)
{
  dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
  Logger = NFLogGetLogger();
  if (Logger)
  {
    v3 = Logger;
    Class = object_getClass(*(a1 + 32));
    isMetaClass = class_isMetaClass(Class);
    ClassName = object_getClassName(*(a1 + 32));
    Name = sel_getName(*(a1 + 48));
    v8 = [*(a1 + 32) clientName];
    v9 = [*(a1 + 32) connection];
    v10 = [v9 processIdentifier];
    v11 = [*(a1 + 32) sessionUID];
    v12 = 43;
    if (!isMetaClass)
    {
      v12 = 45;
    }

    v3(6, "%c[%{public}s %{public}s]:%i %{public}@ (%d) %{public}@", v12, ClassName, Name, 907, v8, v10, v11);
  }

  dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
  v13 = NFSharedLogGetLogger();
  if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
  {
    v14 = object_getClass(*(a1 + 32));
    if (class_isMetaClass(v14))
    {
      v15 = 43;
    }

    else
    {
      v15 = 45;
    }

    v16 = object_getClassName(*(a1 + 32));
    v17 = sel_getName(*(a1 + 48));
    v18 = [*(a1 + 32) clientName];
    v19 = [*(a1 + 32) connection];
    v20 = [v19 processIdentifier];
    v21 = [*(a1 + 32) sessionUID];
    *buf = 67110658;
    v45 = v15;
    v46 = 2082;
    v47 = v16;
    v48 = 2082;
    v49 = v17;
    v50 = 1024;
    v51 = 907;
    v52 = 2114;
    v53 = v18;
    v54 = 1024;
    v55 = v20;
    v56 = 2114;
    v57 = v21;
    _os_log_impl(&_mh_execute_header, v13, OS_LOG_TYPE_DEFAULT, "%c[%{public}s %{public}s]:%i %{public}@ (%d) %{public}@", buf, 0x3Cu);
  }

  if ([*(a1 + 32) didStart] && (objc_msgSend(*(a1 + 32), "isSuspended") & 1) == 0 && !objc_msgSend(*(a1 + 32), "didEnd"))
  {
    v38 = [*(a1 + 32) _disconnectWithCardRemoval:*(a1 + 56)];
    (*(*(a1 + 40) + 16))();
    if (v38)
    {
      +[NFExceptionsCALogger postAnalyticsReaderModeExceptionForType:tagType:rfFrameInterface:withErrorCode:](NFExceptionsCALogger, "postAnalyticsReaderModeExceptionForType:tagType:rfFrameInterface:withErrorCode:", 2, [*(a1 + 32) _getTagTypeFromTag:*(*(a1 + 32) + 376)], (*(*(a1 + 32) + 304) >> 12) & 1, objc_msgSend(v38, "code"));
      sub_10022F438(NFDailyStatisticsCALogger, @"readerModeDisconnectErrorCount");
    }

    goto LABEL_24;
  }

  dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
  v22 = NFLogGetLogger();
  if (v22)
  {
    v23 = v22;
    v24 = object_getClass(*(a1 + 32));
    v25 = class_isMetaClass(v24);
    v26 = object_getClassName(*(a1 + 32));
    v27 = sel_getName(*(a1 + 48));
    v28 = [*(a1 + 32) sessionUID];
    v29 = 45;
    if (v25)
    {
      v29 = 43;
    }

    v23(3, "%c[%{public}s %{public}s]:%i Session %{public}@ is not active", v29, v26, v27, 909, v28);
  }

  dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
  v30 = NFSharedLogGetLogger();
  if (os_log_type_enabled(v30, OS_LOG_TYPE_ERROR))
  {
    v31 = object_getClass(*(a1 + 32));
    if (class_isMetaClass(v31))
    {
      v32 = 43;
    }

    else
    {
      v32 = 45;
    }

    v33 = object_getClassName(*(a1 + 32));
    v34 = sel_getName(*(a1 + 48));
    v35 = [*(a1 + 32) sessionUID];
    *buf = 67110146;
    v45 = v32;
    v46 = 2082;
    v47 = v33;
    v48 = 2082;
    v49 = v34;
    v50 = 1024;
    v51 = 909;
    v52 = 2114;
    v53 = v35;
    _os_log_impl(&_mh_execute_header, v30, OS_LOG_TYPE_ERROR, "%c[%{public}s %{public}s]:%i Session %{public}@ is not active", buf, 0x2Cu);
  }

  v36 = *(a1 + 40);
  if (v36)
  {
    v37 = [NSError alloc];
    v38 = [NSString stringWithUTF8String:"nfcd"];
    v42 = NSLocalizedDescriptionKey;
    v39 = [NSString stringWithUTF8String:"Session not active"];
    v43 = v39;
    v40 = [NSDictionary dictionaryWithObjects:&v43 forKeys:&v42 count:1];
    v41 = [v37 initWithDomain:v38 code:54 userInfo:v40];
    (*(v36 + 16))(v36, v41);

LABEL_24:
  }
}

void sub_1001B8768(uint64_t a1, unsigned int a2)
{
  v4 = *(a1 + 40);
  v5 = *(*(a1 + 32) + 376);
  v6 = [NSError alloc];
  v7 = [NSString stringWithUTF8String:"nfcd"];
  v21 = NSLocalizedDescriptionKey;
  if (a2 >= 0x4C)
  {
    v8 = 76;
  }

  else
  {
    v8 = a2;
  }

  v9 = [NSString stringWithUTF8String:off_10031B2E8[v8], NSLocalizedDescriptionKey];
  v22 = v9;
  v10 = [NSDictionary dictionaryWithObjects:&v22 forKeys:&v21 count:1];
  v11 = [v6 initWithDomain:v7 code:a2 userInfo:v10];
  (*(v4 + 16))(v4, v5, 0, v11);

  +[NFExceptionsCALogger postAnalyticsReaderModeExceptionForType:tagType:rfFrameInterface:withErrorCode:](NFExceptionsCALogger, "postAnalyticsReaderModeExceptionForType:tagType:rfFrameInterface:withErrorCode:", 3, [*(a1 + 32) _getTagTypeFromTag:*(*(a1 + 32) + 376)], (*(*(a1 + 32) + 304) >> 12) & 1, 8);
  sub_10022F438(NFDailyStatisticsCALogger, @"readerModeTransceiveErrorCount");
  if (a2 == 32)
  {
    *(*(a1 + 32) + 240) = 0;
    [*(a1 + 32) endSession:0];
    v12 = [*(a1 + 32) remoteObject];
    v13 = [NSError alloc];
    v14 = [NSString stringWithUTF8String:"nfcd"];
    v19 = v18;
    v15 = [NSString stringWithUTF8String:"Not entitled"];
    v20 = v15;
    v16 = [NSDictionary dictionaryWithObjects:&v20 forKeys:&v19 count:1];
    v17 = [v13 initWithDomain:v14 code:32 userInfo:v16];
    [v12 didTerminate:v17];
  }
}

void sub_1001B8AF0(uint64_t a1)
{
  if (![*(a1 + 32) didStart] || (objc_msgSend(*(a1 + 32), "isSuspended") & 1) != 0 || objc_msgSend(*(a1 + 32), "didEnd"))
  {
    dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
    Logger = NFLogGetLogger();
    if (Logger)
    {
      v3 = Logger;
      Class = object_getClass(*(a1 + 32));
      isMetaClass = class_isMetaClass(Class);
      ClassName = object_getClassName(*(a1 + 32));
      Name = sel_getName(*(a1 + 56));
      v8 = [*(a1 + 32) sessionUID];
      v9 = 45;
      if (isMetaClass)
      {
        v9 = 43;
      }

      v3(3, "%c[%{public}s %{public}s]:%i Session %{public}@ is not active", v9, ClassName, Name, 1065, v8);
    }

    dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
    v10 = NFSharedLogGetLogger();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
    {
      v11 = object_getClass(*(a1 + 32));
      if (class_isMetaClass(v11))
      {
        v12 = 43;
      }

      else
      {
        v12 = 45;
      }

      v13 = object_getClassName(*(a1 + 32));
      v14 = sel_getName(*(a1 + 56));
      v15 = [*(a1 + 32) sessionUID];
      *buf = 67110146;
      v28 = v12;
      v29 = 2082;
      v30 = v13;
      v31 = 2082;
      v32 = v14;
      v33 = 1024;
      v34 = 1065;
      v35 = 2114;
      v36 = v15;
      _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_ERROR, "%c[%{public}s %{public}s]:%i Session %{public}@ is not active", buf, 0x2Cu);
    }

    v16 = *(a1 + 48);
    if (v16)
    {
      v17 = [NSError alloc];
      v18 = [NSString stringWithUTF8String:"nfcd"];
      v25 = NSLocalizedDescriptionKey;
      v19 = [NSString stringWithUTF8String:"Session not active"];
      v26 = v19;
      v20 = [NSDictionary dictionaryWithObjects:&v26 forKeys:&v25 count:1];
      v21 = [v17 initWithDomain:v18 code:54 userInfo:v20];
      (*(v16 + 16))(v16, 0, 0, v21);
    }
  }

  else
  {
    v22 = *(a1 + 32);
    v23 = *(a1 + 40);
    v24 = *(a1 + 48);

    [v22 _sync_transceive:v23 completion:v24];
  }
}

void sub_1001B8EB8(uint64_t a1)
{
  memset(v56, 0, sizeof(v56));
  if ([*(a1 + 32) didStart] && (objc_msgSend(*(a1 + 32), "isSuspended") & 1) == 0 && !objc_msgSend(*(a1 + 32), "didEnd"))
  {
    v25 = *(a1 + 32);
    if (v25[47])
    {
      v26 = [v25 _refreshNdefTagConnection];
      if (!v26)
      {
        v48 = *(a1 + 32);
        v49 = *(v48 + 344);
        v50 = *(v48 + 376);
        v55 = 0;
        v51 = sub_1001916A4(v49, v50, v56, &v55);
        v52 = v55;
        v18 = v52;
        if (v51)
        {
          v53 = *(*(a1 + 40) + 16);
        }

        else
        {
          if ([v52 code] == 37)
          {

            v18 = 0;
          }

          v53 = *(*(a1 + 40) + 16);
        }

        v53();
        goto LABEL_17;
      }

      v27 = v26;
      v28 = *(a1 + 40);
      v29 = [NSError alloc];
      v18 = [NSString stringWithUTF8String:"nfcd"];
      v30 = v27;
      v57[0] = NSLocalizedDescriptionKey;
      if (v27 >= 0x4C)
      {
        v31 = 76;
      }

      else
      {
        v31 = v27;
      }

      v19 = [NSString stringWithUTF8String:off_10031B2E8[v31]];
      v58[0] = v19;
      v58[1] = &off_100333A20;
      v57[1] = @"Line";
      v57[2] = @"Method";
      v32 = [[NSString alloc] initWithFormat:@"%s", sel_getName(*(a1 + 48))];
      v58[2] = v32;
      v57[3] = NSDebugDescriptionErrorKey;
      v33 = [[NSString alloc] initWithFormat:@"%s:%d", sel_getName(*(a1 + 48)), 1088];
      v58[3] = v33;
      v34 = [NSDictionary dictionaryWithObjects:v58 forKeys:v57 count:4];
      v35 = [v29 initWithDomain:v18 code:v30 userInfo:v34];
      (*(v28 + 16))(v28, 0, 0, v35);

LABEL_16:
LABEL_17:

      return;
    }

    dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
    Logger = NFLogGetLogger();
    if (Logger)
    {
      v37 = Logger;
      Class = object_getClass(*(a1 + 32));
      isMetaClass = class_isMetaClass(Class);
      ClassName = object_getClassName(*(a1 + 32));
      Name = sel_getName(*(a1 + 48));
      v41 = 45;
      if (isMetaClass)
      {
        v41 = 43;
      }

      v37(3, "%c[%{public}s %{public}s]:%i Tag not connected", v41, ClassName, Name, 1081);
    }

    dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
    v42 = NFSharedLogGetLogger();
    if (os_log_type_enabled(v42, OS_LOG_TYPE_ERROR))
    {
      v43 = object_getClass(*(a1 + 32));
      if (class_isMetaClass(v43))
      {
        v44 = 43;
      }

      else
      {
        v44 = 45;
      }

      v45 = object_getClassName(*(a1 + 32));
      v46 = sel_getName(*(a1 + 48));
      *buf = 67109890;
      v64 = v44;
      v65 = 2082;
      v66 = v45;
      v67 = 2082;
      v68 = v46;
      v69 = 1024;
      v70 = 1081;
      _os_log_impl(&_mh_execute_header, v42, OS_LOG_TYPE_ERROR, "%c[%{public}s %{public}s]:%i Tag not connected", buf, 0x22u);
    }

    v16 = *(a1 + 40);
    v47 = [NSError alloc];
    v18 = [NSString stringWithUTF8String:"nfcd"];
    v59 = NSLocalizedDescriptionKey;
    v19 = [NSString stringWithUTF8String:"Tag Not Found"];
    v60 = v19;
    v20 = [NSDictionary dictionaryWithObjects:&v60 forKeys:&v59 count:1];
    v21 = v47;
    v22 = v18;
    v23 = 28;
LABEL_15:
    v24 = [v21 initWithDomain:v22 code:v23 userInfo:v20];
    (*(v16 + 16))(v16, 0, 0, v24);

    goto LABEL_16;
  }

  dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
  v2 = NFLogGetLogger();
  if (v2)
  {
    v3 = v2;
    v4 = object_getClass(*(a1 + 32));
    v5 = class_isMetaClass(v4);
    v6 = object_getClassName(*(a1 + 32));
    v7 = sel_getName(*(a1 + 48));
    v8 = [*(a1 + 32) sessionUID];
    v9 = 45;
    if (v5)
    {
      v9 = 43;
    }

    v3(3, "%c[%{public}s %{public}s]:%i Session %{public}@ is not active", v9, v6, v7, 1078, v8);
  }

  dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
  v10 = NFSharedLogGetLogger();
  if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
  {
    v11 = object_getClass(*(a1 + 32));
    if (class_isMetaClass(v11))
    {
      v12 = 43;
    }

    else
    {
      v12 = 45;
    }

    v13 = object_getClassName(*(a1 + 32));
    v14 = sel_getName(*(a1 + 48));
    v15 = [*(a1 + 32) sessionUID];
    *buf = 67110146;
    v64 = v12;
    v65 = 2082;
    v66 = v13;
    v67 = 2082;
    v68 = v14;
    v69 = 1024;
    v70 = 1078;
    v71 = 2114;
    v72 = v15;
    _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_ERROR, "%c[%{public}s %{public}s]:%i Session %{public}@ is not active", buf, 0x2Cu);
  }

  v16 = *(a1 + 40);
  if (v16)
  {
    v17 = [NSError alloc];
    v18 = [NSString stringWithUTF8String:"nfcd"];
    v61 = NSLocalizedDescriptionKey;
    v19 = [NSString stringWithUTF8String:"Session not active"];
    v62 = v19;
    v20 = [NSDictionary dictionaryWithObjects:&v62 forKeys:&v61 count:1];
    v21 = v17;
    v22 = v18;
    v23 = 54;
    goto LABEL_15;
  }
}

void sub_1001B9648(uint64_t a1)
{
  dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
  Logger = NFLogGetLogger();
  if (Logger)
  {
    v3 = Logger;
    Class = object_getClass(*(a1 + 32));
    isMetaClass = class_isMetaClass(Class);
    ClassName = object_getClassName(*(a1 + 32));
    Name = sel_getName(*(a1 + 48));
    v8 = [*(a1 + 32) clientName];
    v9 = [*(a1 + 32) connection];
    v10 = [v9 processIdentifier];
    v11 = [*(a1 + 32) sessionUID];
    v12 = 43;
    if (!isMetaClass)
    {
      v12 = 45;
    }

    v3(6, "%c[%{public}s %{public}s]:%i %{public}@ (%d) %{public}@", v12, ClassName, Name, 1116, v8, v10, v11);
  }

  dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
  v13 = NFSharedLogGetLogger();
  if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
  {
    v14 = object_getClass(*(a1 + 32));
    if (class_isMetaClass(v14))
    {
      v15 = 43;
    }

    else
    {
      v15 = 45;
    }

    v16 = object_getClassName(*(a1 + 32));
    v17 = sel_getName(*(a1 + 48));
    v18 = [*(a1 + 32) clientName];
    v19 = [*(a1 + 32) connection];
    v20 = [v19 processIdentifier];
    v21 = [*(a1 + 32) sessionUID];
    *buf = 67110658;
    v130 = v15;
    v131 = 2082;
    v132 = v16;
    v133 = 2082;
    v134 = v17;
    v135 = 1024;
    v136 = 1116;
    v137 = 2114;
    v138 = v18;
    v139 = 1024;
    v140 = v20;
    v141 = 2114;
    v142 = v21;
    _os_log_impl(&_mh_execute_header, v13, OS_LOG_TYPE_DEFAULT, "%c[%{public}s %{public}s]:%i %{public}@ (%d) %{public}@", buf, 0x3Cu);
  }

  if ([*(a1 + 32) didStart] && (objc_msgSend(*(a1 + 32), "isSuspended") & 1) == 0 && !objc_msgSend(*(a1 + 32), "didEnd"))
  {
    v45 = *(a1 + 32);
    v46 = *(v45 + 376);
    if (!v46)
    {
      dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
      v57 = NFLogGetLogger();
      if (v57)
      {
        v58 = v57;
        v59 = object_getClass(*(a1 + 32));
        v60 = class_isMetaClass(v59);
        v61 = object_getClassName(*(a1 + 32));
        v113 = sel_getName(*(a1 + 48));
        v62 = 45;
        if (v60)
        {
          v62 = 43;
        }

        v58(3, "%c[%{public}s %{public}s]:%i Tag not connected", v62, v61, v113, 1121);
      }

      dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
      v63 = NFSharedLogGetLogger();
      if (os_log_type_enabled(v63, OS_LOG_TYPE_ERROR))
      {
        v64 = object_getClass(*(a1 + 32));
        if (class_isMetaClass(v64))
        {
          v65 = 43;
        }

        else
        {
          v65 = 45;
        }

        v66 = object_getClassName(*(a1 + 32));
        v67 = sel_getName(*(a1 + 48));
        *buf = 67109890;
        v130 = v65;
        v131 = 2082;
        v132 = v66;
        v133 = 2082;
        v134 = v67;
        v135 = 1024;
        v136 = 1121;
        _os_log_impl(&_mh_execute_header, v63, OS_LOG_TYPE_ERROR, "%c[%{public}s %{public}s]:%i Tag not connected", buf, 0x22u);
      }

      v36 = *(a1 + 40);
      v68 = [NSError alloc];
      v38 = [NSString stringWithUTF8String:"nfcd"];
      v125 = NSLocalizedDescriptionKey;
      v39 = [NSString stringWithUTF8String:"Tag Not Found"];
      v126 = v39;
      v40 = [NSDictionary dictionaryWithObjects:&v126 forKeys:&v125 count:1];
      v41 = v68;
      v42 = v38;
      v43 = 28;
      goto LABEL_24;
    }

    if ((*(v45 + 385) & 2) == 0)
    {
      v47 = [v45 _refreshNdefTagConnection];
      if (v47)
      {
        v48 = v47;
        v49 = *(a1 + 40);
        v50 = [NSError alloc];
        v38 = [NSString stringWithUTF8String:"nfcd"];
        v51 = v48;
        v123[0] = NSLocalizedDescriptionKey;
        if (v48 >= 0x4C)
        {
          v52 = 76;
        }

        else
        {
          v52 = v48;
        }

        v39 = [NSString stringWithUTF8String:off_10031B2E8[v52]];
        v124[0] = v39;
        v124[1] = &off_100333A38;
        v123[1] = @"Line";
        v123[2] = @"Method";
        v53 = [[NSString alloc] initWithFormat:@"%s", sel_getName(*(a1 + 48))];
        v124[2] = v53;
        v123[3] = NSDebugDescriptionErrorKey;
        v54 = [[NSString alloc] initWithFormat:@"%s:%d", sel_getName(*(a1 + 48)), 1142];
        v124[3] = v54;
        v55 = [NSDictionary dictionaryWithObjects:v124 forKeys:v123 count:4];
        v56 = [v50 initWithDomain:v38 code:v51 userInfo:v55];
        (*(v49 + 16))(v49, v56, 0);

        goto LABEL_25;
      }

      v118[0] = 0;
      v118[1] = 0;
      v119 = 0;
      v74 = *(a1 + 32);
      v75 = *(v74 + 344);
      v76 = *(v74 + 376);
      v117 = 0;
      v77 = sub_1001916A4(v75, v76, v118, &v117);
      v38 = v117;
      if ((v77 & 1) == 0)
      {
        dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
        v85 = NFLogGetLogger();
        if (v85)
        {
          v86 = v85;
          v87 = object_getClass(*(a1 + 32));
          v88 = class_isMetaClass(v87);
          v112 = object_getClassName(*(a1 + 32));
          v114 = sel_getName(*(a1 + 48));
          v89 = 45;
          if (v88)
          {
            v89 = 43;
          }

          v86(3, "%c[%{public}s %{public}s]:%i Failed to query NDEF capability, %{public}@", v89, v112, v114, 1148, v38);
        }

        dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
        v90 = NFSharedLogGetLogger();
        if (os_log_type_enabled(v90, OS_LOG_TYPE_ERROR))
        {
          v91 = object_getClass(*(a1 + 32));
          if (class_isMetaClass(v91))
          {
            v92 = 43;
          }

          else
          {
            v92 = 45;
          }

          v93 = object_getClassName(*(a1 + 32));
          v94 = sel_getName(*(a1 + 48));
          *buf = 67110146;
          v130 = v92;
          v131 = 2082;
          v132 = v93;
          v133 = 2082;
          v134 = v94;
          v135 = 1024;
          v136 = 1148;
          v137 = 2114;
          v138 = v38;
          _os_log_impl(&_mh_execute_header, v90, OS_LOG_TYPE_ERROR, "%c[%{public}s %{public}s]:%i Failed to query NDEF capability, %{public}@", buf, 0x2Cu);
        }

        (*(*(a1 + 40) + 16))();
        goto LABEL_26;
      }

      if ((v119 & 1) == 0)
      {
        dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
        v95 = NFLogGetLogger();
        if (v95)
        {
          v96 = v95;
          v97 = object_getClass(*(a1 + 32));
          v98 = class_isMetaClass(v97);
          v99 = object_getClassName(*(a1 + 32));
          v115 = sel_getName(*(a1 + 48));
          v100 = 45;
          if (v98)
          {
            v100 = 43;
          }

          v96(3, "%c[%{public}s %{public}s]:%i Tag is not NDEF readable", v100, v99, v115, 1154);
        }

        dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
        v101 = NFSharedLogGetLogger();
        if (os_log_type_enabled(v101, OS_LOG_TYPE_ERROR))
        {
          v102 = object_getClass(*(a1 + 32));
          if (class_isMetaClass(v102))
          {
            v103 = 43;
          }

          else
          {
            v103 = 45;
          }

          v104 = object_getClassName(*(a1 + 32));
          v105 = sel_getName(*(a1 + 48));
          *buf = 67109890;
          v130 = v103;
          v131 = 2082;
          v132 = v104;
          v133 = 2082;
          v134 = v105;
          v135 = 1024;
          v136 = 1154;
          _os_log_impl(&_mh_execute_header, v101, OS_LOG_TYPE_ERROR, "%c[%{public}s %{public}s]:%i Tag is not NDEF readable", buf, 0x22u);
        }

        v106 = *(a1 + 40);
        v107 = [NSError alloc];
        v108 = [NSString stringWithUTF8String:"nfcd"];
        v121 = NSLocalizedDescriptionKey;
        v109 = [NSString stringWithUTF8String:"Tag Not NDEF formatted"];
        v122 = v109;
        v110 = [NSDictionary dictionaryWithObjects:&v122 forKeys:&v121 count:1];
        v111 = [v107 initWithDomain:v108 code:37 userInfo:v110];
        (*(v106 + 16))(v106, v111, 0);

        goto LABEL_26;
      }

      v78 = *(a1 + 32);
      v79 = *(v78 + 344);
      v80 = *(v78 + 376);
      v116 = v38;
      v81 = sub_100193E90(v79, v80, &v116);
      v82 = v116;

      if (v81)
      {
        v83 = sub_10024DC10(NFTagReadCALogger);
        v84 = [v81 asData];
        sub_10024E250(v83, [v84 length]);
      }

      else
      {
        if (!v82)
        {
LABEL_78:
          (*(*(a1 + 40) + 16))();

          v38 = v82;
          goto LABEL_26;
        }

        v83 = sub_10024DC10(NFTagReadCALogger);
        sub_10024E3FC(v83, v82);
      }

      goto LABEL_78;
    }

    v69 = *(v45 + 344);
    v120 = 0;
    v70 = sub_100193E90(v69, v46, &v120);
    v71 = v120;
    v38 = v71;
    if (v70)
    {
      v72 = sub_10024DC10(NFTagReadCALogger);
      v73 = [v70 asData];
      sub_10024E250(v72, [v73 length]);
    }

    else
    {
      if (!v71)
      {
LABEL_54:
        (*(*(a1 + 40) + 16))();

        goto LABEL_26;
      }

      v72 = sub_10024DC10(NFTagReadCALogger);
      sub_10024E3FC(v72, v38);
    }

    goto LABEL_54;
  }

  dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
  v22 = NFLogGetLogger();
  if (v22)
  {
    v23 = v22;
    v24 = object_getClass(*(a1 + 32));
    v25 = class_isMetaClass(v24);
    v26 = object_getClassName(*(a1 + 32));
    v27 = sel_getName(*(a1 + 48));
    v28 = [*(a1 + 32) sessionUID];
    v29 = 45;
    if (v25)
    {
      v29 = 43;
    }

    v23(3, "%c[%{public}s %{public}s]:%i Session %{public}@ is not active", v29, v26, v27, 1119, v28);
  }

  dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
  v30 = NFSharedLogGetLogger();
  if (os_log_type_enabled(v30, OS_LOG_TYPE_ERROR))
  {
    v31 = object_getClass(*(a1 + 32));
    if (class_isMetaClass(v31))
    {
      v32 = 43;
    }

    else
    {
      v32 = 45;
    }

    v33 = object_getClassName(*(a1 + 32));
    v34 = sel_getName(*(a1 + 48));
    v35 = [*(a1 + 32) sessionUID];
    *buf = 67110146;
    v130 = v32;
    v131 = 2082;
    v132 = v33;
    v133 = 2082;
    v134 = v34;
    v135 = 1024;
    v136 = 1119;
    v137 = 2114;
    v138 = v35;
    _os_log_impl(&_mh_execute_header, v30, OS_LOG_TYPE_ERROR, "%c[%{public}s %{public}s]:%i Session %{public}@ is not active", buf, 0x2Cu);
  }

  v36 = *(a1 + 40);
  if (v36)
  {
    v37 = [NSError alloc];
    v38 = [NSString stringWithUTF8String:"nfcd"];
    v127 = NSLocalizedDescriptionKey;
    v39 = [NSString stringWithUTF8String:"Session not active"];
    v128 = v39;
    v40 = [NSDictionary dictionaryWithObjects:&v128 forKeys:&v127 count:1];
    v41 = v37;
    v42 = v38;
    v43 = 54;
LABEL_24:
    v44 = [v41 initWithDomain:v42 code:v43 userInfo:v40];
    (*(v36 + 16))(v36, v44, 0);

LABEL_25:
LABEL_26:
  }
}