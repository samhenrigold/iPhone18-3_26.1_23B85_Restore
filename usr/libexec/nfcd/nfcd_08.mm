void sub_1000E0EB4(id *a1, uint64_t a2)
{
  if (a1)
  {
    dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
    Logger = NFLogGetLogger();
    if (Logger)
    {
      v5 = Logger;
      Class = object_getClass(a1);
      isMetaClass = class_isMetaClass(Class);
      ClassName = object_getClassName(a1);
      Name = sel_getName("notifyOfHwStateChanged:");
      v8 = 45;
      if (isMetaClass)
      {
        v8 = 43;
      }

      v5(6, "%c[%{public}s %{public}s]:%i Notifying client of state update : %u.", v8, ClassName, Name, 557, a2);
    }

    dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
    v9 = NFSharedLogGetLogger();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
    {
      v10 = object_getClass(a1);
      if (class_isMetaClass(v10))
      {
        v11 = 43;
      }

      else
      {
        v11 = 45;
      }

      *buf = 67110146;
      v26 = v11;
      v27 = 2082;
      v28 = object_getClassName(a1);
      v29 = 2082;
      v30 = sel_getName("notifyOfHwStateChanged:");
      v31 = 1024;
      v32 = 557;
      v33 = 1024;
      v34 = a2;
      _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEFAULT, "%c[%{public}s %{public}s]:%i Notifying client of state update : %u.", buf, 0x28u);
    }

    v12 = sub_100003548(a1);
    v20 = 0u;
    v21 = 0u;
    v22 = 0u;
    v23 = 0u;
    v13 = [v12 allValues];
    v14 = [v13 countByEnumeratingWithState:&v20 objects:v24 count:16];
    if (v14)
    {
      v15 = v14;
      v16 = *v21;
      do
      {
        for (i = 0; i != v15; i = i + 1)
        {
          if (*v21 != v16)
          {
            objc_enumerationMutation(v13);
          }

          [*(*(&v20 + 1) + 8 * i) hwStateDidChange:a2];
        }

        v15 = [v13 countByEnumeratingWithState:&v20 objects:v24 count:16];
      }

      while (v15);
    }

    [a1[21] hwStateDidChange:a2];
  }
}

void sub_1000E1108(uint64_t result)
{
  if (result)
  {
    if (!*(result + 104))
    {
      v2 = sub_100233748(NFBackgroundActivityScheduler);
      v3 = *(result + 104);
      *(result + 104) = v2;

      v4 = *(result + 104);
      v5[0] = _NSConcreteStackBlock;
      v5[1] = 3221225472;
      v5[2] = sub_1000E11C0;
      v5[3] = &unk_1003162B8;
      v5[4] = result;
      v5[5] = "_scheduleDailyAnalytics";
      sub_100233938(v4, @"com.apple.nfcd.coreanalytics.event", v5);
    }
  }
}

void sub_1000E11C0(uint64_t a1, void *a2)
{
  v3 = a2;
  dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
  Logger = NFLogGetLogger();
  if (Logger)
  {
    v5 = Logger;
    Class = object_getClass(*(a1 + 32));
    isMetaClass = class_isMetaClass(Class);
    ClassName = object_getClassName(*(a1 + 32));
    Name = sel_getName(*(a1 + 40));
    v9 = 45;
    if (isMetaClass)
    {
      v9 = 43;
    }

    v5(6, "%c[%{public}s %{public}s]:%i Stats scheduler invoked", v9, ClassName, Name, 535);
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
    v14 = sel_getName(*(a1 + 40));
    *buf = 67109890;
    *&buf[4] = v12;
    *v31 = 2082;
    *&v31[2] = v13;
    *&v31[10] = 2082;
    *&v31[12] = v14;
    *&v31[20] = 1024;
    *&v31[22] = 535;
    _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEFAULT, "%c[%{public}s %{public}s]:%i Stats scheduler invoked", buf, 0x22u);
  }

  if (v3)
  {
    dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
    v15 = NFLogGetLogger();
    if (v15)
    {
      v16 = v15;
      v17 = object_getClass(*(a1 + 32));
      v18 = class_isMetaClass(v17);
      v27 = object_getClassName(*(a1 + 32));
      v29 = sel_getName(*(a1 + 40));
      v19 = 45;
      if (v18)
      {
        v19 = 43;
      }

      v16(3, "%c[%{public}s %{public}s]:%i %{public}@", v19, v27, v29, 538, v3);
    }

    dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
    v20 = NFSharedLogGetLogger();
    if (os_log_type_enabled(v20, OS_LOG_TYPE_ERROR))
    {
      v21 = object_getClass(*(a1 + 32));
      if (class_isMetaClass(v21))
      {
        v22 = 43;
      }

      else
      {
        v22 = 45;
      }

      v23 = object_getClassName(*(a1 + 32));
      v24 = sel_getName(*(a1 + 40));
      *buf = 67110146;
      *&buf[4] = v22;
      *v31 = 2082;
      *&v31[2] = v23;
      *&v31[10] = 2082;
      *&v31[12] = v24;
      *&v31[20] = 1024;
      *&v31[22] = 538;
      *&v31[26] = 2114;
      *&v31[28] = v3;
      _os_log_impl(&_mh_execute_header, v20, OS_LOG_TYPE_ERROR, "%c[%{public}s %{public}s]:%i %{public}@", buf, 0x2Cu);
    }
  }

  else
  {
    v25 = *(a1 + 32);
    if (v25)
    {
      v26 = *(v25 + 240);
      *buf = _NSConcreteStackBlock;
      *v31 = 3221225472;
      *&v31[8] = sub_1000E230C;
      *&v31[16] = &unk_100315F58;
      *&v31[24] = v25;
      *&v31[32] = "triggerDailyStats";
      dispatch_async(v26, buf);
    }
  }
}

void sub_1000E1A90(uint64_t a1)
{
  os_unfair_lock_lock(*(a1 + 48));
  v2 = *(*(a1 + 40) + 8);
  if (*(v2 + 24))
  {
    *(v2 + 24) = 0;
    os_unfair_lock_unlock(*(a1 + 48));
    v3 = *(a1 + 32);
    if (*(v3 + 364) != 1)
    {
      if ([*(v3 + 392) hasLPEMSupport])
      {
        v4 = [*(a1 + 32) driverWrapper];
        v5 = sub_1001A9F5C(v4);

        if (v5)
        {
          return;
        }
      }

      v3 = *(a1 + 32);
    }

    v7 = *(v3 + 376);

    sub_10021D334(v7);
  }

  else
  {
    v6 = *(a1 + 48);

    os_unfair_lock_unlock(v6);
  }
}

BOOL sub_1000E1B64(void *a1, uint64_t a2)
{
  if (!a1)
  {
    return 0;
  }

  v4 = a1[48];
  v5 = [[NSData alloc] initWithBytes:&unk_100297758 length:12];
  LODWORD(v4) = sub_1001595DC(v4, v5, 0);

  if (!v4)
  {
    dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
    Logger = NFLogGetLogger();
    if (Logger)
    {
      v9 = Logger;
      Class = object_getClass(a1);
      isMetaClass = class_isMetaClass(Class);
      ClassName = object_getClassName(a1);
      Name = sel_getName("_getSEMemoryInfo:result:");
      v13 = 45;
      if (isMetaClass)
      {
        v13 = 43;
      }

      v9(3, "%c[%{public}s %{public}s]:%i Failed to select CASD", v13, ClassName, Name, 1220);
    }

    dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
    v14 = NFSharedLogGetLogger();
    if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
    {
      v15 = object_getClass(a1);
      if (class_isMetaClass(v15))
      {
        v16 = 43;
      }

      else
      {
        v16 = 45;
      }

      *buf = 67109890;
      v19 = v16;
      v20 = 2082;
      v21 = object_getClassName(a1);
      v22 = 2082;
      v23 = sel_getName("_getSEMemoryInfo:result:");
      v24 = 1024;
      v25 = 1220;
      _os_log_impl(&_mh_execute_header, v14, OS_LOG_TYPE_ERROR, "%c[%{public}s %{public}s]:%i Failed to select CASD", buf, 0x22u);
    }

    return 0;
  }

  v6 = a1[48];

  return sub_100092D68(v6, a2);
}

NSMutableArray *sub_1000E1D7C(uint64_t a1)
{
  if (!a1 || [*(a1 + 392) siliconName] < 0xE)
  {
    v2 = 0;
    goto LABEL_10;
  }

  v3 = *(a1 + 376);
  v8 = 0;
  v4 = sub_1001E9340(v3, &v8);
  v5 = v8;
  v6 = v5;
  if (v4)
  {
  }

  else if ([(NSMutableArray *)v5 count])
  {
    v2 = v6;
    goto LABEL_9;
  }

  v2 = 0;
LABEL_9:

LABEL_10:

  return v2;
}

id sub_1000E1E20(uint64_t a1)
{
  if (!a1 || !*(a1 + 392))
  {
    return 0;
  }

  v2 = +[NFCALogger sharedCALogger];
  v3 = [v2 getHardwareTypeForCA:{objc_msgSend(*(a1 + 392), "siliconName")}];

  return v3;
}

void sub_1000E1E88(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = *(a1 + 32);
  v5 = v4[4];
  if (!v5)
  {
    *(*(a1 + 32) + 32) = malloc_type_calloc(1uLL, 0x34uLL, 0x10000403884A0CCuLL);
    v4 = *(a1 + 32);
    v5 = v4[4];
    if (!v5)
    {
      dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
      Logger = NFLogGetLogger();
      if (Logger)
      {
        v19 = Logger;
        Class = object_getClass(*(a1 + 32));
        isMetaClass = class_isMetaClass(Class);
        ClassName = object_getClassName(*(a1 + 32));
        Name = sel_getName(*(a1 + 40));
        v23 = 45;
        if (isMetaClass)
        {
          v23 = 43;
        }

        v19(3, "%c[%{public}s %{public}s]:%i Failed to create SE memory.", v23, ClassName, Name, 771);
      }

      dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
      v12 = NFSharedLogGetLogger();
      if (!os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
      {
        goto LABEL_23;
      }

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
      *buf = 67109890;
      v31 = v25;
      v32 = 2082;
      v33 = v26;
      v34 = 2082;
      v35 = v27;
      v36 = 1024;
      v37 = 771;
      v17 = "%c[%{public}s %{public}s]:%i Failed to create SE memory.";
      goto LABEL_22;
    }
  }

  if (!sub_1000E1B64(v4, v5))
  {
    dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
    v6 = NFLogGetLogger();
    if (v6)
    {
      v7 = v6;
      v8 = object_getClass(*(a1 + 32));
      v9 = class_isMetaClass(v8);
      v10 = object_getClassName(*(a1 + 32));
      v28 = sel_getName(*(a1 + 40));
      v11 = 45;
      if (v9)
      {
        v11 = 43;
      }

      v7(4, "%c[%{public}s %{public}s]:%i Failed to get memory info", v11, v10, v28, 776);
    }

    dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
    v12 = NFSharedLogGetLogger();
    if (!os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_23;
    }

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
    v31 = v14;
    v32 = 2082;
    v33 = v15;
    v34 = 2082;
    v35 = v16;
    v36 = 1024;
    v37 = 776;
    v17 = "%c[%{public}s %{public}s]:%i Failed to get memory info";
LABEL_22:
    _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_ERROR, v17, buf, 0x22u);
LABEL_23:
  }
}

id *sub_1000E2158(id *result, double a2)
{
  if (result[17])
  {
    v3 = result;
    dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
    Logger = NFLogGetLogger();
    if (Logger)
    {
      v5 = Logger;
      Class = object_getClass(v3);
      isMetaClass = class_isMetaClass(Class);
      ClassName = object_getClassName(v3);
      Name = sel_getName("schedulePostStartupWork:");
      v9 = 45;
      if (isMetaClass)
      {
        v9 = 43;
      }

      v5(6, "%c[%{public}s %{public}s]:%i Scheduling post stack bootup work in %f seconds", v9, ClassName, Name, 857, *&a2);
    }

    dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
    v10 = NFSharedLogGetLogger();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
    {
      v11 = object_getClass(v3);
      if (class_isMetaClass(v11))
      {
        v12 = 43;
      }

      else
      {
        v12 = 45;
      }

      *buf = 67110146;
      v15 = v12;
      v16 = 2082;
      v17 = object_getClassName(v3);
      v18 = 2082;
      v19 = sel_getName("schedulePostStartupWork:");
      v20 = 1024;
      v21 = 857;
      v22 = 2048;
      v23 = a2;
      _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEFAULT, "%c[%{public}s %{public}s]:%i Scheduling post stack bootup work in %f seconds", buf, 0x2Cu);
    }

    return [v3[17] startTimer:a2];
  }

  return result;
}

void sub_1000E230C(uint64_t a1)
{
  v2 = *(*(a1 + 32) + 240);
  v3 = sub_10004BF2C(NFRoutingConfig);
  v5[0] = _NSConcreteStackBlock;
  v5[1] = 3221225472;
  v5[2] = sub_1000E23D8;
  v5[3] = &unk_100318458;
  v6 = *(a1 + 32);
  v4 = [_NFBuiltinSession createSession:@"Daily Stats" workQueue:v2 routing:v3 sessionQueuer:v6 didStartWork:v5];
}

void sub_1000E23D8(uint64_t a1)
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

    v3(6, "%c[%{public}s %{public}s]:%i daily stats", v7, ClassName, Name, 876);
  }

  dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
  v8 = NFSharedLogGetLogger();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
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
    *&buf[4] = v10;
    *v88 = 2082;
    *&v88[2] = v11;
    *&v88[10] = 2082;
    *&v88[12] = v12;
    *&v88[20] = 1024;
    *&v88[22] = 876;
    _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "%c[%{public}s %{public}s]:%i daily stats", buf, 0x22u);
  }

  sub_1000E2CD4(*(a1 + 32));
  v13 = sub_100033938(*(*(a1 + 32) + 24));
  if (v13)
  {
    sub_1000A5C04(NFUnifiedAccessTransactionCALogger, v13);
  }

  v14 = sub_100033F64(*(*(a1 + 32) + 24));

  if (v14)
  {
    sub_1000A5C78(NFUnifiedAccessTransactionCALogger, v14);
  }

  v15 = *(a1 + 32);
  v16 = &GetElapsedTimeInMillisecondsFromMachTime_ptr;
  if (v15)
  {
    v17 = objc_opt_new();
    v83 = 0;
    v81 = 0u;
    v82 = 0u;
    v80 = 0u;
    if (sub_1000E1B64(v15, &v80))
    {
      v101[0] = @"seTransientDeselect";
      v18 = [NSNumber numberWithUnsignedInt:DWORD2(v80)];
      v102[0] = v18;
      v101[1] = @"seTransientReset";
      v19 = [NSNumber numberWithUnsignedInt:DWORD1(v80)];
      v102[1] = v19;
      v101[2] = @"seTransientPersistent";
      v20 = [NSNumber numberWithUnsignedInt:v80];
      v102[2] = v20;
      v101[3] = @"seAvailableIndices";
      [NSNumber numberWithUnsignedInt:HIDWORD(v80)];
      v22 = v21 = v17;
      v102[3] = v22;
      v101[4] = @"seTotalIndices";
      v23 = [NSNumber numberWithUnsignedInt:v81];
      v102[4] = v23;
      v24 = [NSDictionary dictionaryWithObjects:v102 forKeys:v101 count:5];
      [v21 addEntriesFromDictionary:v24];

      v17 = v21;
      v16 = &GetElapsedTimeInMillisecondsFromMachTime_ptr;
    }

    v25 = sub_1000E1D7C(v15);
    v26 = v25;
    if (v25 && [v25 count])
    {
      sub_10022EED8(NFDailyStatisticsCALogger, v26);
    }

    os_unfair_lock_lock((v15 + 48));
    v27 = *(v15 + 40);
    if (v27)
    {
      v28 = [*(v15 + 40) migrationState];
      v66 = [*(v15 + 40) deviceType];
      v69 = [*(v15 + 40) firmwareVersion];
      v65 = [*(v15 + 40) hardwareVersion];
      v73 = [*(v15 + 40) signingKeyType];
      v29 = [*(v15 + 40) sequenceCounter];
      v77 = [*(v15 + 40) referenceCounter];
      v71 = [*(v15 + 40) OSMode];
      v68 = [*(v15 + 40) restrictedMode];
      v76 = [*(v15 + 40) migrationPackages];
      v75 = [*(v15 + 40) migrationInstances];
      v74 = [*(v15 + 40) platformIdentifier];
    }

    else
    {
      v69 = 0;
      v71 = 0;
      v29 = 0;
      v76 = 0;
      v77 = 0;
      v74 = 0;
      v75 = 0;
      v65 = 0;
      v66 = 0;
      v73 = 0;
      v28 = 0;
      v68 = 1;
    }

    os_unfair_lock_unlock((v15 + 48));
    v78 = &stru_10031EA18;
    if (v27 && *(v15 + 392))
    {
      v61 = v28;
      v30 = *(v15 + 384);
      v79 = &stru_10031EA18;
      v31 = sub_1000A0C8C(v30, &v79);
      v78 = v79;
      v32 = sub_10009E0B8(*(v15 + 384), &v83 + 1, 1);
      v86[0] = @"nfccHWVersion";
      v33 = +[NSNumber numberWithUnsignedInteger:](NSNumber, "numberWithUnsignedInteger:", [*(v15 + 392) siliconVersion]);
      *buf = v33;
      v86[1] = @"nfccROMVersion";
      v59 = +[NSNumber numberWithUnsignedInteger:](NSNumber, "numberWithUnsignedInteger:", [*(v15 + 392) ROMVersion]);
      *v88 = v59;
      v86[2] = @"nfccFWVersion";
      v58 = +[NSNumber numberWithUnsignedInteger:](NSNumber, "numberWithUnsignedInteger:", [*(v15 + 392) firmwareVersion]);
      *&v88[8] = v58;
      v86[3] = @"middlewareVersion";
      v57 = +[NSNumber numberWithUnsignedInteger:](NSNumber, "numberWithUnsignedInteger:", [*(v15 + 392) middlewareVersion]);
      *&v88[16] = v57;
      v86[4] = @"hardwareType";
      v56 = sub_1000E1E20(v15);
      v63 = v26;
      v64 = v14;
      v72 = v17;
      v62 = v27;
      v60 = v33;
      if (v56)
      {
        v34 = [NSNumber numberWithUnsignedInt:sub_1000E1E20(v15)];
      }

      else
      {
        v34 = &off_1003313E0;
      }

      v35 = v66;
      v67 = v34;
      *&v88[24] = v34;
      v86[5] = @"seDeviceType";
      v36 = [NSNumber numberWithUnsignedInteger:v35];
      v89 = v36;
      v86[6] = @"seHWVersion";
      v37 = [NSNumber numberWithUnsignedInteger:v65];
      v90 = v37;
      v86[7] = @"seFWVersion";
      v38 = [NSNumber numberWithUnsignedInteger:v69];
      v91 = v38;
      v86[8] = @"seSignKeyType";
      v39 = [NSNumber numberWithUnsignedInteger:v73];
      v40 = v39;
      v70 = v29;
      if (v29)
      {
        v41 = v29;
      }

      else
      {
        v41 = &off_1003313E0;
      }

      v92 = v39;
      v93 = v41;
      v86[9] = @"seSequenceCounter";
      v86[10] = @"seReferenceCounter";
      v42 = v77;
      if (!v77)
      {
        v42 = &off_1003313E0;
      }

      v94 = v42;
      v86[11] = @"seOSMode";
      v43 = [NSNumber numberWithUnsignedInteger:v71];
      v95 = v43;
      v86[12] = @"seRestrictedMode";
      v44 = [NSNumber numberWithBool:v68];
      v96 = v44;
      v86[13] = @"seMigrationState";
      v45 = [NSNumber numberWithUnsignedInteger:v61];
      v46 = v45;
      v47 = v76;
      if (!v76)
      {
        v47 = &off_1003313E0;
      }

      v97 = v45;
      v98 = v47;
      v86[14] = @"seMigrationPkgs";
      v86[15] = @"seMigrationInst";
      v48 = v75;
      if (!v75)
      {
        v48 = &off_1003313E0;
      }

      v86[16] = @"sePidMigrationState";
      v99 = v48;
      v100 = v78;
      v49 = [NSDictionary dictionaryWithObjects:buf forKeys:v86 count:17];
      [v72 addEntriesFromDictionary:v49];

      if (v56)
      {
      }

      v26 = v63;
      v14 = v64;
      v16 = &GetElapsedTimeInMillisecondsFromMachTime_ptr;
      v17 = v72;
      v27 = v62;
      v29 = v70;
    }

    if ([v17 count])
    {
      sub_10022E8DC(NFDailyStatisticsCALogger, v17);
    }

    v50 = [*(v15 + 384) cachedAppletsUnfiltered];

    if (v50)
    {
      sub_1002531D4(*(v15 + 384));
    }

    v51 = v16[421];
    v84 = @"radioIsEnabled";
    if (*(v15 + 296) == 1)
    {
      v52 = &__kCFBooleanTrue;
    }

    else
    {
      v52 = &__kCFBooleanFalse;
    }

    v85 = v52;
    [NSDictionary dictionaryWithObjects:&v85 forKeys:&v84 count:1];
    v54 = v53 = v16;
    [v51 updateGeneralDeviceStatistic:v54];

    v16 = v53;
    [v53[421] postGeneralDeviceStatistics];
    [*(v15 + 128) updateNFCDefaultForCA];
    [v53[421] postAnalyticsGeneralTransactionStatistics];
    if (HIDWORD(v83) && v27 && *(v15 + 392))
    {
      sub_10022E960(NFDailyStatisticsCALogger, HIDWORD(v83), v73, v29, v74);
    }
  }

  [v16[421] postDailyTagStatistics];
}

void sub_1000E2CD4(void **a1)
{
  if (a1)
  {
    v56 = 0;
    v2 = sub_10009DEA8(a1[48], &v56);
    dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
    Logger = NFLogGetLogger();
    v4 = Logger;
    if (v2)
    {
      if (Logger)
      {
        Class = object_getClass(a1);
        isMetaClass = class_isMetaClass(Class);
        ClassName = object_getClassName(a1);
        Name = sel_getName("_logSEAttacks");
        v7 = 45;
        if (isMetaClass)
        {
          v7 = 43;
        }

        v4(3, "%c[%{public}s %{public}s]:%i Failed to get AC log presence : %@", v7, ClassName, Name, 8386, v2);
      }

      dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
      v8 = NFSharedLogGetLogger();
      if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
      {
        v9 = object_getClass(a1);
        if (class_isMetaClass(v9))
        {
          v10 = 43;
        }

        else
        {
          v10 = 45;
        }

        v11 = object_getClassName(a1);
        v12 = sel_getName("_logSEAttacks");
        *buf = 67110146;
        v60 = v10;
        v61 = 2082;
        v62 = v11;
        v63 = 2082;
        v64 = v12;
        v65 = 1024;
        v66 = 8386;
        v67 = 2112;
        v68 = v2;
        _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_ERROR, "%c[%{public}s %{public}s]:%i Failed to get AC log presence : %@", buf, 0x2Cu);
      }
    }

    else
    {
      if (Logger)
      {
        v13 = object_getClass(a1);
        v14 = class_isMetaClass(v13);
        v15 = object_getClassName(a1);
        v16 = sel_getName("_logSEAttacks");
        if (v56)
        {
          v17 = "";
        }

        else
        {
          v17 = " not";
        }

        v18 = 45;
        if (v14)
        {
          v18 = 43;
        }

        v4(6, "%c[%{public}s %{public}s]:%i AC Log%s present", v18, v15, v16, 8383, v17);
      }

      dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
      v19 = NFSharedLogGetLogger();
      if (os_log_type_enabled(v19, OS_LOG_TYPE_DEFAULT))
      {
        v20 = object_getClass(a1);
        if (class_isMetaClass(v20))
        {
          v21 = 43;
        }

        else
        {
          v21 = 45;
        }

        v22 = object_getClassName(a1);
        v23 = sel_getName("_logSEAttacks");
        if (v56)
        {
          v24 = "";
        }

        else
        {
          v24 = " not";
        }

        *buf = 67110146;
        v60 = v21;
        v61 = 2082;
        v62 = v22;
        v63 = 2082;
        v64 = v23;
        v65 = 1024;
        v66 = 8383;
        v67 = 2080;
        v68 = v24;
        _os_log_impl(&_mh_execute_header, v19, OS_LOG_TYPE_DEFAULT, "%c[%{public}s %{public}s]:%i AC Log%s present", buf, 0x2Cu);
      }

      v57 = @"hasAttackLogs";
      v25 = &__kCFBooleanFalse;
      if (v56)
      {
        v25 = &__kCFBooleanTrue;
      }

      v58 = v25;
      v8 = [NSDictionary dictionaryWithObjects:&v58 forKeys:&v57 count:1];
      [NFGeneralStatisticsCALogger updateGeneralDeviceStatistic:v8];
    }

    v26 = a1[48];
    v55 = v2;
    v27 = sub_10009D0D0(v26, &v55);
    v28 = v55;

    dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
    v29 = NFLogGetLogger();
    v30 = v29;
    if (v28)
    {
      if (v29)
      {
        v31 = object_getClass(a1);
        v32 = class_isMetaClass(v31);
        v50 = object_getClassName(a1);
        v53 = sel_getName("_logSEAttacks");
        v33 = 45;
        if (v32)
        {
          v33 = 43;
        }

        v30(3, "%c[%{public}s %{public}s]:%i Failed to get AC log : %@", v33, v50, v53, 8392, v28);
      }

      dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
      v34 = NFSharedLogGetLogger();
      if (!os_log_type_enabled(v34, OS_LOG_TYPE_ERROR))
      {
        goto LABEL_50;
      }

      v35 = object_getClass(a1);
      if (class_isMetaClass(v35))
      {
        v36 = 43;
      }

      else
      {
        v36 = 45;
      }

      v37 = object_getClassName(a1);
      v38 = sel_getName("_logSEAttacks");
      *buf = 67110146;
      v60 = v36;
      v61 = 2082;
      v62 = v37;
      v63 = 2082;
      v64 = v38;
      v65 = 1024;
      v66 = 8392;
      v67 = 2112;
      v68 = v28;
      v39 = "%c[%{public}s %{public}s]:%i Failed to get AC log : %@";
      v40 = v34;
      v41 = OS_LOG_TYPE_ERROR;
    }

    else
    {
      if (v29)
      {
        v42 = object_getClass(a1);
        v43 = class_isMetaClass(v42);
        v51 = object_getClassName(a1);
        v54 = sel_getName("_logSEAttacks");
        v44 = 45;
        if (v43)
        {
          v44 = 43;
        }

        v30(6, "%c[%{public}s %{public}s]:%i AC Log : %{public}@", v44, v51, v54, 8390, v27);
      }

      dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
      v34 = NFSharedLogGetLogger();
      if (!os_log_type_enabled(v34, OS_LOG_TYPE_DEFAULT))
      {
        goto LABEL_50;
      }

      v45 = object_getClass(a1);
      if (class_isMetaClass(v45))
      {
        v46 = 43;
      }

      else
      {
        v46 = 45;
      }

      v47 = object_getClassName(a1);
      v48 = sel_getName("_logSEAttacks");
      *buf = 67110146;
      v60 = v46;
      v61 = 2082;
      v62 = v47;
      v63 = 2082;
      v64 = v48;
      v65 = 1024;
      v66 = 8390;
      v67 = 2114;
      v68 = v27;
      v39 = "%c[%{public}s %{public}s]:%i AC Log : %{public}@";
      v40 = v34;
      v41 = OS_LOG_TYPE_DEFAULT;
    }

    _os_log_impl(&_mh_execute_header, v40, v41, v39, buf, 0x2Cu);
LABEL_50:
  }
}

void sub_1000E3290(void *a1, void *a2)
{
  v3 = a2;
  if (a1)
  {
    if (NFProductIsVM())
    {
      sub_1000E3608(a1, 3);
    }

    else
    {
      v4 = sub_10021A4A0(a1[47], v3, 0);
      v5 = a1[47];
      if (v5)
      {
        v6 = *(v5 + 256);
      }

      else
      {
        v6 = 0;
      }

      sub_1000E3608(a1, v6);
      if (v4)
      {
        dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
        Logger = NFLogGetLogger();
        if (Logger)
        {
          v8 = Logger;
          Class = object_getClass(a1);
          isMetaClass = class_isMetaClass(Class);
          ClassName = object_getClassName(a1);
          Name = sel_getName("_bootHardwareForSession:");
          v12 = 45;
          if (isMetaClass)
          {
            v12 = 43;
          }

          v8(4, "%c[%{public}s %{public}s]:%i Failed to open session : %@. State is %lu", v12, ClassName, Name, 1012, v4, v6);
        }

        dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
        v13 = NFSharedLogGetLogger();
        if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
        {
          v14 = object_getClass(a1);
          if (class_isMetaClass(v14))
          {
            v15 = 43;
          }

          else
          {
            v15 = 45;
          }

          *buf = 67110402;
          v29 = v15;
          v30 = 2082;
          v31 = object_getClassName(a1);
          v32 = 2082;
          v33 = sel_getName("_bootHardwareForSession:");
          v34 = 1024;
          v35 = 1012;
          v36 = 2112;
          v37 = v4;
          v38 = 2048;
          v39 = v6;
          _os_log_impl(&_mh_execute_header, v13, OS_LOG_TYPE_ERROR, "%c[%{public}s %{public}s]:%i Failed to open session : %@. State is %lu", buf, 0x36u);
        }
      }

      else
      {
        v16 = sub_10021A4A0(a1[47], @"Check RF Session Allowed", 1uLL);
        if (!v16)
        {
          sub_10021CC94(a1[47], @"Check RF Session Allowed");
          goto LABEL_29;
        }

        v4 = v16;
        dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
        v17 = NFLogGetLogger();
        if (v17)
        {
          v18 = v17;
          v19 = object_getClass(a1);
          v20 = class_isMetaClass(v19);
          v25 = object_getClassName(a1);
          v27 = sel_getName("_bootHardwareForSession:");
          v21 = 45;
          if (v20)
          {
            v21 = 43;
          }

          v18(3, "%c[%{public}s %{public}s]:%i RF sessions NOT allowed : %@", v21, v25, v27, 1016, v4);
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

          *buf = 67110146;
          v29 = v24;
          v30 = 2082;
          v31 = object_getClassName(a1);
          v32 = 2082;
          v33 = sel_getName("_bootHardwareForSession:");
          v34 = 1024;
          v35 = 1016;
          v36 = 2112;
          v37 = v4;
          _os_log_impl(&_mh_execute_header, v22, OS_LOG_TYPE_ERROR, "%c[%{public}s %{public}s]:%i RF sessions NOT allowed : %@", buf, 0x2Cu);
        }
      }
    }
  }

LABEL_29:
}

void sub_1000E3608(void *a1, uint64_t a2)
{
  v3 = a1;
  objc_sync_enter(v3);
  if (v3[36] != a2)
  {
    dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
    Logger = NFLogGetLogger();
    if (Logger)
    {
      v5 = Logger;
      Class = object_getClass(v3);
      if (class_isMetaClass(Class))
      {
        v7 = 43;
      }

      else
      {
        v7 = 45;
      }

      ClassName = object_getClassName(v3);
      Name = sel_getName("_updateHardwareState:");
      v10 = v3[36] - 1;
      if (v10 > 3)
      {
        v11 = @"Unknown";
      }

      else
      {
        v11 = *(&off_100318DA8 + v10);
      }

      if ((a2 - 1) > 3)
      {
        v12 = @"Unknown";
      }

      else
      {
        v12 = *(&off_100318DA8 + a2 - 1);
      }

      v5(6, "%c[%{public}s %{public}s]:%i Hardware state %@ -> %@", v7, ClassName, Name, 1722, v11, v12);
    }

    dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
    v13 = NFSharedLogGetLogger();
    if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
    {
      v14 = object_getClass(v3);
      if (class_isMetaClass(v14))
      {
        v15 = 43;
      }

      else
      {
        v15 = 45;
      }

      v16 = object_getClassName(v3);
      v17 = sel_getName("_updateHardwareState:");
      v18 = v3[36] - 1;
      if (v18 > 3)
      {
        v19 = @"Unknown";
      }

      else
      {
        v19 = *(&off_100318DA8 + v18);
      }

      if ((a2 - 1) > 3)
      {
        v20 = @"Unknown";
      }

      else
      {
        v20 = *(&off_100318DA8 + a2 - 1);
      }

      *buf = 67110402;
      v22 = v15;
      v23 = 2082;
      v24 = v16;
      v25 = 2082;
      v26 = v17;
      v27 = 1024;
      v28 = 1722;
      v29 = 2112;
      v30 = v19;
      v31 = 2112;
      v32 = v20;
      _os_log_impl(&_mh_execute_header, v13, OS_LOG_TYPE_DEFAULT, "%c[%{public}s %{public}s]:%i Hardware state %@ -> %@", buf, 0x36u);
    }

    v3[36] = a2;
  }

  objc_sync_exit(v3);
}

void sub_1000E3860(uint64_t a1)
{
  v2 = _os_activity_create(&_mh_execute_header, "Lock state changed", &_os_activity_current, OS_ACTIVITY_FLAG_IF_NONE_PRESENT);
  state = 0;
  *state_8 = 0;
  os_activity_scope_enter(v2, &state);
  os_activity_scope_leave(&state);

  v3 = *(a1 + 32);
  if (v3)
  {
    dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
    Logger = NFLogGetLogger();
    if (Logger)
    {
      v5 = Logger;
      Class = object_getClass(v3);
      isMetaClass = class_isMetaClass(Class);
      ClassName = object_getClassName(v3);
      Name = sel_getName("lockStateChanged");
      v9 = 45;
      if (isMetaClass)
      {
        v9 = 43;
      }

      v5(6, "%c[%{public}s %{public}s]:%i ", v9, ClassName, Name, 2784);
    }

    dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
    v10 = NFSharedLogGetLogger();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
    {
      v11 = object_getClass(v3);
      if (class_isMetaClass(v11))
      {
        v12 = 43;
      }

      else
      {
        v12 = 45;
      }

      v13 = object_getClassName(v3);
      v14 = sel_getName("lockStateChanged");
      LODWORD(state) = 67109890;
      HIDWORD(state) = v12;
      *state_8 = 2082;
      *&state_8[2] = v13;
      *&state_8[10] = 2082;
      *&state_8[12] = v14;
      *&state_8[20] = 1024;
      *&state_8[22] = 2784;
      _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEFAULT, "%c[%{public}s %{public}s]:%i ", &state, 0x22u);
    }

    v15 = sub_100207630(*(v3 + 96));
    v16 = sub_1000030C8(*(v3 + 96));
    v17 = sub_100003110(*(v3 + 96));
    dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
    v18 = NFLogGetLogger();
    if (v18)
    {
      v19 = v18;
      v20 = object_getClass(v3);
      v21 = class_isMetaClass(v20);
      v54 = object_getClassName(v3);
      v57 = sel_getName("lockStateChanged");
      v22 = 43;
      if (!v21)
      {
        v22 = 45;
      }

      v19(6, "%c[%{public}s %{public}s]:%i isLocked: %d, hasBeenUnLocked: %d, hasBeenSEUnlocked: %d", v22, v54, v57, 2794, v15, v16, v17);
    }

    dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
    v23 = NFSharedLogGetLogger();
    if (os_log_type_enabled(v23, OS_LOG_TYPE_DEFAULT))
    {
      v24 = object_getClass(v3);
      if (class_isMetaClass(v24))
      {
        v25 = 43;
      }

      else
      {
        v25 = 45;
      }

      v26 = object_getClassName(v3);
      v27 = sel_getName("lockStateChanged");
      LODWORD(state) = 67110658;
      HIDWORD(state) = v25;
      *state_8 = 2082;
      *&state_8[2] = v26;
      *&state_8[10] = 2082;
      *&state_8[12] = v27;
      *&state_8[20] = 1024;
      *&state_8[22] = 2794;
      *&state_8[26] = 1024;
      *&state_8[28] = v15;
      *&state_8[32] = 1024;
      *&state_8[34] = v16;
      v64 = 1024;
      v65 = v17;
      _os_log_impl(&_mh_execute_header, v23, OS_LOG_TYPE_DEFAULT, "%c[%{public}s %{public}s]:%i isLocked: %d, hasBeenUnLocked: %d, hasBeenSEUnlocked: %d", &state, 0x34u);
    }

    if (v17)
    {
      v28 = sub_100210FEC(_NFFailForwardCoordinator);
      sub_100213C7C(v28);
    }

    if ((v15 & 1) == 0)
    {
      objc_opt_self();
      if ((byte_10035DB90 & 1) == 0)
      {
        if (sub_10015C898(*(v3 + 384)))
        {
          v61 = 0;
          v29 = sub_100229BB0(NFSSEWrapper, &v61);
          v30 = v61;
          if (v29)
          {
            sub_1000E66DC(v3, 0);
          }

          else
          {
            dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
            v31 = NFLogGetLogger();
            if (v31)
            {
              v32 = v31;
              v33 = object_getClass(v3);
              v34 = class_isMetaClass(v33);
              v55 = object_getClassName(v3);
              v58 = sel_getName("lockStateChanged");
              v35 = 45;
              if (v34)
              {
                v35 = 43;
              }

              v32(6, "%c[%{public}s %{public}s]:%i SSE does not support entanglement : %{public}@", v35, v55, v58, 2808, v30);
            }

            dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
            v36 = NFSharedLogGetLogger();
            if (os_log_type_enabled(v36, OS_LOG_TYPE_DEFAULT))
            {
              v37 = object_getClass(v3);
              if (class_isMetaClass(v37))
              {
                v38 = 43;
              }

              else
              {
                v38 = 45;
              }

              v39 = object_getClassName(v3);
              v40 = sel_getName("lockStateChanged");
              LODWORD(state) = 67110146;
              HIDWORD(state) = v38;
              *state_8 = 2082;
              *&state_8[2] = v39;
              *&state_8[10] = 2082;
              *&state_8[12] = v40;
              *&state_8[20] = 1024;
              *&state_8[22] = 2808;
              *&state_8[26] = 2114;
              *&state_8[28] = v30;
              _os_log_impl(&_mh_execute_header, v36, OS_LOG_TYPE_DEFAULT, "%c[%{public}s %{public}s]:%i SSE does not support entanglement : %{public}@", &state, 0x2Cu);
            }
          }
        }
      }
    }

    if (v16)
    {
      if ((NFProductIsMac() & 1) == 0)
      {
        sub_1000EA4CC(v3, 0);
      }

      if ((v17 & 1) == 0)
      {
        NFProductIsWatch();
LABEL_57:
        v53 = *(v3 + 240);
        block[0] = _NSConcreteStackBlock;
        block[1] = 3221225472;
        block[2] = sub_1000F0368;
        block[3] = &unk_100315F30;
        block[4] = v3;
        dispatch_async(v53, block);
        return;
      }

      if (*(v3 + 345) == 1)
      {
        *(v3 + 345) = 0;
        dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
        v41 = NFLogGetLogger();
        if (v41)
        {
          v42 = v41;
          v43 = object_getClass(v3);
          v44 = class_isMetaClass(v43);
          v45 = object_getClassName(v3);
          v59 = sel_getName("lockStateChanged");
          v46 = 45;
          if (v44)
          {
            v46 = 43;
          }

          v42(6, "%c[%{public}s %{public}s]:%i Ending hardware pre-warm", v46, v45, v59, 2841);
        }

        dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
        v47 = NFSharedLogGetLogger();
        if (os_log_type_enabled(v47, OS_LOG_TYPE_DEFAULT))
        {
          v48 = object_getClass(v3);
          if (class_isMetaClass(v48))
          {
            v49 = 43;
          }

          else
          {
            v49 = 45;
          }

          v50 = object_getClassName(v3);
          v51 = sel_getName("lockStateChanged");
          LODWORD(state) = 67109890;
          HIDWORD(state) = v49;
          *state_8 = 2082;
          *&state_8[2] = v50;
          *&state_8[10] = 2082;
          *&state_8[12] = v51;
          *&state_8[20] = 1024;
          *&state_8[22] = 2841;
          _os_log_impl(&_mh_execute_header, v47, OS_LOG_TYPE_DEFAULT, "%c[%{public}s %{public}s]:%i Ending hardware pre-warm", &state, 0x22u);
        }

        sub_10021CC94(*(v3 + 376), @"Prewarm");
      }
    }

    if ((NFProductIsWatch() & 1) == 0 && ((v17 ^ 1) & 1) == 0)
    {
      v52 = *(v3 + 240);
      state = _NSConcreteStackBlock;
      *state_8 = 3221225472;
      *&state_8[8] = sub_1000F025C;
      *&state_8[16] = &unk_100315F30;
      *&state_8[24] = v3;
      dispatch_async(v52, &state);
    }

    goto LABEL_57;
  }
}

uint64_t sub_1000E3F30(uint64_t result)
{
  if (!result)
  {
    return result;
  }

  v1 = result;
  if (sub_100003384(result) == 2)
  {
    v2 = sub_10002F3E4([NFExpressModeManager alloc], v1, *(v1 + 376), *(v1 + 8), *(v1 + 240));
    v3 = *(v1 + 24);
    *(v1 + 24) = v2;

    v4 = *(v1 + 24);
    if (v4 && (*(v4 + 152) == 1 || *(v4 + 179) == 1))
    {
      v5 = sub_10021A4A0(*(v1 + 376), @"Enable Express", 1uLL);
      if (v5)
      {
LABEL_37:
        v12 = 0;
        goto LABEL_38;
      }

      if ([*(v1 + 392) hasLPEMSupport] && sub_1001A9FAC(*(v1 + 376), 1))
      {
        sub_1001AA264(*(v1 + 376), 1);
      }
    }

    else if ([*(v1 + 392) hasLPEMSupport])
    {
      v13 = sub_1002261A0(NFHeadlessModeController);
      if (v13)
      {
        v14 = v13[4];

        if (v14)
        {
          if (v14)
          {
            dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
            Logger = NFLogGetLogger();
            if (Logger)
            {
              v16 = Logger;
              Class = object_getClass(v1);
              isMetaClass = class_isMetaClass(Class);
              ClassName = object_getClassName(v1);
              Name = sel_getName("_initializeExpressMode");
              v20 = 45;
              if (isMetaClass)
              {
                v20 = 43;
              }

              v16(3, "%c[%{public}s %{public}s]:%i ERROR : NFC headless mode is enabled but express is not.", v20, ClassName, Name, 1171);
            }

            dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
            v21 = NFSharedLogGetLogger();
            if (os_log_type_enabled(v21, OS_LOG_TYPE_ERROR))
            {
              v22 = object_getClass(v1);
              if (class_isMetaClass(v22))
              {
                v23 = 43;
              }

              else
              {
                v23 = 45;
              }

              *buf = 67109890;
              *&buf[4] = v23;
              *v42 = 2082;
              *&v42[2] = object_getClassName(v1);
              *&v42[10] = 2082;
              *&v42[12] = sel_getName("_initializeExpressMode");
              *&v42[20] = 1024;
              *&v42[22] = 1171;
              _os_log_impl(&_mh_execute_header, v21, OS_LOG_TYPE_ERROR, "%c[%{public}s %{public}s]:%i ERROR : NFC headless mode is enabled but express is not.", buf, 0x22u);
            }
          }

          if (v14 != 1)
          {
            dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
            v24 = NFLogGetLogger();
            if (v24)
            {
              v25 = v24;
              v26 = object_getClass(v1);
              v27 = class_isMetaClass(v26);
              v28 = object_getClassName(v1);
              v40 = sel_getName("_initializeExpressMode");
              v29 = 45;
              if (v27)
              {
                v29 = 43;
              }

              v25(6, "%c[%{public}s %{public}s]:%i Headless mode is enabled but express is not. Taking session", v29, v28, v40, 1176);
            }

            dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
            v30 = NFSharedLogGetLogger();
            if (os_log_type_enabled(v30, OS_LOG_TYPE_DEFAULT))
            {
              v31 = object_getClass(v1);
              if (class_isMetaClass(v31))
              {
                v32 = 43;
              }

              else
              {
                v32 = 45;
              }

              v33 = object_getClassName(v1);
              v34 = sel_getName("_initializeExpressMode");
              *buf = 67109890;
              *&buf[4] = v32;
              *v42 = 2082;
              *&v42[2] = v33;
              *&v42[10] = 2082;
              *&v42[12] = v34;
              *&v42[20] = 1024;
              *&v42[22] = 1176;
              _os_log_impl(&_mh_execute_header, v30, OS_LOG_TYPE_DEFAULT, "%c[%{public}s %{public}s]:%i Headless mode is enabled but express is not. Taking session", buf, 0x22u);
            }

            sub_10019C0A0(v1);
          }
        }
      }
    }

    v5 = 0;
    goto LABEL_37;
  }

  v6 = [NSError alloc];
  v7 = [NSString stringWithUTF8String:"nfcd"];
  v43[0] = NSLocalizedDescriptionKey;
  v8 = [NSString stringWithUTF8String:"Unresponsive hardware"];
  *buf = v8;
  *v42 = &off_1003313F8;
  v43[1] = @"Line";
  v43[2] = @"Method";
  v9 = [[NSString alloc] initWithFormat:@"%s", sel_getName("_initializeExpressMode")];
  *&v42[8] = v9;
  v43[3] = NSDebugDescriptionErrorKey;
  v10 = [[NSString alloc] initWithFormat:@"%s:%d", sel_getName("_initializeExpressMode"), 1147];
  *&v42[16] = v10;
  v11 = [NSDictionary dictionaryWithObjects:buf forKeys:v43 count:4];
  v12 = [v6 initWithDomain:v7 code:58 userInfo:v11];

  v5 = 0;
LABEL_38:

  sub_1001E121C(*(v1 + 376), 0, 3u);
  v35 = [v1 defaultRoutingConfig:1];
  v36 = [v1 setRoutingConfig:v35];

  result = NFProductIsDevBoard();
  if ((result & 1) == 0)
  {
    result = NFProductIsNED();
    if ((result & 1) == 0 && !*(v1 + 416))
    {
      v37 = [[NFBackgroundTagReadingManager alloc] initWithQueue:*(v1 + 240) driverWrapper:*(v1 + 376)];
      v38 = *(v1 + 416);
      *(v1 + 416) = v37;

      return _objc_release_x1(v37, v38);
    }
  }

  return result;
}

id *sub_1000E44B8(id *a1)
{
  v1 = a1;
  if (a1)
  {
    v294 = objc_opt_new();
    v2 = [[NSUserDefaults alloc] initWithSuiteName:@"com.apple.stockholm"];
    [v2 synchronize];
    if ([v2 BOOLForKey:@"LogNCI"])
    {
      v3 = 132;
    }

    else
    {
      v3 = 128;
    }

    if ([v2 BOOLForKey:@"LogAPI"])
    {
      v3 |= 8uLL;
    }

    if ([v2 BOOLForKey:@"LogAPDU"])
    {
      v3 |= 0x10uLL;
    }

    if ([v2 BOOLForKey:@"LogTransactionDetails"])
    {
      v3 |= 0x200uLL;
    }

    if ([v2 BOOLForKey:@"LogExpressMode"])
    {
      v3 |= 0x400uLL;
    }

    if ([v2 BOOLForKey:@"LogRSSI"])
    {
      v3 |= 0x4000uLL;
    }

    if ([v2 BOOLForKey:@"LogMW"])
    {
      v3 |= 0x40000000uLL;
    }

    if ([v2 BOOLForKey:@"DisableSEUptime"])
    {
      v3 |= 0x8000uLL;
    }

    if ([v2 BOOLForKey:@"SinglePollExpress"])
    {
      v3 |= 0x40000uLL;
    }

    if ([v2 BOOLForKey:@"SimulateRestoreOS"])
    {
      v3 |= 0x200000uLL;
    }

    if ([v2 BOOLForKey:@"LogL1ExtStandby"])
    {
      v3 |= 0x400000uLL;
    }

    if ([v2 BOOLForKey:@"ForceVenReset"])
    {
      v3 |= 0x4000000uLL;
    }

    v4 = [v2 integerForKey:@"LogRF"];
    v5 = v3 | 1;
    v6 = v3 | 2;
    if (v4 != 1)
    {
      v6 = v3;
    }

    if (v4 != 2)
    {
      v5 = v6;
    }

    if (v4 == 4)
    {
      v7 = v3 | 3;
    }

    else
    {
      v7 = v5;
    }

    if ([v2 integerForKey:@"LogLPCD"])
    {
      v7 |= 0x2000uLL;
    }

    if ([v2 integerForKey:@"LogLPCDAssist"])
    {
      v7 |= 0x100000uLL;
    }

    v8 = [v2 integerForKey:@"CETech"];
    v9 = v7 | 0x140;
    v10 = v7 | 0x160;
    if (v8 != 7)
    {
      v10 = v7;
    }

    if (v8 != 6)
    {
      v9 = v10;
    }

    v11 = v7 | 0x60;
    v12 = v7 | 0x120;
    if (v8 != 5)
    {
      v12 = v7;
    }

    if (v8 != 4)
    {
      v11 = v12;
    }

    if (v8 <= 5)
    {
      v9 = v11;
    }

    v13 = v7 | 0x20;
    v14 = v7 | 0x40;
    v15 = v7 | 0x100;
    if (v8 != 3)
    {
      v15 = v7;
    }

    if (v8 != 2)
    {
      v14 = v15;
    }

    if (v8 != 1)
    {
      v13 = v14;
    }

    if (v8 <= 3)
    {
      v16 = v13;
    }

    else
    {
      v16 = v9;
    }

    v17 = [v2 objectForKey:@"lpcdConfigOverride"];
    v293 = v17;
    if (v17)
    {
      v18 = v17;
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        v19 = [v18 BOOLValue];
        v20 = 0x10000;
        if (v19)
        {
          v20 = 4096;
        }

        v16 |= v20;
      }
    }

    if ([v2 BOOLForKey:@"lpcdAssistDisabled"])
    {
      dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
      Logger = NFLogGetLogger();
      if (Logger)
      {
        v22 = Logger;
        Class = object_getClass(v1);
        isMetaClass = class_isMetaClass(Class);
        ClassName = object_getClassName(v1);
        Name = sel_getName("_readDriverSettings");
        v26 = 45;
        if (isMetaClass)
        {
          v26 = 43;
        }

        v22(6, "%c[%{public}s %{public}s]:%i disabling LPCD assist with defaults", v26, ClassName, Name, 9053);
      }

      dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
      v27 = NFSharedLogGetLogger();
      if (os_log_type_enabled(v27, OS_LOG_TYPE_DEFAULT))
      {
        v28 = object_getClass(v1);
        if (class_isMetaClass(v28))
        {
          v29 = 43;
        }

        else
        {
          v29 = 45;
        }

        *buf = 67109890;
        v296 = v29;
        v297 = 2082;
        v298 = object_getClassName(v1);
        v299 = 2082;
        v300 = sel_getName("_readDriverSettings");
        v301 = 1024;
        v302 = 9053;
        _os_log_impl(&_mh_execute_header, v27, OS_LOG_TYPE_DEFAULT, "%c[%{public}s %{public}s]:%i disabling LPCD assist with defaults", buf, 0x22u);
      }

      v16 |= 0x2000000uLL;
    }

    if ([v2 BOOLForKey:@"lpcdAssistWithECP"])
    {
      dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
      v30 = NFLogGetLogger();
      if (v30)
      {
        v31 = v30;
        v32 = object_getClass(v1);
        v33 = class_isMetaClass(v32);
        v34 = object_getClassName(v1);
        v276 = sel_getName("_readDriverSettings");
        v35 = 45;
        if (v33)
        {
          v35 = 43;
        }

        v31(6, "%c[%{public}s %{public}s]:%i Enabling LPCD assist w/ECP", v35, v34, v276, 9058);
      }

      dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
      v36 = NFSharedLogGetLogger();
      if (os_log_type_enabled(v36, OS_LOG_TYPE_DEFAULT))
      {
        v37 = object_getClass(v1);
        if (class_isMetaClass(v37))
        {
          v38 = 43;
        }

        else
        {
          v38 = 45;
        }

        v39 = object_getClassName(v1);
        v40 = sel_getName("_readDriverSettings");
        *buf = 67109890;
        v296 = v38;
        v297 = 2082;
        v298 = v39;
        v299 = 2082;
        v300 = v40;
        v301 = 1024;
        v302 = 9058;
        _os_log_impl(&_mh_execute_header, v36, OS_LOG_TYPE_DEFAULT, "%c[%{public}s %{public}s]:%i Enabling LPCD assist w/ECP", buf, 0x22u);
      }

      v16 |= 0x80000000uLL;
    }

    if ([v2 BOOLForKey:@"DisableLPCDCardRemoval"])
    {
      dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
      v41 = NFLogGetLogger();
      if (v41)
      {
        v42 = v41;
        v43 = object_getClass(v1);
        v44 = class_isMetaClass(v43);
        v45 = object_getClassName(v1);
        v277 = sel_getName("_readDriverSettings");
        v46 = 45;
        if (v44)
        {
          v46 = 43;
        }

        v42(6, "%c[%{public}s %{public}s]:%i Disable LPCD card removal with defaults", v46, v45, v277, 9063);
      }

      dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
      v47 = NFSharedLogGetLogger();
      if (os_log_type_enabled(v47, OS_LOG_TYPE_DEFAULT))
      {
        v48 = object_getClass(v1);
        if (class_isMetaClass(v48))
        {
          v49 = 43;
        }

        else
        {
          v49 = 45;
        }

        v50 = object_getClassName(v1);
        v51 = sel_getName("_readDriverSettings");
        *buf = 67109890;
        v296 = v49;
        v297 = 2082;
        v298 = v50;
        v299 = 2082;
        v300 = v51;
        v301 = 1024;
        v302 = 9063;
        _os_log_impl(&_mh_execute_header, v47, OS_LOG_TYPE_DEFAULT, "%c[%{public}s %{public}s]:%i Disable LPCD card removal with defaults", buf, 0x22u);
      }

      v16 |= 0x8000000uLL;
    }

    if ([v2 BOOLForKey:@"WriteCounters"])
    {
      dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
      v52 = NFLogGetLogger();
      if (v52)
      {
        v53 = v52;
        v54 = object_getClass(v1);
        v55 = class_isMetaClass(v54);
        v56 = object_getClassName(v1);
        v278 = sel_getName("_readDriverSettings");
        v57 = 45;
        if (v55)
        {
          v57 = 43;
        }

        v53(6, "%c[%{public}s %{public}s]:%i Enabling write counters", v57, v56, v278, 9068);
      }

      dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
      v58 = NFSharedLogGetLogger();
      if (os_log_type_enabled(v58, OS_LOG_TYPE_DEFAULT))
      {
        v59 = object_getClass(v1);
        if (class_isMetaClass(v59))
        {
          v60 = 43;
        }

        else
        {
          v60 = 45;
        }

        v61 = object_getClassName(v1);
        v62 = sel_getName("_readDriverSettings");
        *buf = 67109890;
        v296 = v60;
        v297 = 2082;
        v298 = v61;
        v299 = 2082;
        v300 = v62;
        v301 = 1024;
        v302 = 9068;
        _os_log_impl(&_mh_execute_header, v58, OS_LOG_TYPE_DEFAULT, "%c[%{public}s %{public}s]:%i Enabling write counters", buf, 0x22u);
      }

      v16 |= 0x10000000uLL;
    }

    if ([v2 BOOLForKey:@"forceFieldDetectOff"])
    {
      dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
      v63 = NFLogGetLogger();
      if (v63)
      {
        v64 = v63;
        v65 = object_getClass(v1);
        v66 = class_isMetaClass(v65);
        v67 = object_getClassName(v1);
        v279 = sel_getName("_readDriverSettings");
        v68 = 45;
        if (v66)
        {
          v68 = 43;
        }

        v64(6, "%c[%{public}s %{public}s]:%i Force disabling FD", v68, v67, v279, 9073);
      }

      dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
      v69 = NFSharedLogGetLogger();
      if (os_log_type_enabled(v69, OS_LOG_TYPE_DEFAULT))
      {
        v70 = object_getClass(v1);
        if (class_isMetaClass(v70))
        {
          v71 = 43;
        }

        else
        {
          v71 = 45;
        }

        v72 = object_getClassName(v1);
        v73 = sel_getName("_readDriverSettings");
        *buf = 67109890;
        v296 = v71;
        v297 = 2082;
        v298 = v72;
        v299 = 2082;
        v300 = v73;
        v301 = 1024;
        v302 = 9073;
        _os_log_impl(&_mh_execute_header, v69, OS_LOG_TYPE_DEFAULT, "%c[%{public}s %{public}s]:%i Force disabling FD", buf, 0x22u);
      }

      v16 |= 0x20000000uLL;
    }

    if ([v2 BOOLForKey:@"DisableTypeBSuppression"])
    {
      dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
      v74 = NFLogGetLogger();
      if (v74)
      {
        v75 = v74;
        v76 = object_getClass(v1);
        v77 = class_isMetaClass(v76);
        v78 = object_getClassName(v1);
        v280 = sel_getName("_readDriverSettings");
        v79 = 45;
        if (v77)
        {
          v79 = 43;
        }

        v75(6, "%c[%{public}s %{public}s]:%i Force disabling Type B Suppression", v79, v78, v280, 9078);
      }

      dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
      v80 = NFSharedLogGetLogger();
      if (os_log_type_enabled(v80, OS_LOG_TYPE_DEFAULT))
      {
        v81 = object_getClass(v1);
        if (class_isMetaClass(v81))
        {
          v82 = 43;
        }

        else
        {
          v82 = 45;
        }

        v83 = object_getClassName(v1);
        v84 = sel_getName("_readDriverSettings");
        *buf = 67109890;
        v296 = v82;
        v297 = 2082;
        v298 = v83;
        v299 = 2082;
        v300 = v84;
        v301 = 1024;
        v302 = 9078;
        _os_log_impl(&_mh_execute_header, v80, OS_LOG_TYPE_DEFAULT, "%c[%{public}s %{public}s]:%i Force disabling Type B Suppression", buf, 0x22u);
      }

      v16 |= &_mh_execute_header;
    }

    if ([v2 BOOLForKey:@"coreDumpOnSPMIError"])
    {
      v16 |= 0x4000000000uLL;
    }

    if ([v2 BOOLForKey:@"disableStandby"])
    {
      v16 |= 0x800uLL;
    }

    if ([v2 BOOLForKey:@"disableLPEMFlashWrites"])
    {
      dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
      v85 = NFLogGetLogger();
      if (v85)
      {
        v86 = v85;
        v87 = object_getClass(v1);
        v88 = class_isMetaClass(v87);
        v89 = object_getClassName(v1);
        v281 = sel_getName("_readDriverSettings");
        v90 = 45;
        if (v88)
        {
          v90 = 43;
        }

        v86(6, "%c[%{public}s %{public}s]:%i Disabling LPEM flash writes", v90, v89, v281, 9090);
      }

      dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
      v91 = NFSharedLogGetLogger();
      if (os_log_type_enabled(v91, OS_LOG_TYPE_DEFAULT))
      {
        v92 = object_getClass(v1);
        if (class_isMetaClass(v92))
        {
          v93 = 43;
        }

        else
        {
          v93 = 45;
        }

        v94 = object_getClassName(v1);
        v95 = sel_getName("_readDriverSettings");
        *buf = 67109890;
        v296 = v93;
        v297 = 2082;
        v298 = v94;
        v299 = 2082;
        v300 = v95;
        v301 = 1024;
        v302 = 9090;
        _os_log_impl(&_mh_execute_header, v91, OS_LOG_TYPE_DEFAULT, "%c[%{public}s %{public}s]:%i Disabling LPEM flash writes", buf, 0x22u);
      }

      v16 |= 0x2000000000uLL;
    }

    v96 = +[NSUserDefaults standardUserDefaults];
    v97 = [v96 BOOLForKey:@"disableSERMPowerSave"];

    if (v97)
    {
      dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
      v98 = NFLogGetLogger();
      if (v98)
      {
        v99 = v98;
        v100 = object_getClass(v1);
        v101 = class_isMetaClass(v100);
        v102 = object_getClassName(v1);
        v282 = sel_getName("_readDriverSettings");
        v103 = 45;
        if (v101)
        {
          v103 = 43;
        }

        v99(6, "%c[%{public}s %{public}s]:%i Disabling SE reader mode Power save.", v103, v102, v282, 9096);
      }

      dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
      v104 = NFSharedLogGetLogger();
      if (os_log_type_enabled(v104, OS_LOG_TYPE_DEFAULT))
      {
        v105 = object_getClass(v1);
        if (class_isMetaClass(v105))
        {
          v106 = 43;
        }

        else
        {
          v106 = 45;
        }

        v107 = object_getClassName(v1);
        v108 = sel_getName("_readDriverSettings");
        *buf = 67109890;
        v296 = v106;
        v297 = 2082;
        v298 = v107;
        v299 = 2082;
        v300 = v108;
        v301 = 1024;
        v302 = 9096;
        _os_log_impl(&_mh_execute_header, v104, OS_LOG_TYPE_DEFAULT, "%c[%{public}s %{public}s]:%i Disabling SE reader mode Power save.", buf, 0x22u);
      }

      v16 |= 0x200000000uLL;
    }

    v109 = [[NSDictionary alloc] initWithContentsOfFile:@"/Library/Preferences/Logging/Subsystems/com.apple.nfc.plist"];
    if (v109)
    {
      dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
      v110 = NFLogGetLogger();
      if (v110)
      {
        v111 = v110;
        v112 = object_getClass(v1);
        v113 = class_isMetaClass(v112);
        v114 = object_getClassName(v1);
        v283 = sel_getName("_readDriverSettings");
        v115 = 45;
        if (v113)
        {
          v115 = 43;
        }

        v111(6, "%c[%{public}s %{public}s]:%i Loading managed profile settings", v115, v114, v283, 9109);
      }

      dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
      v116 = NFSharedLogGetLogger();
      if (os_log_type_enabled(v116, OS_LOG_TYPE_DEFAULT))
      {
        v117 = object_getClass(v1);
        if (class_isMetaClass(v117))
        {
          v118 = 43;
        }

        else
        {
          v118 = 45;
        }

        v119 = object_getClassName(v1);
        v120 = sel_getName("_readDriverSettings");
        *buf = 67109890;
        v296 = v118;
        v297 = 2082;
        v298 = v119;
        v299 = 2082;
        v300 = v120;
        v301 = 1024;
        v302 = 9109;
        _os_log_impl(&_mh_execute_header, v116, OS_LOG_TYPE_DEFAULT, "%c[%{public}s %{public}s]:%i Loading managed profile settings", buf, 0x22u);
      }

      v121 = [v109 objectForKey:@"LogTransactionDetails"];

      if (v121)
      {
        v122 = [v109 objectForKey:@"LogTransactionDetails"];
        v123 = [v122 BOOLValue];

        dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
        v124 = NFLogGetLogger();
        if (v124)
        {
          v125 = v124;
          v126 = object_getClass(v1);
          v127 = class_isMetaClass(v126);
          v267 = object_getClassName(v1);
          v284 = sel_getName("_readDriverSettings");
          v128 = 45;
          if (v127)
          {
            v128 = 43;
          }

          v125(5, "%c[%{public}s %{public}s]:%i Overriding pref settings for Tx Details with managed profile: %d", v128, v267, v284, 9112, v123);
        }

        dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
        v129 = NFSharedLogGetLogger();
        if (os_log_type_enabled(v129, OS_LOG_TYPE_DEFAULT))
        {
          v130 = object_getClass(v1);
          if (class_isMetaClass(v130))
          {
            v131 = 43;
          }

          else
          {
            v131 = 45;
          }

          v132 = object_getClassName(v1);
          v133 = sel_getName("_readDriverSettings");
          *buf = 67110146;
          v296 = v131;
          v297 = 2082;
          v298 = v132;
          v299 = 2082;
          v300 = v133;
          v301 = 1024;
          v302 = 9112;
          v303 = 1024;
          v304 = v123;
          _os_log_impl(&_mh_execute_header, v129, OS_LOG_TYPE_DEFAULT, "%c[%{public}s %{public}s]:%i Overriding pref settings for Tx Details with managed profile: %d", buf, 0x28u);
        }

        v134 = 512;
        if (!v123)
        {
          v134 = 0;
        }

        v16 = v134 | v16 & 0xFFFFFFFFFFFFFDFFLL;
      }

      v135 = [v109 objectForKey:@"LogAPDU"];

      if (v135)
      {
        v136 = [v109 objectForKey:@"LogAPDU"];
        v137 = [v136 BOOLValue];

        dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
        v138 = NFLogGetLogger();
        if (v138)
        {
          v139 = v138;
          v140 = object_getClass(v1);
          v141 = class_isMetaClass(v140);
          v268 = object_getClassName(v1);
          v285 = sel_getName("_readDriverSettings");
          v142 = 45;
          if (v141)
          {
            v142 = 43;
          }

          v139(5, "%c[%{public}s %{public}s]:%i Overriding pref settings for LogAPDU with managed profile: %d", v142, v268, v285, 9118, v137);
        }

        dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
        v143 = NFSharedLogGetLogger();
        if (os_log_type_enabled(v143, OS_LOG_TYPE_DEFAULT))
        {
          v144 = object_getClass(v1);
          if (class_isMetaClass(v144))
          {
            v145 = 43;
          }

          else
          {
            v145 = 45;
          }

          v146 = object_getClassName(v1);
          v147 = sel_getName("_readDriverSettings");
          *buf = 67110146;
          v296 = v145;
          v297 = 2082;
          v298 = v146;
          v299 = 2082;
          v300 = v147;
          v301 = 1024;
          v302 = 9118;
          v303 = 1024;
          v304 = v137;
          _os_log_impl(&_mh_execute_header, v143, OS_LOG_TYPE_DEFAULT, "%c[%{public}s %{public}s]:%i Overriding pref settings for LogAPDU with managed profile: %d", buf, 0x28u);
        }

        v148 = 16;
        if (!v137)
        {
          v148 = 0;
        }

        v16 = v148 | v16 & 0xFFFFFFFFFFFFFFEFLL;
      }

      v149 = [v109 objectForKey:@"LogAPI"];

      if (v149)
      {
        v150 = [v109 objectForKey:@"LogAPI"];
        v151 = [v150 BOOLValue];

        dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
        v152 = NFLogGetLogger();
        if (v152)
        {
          v153 = v152;
          v154 = object_getClass(v1);
          v155 = class_isMetaClass(v154);
          v269 = object_getClassName(v1);
          v286 = sel_getName("_readDriverSettings");
          v156 = 45;
          if (v155)
          {
            v156 = 43;
          }

          v153(5, "%c[%{public}s %{public}s]:%i Overriding pref settings for LogAPI with managed profile: %d", v156, v269, v286, 9124, v151);
        }

        dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
        v157 = NFSharedLogGetLogger();
        if (os_log_type_enabled(v157, OS_LOG_TYPE_DEFAULT))
        {
          v158 = object_getClass(v1);
          if (class_isMetaClass(v158))
          {
            v159 = 43;
          }

          else
          {
            v159 = 45;
          }

          v160 = object_getClassName(v1);
          v161 = sel_getName("_readDriverSettings");
          *buf = 67110146;
          v296 = v159;
          v297 = 2082;
          v298 = v160;
          v299 = 2082;
          v300 = v161;
          v301 = 1024;
          v302 = 9124;
          v303 = 1024;
          v304 = v151;
          _os_log_impl(&_mh_execute_header, v157, OS_LOG_TYPE_DEFAULT, "%c[%{public}s %{public}s]:%i Overriding pref settings for LogAPI with managed profile: %d", buf, 0x28u);
        }

        v162 = 8;
        if (!v151)
        {
          v162 = 0;
        }

        v16 = v162 | v16 & 0xFFFFFFFFFFFFFFF7;
      }

      v163 = [v109 objectForKey:@"LogExpressMode"];

      if (v163)
      {
        v164 = [v109 objectForKey:@"LogExpressMode"];
        v165 = [v164 BOOLValue];

        dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
        v166 = NFLogGetLogger();
        if (v166)
        {
          v167 = v166;
          v168 = object_getClass(v1);
          v169 = class_isMetaClass(v168);
          v270 = object_getClassName(v1);
          v287 = sel_getName("_readDriverSettings");
          v170 = 45;
          if (v169)
          {
            v170 = 43;
          }

          v167(5, "%c[%{public}s %{public}s]:%i Overriding pref settings for LogExpressMode with managed profile: %d", v170, v270, v287, 9130, v165);
        }

        dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
        v171 = NFSharedLogGetLogger();
        if (os_log_type_enabled(v171, OS_LOG_TYPE_DEFAULT))
        {
          v172 = object_getClass(v1);
          if (class_isMetaClass(v172))
          {
            v173 = 43;
          }

          else
          {
            v173 = 45;
          }

          v174 = object_getClassName(v1);
          v175 = sel_getName("_readDriverSettings");
          *buf = 67110146;
          v296 = v173;
          v297 = 2082;
          v298 = v174;
          v299 = 2082;
          v300 = v175;
          v301 = 1024;
          v302 = 9130;
          v303 = 1024;
          v304 = v165;
          _os_log_impl(&_mh_execute_header, v171, OS_LOG_TYPE_DEFAULT, "%c[%{public}s %{public}s]:%i Overriding pref settings for LogExpressMode with managed profile: %d", buf, 0x28u);
        }

        v176 = 1024;
        if (!v165)
        {
          v176 = 0;
        }

        v16 = v176 | v16 & 0xFFFFFFFFFFFFFBFFLL;
      }

      v177 = [v109 objectForKey:@"LogNCI"];

      if (v177)
      {
        v178 = [v109 objectForKey:@"LogNCI"];
        v179 = [v178 BOOLValue];

        dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
        v180 = NFLogGetLogger();
        if (v180)
        {
          v181 = v180;
          v182 = object_getClass(v1);
          v183 = class_isMetaClass(v182);
          v271 = object_getClassName(v1);
          v288 = sel_getName("_readDriverSettings");
          v184 = 45;
          if (v183)
          {
            v184 = 43;
          }

          v181(5, "%c[%{public}s %{public}s]:%i Overriding pref settings with LogNCI managed profile: %d", v184, v271, v288, 9136, v179);
        }

        dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
        v185 = NFSharedLogGetLogger();
        if (os_log_type_enabled(v185, OS_LOG_TYPE_DEFAULT))
        {
          v186 = object_getClass(v1);
          if (class_isMetaClass(v186))
          {
            v187 = 43;
          }

          else
          {
            v187 = 45;
          }

          v188 = object_getClassName(v1);
          v189 = sel_getName("_readDriverSettings");
          *buf = 67110146;
          v296 = v187;
          v297 = 2082;
          v298 = v188;
          v299 = 2082;
          v300 = v189;
          v301 = 1024;
          v302 = 9136;
          v303 = 1024;
          v304 = v179;
          _os_log_impl(&_mh_execute_header, v185, OS_LOG_TYPE_DEFAULT, "%c[%{public}s %{public}s]:%i Overriding pref settings with LogNCI managed profile: %d", buf, 0x28u);
        }

        v190 = 4;
        if (!v179)
        {
          v190 = 0;
        }

        v16 = v190 | v16 & 0xFFFFFFFFFFFFFFFBLL;
      }

      v191 = [v109 objectForKey:@"SinglePollExpress"];

      if (v191)
      {
        v192 = [v109 objectForKey:@"SinglePollExpress"];
        v193 = [v192 BOOLValue];

        dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
        v194 = NFLogGetLogger();
        if (v194)
        {
          v195 = v194;
          v196 = object_getClass(v1);
          v197 = class_isMetaClass(v196);
          v272 = object_getClassName(v1);
          v289 = sel_getName("_readDriverSettings");
          v198 = 45;
          if (v197)
          {
            v198 = 43;
          }

          v195(5, "%c[%{public}s %{public}s]:%i Overriding pref settings with Force SinglePoll Express managed profile: %d", v198, v272, v289, 9143, v193);
        }

        dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
        v199 = NFSharedLogGetLogger();
        if (os_log_type_enabled(v199, OS_LOG_TYPE_DEFAULT))
        {
          v200 = object_getClass(v1);
          if (class_isMetaClass(v200))
          {
            v201 = 43;
          }

          else
          {
            v201 = 45;
          }

          v202 = object_getClassName(v1);
          v203 = sel_getName("_readDriverSettings");
          *buf = 67110146;
          v296 = v201;
          v297 = 2082;
          v298 = v202;
          v299 = 2082;
          v300 = v203;
          v301 = 1024;
          v302 = 9143;
          v303 = 1024;
          v304 = v193;
          _os_log_impl(&_mh_execute_header, v199, OS_LOG_TYPE_DEFAULT, "%c[%{public}s %{public}s]:%i Overriding pref settings with Force SinglePoll Express managed profile: %d", buf, 0x28u);
        }

        v204 = 0x40000;
        if (!v193)
        {
          v204 = 0;
        }

        v16 = v204 | v16 & 0xFFFFFFFFFFFBFFFFLL;
      }

      v205 = [v109 objectForKey:@"CETech"];

      if (v205)
      {
        v206 = [v109 objectForKey:@"CETech"];
        v207 = [v206 intValue];

        dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
        v208 = NFLogGetLogger();
        if (v208)
        {
          v209 = v208;
          v210 = object_getClass(v1);
          v211 = class_isMetaClass(v210);
          v273 = object_getClassName(v1);
          v290 = sel_getName("_readDriverSettings");
          v212 = 45;
          if (v211)
          {
            v212 = 43;
          }

          v209(5, "%c[%{public}s %{public}s]:%i Overriding pref settings with CE Tech managed profile: 0x%04x", v212, v273, v290, 9150, v207);
        }

        dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
        v213 = NFSharedLogGetLogger();
        if (os_log_type_enabled(v213, OS_LOG_TYPE_DEFAULT))
        {
          v214 = object_getClass(v1);
          if (class_isMetaClass(v214))
          {
            v215 = 43;
          }

          else
          {
            v215 = 45;
          }

          v216 = object_getClassName(v1);
          v217 = sel_getName("_readDriverSettings");
          *buf = 67110146;
          v296 = v215;
          v297 = 2082;
          v298 = v216;
          v299 = 2082;
          v300 = v217;
          v301 = 1024;
          v302 = 9150;
          v303 = 1024;
          v304 = v207;
          _os_log_impl(&_mh_execute_header, v213, OS_LOG_TYPE_DEFAULT, "%c[%{public}s %{public}s]:%i Overriding pref settings with CE Tech managed profile: 0x%04x", buf, 0x28u);
        }

        v218 = v16 & 0xFFFFFFFFFFFFFE9FLL;
        v219 = v16 & 0xFFFFFFFFFFFFFE9FLL | 0x140;
        v220 = v16 | 0x160;
        if (v207 != 7)
        {
          v220 = v16 & 0xFFFFFFFFFFFFFE9FLL;
        }

        if (v207 != 6)
        {
          v219 = v220;
        }

        v221 = v218 | 0x60;
        v222 = v218 | 0x120;
        if (v207 != 5)
        {
          v222 = v16 & 0xFFFFFFFFFFFFFE9FLL;
        }

        if (v207 != 4)
        {
          v221 = v222;
        }

        if (v207 <= 5)
        {
          v219 = v221;
        }

        v223 = v218 | 0x20;
        v224 = v218 | 0x40;
        if (v207 == 3)
        {
          v218 |= 0x100uLL;
        }

        if (v207 == 2)
        {
          v218 = v224;
        }

        if (v207 == 1)
        {
          v218 = v223;
        }

        if (v207 <= 3)
        {
          v16 = v218;
        }

        else
        {
          v16 = v219;
        }
      }

      v225 = [v109 objectForKey:@"LogRF"];

      if (v225)
      {
        v226 = [v109 objectForKey:@"LogRF"];
        v227 = [v226 intValue];

        dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
        v228 = NFLogGetLogger();
        if (v228)
        {
          v229 = v228;
          v230 = object_getClass(v1);
          v231 = class_isMetaClass(v230);
          v274 = object_getClassName(v1);
          v291 = sel_getName("_readDriverSettings");
          v232 = 45;
          if (v231)
          {
            v232 = 43;
          }

          v229(5, "%c[%{public}s %{public}s]:%i Overriding pref settings with LogRF managed profile: 0x%04x", v232, v274, v291, 9165, v227);
        }

        dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
        v233 = NFSharedLogGetLogger();
        if (os_log_type_enabled(v233, OS_LOG_TYPE_DEFAULT))
        {
          v234 = object_getClass(v1);
          if (class_isMetaClass(v234))
          {
            v235 = 43;
          }

          else
          {
            v235 = 45;
          }

          v236 = object_getClassName(v1);
          v237 = sel_getName("_readDriverSettings");
          *buf = 67110146;
          v296 = v235;
          v297 = 2082;
          v298 = v236;
          v299 = 2082;
          v300 = v237;
          v301 = 1024;
          v302 = 9165;
          v303 = 1024;
          v304 = v227;
          _os_log_impl(&_mh_execute_header, v233, OS_LOG_TYPE_DEFAULT, "%c[%{public}s %{public}s]:%i Overriding pref settings with LogRF managed profile: 0x%04x", buf, 0x28u);
        }

        v238 = v16 & 0xFFFFFFFFFFFFFFFCLL;
        if (v227 == 1)
        {
          v238 = v16 & 0xFFFFFFFFFFFFFFFCLL | 2;
        }

        if (v227 == 2)
        {
          v238 = v16 & 0xFFFFFFFFFFFFFFFCLL | 1;
        }

        if (v227 == 4)
        {
          v16 |= 3uLL;
        }

        else
        {
          v16 = v238;
        }
      }
    }

    v239 = [v2 dataForKey:@"ChipscopeConfig"];
    if (v239)
    {
      objc_opt_class();
      if ((objc_opt_isKindOfClass() & 1) != 0 && [v239 bytes] && objc_msgSend(v239, "length") && objc_msgSend(v2, "integerForKey:", @"Chipscope"))
      {
        v16 |= 0x20000uLL;
        [v294 setObject:v239 forKeyedSubscript:@"chipscope"];
      }
    }

    v240 = [v2 integerForKey:@"PollingPeriod"];
    v241 = v240 & ~(v240 >> 63);
    v242 = [v2 integerForKey:@"GenericATxTimeout"];
    v243 = v242 & ~(v242 >> 63);
    if (NFProductHasThermistor())
    {
      v244 = v16 | 0x1000000;
    }

    else
    {
      v244 = v16;
    }

    v245 = [NSNumber numberWithUnsignedLongLong:v244];
    v246 = v294;
    [v294 setObject:v245 forKeyedSubscript:@"flags"];

    v247 = [NSNumber numberWithInteger:v241];
    [v294 setObject:v247 forKeyedSubscript:@"pollPeriod"];

    v248 = [NSNumber numberWithInteger:v243];
    [v294 setObject:v248 forKeyedSubscript:@"atx"];

    v249 = v1[11];
    if (v249)
    {
      LOBYTE(v249) = v249[8];
    }

    sub_1000E73D4(v1, v249 & 1);
    if (NFIsInternalBuild())
    {
      v250 = [v2 objectForKey:@"chFieldDetectOverride"];

      if (v250)
      {
        dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
        v251 = NFLogGetLogger();
        if (v251)
        {
          v252 = v251;
          v253 = object_getClass(v1);
          v254 = class_isMetaClass(v253);
          v255 = object_getClassName(v1);
          v292 = sel_getName("_readDriverSettings");
          v256 = 45;
          if (v254)
          {
            v256 = 43;
          }

          v252(6, "%c[%{public}s %{public}s]:%i CH field detect overridden", v256, v255, v292, 9221);
        }

        dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
        v257 = NFSharedLogGetLogger();
        if (os_log_type_enabled(v257, OS_LOG_TYPE_DEFAULT))
        {
          v258 = object_getClass(v1);
          if (class_isMetaClass(v258))
          {
            v259 = 43;
          }

          else
          {
            v259 = 45;
          }

          v260 = object_getClassName(v1);
          v261 = sel_getName("_readDriverSettings");
          *buf = 67109890;
          v296 = v259;
          v297 = 2082;
          v298 = v260;
          v299 = 2082;
          v300 = v261;
          v301 = 1024;
          v302 = 9221;
          _os_log_impl(&_mh_execute_header, v257, OS_LOG_TYPE_DEFAULT, "%c[%{public}s %{public}s]:%i CH field detect overridden", buf, 0x22u);
        }

        v262 = [v250 unsignedIntegerValue];
        if (v262 <= 2)
        {
          v263 = v262;
        }

        else
        {
          v263 = 0;
        }

        v1[56] = v263;
        v246 = v294;
      }
    }

    else
    {
      v250 = v293;
    }

    [v1[52] refreshUserDefaultsOverride];
    *(v1 + 357) = [v2 BOOLForKey:@"DumpLogsOnStartup"];
    *(v1 + 356) = [v2 BOOLForKey:@"LPMAlwaysOn"];
    if (NFIsInternalBuild())
    {
      v264 = [v2 integerForKey:@"PowerCountersInterval"];
      v265 = v264 & ~(v264 >> 63);
    }

    else
    {
      v265 = 0;
    }

    v1[38] = v265;
    v1 = v246;
  }

  return v1;
}

void sub_1000E6228(uint64_t a1)
{
  objc_initWeak(&location, *(a1 + 32));
  sub_10027EACC(v2);
  v3 = objc_opt_new();
  v4 = *(a1 + 40);
  v8[0] = _NSConcreteStackBlock;
  v8[1] = 3221225472;
  v8[2] = sub_1000E63A8;
  v8[3] = &unk_100318480;
  objc_copyWeak(v9, &location);
  v5 = *(a1 + 40);
  v9[1] = *(a1 + 48);
  v9[2] = v5;
  [v3 postComponentStatusEventFor:7 status:v4 withReply:v8];

  v6 = *(a1 + 32);
  objc_sync_enter(v6);
  qword_10035C9A8 = *(a1 + 40);
  objc_sync_exit(v6);

  v7 = *(a1 + 40);
  if (v7 != 1 && os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_FAULT))
  {
    *buf = 134217984;
    v12 = v7;
    _os_log_fault_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_FAULT, "HW in bad state %llu - reported to the system health monitor", buf, 0xCu);
  }

  objc_destroyWeak(v9);
  objc_destroyWeak(&location);
}

void sub_1000E63A8(uint64_t a1, int a2, void *a3)
{
  v5 = a3;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
  Logger = NFLogGetLogger();
  v8 = Logger;
  if (v5)
  {
    if (Logger)
    {
      Class = object_getClass(WeakRetained);
      isMetaClass = class_isMetaClass(Class);
      ClassName = object_getClassName(WeakRetained);
      Name = sel_getName(*(a1 + 40));
      if (a2)
      {
        v13 = @"success";
      }

      else
      {
        v13 = @"failure";
      }

      v36 = v13;
      v14 = 45;
      if (isMetaClass)
      {
        v14 = 43;
      }

      v8(3, "%c[%{public}s %{public}s]:%i Error posting status (%{public}@) to SystemHealthManager - %{public}@", v14, ClassName, Name, 1065, v36, v5);
    }

    dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
    v15 = NFSharedLogGetLogger();
    if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
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
      *buf = 67110402;
      if (a2)
      {
        v20 = @"success";
      }

      else
      {
        v20 = @"failure";
      }

      v38 = v17;
      v39 = 2082;
      v40 = v18;
      v41 = 2082;
      v42 = v19;
      v43 = 1024;
      v44 = 1065;
      v45 = 2114;
      v46 = v20;
      v47 = 2114;
      v48 = v5;
      v21 = "%c[%{public}s %{public}s]:%i Error posting status (%{public}@) to SystemHealthManager - %{public}@";
      v22 = v15;
      v23 = OS_LOG_TYPE_ERROR;
LABEL_30:
      _os_log_impl(&_mh_execute_header, v22, v23, v21, buf, 0x36u);
    }
  }

  else
  {
    if (Logger)
    {
      v24 = object_getClass(WeakRetained);
      v25 = class_isMetaClass(v24);
      v26 = object_getClassName(WeakRetained);
      v27 = sel_getName(*(a1 + 40));
      v28 = @"failure";
      if (a2)
      {
        v28 = @"success";
      }

      v29 = 45;
      if (v25)
      {
        v29 = 43;
      }

      v8(6, "%c[%{public}s %{public}s]:%i Posted status (%llu) to SystemHealthManager - %@", v29, v26, v27, 1068, *(a1 + 48), v28);
    }

    dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
    v15 = NFSharedLogGetLogger();
    if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
    {
      v30 = object_getClass(WeakRetained);
      if (class_isMetaClass(v30))
      {
        v31 = 43;
      }

      else
      {
        v31 = 45;
      }

      v32 = object_getClassName(WeakRetained);
      v33 = sel_getName(*(a1 + 40));
      v34 = *(a1 + 48);
      v35 = @"failure";
      *buf = 67110402;
      v38 = v31;
      if (a2)
      {
        v35 = @"success";
      }

      v39 = 2082;
      v40 = v32;
      v41 = 2082;
      v42 = v33;
      v43 = 1024;
      v44 = 1068;
      v45 = 2048;
      v46 = v34;
      v47 = 2112;
      v48 = v35;
      v21 = "%c[%{public}s %{public}s]:%i Posted status (%llu) to SystemHealthManager - %@";
      v22 = v15;
      v23 = OS_LOG_TYPE_DEFAULT;
      goto LABEL_30;
    }
  }
}

void sub_1000E66DC(uint64_t a1, int a2)
{
  v4 = [*(a1 + 384) upgradeChecked];
  objc_opt_self();
  if ((byte_10035DB90 & 1) == 0 && (v4 & 1) == 0 && sub_10015C898(*(a1 + 384)) && sub_100229BB0(NFSSEWrapper, 0))
  {
    dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
    Logger = NFLogGetLogger();
    if (Logger)
    {
      v6 = Logger;
      Class = object_getClass(a1);
      isMetaClass = class_isMetaClass(Class);
      ClassName = object_getClassName(a1);
      Name = sel_getName("_upgradeAuthRandomSynchronously:");
      v9 = 45;
      if (isMetaClass)
      {
        v9 = 43;
      }

      v6(6, "%c[%{public}s %{public}s]:%i UpgradeChecked = %d", v9, ClassName, Name, 1271, 0);
    }

    dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
    v10 = NFSharedLogGetLogger();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
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

      *buf = 67110146;
      *&buf[4] = v12;
      *v46 = 2082;
      *&v46[2] = object_getClassName(a1);
      *&v46[10] = 2082;
      *&v46[12] = sel_getName("_upgradeAuthRandomSynchronously:");
      *&v46[20] = 1024;
      *&v46[22] = 1271;
      *&v46[26] = 1024;
      *&v46[28] = 0;
      _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEFAULT, "%c[%{public}s %{public}s]:%i UpgradeChecked = %d", buf, 0x28u);
    }

    *buf = 0;
    *v46 = buf;
    *&v46[8] = 0x3032000000;
    *&v46[16] = sub_100006A8C;
    *&v46[24] = sub_1000E6B84;
    v47 = 0;
    if (a2)
    {
      v34[0] = _NSConcreteStackBlock;
      v34[1] = 3221225472;
      v34[2] = sub_1000E6B8C;
      v34[3] = &unk_100318710;
      v34[4] = a1;
      v34[5] = buf;
      v13 = sub_10004BF60(NFRoutingConfig, 0);
      v14 = sub_1000E6BE4(a1, v34, @"Upgrade SEP token", v13);

      if (v14 && !*(*v46 + 40))
      {
        *(a1 + 350) = 1;
      }

      else
      {
        dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
        v15 = NFLogGetLogger();
        if (v15)
        {
          v16 = v15;
          v17 = object_getClass(a1);
          v18 = class_isMetaClass(v17);
          v19 = object_getClassName(a1);
          v20 = sel_getName("_upgradeAuthRandomSynchronously:");
          v21 = 45;
          if (v18)
          {
            v21 = 43;
          }

          v16(3, "%c[%{public}s %{public}s]:%i Failed: %{public}@", v21, v19, v20, 1285, *(*v46 + 40));
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
          v26 = sel_getName("_upgradeAuthRandomSynchronously:");
          v27 = *(*v46 + 40);
          *v35 = 67110146;
          v36 = v24;
          v37 = 2082;
          v38 = v25;
          v39 = 2082;
          v40 = v26;
          v41 = 1024;
          v42 = 1285;
          v43 = 2114;
          v44 = v27;
          _os_log_impl(&_mh_execute_header, v22, OS_LOG_TYPE_ERROR, "%c[%{public}s %{public}s]:%i Failed: %{public}@", v35, 0x2Cu);
        }
      }
    }

    else
    {
      v28 = *(a1 + 240);
      v29 = sub_10004BF2C(NFRoutingConfig);
      v33[0] = _NSConcreteStackBlock;
      v33[1] = 3221225472;
      v33[2] = sub_1000E6FE4;
      v33[3] = &unk_100318738;
      v33[4] = a1;
      v30 = [_NFBuiltinSession createSession:@"Upgrade auth Random" workQueue:v28 routing:v29 sessionQueuer:a1 didStartWork:v33];
    }

    _Block_object_dispose(buf, 8);
  }
}

BOOL sub_1000E6B8C(uint64_t a1)
{
  v2 = sub_100200318(*(*(a1 + 32) + 384));
  v3 = *(*(a1 + 40) + 8);
  v4 = *(v3 + 40);
  *(v3 + 40) = v2;

  return *(*(*(a1 + 40) + 8) + 40) == 0;
}

uint64_t sub_1000E6BE4(void *a1, void *a2, void *a3, void *a4)
{
  v7 = a2;
  v8 = a3;
  v9 = a4;
  if (a1)
  {
    v10 = [a1 lastKnownRoutingConfig];
    v11 = [v10 copy];

    if (!v8)
    {
      goto LABEL_7;
    }

    v12 = sub_10004BF60(NFRoutingConfig, 0);
    v13 = 0;
    if (([v9 isEqual:v12] & 1) == 0)
    {
      v14 = sub_10004C144(NFRoutingConfig);
      v13 = [v9 isEqual:v14] ^ 1;
    }

    v15 = sub_10021A4A0(a1[47], v8, v13);
    if (v15)
    {
      v16 = 0;
    }

    else
    {
LABEL_7:
      v17 = [a1 setRoutingConfig:v9];

      if (v17)
      {
        dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
        Logger = NFLogGetLogger();
        if (Logger)
        {
          v19 = Logger;
          Class = object_getClass(a1);
          isMetaClass = class_isMetaClass(Class);
          ClassName = object_getClassName(a1);
          Name = sel_getName("executeBlock:sessionName:routingConfig:");
          v23 = 45;
          if (isMetaClass)
          {
            v23 = 43;
          }

          v19(3, "%c[%{public}s %{public}s]:%i Failed to change routing.", v23, ClassName, Name, 1919);
        }

        dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
        v24 = NFSharedLogGetLogger();
        if (os_log_type_enabled(v24, OS_LOG_TYPE_ERROR))
        {
          v25 = object_getClass(a1);
          if (class_isMetaClass(v25))
          {
            v26 = 43;
          }

          else
          {
            v26 = 45;
          }

          *buf = 67109890;
          v41 = v26;
          v42 = 2082;
          v43 = object_getClassName(a1);
          v44 = 2082;
          v45 = sel_getName("executeBlock:sessionName:routingConfig:");
          v46 = 1024;
          v47 = 1919;
          _os_log_impl(&_mh_execute_header, v24, OS_LOG_TYPE_ERROR, "%c[%{public}s %{public}s]:%i Failed to change routing.", buf, 0x22u);
        }

        sub_10021CC94(a1[47], v8);
        v16 = 0;
      }

      else
      {
        v16 = v7[2](v7);
        v27 = [a1 setRoutingConfig:v11];

        if (v27)
        {
          dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
          v28 = NFLogGetLogger();
          if (v28)
          {
            v29 = v28;
            v30 = object_getClass(a1);
            v31 = class_isMetaClass(v30);
            v32 = object_getClassName(a1);
            v39 = sel_getName("executeBlock:sessionName:routingConfig:");
            v33 = 45;
            if (v31)
            {
              v33 = 43;
            }

            v29(3, "%c[%{public}s %{public}s]:%i Failed to restore routing", v33, v32, v39, 1927);
          }

          dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
          v34 = NFSharedLogGetLogger();
          if (os_log_type_enabled(v34, OS_LOG_TYPE_ERROR))
          {
            v35 = object_getClass(a1);
            if (class_isMetaClass(v35))
            {
              v36 = 43;
            }

            else
            {
              v36 = 45;
            }

            *buf = 67109890;
            v41 = v36;
            v42 = 2082;
            v43 = object_getClassName(a1);
            v44 = 2082;
            v45 = sel_getName("executeBlock:sessionName:routingConfig:");
            v46 = 1024;
            v47 = 1927;
            _os_log_impl(&_mh_execute_header, v34, OS_LOG_TYPE_ERROR, "%c[%{public}s %{public}s]:%i Failed to restore routing", buf, 0x22u);
          }
        }

        if (v8)
        {
          sub_10021CC94(a1[47], v8);
        }
      }

      v15 = 0;
    }
  }

  else
  {
    v16 = 0;
  }

  return v16;
}

void sub_1000E6FE4(uint64_t a1)
{
  v2 = sub_100200318(*(*(a1 + 32) + 384));
  if (!v2)
  {
    *(*(a1 + 32) + 350) = 1;
  }
}

BOOL sub_1000E7034(uint64_t a1)
{
  v2 = [*(*(a1 + 32) + 384) negotiatePerBootAuthKeys];
  v3 = *(*(a1 + 40) + 8);
  v4 = *(v3 + 40);
  *(v3 + 40) = v2;

  return *(*(*(a1 + 40) + 8) + 40) == 0;
}

void sub_1000E708C(uint64_t a1)
{
  v2 = [*(*(a1 + 32) + 384) negotiatePerBootAuthKeys];
  if (!v2)
  {
    *(*(a1 + 32) + 350) = 1;
  }
}

os_unfair_lock_s *sub_1000E70DC(os_unfair_lock_s *result)
{
  if (result)
  {
    v1 = result;
    os_unfair_lock_lock(result + 12);
    v2 = [*&v1[10]._os_unfair_lock_opaque migrationState];
    os_unfair_lock_unlock(v1 + 12);
    if (v2 == 1)
    {
      return 0;
    }

    else
    {
      sub_100199A24(NFBugCapture, @"Failed to start the session", @"File: _NFHardwareManager, Function: _isInAppletMigrationState, Error: Migration state is not idle", &off_100339788);
      return 1;
    }
  }

  return result;
}

os_unfair_lock_s *sub_1000E7158(os_unfair_lock_s *result)
{
  if (result)
  {
    v1 = result;
    os_unfair_lock_lock(result + 12);
    if ([*&v1[10]._os_unfair_lock_opaque migrationState] && objc_msgSend(*&v1[10]._os_unfair_lock_opaque, "migrationState") != 1 && objc_msgSend(*&v1[10]._os_unfair_lock_opaque, "migrationContext") == 3)
    {
      dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
      Logger = NFLogGetLogger();
      if (Logger)
      {
        v3 = Logger;
        Class = object_getClass(v1);
        isMetaClass = class_isMetaClass(Class);
        ClassName = object_getClassName(v1);
        Name = sel_getName("_isInOSUAppletMigrationState");
        v16 = [*&v1[10]._os_unfair_lock_opaque migrationState];
        v17 = [*&v1[10]._os_unfair_lock_opaque migrationContext];
        v8 = 45;
        if (isMetaClass)
        {
          v8 = 43;
        }

        v3(3, "%c[%{public}s %{public}s]:%i OSU SE migration incomplete 0x%04x, context 0x%04x", v8, ClassName, Name, 1360, v16, v17);
      }

      dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
      v9 = NFSharedLogGetLogger();
      if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
      {
        v10 = object_getClass(v1);
        if (class_isMetaClass(v10))
        {
          v11 = 43;
        }

        else
        {
          v11 = 45;
        }

        v12 = object_getClassName(v1);
        v13 = sel_getName("_isInOSUAppletMigrationState");
        v14 = [*&v1[10]._os_unfair_lock_opaque migrationState];
        v15 = [*&v1[10]._os_unfair_lock_opaque migrationContext];
        *buf = 67110402;
        v19 = v11;
        v20 = 2082;
        v21 = v12;
        v22 = 2082;
        v23 = v13;
        v24 = 1024;
        v25 = 1360;
        v26 = 1024;
        v27 = v14;
        v28 = 1024;
        v29 = v15;
        _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_ERROR, "%c[%{public}s %{public}s]:%i OSU SE migration incomplete 0x%04x, context 0x%04x", buf, 0x2Eu);
      }

      os_unfair_lock_unlock(v1 + 12);
      return 1;
    }

    else
    {
      os_unfair_lock_unlock(v1 + 12);
      return 0;
    }
  }

  return result;
}

BOOL sub_1000E737C(uint64_t a1)
{
  if (!a1)
  {
    return 0;
  }

  os_unfair_lock_lock((a1 + 48));
  v2 = [*(a1 + 40) OSMode] == 2;
  os_unfair_lock_unlock((a1 + 48));
  return v2;
}

void sub_1000E73D4(void *a1, char a2)
{
  if (a1)
  {
    v4 = a1[37];
    v64[0] = _NSConcreteStackBlock;
    v64[1] = 3221225472;
    v64[2] = sub_1000E7A9C;
    v64[3] = &unk_100318760;
    v64[4] = a1;
    v5 = objc_retainBlock(v64);
    if (a2)
    {
      v6 = [[NSUserDefaults alloc] initWithSuiteName:@"com.apple.stockholm"];
      [v6 synchronize];
      if ((NFIsChinaSku() & 1) == 0)
      {
        if (!NFIsInternalBuild())
        {
          goto LABEL_48;
        }

        v34 = [v6 objectForKey:@"forceChinaSku"];

        if (!v34)
        {
          goto LABEL_48;
        }

        v35 = [v6 BOOLForKey:@"forceChinaSku"];
        dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
        Logger = NFLogGetLogger();
        if (Logger)
        {
          v37 = Logger;
          Class = object_getClass(a1);
          isMetaClass = class_isMetaClass(Class);
          ClassName = object_getClassName(a1);
          Name = sel_getName("radioConfigChanged:");
          if (v35)
          {
            v42 = @"on";
          }

          else
          {
            v42 = @"off";
          }

          v43 = 45;
          if (isMetaClass)
          {
            v43 = 43;
          }

          v37(5, "%c[%{public}s %{public}s]:%i Force China Sku: %{public}@", v43, ClassName, Name, 1452, v42);
        }

        dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
        v44 = NFSharedLogGetLogger();
        if (os_log_type_enabled(v44, OS_LOG_TYPE_DEFAULT))
        {
          v45 = object_getClass(a1);
          if (class_isMetaClass(v45))
          {
            v46 = 43;
          }

          else
          {
            v46 = 45;
          }

          v47 = object_getClassName(a1);
          v48 = sel_getName("radioConfigChanged:");
          *buf = 67110146;
          v49 = @"off";
          if (v35)
          {
            v49 = @"on";
          }

          v66 = v46;
          v67 = 2082;
          v68 = v47;
          v69 = 2082;
          v70 = v48;
          v71 = 1024;
          v72 = 1452;
          v73 = 2114;
          v74 = v49;
          _os_log_impl(&_mh_execute_header, v44, OS_LOG_TYPE_DEFAULT, "%c[%{public}s %{public}s]:%i Force China Sku: %{public}@", buf, 0x2Cu);
        }

        if (!v35)
        {
          goto LABEL_48;
        }
      }

      v7 = [v6 objectForKey:@"nfcRadioEnabled"];

      if (v7)
      {
        v8 = [v6 BOOLForKey:@"nfcRadioEnabled"];
        dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
        v9 = NFLogGetLogger();
        if (v9)
        {
          v10 = v9;
          v11 = object_getClass(a1);
          v12 = class_isMetaClass(v11);
          v13 = object_getClassName(a1);
          v14 = sel_getName("radioConfigChanged:");
          if (v8)
          {
            v15 = @"on";
          }

          else
          {
            v15 = @"off";
          }

          v16 = 45;
          if (v12)
          {
            v16 = 43;
          }

          v10(5, "%c[%{public}s %{public}s]:%i NFC radio preference setting %{public}@", v16, v13, v14, 1461, v15);
        }

        dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
        v17 = NFSharedLogGetLogger();
        if (os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT))
        {
          v18 = object_getClass(a1);
          if (class_isMetaClass(v18))
          {
            v19 = 43;
          }

          else
          {
            v19 = 45;
          }

          v20 = object_getClassName(a1);
          v21 = sel_getName("radioConfigChanged:");
          v22 = @"off";
          *buf = 67110146;
          v66 = v19;
          v67 = 2082;
          if (v8)
          {
            v22 = @"on";
          }

          v68 = v20;
          v69 = 2082;
          v70 = v21;
          v71 = 1024;
          v72 = 1461;
          v73 = 2114;
          v74 = v22;
          _os_log_impl(&_mh_execute_header, v17, OS_LOG_TYPE_DEFAULT, "%c[%{public}s %{public}s]:%i NFC radio preference setting %{public}@", buf, 0x2Cu);
        }
      }

      else
      {
LABEL_48:
        v8 = 1;
      }

      a1[37] = v8;
      dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
      v50 = NFLogGetLogger();
      if (v50)
      {
        v51 = v50;
        v52 = object_getClass(a1);
        v53 = class_isMetaClass(v52);
        v54 = object_getClassName(a1);
        v55 = sel_getName("radioConfigChanged:");
        v56 = 45;
        if (v53)
        {
          v56 = 43;
        }

        v51(6, "%c[%{public}s %{public}s]:%i radio state: %d", v56, v54, v55, 1469, a1[37]);
      }

      dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
      v57 = NFSharedLogGetLogger();
      if (os_log_type_enabled(v57, OS_LOG_TYPE_DEFAULT))
      {
        v58 = object_getClass(a1);
        if (class_isMetaClass(v58))
        {
          v59 = 43;
        }

        else
        {
          v59 = 45;
        }

        v60 = object_getClassName(a1);
        v61 = sel_getName("radioConfigChanged:");
        v62 = a1[37];
        *buf = 67110146;
        v66 = v59;
        v67 = 2082;
        v68 = v60;
        v69 = 2082;
        v70 = v61;
        v71 = 1024;
        v72 = 1469;
        v73 = 1024;
        LODWORD(v74) = v62;
        _os_log_impl(&_mh_execute_header, v57, OS_LOG_TYPE_DEFAULT, "%c[%{public}s %{public}s]:%i radio state: %d", buf, 0x28u);
      }

      if (v4 != v8)
      {
        (v5[2])(v5, a1[37]);
      }
    }

    else
    {
      a1[37] = -1;
      dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
      v23 = NFLogGetLogger();
      if (v23)
      {
        v24 = v23;
        v25 = object_getClass(a1);
        v26 = class_isMetaClass(v25);
        v27 = object_getClassName(a1);
        v63 = sel_getName("radioConfigChanged:");
        v28 = 45;
        if (v26)
        {
          v28 = 43;
        }

        v24(5, "%c[%{public}s %{public}s]:%i Radio disabled by mobileconfig", v28, v27, v63, 1432);
      }

      dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
      v29 = NFSharedLogGetLogger();
      if (os_log_type_enabled(v29, OS_LOG_TYPE_DEFAULT))
      {
        v30 = object_getClass(a1);
        if (class_isMetaClass(v30))
        {
          v31 = 43;
        }

        else
        {
          v31 = 45;
        }

        v32 = object_getClassName(a1);
        v33 = sel_getName("radioConfigChanged:");
        *buf = 67109890;
        v66 = v31;
        v67 = 2082;
        v68 = v32;
        v69 = 2082;
        v70 = v33;
        v71 = 1024;
        v72 = 1432;
        _os_log_impl(&_mh_execute_header, v29, OS_LOG_TYPE_DEFAULT, "%c[%{public}s %{public}s]:%i Radio disabled by mobileconfig", buf, 0x22u);
      }

      if (v4 != a1[37])
      {
        (v5[2])(v5);
      }
    }
  }
}

void sub_1000E7A9C(uint64_t a1, uint64_t a2)
{
  v4 = sub_100003548(*(a1 + 32));
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v5 = [v4 allValues];
  v6 = [v5 countByEnumeratingWithState:&v11 objects:v15 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v12;
    do
    {
      for (i = 0; i != v7; i = i + 1)
      {
        if (*v12 != v8)
        {
          objc_enumerationMutation(v5);
        }

        [*(*(&v11 + 1) + 8 * i) didChangeRadioState:a2 != 0];
      }

      v7 = [v5 countByEnumeratingWithState:&v11 objects:v15 count:16];
    }

    while (v7);
  }

  if (a2)
  {
    v10 = @"1";
  }

  else
  {
    v10 = @"0";
  }

  sub_1000E7BDC(*(a1 + 32), "com.apple.stockhom.radio.stateChanged", v10);
}

void sub_1000E7BDC(void *a1, uint64_t a2, void *a3)
{
  v5 = a3;
  if (a1)
  {
    dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
    Logger = NFLogGetLogger();
    if (Logger)
    {
      v7 = Logger;
      Class = object_getClass(a1);
      isMetaClass = class_isMetaClass(Class);
      ClassName = object_getClassName(a1);
      Name = sel_getName("_postEvent:objectString:");
      v10 = 45;
      if (isMetaClass)
      {
        v10 = 43;
      }

      v7(6, "%c[%{public}s %{public}s]:%i posting notification: %s", v10, ClassName, Name, 3024, a2);
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

      *buf = 67110146;
      v22 = v13;
      v23 = 2082;
      v24 = object_getClassName(a1);
      v25 = 2082;
      v26 = sel_getName("_postEvent:objectString:");
      v27 = 1024;
      v28 = 3024;
      v29 = 2080;
      v30 = a2;
      _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_DEFAULT, "%c[%{public}s %{public}s]:%i posting notification: %s", buf, 0x2Cu);
    }

    v14 = [[NSString alloc] initWithUTF8String:a2];
    v15 = +[NSDistributedNotificationCenter defaultCenter];
    [v15 postNotificationName:v14 object:v5 userInfo:0 options:3];

    v16 = +[NFSecureXPCEventPublisherManager sharedManager];
    v17 = [v16 wallet];
    v18 = v17;
    if (v5)
    {
      if (v17)
      {
        sub_100235448(v17, v14, v5, 1);
      }
    }

    else if (v17)
    {
      sub_100235394(v17, v14, 1);
    }
  }
}

void sub_1000E7E30(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  if (WeakRetained)
  {
    v3 = WeakRetained;
    v2 = WeakRetained;
    objc_sync_enter(v2);
    v2[359] = 0;
    objc_sync_exit(v2);

    WeakRetained = v3;
  }
}

void sub_1000E8494(uint64_t a1, void *a2, uint64_t a3)
{
  v5 = a2;
  v6 = v5;
  if (a1)
  {
    v7 = [v5 NF_userInfo];
    v8 = [v7 objectForKey:@"RBSApp"];
    v9 = [v8 BOOLValue];

    dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
    Logger = NFLogGetLogger();
    if (Logger)
    {
      v11 = Logger;
      Class = object_getClass(a1);
      isMetaClass = class_isMetaClass(Class);
      ClassName = object_getClassName(a1);
      Name = sel_getName("didCloseXPCConnection:invalidated:");
      v16 = [v6 NF_clientName];
      v17 = 43;
      if (!isMetaClass)
      {
        v17 = 45;
      }

      v11(6, "%c[%{public}s %{public}s]:%i Removing XPC connection (invalidated=%d, isRBSApp=%d) for %{public}@ - %{public}@ ", v17, ClassName, Name, 1648, a3, v9, v16, v6);
    }

    dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
    v18 = NFSharedLogGetLogger();
    if (os_log_type_enabled(v18, OS_LOG_TYPE_DEFAULT))
    {
      v19 = object_getClass(a1);
      if (class_isMetaClass(v19))
      {
        v20 = 43;
      }

      else
      {
        v20 = 45;
      }

      v21 = object_getClassName(a1);
      v22 = sel_getName("didCloseXPCConnection:invalidated:");
      v23 = [v6 NF_clientName];
      *buf = 67110914;
      v35 = v20;
      v36 = 2082;
      *v37 = v21;
      *&v37[8] = 2082;
      *&v37[10] = v22;
      v38 = 1024;
      v39 = 1648;
      v40 = 1024;
      v41 = a3;
      v42 = 1024;
      v43 = v9;
      v44 = 2114;
      v45 = v23;
      v46 = 2114;
      v47 = v6;
      _os_log_impl(&_mh_execute_header, v18, OS_LOG_TYPE_DEFAULT, "%c[%{public}s %{public}s]:%i Removing XPC connection (invalidated=%d, isRBSApp=%d) for %{public}@ - %{public}@ ", buf, 0x42u);
    }

    kdebug_trace();
    v24 = NFSharedSignpostLog();
    if (os_signpost_enabled(v24))
    {
      v25 = [v6 NF_clientName];
      *buf = 67109634;
      v35 = a3;
      v36 = 1024;
      *v37 = v9;
      *&v37[4] = 2112;
      *&v37[6] = v25;
      _os_signpost_emit_with_name_impl(&_mh_execute_header, v24, OS_SIGNPOST_EVENT, 0xEEEEB0B5B2B2EEEELL, "XPC_DISCONNECT", "removing XPC connection (invalidated=%d, isRBSApp=%d) for %@", buf, 0x18u);
    }

    v26 = [v6 NF_serviceType];
    v27 = v26;
    if (v26 && [v26 unsignedIntegerValue] == 2)
    {
      v28 = *(a1 + 168);
      *(a1 + 168) = 0;
    }

    if (!v9 || a3)
    {
      sub_100043834(*(a1 + 80), v6);
    }

    v29 = *(a1 + 240);
    block[0] = _NSConcreteStackBlock;
    block[1] = 3221225472;
    block[2] = sub_1000E883C;
    block[3] = &unk_1003187B0;
    v32 = v9;
    v33 = a3;
    block[4] = a1;
    v31 = v6;
    dispatch_async(v29, block);
  }
}

id sub_1000E883C(uint64_t a1)
{
  if (*(a1 + 48) == 1 && (*(a1 + 49) & 1) == 0)
  {
    v1 = (a1 + 32);
    sub_1000E8CD8(*(a1 + 32), *(a1 + 40));
  }

  else
  {
    v1 = (a1 + 32);
    v2 = *(*(a1 + 32) + 176);
    objc_sync_enter(v2);
    [*(*v1 + 22) removeObject:v1[1]];
    objc_sync_exit(v2);

    v3 = *v1;
    v4 = v1[1];
    v5 = [v4 NF_callbackUUID];
    sub_1000E8904(v3, v4, v5);

    [v1[1] NF_clearCallbackUUID];
    sub_1000E8CD8(*v1, v1[1]);
    sub_10017D528(*v1, v1[1]);
  }

  v6 = *v1;

  return [v6 maybeStartNextSession];
}

void sub_1000E8904(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  if (a1)
  {
    v7 = [v5 NF_whitelistChecker];
    if (v6)
    {
      v39 = v7;
      dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
      Logger = NFLogGetLogger();
      if (Logger)
      {
        v9 = Logger;
        Class = object_getClass(a1);
        isMetaClass = class_isMetaClass(Class);
        ClassName = object_getClassName(a1);
        Name = sel_getName("_unregisterForCallbacks:callbackUUID:");
        v14 = [v5 processIdentifier];
        v15 = [v39 clientName];
        v16 = 43;
        if (!isMetaClass)
        {
          v16 = 45;
        }

        v9(6, "%c[%{public}s %{public}s]:%i Client %d (%{public}@) unregistered callback [%@]", v16, ClassName, Name, 3575, v14, v15, v6);
      }

      dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
      v17 = NFSharedLogGetLogger();
      if (os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT))
      {
        v18 = object_getClass(a1);
        if (class_isMetaClass(v18))
        {
          v19 = 43;
        }

        else
        {
          v19 = 45;
        }

        v20 = object_getClassName(a1);
        v21 = sel_getName("_unregisterForCallbacks:callbackUUID:");
        v22 = [v5 processIdentifier];
        v23 = [v39 clientName];
        *buf = 67110658;
        v41 = v19;
        v42 = 2082;
        v43 = v20;
        v44 = 2082;
        v45 = v21;
        v46 = 1024;
        v47 = 3575;
        v48 = 1024;
        v49 = v22;
        v50 = 2114;
        v51 = v23;
        v52 = 2112;
        v53 = v6;
        _os_log_impl(&_mh_execute_header, v17, OS_LOG_TYPE_DEFAULT, "%c[%{public}s %{public}s]:%i Client %d (%{public}@) unregistered callback [%@]", buf, 0x3Cu);
      }

      v24 = [v6 UUIDString];
      v25 = *(a1 + 160);
      objc_sync_enter(v25);
      [*(a1 + 160) removeObjectForKey:v24];
      if (![*(a1 + 160) count] && *(a1 + 280))
      {
        dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
        v26 = NFLogGetLogger();
        if (v26)
        {
          v27 = v26;
          v28 = object_getClass(a1);
          v29 = class_isMetaClass(v28);
          v30 = object_getClassName(a1);
          v38 = sel_getName("_unregisterForCallbacks:callbackUUID:");
          v31 = 45;
          if (v29)
          {
            v31 = 43;
          }

          v27(6, "%c[%{public}s %{public}s]:%i releasing NFCD keep alive transaction", v31, v30, v38, 3583);
        }

        dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
        v32 = NFSharedLogGetLogger();
        if (os_log_type_enabled(v32, OS_LOG_TYPE_DEFAULT))
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

          v35 = object_getClassName(a1);
          v36 = sel_getName("_unregisterForCallbacks:callbackUUID:");
          *buf = 67109890;
          v41 = v34;
          v42 = 2082;
          v43 = v35;
          v44 = 2082;
          v45 = v36;
          v46 = 1024;
          v47 = 3583;
          _os_log_impl(&_mh_execute_header, v32, OS_LOG_TYPE_DEFAULT, "%c[%{public}s %{public}s]:%i releasing NFCD keep alive transaction", buf, 0x22u);
        }

        v37 = *(a1 + 280);
        *(a1 + 280) = 0;
      }

      objc_sync_exit(v25);

      v7 = v39;
    }
  }
}

void sub_1000E8CD8(id *a1, void *a2)
{
  v3 = a2;
  if (a1)
  {
    v29 = a1[23];
    objc_sync_enter(v29);
    v4 = [NSSet alloc];
    v32 = v3;
    v5 = [v3 NF_userInfo];
    v6 = [v5 objectForKeyedSubscript:@"ProxyObjects"];
    v7 = [v4 initWithSet:v6];

    v35 = 0u;
    v36 = 0u;
    v33 = 0u;
    v34 = 0u;
    obj = v7;
    v8 = [obj countByEnumeratingWithState:&v33 objects:v49 count:16];
    if (v8)
    {
      v9 = v8;
      v10 = *v34;
      v31 = a1;
      do
      {
        for (i = 0; i != v9; i = i + 1)
        {
          if (*v34 != v10)
          {
            objc_enumerationMutation(obj);
          }

          v12 = *(*(&v33 + 1) + 8 * i);
          objc_opt_class();
          if (objc_opt_isKindOfClass())
          {
            v13 = v12;
            [v13 handleXPCInvalidation];
            dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
            Logger = NFLogGetLogger();
            if (Logger)
            {
              v15 = Logger;
              Class = object_getClass(a1);
              isMetaClass = class_isMetaClass(Class);
              ClassName = object_getClassName(a1);
              Name = sel_getName("_sync_dequeueAllXPCSessionFromConnection:");
              v20 = [v32 NF_clientName];
              v21 = 45;
              if (isMetaClass)
              {
                v21 = 43;
              }

              v28 = ClassName;
              a1 = v31;
              v15(6, "%c[%{public}s %{public}s]:%i dequeueing session:%{public}@ for %{public}@", v21, v28, Name, 2532, v13, v20);
            }

            dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
            v22 = NFSharedLogGetLogger();
            if (os_log_type_enabled(v22, OS_LOG_TYPE_DEFAULT))
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
              v26 = sel_getName("_sync_dequeueAllXPCSessionFromConnection:");
              v27 = [v32 NF_clientName];
              *buf = 67110402;
              v38 = v24;
              v39 = 2082;
              v40 = v25;
              v41 = 2082;
              v42 = v26;
              v43 = 1024;
              v44 = 2532;
              v45 = 2114;
              v46 = v13;
              v47 = 2114;
              v48 = v27;
              _os_log_impl(&_mh_execute_header, v22, OS_LOG_TYPE_DEFAULT, "%c[%{public}s %{public}s]:%i dequeueing session:%{public}@ for %{public}@", buf, 0x36u);

              a1 = v31;
            }

            sub_1000EE388(a1, v13, 0);
          }
        }

        v9 = [obj countByEnumeratingWithState:&v33 objects:v49 count:16];
      }

      while (v9);
    }

    objc_sync_exit(v29);
    v3 = v32;
  }
}

void sub_1000E925C(uint64_t a1, void *a2, uint64_t a3, void *a4)
{
  v7 = a2;
  v8 = a4;
  if (a1)
  {
    v9 = *(a1 + 240);
    block[0] = _NSConcreteStackBlock;
    block[1] = 3221225472;
    block[2] = sub_1000E9340;
    block[3] = &unk_1003187D8;
    block[4] = a1;
    v13 = "waitForHWSupportedOnConnection:maxTries:callback:";
    v11 = v7;
    v12 = v8;
    v14 = a3;
    dispatch_async(v9, block);
  }
}

void sub_1000E9340(uint64_t a1)
{
  v2 = sub_100003384(*(a1 + 32));
  dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
  Logger = NFLogGetLogger();
  if (Logger)
  {
    v4 = Logger;
    Class = object_getClass(*(a1 + 32));
    isMetaClass = class_isMetaClass(Class);
    ClassName = object_getClassName(*(a1 + 32));
    Name = sel_getName(*(a1 + 56));
    v9 = [*(a1 + 40) NF_clientName];
    v10 = 45;
    if (isMetaClass)
    {
      v10 = 43;
    }

    v4(6, "%c[%{public}s %{public}s]:%i Processing %{public}@ : HW state = %u", v10, ClassName, Name, 1751, v9, v2);
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
    v16 = [*(a1 + 40) NF_clientName];
    *buf = 67110402;
    v53 = v13;
    v54 = 2082;
    v55 = v14;
    v56 = 2082;
    v57 = v15;
    v58 = 1024;
    v59 = 1751;
    v60 = 2114;
    v61 = v16;
    v62 = 1024;
    v63 = v2;
    _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_DEFAULT, "%c[%{public}s %{public}s]:%i Processing %{public}@ : HW state = %u", buf, 0x32u);
  }

  if (v2 == 1)
  {
    if (*(a1 + 64))
    {
      v17 = dispatch_time(0, 250000000);
      block[0] = _NSConcreteStackBlock;
      block[1] = 3221225472;
      block[2] = sub_1000E9830;
      block[3] = &unk_1003187D8;
      v18 = *(a1 + 56);
      v51 = *(a1 + 64);
      v47 = *(a1 + 32);
      v19 = *(v47 + 240);
      v20 = *(&v47 + 1);
      *&v21 = *(a1 + 48);
      *(&v21 + 1) = v18;
      v49 = v47;
      v50 = v21;
      dispatch_after(v17, v19, block);

      return;
    }

    dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
    v34 = NFLogGetLogger();
    if (v34)
    {
      v35 = v34;
      v36 = object_getClass(*(a1 + 32));
      v37 = class_isMetaClass(v36);
      v38 = object_getClassName(*(a1 + 32));
      v46 = sel_getName(*(a1 + 56));
      v39 = 45;
      if (v37)
      {
        v39 = 43;
      }

      v35(6, "%c[%{public}s %{public}s]:%i max tries reached waiting for valid hw sate", v39, v38, v46, 1757);
    }

    dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
    v40 = NFSharedLogGetLogger();
    if (os_log_type_enabled(v40, OS_LOG_TYPE_DEFAULT))
    {
      v41 = object_getClass(*(a1 + 32));
      if (class_isMetaClass(v41))
      {
        v42 = 43;
      }

      else
      {
        v42 = 45;
      }

      v43 = object_getClassName(*(a1 + 32));
      v44 = sel_getName(*(a1 + 56));
      *buf = 67109890;
      v53 = v42;
      v54 = 2082;
      v55 = v43;
      v56 = 2082;
      v57 = v44;
      v58 = 1024;
      v59 = 1757;
      _os_log_impl(&_mh_execute_header, v40, OS_LOG_TYPE_DEFAULT, "%c[%{public}s %{public}s]:%i max tries reached waiting for valid hw sate", buf, 0x22u);
    }

    v33 = *(*(a1 + 48) + 16);
  }

  else
  {
    dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
    v22 = NFLogGetLogger();
    if (v22)
    {
      v23 = v22;
      v24 = object_getClass(*(a1 + 32));
      v25 = class_isMetaClass(v24);
      v26 = object_getClassName(*(a1 + 32));
      v45 = sel_getName(*(a1 + 56));
      v27 = 45;
      if (v25)
      {
        v27 = 43;
      }

      v23(6, "%c[%{public}s %{public}s]:%i HW State is now valid", v27, v26, v45, 1753);
    }

    dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
    v28 = NFSharedLogGetLogger();
    if (os_log_type_enabled(v28, OS_LOG_TYPE_DEFAULT))
    {
      v29 = object_getClass(*(a1 + 32));
      if (class_isMetaClass(v29))
      {
        v30 = 43;
      }

      else
      {
        v30 = 45;
      }

      v31 = object_getClassName(*(a1 + 32));
      v32 = sel_getName(*(a1 + 56));
      *buf = 67109890;
      v53 = v30;
      v54 = 2082;
      v55 = v31;
      v56 = 2082;
      v57 = v32;
      v58 = 1024;
      v59 = 1753;
      _os_log_impl(&_mh_execute_header, v28, OS_LOG_TYPE_DEFAULT, "%c[%{public}s %{public}s]:%i HW State is now valid", buf, 0x22u);
    }

    v33 = *(*(a1 + 48) + 16);
  }

  v33();
}

void sub_1000E9830(uint64_t a1)
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
    v8 = 45;
    if (isMetaClass)
    {
      v8 = 43;
    }

    v3(6, "%c[%{public}s %{public}s]:%i Checking HW state again - retries = %lu", v8, ClassName, Name, 1762, *(a1 + 64));
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
    v13 = sel_getName(*(a1 + 56));
    v14 = *(a1 + 64);
    *buf = 67110146;
    v16 = v11;
    v17 = 2082;
    v18 = v12;
    v19 = 2082;
    v20 = v13;
    v21 = 1024;
    v22 = 1762;
    v23 = 2048;
    v24 = v14;
    _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEFAULT, "%c[%{public}s %{public}s]:%i Checking HW state again - retries = %lu", buf, 0x2Cu);
  }

  sub_1000E925C(*(a1 + 32), *(a1 + 40), *(a1 + 64) - 1, *(a1 + 48));
}

uint64_t sub_1000E9DD4(uint64_t a1)
{
  v1 = a1;
  if (a1)
  {
    v2 = *(a1 + 184);
    objc_sync_enter(v2);
    v3 = *(v1 + 120);
    if (v3 && ([v3 isEnding] & 1) == 0)
    {
      v1 = [*(v1 + 120) didEnd] ^ 1;
    }

    else
    {
      v1 = 0;
    }

    objc_sync_exit(v2);
  }

  return v1;
}

id *sub_1000E9E3C(id a1, void *a2)
{
  v3 = a2;
  if (a1)
  {
    v4 = *(a1 + 23);
    objc_sync_enter(v4);
    if (*(a1 + 15))
    {
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        v5 = [*(a1 + 15) connection];
        a1 = [v5 isEqual:v3];
      }

      else
      {
        a1 = (v3 == 0);
      }
    }

    else
    {
      a1 = 0;
    }

    objc_sync_exit(v4);
  }

  return a1;
}

uint64_t sub_1000E9EEC(uint64_t a1)
{
  v1 = a1;
  if (a1)
  {
    v2 = *(a1 + 184);
    objc_sync_enter(v2);
    if (*(v1 + 120))
    {
      LOBYTE(v1) = objc_opt_respondsToSelector();
    }

    else
    {
      LOBYTE(v1) = 0;
    }

    objc_sync_exit(v2);
  }

  return v1 & 1;
}

void sub_1000E9F50(uint64_t a1)
{
  if (a1)
  {
    v6 = 0;
    v2 = *(a1 + 376);
    v5 = 0;
    sub_100221884(v2, &v6, &v5);
    v3 = v5;
    if (v6 == 1)
    {
      if (objc_opt_respondsToSelector())
      {
        [*(a1 + 120) handleFieldChanged:1];
      }

      if (v3 && (objc_opt_respondsToSelector() & 1) != 0)
      {
        v4 = [v3 copy];
        [v4 setCachedBeforeRFReset:1];
        [*(a1 + 120) handleFieldNotification:v4];
      }

      if ([v3 chFieldType] != 1)
      {
        [NFGeneralStatisticsCALogger updateAnalyticsGeneralTransactionStatistics:&off_1003397B0];
      }
    }
  }
}

void *sub_1000EA03C(void *a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v7 = v6;
  if (a1)
  {
    v8 = 1;
    if (([v6 isEqualToString:@"seld"] & 1) == 0 && (objc_msgSend(v7, "isEqualToString:", @"seserviced") & 1) == 0 && (objc_msgSend(v7, "isEqualToString:", @"asd") & 1) == 0)
    {
      objc_opt_class();
      if ((objc_opt_isKindOfClass() & 1) == 0)
      {
        v8 = 0;
      }
    }

    dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
    Logger = NFLogGetLogger();
    if (Logger)
    {
      v10 = Logger;
      Class = object_getClass(a1);
      isMetaClass = class_isMetaClass(Class);
      ClassName = object_getClassName(a1);
      Name = sel_getName("regularSessionsAllowed:clientName:");
      v21 = objc_opt_class();
      v15 = 45;
      if (isMetaClass)
      {
        v15 = 43;
      }

      v10(6, "%c[%{public}s %{public}s]:%i Checking for %{public}@ session for %{public}@", v15, ClassName, Name, 2758, v21, v7);
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

      *buf = 67110402;
      v23 = v18;
      v24 = 2082;
      v25 = object_getClassName(a1);
      v26 = 2082;
      v27 = sel_getName("regularSessionsAllowed:clientName:");
      v28 = 1024;
      v29 = 2758;
      v30 = 2114;
      v31 = objc_opt_class();
      v32 = 2114;
      v33 = v7;
      v19 = v31;
      _os_log_impl(&_mh_execute_header, v16, OS_LOG_TYPE_DEFAULT, "%c[%{public}s %{public}s]:%i Checking for %{public}@ session for %{public}@", buf, 0x36u);
    }

    a1 = sub_1000ECA30(a1, v8);
  }

  return a1;
}

void sub_1000EA2A4(uint64_t a1)
{
  v2 = *(*(a1 + 32) + 384);
  v21 = 0;
  v3 = sub_100096634(v2, 5, &v21);
  v4 = v21;

  if (v3)
  {
    v5 = 1;
  }

  else
  {
    v5 = v4 == 0;
  }

  if (v5)
  {
    dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
    Logger = NFLogGetLogger();
    if (Logger)
    {
      v7 = Logger;
      Class = object_getClass(*(a1 + 32));
      isMetaClass = class_isMetaClass(Class);
      ClassName = object_getClassName(*(a1 + 32));
      Name = sel_getName(*(a1 + 40));
      v11 = 45;
      if (isMetaClass)
      {
        v11 = 43;
      }

      v7(6, "%c[%{public}s %{public}s]:%i Failed to log Applet FTA CDS Log", v11, ClassName, Name, 1957);
    }

    dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
    v18 = NFSharedLogGetLogger();
    if (os_log_type_enabled(v18, OS_LOG_TYPE_DEFAULT))
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
      *buf = 67109890;
      v23 = v13;
      v24 = 2082;
      v25 = v14;
      v26 = 2082;
      v27 = v15;
      v28 = 1024;
      v29 = 1957;
      _os_log_impl(&_mh_execute_header, v18, OS_LOG_TYPE_DEFAULT, "%c[%{public}s %{public}s]:%i Failed to log Applet FTA CDS Log", buf, 0x22u);
    }
  }

  else
  {
    v16 = [(NSMutableDictionary *)v4 copy];
    v17 = *(a1 + 32);
    v18 = *(v17 + 208);
    *(v17 + 208) = v16;
  }

  v19 = NFSharedSignpostLog();
  if (os_signpost_enabled(v19))
  {
    *buf = 0;
    _os_signpost_emit_with_name_impl(&_mh_execute_header, v19, OS_SIGNPOST_INTERVAL_END, 0xEEEEB0B5B2B2EEEELL, "DUMP_LOGS_BOOTUP", &unk_1002E8B7A, buf, 2u);
  }
}

void sub_1000EA4CC(uint64_t a1, int a2)
{
  if ((*(a1 + 350) & 1) == 0)
  {
    v4 = *(a1 + 96);
    if (v4)
    {
      sub_100206C84(v4);
      v4 = *(a1 + 96);
    }

    if (sub_1000030C8(v4))
    {
      dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
      Logger = NFLogGetLogger();
      if (Logger)
      {
        v6 = Logger;
        Class = object_getClass(a1);
        isMetaClass = class_isMetaClass(Class);
        ClassName = object_getClassName(a1);
        Name = sel_getName("_updateSEPairingSynchronously:");
        v10 = 45;
        if (isMetaClass)
        {
          v10 = 43;
        }

        v6(6, "%c[%{public}s %{public}s]:%i ", v10, ClassName, Name, 1973);
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
        *v50 = 2082;
        *&v50[2] = object_getClassName(a1);
        *&v50[10] = 2082;
        *&v50[12] = sel_getName("_updateSEPairingSynchronously:");
        *&v50[20] = 1024;
        *&v50[22] = 1973;
        _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_DEFAULT, "%c[%{public}s %{public}s]:%i ", buf, 0x22u);
      }

      sub_1000E66DC(a1, a2);
      *buf = 0;
      *v50 = buf;
      *&v50[8] = 0x3032000000;
      *&v50[16] = sub_100006A8C;
      *&v50[24] = sub_1000E6B84;
      v51 = 0;
      if (![*(a1 + 384) pairedState])
      {
        if (!a2)
        {
          v29 = *(a1 + 240);
          v30 = sub_10004BF2C(NFRoutingConfig);
          v33 = _NSConcreteStackBlock;
          v34 = 3221225472;
          v35 = sub_1000E708C;
          v36 = &unk_100318738;
          v37 = a1;
          v31 = [_NFBuiltinSession createSession:@"Per Boot Auth Keys" workQueue:v29 routing:v30 sessionQueuer:a1 didStartWork:&v33];

          goto LABEL_30;
        }

        v33 = _NSConcreteStackBlock;
        v34 = 3221225472;
        v35 = sub_1000E7034;
        v36 = &unk_100318710;
        v37 = a1;
        v38 = buf;
        v14 = sub_10004BF60(NFRoutingConfig, 0);
        v15 = sub_1000E6BE4(a1, &v33, @"Negotiate Auth Keys", v14);

        if (!v15 || *(*v50 + 40))
        {
          dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
          v16 = NFLogGetLogger();
          if (v16)
          {
            v17 = v16;
            v18 = object_getClass(a1);
            v19 = class_isMetaClass(v18);
            v20 = object_getClassName(a1);
            v21 = sel_getName("_negotiatePerBootAuthKeysSynchronously:");
            v22 = 45;
            if (v19)
            {
              v22 = 43;
            }

            v17(3, "%c[%{public}s %{public}s]:%i Failed: %{public}@", v22, v20, v21, 1319, *(*v50 + 40));
          }

          dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
          v23 = NFSharedLogGetLogger();
          if (os_log_type_enabled(v23, OS_LOG_TYPE_ERROR))
          {
            v24 = object_getClass(a1);
            if (class_isMetaClass(v24))
            {
              v25 = 43;
            }

            else
            {
              v25 = 45;
            }

            v26 = object_getClassName(a1);
            v27 = sel_getName("_negotiatePerBootAuthKeysSynchronously:");
            v28 = *(*v50 + 40);
            *v39 = 67110146;
            v40 = v25;
            v41 = 2082;
            v42 = v26;
            v43 = 2082;
            v44 = v27;
            v45 = 1024;
            v46 = 1319;
            v47 = 2114;
            v48 = v28;
            _os_log_impl(&_mh_execute_header, v23, OS_LOG_TYPE_ERROR, "%c[%{public}s %{public}s]:%i Failed: %{public}@", v39, 0x2Cu);
          }

          goto LABEL_30;
        }
      }

      *(a1 + 350) = 1;
LABEL_30:
      _Block_object_dispose(buf, 8);
    }
  }
}

void sub_1000EA958(uint64_t a1, void *a2)
{
  v3 = a2;
  if (!a1)
  {
    goto LABEL_33;
  }

  if (sub_100003384(a1) != 2 && sub_100003384(a1) != 5)
  {
    if (*(a1 + 363) == 1)
    {
      sub_1000EC6A0(a1);
    }

    goto LABEL_33;
  }

  v4 = *(a1 + 184);
  objc_sync_enter(v4);
  kdebug_trace();
  v5 = NFSharedSignpostLog();
  if (os_signpost_enabled(v5))
  {
    *buf = 0;
    _os_signpost_emit_with_name_impl(&_mh_execute_header, v5, OS_SIGNPOST_EVENT, 0xEEEEB0B5B2B2EEEELL, "MAYBE_START_NEXT_SESSION", &unk_1002E8B7A, buf, 2u);
  }

  v6 = a1;
  objc_sync_enter(v6);
  v7 = v6[344];
  objc_sync_exit(v6);

  if (v7 != 1)
  {
LABEL_31:
    v30 = 0;
    goto LABEL_32;
  }

  if (v6[364] == 1)
  {
    dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
    Logger = NFLogGetLogger();
    if (Logger)
    {
      v9 = Logger;
      Class = object_getClass(v6);
      isMetaClass = class_isMetaClass(Class);
      ClassName = object_getClassName(v6);
      Name = sel_getName("maybeStartNextSessionOnField:");
      v13 = 45;
      if (isMetaClass)
      {
        v13 = 43;
      }

      v9(6, "%c[%{public}s %{public}s]:%i User-initated shutdown started, abort further processing", v13, ClassName, Name, 2008);
    }

    dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
    v14 = NFSharedLogGetLogger();
    if (!os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
    {
      goto LABEL_30;
    }

    v15 = object_getClass(v6);
    if (class_isMetaClass(v15))
    {
      v16 = 43;
    }

    else
    {
      v16 = 45;
    }

    v17 = object_getClassName(v6);
    v18 = sel_getName("maybeStartNextSessionOnField:");
    *buf = 67109890;
    v287 = v16;
    v288 = 2082;
    v289 = v17;
    v290 = 2082;
    v291 = v18;
    v292 = 1024;
    v293 = 2008;
    v19 = "%c[%{public}s %{public}s]:%i User-initated shutdown started, abort further processing";
LABEL_29:
    _os_log_impl(&_mh_execute_header, v14, OS_LOG_TYPE_DEFAULT, v19, buf, 0x22u);
LABEL_30:

    goto LABEL_31;
  }

  if (v6[351] == 1)
  {
    dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
    v20 = NFLogGetLogger();
    if (v20)
    {
      v21 = v20;
      v22 = object_getClass(v6);
      v23 = class_isMetaClass(v22);
      v24 = object_getClassName(v6);
      v254 = sel_getName("maybeStartNextSessionOnField:");
      v25 = 45;
      if (v23)
      {
        v25 = 43;
      }

      v21(6, "%c[%{public}s %{public}s]:%i System is going to sleep - delaying start of new session", v25, v24, v254, 2014);
    }

    dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
    v14 = NFSharedLogGetLogger();
    if (!os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
    {
      goto LABEL_30;
    }

    v26 = object_getClass(v6);
    if (class_isMetaClass(v26))
    {
      v27 = 43;
    }

    else
    {
      v27 = 45;
    }

    v28 = object_getClassName(v6);
    v29 = sel_getName("maybeStartNextSessionOnField:");
    *buf = 67109890;
    v287 = v27;
    v288 = 2082;
    v289 = v28;
    v290 = 2082;
    v291 = v29;
    v292 = 1024;
    v293 = 2014;
    v19 = "%c[%{public}s %{public}s]:%i System is going to sleep - delaying start of new session";
    goto LABEL_29;
  }

  if (v6[363] == 1)
  {
    dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
    v31 = NFLogGetLogger();
    if (v31)
    {
      v32 = v31;
      v33 = object_getClass(v6);
      v34 = class_isMetaClass(v33);
      v35 = object_getClassName(v6);
      v255 = sel_getName("maybeStartNextSessionOnField:");
      v36 = 45;
      if (v34)
      {
        v36 = 43;
      }

      v32(6, "%c[%{public}s %{public}s]:%i Recovery mechanism requested a stop. Waiting.", v36, v35, v255, 2019);
    }

    dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
    v37 = NFSharedLogGetLogger();
    if (os_log_type_enabled(v37, OS_LOG_TYPE_DEFAULT))
    {
      v38 = object_getClass(v6);
      if (class_isMetaClass(v38))
      {
        v39 = 43;
      }

      else
      {
        v39 = 45;
      }

      v40 = object_getClassName(v6);
      v41 = sel_getName("maybeStartNextSessionOnField:");
      *buf = 67109890;
      v287 = v39;
      v288 = 2082;
      v289 = v40;
      v290 = 2082;
      v291 = v41;
      v292 = 1024;
      v293 = 2019;
      _os_log_impl(&_mh_execute_header, v37, OS_LOG_TYPE_DEFAULT, "%c[%{public}s %{public}s]:%i Recovery mechanism requested a stop. Waiting.", buf, 0x22u);
    }
  }

  else
  {
    v42 = sub_100003068(v6);
    sub_1000936E0(v6, v42);
    if (!*(v6 + 15))
    {
      sub_1000EA4CC(v6, 1);
    }
  }

  v266 = v4;
  v267 = v3;
  if (v6[363])
  {
    v270 = 0;
    goto LABEL_49;
  }

  v270 = 0;
  while (2)
  {
    if (*(v6 + 15) || ![*(a1 + 184) count])
    {
      goto LABEL_49;
    }

    v43 = [*(a1 + 184) objectAtIndex:0];
    while ([*(a1 + 184) count])
    {
      v44 = [*(a1 + 184) objectAtIndex:0];
      [*(a1 + 184) removeObjectAtIndex:0];
      dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
      v45 = NFLogGetLogger();
      if (v45)
      {
        v46 = v45;
        v47 = object_getClass(v6);
        v48 = class_isMetaClass(v47);
        v49 = object_getClassName(v6);
        v50 = sel_getName("copyNextDequeuableSession");
        v51 = [v44 sessionUID];
        v52 = 45;
        if (v48)
        {
          v52 = 43;
        }

        v46(6, "%c[%{public}s %{public}s]:%i Next queued session=%{public}@", v52, v49, v50, 1871, v51);
      }

      dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
      v53 = NFSharedLogGetLogger();
      if (os_log_type_enabled(v53, OS_LOG_TYPE_DEFAULT))
      {
        v54 = object_getClass(v6);
        if (class_isMetaClass(v54))
        {
          v55 = 43;
        }

        else
        {
          v55 = 45;
        }

        v56 = object_getClassName(v6);
        v57 = sel_getName("copyNextDequeuableSession");
        v58 = [v44 sessionUID];
        *buf = 67110146;
        v287 = v55;
        v288 = 2082;
        v289 = v56;
        v290 = 2082;
        v291 = v57;
        v292 = 1024;
        v293 = 1871;
        v294 = 2114;
        v295 = v58;
        _os_log_impl(&_mh_execute_header, v53, OS_LOG_TYPE_DEFAULT, "%c[%{public}s %{public}s]:%i Next queued session=%{public}@", buf, 0x2Cu);
      }

      v59 = objc_opt_class();
      if (v59 == objc_opt_class() && ((v77 = *(v6 + 47)) != 0 && ([*(v77 + 56) readerModeProtectionActive] & 1) != 0 || *(v6 + 39)))
      {
        dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
        v78 = NFLogGetLogger();
        if (v78)
        {
          v79 = v78;
          v80 = object_getClass(v6);
          v81 = class_isMetaClass(v80);
          v82 = object_getClassName(v6);
          v257 = sel_getName("copyNextDequeuableSession");
          v83 = 45;
          if (v81)
          {
            v83 = 43;
          }

          v79(6, "%c[%{public}s %{public}s]:%i Reader sessions not ready for dequeue, enqueuing for later", v83, v82, v257, 1874);
        }

        dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
        v70 = NFSharedLogGetLogger();
        if (!os_log_type_enabled(v70, OS_LOG_TYPE_DEFAULT))
        {
          goto LABEL_102;
        }

        v84 = object_getClass(v6);
        if (class_isMetaClass(v84))
        {
          v85 = 43;
        }

        else
        {
          v85 = 45;
        }

        v86 = object_getClassName(v6);
        v87 = sel_getName("copyNextDequeuableSession");
        *buf = 67109890;
        v287 = v85;
        v288 = 2082;
        v289 = v86;
        v290 = 2082;
        v291 = v87;
        v292 = 1024;
        v293 = 1874;
        v75 = v70;
        v76 = "%c[%{public}s %{public}s]:%i Reader sessions not ready for dequeue, enqueuing for later";
        goto LABEL_101;
      }

      v60 = objc_opt_class();
      if (v60 != objc_opt_class())
      {
        v61 = [v44 clientName];
        v62 = sub_1000EA03C(v6, v44, v61);

        if ((v62 & 1) == 0)
        {
          dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
          v88 = NFLogGetLogger();
          if (v88)
          {
            v89 = v88;
            v90 = object_getClass(v6);
            v91 = class_isMetaClass(v90);
            v92 = object_getClassName(v6);
            v258 = sel_getName("copyNextDequeuableSession");
            v93 = 45;
            if (v91)
            {
              v93 = 43;
            }

            v89(6, "%c[%{public}s %{public}s]:%i Only seshat session allowed currently, enqueuing for later", v93, v92, v258, 1880);
          }

          dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
          v70 = NFSharedLogGetLogger();
          if (!os_log_type_enabled(v70, OS_LOG_TYPE_DEFAULT))
          {
            goto LABEL_102;
          }

          v94 = object_getClass(v6);
          if (class_isMetaClass(v94))
          {
            v95 = 43;
          }

          else
          {
            v95 = 45;
          }

          v96 = object_getClassName(v6);
          v97 = sel_getName("copyNextDequeuableSession");
          *buf = 67109890;
          v287 = v95;
          v288 = 2082;
          v289 = v96;
          v290 = 2082;
          v291 = v97;
          v292 = 1024;
          v293 = 1880;
          v75 = v70;
          v76 = "%c[%{public}s %{public}s]:%i Only seshat session allowed currently, enqueuing for later";
          goto LABEL_101;
        }
      }

      v63 = *(v6 + 3);
      if (!v63 || *(v63 + 181) != 1 || ([v44 forceExpressExit] & 1) != 0)
      {
        goto LABEL_103;
      }

      dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
      v64 = NFLogGetLogger();
      if (v64)
      {
        v65 = v64;
        v66 = object_getClass(v6);
        v67 = class_isMetaClass(v66);
        v68 = object_getClassName(v6);
        v256 = sel_getName("copyNextDequeuableSession");
        v69 = 45;
        if (v67)
        {
          v69 = 43;
        }

        v65(6, "%c[%{public}s %{public}s]:%i Express Mode in progress - delaying start of session", v69, v68, v256, 1886);
      }

      dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
      v70 = NFSharedLogGetLogger();
      if (os_log_type_enabled(v70, OS_LOG_TYPE_DEFAULT))
      {
        v71 = object_getClass(v6);
        if (class_isMetaClass(v71))
        {
          v72 = 43;
        }

        else
        {
          v72 = 45;
        }

        v73 = object_getClassName(v6);
        v74 = sel_getName("copyNextDequeuableSession");
        *buf = 67109890;
        v287 = v72;
        v288 = 2082;
        v289 = v73;
        v290 = 2082;
        v291 = v74;
        v292 = 1024;
        v293 = 1886;
        v75 = v70;
        v76 = "%c[%{public}s %{public}s]:%i Express Mode in progress - delaying start of session";
LABEL_101:
        _os_log_impl(&_mh_execute_header, v75, OS_LOG_TYPE_DEFAULT, v76, buf, 0x22u);
      }

LABEL_102:

      [*(a1 + 184) addObject:v44];
      v44 = 0;
LABEL_103:
      if ([*(a1 + 184) count])
      {
        v98 = [*(a1 + 184) objectAtIndex:0];

        if (v98 != v43 && !v44)
        {
          continue;
        }
      }

      goto LABEL_108;
    }

    v44 = 0;
LABEL_108:

    v99 = *(v6 + 15);
    *(v6 + 15) = v44;

    v100 = *(v6 + 15);
    if (!v100)
    {
      goto LABEL_49;
    }

    v101 = *(v6 + 3);
    if (v101 && *(v101 + 181) == 1 && [v100 forceExpressExit])
    {
      dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
      v102 = NFLogGetLogger();
      if (v102)
      {
        v103 = v102;
        v104 = object_getClass(v6);
        v105 = class_isMetaClass(v104);
        v106 = object_getClassName(v6);
        v259 = sel_getName("maybeStartNextSessionOnField:");
        v107 = 45;
        if (v105)
        {
          v107 = 43;
        }

        v103(6, "%c[%{public}s %{public}s]:%i forcing exiting express mode", v107, v106, v259, 2050);
      }

      dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
      v108 = NFSharedLogGetLogger();
      if (os_log_type_enabled(v108, OS_LOG_TYPE_DEFAULT))
      {
        v109 = object_getClass(v6);
        if (class_isMetaClass(v109))
        {
          v110 = 43;
        }

        else
        {
          v110 = 45;
        }

        v111 = object_getClassName(v6);
        v112 = sel_getName("maybeStartNextSessionOnField:");
        *buf = 67109890;
        v287 = v110;
        v288 = 2082;
        v289 = v111;
        v290 = 2082;
        v291 = v112;
        v292 = 1024;
        v293 = 2050;
        _os_log_impl(&_mh_execute_header, v108, OS_LOG_TYPE_DEFAULT, "%c[%{public}s %{public}s]:%i forcing exiting express mode", buf, 0x22u);
      }

      v113 = *(v6 + 3);
      if (v113)
      {
        sub_10003CBC0(v113, 0);
      }
    }

    if ([*(v6 + 15) priority])
    {
      sub_100008AA4(v6);
    }

    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v114 = [*(v6 + 15) connection];
    }

    else
    {
      v114 = 0;
    }

    if (([*(v6 + 15) allowsBackgroundMode] & 1) == 0 && v114 && sub_1000439B8(*(v6 + 10), v114))
    {
      dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
      v115 = NFLogGetLogger();
      if (v115)
      {
        v116 = v115;
        v117 = object_getClass(v6);
        v118 = class_isMetaClass(v117);
        v119 = object_getClassName(v6);
        v120 = sel_getName("maybeStartNextSessionOnField:");
        v121 = [*(v6 + 15) clientName];
        v122 = 45;
        if (v118)
        {
          v122 = 43;
        }

        v116(6, "%c[%{public}s %{public}s]:%i Session is not allowed because %{public}@ is in background mode", v122, v119, v120, 2064, v121);
      }

      v268 = v114;
      dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
      v123 = NFSharedLogGetLogger();
      if (os_log_type_enabled(v123, OS_LOG_TYPE_DEFAULT))
      {
        v124 = object_getClass(v6);
        if (class_isMetaClass(v124))
        {
          v125 = 43;
        }

        else
        {
          v125 = 45;
        }

        v126 = object_getClassName(v6);
        v127 = sel_getName("maybeStartNextSessionOnField:");
        v128 = [*(v6 + 15) clientName];
        *buf = 67110146;
        v287 = v125;
        v288 = 2082;
        v289 = v126;
        v290 = 2082;
        v291 = v127;
        v292 = 1024;
        v293 = 2064;
        v294 = 2114;
        v295 = v128;
        _os_log_impl(&_mh_execute_header, v123, OS_LOG_TYPE_DEFAULT, "%c[%{public}s %{public}s]:%i Session is not allowed because %{public}@ is in background mode", buf, 0x2Cu);
      }

      v129 = *(v6 + 15);
      v130 = [NSError alloc];
      v131 = [NSString stringWithUTF8String:"nfcd"];
      v284[0] = NSLocalizedDescriptionKey;
      v132 = [NSString stringWithUTF8String:"Invalid State"];
      v285[0] = v132;
      v285[1] = &off_100331470;
      v284[1] = @"Line";
      v284[2] = @"Method";
      v133 = [[NSString alloc] initWithFormat:@"%s", sel_getName("maybeStartNextSessionOnField:")];
      v285[2] = v133;
      v284[3] = NSDebugDescriptionErrorKey;
      v134 = [[NSString alloc] initWithFormat:@"%s:%d", sel_getName("maybeStartNextSessionOnField:"), 2065];
      v285[3] = v134;
      v135 = [NSDictionary dictionaryWithObjects:v285 forKeys:v284 count:4];
      v136 = [v130 initWithDomain:v131 code:12 userInfo:v135];
      [v129 didStartSession:v136];

      v114 = v268;
      goto LABEL_175;
    }

    if (([*(v6 + 15) holdAssertion] & 1) == 0)
    {
      [*(a1 + 184) insertObject:*(v6 + 15) atIndex:0];
      v239 = *(v6 + 15);
      *(v6 + 15) = 0;

      goto LABEL_49;
    }

    v137 = sub_10021A4A0(*(v6 + 47), @"Session", [*(v6 + 15) isSessionSEOnly] ^ 1);

    [*(v6 + 52) stop];
    if (v137)
    {
      dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
      v138 = NFLogGetLogger();
      if (v138)
      {
        v139 = v138;
        v140 = object_getClass(v6);
        v141 = class_isMetaClass(v140);
        v251 = object_getClassName(v6);
        v260 = sel_getName("maybeStartNextSessionOnField:");
        v142 = 45;
        if (v141)
        {
          v142 = 43;
        }

        v139(3, "%c[%{public}s %{public}s]:%i Failed to open session with SE : %@", v142, v251, v260, 2129, v137);
      }

      v269 = v114;
      dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
      v143 = NFSharedLogGetLogger();
      if (os_log_type_enabled(v143, OS_LOG_TYPE_ERROR))
      {
        v144 = object_getClass(v6);
        if (class_isMetaClass(v144))
        {
          v145 = 43;
        }

        else
        {
          v145 = 45;
        }

        v146 = object_getClassName(v6);
        v147 = sel_getName("maybeStartNextSessionOnField:");
        *buf = 67110146;
        v287 = v145;
        v288 = 2082;
        v289 = v146;
        v290 = 2082;
        v291 = v147;
        v292 = 1024;
        v293 = 2129;
        v294 = 2112;
        v295 = v137;
        _os_log_impl(&_mh_execute_header, v143, OS_LOG_TYPE_ERROR, "%c[%{public}s %{public}s]:%i Failed to open session with SE : %@", buf, 0x2Cu);
      }

LABEL_174:
      v179 = v137;

      v180 = [NSString stringWithFormat:@"Failed to open session. Error = %@", v137];
      sub_100199A24(NFBugCapture, @"Failed to start the session", v180, 0);

      v181 = *(v6 + 15);
      v182 = [NSError alloc];
      v183 = [NSString stringWithUTF8String:"nfcd"];
      v280[0] = NSLocalizedDescriptionKey;
      v184 = [NSString stringWithUTF8String:"Stack Error"];
      v281[0] = v184;
      v281[1] = v137;
      v280[1] = NSUnderlyingErrorKey;
      v280[2] = @"Line";
      v281[2] = &off_100331488;
      v280[3] = @"Method";
      v185 = [[NSString alloc] initWithFormat:@"%s", sel_getName("maybeStartNextSessionOnField:")];
      v281[3] = v185;
      v280[4] = NSDebugDescriptionErrorKey;
      v186 = [[NSString alloc] initWithFormat:@"%s:%d", sel_getName("maybeStartNextSessionOnField:"), 2137];
      v281[4] = v186;
      v187 = [NSDictionary dictionaryWithObjects:v281 forKeys:v280 count:5];
      v188 = [v182 initWithDomain:v183 code:15 userInfo:v187];
      [v181 didStartSession:v188];

      v270 = v179;
      v114 = v269;
      goto LABEL_175;
    }

    v148 = [*(v6 + 15) checkSessionAllowed];
    if (v148)
    {
      v270 = v148;
      dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
      v149 = NFLogGetLogger();
      if (v149)
      {
        v150 = v149;
        v151 = object_getClass(v6);
        v152 = class_isMetaClass(v151);
        v153 = object_getClassName(v6);
        v261 = sel_getName("maybeStartNextSessionOnField:");
        v154 = 45;
        if (v152)
        {
          v154 = 43;
        }

        v150(6, "%c[%{public}s %{public}s]:%i Session is not allowed ...", v154, v153, v261, 2122);
      }

      dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
      v155 = NFSharedLogGetLogger();
      if (os_log_type_enabled(v155, OS_LOG_TYPE_DEFAULT))
      {
        v156 = object_getClass(v6);
        if (class_isMetaClass(v156))
        {
          v157 = 43;
        }

        else
        {
          v157 = 45;
        }

        v158 = object_getClassName(v6);
        v159 = sel_getName("maybeStartNextSessionOnField:");
        *buf = 67109890;
        v287 = v157;
        v288 = 2082;
        v289 = v158;
        v290 = 2082;
        v291 = v159;
        v292 = 1024;
        v293 = 2122;
        _os_log_impl(&_mh_execute_header, v155, OS_LOG_TYPE_DEFAULT, "%c[%{public}s %{public}s]:%i Session is not allowed ...", buf, 0x22u);
      }

      v160 = *(v6 + 15);
      v161 = [NSError alloc];
      v162 = [NSString stringWithUTF8String:"nfcd"];
      v282[0] = NSLocalizedDescriptionKey;
      v163 = [NSString stringWithUTF8String:"Stack Error"];
      v282[1] = NSUnderlyingErrorKey;
      v283[0] = v163;
      v283[1] = v270;
      v164 = [NSDictionary dictionaryWithObjects:v283 forKeys:v282 count:2];
      v165 = [v161 initWithDomain:v162 code:15 userInfo:v164];
      [v160 didStartSession:v165];

      sub_10021CC94(*(v6 + 47), @"Session");
LABEL_175:
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        if ([*(v6 + 15) timeLimitedSession])
        {
          v189 = *(v6 + 82);
          v190 = __OFSUB__(v189, 1);
          v191 = v189 - 1;
          if (v191 < 0 == v190)
          {
            *(v6 + 82) = v191;
          }
        }
      }

      sub_1000EC998(*(v6 + 15), v114);
      v192 = *(v6 + 15);
      *(v6 + 15) = 0;

      if (![*(a1 + 184) count])
      {
        sub_1000DE998(v6, 0);
      }

      if (v6[363] == 1)
      {
LABEL_49:
        if (*(v6 + 15))
        {
          v3 = v267;
          v4 = v266;
        }

        else
        {
          v193 = *(v6 + 3);
          v3 = v267;
          v4 = v266;
          if (v193 && *(v193 + 181) == 1)
          {
            dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
            v194 = NFLogGetLogger();
            if (v194)
            {
              v195 = v194;
              v196 = object_getClass(v6);
              v197 = class_isMetaClass(v196);
              v198 = object_getClassName(v6);
              v263 = sel_getName("maybeStartNextSessionOnField:");
              v199 = 45;
              if (v197)
              {
                v199 = 43;
              }

              v195(6, "%c[%{public}s %{public}s]:%i Express Mode in progress - skip routing config", v199, v198, v263, 2161);
            }

            dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
            v200 = NFSharedLogGetLogger();
            if (os_log_type_enabled(v200, OS_LOG_TYPE_DEFAULT))
            {
              v201 = object_getClass(v6);
              if (class_isMetaClass(v201))
              {
                v202 = 43;
              }

              else
              {
                v202 = 45;
              }

              v203 = object_getClassName(v6);
              v204 = sel_getName("maybeStartNextSessionOnField:");
              *buf = 67109890;
              v287 = v202;
              v288 = 2082;
              v289 = v203;
              v290 = 2082;
              v291 = v204;
              v292 = 1024;
              v293 = 2161;
              _os_log_impl(&_mh_execute_header, v200, OS_LOG_TYPE_DEFAULT, "%c[%{public}s %{public}s]:%i Express Mode in progress - skip routing config", buf, 0x22u);
            }
          }

          else if (v6[363] == 1)
          {
            sub_1000EC6A0(v6);
          }

          else
          {
            sub_10000453C(v6);
            if (sub_1000ECA30(v6, 1))
            {
              [*(v6 + 52) start];
            }

            if (v6[346] == 1)
            {
              dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
              v205 = NFLogGetLogger();
              if (v205)
              {
                v206 = v205;
                v207 = object_getClass(v6);
                v208 = class_isMetaClass(v207);
                v209 = object_getClassName(v6);
                v264 = sel_getName("maybeStartNextSessionOnField:");
                v210 = 45;
                if (v208)
                {
                  v210 = 43;
                }

                v206(5, "%c[%{public}s %{public}s]:%i Restarting driver for defaults changes", v210, v209, v264, 2185);
              }

              dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
              v211 = NFSharedLogGetLogger();
              if (os_log_type_enabled(v211, OS_LOG_TYPE_DEFAULT))
              {
                v212 = object_getClass(v6);
                if (class_isMetaClass(v212))
                {
                  v213 = 43;
                }

                else
                {
                  v213 = 45;
                }

                v214 = object_getClassName(v6);
                v215 = sel_getName("maybeStartNextSessionOnField:");
                *buf = 67109890;
                v287 = v213;
                v288 = 2082;
                v289 = v214;
                v290 = 2082;
                v291 = v215;
                v292 = 1024;
                v293 = 2185;
                _os_log_impl(&_mh_execute_header, v211, OS_LOG_TYPE_DEFAULT, "%c[%{public}s %{public}s]:%i Restarting driver for defaults changes", buf, 0x22u);
              }

              sub_10021D9F4(*(v6 + 47));
              v6[346] = 0;
              dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
              v216 = NFLogGetLogger();
              if (v216)
              {
                v217 = v216;
                v218 = object_getClass(v6);
                v219 = class_isMetaClass(v218);
                v220 = object_getClassName(v6);
                v265 = sel_getName("maybeStartNextSessionOnField:");
                v221 = 45;
                if (v219)
                {
                  v221 = 43;
                }

                v217(5, "%c[%{public}s %{public}s]:%i Done restarting driver for defaults changes", v221, v220, v265, 2188);
              }

              dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
              v222 = NFSharedLogGetLogger();
              if (os_log_type_enabled(v222, OS_LOG_TYPE_DEFAULT))
              {
                v223 = object_getClass(v6);
                if (class_isMetaClass(v223))
                {
                  v224 = 43;
                }

                else
                {
                  v224 = 45;
                }

                v225 = object_getClassName(v6);
                v226 = sel_getName("maybeStartNextSessionOnField:");
                *buf = 67109890;
                v287 = v224;
                v288 = 2082;
                v289 = v225;
                v290 = 2082;
                v291 = v226;
                v292 = 1024;
                v293 = 2188;
                _os_log_impl(&_mh_execute_header, v222, OS_LOG_TYPE_DEFAULT, "%c[%{public}s %{public}s]:%i Done restarting driver for defaults changes", buf, 0x22u);
              }
            }

            v227 = [v6 lastKnownRoutingConfig];
            v228 = [v227 lpcdEcpFrame];

            v273 = 0u;
            v274 = 0u;
            v271 = 0u;
            v272 = 0u;
            v229 = *(v6 + 24);
            v230 = [v229 countByEnumeratingWithState:&v271 objects:v279 count:16];
            if (v230)
            {
              v231 = v230;
              v232 = *v272;
              while (2)
              {
                for (i = 0; i != v231; i = i + 1)
                {
                  if (*v272 != v232)
                  {
                    objc_enumerationMutation(v229);
                  }

                  v234 = *(*(&v271 + 1) + 8 * i);
                  v235 = [v234 startOnFieldList];
                  if (v235)
                  {
                    v236 = v235;
                    v237 = [v234 parentToken];
                    if (v237)
                    {
                    }

                    else
                    {
                      objc_opt_class();
                      isKindOfClass = objc_opt_isKindOfClass();

                      if (isKindOfClass)
                      {
                        v240 = [v234 effectiveECPFrame];

                        v228 = v240;
                        goto LABEL_234;
                      }
                    }
                  }
                }

                v231 = [v229 countByEnumeratingWithState:&v271 objects:v279 count:16];
                if (v231)
                {
                  continue;
                }

                break;
              }

LABEL_234:
              v3 = v267;
              v4 = v266;
            }

            sub_1000ECC30(v6, v228);
            v241 = [v6 lastKnownRoutingConfig];
            v242 = sub_1000ECE84(v6, [v241 fieldDetectType], v228);

            v243 = [v6 lastKnownRoutingConfig];
            v244 = sub_10004B630(v242, v243);

            if (!v244 || ([v6 lastKnownRoutingConfig], v245 = objc_claimAutoreleasedReturnValue(), v246 = objc_msgSend(v245, "fdOn"), v247 = sub_100003068(v6), v245, v246 != v247))
            {
              v248 = sub_10021A4A0(*(v6 + 47), @"StartSessionOFF", 1uLL);

              if (!v248)
              {
                sub_1000ED28C(v6, v228);
                sub_10021CC94(*(v6 + 47), @"StartSessionOFF");
              }
            }
          }
        }

        v30 = v270;
        goto LABEL_32;
      }

      continue;
    }

    break;
  }

  v143 = *(v6 + 15);
  [v143 willStartSession];
  v166 = [v143 initialRoutingConfigWithField:v267];
  v137 = [v6 setRoutingConfig:v166];

  if (v137)
  {
    dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
    v167 = NFLogGetLogger();
    if (v167)
    {
      v168 = v167;
      v169 = object_getClass(v6);
      v170 = class_isMetaClass(v169);
      v252 = object_getClassName(v6);
      v262 = sel_getName("maybeStartNextSessionOnField:");
      v171 = 45;
      if (v170)
      {
        v171 = 43;
      }

      v168(3, "%c[%{public}s %{public}s]:%i Failed to set initial routing for session : %{public}@", v171, v252, v262, 2115, v137);
    }

    v269 = v114;
    dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
    v172 = NFSharedLogGetLogger();
    if (os_log_type_enabled(v172, OS_LOG_TYPE_ERROR))
    {
      v173 = object_getClass(v6);
      if (class_isMetaClass(v173))
      {
        v174 = 43;
      }

      else
      {
        v174 = 45;
      }

      v175 = object_getClassName(v6);
      v176 = sel_getName("maybeStartNextSessionOnField:");
      *buf = 67110146;
      v287 = v174;
      v288 = 2082;
      v289 = v175;
      v290 = 2082;
      v291 = v176;
      v292 = 1024;
      v293 = 2115;
      v294 = 2114;
      v295 = v137;
      _os_log_impl(&_mh_execute_header, v172, OS_LOG_TYPE_ERROR, "%c[%{public}s %{public}s]:%i Failed to set initial routing for session : %{public}@", buf, 0x2Cu);
    }

    v177 = sub_10004C144(NFRoutingConfig);
    v178 = [v6 setRoutingConfig:v177];

    sub_10021CC94(*(v6 + 47), @"Session");
    goto LABEL_174;
  }

  v249 = *(v6 + 30);
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_1000EC744;
  block[3] = &unk_100315F80;
  v276 = v143;
  v277 = v6;
  v278 = "maybeStartNextSessionOnField:";
  v250 = v143;
  dispatch_async(v249, block);

  v30 = 0;
  v3 = v267;
  v4 = v266;
LABEL_32:

  objc_sync_exit(v4);
LABEL_33:
}

void sub_1000EC6A0(uint64_t a1)
{
  *(a1 + 346) = 0;
  v2 = sub_100210FEC(_NFFailForwardCoordinator);
  v3 = sub_100214280(v2, 1);

  if (v3)
  {
    [*(a1 + 416) stop];
    v4 = sub_100210FEC(_NFFailForwardCoordinator);
    sub_100214310(v4, 1);
  }
}

void sub_1000EC744(uint64_t a1)
{
  if ([*(a1 + 32) didEnd])
  {
    dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
    Logger = NFLogGetLogger();
    if (Logger)
    {
      v3 = Logger;
      Class = object_getClass(*(a1 + 40));
      isMetaClass = class_isMetaClass(Class);
      ClassName = object_getClassName(*(a1 + 40));
      Name = sel_getName(*(a1 + 48));
      v7 = 45;
      if (isMetaClass)
      {
        v7 = 43;
      }

      v3(6, "%c[%{public}s %{public}s]:%i Session was ended before starting...", v7, ClassName, Name, 2098);
    }

    dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
    v8 = NFSharedLogGetLogger();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
    {
      v9 = object_getClass(*(a1 + 40));
      if (class_isMetaClass(v9))
      {
        v10 = 43;
      }

      else
      {
        v10 = 45;
      }

      v11 = object_getClassName(*(a1 + 40));
      v12 = sel_getName(*(a1 + 48));
      *buf = 67109890;
      *v20 = v10;
      *&v20[4] = 2082;
      *&v20[6] = v11;
      v21 = 2082;
      v22 = v12;
      v23 = 1024;
      v24 = 2098;
      _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "%c[%{public}s %{public}s]:%i Session was ended before starting...", buf, 0x22u);
    }
  }

  else
  {
    kdebug_trace();
    v13 = NFSharedSignpostLog();
    if (os_signpost_enabled(v13))
    {
      v14 = [*(a1 + 32) sessionUID];
      *buf = 138412290;
      *v20 = v14;
      _os_signpost_emit_with_name_impl(&_mh_execute_header, v13, OS_SIGNPOST_EVENT, 0xEEEEB0B5B2B2EEEELL, "SESSION_STARTED", "sessionUID=%@", buf, 0xCu);
    }

    [*(a1 + 32) didStartSession:0];
    v15 = [*(a1 + 32) shouldHandleSecureElementTransactionData];
    v16 = *(a1 + 40);
    v17 = *(v16 + 376);
    if (v17)
    {
      *(v17 + 177) = v15;
      v16 = *(a1 + 40);
    }

    sub_1000E9F50(v16);
    sub_1001DD8CC(*(a1 + 40));
  }
}

void sub_1000EC998(void *a1, void *a2)
{
  v6 = a1;
  v3 = a2;
  [v6 releaseObjects];
  if (v3)
  {
    v4 = [v3 NF_userInfo];
    v5 = [v4 objectForKeyedSubscript:@"ProxyObjects"];
    [v5 removeObject:v6];
  }
}

uint64_t sub_1000ECA30(void **a1, uint64_t a2)
{
  v4 = sub_1000030C8(a1[12]);
  v5 = sub_100003110(a1[12]);
  v6 = 1;
  if (((a2 ^ 1) & v4 & 1) == 0)
  {
    v7 = v5;
    if ((a2 & v4 & v5 & 1) == 0)
    {
      dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
      Logger = NFLogGetLogger();
      if (Logger)
      {
        v9 = Logger;
        Class = object_getClass(a1);
        isMetaClass = class_isMetaClass(Class);
        ClassName = object_getClassName(a1);
        Name = sel_getName("sessionsAllowedForTimeConsumingOperations:");
        v12 = 43;
        if (!isMetaClass)
        {
          v12 = 45;
        }

        v9(6, "%c[%{public}s %{public}s]:%i sessionTimeConsuming=%d allowSimpleSessions=%d allowTimeConsumingSessions=%d", v12, ClassName, Name, 2775, a2, v4, v7 & 1);
      }

      dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
      v13 = NFSharedLogGetLogger();
      if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
      {
        v14 = object_getClass(a1);
        if (class_isMetaClass(v14))
        {
          v15 = 43;
        }

        else
        {
          v15 = 45;
        }

        *buf = 67110658;
        v20 = v15;
        v21 = 2082;
        v22 = object_getClassName(a1);
        v23 = 2082;
        v24 = sel_getName("sessionsAllowedForTimeConsumingOperations:");
        v25 = 1024;
        v26 = 2775;
        v27 = 1024;
        v28 = a2;
        v29 = 1024;
        v30 = v4;
        v31 = 1024;
        v32 = v7 & 1;
        _os_log_impl(&_mh_execute_header, v13, OS_LOG_TYPE_DEFAULT, "%c[%{public}s %{public}s]:%i sessionTimeConsuming=%d allowSimpleSessions=%d allowTimeConsumingSessions=%d", buf, 0x34u);
      }

      if (a2)
      {
        v6 = v7;
      }

      else
      {
        v6 = v4;
      }
    }
  }

  return v6 & 1;
}

void sub_1000ECC30(void *a1, void *a2)
{
  v3 = a2;
  if ([v3 length])
  {
    dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
    Logger = NFLogGetLogger();
    if (Logger)
    {
      v5 = Logger;
      Class = object_getClass(a1);
      isMetaClass = class_isMetaClass(Class);
      ClassName = object_getClassName(a1);
      Name = sel_getName("_updateECPRandomOverride:");
      v8 = 45;
      if (isMetaClass)
      {
        v8 = 43;
      }

      v5(6, "%c[%{public}s %{public}s]:%i %@", v8, ClassName, Name, 9532, v3);
    }

    dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
    v9 = NFSharedLogGetLogger();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
    {
      v10 = object_getClass(a1);
      if (class_isMetaClass(v10))
      {
        v11 = 43;
      }

      else
      {
        v11 = 45;
      }

      *buf = 67110146;
      v21 = v11;
      v22 = 2082;
      v23 = object_getClassName(a1);
      v24 = 2082;
      v25 = sel_getName("_updateECPRandomOverride:");
      v26 = 1024;
      v27 = 9532;
      v28 = 2112;
      v29 = v3;
      _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEFAULT, "%c[%{public}s %{public}s]:%i %@", buf, 0x2Cu);
    }

    v18 = @"ECPData";
    v19 = v3;
    v12 = [NSDictionary dictionaryWithObjects:&v19 forKeys:&v18 count:1];
    v13 = [NFFieldNotification notificationWithDictionary:v12];

    v14 = [(os_unfair_lock_s *)v13 chRandomData];
    if (v14)
    {
      v15 = sub_100005F24();
      sub_100184B20(v15, v14);
    }
  }

  else
  {
    v13 = sub_100005F24();
    sub_100005F7C(v13);
  }
}

id sub_1000ECE84(uint64_t a1, uint64_t a2, void *a3)
{
  v5 = a3;
  if (a1)
  {
    v6 = sub_100006030(*(a1 + 24));
    v7 = sub_100006544(*(a1 + 24));
    if ([*(a1 + 392) hasReaderModeSupport] && (NFProductIsDevBoard() & 1) == 0 && (NFProductIsNED() & 1) == 0 && objc_msgSend(a1, "nfcRadioEnabled:showUIPopup:", 0, 0) == 1)
    {
      if (NFIsUIBuild() & 1) != 0 || ([*(a1 + 416) isForceEnabledByDefaults])
      {
        if (!NFProductIsDevBoard() || *(a1 + 288) == 1) && [*(a1 + 416) isActive] && (sub_1000ECA30(a1, 1))
        {
          v8 = *(a1 + 376);
          if (!v8)
          {
            v32 = v5;
            goto LABEL_14;
          }

          v9 = [*(v8 + 56) readerModeProtectionActive];
          v10 = v5;
          if ((v9 & 1) == 0)
          {
LABEL_14:
            v11 = [*(a1 + 416) getECPFrame];

            dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
            Logger = NFLogGetLogger();
            if (Logger)
            {
              v13 = Logger;
              Class = object_getClass(a1);
              isMetaClass = class_isMetaClass(Class);
              ClassName = object_getClassName(a1);
              Name = sel_getName("defaultRoutingConfig:ecp:");
              v16 = 45;
              if (isMetaClass)
              {
                v16 = 43;
              }

              v13(6, "%c[%{public}s %{public}s]:%i Setting ecp frame for background tag scanning: %{public}@", v16, ClassName, Name, 9564, v11);
            }

            dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
            v17 = NFSharedLogGetLogger();
            if (os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT))
            {
              v18 = object_getClass(a1);
              if (class_isMetaClass(v18))
              {
                v19 = 43;
              }

              else
              {
                v19 = 45;
              }

              *buf = 67110146;
              v37 = v19;
              v38 = 2082;
              v39 = object_getClassName(a1);
              v40 = 2082;
              v41 = sel_getName("defaultRoutingConfig:ecp:");
              v42 = 1024;
              v43 = 9564;
              v44 = 2114;
              v45 = v11;
              _os_log_impl(&_mh_execute_header, v17, OS_LOG_TYPE_DEFAULT, "%c[%{public}s %{public}s]:%i Setting ecp frame for background tag scanning: %{public}@", buf, 0x2Cu);
            }

            v20 = 1;
            goto LABEL_36;
          }

LABEL_35:
          v11 = v10;
          v20 = 0;
LABEL_36:
          v30 = sub_10004C2B0(NFRoutingConfig, v20, v6, v7, 0, a2, v11);

          goto LABEL_37;
        }
      }

      else
      {
        dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
        v21 = NFLogGetLogger();
        if (v21)
        {
          v22 = v21;
          v23 = object_getClass(a1);
          v24 = class_isMetaClass(v23);
          v25 = object_getClassName(a1);
          v35 = sel_getName("backgroundTagDetectAllow");
          v26 = 45;
          if (v24)
          {
            v26 = 43;
          }

          v22(4, "%c[%{public}s %{public}s]:%i Please set override to enable", v26, v25, v35, 2976);
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

          *buf = 67109890;
          v37 = v29;
          v38 = 2082;
          v39 = object_getClassName(a1);
          v40 = 2082;
          v41 = sel_getName("backgroundTagDetectAllow");
          v42 = 1024;
          v43 = 2976;
          _os_log_impl(&_mh_execute_header, v27, OS_LOG_TYPE_ERROR, "%c[%{public}s %{public}s]:%i Please set override to enable", buf, 0x22u);
        }
      }
    }

    v10 = v5;
    goto LABEL_35;
  }

  v30 = 0;
LABEL_37:

  return v30;
}

void sub_1000ED28C(id *a1, void *a2)
{
  v3 = a2;
  v4 = sub_100003068(a1);
  v5 = sub_1000ECE84(a1, v4, v3);

  v6 = [a1 setRoutingConfig:v5];

  if ([v6 code] == 47)
  {
    v7 = [a1 defaultRoutingConfig:3];
    dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
    Logger = NFLogGetLogger();
    if (Logger)
    {
      v9 = Logger;
      Class = object_getClass(a1);
      isMetaClass = class_isMetaClass(Class);
      ClassName = object_getClassName(a1);
      Name = sel_getName("enableDefaultRoutingWithECP:");
      v12 = 45;
      if (isMetaClass)
      {
        v12 = 43;
      }

      v9(6, "%c[%{public}s %{public}s]:%i Retrying to set routing with mode %{public}@", v12, ClassName, Name, 2260, v7);
    }

    dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
    v13 = NFSharedLogGetLogger();
    if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
    {
      v14 = object_getClass(a1);
      if (class_isMetaClass(v14))
      {
        v15 = 43;
      }

      else
      {
        v15 = 45;
      }

      *buf = 67110146;
      v20 = v15;
      v21 = 2082;
      v22 = object_getClassName(a1);
      v23 = 2082;
      v24 = sel_getName("enableDefaultRoutingWithECP:");
      v25 = 1024;
      v26 = 2260;
      v27 = 2114;
      v28 = v7;
      _os_log_impl(&_mh_execute_header, v13, OS_LOG_TYPE_DEFAULT, "%c[%{public}s %{public}s]:%i Retrying to set routing with mode %{public}@", buf, 0x2Cu);
    }

    v16 = [a1 setRoutingConfig:v7];
  }
}

id sub_1000ED4AC(uint64_t a1, void *a2, void *a3, uint64_t a4, void *a5, void *a6, _BYTE *a7, _NFReaderSession **a8)
{
  v13 = a3;
  v75 = a6;
  if (a1)
  {
    v14 = a5;
    v15 = a2;
    v16 = [_NFReaderSession alloc];
    v17 = *(a1 + 240);
    v18 = [v13 uiMode];
    v19 = [v13 sessionType];
    [v13 initialScanText];
    v21 = v20 = v13;
    v22 = [(_NFReaderSession *)v16 initWithRemoteObject:v15 workQueue:v17 whitelist:v14 serviceType:a4 showSharingUI:v18 coreNFCSessionType:v19 scanText:v21];

    if (v22)
    {
      v23 = a4;
      [(_NFSession *)v22 setQueue:a1];
      v24 = v75;
      [(_NFXPCSession *)v22 setConnection:v75];
      [(_NFSession *)v22 setUid:0xFFFFFFFFLL];
      v25 = sub_1001AE20C(NFSystemPowerConsumptionMonitor);
      [(_NFReaderSession *)v22 setPowerConsumptionReporter:v25];

      v26 = a1;
      if ([v20 uiMode])
      {
        v76[0] = _NSConcreteStackBlock;
        v76[1] = 3221225472;
        v76[2] = sub_1000EDC90;
        v76[3] = &unk_100318800;
        v76[4] = a1;
        v76[5] = "_queueHelperReaderSession:sessionConfig:serviceType:whitelist:xpcConnection:isFirstInQueue:outSession:";
        [(_NFReaderSession *)v22 setUiInvalidationHandler:v76];
      }

      [(_NFSession *)v22 setServiceType:v23];
      [(_NFReaderSession *)v22 setDriverWrapper:*(a1 + 376)];
      *a7 = 0;
      v27 = *(a1 + 376);
      if (v27 && [*(v27 + 56) readerModeProtectionActive])
      {
        v28 = [NSError alloc];
        v29 = [NSString stringWithUTF8String:"nfcd"];
        v79[0] = NSLocalizedDescriptionKey;
        v30 = [NSString stringWithUTF8String:"Reader mode temporarily disabled"];
        v80[0] = v30;
        v80[1] = &off_1003314A0;
        v79[1] = @"Line";
        v79[2] = @"Method";
        v31 = v20;
        v32 = [[NSString alloc] initWithFormat:@"%s", sel_getName("_queueHelperReaderSession:sessionConfig:serviceType:whitelist:xpcConnection:isFirstInQueue:outSession:")];
        v80[2] = v32;
        v79[3] = NSDebugDescriptionErrorKey;
        v33 = [[NSString alloc] initWithFormat:@"%s:%d", sel_getName("_queueHelperReaderSession:sessionConfig:serviceType:whitelist:xpcConnection:isFirstInQueue:outSession:"), 2314];
        v80[3] = v33;
        v34 = [NSDictionary dictionaryWithObjects:v80 forKeys:v79 count:4];
        v35 = [v28 initWithDomain:v29 code:47 userInfo:v34];

        v13 = v31;
LABEL_36:

        goto LABEL_37;
      }

      v50 = *(a1 + 184);
      objc_sync_enter(v50);
      if ([(_NFReaderSession *)v22 timeLimitedSession])
      {
        v51 = *(v26 + 328);
        if (v51 >= 1)
        {
          dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
          Logger = NFLogGetLogger();
          if (Logger)
          {
            v53 = Logger;
            Class = object_getClass(v26);
            isMetaClass = class_isMetaClass(Class);
            ClassName = object_getClassName(v26);
            Name = sel_getName("_queueHelperReaderSession:sessionConfig:serviceType:whitelist:xpcConnection:isFirstInQueue:outSession:");
            v57 = 45;
            if (isMetaClass)
            {
              v57 = 43;
            }

            v53(6, "%c[%{public}s %{public}s]:%i MaxReaderSession reached.", v57, ClassName, Name, 2322);
          }

          dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
          v58 = NFSharedLogGetLogger();
          if (os_log_type_enabled(v58, OS_LOG_TYPE_DEFAULT))
          {
            v59 = object_getClass(v26);
            if (class_isMetaClass(v59))
            {
              v60 = 43;
            }

            else
            {
              v60 = 45;
            }

            v61 = object_getClassName(v26);
            v62 = sel_getName("_queueHelperReaderSession:sessionConfig:serviceType:whitelist:xpcConnection:isFirstInQueue:outSession:");
            *buf = 67109890;
            v84 = v60;
            v85 = 2082;
            v86 = v61;
            v87 = 2082;
            v88 = v62;
            v89 = 1024;
            v90 = 2322;
            _os_log_impl(&_mh_execute_header, v58, OS_LOG_TYPE_DEFAULT, "%c[%{public}s %{public}s]:%i MaxReaderSession reached.", buf, 0x22u);
          }

          v63 = [NSError alloc];
          v64 = [NSString stringWithUTF8String:"nfcd"];
          v77 = NSLocalizedDescriptionKey;
          v65 = [NSString stringWithUTF8String:"Busy"];
          v78 = v65;
          v66 = [NSDictionary dictionaryWithObjects:&v78 forKeys:&v77 count:1];
          v35 = [v63 initWithDomain:v64 code:2 userInfo:v66];

          objc_sync_exit(v50);
LABEL_30:
          v13 = v20;
          goto LABEL_36;
        }

        *(v26 + 328) = v51 + 1;
      }

      v67 = [v75 NF_userInfo];
      v68 = [v67 objectForKeyedSubscript:@"ProxyObjects"];
      [v68 addObject:v22];

      if (*(v26 + 120) || [*(v26 + 184) count])
      {
        *a7 = 0;
      }

      else
      {
        *a7 = 1;
        sub_1000DE998(v26, 1);
      }

      v13 = v20;
      [*(v26 + 184) addObject:v22];
      objc_sync_exit(v50);

      v69 = v22;
      v35 = 0;
      *a8 = v22;
      goto LABEL_36;
    }

    v36 = a1;
    dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
    v37 = NFLogGetLogger();
    v24 = v75;
    if (v37)
    {
      v38 = v37;
      v39 = object_getClass(a1);
      v40 = class_isMetaClass(v39);
      v41 = object_getClassName(a1);
      v71 = sel_getName("_queueHelperReaderSession:sessionConfig:serviceType:whitelist:xpcConnection:isFirstInQueue:outSession:");
      v42 = 45;
      if (v40)
      {
        v42 = 43;
      }

      v38(3, "%c[%{public}s %{public}s]:%i Session creation failed.", v42, v41, v71, 2282);
    }

    dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
    v43 = NFSharedLogGetLogger();
    if (os_log_type_enabled(v43, OS_LOG_TYPE_ERROR))
    {
      v44 = object_getClass(v36);
      if (class_isMetaClass(v44))
      {
        v45 = 43;
      }

      else
      {
        v45 = 45;
      }

      *buf = 67109890;
      v84 = v45;
      v85 = 2082;
      v86 = object_getClassName(v36);
      v87 = 2082;
      v88 = sel_getName("_queueHelperReaderSession:sessionConfig:serviceType:whitelist:xpcConnection:isFirstInQueue:outSession:");
      v89 = 1024;
      v90 = 2282;
      _os_log_impl(&_mh_execute_header, v43, OS_LOG_TYPE_ERROR, "%c[%{public}s %{public}s]:%i Session creation failed.", buf, 0x22u);
    }

    v46 = [NSError alloc];
    v47 = [NSString stringWithUTF8String:"nfcd"];
    v81 = NSLocalizedDescriptionKey;
    v48 = [NSString stringWithUTF8String:"Unexpected Result"];
    v82 = v48;
    v49 = [NSDictionary dictionaryWithObjects:&v82 forKeys:&v81 count:1];
    v35 = [v46 initWithDomain:v47 code:13 userInfo:v49];

    goto LABEL_30;
  }

  v35 = 0;
  v24 = v75;
LABEL_37:

  return v35;
}

void sub_1000EDC90(uint64_t a1, void *a2)
{
  v3 = a2;
  dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
  Logger = NFLogGetLogger();
  if (Logger)
  {
    v5 = Logger;
    Class = object_getClass(*(a1 + 32));
    isMetaClass = class_isMetaClass(Class);
    ClassName = object_getClassName(*(a1 + 32));
    Name = sel_getName(*(a1 + 40));
    v10 = [v3 sessionUID];
    v11 = 45;
    if (isMetaClass)
    {
      v11 = 43;
    }

    v5(6, "%c[%{public}s %{public}s]:%i Got invalidation handler (session %@)", v11, ClassName, Name, 2299, v10);
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
    v17 = [v3 sessionUID];
    *buf = 67110146;
    v19 = v14;
    v20 = 2082;
    v21 = v15;
    v22 = 2082;
    v23 = v16;
    v24 = 1024;
    v25 = 2299;
    v26 = 2112;
    v27 = v17;
    _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_DEFAULT, "%c[%{public}s %{public}s]:%i Got invalidation handler (session %@)", buf, 0x2Cu);
  }

  if ([v3 didEnd])
  {
    sub_1000EDE74(*(a1 + 32));
  }
}

void sub_1000EDE74(void *a1)
{
  if (a1)
  {
    v2 = a1[39];
    if (v2)
    {
      a1[39] = v2 - 1;
      v3 = a1[52];

      [v3 resume];
    }

    else
    {
      dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
      Logger = NFLogGetLogger();
      if (Logger)
      {
        v5 = Logger;
        Class = object_getClass(a1);
        isMetaClass = class_isMetaClass(Class);
        ClassName = object_getClassName(a1);
        Name = sel_getName("resumeReaderSessionStart");
        v9 = 45;
        if (isMetaClass)
        {
          v9 = 43;
        }

        v5(3, "%c[%{public}s %{public}s]:%i Suspend count underflow", v9, ClassName, Name, 9877);
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

        *buf = 67109890;
        v15 = v12;
        v16 = 2082;
        v17 = object_getClassName(a1);
        v18 = 2082;
        v19 = sel_getName("resumeReaderSessionStart");
        v20 = 1024;
        v21 = 9877;
        _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_ERROR, "%c[%{public}s %{public}s]:%i Suspend count underflow", buf, 0x22u);
      }
    }
  }
}

void sub_1000EE050(uint64_t a1)
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
    v8 = 45;
    if (isMetaClass)
    {
      v8 = 43;
    }

    v3(6, "%c[%{public}s %{public}s]:%i Resume reader activity after expiration of %@", v8, ClassName, Name, 2378, *(a1 + 40));
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
    v14 = *(a1 + 40);
    *buf = 67110146;
    v16 = v11;
    v17 = 2082;
    v18 = v12;
    v19 = 2082;
    v20 = v13;
    v21 = 1024;
    v22 = 2378;
    v23 = 2112;
    v24 = v14;
    _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEFAULT, "%c[%{public}s %{public}s]:%i Resume reader activity after expiration of %@", buf, 0x2Cu);
  }

  sub_1000EDE74(*(a1 + 32));
}

void sub_1000EE1EC(uint64_t a1)
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
    v8 = 45;
    if (isMetaClass)
    {
      v8 = 43;
    }

    v3(6, "%c[%{public}s %{public}s]:%i Resume reader activity after delay (session %@)", v8, ClassName, Name, 2516, *(a1 + 40));
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
    v14 = *(a1 + 40);
    *buf = 67110146;
    v16 = v11;
    v17 = 2082;
    v18 = v12;
    v19 = 2082;
    v20 = v13;
    v21 = 1024;
    v22 = 2516;
    v23 = 2112;
    v24 = v14;
    _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEFAULT, "%c[%{public}s %{public}s]:%i Resume reader activity after delay (session %@)", buf, 0x2Cu);
  }

  sub_1000EDE74(*(a1 + 32));
}

void sub_1000EE388(id *a1, void *a2, uint64_t a3)
{
  v5 = a2;
  if (a1)
  {
    kdebug_trace();
    v6 = NFSharedSignpostLog();
    if (os_signpost_enabled(v6))
    {
      v7 = [v5 sessionUID];
      *buf = 138412290;
      *&buf[4] = v7;
      _os_signpost_emit_with_name_impl(&_mh_execute_header, v6, OS_SIGNPOST_EVENT, 0xEEEEB0B5B2B2EEEELL, "SESSION_ENDED", "sessionUID=%@", buf, 0xCu);
    }

    v8 = a1[23];
    objc_sync_enter(v8);
    v9 = a1;
    objc_sync_enter(v9);
    v10 = *(v9 + 344);
    objc_sync_exit(v9);

    if (v10 != 1)
    {
      goto LABEL_213;
    }

    v11 = v5;
    objc_opt_class();
    v235 = v5;
    if (objc_opt_isKindOfClass())
    {
      v12 = v11;
      if ([v12 timeLimitedSession])
      {
        v13 = *(v9 + 82);
        v14 = __OFSUB__(v13, 1);
        v15 = v13 - 1;
        if (v15 < 0 == v14)
        {
          *(v9 + 82) = v15;
        }
      }

      if (v9[15] == v12 && [v12 didStart] && objc_msgSend(v12, "uiShown"))
      {
        if ([v12 uiActivated])
        {
          dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
          Logger = NFLogGetLogger();
          if (Logger)
          {
            v17 = Logger;
            Class = object_getClass(v9);
            isMetaClass = class_isMetaClass(Class);
            sel = object_getClassName(v9);
            Name = sel_getName("_dequeueHelperReaderSession:");
            [v12 sessionUID];
            v21 = v20 = a3;
            v22 = 45;
            if (isMetaClass)
            {
              v22 = 43;
            }

            v17(6, "%c[%{public}s %{public}s]:%i Suspend until UI invalidation handler executes for session %@", v22, sel, Name, 2363, v21);

            a3 = v20;
          }

          dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
          v23 = NFSharedLogGetLogger();
          if (os_log_type_enabled(v23, OS_LOG_TYPE_DEFAULT))
          {
            v24 = object_getClass(v9);
            if (class_isMetaClass(v24))
            {
              v25 = 43;
            }

            else
            {
              v25 = 45;
            }

            selb = object_getClassName(v9);
            v26 = a3;
            v27 = sel_getName("_dequeueHelperReaderSession:");
            v28 = [v12 sessionUID];
            *buf = 67110146;
            *&buf[4] = v25;
            *&buf[8] = 2082;
            *&buf[10] = selb;
            *&buf[18] = 2082;
            *&buf[20] = v27;
            a3 = v26;
            *&buf[28] = 1024;
            *&buf[30] = 2363;
            *&buf[34] = 2112;
            *&buf[36] = v28;
            _os_log_impl(&_mh_execute_header, v23, OS_LOG_TYPE_DEFAULT, "%c[%{public}s %{public}s]:%i Suspend until UI invalidation handler executes for session %@", buf, 0x2Cu);
          }

          v9[39] = v9[39] + 1;
          [v9[52] suspend];
        }

        else if (v9[39])
        {
          dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
          v29 = NFLogGetLogger();
          if (v29)
          {
            v30 = v29;
            v31 = object_getClass(v9);
            v32 = class_isMetaClass(v31);
            v33 = a3;
            ClassName = object_getClassName(v9);
            v217 = sel_getName("_dequeueHelperReaderSession:");
            v35 = 45;
            if (v32)
            {
              v35 = 43;
            }

            v216 = ClassName;
            a3 = v33;
            v30(6, "%c[%{public}s %{public}s]:%i Currently under reader suspension", v35, v216, v217, 2367);
          }

          dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
          v36 = NFSharedLogGetLogger();
          if (os_log_type_enabled(v36, OS_LOG_TYPE_DEFAULT))
          {
            v37 = object_getClass(v9);
            if (class_isMetaClass(v37))
            {
              v38 = 43;
            }

            else
            {
              v38 = 45;
            }

            v39 = object_getClassName(v9);
            v40 = sel_getName("_dequeueHelperReaderSession:");
            *buf = 67109890;
            *&buf[4] = v38;
            *&buf[8] = 2082;
            *&buf[10] = v39;
            *&buf[18] = 2082;
            *&buf[20] = v40;
            *&buf[28] = 1024;
            *&buf[30] = 2367;
            _os_log_impl(&_mh_execute_header, v36, OS_LOG_TYPE_DEFAULT, "%c[%{public}s %{public}s]:%i Currently under reader suspension", buf, 0x22u);
          }
        }

        else
        {
          v230 = a3;
          v9[39] = 1;
          [v9[52] suspend];
          v41 = [v12 sessionUID];
          dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
          v42 = NFLogGetLogger();
          if (v42)
          {
            v43 = v42;
            v44 = object_getClass(v9);
            v45 = class_isMetaClass(v44);
            v46 = object_getClassName(v9);
            v218 = sel_getName("_dequeueHelperReaderSession:");
            v47 = 45;
            if (v45)
            {
              v47 = 43;
            }

            v43(6, "%c[%{public}s %{public}s]:%i Suspend reader activity for %fs (session %@)", v47, v46, v218, 2374, 0x3FF8000000000000, v41);
          }

          dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
          v48 = NFSharedLogGetLogger();
          if (os_log_type_enabled(v48, OS_LOG_TYPE_DEFAULT))
          {
            v49 = object_getClass(v9);
            v50 = v41;
            if (class_isMetaClass(v49))
            {
              v51 = 43;
            }

            else
            {
              v51 = 45;
            }

            v52 = object_getClassName(v9);
            v53 = sel_getName("_dequeueHelperReaderSession:");
            *buf = 67110402;
            *&buf[4] = v51;
            v41 = v50;
            *&buf[8] = 2082;
            *&buf[10] = v52;
            *&buf[18] = 2082;
            *&buf[20] = v53;
            *&buf[28] = 1024;
            *&buf[30] = 2374;
            *&buf[34] = 2048;
            *&buf[36] = 0x3FF8000000000000;
            *&buf[44] = 2112;
            *&buf[46] = v50;
            _os_log_impl(&_mh_execute_header, v48, OS_LOG_TYPE_DEFAULT, "%c[%{public}s %{public}s]:%i Suspend reader activity for %fs (session %@)", buf, 0x36u);
          }

          v54 = dispatch_time(0, 1500000000);
          v55 = v9[30];
          *buf = _NSConcreteStackBlock;
          *&buf[8] = 3221225472;
          *&buf[16] = sub_1000EE050;
          *&buf[24] = &unk_100315F80;
          *&buf[40] = v41;
          *&buf[48] = "_dequeueHelperReaderSession:";
          *&buf[32] = v9;
          v56 = v41;
          dispatch_after(v54, v55, buf);

          a3 = v230;
        }
      }
    }

    v57 = v9[15];
    if (v57 == v11)
    {
      v227 = [v57 conformsToProtocol:&OBJC_PROTOCOL___NFContactlessPaymentSessionInterface];
      objc_opt_class();
      isKindOfClass = objc_opt_isKindOfClass();
      if ([a1[23] count] <= 1 && (v69 = v9[3]) != 0)
      {
        if (*(v69 + 19) == 1)
        {
          v70 = 1;
        }

        else
        {
          v70 = v69[179];
        }

        sela = v70;
      }

      else
      {
        sela = 0;
      }

      v78 = sub_1000DE198(v9);
      sub_1000E2158(v9, v78);
      v79 = v11;
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        v80 = v9[15];
        if (v80 == v79)
        {
          v81 = [v80 hostCardEmulationLog];
          v82 = v9[25];
          v9[25] = v81;
        }
      }

      v83 = v79;
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        *(v9 + 352) = 0;
      }

      v231 = a3;

      v84 = v83;
      v228 = [v84 sessionUID];
      objc_opt_class();
      v85 = objc_opt_isKindOfClass();
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        v86 = 1;
      }

      else
      {
        objc_opt_class();
        v86 = objc_opt_isKindOfClass();
      }

      objc_opt_class();
      v87 = objc_opt_isKindOfClass();
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        v88 = [v84 suspendOnFieldList];
        v89 = [v88 count] != 0;
      }

      else
      {
        v89 = 0;
      }

      if (((v85 | v86 | v87) & 1) != 0 || v89)
      {
        if (v9[39])
        {
          dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
          v90 = NFLogGetLogger();
          if (v90)
          {
            v91 = v90;
            v92 = object_getClass(v9);
            v93 = class_isMetaClass(v92);
            v94 = object_getClassName(v9);
            v219 = sel_getName("_dequeueHelperSessionAffectingBackgroundTagReading:");
            v95 = 45;
            if (v93)
            {
              v95 = 43;
            }

            v91(6, "%c[%{public}s %{public}s]:%i Currently under reader suspension", v95, v94, v219, 2492);
          }

          dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
          v96 = NFSharedLogGetLogger();
          if (os_log_type_enabled(v96, OS_LOG_TYPE_DEFAULT))
          {
            v97 = object_getClass(v9);
            if (class_isMetaClass(v97))
            {
              v98 = 43;
            }

            else
            {
              v98 = 45;
            }

            v99 = object_getClassName(v9);
            v100 = sel_getName("_dequeueHelperSessionAffectingBackgroundTagReading:");
            *buf = 67109890;
            *&buf[4] = v98;
            *&buf[8] = 2082;
            *&buf[10] = v99;
            *&buf[18] = 2082;
            *&buf[20] = v100;
            *&buf[28] = 1024;
            *&buf[30] = 2492;
            _os_log_impl(&_mh_execute_header, v96, OS_LOG_TYPE_DEFAULT, "%c[%{public}s %{public}s]:%i Currently under reader suspension", buf, 0x22u);
          }
        }

        else
        {
          v9[39] = 1;
          [v9[52] suspend];
          if (v89)
          {
            v112 = 1.0;
          }

          else
          {
            v112 = 4.0;
          }

          if (NFIsInternalBuild())
          {
            v113 = [[NSUserDefaults alloc] initWithSuiteName:@"com.apple.stockholm"];
            v114 = [v113 objectForKey:@"seReaderSessionToBGTagReaderDelay"];

            if (v114)
            {
              [v113 floatForKey:@"seReaderSessionToBGTagReaderDelay"];
              v112 = v115;
              if (v115 > 10.0)
              {
                dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
                v116 = NFLogGetLogger();
                if (v116)
                {
                  v117 = v116;
                  v118 = object_getClass(v9);
                  v119 = class_isMetaClass(v118);
                  v120 = object_getClassName(v9);
                  v221 = sel_getName("_dequeueHelperSessionAffectingBackgroundTagReading:");
                  v121 = 45;
                  if (v119)
                  {
                    v121 = 43;
                  }

                  v117(4, "%c[%{public}s %{public}s]:%i seReaderSessionToBGTagReaderDelay (%fs) is too large - using %fs instead", v121, v120, v221, 2506, *&v112, 0x4024000000000000);
                }

                dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
                v122 = NFSharedLogGetLogger();
                if (os_log_type_enabled(v122, OS_LOG_TYPE_ERROR))
                {
                  v123 = object_getClass(v9);
                  if (class_isMetaClass(v123))
                  {
                    v124 = 43;
                  }

                  else
                  {
                    v124 = 45;
                  }

                  v125 = object_getClassName(v9);
                  v126 = sel_getName("_dequeueHelperSessionAffectingBackgroundTagReading:");
                  *buf = 67110402;
                  *&buf[4] = v124;
                  *&buf[8] = 2082;
                  *&buf[10] = v125;
                  *&buf[18] = 2082;
                  *&buf[20] = v126;
                  *&buf[28] = 1024;
                  *&buf[30] = 2506;
                  *&buf[34] = 2048;
                  *&buf[36] = v112;
                  *&buf[44] = 2048;
                  *&buf[46] = 0x4024000000000000;
                  _os_log_impl(&_mh_execute_header, v122, OS_LOG_TYPE_ERROR, "%c[%{public}s %{public}s]:%i seReaderSessionToBGTagReaderDelay (%fs) is too large - using %fs instead", buf, 0x36u);
                }

                v112 = 10.0;
              }
            }
          }

          dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
          v127 = NFLogGetLogger();
          if (v127)
          {
            v128 = v127;
            v129 = object_getClass(v9);
            v130 = class_isMetaClass(v129);
            v131 = object_getClassName(v9);
            v222 = sel_getName("_dequeueHelperSessionAffectingBackgroundTagReading:");
            v132 = 45;
            if (v130)
            {
              v132 = 43;
            }

            v128(6, "%c[%{public}s %{public}s]:%i Suspend reader activity for %fs (session %@)", v132, v131, v222, 2512, *&v112, v228);
          }

          dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
          v133 = NFSharedLogGetLogger();
          if (os_log_type_enabled(v133, OS_LOG_TYPE_DEFAULT))
          {
            v134 = object_getClass(v9);
            if (class_isMetaClass(v134))
            {
              v135 = 43;
            }

            else
            {
              v135 = 45;
            }

            v136 = object_getClassName(v9);
            v137 = sel_getName("_dequeueHelperSessionAffectingBackgroundTagReading:");
            *buf = 67110402;
            *&buf[4] = v135;
            *&buf[8] = 2082;
            *&buf[10] = v136;
            *&buf[18] = 2082;
            *&buf[20] = v137;
            *&buf[28] = 1024;
            *&buf[30] = 2512;
            *&buf[34] = 2048;
            *&buf[36] = v112;
            *&buf[44] = 2112;
            *&buf[46] = v228;
            _os_log_impl(&_mh_execute_header, v133, OS_LOG_TYPE_DEFAULT, "%c[%{public}s %{public}s]:%i Suspend reader activity for %fs (session %@)", buf, 0x36u);
          }

          v138 = dispatch_time(0, (v112 * 1000000000.0));
          v139 = v9[30];
          *buf = _NSConcreteStackBlock;
          *&buf[8] = 3221225472;
          *&buf[16] = sub_1000EE1EC;
          *&buf[24] = &unk_100315F80;
          *&buf[32] = v9;
          *&buf[48] = "_dequeueHelperSessionAffectingBackgroundTagReading:";
          *&buf[40] = v228;
          dispatch_after(v138, v139, buf);
        }
      }

      v140 = v9[47];
      if (v140)
      {
        v140[177] = 0;
      }

      v141 = [NSError alloc];
      v142 = [NSString stringWithUTF8String:"nfcd"];
      v243 = NSLocalizedDescriptionKey;
      v143 = [NSString stringWithUTF8String:"Aborted"];
      v244 = v143;
      v144 = [NSDictionary dictionaryWithObjects:&v244 forKeys:&v243 count:1];
      v145 = [v141 initWithDomain:v142 code:3 userInfo:v144];
      [v84 didEndSession:v145];

      v146 = v9[15];
      v9[15] = 0;

      sub_1001EA490(v9);
      dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
      v147 = NFLogGetLogger();
      v148 = v231;
      if (v147)
      {
        v149 = v147;
        v150 = object_getClass(v9);
        v151 = class_isMetaClass(v150);
        v152 = object_getClassName(v9);
        v153 = sel_getName("_dequeueSession:startNextSession:");
        v154 = 43;
        if (!v151)
        {
          v154 = 45;
        }

        v149(6, "%c[%{public}s %{public}s]:%i startNextSession=%d,_systemWillSleep=%d,_powerCycleAfterThisSession=%d,nextIsExpress=%d", v154, v152, v153, 2579, v231, *(v9 + 351), *(v9 + 355), sela & 1);
      }

      dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
      v155 = NFSharedLogGetLogger();
      if (os_log_type_enabled(v155, OS_LOG_TYPE_DEFAULT))
      {
        v156 = object_getClass(v9);
        if (class_isMetaClass(v156))
        {
          v157 = 43;
        }

        else
        {
          v157 = 45;
        }

        v158 = object_getClassName(v9);
        v159 = sel_getName("_dequeueSession:startNextSession:");
        v160 = *(v9 + 351);
        v161 = *(v9 + 355);
        *buf = 67110914;
        *&buf[4] = v157;
        *&buf[8] = 2082;
        *&buf[10] = v158;
        *&buf[18] = 2082;
        *&buf[20] = v159;
        *&buf[28] = 1024;
        *&buf[30] = 2579;
        *&buf[34] = 1024;
        *&buf[36] = v231;
        *&buf[40] = 1024;
        *&buf[42] = v160;
        *&buf[46] = 1024;
        *&buf[48] = v161;
        *&buf[52] = 1024;
        *&buf[54] = sela & 1;
        _os_log_impl(&_mh_execute_header, v155, OS_LOG_TYPE_DEFAULT, "%c[%{public}s %{public}s]:%i startNextSession=%d,_systemWillSleep=%d,_powerCycleAfterThisSession=%d,nextIsExpress=%d", buf, 0x3Au);
      }

      if ([a1[23] count])
      {
        if (v231)
        {
          v162 = [a1[23] objectAtIndex:0];
          v163 = [v162 conformsToProtocol:&OBJC_PROTOCOL___NFContactlessPaymentSessionInterface];
        }

        else
        {
          v163 = 0;
        }

        v165 = 1;
      }

      else
      {
        v164 = v9[3];
        if (v164)
        {
          if (v164[19] == 1)
          {
            v165 = 1;
            v163 = 1;
          }

          else
          {
            v165 = *(v164 + 179);
            v163 = v165;
          }
        }

        else
        {
          v165 = 0;
          v163 = 0;
        }
      }

      v166 = *(v9 + 355);
      v167 = [v9[49] siliconName] < 7;
      if ([v9[49] siliconName] <= 0xD && ((v166 & v165 | v167 & (v227 & v163 ^ 1)) & 1) != 0)
      {
        *(v9 + 355) = 0;
        v168 = +[NSUserDefaults standardUserDefaults];
        v169 = [v168 BOOLForKey:@"DontPowerCycle"];

        dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
        v170 = NFLogGetLogger();
        v171 = v170;
        if (v169)
        {
          if (v170)
          {
            v172 = object_getClass(v9);
            v173 = class_isMetaClass(v172);
            v174 = object_getClassName(v9);
            v223 = sel_getName("_dequeueHelperPowerCycle:startNextSession:");
            v175 = 45;
            if (v173)
            {
              v175 = 43;
            }

            v171(4, "%c[%{public}s %{public}s]:%i Defaults override of power cycling SE", v175, v174, v223, 2436);
          }

          dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
          v176 = NFSharedLogGetLogger();
          if (os_log_type_enabled(v176, OS_LOG_TYPE_ERROR))
          {
            v177 = object_getClass(v9);
            if (class_isMetaClass(v177))
            {
              v178 = 43;
            }

            else
            {
              v178 = 45;
            }

            v179 = object_getClassName(v9);
            v180 = sel_getName("_dequeueHelperPowerCycle:startNextSession:");
            *buf = 67109890;
            *&buf[4] = v178;
            *&buf[8] = 2082;
            *&buf[10] = v179;
            *&buf[18] = 2082;
            *&buf[20] = v180;
            *&buf[28] = 1024;
            *&buf[30] = 2436;
            _os_log_impl(&_mh_execute_header, v176, OS_LOG_TYPE_ERROR, "%c[%{public}s %{public}s]:%i Defaults override of power cycling SE", buf, 0x22u);
          }
        }

        else
        {
          if (v170)
          {
            v181 = object_getClass(v9);
            v182 = class_isMetaClass(v181);
            v183 = object_getClassName(v9);
            v224 = sel_getName("_dequeueHelperPowerCycle:startNextSession:");
            v184 = 45;
            if (v182)
            {
              v184 = 43;
            }

            v171(6, "%c[%{public}s %{public}s]:%i Restarting eSE", v184, v183, v224, 2438);
          }

          dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
          v185 = NFSharedLogGetLogger();
          if (os_log_type_enabled(v185, OS_LOG_TYPE_DEFAULT))
          {
            v186 = object_getClass(v9);
            if (class_isMetaClass(v186))
            {
              v187 = 43;
            }

            else
            {
              v187 = 45;
            }

            v188 = object_getClassName(v9);
            v189 = sel_getName("_dequeueHelperPowerCycle:startNextSession:");
            *buf = 67109890;
            *&buf[4] = v187;
            *&buf[8] = 2082;
            *&buf[10] = v188;
            *&buf[18] = 2082;
            *&buf[20] = v189;
            *&buf[28] = 1024;
            *&buf[30] = 2438;
            _os_log_impl(&_mh_execute_header, v185, OS_LOG_TYPE_DEFAULT, "%c[%{public}s %{public}s]:%i Restarting eSE", buf, 0x22u);
          }

          v190 = [v9 powerCycleSE:v9[48]];
        }

        v148 = v231;
      }

      sub_10003AE30(v9[3], 0);
      if (sela)
      {
        sub_10002E9BC(v9[3]);
      }

      else if ((isKindOfClass & 1) == 0)
      {
        sub_100035ABC(v9[3]);
      }

      v191 = [v84 parentToken];

      if (v191)
      {
        v148 |= sub_1001DF43C(v9, v84) ^ 1;
      }

      if (*(v9 + 363) == 1)
      {
        sub_10021CC94(v9[47], @"Session");
        [v9 maybeStartNextSession];
      }

      else
      {
        if (v148 && (*(v9 + 351) & 1) == 0)
        {
          [v9 maybeStartNextSession];
        }

        else
        {
          sub_10000453C(v9);
        }

        v192 = sub_100003068(v9);
        v193 = sub_100093D80(v9, v192);
        if ((v148 & 1) == 0)
        {
          sub_1000ED28C(v9, 0);
        }

        sub_10021CC94(v9[47], @"Session");
      }

      if (*(v9 + 351) == 1)
      {
        v194 = v9[3];
        if (!v194 || (v194[181] & 1) == 0)
        {
          v195 = NFSharedSignpostLog();
          if (os_signpost_enabled(v195))
          {
            *buf = 0;
            _os_signpost_emit_with_name_impl(&_mh_execute_header, v195, OS_SIGNPOST_EVENT, 0xEEEEB0B5B2B2EEEELL, "_dequeueSession: allowing to sleep", &unk_1002E8B7A, buf, 2u);
          }

          [v9[8] allowSleep];
        }
      }
    }

    else
    {
      if ([a1[23] containsObject:v11])
      {
        [a1[23] removeObject:v11];
        v58 = [NSError alloc];
        v59 = [NSString stringWithUTF8String:"nfcd"];
        v240 = NSLocalizedDescriptionKey;
        v60 = [NSString stringWithUTF8String:"Aborted"];
        v241 = v60;
        v61 = 1;
        v62 = [NSDictionary dictionaryWithObjects:&v241 forKeys:&v240 count:1];
        v63 = [v58 initWithDomain:v59 code:3 userInfo:v62];
        [v11 didEndSession:v63];

LABEL_189:
        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          v197 = [v11 connection];
          if (v197)
          {
            v198 = v61;
          }

          else
          {
            v198 = 0;
          }

          if (v198 == 1)
          {
            v199 = objc_getProperty(v9, v196, 176, 1);
            objc_sync_enter(v199);
            v200 = [v197 NF_userInfo];
            v201 = [v200 objectForKeyedSubscript:@"CurrentSessionCount"];

            v202 = +[NSNumber numberWithUnsignedLongLong:](NSNumber, "numberWithUnsignedLongLong:", [v201 unsignedLongLongValue] - 1);

            v203 = [v197 NF_userInfo];
            [v203 setObject:v202 forKeyedSubscript:@"CurrentSessionCount"];

            objc_sync_exit(v199);
          }
        }

        else
        {
          v197 = 0;
        }

        sub_1000EC998(v11, v197);
        v5 = v235;
        if (!v9[15] && ![a1[23] count])
        {
          sub_1000DE998(v9, 0);
        }

        sub_100008AA4(v9);
        v204 = v9[52];
        [v204 releaseECPOption:{objc_msgSend(v11, "backgroundTagReadEcpOption")}];

        if ([v11 backgroundTagReadEcpOption] == 1 && !v9[15] && objc_msgSend(v9[52], "isActive"))
        {
          dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
          v205 = NFLogGetLogger();
          if (v205)
          {
            v206 = v205;
            v207 = object_getClass(v9);
            v208 = class_isMetaClass(v207);
            v209 = object_getClassName(v9);
            v225 = sel_getName("_dequeueSession:startNextSession:");
            v210 = 45;
            if (v208)
            {
              v210 = 43;
            }

            v206(6, "%c[%{public}s %{public}s]:%i Refresh background tag reading to update VAS", v210, v209, v225, 2676);
          }

          dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
          v211 = NFSharedLogGetLogger();
          if (os_log_type_enabled(v211, OS_LOG_TYPE_DEFAULT))
          {
            v212 = object_getClass(v9);
            if (class_isMetaClass(v212))
            {
              v213 = 43;
            }

            else
            {
              v213 = 45;
            }

            v214 = object_getClassName(v9);
            v215 = sel_getName("_dequeueSession:startNextSession:");
            *buf = 67109890;
            *&buf[4] = v213;
            *&buf[8] = 2082;
            *&buf[10] = v214;
            *&buf[18] = 2082;
            *&buf[20] = v215;
            *&buf[28] = 1024;
            *&buf[30] = 2676;
            _os_log_impl(&_mh_execute_header, v211, OS_LOG_TYPE_DEFAULT, "%c[%{public}s %{public}s]:%i Refresh background tag reading to update VAS", buf, 0x22u);
          }

          [v9 maybeStartNextSession];
        }

LABEL_213:
        objc_sync_exit(v8);

        goto LABEL_214;
      }

      if ([v9[24] containsObject:v11])
      {
        sub_1001DF8E8(v9, v11);
        [v9[24] removeObject:v11];
        v64 = [NSError alloc];
        v65 = [NSString stringWithUTF8String:"nfcd"];
        v238 = NSLocalizedDescriptionKey;
        v66 = [NSString stringWithUTF8String:"Aborted"];
        v239 = v66;
        v61 = 1;
        v67 = [NSDictionary dictionaryWithObjects:&v239 forKeys:&v238 count:1];
        v68 = [v64 initWithDomain:v65 code:3 userInfo:v67];
        [v11 didEndSession:v68];

        goto LABEL_189;
      }

      if (![v11 isFeatureSupported:4])
      {
        dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
        v101 = NFLogGetLogger();
        if (v101)
        {
          v102 = v101;
          v103 = object_getClass(v9);
          v104 = class_isMetaClass(v103);
          v105 = object_getClassName(v9);
          v220 = sel_getName("_dequeueSession:startNextSession:");
          v106 = 45;
          if (v104)
          {
            v106 = 43;
          }

          v102(4, "%c[%{public}s %{public}s]:%i Session is not active or queued", v106, v105, v220, 2649);
        }

        dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
        v107 = NFSharedLogGetLogger();
        if (os_log_type_enabled(v107, OS_LOG_TYPE_ERROR))
        {
          v108 = object_getClass(v9);
          if (class_isMetaClass(v108))
          {
            v109 = 43;
          }

          else
          {
            v109 = 45;
          }

          v110 = object_getClassName(v9);
          v111 = sel_getName("_dequeueSession:startNextSession:");
          *buf = 67109890;
          *&buf[4] = v109;
          *&buf[8] = 2082;
          *&buf[10] = v110;
          *&buf[18] = 2082;
          *&buf[20] = v111;
          *&buf[28] = 1024;
          *&buf[30] = 2649;
          _os_log_impl(&_mh_execute_header, v107, OS_LOG_TYPE_ERROR, "%c[%{public}s %{public}s]:%i Session is not active or queued", buf, 0x22u);
        }

        v61 = 0;
        goto LABEL_189;
      }

      v71 = [NSError alloc];
      v72 = [NSString stringWithUTF8String:"nfcd"];
      v236 = NSLocalizedDescriptionKey;
      v73 = [NSString stringWithUTF8String:"Aborted"];
      v237 = v73;
      v74 = [NSDictionary dictionaryWithObjects:&v237 forKeys:&v236 count:1];
      v75 = [v71 initWithDomain:v72 code:3 userInfo:v74];
      [v11 didEndSession:v75];

      v76 = v11;
      v77 = [v9[2] containsFieldDetectSession:v76];
      [v9[2] removeFieldDetectSession:v76];
      if (!v9[15] && v77)
      {
        [v9 maybeStartNextSession];
      }
    }

    v61 = 1;
    goto LABEL_189;
  }

LABEL_214:
}

void sub_1000F025C(uint64_t a1)
{
  dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
  Logger = NFLogGetLogger();
  if (Logger)
  {
    Logger(6, "%s:%i Unregistering key bag handler after unlock", "[_NFHardwareManager lockStateChanged]_block_invoke", 2849);
  }

  dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
  v3 = NFSharedLogGetLogger();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136446466;
    v5 = "[_NFHardwareManager lockStateChanged]_block_invoke";
    v6 = 1024;
    v7 = 2849;
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "%{public}s:%i Unregistering key bag handler after unlock", buf, 0x12u);
  }

  sub_100207470(*(*(a1 + 32) + 96));
}

id sub_1000F0368(uint64_t a1)
{
  dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
  Logger = NFLogGetLogger();
  if (Logger)
  {
    Logger(6, "%s:%i Lock state changed", "[_NFHardwareManager lockStateChanged]_block_invoke", 2857);
  }

  dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
  v3 = NFSharedLogGetLogger();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136446466;
    v6 = "[_NFHardwareManager lockStateChanged]_block_invoke";
    v7 = 1024;
    v8 = 2857;
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "%{public}s:%i Lock state changed", buf, 0x12u);
  }

  return [*(a1 + 32) maybeStartNextSession];
}

void sub_1000F0470(void *a1, int a2, uint64_t a3)
{
  if (a1)
  {
    if ((a3 & 0xFFFFFFFFFFFFFFFDLL) != 0)
    {
      dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
      Logger = NFLogGetLogger();
      if (Logger)
      {
        v6 = Logger;
        Class = object_getClass(a1);
        isMetaClass = class_isMetaClass(Class);
        ClassName = object_getClassName(a1);
        Name = sel_getName("processRestrictedModeState:os:");
        v9 = 45;
        if (isMetaClass)
        {
          v9 = 43;
        }

        v6(6, "%c[%{public}s %{public}s]:%i Ignoring restricted mode for %ld", v9, ClassName, Name, 2901, a3);
      }

      dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
      v10 = NFSharedLogGetLogger();
      if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
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

        *buf = 67110146;
        v41 = v12;
        v42 = 2082;
        v43 = object_getClassName(a1);
        v44 = 2082;
        v45 = sel_getName("processRestrictedModeState:os:");
        v46 = 1024;
        v47 = 2901;
        v48 = 2048;
        v49 = a3;
        _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEFAULT, "%c[%{public}s %{public}s]:%i Ignoring restricted mode for %ld", buf, 0x2Cu);
      }
    }

    else
    {
      v14 = a1;
      objc_sync_enter(v14);
      if (*(v14 + 352))
      {
        objc_sync_exit(v14);
      }

      else
      {
        *(v14 + 352) = 1;
        objc_sync_exit(v14);

        if (a2 == 1)
        {
          os_unfair_lock_lock(v14 + 12);
          [*(v14 + 5) _setIsInRestrictedMode:1];
          v15 = [*(v14 + 5) platformIdentifier];
          os_unfair_lock_unlock(v14 + 12);
          if (v15)
          {
            v16 = objc_opt_new();
            v17 = [NSNumber numberWithUnsignedInt:sub_1000E1E20(v14)];
            [v16 setObject:v17 forKeyedSubscript:@"hardwareType"];

            v18 = [v14 lastKnownRoutingConfig];
            v19 = +[NSNumber numberWithInt:](NSNumber, "numberWithInt:", [v18 embeddedMode] == 2);
            [v16 setObject:v19 forKeyedSubscript:@"contactless"];

            [v16 setObject:v15 forKeyedSubscript:@"platformIdentifier"];
            [NFExceptionsCALogger postAnalyticsSERestrictedModeEntered:v16];
          }
        }

        if ((*(v14 + 354) & 1) == 0)
        {
          *(v14 + 354) = 1;
          v20 = +[NSDistributedNotificationCenter defaultCenter];
          [v20 postNotificationName:@"com.apple.nfcd.se.restricted" object:0 userInfo:0 options:3];

          v21 = NFSharedSignpostLog();
          if (os_signpost_enabled(v21))
          {
            *buf = 0;
            _os_signpost_emit_with_name_impl(&_mh_execute_header, v21, OS_SIGNPOST_EVENT, 0xEEEEB0B5B2B2EEEELL, "SE_RESTRICTED_NOTIFICATION", "com.apple.nfcd.se.restricted", buf, 2u);
          }
        }

        v22 = *(v14 + 3);
        if (v22 && v22[181] == 1)
        {
          sub_100007EE0(v22);
          v23 = +[NFPowerAssertion sharedPowerAssertion];
          [v23 releasePowerAssertion:@"ExpressMode"];
        }

        v24 = *(v14 + 30);
        v25 = sub_10004BF2C(NFRoutingConfig);
        v38[0] = _NSConcreteStackBlock;
        v38[1] = 3221225472;
        v38[2] = sub_1000F096C;
        v38[3] = &unk_100318738;
        v38[4] = v14;
        v26 = [_NFBuiltinSession createSession:@"AC Log" workQueue:v24 routing:v25 sessionQueuer:v14 didStartWork:v38];
      }

      v10 = sub_100003548(v14);
      v34 = 0u;
      v35 = 0u;
      v36 = 0u;
      v37 = 0u;
      v27 = [v10 allValues];
      v28 = [v27 countByEnumeratingWithState:&v34 objects:v39 count:16];
      if (v28)
      {
        v29 = v28;
        v30 = *v35;
        do
        {
          for (i = 0; i != v29; i = i + 1)
          {
            if (*v35 != v30)
            {
              objc_enumerationMutation(v27);
            }

            [*(*(&v34 + 1) + 8 * i) secureElementWithIdentifier:@"embedded" didChangeRestrictedMode:1];
          }

          v29 = [v27 countByEnumeratingWithState:&v34 objects:v39 count:16];
        }

        while (v29);
      }
    }
  }
}

void sub_1000F0974(void *a1, char *name)
{
  if (a1)
  {
    v4 = notify_post(name);
    if (v4)
    {
      v5 = v4;
      dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
      Logger = NFLogGetLogger();
      if (Logger)
      {
        v7 = Logger;
        Class = object_getClass(a1);
        isMetaClass = class_isMetaClass(Class);
        ClassName = object_getClassName(a1);
        v18 = sel_getName("_postEvent:");
        v11 = 45;
        if (isMetaClass)
        {
          v11 = 43;
        }

        v7(3, "%c[%{public}s %{public}s]:%i Failed to notify %s: %d", v11, ClassName, v18, 2990, name, v5);
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

        *buf = 67110402;
        v20 = v14;
        v21 = 2082;
        v22 = object_getClassName(a1);
        v23 = 2082;
        v24 = sel_getName("_postEvent:");
        v25 = 1024;
        v26 = 2990;
        v27 = 2080;
        v28 = name;
        v29 = 1024;
        v30 = v5;
        _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_ERROR, "%c[%{public}s %{public}s]:%i Failed to notify %s: %d", buf, 0x32u);
      }
    }

    v15 = +[NFSecureXPCEventPublisherManager sharedManager];
    v16 = [v15 wallet];
    v17 = [[NSString alloc] initWithUTF8String:name];
    if (v16)
    {
      sub_100235394(v16, v17, 1);
    }
  }
}

void sub_1000F0B88(void *a1, void *a2, void *a3)
{
  v5 = a3;
  if (a1)
  {
    dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
    Logger = NFLogGetLogger();
    if (Logger)
    {
      v7 = Logger;
      Class = object_getClass(a1);
      isMetaClass = class_isMetaClass(Class);
      ClassName = object_getClassName(a1);
      Name = sel_getName("_postEvent:identifier:additionalData:");
      v10 = 45;
      if (isMetaClass)
      {
        v10 = 43;
      }

      v7(6, "%c[%{public}s %{public}s]:%i posting notification: %s with additional data.", v10, ClassName, Name, 3000, a2);
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

      *buf = 67110146;
      v35 = v13;
      v36 = 2082;
      v37 = object_getClassName(a1);
      v38 = 2082;
      v39 = sel_getName("_postEvent:identifier:additionalData:");
      v40 = 1024;
      v41 = 3000;
      v42 = 2080;
      v43 = a2;
      _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_DEFAULT, "%c[%{public}s %{public}s]:%i posting notification: %s with additional data.", buf, 0x2Cu);
    }

    v14 = [[NSString alloc] initWithUTF8String:a2];
    v15 = +[NSDistributedNotificationCenter defaultCenter];
    [v15 postNotificationName:v14 object:v5 userInfo:0 options:3];

    v16 = objc_alloc_init(NSMutableDictionary);
    [v16 setObject:v14 forKeyedSubscript:@"xpcEventName"];
    [v16 setObject:v5 forKeyedSubscript:@"xpcEventSimpleString"];
    dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
    v17 = NFLogGetLogger();
    if (v17)
    {
      v18 = v17;
      v19 = object_getClass(a1);
      v20 = class_isMetaClass(v19);
      v31 = object_getClassName(a1);
      v33 = sel_getName("_postEvent:identifier:additionalData:");
      v21 = 45;
      if (v20)
      {
        v21 = 43;
      }

      v18(6, "%c[%{public}s %{public}s]:%i XpcPayload %{public}@", v21, v31, v33, 3017, v16);
    }

    dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
    v22 = NFSharedLogGetLogger();
    if (os_log_type_enabled(v22, OS_LOG_TYPE_DEFAULT))
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
      v26 = sel_getName("_postEvent:identifier:additionalData:");
      *buf = 67110146;
      v35 = v24;
      v36 = 2082;
      v37 = v25;
      v38 = 2082;
      v39 = v26;
      v40 = 1024;
      v41 = 3017;
      v42 = 2114;
      v43 = v16;
      _os_log_impl(&_mh_execute_header, v22, OS_LOG_TYPE_DEFAULT, "%c[%{public}s %{public}s]:%i XpcPayload %{public}@", buf, 0x2Cu);
    }

    v27 = +[NFSecureXPCEventPublisherManager sharedManager];
    v28 = [v27 wallet];
    v29 = v28;
    if (v28)
    {
      sub_100235634(v28, v16, 1);
    }
  }
}

uint64_t sub_1000F15E0(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = v3;
  if (a1)
  {
    if (!v3 || (objc_opt_class(), (objc_opt_isKindOfClass())) && ([v4 objectForKeyedSubscript:@"session.prevent.ui.popup.on.radio.disabled"], v5 = objc_claimAutoreleasedReturnValue(), objc_opt_class(), isKindOfClass = objc_opt_isKindOfClass(), v5, (isKindOfClass))
    {
      v7 = [v4 objectForKeyedSubscript:@"session.prevent.ui.popup.on.radio.disabled"];
      a1 = [v7 BOOLValue] ^ 1;
    }

    else
    {
      a1 = 0;
    }
  }

  return a1;
}

NSMutableArray *sub_1000F16A4(uint64_t a1, void *a2)
{
  v3 = a2;
  if (a1)
  {
    v13 = objc_opt_new();
    if ([v3 count])
    {
      v16 = 0u;
      v17 = 0u;
      v14 = 0u;
      v15 = 0u;
      v4 = v3;
      v5 = [v4 countByEnumeratingWithState:&v14 objects:v20 count:16];
      if (v5)
      {
        v6 = v5;
        v7 = *v15;
        do
        {
          for (i = 0; i != v6; i = i + 1)
          {
            if (*v15 != v7)
            {
              objc_enumerationMutation(v4);
            }

            v9 = *(*(&v14 + 1) + 8 * i);
            objc_opt_class();
            if ((objc_opt_isKindOfClass() & 1) != 0 && [v9 length])
            {
              v18[0] = @"ECPData";
              v18[1] = @"IgnoreRFTechOnIsEqual";
              v19[0] = v9;
              v19[1] = &off_100331458;
              v10 = [NSDictionary dictionaryWithObjects:v19 forKeys:v18 count:2];
              v11 = [NFFieldNotification notificationWithDictionary:v10];

              if (v11)
              {
                [v13 addObject:v11];
              }
            }
          }

          v6 = [v4 countByEnumeratingWithState:&v14 objects:v20 count:16];
        }

        while (v6);
      }
    }
  }

  else
  {
    v13 = 0;
  }

  return v13;
}

void sub_1000F1988(uint64_t a1)
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
    v8 = 45;
    if (isMetaClass)
    {
      v8 = 43;
    }

    v3(6, "%c[%{public}s %{public}s]:%i Refresh express setting due to domain change=%@", v8, ClassName, Name, 3154, *(a1 + 40));
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
    v14 = *(a1 + 40);
    *buf = 67110146;
    v17 = v11;
    v18 = 2082;
    v19 = v12;
    v20 = 2082;
    v21 = v13;
    v22 = 1024;
    v23 = 3154;
    v24 = 2112;
    v25 = v14;
    _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEFAULT, "%c[%{public}s %{public}s]:%i Refresh express setting due to domain change=%@", buf, 0x2Cu);
  }

  sub_100036290(*(*(a1 + 32) + 24));
  v15 = +[_NFHardwareManager sharedHardwareManager];
  [v15 maybeStartNextSession];
}

void sub_1000F1BDC(uint64_t a1)
{
  if (sub_100003384(*(a1 + 32)) == 2 || sub_100003384(*(a1 + 32)) == 5)
  {
    v2 = *(*(a1 + 40) + 16);

    v2();
  }

  else
  {
    v3 = *(a1 + 40);
    v4 = [NSError alloc];
    v5 = [NSString stringWithUTF8String:"nfcd"];
    v9 = NSLocalizedDescriptionKey;
    v6 = [NSString stringWithUTF8String:"Unresponsive hardware"];
    v10 = v6;
    v7 = [NSDictionary dictionaryWithObjects:&v10 forKeys:&v9 count:1];
    v8 = [v4 initWithDomain:v5 code:58 userInfo:v7];
    (*(v3 + 16))(v3, 0, v8);
  }
}

void sub_1000F1E18(uint64_t a1)
{
  v1 = *(a1 + 48);
  v2 = *(a1 + 32);
  v8 = *(a1 + 40);
  if (v2)
  {
    v3 = *(v2 + 24);
    if (v3)
    {
      v4 = *(v3 + 152);
    }

    else
    {
      v4 = 0;
    }

    v5 = sub_100006030(v3);
    if (v1)
    {
      v6 = sub_10003A754(*(v2 + 24));
      if ((v1 & 2) != 0)
      {
LABEL_6:
        v7 = sub_100006D58(*(v2 + 24));
        v8[2](v8, v4, v5, v6, v7);

        if ((v1 & 1) == 0)
        {
          goto LABEL_11;
        }

LABEL_10:

        goto LABEL_11;
      }
    }

    else
    {
      v6 = 0;
      if ((v1 & 2) != 0)
      {
        goto LABEL_6;
      }
    }

    v8[2](v8, v4, v5, v6, 0);
    if ((v1 & 1) == 0)
    {
      goto LABEL_11;
    }

    goto LABEL_10;
  }

LABEL_11:
}

void sub_1000F250C(uint64_t a1)
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
    v8 = 45;
    if (isMetaClass)
    {
      v8 = 43;
    }

    v3(6, "%c[%{public}s %{public}s]:%i Requested to set AID to %@", v8, ClassName, Name, 3237, *(a1 + 40));
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
    v13 = sel_getName(*(a1 + 56));
    v14 = *(a1 + 40);
    *buf = 67110146;
    v40 = v11;
    v41 = 2082;
    v42 = v12;
    v43 = 2082;
    v44 = v13;
    v45 = 1024;
    v46 = 3237;
    v47 = 2112;
    v48 = v14;
    _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEFAULT, "%c[%{public}s %{public}s]:%i Requested to set AID to %@", buf, 0x2Cu);
  }

  v15 = sub_1001E17D0(*(*(a1 + 32) + 376), *(a1 + 40));
  if (v15)
  {
    v16 = *(a1 + 48);
    v17 = [NSError alloc];
    v18 = [NSString stringWithUTF8String:"nfcd"];
    v19 = [v15 code];
    v35[0] = NSLocalizedDescriptionKey;
    if ([v15 code] > 75)
    {
      v20 = 76;
    }

    else
    {
      v20 = [v15 code];
    }

    v23 = [NSString stringWithUTF8String:off_1003184A0[v20]];
    v36[0] = v23;
    v36[1] = v15;
    v35[1] = NSUnderlyingErrorKey;
    v35[2] = @"Line";
    v36[2] = &off_1003314D0;
    v35[3] = @"Method";
    v24 = [[NSString alloc] initWithFormat:@"%s", sel_getName(*(a1 + 56))];
    v36[3] = v24;
    v35[4] = NSDebugDescriptionErrorKey;
    v25 = [[NSString alloc] initWithFormat:@"%s:%d", sel_getName(*(a1 + 56)), 3247];
    v36[4] = v25;
    v26 = [NSDictionary dictionaryWithObjects:v36 forKeys:v35 count:5];
    v27 = [v17 initWithDomain:v18 code:v19 userInfo:v26];
    (*(v16 + 16))(v16, v27);
  }

  else
  {
    v21 = sub_10021D9F4(*(*(a1 + 32) + 376));
    v22 = *(a1 + 48);
    if (v21)
    {
      (*(v22 + 16))(*(a1 + 48), 0);
    }

    else
    {
      v28 = [NSError alloc];
      v29 = [NSString stringWithUTF8String:"nfcd"];
      v37[0] = NSLocalizedDescriptionKey;
      v30 = [NSString stringWithUTF8String:"Stack Error"];
      v38[0] = v30;
      v38[1] = &off_1003314B8;
      v37[1] = @"Line";
      v37[2] = @"Method";
      v31 = [[NSString alloc] initWithFormat:@"%s", sel_getName(*(a1 + 56))];
      v38[2] = v31;
      v37[3] = NSDebugDescriptionErrorKey;
      v32 = [[NSString alloc] initWithFormat:@"%s:%d", sel_getName(*(a1 + 56)), 3242];
      v38[3] = v32;
      v33 = [NSDictionary dictionaryWithObjects:v38 forKeys:v37 count:4];
      v34 = [v28 initWithDomain:v29 code:15 userInfo:v33];
      (*(v22 + 16))(v22, v34);
    }
  }
}

void sub_1000F29E0(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = *(a1 + 32);
  v5 = [NSError alloc];
  v6 = [NSString stringWithUTF8String:"nfcd"];
  v7 = [v3 code];
  v14[0] = NSLocalizedDescriptionKey;
  if ([v3 code] > 75)
  {
    v8 = 76;
  }

  else
  {
    v8 = [v3 code];
  }

  v9 = [NSString stringWithUTF8String:off_1003184A0[v8]];
  v15[0] = v9;
  v15[1] = v3;
  v14[1] = NSUnderlyingErrorKey;
  v14[2] = @"Line";
  v15[2] = &off_1003314E8;
  v14[3] = @"Method";
  v10 = [[NSString alloc] initWithFormat:@"%s", sel_getName(*(a1 + 40))];
  v15[3] = v10;
  v14[4] = NSDebugDescriptionErrorKey;
  v11 = [[NSString alloc] initWithFormat:@"%s:%d", sel_getName(*(a1 + 40)), 3250];
  v15[4] = v11;
  v12 = [NSDictionary dictionaryWithObjects:v15 forKeys:v14 count:5];
  v13 = [v5 initWithDomain:v6 code:v7 userInfo:v12];
  (*(v4 + 16))(v4, v13);
}

void sub_1000F2CBC(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = *(a1 + 48);
  v3 = *(a1 + 40);
  v4 = v2;
  if (v1)
  {
    v5 = *(v1 + 240);
    v6 = sub_10004C224(NFRoutingConfig, 0);
    v10[0] = _NSConcreteStackBlock;
    v10[1] = 3221225472;
    v10[2] = sub_1000F250C;
    v10[3] = &unk_100318850;
    v10[4] = v1;
    v13 = "_sync_setAntiRelay:completion:";
    v11 = v3;
    v12 = v4;
    v7[0] = _NSConcreteStackBlock;
    v7[1] = 3221225472;
    v7[2] = sub_1000F29E0;
    v7[3] = &unk_100318878;
    v8 = v12;
    v9 = "_sync_setAntiRelay:completion:";
    [_NFBuiltinSession createSession:@"Anti relay" workQueue:v5 routing:v6 sessionQueuer:v1 didStartWork:v10 failedToStart:v7];
  }
}

void sub_1000F2EC8(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = *(a1 + 40);
  if (v1)
  {
    v3 = objc_opt_new();
    if (sub_100003384(v1) == 2)
    {
      if ((sub_1000065FC(v1) & 1) == 0)
      {
        v4 = v1[3];
        if (!v4 || *(v4 + 181) != 1)
        {
          v31 = v1[30];
          v32 = sub_10004C224(NFRoutingConfig, 0);
          *buf = _NSConcreteStackBlock;
          *v40 = 3221225472;
          *&v40[8] = sub_1000F3464;
          *&v40[16] = &unk_100318850;
          *&v40[24] = v1;
          v41 = v3;
          v42 = v2;
          v43 = "_sync_rfSettingsWithCompletion:";
          v33 = _NSConcreteStackBlock;
          v34 = 3221225472;
          v35 = sub_1000F3690;
          v36 = &unk_100318878;
          v37 = v42;
          v38 = "_sync_rfSettingsWithCompletion:";
          [_NFBuiltinSession createSession:@"RF settings" workQueue:v31 routing:v32 sessionQueuer:v1 didStartWork:buf failedToStart:&v33];

          goto LABEL_23;
        }
      }

      dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
      Logger = NFLogGetLogger();
      if (Logger)
      {
        v6 = Logger;
        Class = object_getClass(v1);
        if (class_isMetaClass(Class))
        {
          v8 = 43;
        }

        else
        {
          v8 = 45;
        }

        ClassName = object_getClassName(v1);
        Name = sel_getName("_sync_rfSettingsWithCompletion:");
        v11 = sub_1000065FC(v1);
        v12 = v1[3];
        if (v12)
        {
          v12 = *(v12 + 181);
        }

        v6(3, "%c[%{public}s %{public}s]:%i Session in progress (%d) or express in progress (%d) - bailing", v8, ClassName, Name, 3278, v11, v12);
      }

      dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
      v13 = NFSharedLogGetLogger();
      if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
      {
        v14 = object_getClass(v1);
        if (class_isMetaClass(v14))
        {
          v15 = 43;
        }

        else
        {
          v15 = 45;
        }

        v16 = object_getClassName(v1);
        v17 = sel_getName("_sync_rfSettingsWithCompletion:");
        v18 = sub_1000065FC(v1);
        v19 = v1[3];
        if (v19)
        {
          LODWORD(v19) = *(v19 + 181);
        }

        *buf = 67110402;
        *&buf[4] = v15;
        *v40 = 2082;
        *&v40[2] = v16;
        *&v40[10] = 2082;
        *&v40[12] = v17;
        *&v40[20] = 1024;
        *&v40[22] = 3278;
        *&v40[26] = 1024;
        *&v40[28] = v18;
        LOWORD(v41) = 1024;
        *(&v41 + 2) = v19;
        _os_log_impl(&_mh_execute_header, v13, OS_LOG_TYPE_ERROR, "%c[%{public}s %{public}s]:%i Session in progress (%d) or express in progress (%d) - bailing", buf, 0x2Eu);
      }

      v20 = [NSError alloc];
      v21 = [NSString stringWithUTF8String:"nfcd"];
      v33 = NSLocalizedDescriptionKey;
      v22 = [NSString stringWithUTF8String:"Busy"];
      *buf = v22;
      *v40 = &off_100331518;
      v34 = @"Line";
      v35 = @"Method";
      v23 = [[NSString alloc] initWithFormat:@"%s", sel_getName("_sync_rfSettingsWithCompletion:")];
      *&v40[8] = v23;
      v36 = NSDebugDescriptionErrorKey;
      v24 = [[NSString alloc] initWithFormat:@"%s:%d", sel_getName("_sync_rfSettingsWithCompletion:"), 3279];
      *&v40[16] = v24;
      v25 = [NSDictionary dictionaryWithObjects:buf forKeys:&v33 count:4];
      v26 = v20;
      v27 = v21;
      v28 = 2;
    }

    else
    {
      v29 = [NSError alloc];
      v21 = [NSString stringWithUTF8String:"nfcd"];
      v33 = NSLocalizedDescriptionKey;
      v22 = [NSString stringWithUTF8String:"Unresponsive hardware"];
      *buf = v22;
      *v40 = &off_100331500;
      v34 = @"Line";
      v35 = @"Method";
      v23 = [[NSString alloc] initWithFormat:@"%s", sel_getName("_sync_rfSettingsWithCompletion:")];
      *&v40[8] = v23;
      v36 = NSDebugDescriptionErrorKey;
      v24 = [[NSString alloc] initWithFormat:@"%s:%d", sel_getName("_sync_rfSettingsWithCompletion:"), 3273];
      *&v40[16] = v24;
      v25 = [NSDictionary dictionaryWithObjects:buf forKeys:&v33 count:4];
      v26 = v29;
      v27 = v21;
      v28 = 58;
    }

    v30 = [v26 initWithDomain:v27 code:v28 userInfo:v25];
    (*(v2 + 2))(v2, 0, v30);

LABEL_23:
  }
}

void sub_1000F3464(uint64_t a1)
{
  v2 = sub_1001E0EDC(*(*(a1 + 32) + 376), *(a1 + 40));
  v3 = *(a1 + 48);
  if (v2)
  {
    v4 = *(a1 + 40);
    v5 = *(v3 + 16);
    v6 = *(a1 + 48);

    v5(v6, v4, 0);
  }

  else
  {
    v7 = [NSError alloc];
    v8 = [NSString stringWithUTF8String:"nfcd"];
    v14[0] = NSLocalizedDescriptionKey;
    v9 = [NSString stringWithUTF8String:"Feature Not Supported"];
    v15[0] = v9;
    v15[1] = &off_100331530;
    v14[1] = @"Line";
    v14[2] = @"Method";
    v10 = [[NSString alloc] initWithFormat:@"%s", sel_getName(*(a1 + 56))];
    v15[2] = v10;
    v14[3] = NSDebugDescriptionErrorKey;
    v11 = [[NSString alloc] initWithFormat:@"%s:%d", sel_getName(*(a1 + 56)), 3291];
    v15[3] = v11;
    v12 = [NSDictionary dictionaryWithObjects:v15 forKeys:v14 count:4];
    v13 = [v7 initWithDomain:v8 code:14 userInfo:v12];
    (*(v3 + 16))(v3, 0, v13);
  }
}

void sub_1000F3690(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = *(a1 + 32);
  v5 = [NSError alloc];
  v6 = [NSString stringWithUTF8String:"nfcd"];
  v7 = [v3 code];
  v14[0] = NSLocalizedDescriptionKey;
  if ([v3 code] > 75)
  {
    v8 = 76;
  }

  else
  {
    v8 = [v3 code];
  }

  v9 = [NSString stringWithUTF8String:off_1003184A0[v8]];
  v15[0] = v9;
  v15[1] = v3;
  v14[1] = NSUnderlyingErrorKey;
  v14[2] = @"Line";
  v15[2] = &off_100331548;
  v14[3] = @"Method";
  v10 = [[NSString alloc] initWithFormat:@"%s", sel_getName(*(a1 + 40))];
  v15[3] = v10;
  v14[4] = NSDebugDescriptionErrorKey;
  v11 = [[NSString alloc] initWithFormat:@"%s:%d", sel_getName(*(a1 + 40)), 3294];
  v15[4] = v11;
  v12 = [NSDictionary dictionaryWithObjects:v15 forKeys:v14 count:5];
  v13 = [v5 initWithDomain:v6 code:v7 userInfo:v12];
  (*(v4 + 16))(v4, 0, v13);
}

void sub_1000F3988(uint64_t a1)
{
  v2 = *(a1 + 32);
  if (v2[29])
  {
    dispatch_get_specific(kNFLOG_DISPATCH_SPECIFIC_KEY);
    Logger = NFLogGetLogger();
    if (Logger)
    {
      v4 = Logger;
      Class = object_getClass(*(a1 + 32));
      isMetaClass = class_isMetaClass(Class);
      ClassName = object_getClassName(*(a1 + 32));
      Name = sel_getName(*(a1 + 56));
      v9 = [*(a1 + 40) NF_clientName];
      v27 = [*(a1 + 40) processIdentifier];
      v10 = 45;
      if (isMetaClass)
      {
        v10 = 43;
      }

      v4(6, "%c[%{public}s %{public}s]:%i Returning cached dieID for %@ (pid %d)", v10, ClassName, Name, 3304, v9, v27);
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
      v16 = [*(a1 + 40) NF_clientName];
      v17 = [*(a1 + 40) processIdentifier];
      *buf = 67110402;
      *&buf[4] = v13;
      *v35 = 2082;
      *&v35[2] = v14;
      *&v35[10] = 2082;
      *&v35[12] = v15;
      *&v35[20] = 1024;
      *&v35[22] = 3304;
      *&v35[26] = 2112;
      *&v35[28] = v16;
      *&v35[36] = 1024;
      *&v35[38] = v17;
      _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_DEFAULT, "%c[%{public}s %{public}s]:%i Returning cached dieID for %@ (pid %d)", buf, 0x32u);
    }

    (*(*(a1 + 48) + 16))();
  }

  else
  {
    v18 = *(a1 + 48);
    if (sub_100003384(v2) == 2 || sub_100003384(v2) == 5)
    {
      v19 = [v2 lastKnownRoutingConfig];
      if (!v19)
      {
        v19 = [v2 defaultRoutingConfig:3];
      }

      v20 = v2[30];
      *buf = _NSConcreteStackBlock;
      *v35 = 3221225472;
      *&v35[8] = sub_1000F3E20;
      *&v35[16] = &unk_1003188C8;
      *&v35[24] = v2;
      *&v35[32] = v18;
      *&v35[40] = "_sync_getDieIDWithCompletion:";
      v28 = _NSConcreteStackBlock;
      v29 = 3221225472;
      v30 = sub_1000F402C;
      v31 = &unk_100318878;
      v32 = *&v35[32];
      v33 = "_sync_getDieIDWithCompletion:";
      [_NFBuiltinSession createSession:@"DieID" workQueue:v20 routing:v19 sessionQueuer:v2 didStartWork:buf failedToStart:&v28];
    }

    else
    {
      v21 = [NSError alloc];
      v19 = [NSString stringWithUTF8String:"nfcd"];
      v28 = NSLocalizedDescriptionKey;
      v22 = [NSString stringWithUTF8String:"Unresponsive hardware"];
      *buf = v22;
      *v35 = &off_100331560;
      v29 = @"Line";
      v30 = @"Method";
      v23 = [[NSString alloc] initWithFormat:@"%s", sel_getName("_sync_getDieIDWithCompletion:")];
      *&v35[8] = v23;
      v31 = NSDebugDescriptionErrorKey;
      v24 = [[NSString alloc] initWithFormat:@"%s:%d", sel_getName("_sync_getDieIDWithCompletion:"), 3315];
      *&v35[16] = v24;
      v25 = [NSDictionary dictionaryWithObjects:buf forKeys:&v28 count:4];
      v26 = [v21 initWithDomain:v19 code:58 userInfo:v25];
      (*(v18 + 2))(v18, 0, v26);
    }
  }
}